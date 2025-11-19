@interface RefetchKeybag
- (RefetchKeybag)init;
@end

@implementation RefetchKeybag

- (RefetchKeybag)init
{
  v8.receiver = self;
  v8.super_class = RefetchKeybag;
  v2 = [(RefetchKeybag *)&v8 init];
  if (v2)
  {
    v3 = sub_10000479C();
    clientInfo = v2->_clientInfo;
    v2->_clientInfo = v3;

    v5 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"RK"];
    logKey = v2->_logKey;
    v2->_logKey = v5;
  }

  return v2;
}

@end