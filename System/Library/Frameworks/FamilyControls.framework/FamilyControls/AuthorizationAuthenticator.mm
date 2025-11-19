@interface AuthorizationAuthenticator
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)didCompleteAuthenticationRequestWithStatus:(id)a3 error:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AuthorizationAuthenticator

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100010D34(v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F7BC(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100010ECC(v6, a4);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100010184(v6, v7);

  return v9 & 1;
}

- (void)didCompleteAuthenticationRequestWithStatus:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1000104B0(a3, a4);
}

@end