@interface HSAccessoryPairingFuture
- (HFSetupPairingObserver)pairingObserver;
- (HSAccessoryPairingFuture)initWithPairingContext:(id)context discoveredAccessory:(id)accessory accessoryAlreadyStaged:(BOOL)staged;
- (NSString)pairingStatusDescription;
- (NSString)pairingStatusTitle;
- (id)cancelPairing;
- (id)cancelPairingWithError:(id)error;
- (id)startPairingWithHome:(id)home;
- (void)dealloc;
- (void)pairingController:(id)controller didTransitionToPhase:(unint64_t)phase statusTitle:(id)title statusDescription:(id)description;
- (void)updateSetupPayload:(id)payload;
@end

@implementation HSAccessoryPairingFuture

- (void)dealloc
{
  pairingController = [(HSAccessoryPairingFuture *)self pairingController];
  [pairingController removePairingObserver:self];

  v4.receiver = self;
  v4.super_class = HSAccessoryPairingFuture;
  [(HSAccessoryPairingFuture *)&v4 dealloc];
}

- (HSAccessoryPairingFuture)initWithPairingContext:(id)context discoveredAccessory:(id)accessory accessoryAlreadyStaged:(BOOL)staged
{
  stagedCopy = staged;
  contextCopy = context;
  accessoryCopy = accessory;
  v36.receiver = self;
  v36.super_class = HSAccessoryPairingFuture;
  v11 = [(HSAccessoryPairingFuture *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v11->_pairingContext, context);
  v12->_phase = 0;
  v13 = objc_alloc_init(NAPromise);
  promise = v12->_promise;
  v12->_promise = v13;

  if (stagedCopy)
  {
    v15 = HFSetupStagedAccessoryPairingController;
LABEL_7:
    v19 = [v15 alloc];
    pairingContext = [(HSAccessoryPairingFuture *)v12 pairingContext];
    v18 = [v19 initWithContext:pairingContext];
    goto LABEL_8;
  }

  if (!accessoryCopy)
  {
    v15 = HFSetupAutomaticDiscoveryPairingController;
    goto LABEL_7;
  }

  v16 = [HFSetupSingleAccessoryPairingController alloc];
  pairingContext = [(HSAccessoryPairingFuture *)v12 pairingContext];
  v18 = [v16 initWithContext:pairingContext discoveredAccessory:accessoryCopy];
LABEL_8:
  v20 = v18;

  pairingContext2 = [(HSAccessoryPairingFuture *)v12 pairingContext];
  setupAccessoryDescription = [pairingContext2 setupAccessoryDescription];
  setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];

  if (setupAccessoryPayload)
  {
    v24 = [HFSetupAccessoryResult alloc];
    pairingContext3 = [(HSAccessoryPairingFuture *)v12 pairingContext];
    setupAccessoryDescription2 = [pairingContext3 setupAccessoryDescription];
    setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
    v28 = [v24 initWithPayload:setupAccessoryPayload2];
    [v20 setSetupResult:v28];

    setupResult = [v20 setupResult];
    error = [setupResult error];

    if (error)
    {
      v31 = HFLogForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10007B888(error, v31);
      }

      [(NAPromise *)v12->_promise finishWithError:error];
    }
  }

  [v20 addPairingObserver:v12];
  pairingController = v12->_pairingController;
  v12->_pairingController = v20;

  v33 = HFLogForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    pairingContext4 = [(HSAccessoryPairingFuture *)v12 pairingContext];
    *buf = 138412290;
    v38 = pairingContext4;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "HSAccessoryPairingFuture initialized: %@", buf, 0xCu);
  }

LABEL_17:
  return v12;
}

- (id)startPairingWithHome:(id)home
{
  homeCopy = home;
  promise = [(HSAccessoryPairingFuture *)self promise];
  future = [promise future];
  isFinished = [future isFinished];

  if (isFinished)
  {
    promise2 = [(HSAccessoryPairingFuture *)self promise];
    future2 = [promise2 future];
  }

  else
  {
    promise2 = [(HSAccessoryPairingFuture *)self cancelPairing];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000640F8;
    v11[3] = &unk_1000C6220;
    v11[4] = self;
    v12 = homeCopy;
    future2 = [promise2 flatMap:v11];
  }

  return future2;
}

- (id)cancelPairing
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pairingController = [(HSAccessoryPairingFuture *)self pairingController];
    v8 = 138412290;
    v9 = pairingController;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing controller cancelled: %@", &v8, 0xCu);
  }

  pairingController2 = [(HSAccessoryPairingFuture *)self pairingController];
  cancel = [pairingController2 cancel];

  return cancel;
}

- (id)cancelPairingWithError:(id)error
{
  errorCopy = error;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@ cancelPairingWithError:%@]", &v17, 0x16u);
  }

  pairingController = [(HSAccessoryPairingFuture *)self pairingController];
  discoveredAccessoryToPair = [pairingController discoveredAccessoryToPair];

  [discoveredAccessoryToPair updateStatus:3 error:errorCopy];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10007B914(self, errorCopy, v10);
  }

  v11 = [NSError hf_mappedHMError:errorCopy];
  pairingController2 = [(HSAccessoryPairingFuture *)self pairingController];
  context = [pairingController2 context];
  setupAccessoryDescription = [context setupAccessoryDescription];
  [setupAccessoryDescription setCancellationReason:v11];

  cancelPairing = [(HSAccessoryPairingFuture *)self cancelPairing];

  return cancelPairing;
}

- (void)pairingController:(id)controller didTransitionToPhase:(unint64_t)phase statusTitle:(id)title statusDescription:(id)description
{
  controllerCopy = controller;
  titleCopy = title;
  descriptionCopy = description;
  phase = [(HSAccessoryPairingFuture *)self phase];
  [(HSAccessoryPairingFuture *)self setPhase:phase];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
    v16 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
    v25 = 138413314;
    v26 = v15;
    v27 = 2048;
    v28 = phase;
    v29 = 2112;
    v30 = v16;
    v31 = 2048;
    phaseCopy = phase;
    v33 = 2112;
    v34 = titleCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Prox Card Pairing Phase Transition %@ (%ld) -> %@ (%ld) | statusTitle: %@", &v25, 0x34u);
  }

  if (phase != phase)
  {
    if (phase == 9)
    {
      discoveredAccessoryToPair = [controllerCopy discoveredAccessoryToPair];
      error = [discoveredAccessoryToPair error];
      v21 = error;
      if (error)
      {
        v22 = error;
      }

      else
      {
        v22 = +[NSError na_genericError];
      }

      promise2 = v22;

      promise = [(HSAccessoryPairingFuture *)self promise];
      [promise finishWithError:promise2];
    }

    else
    {
      if (phase != 10)
      {
        goto LABEL_12;
      }

      promise2 = [(HSAccessoryPairingFuture *)self promise];
      promise = [controllerCopy pairedAccessories];
      [promise2 finishWithResult:promise];
    }
  }

LABEL_12:
  pairingObserver = [(HSAccessoryPairingFuture *)self pairingObserver];

  if (pairingObserver)
  {
    pairingObserver2 = [(HSAccessoryPairingFuture *)self pairingObserver];
    [pairingObserver2 pairingController:controllerCopy didTransitionToPhase:phase statusTitle:titleCopy statusDescription:descriptionCopy];
  }
}

- (NSString)pairingStatusTitle
{
  pairingController = [(HSAccessoryPairingFuture *)self pairingController];
  statusTitle = [pairingController statusTitle];

  return statusTitle;
}

- (NSString)pairingStatusDescription
{
  pairingController = [(HSAccessoryPairingFuture *)self pairingController];
  statusDescription = [pairingController statusDescription];

  return statusDescription;
}

- (void)updateSetupPayload:(id)payload
{
  payloadCopy = payload;
  v6 = [[HFSetupAccessoryResult alloc] initWithPayload:payloadCopy];

  pairingController = [(HSAccessoryPairingFuture *)self pairingController];
  [pairingController setSetupResult:v6];
}

- (HFSetupPairingObserver)pairingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingObserver);

  return WeakRetained;
}

@end