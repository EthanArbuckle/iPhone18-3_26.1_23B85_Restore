@interface AuthorizationAuthenticator
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)didCompleteAuthenticationRequestWithStatus:(id)status error:(id)error;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AuthorizationAuthenticator

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_100010D34(activateCopy);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_10000F7BC(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_100010ECC(handleCopy, error);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100010184(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (void)didCompleteAuthenticationRequestWithStatus:(id)status error:(id)error
{
  statusCopy = status;
  selfCopy = self;
  errorCopy = error;
  sub_1000104B0(status, error);
}

@end