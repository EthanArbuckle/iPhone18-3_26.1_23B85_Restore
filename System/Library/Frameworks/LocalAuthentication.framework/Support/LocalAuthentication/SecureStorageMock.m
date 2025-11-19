@interface SecureStorageMock
- (id)_notSupportedError;
- (void)aclForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)objectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)processError:(id)a3 completionHandler:(id)a4;
- (void)removeObjectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)setObject:(id)a3 acl:(id)a4 forKey:(int64_t)a5 options:(id)a6 contextUUID:(id)a7 connection:(id)a8 completionHandler:(id)a9;
@end

@implementation SecureStorageMock

- (void)setObject:(id)a3 acl:(id)a4 forKey:(int64_t)a5 options:(id)a6 contextUUID:(id)a7 connection:(id)a8 completionHandler:(id)a9
{
  v10 = a9;
  v11 = [(SecureStorageMock *)self _notSupportedError];
  (*(a9 + 2))(v10, 0, v11);
}

- (void)objectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = [(SecureStorageMock *)self _notSupportedError];
  (*(a6 + 2))(v8, 0, v9);
}

- (void)removeObjectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = [(SecureStorageMock *)self _notSupportedError];
  (*(a6 + 2))(v8, 0, v9);
}

- (void)aclForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = [(SecureStorageMock *)self _notSupportedError];
  (*(a6 + 2))(v8, 0, v9);
}

- (void)processError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SecureStorageMock *)self _notSupportedError];
  (*(a4 + 2))(v6, v7);
}

- (id)_notSupportedError
{
  v2 = [NSString stringWithFormat:@"Storage is not supported on the current platform."];
  v3 = [LACError errorWithCode:LACErrorCodeNotSupported debugDescription:v2];

  return v3;
}

@end