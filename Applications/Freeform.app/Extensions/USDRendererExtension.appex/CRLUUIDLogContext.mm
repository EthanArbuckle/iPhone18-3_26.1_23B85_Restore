@interface CRLUUIDLogContext
- (CRLUUIDLogContext)init;
@end

@implementation CRLUUIDLogContext

- (CRLUUIDLogContext)init
{
  v8.receiver = self;
  v8.super_class = CRLUUIDLogContext;
  v2 = [(CRLUUIDLogContext *)&v8 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    publicString = v2->_publicString;
    v2->_publicString = uUIDString;

    privateString = v2->_privateString;
    v2->_privateString = &stru_1000C76D8;
  }

  return v2;
}

@end