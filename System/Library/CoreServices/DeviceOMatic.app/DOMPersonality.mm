@interface DOMPersonality
- (DOMPersonality)initWithPersonality:(id)personality personalityName:(id)name serviceName:(id)serviceName;
- (id)makeCommandType:(unint64_t)type withIORegEntryID:(unint64_t)d context:(void *)context;
- (id)makeXPCConnection;
- (id)probeXPCServiceWithIORegEntryID:(unint64_t)d;
- (void)probeIORegEntryID:(unint64_t)d forDomDevice:(id)device;
- (void)startWithDomDevice:(id)device;
@end

@implementation DOMPersonality

- (DOMPersonality)initWithPersonality:(id)personality personalityName:(id)name serviceName:(id)serviceName
{
  personalityCopy = personality;
  nameCopy = name;
  serviceNameCopy = serviceName;
  v26.receiver = self;
  v26.super_class = DOMPersonality;
  v11 = [(DOMPersonality *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personalityName, name);
    objc_storeStrong(&v12->_xpcName, serviceName);
    v13 = [personalityCopy mutableCopy];
    personalityDict = v12->_personalityDict;
    v12->_personalityDict = v13;

    v15 = [(NSMutableDictionary *)v12->_personalityDict objectForKey:@"IOProbeScore"];
    staticProbeScore = v12->_staticProbeScore;
    v12->_staticProbeScore = v15;

    if (v12->_staticProbeScore)
    {
      [(NSMutableDictionary *)v12->_personalityDict removeObjectForKey:@"IOProbeScore"];
    }

    else if (!v12->_xpcName)
    {
      v17 = [[NSNumber alloc] initWithLongLong:1];
      v18 = v12->_staticProbeScore;
      v12->_staticProbeScore = v17;
    }

    v19 = [(NSMutableDictionary *)v12->_personalityDict objectForKey:@"DarwinNotificationName"];
    notificationName = v12->_notificationName;
    v12->_notificationName = v19;

    if (v12->_notificationName)
    {
      [(NSMutableDictionary *)v12->_personalityDict removeObjectForKey:@"DarwinNotificationName"];
    }

    v21 = [(NSMutableDictionary *)v12->_personalityDict objectForKeyedSubscript:@"DOMRequiredDeviceClass"];

    if (v21)
    {
      v12->_testAgainstDeviceThreshold = 1;
      [(NSMutableDictionary *)v12->_personalityDict removeObjectForKey:@"DOMRequiredDeviceClass"];
    }

    else
    {
      v12->_testAgainstDeviceThreshold = 0;
    }

    v12->_require9Pin = 0;
    v22 = [(NSMutableDictionary *)v12->_personalityDict objectForKeyedSubscript:@"DOMRequire9Pin"];

    if (v22)
    {
      v23 = [(NSMutableDictionary *)v12->_personalityDict objectForKeyedSubscript:@"DOMRequire9Pin"];
      bOOLValue = [v23 BOOLValue];

      if (bOOLValue)
      {
        v12->_require9Pin = 1;
      }

      [(NSMutableDictionary *)v12->_personalityDict removeObjectForKey:@"DOMRequiredDeviceClass"];
    }
  }

  return v12;
}

- (id)makeCommandType:(unint64_t)type withIORegEntryID:(unint64_t)d context:(void *)context
{
  personalityDict = [(DOMPersonality *)self personalityDict];
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (v10)
    {
      xpc_dictionary_set_uint64(v10, "_LB_TYPE", type);
      if (type == 1)
      {
        xpc_dictionary_set_int64(v11, "_LB_PROBE_SCORE", context);
      }

      else if (type == 2 && context)
      {
        v12 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v11, "_LB_CLAIMED", v12);
      }

      xpc_dictionary_set_uint64(v11, "_LB_SERVICE_ID", d);
      xpc_dictionary_set_value(v11, "_LB_PERSONALITY", v9);
    }

    else
    {
      sub_100007C54();
    }
  }

  else
  {
    sub_100007CAC(&v14);
    v11 = v14;
  }

  return v11;
}

- (id)makeXPCConnection
{
  xpcName = [(DOMPersonality *)self xpcName];
  uTF8String = [xpcName UTF8String];

  if (uTF8String)
  {
    v4 = dispatch_get_global_queue(0, 0);
    mach_service = xpc_connection_create_mach_service(uTF8String, v4, 0);

    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &stru_100010630);
      xpc_connection_resume(mach_service);
    }

    else
    {
      sub_100007D14(uTF8String, &v7);
      mach_service = v7;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100007DB8();
    }

    mach_service = 0;
  }

  return mach_service;
}

- (id)probeXPCServiceWithIORegEntryID:(unint64_t)d
{
  v4 = [(DOMPersonality *)self makeCommandType:1 withIORegEntryID:d context:0];
  if (v4)
  {
    makeXPCConnection = [(DOMPersonality *)self makeXPCConnection];
    if (makeXPCConnection)
    {
      v6 = dispatch_semaphore_create(0);
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = sub_100001610;
      v24 = sub_100001620;
      v25 = 0;
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        personalityName = [(DOMPersonality *)self personalityName];
        xpcName = [(DOMPersonality *)self xpcName];
        *buf = 138412546;
        v27 = personalityName;
        v28 = 2112;
        v29 = xpcName;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "probing personality: %@ by messaging xpcService: %@", buf, 0x16u);
      }

      v10 = dispatch_get_global_queue(0, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100001628;
      handler[3] = &unk_100010658;
      handler[4] = self;
      v19 = &v20;
      v11 = v6;
      v18 = v11;
      xpc_connection_send_message_with_reply(makeXPCConnection, v4, v10, handler);

      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        personalityName2 = [(DOMPersonality *)self personalityName];
        v14 = v21[5];
        *buf = 138412546;
        v27 = personalityName2;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ returning %@", buf, 0x16u);
      }

      v15 = v21[5];
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)probeIORegEntryID:(unint64_t)d forDomDevice:(id)device
{
  deviceCopy = device;
  xpcName = [(DOMPersonality *)self xpcName];

  if (xpcName)
  {
    staticProbeScore2 = [(DOMPersonality *)self probeXPCServiceWithIORegEntryID:d];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      personalityName = [(DOMPersonality *)self personalityName];
      staticProbeScore = [(DOMPersonality *)self staticProbeScore];
      v12 = 138412546;
      v13 = personalityName;
      v14 = 2112;
      v15 = staticProbeScore;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "no XPC service for %@, using static probe score: %@", &v12, 0x16u);
    }

    staticProbeScore2 = [(DOMPersonality *)self staticProbeScore];
  }

  v11 = staticProbeScore2;
  [deviceCopy evaluateScore:staticProbeScore2 fromDomPersonality:self withIORegEntryID:d];
}

- (void)startWithDomDevice:(id)device
{
  deviceCopy = device;
  notificationName = [(DOMPersonality *)self notificationName];

  if (notificationName)
  {
    notificationName2 = [(DOMPersonality *)self notificationName];
    notify_post([notificationName2 UTF8String]);
  }

  xpcName = [(DOMPersonality *)self xpcName];

  if (xpcName)
  {
    v8 = -[DOMPersonality makeCommandType:withIORegEntryID:context:](self, "makeCommandType:withIORegEntryID:context:", 2, [deviceCopy winningIORegEntryID], 0);
    if (v8)
    {
      makeXPCConnection = [(DOMPersonality *)self makeXPCConnection];
      v10 = makeXPCConnection;
      if (makeXPCConnection)
      {
        sub_100008034(makeXPCConnection, v8, self);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    personalityName = [(DOMPersonality *)self personalityName];
    v12 = 138412290;
    v13 = personalityName;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No xpc service for %@", &v12, 0xCu);
  }
}

@end