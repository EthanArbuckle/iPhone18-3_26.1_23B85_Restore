@interface Singleton
- (void)alarmsDidUpdateWithParameters:(id)a3 completion:(id)a4;
- (void)stateDidUpdateWithParameters:(id)a3 completion:(id)a4;
@end

@implementation Singleton

- (void)alarmsDidUpdateWithParameters:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  sub_1BBBE6B14(a3, &v8);
  _Block_copy(v6);
  v7 = self;
  sub_1BBBDD1FC(&v8, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)stateDidUpdateWithParameters:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  sub_1BBBE7B7C(a3, &v8);
  _Block_copy(v6);
  v7 = self;
  sub_1BBBED5C0(&v8, v7, v6);
  _Block_release(v6);

  _Block_release(v6);
}

@end