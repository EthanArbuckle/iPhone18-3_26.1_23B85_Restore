@interface AccountPageViewControllerDelegate
- (_TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate)init;
- (void)accountPageViewControllerDidFinish:(id)a3;
@end

@implementation AccountPageViewControllerDelegate

- (_TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate_selfReference) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountPageViewControllerDelegate();
  v2 = [(AccountPageViewControllerDelegate *)&v6 init];
  v3 = *(&v2->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate_selfReference);
  *(&v2->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate_selfReference) = v2;
  v4 = v2;

  return v4;
}

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v9[4] = sub_100477AC4;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000CF7B0;
  v9[3] = &unk_100876BB0;
  v6 = _Block_copy(v9);
  v7 = self;
  v8 = a3;

  [v8 dismissViewControllerAnimated:1 completion:v6];

  _Block_release(v6);
}

@end