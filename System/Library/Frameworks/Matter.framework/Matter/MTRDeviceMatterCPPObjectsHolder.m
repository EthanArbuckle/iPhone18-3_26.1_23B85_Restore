@interface MTRDeviceMatterCPPObjectsHolder
- (void)clearReadClientAndDeleteSubscriptionCallback;
- (void)readClient;
- (void)setReadClient:(void *)a3 subscriptionCallback:(void *)a4;
- (void)subscriptionCallback;
@end

@implementation MTRDeviceMatterCPPObjectsHolder

- (void)readClient
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 184);
  v3 = self;
  objc_sync_enter(v3);
  readClient = v3->_readClient;
  objc_sync_exit(v3);

  return readClient;
}

- (void)subscriptionCallback
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 191);
  v3 = self;
  objc_sync_enter(v3);
  subscriptionCallback = v3->_subscriptionCallback;
  objc_sync_exit(v3);

  return subscriptionCallback;
}

- (void)setReadClient:(void *)a3 subscriptionCallback:(void *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 198);
  v7 = self;
  objc_sync_enter(v7);
  if (!a3 && a4 || a3 && !a4)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = a4;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: readClient and subscriptionCallback must both be valid or both be null %p %p", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  if (a3)
  {
    readClient = v7->_readClient;
    if (readClient)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = v7;
        v18 = 2048;
        v19 = a3;
        v20 = 2048;
        v21 = readClient;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: readClient set when current value not null %p %p", buf, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        v14 = v7->_readClient;
        sub_2393D5320(0, 1);
      }
    }
  }

  if (a4)
  {
    subscriptionCallback = v7->_subscriptionCallback;
    if (subscriptionCallback)
    {
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = v7;
        v18 = 2048;
        v19 = a4;
        v20 = 2048;
        v21 = subscriptionCallback;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@: setReadClient:subscriptionCallback: subscriptionCallback set when current value not null %p %p", buf, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        v15 = v7->_subscriptionCallback;
        sub_2393D5320(0, 1);
      }
    }
  }

  v7->_readClient = a3;
  v7->_subscriptionCallback = a4;
  objc_sync_exit(v7);

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