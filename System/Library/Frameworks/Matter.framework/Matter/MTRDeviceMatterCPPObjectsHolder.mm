@interface MTRDeviceMatterCPPObjectsHolder
- (void)clearReadClientAndDeleteSubscriptionCallback;
- (void)readClient;
- (void)setReadClient:(void *)client subscriptionCallback:(void *)callback;
- (void)subscriptionCallback;
@end

@implementation MTRDeviceMatterCPPObjectsHolder

- (void)readClient
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 184);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  readClient = selfCopy->_readClient;
  objc_sync_exit(selfCopy);

  return readClient;
}

- (void)subscriptionCallback
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 191);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  subscriptionCallback = selfCopy->_subscriptionCallback;
  objc_sync_exit(selfCopy);

  return subscriptionCallback;
}

- (void)setReadClient:(void *)client subscriptionCallback:(void *)callback
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 198);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!client && callback || client && !callback)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = selfCopy;
      v18 = 2048;
      callbackCopy2 = client;
      v20 = 2048;
      callbackCopy = callback;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: readClient and subscriptionCallback must both be valid or both be null %p %p", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  if (client)
  {
    readClient = selfCopy->_readClient;
    if (readClient)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = selfCopy;
        v18 = 2048;
        callbackCopy2 = client;
        v20 = 2048;
        callbackCopy = readClient;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: readClient set when current value not null %p %p", buf, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        v14 = selfCopy->_readClient;
        sub_2393D5320(0, 1);
      }
    }
  }

  if (callback)
  {
    subscriptionCallback = selfCopy->_subscriptionCallback;
    if (subscriptionCallback)
    {
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = selfCopy;
        v18 = 2048;
        callbackCopy2 = callback;
        v20 = 2048;
        callbackCopy = subscriptionCallback;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: subscriptionCallback set when current value not null %p %p", buf, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        v15 = selfCopy->_subscriptionCallback;
        sub_2393D5320(0, 1);
      }
    }
  }

  selfCopy->_readClient = client;
  selfCopy->_subscriptionCallback = callback;
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearReadClientAndDeleteSubscriptionCallback
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 219);
  obj = self;
  objc_sync_enter(obj);
  obj->_readClient = 0;
  subscriptionCallback = obj->_subscriptionCallback;
  if (subscriptionCallback)
  {
    v4 = sub_238EF7260(subscriptionCallback);
    MEMORY[0x23EE77B60](v4, 0x10A1C40084F9850);
    obj->_subscriptionCallback = 0;
  }

  objc_sync_exit(obj);
}

@end