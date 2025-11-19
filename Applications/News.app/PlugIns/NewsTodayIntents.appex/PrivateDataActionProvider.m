@interface PrivateDataActionProvider
- (_TtC16NewsTodayIntentsP33_346BAA50B64DD5C36F8B4573B40F56D325PrivateDataActionProvider)init;
- (void)consumeNonDestructiveActionsSyncWithBlock:(id)a3;
@end

@implementation PrivateDataActionProvider

- (void)consumeNonDestructiveActionsSyncWithBlock:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    _Block_copy(v3);
    isa = sub_10000F184().super.isa;
    v7[4] = TagIntentResponseCode.rawValue.getter;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000065A8;
    v7[3] = &unk_100020C28;
    v6 = _Block_copy(v7);

    (v4)[2](v4, isa, v6);
    _Block_release(v6);

    _Block_release(v4);
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC16NewsTodayIntentsP33_346BAA50B64DD5C36F8B4573B40F56D325PrivateDataActionProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PrivateDataActionProvider *)&v3 init];
}

@end