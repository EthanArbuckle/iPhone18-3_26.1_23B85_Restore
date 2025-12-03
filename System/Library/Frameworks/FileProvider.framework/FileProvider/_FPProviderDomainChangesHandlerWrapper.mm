@interface _FPProviderDomainChangesHandlerWrapper
+ (id)wrapperWithHandler:(id)handler;
- (void)callHandlerWithProvidersByID:(id)d error:(id)error;
- (void)setUnregistered:(BOOL)unregistered;
@end

@implementation _FPProviderDomainChangesHandlerWrapper

+ (id)wrapperWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  v5 = _Block_copy(handlerCopy);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)callHandlerWithProvidersByID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  handler = selfCopy->_handler;
  if (handler)
  {
    v9 = dCopy;
    if (errorCopy)
    {
      v9 = 0;
    }

    handler[2](handler, v9, errorCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)setUnregistered:(BOOL)unregistered
{
  obj = self;
  objc_sync_enter(obj);
  if (!unregistered)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:obj file:@"FPProviderDomainChangesReceiver.m" lineNumber:63 description:@"trying to re-register an handler"];
  }

  handler = obj->_handler;
  obj->_handler = 0;

  objc_sync_exit(obj);
}

@end