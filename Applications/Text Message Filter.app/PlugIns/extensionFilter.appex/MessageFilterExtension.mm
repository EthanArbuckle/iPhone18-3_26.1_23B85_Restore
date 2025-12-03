@interface MessageFilterExtension
- (void)handleCapabilitiesQueryRequest:(id)request context:(id)context completion:(id)completion;
- (void)handleQueryRequest:(id)request context:(id)context completion:(id)completion;
@end

@implementation MessageFilterExtension

- (void)handleCapabilitiesQueryRequest:(id)request context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  requestCopy = request;
  contextCopy = context;
  selfCopy = self;
  specialized MessageFilterExtension.handle(_:context:completion:)(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)handleQueryRequest:(id)request context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  requestCopy = request;
  contextCopy = context;
  selfCopy = self;
  specialized MessageFilterExtension.handle(_:context:completion:)(requestCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ILMessageFilterQueryResponse) -> (), v9);
}

@end