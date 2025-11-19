@interface HSAccessoryPairingFuture
- (HFSetupPairingObserver)pairingObserver;
- (HSAccessoryPairingFuture)initWithPairingContext:(id)a3 discoveredAccessory:(id)a4 accessoryAlreadyStaged:(BOOL)a5;
- (NSString)pairingStatusDescription;
- (NSString)pairingStatusTitle;
- (id)cancelPairing;
- (id)cancelPairingWithError:(id)a3;
- (id)startPairingWithHome:(id)a3;
- (void)dealloc;
- (void)pairingController:(id)a3 didTransitionToPhase:(unint64_t)a4 statusTitle:(id)a5 statusDescription:(id)a6;
- (void)updateSetupPayload:(id)a3;
@end

@implementation HSAccessoryPairingFuture

- (void)dealloc
{
  v3 = [(HSAccessoryPairingFuture *)self pairingController];
  [v3 removePairingObserver:self];

  v4.receiver = self;
  v4.super_class = HSAccessoryPairingFuture;
  [(HSAccessoryPairingFuture *)&v4 dealloc];
}

- (HSAccessoryPairingFuture)initWithPairingContext:(id)a3 discoveredAccessory:(id)a4 accessoryAlreadyStaged:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v36.receiver = self;
  v36.super_class = HSAccessoryPairingFuture;
  v11 = [(HSAccessoryPairingFuture *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v11->_pairingContext, a3);
  v12->_phase = 0;
  v13 = objc_alloc_init(NAPromise);
  promise = v12->_promise;
  v12->_promise = v13;

  if (v5)
  {
    v15 = HFSetupStagedAccessoryPairingController;
LABEL_7:
    v19 = [v15 alloc];
    v17 = [(HSAccessoryPairingFuture *)v12 pairingContext];
    v18 = [v19 initWithContext:v17];
    goto LABEL_8;
  }

  if (!v10)
  {
    v15 = HFSetupAutomaticDiscoveryPairingController;
    goto LABEL_7;
  }

  v16 = [HFSetupSingleAccessoryPairingController alloc];
  v17 = [(HSAccessoryPairingFuture *)v12 pairingContext];
  v18 = [v16 initWithContext:v17 discoveredAccessory:v10];
LABEL_8:
  v20 = v18;

  v21 = [(HSAccessoryPairingFuture *)v12 pairingContext];
  v22 = [v21 setupAccessoryDescription];
  v23 = [v22 setupAccessoryPayload];

  if (v23)
  {
    v24 = [HFSetupAccessoryResult alloc];
    v25 = [(HSAccessoryPairingFuture *)v12 pairingContext];
    v26 = [v25 setupAccessoryDescription];
    v27 = [v26 setupAccessoryPayload];
    v28 = [v24 initWithPayload:v27];
    [v20 setSetupResult:v28];

    v29 = [v20 setupResult];
    v30 = [v29 error];

    if (v30)
    {
      v31 = HFLogForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10007B888(v30, v31);
      }

      [(NAPromise *)v12->_promise finishWithError:v30];
    }
  }

  [v20 addPairingObserver:v12];
  pairingController = v12->_pairingController;
  v12->_pairingController = v20;

  v33 = HFLogForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(HSAccessoryPairingFuture *)v12 pairingContext];
    *buf = 138412290;
    v38 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "HSAccessoryPairingFuture initialized: %@", buf, 0xCu);
  }

LABEL_17:
  return v12;
}

- (id)startPairingWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HSAccessoryPairingFuture *)self promise];
  v6 = [v5 future];
  v7 = [v6 isFinished];

  if (v7)
  {
    v8 = [(HSAccessoryPairingFuture *)self promise];
    v9 = [v8 future];
  }

  else
  {
    v8 = [(HSAccessoryPairingFuture *)self cancelPairing];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000640F8;
    v11[3] = &unk_1000C6220;
    v11[4] = self;
    v12 = v4;
    v9 = [v8 flatMap:v11];
  }

  return v9;
}

- (id)cancelPairing
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HSAccessoryPairingFuture *)self pairingController];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing controller cancelled: %@", &v8, 0xCu);
  }

  v5 = [(HSAccessoryPairingFuture *)self pairingController];
  v6 = [v5 cancel];

  return v6;
}

- (id)cancelPairingWithError:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@ cancelPairingWithError:%@]", &v17, 0x16u);
  }

  v8 = [(HSAccessoryPairingFuture *)self pairingController];
  v9 = [v8 discoveredAccessoryToPair];

  [v9 updateStatus:3 error:v4];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10007B914(self, v4, v10);
  }

  v11 = [NSError hf_mappedHMError:v4];
  v12 = [(HSAccessoryPairingFuture *)self pairingController];
  v13 = [v12 context];
  v14 = [v13 setupAccessoryDescription];
  [v14 setCancellationReason:v11];

  v15 = [(HSAccessoryPairingFuture *)self cancelPairing];

  return v15;
}

- (void)pairingController:(id)a3 didTransitionToPhase:(unint64_t)a4 statusTitle:(id)a5 statusDescription:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HSAccessoryPairingFuture *)self phase];
  [(HSAccessoryPairingFuture *)self setPhase:a4];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:v13];
    v16 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a4];
    v25 = 138413314;
    v26 = v15;
    v27 = 2048;
    v28 = v13;
    v29 = 2112;
    v30 = v16;
    v31 = 2048;
    v32 = a4;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Prox Card Pairing Phase Transition %@ (%ld) -> %@ (%ld) | statusTitle: %@", &v25, 0x34u);
  }

  if (v13 != a4)
  {
    if (a4 == 9)
    {
      v19 = [v10 discoveredAccessoryToPair];
      v20 = [v19 error];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = +[NSError na_genericError];
      }

      v17 = v22;

      v18 = [(HSAccessoryPairingFuture *)self promise];
      [v18 finishWithError:v17];
    }

    else
    {
      if (a4 != 10)
      {
        goto LABEL_12;
      }

      v17 = [(HSAccessoryPairingFuture *)self promise];
      v18 = [v10 pairedAccessories];
      [v17 finishWithResult:v18];
    }
  }

LABEL_12:
  v23 = [(HSAccessoryPairingFuture *)self pairingObserver];

  if (v23)
  {
    v24 = [(HSAccessoryPairingFuture *)self pairingObserver];
    [v24 pairingController:v10 didTransitionToPhase:a4 statusTitle:v11 statusDescription:v12];
  }
}

- (NSString)pairingStatusTitle
{
  v2 = [(HSAccessoryPairingFuture *)self pairingController];
  v3 = [v2 statusTitle];

  return v3;
}

- (NSString)pairingStatusDescription
{
  v2 = [(HSAccessoryPairingFuture *)self pairingController];
  v3 = [v2 statusDescription];

  return v3;
}

- (void)updateSetupPayload:(id)a3
{
  v4 = a3;
  v6 = [[HFSetupAccessoryResult alloc] initWithPayload:v4];

  v5 = [(HSAccessoryPairingFuture *)self pairingController];
  [v5 setSetupResult:v6];
}

- (HFSetupPairingObserver)pairingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingObserver);

  return WeakRetained;
}

@end