@interface DataTelephonyCallObserverImpl
- (DataTelephonyCallObserverImpl)initWithCallback:(function<void)(BOOL queue:()BOOL;
- (id).cxx_construct;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)dealloc;
@end

@implementation DataTelephonyCallObserverImpl

- (DataTelephonyCallObserverImpl)initWithCallback:(function<void)(BOOL queue:()BOOL
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = DataTelephonyCallObserverImpl;
  v7 = [(DataTelephonyCallObserverImpl *)&v9 init];
  if (v7)
  {
    sub_1007A6CE4(v7->_callback.__f_.__buf_.__data, a3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  callObserver = self->_callObserver;
  if (callObserver)
  {
    [(CXCallObserver *)callObserver setDelegate:0 queue:0];
    v4 = self->_callObserver;
    self->_callObserver = 0;
  }

  v5.receiver = self;
  v5.super_class = DataTelephonyCallObserverImpl;
  [(DataTelephonyCallObserverImpl *)&v5 dealloc];
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  observerCopy = observer;
  changedCopy = changed;
  providerIdentifier = [changedCopy providerIdentifier];
  *&buf[8] = 0;
  *&buf[16] = 0;
  ctu::cf::assign();
  *v35 = 0u;
  v36 = 0;

  *buf = v35;
  v9 = sub_1000B31D4(&self->_sliceCallStatus, v35);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_10000501C(&__p, "com.apple.telephonyutilities.callservicesd.FaceTimeProvider");
  if (v34 >= 0)
  {
    v10 = HIBYTE(v34);
  }

  else
  {
    v10 = v33;
  }

  v11 = HIBYTE(v36);
  if (v36 < 0)
  {
    v11 = v35[1];
  }

  if (v10 == v11)
  {
    if (v34 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v36 >= 0)
    {
      v13 = v35;
    }

    else
    {
      v13 = v35[0];
    }

    v14 = memcmp(p_p, v13, v10) == 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100032AC8(self->_logger.__ptr_);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v14;
    v31 = observerCopy;
    v16 = asStringBool([changedCopy isOutgoing]);
    hasConnected = [changedCopy hasConnected];
    hasEnded = [changedCopy hasEnded];
    v19 = *(v9 + 56);
    v20 = *(v9 + 57);
    providerIdentifier2 = [changedCopy providerIdentifier];
    *buf = 136316418;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = hasConnected;
    *&buf[18] = 1024;
    *&buf[20] = hasEnded;
    v38 = 1024;
    v39 = v19;
    v40 = 1024;
    v41 = v20;
    v42 = 2112;
    v43 = providerIdentifier2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I (1) [outgoing=%s] call connected: %{BOOL}d, call ended: %{BOOL}d, _callStarting: %{BOOL}d, _callActive: %{BOOL}d, call provider: %@", buf, 0x2Eu);

    observerCopy = v31;
    v14 = v30;
  }

  if ([changedCopy hasConnected] & 1) != 0 || (objc_msgSend(changedCopy, "hasEnded"))
  {
    v22 = 0;
    if (*(v9 + 56) == 1)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v9 + 56) & 1) == 0)
  {
    v22 = 1;
LABEL_24:
    *(v9 + 56) = v22;
    v23 = 1;
    goto LABEL_25;
  }

  v23 = 0;
LABEL_25:
  if ([changedCopy hasConnected] && (objc_msgSend(changedCopy, "hasEnded") & 1) == 0)
  {
    if ((*(v9 + 57) & 1) == 0)
    {
      v23 = 1;
      *(v9 + 57) = 1;
    }
  }

  else if (*(v9 + 57) == 1)
  {
    *(v9 + 57) = 0;
    v23 = 1;
  }

  v24 = sub_100032AC8(self->_logger.__ptr_);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = asStringBool([changedCopy isOutgoing]);
    hasConnected2 = [changedCopy hasConnected];
    hasEnded2 = [changedCopy hasEnded];
    v28 = *(v9 + 56);
    v29 = *(v9 + 57);
    *buf = 136316162;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = hasConnected2;
    *&buf[18] = 1024;
    *&buf[20] = hasEnded2;
    v38 = 1024;
    v39 = v28;
    v40 = 1024;
    v41 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I (2) [outgoing=%s] call connected: %{BOOL}d, call ended: %{BOOL}d, _callStarting: %{BOOL}d, _callActive: %{BOOL}d", buf, 0x24u);
  }

  if (v23)
  {
    sub_1000B3B38(&self->_callback, *(v9 + 56), *(v9 + 57), v14);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 9) = 0;
  *(self + 8) = 0;
  *(self + 7) = self + 64;
  return self;
}

@end