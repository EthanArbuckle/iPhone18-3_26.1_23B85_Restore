@interface AccountPageViewControllerDelegate
- (_TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate)init;
- (void)accountPageViewControllerDidFinish:(id)finish;
@end

@implementation AccountPageViewControllerDelegate

- (_TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountPageViewControllerDelegate();
  v2 = [(AccountPageViewControllerDelegate *)&v6 init];
  v3 = *(&v2->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference);
  *(&v2->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference) = v2;
  v4 = v2;

  return v4;
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v9[4] = sub_100492698;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10009AEDC;
  v9[3] = &unk_100896A80;
  v6 = _Block_copy(v9);
  selfCopy = self;
  finishCopy = finish;

  [finishCopy dismissViewControllerAnimated:1 completion:v6];

  _Block_release(v6);
}

@end