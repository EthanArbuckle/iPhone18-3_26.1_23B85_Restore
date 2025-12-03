@interface BTAudioIDSService
- (BOOL)isConnected;
- (BOOL)sendArbitrationMsg:(id)msg forAddress:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)var0 :char_traits<char>;
- (BTAudioIDSService)init;
- (void)dealloc;
- (void)handleDidTakeOwnership:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)std :char_traits<char>;
- (void)handleReconcileOwnershipRemoteOwns:()basic_string<char;
- (void)handleReconcileOwnershipRemoteReleased:()basic_string<char;
- (void)handleRequestOwnership:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)std :char_traits<char>;
- (void)handleTakeOwnershipFailed:()basic_string<char;
- (void)handleUnsupportedArbitrationMsg:()basic_string<char;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
@end

@implementation BTAudioIDSService

- (BTAudioIDSService)init
{
  v6.receiver = self;
  v6.super_class = BTAudioIDSService;
  v2 = [(BTAudioIDSService *)&v6 init];
  if (v2)
  {
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_19C64;
    block[3] = &unk_ADD50;
    block[4] = v2;
    dispatch_async(global_queue, block);
  }

  return v2;
}

- (void)dealloc
{
  self->_lastUsedIdentifierKey = 0;

  self->_mIdsService = 0;
  v3.receiver = self;
  v3.super_class = BTAudioIDSService;
  [(BTAudioIDSService *)&v3 dealloc];
}

- (BOOL)isConnected
{
  compatibleAndNearby = [(BTAudioIDSService *)self compatibleAndNearby];
  if (compatibleAndNearby)
  {

    LOBYTE(compatibleAndNearby) = [(BTAudioIDSService *)self compatibleAndConnected];
  }

  return compatibleAndNearby;
}

- (BOOL)sendArbitrationMsg:(id)msg forAddress:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)var0 :char_traits<char>
{
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  memset(&v48, 0, sizeof(v48));
  sub_2088(&v48, "");
  if (v5 && [msg isEqualToString:@"RequestOwnership"])
  {
    std::string::assign(&v48, [v5 UTF8String]);
  }

  v10 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_msgSend(msg "description")];
    isConnected = [(BTAudioIDSService *)self isConnected];
    compatibleAndConnected = self->compatibleAndConnected;
    compatibleAndNearby = self->compatibleAndNearby;
    v15 = &v48;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v48.__r_.__value_.__r.__words[0];
    }

    *buf = 136447234;
    v54 = v11;
    v55 = 1024;
    *v56 = isConnected;
    *&v56[4] = 1024;
    *&v56[6] = compatibleAndConnected;
    v57 = 1024;
    v58 = compatibleAndNearby;
    v59 = 2080;
    v60 = v15;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "sendArbitrationMsg arbitrationKey: %{public}s, isConnected: %d, connected: %d, nearby: %d, responseId: %s", buf, 0x28u);
  }

  if (![msg isEqualToString:@"RequestOwnership"] || -[BTAudioIDSService isConnected](self, "isConnected"))
  {
    if ([msg isEqualToString:@"RequestOwnership"] && -[BTAudioIDSService isConnected](self, "isConnected"))
    {
      v16 = qword_D8DF0;
      if (*(&var0->var0.var1 + 23) < 0)
      {
        sub_9780(__dst, var0->var0.var1.var0, var0->var0.var1.var1);
      }

      else
      {
        *__dst = *var0->var0.var0.var0;
        v45 = *(&var0->var0.var1 + 2);
      }

      v19 = sub_4D668(v16, __dst);
      v20 = v19;
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__dst[0]);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      else if (v19)
      {
LABEL_25:
        v21 = qword_C2330;
        if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Remote device is idle, handling successful ownership immediately and sending ownership msg with max timeout", buf, 2u);
        }

        if (*(&var0->var0.var1 + 23) < 0)
        {
          sub_9780(v42, var0->var0.var1.var0, var0->var0.var1.var1);
        }

        else
        {
          *v42 = *var0->var0.var0.var0;
          v43 = *(&var0->var0.var1 + 2);
        }

        [(BTAudioIDSService *)self handleDidTakeOwnership:v42 withResponseIdentifier:0];
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42[0]);
        }

        v22 = 2;
LABEL_31:
        if (*(&var0->var0.var1 + 23) < 0)
        {
          var0 = var0->var0.var1.var0;
        }

        v50 = [NSString stringWithUTF8String:var0];
        msgCopy = msg;
        v49 = @"kOwnershipDeviceAddr";
        v52 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v23 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&msgCopy count:1];
        v24 = [NSSet setWithObject:IDSDefaultPairedDevice];
        v41 = 0;
        v25 = +[NSMutableDictionary dictionary];
        LODWORD(v26) = 8.0;
        v27 = [NSNumber numberWithFloat:v26];
        [v25 setValue:v27 forKey:IDSSendMessageOptionTimeoutKey];
        [v25 setValue:&__kCFBooleanTrue forKey:IDSSendMessageOptionFireAndForgetKey];
        [v25 setValue:&__kCFBooleanTrue forKey:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
        lastUsedIdentifierKey = [(BTAudioIDSService *)self lastUsedIdentifierKey];
        [v25 setValue:lastUsedIdentifierKey forKey:IDSSendMessageOptionQueueOneIdentifierKey];
        if ([msg isEqualToString:@"RequestOwnership"])
        {
          [v25 setValue:&__kCFBooleanTrue forKey:IDSSendMessageOptionExpectsPeerResponseKey];
        }

        else
        {
          [v25 setValue:v5 forKey:IDSSendMessageOptionPeerResponseIdentifierKey];
        }

        v40 = 0;
        v18 = [(IDSService *)self->_mIdsService sendMessage:v23 toDestinations:v24 priority:300 options:v25 identifier:&v40 error:&v41];
        [(BTAudioIDSService *)self setLastUsedIdentifierKey:v40];
        v29 = qword_C2330;
        v30 = os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (!v30)
          {
            goto LABEL_42;
          }

          lastUsedIdentifierKey2 = [(BTAudioIDSService *)self lastUsedIdentifierKey];
          *buf = 138543618;
          v54 = v23;
          v55 = 2114;
          *v56 = lastUsedIdentifierKey2;
          v32 = "Successfully sent msg %{public}@ with identifier %{public}@";
          v33 = v29;
          v34 = 22;
        }

        else
        {
          if (!v30)
          {
            goto LABEL_42;
          }

          v35 = [objc_msgSend(v41 "description")];
          *buf = 136446210;
          v54 = v35;
          v32 = "Msg send failed with error %{public}s";
          v33 = v29;
          v34 = 12;
        }

        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
LABEL_42:
        if ([msg isEqualToString:@"RequestOwnership"])
        {
          v36 = 1;
        }

        else if ([msg isEqualToString:@"DidTakeOwnership"])
        {
          v36 = 2;
        }

        else if ([msg isEqualToString:@"ReconcileOwnershipRemoteOwns"])
        {
          v36 = 4;
        }

        else if ([msg isEqualToString:@"ReconcileOwnershipRemoteReleased"])
        {
          v36 = 5;
        }

        else
        {
          v36 = 0;
        }

        v37 = *(qword_D8DF0 + 456);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_9780(&v39, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
        }

        else
        {
          v39 = v48;
        }

        sub_1C5AC(v37, 2, 0, v36, Current, &v39, v22);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }
    }

    v22 = 3;
    goto LABEL_31;
  }

  v17 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "We're not connected to a nearby device, returning success immediately", buf, 2u);
  }

  if (*(&var0->var0.var1 + 23) < 0)
  {
    sub_9780(__p, var0->var0.var1.var0, var0->var0.var1.var1);
  }

  else
  {
    *__p = *var0->var0.var0.var0;
    v47 = *(&var0->var0.var1 + 2);
  }

  [(BTAudioIDSService *)self handleDidTakeOwnership:__p withResponseIdentifier:0];
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(v18) = 1;
LABEL_56:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return v18;
}

- (void)handleRequestOwnership:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v4 = v3;
  v6 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    var0 = std;
    if (*(&std->var0.var1 + 23) < 0)
    {
      var0 = std->var0.var1.var0;
    }

    *buf = 136446210;
    v12 = var0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Got ownership request for device %{public}s, relinquishing from this side", buf, 0xCu);
  }

  sub_707D4(13);
  v8 = qword_D8DF0;
  if (*(&std->var0.var1 + 23) < 0)
  {
    sub_9780(__p, std->var0.var1.var0, std->var0.var1.var1);
  }

  else
  {
    *__p = *std->var0.var0.var0;
    v10 = *(&std->var0.var1 + 2);
  }

  sub_4DA14(v8, __p, 0, 1, v4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleDidTakeOwnership:()basic_string<char withResponseIdentifier:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v4 = v3;
  v6 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ownership request was successful, reporting property change", buf, 2u);
  }

  sub_707D4(14);
  v7 = qword_D8DF0;
  if (*(&std->var0.var1 + 23) < 0)
  {
    sub_9780(__p, std->var0.var1.var0, std->var0.var1.var1);
  }

  else
  {
    *__p = *std->var0.var0.var0;
    v9 = *(&std->var0.var1 + 2);
  }

  sub_4DA14(v7, __p, 1, 0, v4);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleTakeOwnershipFailed:()basic_string<char
{
  v4 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Ownership request failed, reporting property change", buf, 2u);
  }

  v5 = qword_D8DF0;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    sub_9780(__p, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    *__p = *a3->var0.var0.var0;
    v7 = *(&a3->var0.var1 + 2);
  }

  sub_4E178(v5, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleReconcileOwnershipRemoteOwns:()basic_string<char
{
  v4 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3;
    if (*(&a3->var0.var1 + 23) < 0)
    {
      var0 = a3->var0.var1.var0;
    }

    *buf = 136446210;
    v10 = var0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reconciling ownership, remote side owns device %{public}s because it is streaming, releasing from this side", buf, 0xCu);
  }

  v6 = qword_D8DF0;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    sub_9780(__p, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    *__p = *a3->var0.var0.var0;
    v8 = *(&a3->var0.var1 + 2);
  }

  sub_4DA14(v6, __p, 0, 0, 0);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleReconcileOwnershipRemoteReleased:()basic_string<char
{
  v4 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3;
    if (*(&a3->var0.var1 + 23) < 0)
    {
      var0 = a3->var0.var1.var0;
    }

    *buf = 136446210;
    v10 = var0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reconciling ownership, remote side has released ownership of device %{public}s, locally take ownership.", buf, 0xCu);
  }

  v6 = qword_D8DF0;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    sub_9780(__p, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    *__p = *a3->var0.var0.var0;
    v8 = *(&a3->var0.var1 + 2);
  }

  sub_4DA14(v6, __p, 1, 0, 0);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleUnsupportedArbitrationMsg:()basic_string<char
{
  v4 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    if (*(&var0->var0.var1 + 23) < 0)
    {
      var0 = var0->var0.var1.var0;
    }

    v5 = 136446210;
    v6 = var0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not support previously sent arbitration message", &v5, 0xCu);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v11 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = [objc_msgSend(message "description")];
    *&buf[12] = 2082;
    *&buf[14] = [objc_msgSend(d "description")];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Received IDS message %{public}s from %{public}s", buf, 0x16u);
  }

  v12 = [objc_msgSend(message "allKeys")];
  if (v12)
  {
    v13 = [message valueForKey:v12];
    if (v13)
    {
      memset(buf, 0, sizeof(buf));
      sub_2088(buf, [objc_msgSend(v13 valueForKey:{@"kOwnershipDeviceAddr", "UTF8String"}]);
      if ([v12 isEqualToString:@"RequestOwnership"])
      {
        outgoingResponseIdentifier = [context outgoingResponseIdentifier];
        if (buf[23] < 0)
        {
          sub_9780(&__dst, *buf, *&buf[8]);
        }

        else
        {
          __dst = *buf;
          v31 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleRequestOwnership:&__dst withResponseIdentifier:outgoingResponseIdentifier];
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &__dst;
      }

      else if ([v12 isEqualToString:@"DidTakeOwnership"])
      {
        incomingResponseIdentifier = [context incomingResponseIdentifier];
        if (buf[23] < 0)
        {
          sub_9780(&v28, *buf, *&buf[8]);
        }

        else
        {
          v28 = *buf;
          v29 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleDidTakeOwnership:&v28 withResponseIdentifier:incomingResponseIdentifier];
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v28;
      }

      else if ([v12 isEqualToString:@"TakeOwnershipFailed"])
      {
        if (buf[23] < 0)
        {
          sub_9780(&v26, *buf, *&buf[8]);
        }

        else
        {
          v26 = *buf;
          v27 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleTakeOwnershipFailed:&v26];
        if ((SHIBYTE(v27) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v26;
      }

      else if ([v12 isEqualToString:@"ReconcileOwnershipRemoteOwns"])
      {
        if (buf[23] < 0)
        {
          sub_9780(&v24, *buf, *&buf[8]);
        }

        else
        {
          v24 = *buf;
          v25 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleReconcileOwnershipRemoteOwns:&v24];
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v24;
      }

      else if ([v12 isEqualToString:@"ReconcileOwnershipRemoteReleased"])
      {
        if (buf[23] < 0)
        {
          sub_9780(&v22, *buf, *&buf[8]);
        }

        else
        {
          v22 = *buf;
          v23 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleReconcileOwnershipRemoteReleased:&v22];
        if ((SHIBYTE(v23) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v22;
      }

      else if ([v12 isEqualToString:@"UnsupportedArbitrationMsg"])
      {
        if (buf[23] < 0)
        {
          sub_9780(&v20, *buf, *&buf[8]);
        }

        else
        {
          v20 = *buf;
          v21 = *&buf[16];
        }

        [(BTAudioIDSService *)self handleUnsupportedArbitrationMsg:&v20];
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v20;
      }

      else
      {
        v17 = qword_C2330;
        if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_ERROR))
        {
          sub_79614([objc_msgSend(message "description")], v32, v17);
        }

        if (buf[23] < 0)
        {
          sub_9780(&v18, *buf, *&buf[8]);
        }

        else
        {
          v18 = *buf;
          v19 = *&buf[16];
        }

        [(BTAudioIDSService *)self sendArbitrationMsg:@"UnsupportedArbitrationMsg" forAddress:&v18 withResponseIdentifier:0];
        if ((SHIBYTE(v19) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        p_dst = &v18;
      }

      operator delete(*p_dst);
LABEL_53:
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      return;
    }

    if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_ERROR))
    {
      sub_7965C(v12);
    }
  }

  else if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_ERROR))
  {
    sub_796E0(message);
  }
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v4 = &byte_BA20A[32246];
  v5 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = [changed count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Nearby devices changed to %lu", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [changed countByEnumeratingWithState:&v27 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v28;
    *&v7 = 136316674;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(changed);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = *(v4 + 102);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [objc_msgSend(v12 "productName")];
          productBuildVersion = [v12 productBuildVersion];
          v23 = [objc_msgSend(v12 "service")];
          v14 = "true";
          if ([v12 isNearby])
          {
            v15 = "true";
          }

          else
          {
            v15 = "false";
          }

          if (![v12 isConnected])
          {
            v14 = "false";
          }

          v16 = v4;
          serviceMinCompatibilityVersion = [v12 serviceMinCompatibilityVersion];
          v18 = [(BTAudioIDSService *)self deviceIsCompatible:v12];
          *buf = v21;
          v19 = "will not";
          if (v18)
          {
            v19 = "will";
          }

          v32 = v25;
          v33 = 2112;
          v34 = productBuildVersion;
          v35 = 2080;
          v36 = v23;
          v37 = 2080;
          v38 = v15;
          v39 = 2080;
          v40 = v14;
          v41 = 2048;
          v42 = serviceMinCompatibilityVersion;
          v4 = v16;
          v43 = 2080;
          v44 = v19;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Device %s %@ is registered on service %s. Nearby: %s Connected: %s. ServiceMincompatibilityVersion: %lu. Device %s arbitrate", buf, 0x48u);
        }

        if ([(BTAudioIDSService *)self deviceIsCompatible:v12, v21])
        {
          v9 += [v12 isNearby];
        }
      }

      v8 = [changed countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v8);
    v20 = v9 > 0;
  }

  else
  {
    v20 = 0;
  }

  [(BTAudioIDSService *)self setCompatibleAndNearby:v20];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v4 = &byte_BA20A[32246];
  v5 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = [changed count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Connected devices changed to %lu", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [changed countByEnumeratingWithState:&v27 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v28;
    *&v7 = 136316674;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(changed);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = *(v4 + 102);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [objc_msgSend(v12 "productName")];
          productBuildVersion = [v12 productBuildVersion];
          v23 = [objc_msgSend(v12 "service")];
          v14 = "true";
          if ([v12 isNearby])
          {
            v15 = "true";
          }

          else
          {
            v15 = "false";
          }

          if (![v12 isConnected])
          {
            v14 = "false";
          }

          v16 = v4;
          serviceMinCompatibilityVersion = [v12 serviceMinCompatibilityVersion];
          v18 = [(BTAudioIDSService *)self deviceIsCompatible:v12];
          *buf = v21;
          v19 = "will not";
          if (v18)
          {
            v19 = "will";
          }

          v32 = v25;
          v33 = 2112;
          v34 = productBuildVersion;
          v35 = 2080;
          v36 = v23;
          v37 = 2080;
          v38 = v15;
          v39 = 2080;
          v40 = v14;
          v41 = 2048;
          v42 = serviceMinCompatibilityVersion;
          v4 = v16;
          v43 = 2080;
          v44 = v19;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Device %s %@ is registered on service %s. Nearby: %s Connected: %s. ServiceMincompatibilityVersion: %lu. Device %s arbitrate", buf, 0x48u);
        }

        if ([(BTAudioIDSService *)self deviceIsCompatible:v12, v21])
        {
          v9 += [v12 isConnected];
        }
      }

      v8 = [changed countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v8);
    v20 = v9 > 0;
  }

  else
  {
    v20 = 0;
  }

  [(BTAudioIDSService *)self setCompatibleAndConnected:v20];
}

@end