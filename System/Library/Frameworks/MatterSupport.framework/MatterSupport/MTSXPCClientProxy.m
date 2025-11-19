@interface MTSXPCClientProxy
- (BOOL)hasEntitlement:(id)a3;
- (MTSXPCClientProxy)initWithConnection:(id)a3;
- (MTSXPCClientProxyDelegate)delegate;
- (id)attributeDescriptions;
- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a3;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)a3;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)performDeviceSetupUsingRequest:(id)a3 completionHandler:(id)a4;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)removeDevicePairingWithUUID:(id)a3 forSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5;
- (void)removeSystemCommissionerPairingWithUUID:(id)a3 completionHandler:(id)a4;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4;
- (void)showRestrictedCharacteristicsAccessWarningAlert;
@end

@implementation MTSXPCClientProxy

- (MTSXPCClientProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(MTSXPCClientProxy *)self connection];
  v5 = [v3 initWithName:@"Connection" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)showRestrictedCharacteristicsAccessWarningAlert
{
  v3 = [(MTSXPCClientProxy *)self delegate];
  [v3 showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:self];
}

- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCClientProxy *)self delegate];
  [v5 clientProxy:self checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:v4];
}

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self retrievePreferredThreadCredentialsOrCreateWithDataset:v7 completionHandler:v6];
}

- (void)removeSystemCommissionerPairingWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self removeSystemCommissionerPairingWithUUID:v7 completionHandler:v6];
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCClientProxy *)self delegate];
  [v5 clientProxy:self fetchSystemCommissionerPairingsWithCompletionHandler:v4];
}

- (void)performDeviceSetupUsingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self performDeviceSetupUsingRequest:v7 completionHandler:v6];
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self readCommissioningWindowStatusForSystemCommissionerPairingUUID:v7 completionHandler:v6];
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MTSXPCClientProxy *)self delegate];
  [v10 clientProxy:self openCommissioningWindowForSystemCommissionerPairingUUID:v9 duration:v8 completionHandler:a4];
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self removeAllDevicePairingsForSystemCommissionerPairingUUID:v7 completionHandler:v6];
}

- (void)removeDevicePairingWithUUID:(id)a3 forSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTSXPCClientProxy *)self delegate];
  [v11 clientProxy:self removeDevicePairingWithUUID:v10 forSystemCommissionerPairingUUID:v9 completionHandler:v8];
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTSXPCClientProxy *)self delegate];
  [v8 clientProxy:self fetchDevicePairingsForSystemCommissionerPairingUUID:v7 completionHandler:v6];
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCClientProxy *)self connection];
  v6 = [v5 valueForEntitlement:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 BOOLValue];
  return v9;
}

- (MTSXPCClientProxy)initWithConnection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = MTSXPCClientProxy;
    v7 = [(MTSXPCClientProxy *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_connection, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(MTSWiFiNetworkAssociation *)v10 .cxx_destruct];
  }

  return result;
}

@end