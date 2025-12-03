@interface SecureStorageMock
- (id)_notSupportedError;
- (void)aclForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)objectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)processError:(id)error completionHandler:(id)handler;
- (void)removeObjectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)setObject:(id)object acl:(id)acl forKey:(int64_t)key options:(id)options contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
@end

@implementation SecureStorageMock

- (void)setObject:(id)object acl:(id)acl forKey:(int64_t)key options:(id)options contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  _notSupportedError = [(SecureStorageMock *)self _notSupportedError];
  (*(handler + 2))(handlerCopy, 0, _notSupportedError);
}

- (void)objectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  _notSupportedError = [(SecureStorageMock *)self _notSupportedError];
  (*(handler + 2))(handlerCopy, 0, _notSupportedError);
}

- (void)removeObjectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  _notSupportedError = [(SecureStorageMock *)self _notSupportedError];
  (*(handler + 2))(handlerCopy, 0, _notSupportedError);
}

- (void)aclForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  _notSupportedError = [(SecureStorageMock *)self _notSupportedError];
  (*(handler + 2))(handlerCopy, 0, _notSupportedError);
}

- (void)processError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  _notSupportedError = [(SecureStorageMock *)self _notSupportedError];
  (*(handler + 2))(handlerCopy, _notSupportedError);
}

- (id)_notSupportedError
{
  v2 = [NSString stringWithFormat:@"Storage is not supported on the current platform."];
  v3 = [LACError errorWithCode:LACErrorCodeNotSupported debugDescription:v2];

  return v3;
}

@end