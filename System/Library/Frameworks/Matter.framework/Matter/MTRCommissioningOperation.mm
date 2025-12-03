@interface MTRCommissioningOperation
- (BOOL)stop;
- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload commissioningID:(id)d isInternallyCreated:(BOOL)created delegate:(id)delegate queue:(id)queue;
- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload delegate:(id)delegate queue:(id)queue;
- (id)_internalDelegate;
- (void)_dispatchCommissioningCHIPError:(ChipError)error;
- (void)_dispatchCommissioningError:(id)error;
- (void)_dispatchCommissioningError:(id)error forCommissioningID:(id)d withMetrics:(id)metrics;
- (void)_earlyFailCommissioning:(ChipError)commissioning;
- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials;
- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics;
- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done;
- (void)controller:(id)controller readCommissioneeInfo:(id)info;
- (void)controller:(id)controller scannedThreadNetworks:(id)networks error:(id)error;
- (void)controller:(id)controller scannedWiFiNetworks:(id)networks error:(id)error;
- (void)controller:(id)controller statusUpdate:(int64_t)update;
- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error;
- (void)startWithController:(id)controller;
@end

@implementation MTRCommissioningOperation

- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload delegate:(id)delegate queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  payloadCopy = payload;
  delegateCopy = delegate;
  queueCopy = queue;
  v20 = 0;
  if (sub_2394F4614(&v20))
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_2393C9138();
      *buf = 136315138;
      v22 = v15;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Unable to generate a commissioning identifier: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    selfCopy = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    self = [(MTRCommissioningOperation *)self initWithParameters:parametersCopy setupPayload:payloadCopy commissioningID:v17 isInternallyCreated:0 delegate:delegateCopy queue:queueCopy];

    selfCopy = self;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload commissioningID:(id)d isInternallyCreated:(BOOL)created delegate:(id)delegate queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  payloadCopy = payload;
  dCopy = d;
  obj = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = MTRCommissioningOperation;
  v17 = [(MTRCommissioningOperation *)&v26 init];
  if (!v17)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (!parametersCopy || !payloadCopy || !dCopy || !queueCopy)
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Invalid nil argument to initWithParameters", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    goto LABEL_11;
  }

  v18 = [parametersCopy copy];
  parameters = v17->_parameters;
  v17->_parameters = v18;

  objc_storeStrong(&v17->_setupPayload, payload);
  objc_storeStrong(&v17->_commissioningID, d);
  v17->_isInternallyCreated = created;
  objc_storeWeak(&v17->_delegate, obj);
  objc_storeStrong(&v17->_delegateQueue, queue);
  [(MTRCommissioningParameters *)v17->_parameters setDeviceAttestationDelegate:0];
  v20 = v17;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)startWithController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = controllerCopy;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ Cannot start commissioning with a non-concrete controller: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      selfCopy3 = self;
      selfCopy2 = controllerCopy;
      sub_2393D5320(0, 1);
    }

    v8 = 0x850000002FLL;
    goto LABEL_22;
  }

  objc_storeWeak(&self->_controller, v6);
  if ([(MTRCommissioningOperation *)controllerCopy isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = controllerCopy;
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't start commissioning %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      selfCopy3 = controllerCopy;
      selfCopy2 = self;
      sub_2393D5320(0, 1);
    }

    v8 = 0x8D00000003;
LABEL_22:
    [(MTRCommissioningOperation *)self _earlyFailCommissioning:v8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissioningOperation.mm", selfCopy3, selfCopy2];
    goto LABEL_23;
  }

  currentCommissioning = [(MTRCommissioningOperation *)v6 currentCommissioning];

  v11 = sub_2393D9044(0);
  v12 = v11;
  if (currentCommissioning)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      currentCommissioning2 = [(MTRCommissioningOperation *)v6 currentCommissioning];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = currentCommissioning2;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ Cannot start commissioning because commissioning %@ already in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      [(MTRCommissioningOperation *)v6 currentCommissioning];
      selfCopy2 = selfCopy3 = self;
      sub_2393D5320(0, 1);
    }

    v8 = 0x93000000DBLL;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = WeakRetained;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ starting commissioning with controller %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy3 = self;
    selfCopy2 = objc_loadWeakRetained(&self->_controller);
    sub_2393D5320(0, 2);
  }

  if (!self->_isInternallyCreated)
  {
    v16 = +[MTRMetricsCollector sharedInstance];
    [v16 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    v17 = self->_setupPayload;
    memset(buf, 0, sizeof(buf));
    v18 = v17;
    uTF8String = [(NSString *)v17 UTF8String];
    v20 = strlen(uTF8String);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_238DCEB40();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    v38 = v20;
    if (v20)
    {
      memmove(&__dst, uTF8String, v20);
    }

    *(&__dst + v21) = 0;
    v22 = sub_239490924(&__dst, buf);
    if (v38 < 0)
    {
      operator delete(__dst);
    }

    if (v22)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Unable to parse setup payload to extract VID/PID", v33, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (*buf != *&buf[8])
      {
        v23 = *(*buf + 2);
        *v33 = 2;
        v34 = "dwnfw_device_vendor_id";
        v35 = v23;
        v36 = 2;
        sub_23948BD20(v33);
        v24 = *(*buf + 4);
        *v33 = 2;
        v34 = "dwnfw_device_product_id";
        v35 = v24;
        v36 = 2;
        sub_23948BD20(v33);
        goto LABEL_47;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Setup payload parsing succeeded but somehow did not create any payloads we can get a VID/PID from", v33, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_47;
      }
    }

    sub_2393D5320(0, 1);
LABEL_47:
    *v33 = buf;
    sub_239227730(v33);
  }

  selfCopy2 = [(MTRCommissioningOperation *)v6 startCommissioning:self withCommissioningID:self->_commissioningID, selfCopy3, selfCopy2];
  if (selfCopy2)
  {
    v27 = v25;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_loadWeakRetained(&self->_controller);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ failed to start commissioning with controller %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      selfCopy4 = self;
      v32 = objc_loadWeakRetained(&self->_controller);
      sub_2393D5320(0, 1);
    }

    [(MTRCommissioningOperation *)self _dispatchCommissioningCHIPError:selfCopy2, v27, selfCopy4, v32];
  }

LABEL_23:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stopCommissioning:self forCommissioningID:self->_commissioningID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_earlyFailCommissioning:(ChipError)commissioning
{
  mFile = commissioning.mFile;
  v4 = *&commissioning.mError;
  v7 = [[MTRMetrics alloc] initWithCapacity:0];
  v6 = sub_23921C1E4(MTRError, v4, mFile);
  [(MTRCommissioningOperation *)self _dispatchCommissioningError:v6 withMetrics:v7];
}

- (void)_dispatchCommissioningCHIPError:(ChipError)error
{
  mFile = error.mFile;
  v4 = *&error.mError;
  v9 = 1;
  v10 = "dwnfw_device_commissioning";
  mError = error.mError;
  v12 = 3;
  sub_23948BD20(&v9);
  v6 = +[MTRMetricsCollector sharedInstance];
  v7 = [v6 metricSnapshotForCommissioning:1];

  v8 = sub_23921C1E4(MTRError, v4, mFile);
  [(MTRCommissioningOperation *)self _dispatchCommissioningError:v8 withMetrics:v7];
}

- (void)_dispatchCommissioningError:(id)error
{
  errorCopy = error;
  v7 = 1;
  v8 = "dwnfw_device_commissioning";
  v9 = sub_23921D408(MTRError, errorCopy);
  v10 = 3;
  sub_23948BD20(&v7);
  v5 = +[MTRMetricsCollector sharedInstance];
  v6 = [v5 metricSnapshotForCommissioning:1];

  [(MTRCommissioningOperation *)self _dispatchCommissioningError:errorCopy withMetrics:v6];
}

- (void)_dispatchCommissioningError:(id)error forCommissioningID:(id)d withMetrics:(id)metrics
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  metricsCopy = metrics;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v31 = 2112;
    v32 = WeakRetained;
    v33 = 2112;
    v34 = metricsCopy;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device commissioning failed with controller %@ metrics %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v21 = WeakRetained;
    v22 = metricsCopy;
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  v13 = [(MTRCommissioningOperation *)self _internalDelegate:selfCopy2];
  objc_storeWeak(&self->_delegate, 0);
  [WeakRetained commissioningDone:self];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239226164;
  block[3] = &unk_278A723D0;
  v24 = v13;
  selfCopy3 = self;
  v26 = errorCopy;
  v27 = dCopy;
  v28 = metricsCopy;
  v15 = metricsCopy;
  v16 = dCopy;
  v17 = errorCopy;
  v18 = v13;
  dispatch_async(delegateQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)controller:(id)controller statusUpdate:(int64_t)update
{
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392262D4;
  block[3] = &unk_278A715B0;
  v10 = _internalDelegate;
  selfCopy = self;
  updateCopy = update;
  v8 = _internalDelegate;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done
{
  v33 = *MEMORY[0x277D85DE8];
  doneCopy = done;
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2392265A8;
    block[3] = &unk_278A71650;
    block[4] = self;
    v23 = _internalDelegate;
    v24 = doneCopy;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    if (WeakRetained)
    {
      v9 = objc_alloc_init(MTRCommissioningOperationDeviceAttestationDelegate);
      [(MTRCommissioningOperationDeviceAttestationDelegate *)v9 setCommissioningOperation:self];
      [(MTRCommissioningParameters *)self->_parameters setDeviceAttestationDelegate:v9];
      parameters = self->_parameters;
      commissioningID = self->_commissioningID;
      v21 = 0;
      v12 = [WeakRetained commission:self withCommissioningID:commissioningID commissioningParams:parameters error:&v21];
      v13 = v21;
      if ((v12 & 1) == 0)
      {
        v14 = sub_2393D9044(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_parameters;
          *buf = 138413058;
          selfCopy = self;
          v27 = 2112;
          v28 = WeakRetained;
          v29 = 2112;
          v30 = v15;
          v31 = 2112;
          v32 = v13;
          _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ attempt to start commissioning with controller %@ and parameters %@ failed: %@", buf, 0x2Au);
        }

        if (sub_2393D5398(1u))
        {
          v19 = self->_parameters;
          v20 = v13;
          selfCopy2 = self;
          v18 = WeakRetained;
          sub_2393D5320(0, 1);
        }

        [(MTRCommissioningOperation *)self _dispatchCommissioningError:v13, selfCopy2, v18, v19, v20];
        [(MTRCommissioningOperation *)self stop];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics
{
  completeCopy = complete;
  dCopy = d;
  metricsCopy = metrics;
  if (completeCopy)
  {
    [(MTRCommissioningOperation *)self _dispatchCommissioningError:completeCopy forCommissioningID:dCopy withMetrics:metricsCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_loadWeakRetained(&self->_controller);
    objc_storeWeak(&self->_delegate, 0);
    [v13 commissioningDone:self];
    delegateQueue = self->_delegateQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_23922675C;
    v16[3] = &unk_278A73AC8;
    v17 = WeakRetained;
    selfCopy = self;
    v19 = dCopy;
    v20 = metricsCopy;
    v15 = WeakRetained;
    dispatch_async(delegateQueue, v16);
  }
}

- (void)controller:(id)controller readCommissioneeInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922687C;
  block[3] = &unk_278A71650;
  v11 = WeakRetained;
  selfCopy = self;
  v13 = infoCopy;
  v8 = infoCopy;
  v9 = WeakRetained;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials
{
  credentialsCopy = credentials;
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392269B0;
  block[3] = &unk_278A71650;
  v11 = _internalDelegate;
  selfCopy = self;
  v13 = credentialsCopy;
  v8 = credentialsCopy;
  v9 = _internalDelegate;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller scannedWiFiNetworks:(id)networks error:(id)error
{
  networksCopy = networks;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_239226B30;
  v14[3] = &unk_278A73AC8;
  v14[4] = self;
  v15 = WeakRetained;
  v16 = networksCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = networksCopy;
  v13 = WeakRetained;
  dispatch_async(delegateQueue, v14);
}

- (void)controller:(id)controller scannedThreadNetworks:(id)networks error:(id)error
{
  networksCopy = networks;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_239226F0C;
  v14[3] = &unk_278A73AC8;
  v14[4] = self;
  v15 = WeakRetained;
  v16 = networksCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = networksCopy;
  v13 = WeakRetained;
  dispatch_async(delegateQueue, v14);
}

- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392272D8;
  block[3] = &unk_278A73E58;
  block[4] = self;
  v17 = WeakRetained;
  v18 = infoCopy;
  v19 = errorCopy;
  handleCopy = handle;
  v13 = errorCopy;
  v14 = infoCopy;
  v15 = WeakRetained;
  dispatch_async(delegateQueue, block);
}

@end