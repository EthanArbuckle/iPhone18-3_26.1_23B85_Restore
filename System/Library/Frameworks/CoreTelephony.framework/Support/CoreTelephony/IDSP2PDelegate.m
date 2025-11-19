@interface IDSP2PDelegate
- (BOOL)isWhitelisted:(id)a3;
- (BOOL)updateDeviceSet:(id)a3 withMessage:(id)a4 named:(id)a5 withOptions:(id)a6 withIdentifier:(id *)a7;
- (BOOL)updateDeviceSet:(id)a3 withURL:(id)a4 withMessage:(id)a5 named:(id)a6 withOptions:(id)a7 withIdentifier:(id *)a8;
- (BOOL)validateDevice:(id)a3;
- (CFSharedRef<const)getWhitelistInfo:(id)a3;
- (CFSharedRef<const)sendFile:(id)a3 withMessage:(id)a4 withName:(id)a5 withOptions:(id)a6 withAck:(id)a7 toDevice:(id)a8;
- (CFSharedRef<const)sendMessage:(id)a3 withName:(id)a4 withOptions:(id)a5 withAck:(id)a6 toDevice:(id)a7;
- (IDSP2PDelegate)initWithServiceName:(id)a3 logPrefix:(const char *)a4 onDeviceState:(id)a5 onActiveDeviceChange:(id)a6 onMessage:(id)a7 onURL:(id)a8 queue:(dispatch_queue_s *)a9 registry:(shared_ptr<Registry>)a10 capable:(BOOL)a11;
- (id).cxx_construct;
- (id)compileDestinationSet:(id)a3;
- (id)compileWhitelistedDestinationSet:(id)a3;
- (id)uniqueDeviceIdFromIncomingDevId:(id)a3;
- (id)validateDevices:(id)a3;
- (shared_ptr<P2PDeviceDescr>)getDeviceInProximity;
- (vector<std::string,)getAllRegisteredDevicesUuids;
- (void)blacklistDevice:(id)a3;
- (void)dealloc;
- (void)introduceMyselfIfNeeded:(id)a3;
- (void)inviteDeviceIfNeeded:(id)a3;
- (void)invokeAckCallbackFor:(id)a3 withSuccess:(BOOL)a4 withError:(id)a5;
- (void)invokeDeviceChangedCallback:(id)a3;
- (void)invokeOnFileCallbackWithURL:(id)a3 withMessage:(id)a4 andName:(id)a5 andId:(id)a6;
- (void)invokeOnMessageCallbackWithDict:(id)a3 andName:(id)a4 andId:(id)a5;
- (void)postActiveDeviceIdOnStart;
- (void)processControlPacket:(id)a3 from:(id)a4;
- (void)processIntroductionPacket:(id)a3 from:(id)a4;
- (void)processInvitationPacketFrom:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)setIntroductionInfo:(id)a3;
- (void)watchDidPair:(id)a3;
- (void)whitelistDevice:(id)a3 with:(id)a4;
@end

@implementation IDSP2PDelegate

- (IDSP2PDelegate)initWithServiceName:(id)a3 logPrefix:(const char *)a4 onDeviceState:(id)a5 onActiveDeviceChange:(id)a6 onMessage:(id)a7 onURL:(id)a8 queue:(dispatch_queue_s *)a9 registry:(shared_ptr<Registry>)a10 capable:(BOOL)a11
{
  v30.receiver = self;
  v30.super_class = IDSP2PDelegate;
  v16 = [(IDSP2PDelegate *)&v30 init];
  if (v16)
  {
    if (a7)
    {
      v17 = _Block_copy(a7);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v16 + 3);
    *(v16 + 3) = v17;
    if (v18)
    {
      _Block_release(v18);
    }

    if (a5)
    {
      v19 = _Block_copy(a5);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v16 + 4);
    *(v16 + 4) = v19;
    if (v20)
    {
      _Block_release(v20);
    }

    if (a6)
    {
      v21 = _Block_copy(a6);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v16 + 5);
    *(v16 + 5) = v21;
    if (v22)
    {
      _Block_release(v22);
    }

    if (a8)
    {
      v23 = _Block_copy(a8);
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v16 + 6);
    *(v16 + 6) = v23;
    if (v24)
    {
      _Block_release(v24);
    }

    if (a9)
    {
      dispatch_retain(a9);
    }

    v25 = *(v16 + 2);
    *(v16 + 2) = a9;
    if (v25)
    {
      dispatch_release(v25);
    }

    v27 = *a10.__ptr_;
    v26 = *(a10.__ptr_ + 1);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(v16 + 10);
    *(v16 + 9) = v27;
    *(v16 + 10) = v26;
    if (v28)
    {
      sub_100004A34(v28);
    }

    *(v16 + 7) = a4;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];
  [*(self + 1) removeDelegate:self];

  *(self + 1) = 0;
  [(IDSP2PDelegate *)self setFConnectedDevices:0];
  [(IDSP2PDelegate *)self setFBlacklistedDeviceUuidsKey:0];
  [(IDSP2PDelegate *)self setFBlacklistedDeviceUuids:0];
  [(IDSP2PDelegate *)self setFWhitelistedDevicesKey:0];
  [(IDSP2PDelegate *)self setFWhitelistedDeviceUuids:0];
  [(IDSP2PDelegate *)self setFInvitedDevices:0];
  [(IDSP2PDelegate *)self setFIntroInfo:0];
  [(IDSP2PDelegate *)self setFTopic:0];
  v4.receiver = self;
  v4.super_class = IDSP2PDelegate;
  [(IDSP2PDelegate *)&v4 dealloc];
}

- (shared_ptr<P2PDeviceDescr>)getDeviceInProximity
{
  v3 = *(self + 12);
  *v2 = *(self + 11);
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (vector<std::string,)getAllRegisteredDevicesUuids
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(self + 1) devices];
  context = v5;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (v10)
        {
          v11 = [*(*(&v18 + 1) + 8 * i) uniqueIDOverride];
          if (v11)
          {
            v12 = [v11 UTF8String];
            *buf = v12;
            var1 = retstr->var1;
            if (var1 >= retstr->var2)
            {
              v14 = sub_101564770(retstr, buf);
            }

            else
            {
              sub_10000501C(retstr->var1, v12);
              v14 = var1 + 24;
            }

            retstr->var1 = v14;
          }

          else
          {
            v15 = **(self + 8);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v10;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I ignored device with incomplete descripton: %@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  return result;
}

- (void)invokeDeviceChangedCallback:(id)a3
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = *v27;
  while (2)
  {
    for (i = 0; i != v5; i = (i + 1))
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(a3);
      }

      v8 = *(*(&v26 + 1) + 8 * i);
      if (v8 && [*(*(&v26 + 1) + 8 * i) isLocallyPaired] && -[IDSP2PDelegate validateDevice:](self, "validateDevice:", v8))
      {
        v9 = [v8 uniqueIDOverride];
        v10 = [(IDSP2PDelegate *)self isWhitelisted:v9];
        v11 = v10;
        v12 = capabilities::ct::supportsP2PAsPhone(v10);
        if (!(v11 & 1 | ((v12 & 1) == 0)))
        {
          [(IDSP2PDelegate *)self inviteDeviceIfNeeded:v9];
          goto LABEL_28;
        }

        if (capabilities::ct::supportsP2PAsGizmo(v12))
        {
          goto LABEL_27;
        }

        ServiceMap = Registry::getServiceMap(*(self + 9));
        v14 = ServiceMap;
        if ((v15 & 0x8000000000000000) != 0)
        {
          v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
          v17 = 5381;
          do
          {
            v15 = v17;
            v18 = *v16++;
            v17 = (33 * v17) ^ v18;
          }

          while (v18);
        }

        std::mutex::lock(ServiceMap);
        v30 = v15;
        v19 = sub_100009510(&v14[1].__m_.__sig, &v30);
        if (v19)
        {
          v21 = v19[3];
          v20 = v19[4];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v14);
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v20);
            goto LABEL_23;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
LABEL_23:
        isWatch = GestaltUtilityInterface::isWatch(v21);
        v23 = isWatch;
        if (v20)
        {
          sub_100004A34(v20);
          if ((v23 & 1) == 0)
          {
LABEL_28:
            if (v11 && [+[NRPairedDeviceRegistry deviceForIDSDevice:"deviceForIDSDevice:"]
            {
              operator new();
            }

            v5 = 0;
            goto LABEL_32;
          }
        }

        else if (!isWatch)
        {
          goto LABEL_28;
        }

LABEL_27:
        [(IDSP2PDelegate *)self introduceMyselfIfNeeded:v9];
        goto LABEL_28;
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_32:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10155EE70;
  block[3] = &unk_101F4D058;
  block[4] = self;
  block[5] = 0;
  v25 = v5;
  dispatch_async(*(self + 2), block);
  if (v25)
  {
    sub_100004A34(v25);
  }
}

- (void)invokeOnMessageCallbackWithDict:(id)a3 andName:(id)a4 andId:(id)a5
{
  v15 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v14 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v13 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10155F20C;
  block[3] = &unk_101F4D090;
  block[4] = self;
  v10 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  v11 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v12 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  dispatch_async(*(self + 2), block);
  sub_10000A1EC(&v12);
  sub_100005978(&v11);
  sub_100005978(&v10);
  sub_100005978(&v13);
  sub_100005978(&v14);
  sub_10000A1EC(&v15);
}

- (void)invokeOnFileCallbackWithURL:(id)a3 withMessage:(id)a4 andName:(id)a5 andId:(id)a6
{
  v19 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v18 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v17 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  v16 = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10155F47C;
  block[3] = &unk_101F4D100;
  block[4] = self;
  v12 = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  v13 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  v14 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v15 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  dispatch_async(*(self + 2), block);
  sub_1002030AC(&v15);
  sub_10000A1EC(&v14);
  sub_100005978(&v13);
  sub_100005978(&v12);
  sub_100005978(&v16);
  sub_100005978(&v17);
  sub_10000A1EC(&v18);
  sub_1002030AC(&v19);
}

- (void)invokeAckCallbackFor:(id)a3 withSuccess:(BOOL)a4 withError:(id)a5
{
  v14 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v13 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10155FA34;
  v9[3] = &unk_101F4D138;
  v9[4] = self;
  v10 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v12 = a4;
  v11 = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  dispatch_async(*(self + 2), v9);
  sub_1003A5A8C(&v11);
  sub_100005978(&v10);
  sub_1003A5A8C(&v13);
  sub_100005978(&v14);
}

- (void)watchDidPair:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10155FD00;
  block[3] = &unk_101E97468;
  block[4] = self;
  dispatch_async(*(self + 2), block);
}

- (void)setIntroductionInfo:(id)a3
{
  if ((a3 == 0) == ([(IDSP2PDelegate *)self fIntroInfo]!= 0) || ([(NSDictionary *)[(IDSP2PDelegate *)self fIntroInfo] isEqual:a3]& 1) == 0)
  {
    [(IDSP2PDelegate *)self setFIntroInfo:a3];
    *(self + 128) = 1;

    [(IDSP2PDelegate *)self introduceMyselfIfNeeded:0];
  }
}

- (void)whitelistDevice:(id)a3 with:(id)a4
{
  [(NSMutableArray *)[(IDSP2PDelegate *)self fWhitelistedDeviceUuids] addObject:a3];
  theDict = 0;
  DevicePersistentCopyValue(buf, [(IDSP2PDelegate *)self fWhitelistedDevicesKey], 0);
  sub_100010180(&theDict, buf);
  sub_10000A1EC(buf);
  v12 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      goto LABEL_5;
    }
  }

  v8 = v12;
  v12 = MutableCopy;
  *buf = v8;
  sub_1000296E0(buf);
LABEL_5:
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = &__NSDictionary0__struct;
  }

  CFDictionarySetValue(v12, a3, v9);
  DevicePersistentSaveValue([(IDSP2PDelegate *)self fWhitelistedDevicesKey], v12);
  v10 = **(self + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a3 UTF8String];
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I  Device %s whitelisted", buf, 0xCu);
  }

  sub_1000296E0(&v12);
  sub_10001021C(&theDict);
}

- (CFSharedRef<const)getWhitelistInfo:(id)a3
{
  v5 = v3;
  theDict = 0;
  DevicePersistentCopyValue(&v10, [(IDSP2PDelegate *)self fWhitelistedDevicesKey], 0);
  sub_100010180(&theDict, &v10);
  sub_10000A1EC(&v10);
  if (theDict && (Value = CFDictionaryGetValue(theDict, a3), (v7 = Value) != 0) && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
  {
    *v5 = v7;
    CFRetain(v7);
  }

  else
  {
    *v5 = 0;
  }

  return sub_10001021C(&theDict);
}

- (BOOL)isWhitelisted:(id)a3
{
  v4 = [(IDSP2PDelegate *)self fWhitelistedDeviceUuids];

  return [(NSMutableArray *)v4 containsObject:a3];
}

- (void)blacklistDevice:(id)a3
{
  if ([(IDSP2PDelegate *)self fBlacklistedDeviceUuids])
  {
    v5 = [(NSArray *)[(IDSP2PDelegate *)self fBlacklistedDeviceUuids] mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  [v6 addObject:a3];
  [(IDSP2PDelegate *)self setFBlacklistedDeviceUuids:v6];
  if (*(self + 130) == 1)
  {
    DevicePersistentSaveValue([(IDSP2PDelegate *)self fBlacklistedDeviceUuidsKey], [(IDSP2PDelegate *)self fBlacklistedDeviceUuids]);
  }

  v7 = **(self + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = [a3 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  Device %s blacklisted", &v8, 0xCu);
  }
}

- (void)inviteDeviceIfNeeded:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (([(NSMutableArray *)[(IDSP2PDelegate *)self fInvitedDevices] containsObject:a3]& 1) == 0)
  {
    v6 = [(IDSP2PDelegate *)self compileDestinationSet:a3];
    v7 = **(self + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      aBlock[0] = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  Sending INVITE to %s", buf, 0xCu);
    }

    v8 = [NSString stringWithFormat:@"%@.%@", [(IDSP2PDelegate *)self fTopic], @"You are invited"];
    v25 = @"You are invited";
    v26 = @"control";
    v24 = @"type";
    v27 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22[0] = IDSSendMessageOptionQueueOneIdentifierKey;
    v22[1] = IDSSendMessageOptionNonWakingKey;
    v23[0] = v8;
    v23[1] = &__kCFBooleanTrue;
    cf = 0;
    if ([(IDSP2PDelegate *)self updateDeviceSet:v6 withMessage:v9 named:@"You are invited" withOptions:[NSDictionary withIdentifier:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v23 forKeys:v22 count:2], &cf])
    {
      v18 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v17 = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3321888768;
      v14[2] = sub_1015605F0;
      v14[3] = &unk_101F4D170;
      v14[4] = self;
      v15 = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      v16 = v14;
      sub_101564890(buf, &v18, &v16);
      sub_10156071C(self + 104, buf);
      if (*(aBlock + 4))
      {
        _Block_release(*(aBlock + 4));
      }

      sub_100005978(buf);
      if (![(IDSP2PDelegate *)self fInvitedDevices])
      {
        [(IDSP2PDelegate *)self setFInvitedDevices:objc_opt_new()];
      }

      [(NSMutableArray *)[(IDSP2PDelegate *)self fInvitedDevices] addObject:a3];
      v10 = *(self + 8);
      v11 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(NSMutableArray *)[(IDSP2PDelegate *)self fInvitedDevices] count];
        *buf = 134217984;
        aBlock[0] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I  Set of InvitedDevices become: %lu devices", buf, 0xCu);
        v10 = *(self + 8);
      }

      sub_10155E01C(v10, [(IDSP2PDelegate *)self fInvitedDevices]);
      sub_100005978(&v15);
      sub_100005978(&v17);
      sub_100005978(&v18);
    }

    else
    {
      v13 = **(self + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I  INVITE sending failed", buf, 2u);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)introduceMyselfIfNeeded:(id)a3
{
  if (*(self + 128) == 1)
  {
    v4 = a3;
    v24 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    v17 = *(self + 11);
    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = (v17 + 32);
    if (v17[55] < 0)
    {
      v17 = *(v17 + 5);
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = *v18;
    }

    else if (!v17[55])
    {
      v17 = 0;
LABEL_31:
      v20 = 0;
LABEL_32:
      buf[0] = v20;
      v23 = 0;
      v24 = v17;
      sub_100005978(buf);
      sub_100005978(&v23);
      if (!v24)
      {
        v6 = **(self + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          v7 = "#I Not sending INTRO, companion is out of proximity";
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v22 = v24;
      CFRetain(v24);
      v4 = v22;
      sub_100005978(&v22);
LABEL_3:
      if ([(IDSP2PDelegate *)self isWhitelisted:v4]|| (*(self + 129) & 1) == 0)
      {
        v8 = [(IDSP2PDelegate *)self compileDestinationSet:v4];
        v9 = **(self + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v4 UTF8String];
          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I  Sending INTRO to %s", buf, 0xCu);
        }

        v11 = [NSString stringWithFormat:@"%@.%@", [(IDSP2PDelegate *)self fTopic], @"I am"];
        v32 = @"control";
        v30[0] = @"type";
        v30[1] = @"capable";
        if (*(self + 129))
        {
          v12 = &__kCFBooleanTrue;
        }

        else
        {
          v12 = &__kCFBooleanFalse;
        }

        v31[0] = @"I am";
        v31[1] = v12;
        v30[2] = @"devinfo";
        v13 = [(IDSP2PDelegate *)self fIntroInfo];
        v14 = &__NSDictionary0__struct;
        if (v13)
        {
          v14 = v13;
        }

        v31[2] = v14;
        v33 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
        v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v28[0] = IDSSendMessageOptionQueueOneIdentifierKey;
        v28[1] = IDSSendMessageOptionNonWakingKey;
        v29[0] = v11;
        v29[1] = &__kCFBooleanTrue;
        v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
        cf = 0;
        if ([(IDSP2PDelegate *)self updateDeviceSet:v8 withMessage:v15 named:@"I am" withOptions:v16 withIdentifier:&cf])
        {
          v25 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_101560CEC;
          v21[3] = &unk_101F4D1A8;
          v21[4] = self;
          v23 = v21;
          *(self + 128) = 0;
          sub_101564890(buf, &v25, &v23);
          sub_10156071C(self + 104, buf);
          if (buf[1])
          {
            _Block_release(buf[1]);
          }

          sub_100005978(buf);
          sub_100005978(&v25);
          goto LABEL_37;
        }

        v6 = **(self + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          v7 = "#I  INTRO sending failed";
          goto LABEL_36;
        }
      }

      else
      {
        v6 = **(self + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          v7 = "#I  INTRO suppressed";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
        }
      }

LABEL_37:
      sub_100005978(&v24);
      return;
    }

    v25 = 0;
    cf = 0;
    if (ctu::cf::convert_copy(&cf, v18, 0x8000100, kCFAllocatorDefault, v3))
    {
      v19 = v25;
      v25 = cf;
      buf[0] = v19;
      sub_100005978(buf);
    }

    v23 = v25;
    v25 = 0;
    sub_100005978(&v25);
    v17 = v23;
    v20 = v24;
    goto LABEL_32;
  }
}

- (void)processInvitationPacketFrom:(id)a3
{
  v7 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_101560E34;
  v5[3] = &unk_101F4D1D0;
  v5[4] = self;
  v5[5] = a3;
  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  dispatch_async(*(self + 2), v5);
  sub_100005978(&v6);
  sub_100005978(&v7);
}

- (void)processIntroductionPacket:(id)a3 from:(id)a4
{
  v11 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_101560FC4;
  block[3] = &unk_101F4D208;
  v8 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  block[4] = self;
  v9 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  dispatch_async(*(self + 2), block);
  sub_100005978(&v9);
  sub_10001021C(&v8);
  sub_100005978(&v10);
  sub_10001021C(&v11);
}

- (void)processControlPacket:(id)a3 from:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([@"You are invited" isEqualToString:v7])
      {

        [(IDSP2PDelegate *)self processInvitationPacketFrom:a4, v8];
      }

      else if ([@"I am" isEqualToString:v7])
      {

        [(IDSP2PDelegate *)self processIntroductionPacket:a3 from:a4];
      }
    }
  }
}

- (BOOL)updateDeviceSet:(id)a3 withMessage:(id)a4 named:(id)a5 withOptions:(id)a6 withIdentifier:(id *)a7
{
  if (a3 && [a3 count])
  {
    v13 = *(self + 8);
    v14 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v28 = [a3 count];
      v29 = 2048;
      v30 = [a4 count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I  Updating %lu device(s) with message (%lu records(s))", buf, 0x16u);
      v13 = *(self + 8);
    }

    sub_101561538(v13, a3);
    v15 = [objc_msgSend(*(self + 1) "accounts")];
    v16 = *(self + 1);
    v26 = 0;
    v17 = [v16 sendMessage:a4 fromAccount:v15 toDestinations:a3 priority:300 options:a6 identifier:a7 error:&v26];
    v18 = *(self + 8);
    v19 = *v18;
    if (v17)
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [a5 UTF8String];
        v21 = [*a7 UTF8String];
        *buf = 136315394;
        v28 = v20;
        v29 = 2080;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I   => Sending message '%s'. Identifier: %s; callback will follow with result", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v24 = [a5 UTF8String];
      v25 = [objc_msgSend(v26 "description")];
      *buf = 136315394;
      v28 = v24;
      v29 = 2080;
      v30 = v25;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error sending message '%s': %s", buf, 0x16u);
    }
  }

  else
  {
    v22 = **(self + 8);
    LOBYTE(v17) = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E  Skipping update because no devices were specified.", buf, 2u);
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (BOOL)updateDeviceSet:(id)a3 withURL:(id)a4 withMessage:(id)a5 named:(id)a6 withOptions:(id)a7 withIdentifier:(id *)a8
{
  if (a3 && [a3 count])
  {
    v15 = *(self + 8);
    v16 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v29 = [a3 count];
      v30 = 2080;
      v31 = [objc_msgSend(a4 "description")];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I  Updating %lu devices with resource %s", buf, 0x16u);
      v15 = *(self + 8);
    }

    sub_101561538(v15, a3);
    v17 = *(self + 1);
    v27 = 0;
    v18 = [v17 sendResourceAtURL:a4 metadata:a5 toDestinations:a3 priority:300 options:a7 identifier:a8 error:&v27];
    v19 = *(self + 8);
    v20 = *v19;
    if (v18)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [a6 UTF8String];
        v22 = [*a8 UTF8String];
        *buf = 136315394;
        v29 = v21;
        v30 = 2080;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I   => Sending resource '%s'. Identifier: %s; callback will follow with result", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [a6 UTF8String];
      v26 = [objc_msgSend(v27 "description")];
      *buf = 136315394;
      v29 = v25;
      v30 = 2080;
      v31 = v26;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, " Error sending resource '%s': %s", buf, 0x16u);
    }
  }

  else
  {
    v23 = **(self + 8);
    LOBYTE(v18) = 0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E  Skipping update because no devices were specified.", buf, 2u);
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

- (BOOL)validateDevice:(id)a3
{
  v5 = [a3 uniqueIDOverride];
  v6 = [a3 modelIdentifier];
  if (!v5 || (v7 = v6) == 0)
  {
    v17 = **(self + 8);
    v10 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      return v10;
    }

    v19 = 138412290;
    v20 = a3;
    v14 = "#I ignored device with incomplete descripton: %@";
    v15 = v17;
    v16 = 12;
    goto LABEL_15;
  }

  if (capabilities::ct::supportsP2PAsPhone(v6) && [a3 isLocallyPaired])
  {
    if (![+[NRPairedDeviceRegistry deviceForIDSDevice:"deviceForIDSDevice:"]
    {
      v11 = **(self + 8);
      v10 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        return v10;
      }

      v19 = 136315394;
      v20 = [v5 UTF8String];
      v21 = 2080;
      v22 = [(capabilities::ct *)v7 UTF8String];
      v14 = "#I  Device %s (%s - watch?)  is of unknown version - ignore";
      goto LABEL_12;
    }

    v8 = NRWatchOSVersionForRemoteDevice();
    v9 = **(self + 8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 < 0x40000)
    {
      if (!v10)
      {
        return v10;
      }

      v19 = 136315650;
      v20 = [v5 UTF8String];
      v21 = 2080;
      v22 = [(capabilities::ct *)v7 UTF8String];
      v23 = 1024;
      v24 = v8;
      v14 = "#I  Watch %s (%s) is of old version (%u) - ignore";
      v15 = v9;
      v16 = 28;
      goto LABEL_15;
    }

    if (v10)
    {
      v19 = 136315650;
      v20 = [v5 UTF8String];
      v21 = 2080;
      v22 = [(capabilities::ct *)v7 UTF8String];
      v23 = 1024;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I  Watch %s (%s) is compatible, version %u", &v19, 0x1Cu);
    }
  }

  if (![(NSArray *)[(IDSP2PDelegate *)self fBlacklistedDeviceUuids] containsObject:v5])
  {
    LOBYTE(v10) = 1;
    return v10;
  }

  v11 = **(self + 8);
  v10 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v12 = [v5 UTF8String];
    v13 = [(capabilities::ct *)v7 UTF8String];
    v19 = 136315394;
    v20 = v12;
    v21 = 2080;
    v22 = v13;
    v14 = "#I  Device %s (%s) is blacklisted";
LABEL_12:
    v15 = v11;
    v16 = 22;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)validateDevices:(id)a3
{
  v5 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(IDSP2PDelegate *)self validateDevice:v10])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)compileDestinationSet:(id)a3
{
  if (a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(IDSP2PDelegate *)self fConnectedDevices];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(v10 "uniqueIDOverride")])
          {
            v18 = v10;
            v12 = [NSArray arrayWithObjects:&v18 count:1];
            goto LABEL_13;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
        v11 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [(IDSP2PDelegate *)self fConnectedDevices];
LABEL_13:
    v11 = v12;
  }

  return sub_101561E50(*(self + 8), [(IDSP2PDelegate *)self validateDevices:v11]);
}

- (id)compileWhitelistedDestinationSet:(id)a3
{
  if (a3)
  {
    if ([(IDSP2PDelegate *)self isWhitelisted:?]&& (v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, v5 = [(IDSP2PDelegate *)self fConnectedDevices], (v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16]) != 0))
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          if ([objc_msgSend(v10 "uniqueIDOverride")])
          {
            v29 = v10;
            v11 = [NSArray arrayWithObjects:&v29 count:1];
            return sub_101561E50(*(self + 8), [(IDSP2PDelegate *)self validateDevices:v11]);
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
        v11 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(IDSP2PDelegate *)self fConnectedDevices];
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          if (-[IDSP2PDelegate isWhitelisted:](self, "isWhitelisted:", [v18 uniqueIDOverride]))
          {
            [(NSArray *)v12 addObject:v18];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    if ([(NSArray *)v12 count])
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  return sub_101561E50(*(self + 8), [(IDSP2PDelegate *)self validateDevices:v11]);
}

- (CFSharedRef<const)sendMessage:(id)a3 withName:(id)a4 withOptions:(id)a5 withAck:(id)a6 toDevice:(id)a7
{
  v13 = v7;
  v20 = a6;
  *v7 = 0;
  v14 = objc_autoreleasePoolPush();
  v15 = [(IDSP2PDelegate *)self compileWhitelistedDestinationSet:a7];
  v16 = **(self + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = [a4 UTF8String];
    *&buf[12] = 2080;
    *&buf[14] = [objc_msgSend(a3 "description")];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I  Sending message '%s': %s", buf, 0x16u);
  }

  v21[0] = @"msg.name";
  v21[1] = @"msg.body";
  v22[0] = a4;
  v22[1] = a3;
  v19 = 0;
  if ([(IDSP2PDelegate *)self updateDeviceSet:v15 withMessage:[NSDictionary dictionaryWithObjects:2 forKeys:? count:?], a4, a5, &v19])
  {
    *buf = v19;
    sub_10021D11C(v13, buf);
    sub_101564890(buf, v13, &v20);
    sub_10156071C(self + 104, buf);
    if (*&buf[8])
    {
      _Block_release(*&buf[8]);
    }

    sub_100005978(buf);
  }

  else
  {
    v17 = **(self + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Sending message failed", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v14);
  return v18;
}

- (CFSharedRef<const)sendFile:(id)a3 withMessage:(id)a4 withName:(id)a5 withOptions:(id)a6 withAck:(id)a7 toDevice:(id)a8
{
  v15 = v8;
  v22 = a7;
  *v8 = 0;
  context = objc_autoreleasePoolPush();
  v16 = [(IDSP2PDelegate *)self compileWhitelistedDestinationSet:a8];
  v17 = **(self + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = [a5 UTF8String];
    *&buf[12] = 2080;
    *&buf[14] = [objc_msgSend(a3 "description")];
    v26 = 2080;
    v27 = [objc_msgSend(a4 "description")];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Sending URL '%s': %s and msg: '%s'", buf, 0x20u);
  }

  v23[0] = @"msg.name";
  v23[1] = @"msg.body";
  v24[0] = a5;
  v24[1] = a4;
  v21 = 0;
  if ([(IDSP2PDelegate *)self updateDeviceSet:v16 withURL:a3 withMessage:[NSDictionary dictionaryWithObjects:2 forKeys:? count:?], a5, a6, &v21])
  {
    *buf = v21;
    sub_10021D11C(v15, buf);
    sub_101564890(buf, v15, &v22);
    sub_10156071C(self + 104, buf);
    if (*&buf[8])
    {
      _Block_release(*&buf[8]);
    }

    sub_100005978(buf);
  }

  else
  {
    v18 = **(self + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I  Sending URL failed", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
  return v19;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101562710;
  v7[3] = &unk_101E97418;
  v7[4] = a4;
  v7[5] = self;
  dispatch_async(*(self + 2), v7);
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_101562E0C;
  v5[3] = &unk_101EA4400;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = self;
  v5[7] = a5;
  dispatch_async(*(self + 2), v5);
}

- (void)postActiveDeviceIdOnStart
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1015631D4;
  block[3] = &unk_101E97468;
  block[4] = self;
  dispatch_async(*(self + 2), block);
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v6 = [a4 count];
  v7 = *(self + 8);
  v8 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I  Set of connected devices changed: %lu device(s)", buf, 0xCu);
    v7 = *(self + 8);
  }

  sub_10155E500(v7, a4);
  v9 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1015635EC;
  v10[3] = &unk_101E97418;
  v10[4] = self;
  v10[5] = a4;
  dispatch_async(*(self + 2), v10);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = **(self + 8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a7)
  {
    if (v12)
    {
      if (v8)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      *v18 = 136315650;
      *&v18[4] = v13;
      *&v18[12] = 2080;
      *&v18[14] = [a5 UTF8String];
      *&v18[22] = 2080;
      v19 = [objc_msgSend(a7 "description")];
      v14 = "#I   -- didSendWithSuccess: %s identifier: %s error: %s";
      v15 = v11;
      v16 = 32;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v18, v16);
    }
  }

  else if (v12)
  {
    if (v8)
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    *v18 = 136315394;
    *&v18[4] = v17;
    *&v18[12] = 2080;
    *&v18[14] = [a5 UTF8String];
    v14 = "#I   -- didSendWithSuccess: %s identifier: %s";
    v15 = v11;
    v16 = 22;
    goto LABEL_12;
  }

  [(IDSP2PDelegate *)self invokeAckCallbackFor:a5 withSuccess:v8 withError:a7, *v18, *&v18[16], v19];
}

- (id)uniqueDeviceIdFromIncomingDevId:(id)a3
{
  v4 = [*(self + 1) deviceForFromID:a3];
  if (v4)
  {

    return [v4 uniqueIDOverride];
  }

  else
  {
    v6 = **(self + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I from device not found", v7, 2u);
    }

    return 0;
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v17 = self;
  if ([a3 deviceForFromID:{a6, a4}])
  {
    v10 = [a5 objectForKey:@"control"];
    v11 = [a5 objectForKey:@"msg.name"];
    if (!v11 && v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v10 objectForKey:@"type"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v12;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    v13 = **(self + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = [v11 UTF8String];
      *&buf[12] = 2048;
      *&buf[14] = [a5 count];
      v19 = 2080;
      v20 = [a6 UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I   <= Incoming message '%s': %lu keys; from device '%s'", buf, 0x20u);
      v13 = **(self + 8);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Full received message:", buf, 2u);
    }

    *buf = off_101F4D428;
    *&buf[8] = &v17;
    v20 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    v14 = v17;
    if (v10)
    {
      [(IDSP2PDelegate *)v17 processControlPacket:v10 from:[(IDSP2PDelegate *)v17 uniqueDeviceIdFromIncomingDevId:a6]];
    }

    else
    {
      v15 = [a5 objectForKey:@"msg.body"];
      v16 = [a5 objectForKey:@"msg.name"];
      [(IDSP2PDelegate *)v14 invokeOnMessageCallbackWithDict:v15 andName:v16 andId:[(IDSP2PDelegate *)v17 uniqueDeviceIdFromIncomingDevId:a6]];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  if (![a3 deviceForFromID:{a7, a4}])
  {
    return;
  }

  v12 = **(self + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = [objc_msgSend(a6 objectForKey:{@"msg.name", "UTF8String"}];
    *&buf[12] = 2080;
    *&buf[14] = [objc_msgSend(a5 "description")];
    *&buf[22] = 2080;
    v39 = [objc_msgSend(objc_msgSend(a6 objectForKey:{@"msg.body", "description"), "UTF8String"}];
    v40 = 2080;
    v41 = [a7 UTF8String];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I   <= Incoming resource: '%s', URL '%s', meta: %s; from device '%s'", buf, 0x2Au);
  }

  v35 = &off_101EA1020;
  v13 = [a5 fileSystemRepresentation];
  __p = 0;
  v34 = 0uLL;
  do
  {
    while (1)
    {
      v14 = NSTemporaryDirectory();
      [NSString stringWithFormat:@"%@/%s.%d", v14, *(self + 7), rand()];
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v15 = *buf;
      v37[0] = *&buf[8];
      *(v37 + 7) = *&buf[15];
      v16 = buf[23];
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      __p = v15;
      *&v34 = v37[0];
      *(&v34 + 7) = *(v37 + 7);
      HIBYTE(v34) = v16;
      v17 = (v16 >= 0 ? &__p : v15);
      sub_10000501C(buf, v17);
      v18 = sub_1009C7B10(&v35, buf);
      v19 = v18;
      if (buf[23] < 0)
      {
        break;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    operator delete(*buf);
  }

  while ((v19 & 1) != 0);
LABEL_14:
  if (v34 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v21 = sub_1009C77A4(&v35, v13, p_p);
  v22 = **(self + 8);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v25 = strerror(v21);
      *buf = 136315138;
      *&buf[4] = v25;
      v26 = "#I  copying failed with err: (%s)";
      v27 = v22;
      v28 = 12;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else if (v23)
  {
    v29 = &__p;
    if (v34 < 0)
    {
      v29 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v29;
    v26 = "#I  copied %s to %s";
    v27 = v22;
    v28 = 22;
    goto LABEL_24;
  }

  if (v34 >= 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  v36 = 0;
  v37[0] = 0;
  if (ctu::cf::convert_copy(v37, v30, 0x8000100, kCFAllocatorDefault, v24))
  {
    v36 = v37[0];
    *buf = 0;
    sub_100005978(buf);
    v31 = v36;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  v36 = 0;
  sub_100005978(&v36);
  -[IDSP2PDelegate invokeOnFileCallbackWithURL:withMessage:andName:andId:](self, "invokeOnFileCallbackWithURL:withMessage:andName:andId:", +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", v31, 0), [a6 objectForKey:@"msg.body"], objc_msgSend(a6, "objectForKey:", @"msg.name"), -[IDSP2PDelegate uniqueDeviceIdFromIncomingDevId:](self, "uniqueDeviceIdFromIncomingDevId:", a7));
  sub_100005978(&v32);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  FileSystemInterface::~FileSystemInterface(&v35);
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 6) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 13) = self + 112;
  return self;
}

@end