@interface _LAKeyStoreGenericPasswordNull
- (_LAKeyStoreGenericPasswordNull)init;
- (void)fetchDataWithContext:(id)context completion:(id)completion;
@end

@implementation _LAKeyStoreGenericPasswordNull

- (_LAKeyStoreGenericPasswordNull)init
{
  v7.receiver = self;
  v7.super_class = _LAKeyStoreGenericPasswordNull;
  v2 = [(_LAKeyStoreGenericPasswordNull *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (void)fetchDataWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v6);
}

@end