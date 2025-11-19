@interface MessageFilterExtension
- (void)handleCapabilitiesQueryRequest:(id)a3 context:(id)a4 completion:(id)a5;
- (void)handleQueryRequest:(id)a3 context:(id)a4 completion:(id)a5;
@end

@implementation MessageFilterExtension

- (void)handleCapabilitiesQueryRequest:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  specialized MessageFilterExtension.handle(_:context:completion:)(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)handleQueryRequest:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  specialized MessageFilterExtension.handle(_:context:completion:)(v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ILMessageFilterQueryResponse) -> (), v9);
}

@end