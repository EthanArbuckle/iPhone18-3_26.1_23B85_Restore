@interface UIViewController
- (void)presentCard:(id)a3 completion:(id)a4;
@end

@implementation UIViewController

- (void)presentCard:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10050240C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100502158(v8, v6, v7);
  sub_10001835C(v6);
}

@end