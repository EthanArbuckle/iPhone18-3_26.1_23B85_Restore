@interface _LAKeyStoreGenericPasswordNull
- (_LAKeyStoreGenericPasswordNull)init;
- (void)fetchDataWithContext:(id)a3 completion:(id)a4;
@end

@implementation _LAKeyStoreGenericPasswordNull

- (_LAKeyStoreGenericPasswordNull)init
{
  v7.receiver = self;
  v7.super_class = _LAKeyStoreGenericPasswordNull;
  v2 = [(_LAKeyStoreGenericPasswordNull *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (void)fetchDataWithContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[LAAuthorizationError resourceNotFound];
  (*(a4 + 2))(v5, 0, v6);
}

@end