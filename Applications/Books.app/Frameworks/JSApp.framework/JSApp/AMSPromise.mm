@interface AMSPromise
- (id)jsa_mapWithBlock:(id)block;
@end

@implementation AMSPromise

- (id)jsa_mapWithBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_103BC;
  v7[3] = &unk_B2A10;
  blockCopy = block;
  v4 = blockCopy;
  v5 = [(AMSPromise *)self thenWithBlock:v7];

  return v5;
}

@end