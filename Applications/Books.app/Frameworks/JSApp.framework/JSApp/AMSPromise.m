@interface AMSPromise
- (id)jsa_mapWithBlock:(id)a3;
@end

@implementation AMSPromise

- (id)jsa_mapWithBlock:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_103BC;
  v7[3] = &unk_B2A10;
  v8 = a3;
  v4 = v8;
  v5 = [(AMSPromise *)self thenWithBlock:v7];

  return v5;
}

@end