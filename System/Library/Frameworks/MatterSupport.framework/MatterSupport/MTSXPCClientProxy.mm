@interface MTSXPCClientProxy
- (BOOL)hasEntitlement:(id)entitlement;
- (MTSXPCClientProxy)initWithConnection:(id)connection;
- (MTSXPCClientProxyDelegate)delegate;
- (id)attributeDescriptions;
- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
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
  connection = [(MTSXPCClientProxy *)self connection];
  v5 = [v3 initWithName:@"Connection" value:connection];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)showRestrictedCharacteristicsAccessWarningAlert
{
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:self];
}

- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:handlerCopy];
}

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  handlerCopy = handler;
  datasetCopy = dataset;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self retrievePreferredThreadCredentialsOrCreateWithDataset:datasetCopy completionHandler:handlerCopy];
}

- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self removeSystemCommissionerPairingWithUUID:dCopy completionHandler:handlerCopy];
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self fetchSystemCommissionerPairingsWithCompletionHandler:handlerCopy];
}

- (void)performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self performDeviceSetupUsingRequest:requestCopy completionHandler:handlerCopy];
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self readCommissioningWindowStatusForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self openCommissioningWindowForSystemCommissionerPairingUUID:dCopy duration:handlerCopy completionHandler:duration];
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self removeAllDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self removeDevicePairingWithUUID:dCopy forSystemCommissionerPairingUUID:iDCopy completionHandler:handlerCopy];
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(MTSXPCClientProxy *)self delegate];
  [delegate clientProxy:self fetchDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(MTSXPCClientProxy *)self connection];
  v6 = [connection valueForEntitlement:entitlementCopy];

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

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (MTSXPCClientProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v6 = connectionCopy;
    v12.receiver = self;
    v12.super_class = MTSXPCClientProxy;
    v7 = [(MTSXPCClientProxy *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_connection, connection);
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