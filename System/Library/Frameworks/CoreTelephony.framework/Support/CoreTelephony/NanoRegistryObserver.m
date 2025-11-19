@interface NanoRegistryObserver
- (NanoRegistryObserver)initWithQueue:(queue)a3 delegate:(weak_ptr<NanoRegistryObserverDelegate>)a4;
- (id).cxx_construct;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)didDeviceUnpair:(id)a3;
- (void)didDeviceUnpair_sync:(id)a3;
- (void)didEnterCompatibilityState:(id)a3;
- (void)didEnterCompatibilityState_sync:(id)a3;
- (void)notifyDevicesUpdated:(id)a3;
- (void)sendInitialUpdate:(id)a3;
- (void)startObserving_sync;
- (void)stopObserving_sync;
@end

@implementation NanoRegistryObserver

- (NanoRegistryObserver)initWithQueue:(queue)a3 delegate:(weak_ptr<NanoRegistryObserverDelegate>)a4
{
  ptr = a4.__ptr_;
  v15.receiver = self;
  v15.super_class = NanoRegistryObserver;
  v6 = [(NanoRegistryObserver *)&v15 init:a3.fObj.fObj];
  if (v6)
  {
    v7 = *a3.fObj.fObj;
    if (v7)
    {
      dispatch_retain(v7);
    }

    fObj = v6->_queue.fObj.fObj;
    v6->_queue.fObj.fObj = v7;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v10 = *ptr;
    v9 = *(ptr + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v6->_delegate.__cntrl_;
    v6->_delegate.__ptr_ = v10;
    v6->_delegate.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v16[0] = NRDevicePropertyIsActive;
    v16[1] = NRDevicePropertyCSN;
    v16[2] = NRDevicePropertyName;
    v12 = [NSArray arrayWithObjects:v16 count:3];
    interestingDeviceProperties = v6->_interestingDeviceProperties;
    v6->_interestingDeviceProperties = v12;
  }

  return v6;
}

- (void)dealloc
{
  [(NanoRegistryObserver *)self stopObserving_sync];
  v3.receiver = self;
  v3.super_class = NanoRegistryObserver;
  [(NanoRegistryObserver *)&v3 dealloc];
}

- (void)startObserving_sync
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"didEnterCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didDeviceUnpair:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"didDeviceUnpair:" name:NRPairedDeviceRegistryDeviceDidFailToPairNotification object:0];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101346A7C;
  v7[3] = &unk_101F30B48;
  v7[4] = self;
  [v6 getDevicesWithBlock:v7];
}

- (void)stopObserving_sync
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)didEnterCompatibilityState:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_101346C28;
  v5[3] = &unk_101F0F6C0;
  v6 = self;
  v7 = a3;
  fObj = v6->_queue.fObj.fObj;
  v4 = v7;
  dispatch_async(fObj, v5);
}

- (void)didEnterCompatibilityState_sync:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:NRPairedDeviceRegistryDevice];
  v6 = [v4 objectForKey:NRPairedDeviceRegistryCompatibilityStateKey];
  v7 = [v6 intValue];

  if (v7 - 4 >= 2)
  {
    if (v7 != 3)
    {
      goto LABEL_9;
    }

    [v5 addPropertyObserver:self forPropertyChanges:self->_interestingDeviceProperties];
    cntrl = self->_delegate.__cntrl_;
    if (cntrl)
    {
      v10 = std::__shared_weak_count::lock(cntrl);
      if (v10)
      {
        v11 = v10;
        ptr = self->_delegate.__ptr_;
        if (ptr)
        {
          (*(*ptr + 32))(ptr);
        }

        sub_100004A34(v11);
      }
    }
  }

  v13 = v5;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  [(NanoRegistryObserver *)self notifyDevicesUpdated:v8];

LABEL_9:
}

- (void)didDeviceUnpair:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_101346ECC;
  v5[3] = &unk_101F0F6C0;
  v6 = self;
  v7 = a3;
  fObj = v6->_queue.fObj.fObj;
  v4 = v7;
  dispatch_async(fObj, v5);
}

- (void)didDeviceUnpair_sync:(id)a3
{
  v4 = a3;
  cntrl = self->_delegate.__cntrl_;
  if (cntrl)
  {
    v6 = std::__shared_weak_count::lock(cntrl);
    if (v6)
    {
      v7 = v6;
      ptr = self->_delegate.__ptr_;
      if (ptr)
      {
        v9 = [v4 objectForKey:NRPairedDeviceRegistryDevice];
        v10 = +[NRPairedDeviceRegistry sharedInstance];
        v11 = [v10 deviceIDForNRDevice:v9];

        if (v11)
        {
          v12 = [v11 UUIDString];
          sub_10000501C(__p, [v12 UTF8String]);
          (*(*ptr + 16))(ptr, __p);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          sub_10000501C(__p, "");
          (*(*ptr + 16))(ptr, __p);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1013471E4;
  block[3] = &unk_101EA6A98;
  v12 = a4;
  v13 = v7;
  v14 = self;
  fObj = self->_queue.fObj.fObj;
  v9 = v7;
  v10 = v12;
  dispatch_async(fObj, block);
}

- (void)sendInitialUpdate:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) addPropertyObserver:self forPropertyChanges:{self->_interestingDeviceProperties, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NanoRegistryObserver *)self notifyDevicesUpdated:v4];
}

- (void)notifyDevicesUpdated:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v76 = 0;
  v77 = 0uLL;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v5)
  {
    v6 = 0;
    v68 = NRDevicePropertyName;
    v67 = NRDevicePropertyCellularEnabled;
    v61 = NRDevicePropertyCSN;
    v59 = NRDevicePropertyMEID;
    v60 = NRDevicePropertyIMEI;
    v58 = NRDevicePropertyWifiAntennaSKUVersion;
    v66 = NRDevicePropertySystemVersion;
    v65 = NRDevicePropertyProductType;
    v64 = NRDevicePropertyIsActive;
    v62 = NRDevicePropertyIsAltAccount;
    v69 = *v73;
    for (i = *v73; ; i = *v73)
    {
      if (i != v69)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v72 + 1) + 8 * v6);
      v9 = [v4 deviceIDForNRDevice:v8];
      if (v9)
      {
        break;
      }

LABEL_59:

      if (++v6 >= v5)
      {
        v5 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
        if (!v5)
        {
          goto LABEL_63;
        }

        v6 = 0;
      }
    }

    v10 = v77;
    if (v77 >= *(&v77 + 1))
    {
      v12 = v76;
      v13 = v77 - v76;
      v14 = 0x84BDA12F684BDA13 * ((v77 - v76) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0x12F684BDA12F684)
      {
        sub_1000CE3D4();
      }

      if (0x97B425ED097B426 * ((*(&v77 + 1) - v76) >> 3) > v15)
      {
        v15 = 0x97B425ED097B426 * ((*(&v77 + 1) - v76) >> 3);
      }

      if (0x84BDA12F684BDA13 * ((*(&v77 + 1) - v76) >> 3) >= 0x97B425ED097B42)
      {
        v16 = 0x12F684BDA12F684;
      }

      else
      {
        v16 = v15;
      }

      v81 = &v76;
      if (v16)
      {
        sub_100354934(&v76, v16);
      }

      v17 = 8 * ((v77 - v76) >> 3);
      __p = 0;
      v79 = v17;
      *(&v80 + 1) = 0;
      *v17 = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      *(v17 + 96) = 0u;
      *(v17 + 112) = 0u;
      *(v17 + 128) = 0u;
      *(v17 + 144) = 0u;
      *(v17 + 160) = 0u;
      *(v17 + 176) = 0u;
      *(v17 + 192) = 0u;
      *(v17 + 208) = 0;
      v18 = 216 * v14 - v13;
      *&v80 = 216 * v14 + 216;
      sub_100DB1364(&v76, v12, v10, v18);
      v19 = v76;
      v20 = *(&v77 + 1);
      v76 = v18;
      v63 = v80;
      v77 = v80;
      *&v80 = v19;
      *(&v80 + 1) = v20;
      __p = v19;
      v79 = v19;
      sub_100DB1490(&__p);
      v11 = v63;
    }

    else
    {
      *(v77 + 208) = 0;
      *(v10 + 176) = 0u;
      *(v10 + 192) = 0u;
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 112) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 80) = 0u;
      *(v10 + 96) = 0u;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      *v10 = 0u;
      v11 = v10 + 216;
    }

    *&v77 = v11;
    v21 = [v9 UUIDString];
    v22 = v21;
    sub_100016890((v11 - 208), [v21 UTF8String]);

    v23 = [v8 valueForProperty:v68];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      sub_100016890((v11 - 112), [v24 UTF8String]);
    }

    v26 = [v8 valueForProperty:v67];
    *(v11 - 40) = [v26 BOOLValue];

    if (*(v11 - 40) == 1)
    {
      v27 = [v8 valueForProperty:v61];

      v28 = v27;
      if (v27 && ([@"Unknown" isEqualToString:v27] & 1) == 0)
      {
        v29 = v27;
        sub_100016890((v11 - 184), [v27 UTF8String]);
      }

      v30 = [v8 valueForProperty:v60];

      v31 = v30;
      if (v30 && ([@"Unknown" isEqualToString:v30] & 1) == 0)
      {
        v32 = v30;
        sub_100016890((v11 - 160), [v30 UTF8String]);
      }

      v33 = [v8 valueForProperty:v59];

      if (v33 && ([@"Unknown" isEqualToString:v33] & 1) == 0)
      {
        v34 = v33;
        sub_100016890((v11 - 136), [v33 UTF8String]);
      }

      v35 = [v8 valueForProperty:v58];
      v36 = v35;
      if (v35 && [v35 length] == 16)
      {
        BYTE4(__p) = 0;
        LODWORD(__p) = 0;
        v37 = v36;
        v38 = *([v36 bytes] + 2);
        LODWORD(__p) = v38;
        if (!v38)
        {
          LOBYTE(__p) = HIBYTE(v38);
          BYTE1(__p) = BYTE2(v38);
          WORD1(__p) = BYTE1(v38);
        }

        sub_100016890((v11 - 32), &__p);
      }

      v24 = v33;
    }

    v39 = [v8 valueForProperty:v66];

    v40 = v39;
    if (v39)
    {
      v41 = v39;
      sub_100016890((v11 - 88), [v39 UTF8String]);
    }

    v42 = [v8 valueForProperty:v65];

    if (v42)
    {
      v43 = v42;
      sub_100016890((v11 - 64), [v42 UTF8String]);
    }

    v44 = [v4 compatibilityState];
    v45 = [v8 valueForProperty:v64];
    v46 = [v45 BOOLValue];

    if (!v46)
    {
      goto LABEL_44;
    }

    if ((v44 & 0xFFFE) == 4)
    {
      *(v11 - 39) = 2;
      goto LABEL_45;
    }

    if (v44 == 3)
    {
      *(v11 - 39) = 1;
      *(v11 - 8) = 3;
    }

    else
    {
LABEL_44:
      *(v11 - 39) = 0;
    }

LABEL_45:
    v47 = *(v11 - 89);
    if (v47 < 0)
    {
      v47 = *(v11 - 104);
      if (!v47)
      {
LABEL_52:
        *(v11 - 216) = v47;
        sub_100020850();
        v50 = qword_101FCA938;
        if (os_log_type_enabled(qword_101FCA938, OS_LOG_TYPE_DEFAULT))
        {
          rest::write_rest_value();
          xpc::object::to_string(&__p, &object);
          p_p = &__p;
          if (SBYTE7(v80) < 0)
          {
            p_p = __p;
          }

          *buf = 136315138;
          v83 = p_p;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Updated device: %s", buf, 0xCu);
          if (SBYTE7(v80) < 0)
          {
            operator delete(__p);
          }

          xpc_release(object);
        }

        goto LABEL_59;
      }
    }

    else if (!*(v11 - 89))
    {
      goto LABEL_52;
    }

    v48 = [v8 valueForProperty:v62];
    v49 = [v48 BOOLValue];

    if (v49)
    {
      LOBYTE(v47) = 2;
    }

    else
    {
      LOBYTE(v47) = 1;
    }

    goto LABEL_52;
  }

LABEL_63:

  if (v76 == v77)
  {
    sub_100020850();
    v56 = qword_101FCA938;
    if (os_log_type_enabled(qword_101FCA938, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Device list is empty", &__p, 2u);
    }
  }

  else
  {
    cntrl = self->_delegate.__cntrl_;
    if (cntrl)
    {
      v53 = std::__shared_weak_count::lock(cntrl);
      if (v53)
      {
        v54 = v53;
        ptr = self->_delegate.__ptr_;
        if (ptr)
        {
          (*(*ptr + 24))(ptr, &v76);
        }

        sub_100004A34(v54);
      }
    }
  }

  __p = &v76;
  sub_10032DC68(&__p);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end