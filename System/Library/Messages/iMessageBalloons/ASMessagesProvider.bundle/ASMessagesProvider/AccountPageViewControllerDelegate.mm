@interface AccountPageViewControllerDelegate
- (_TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate)init;
- (void)accountPageViewControllerDidFinish:(id)finish;
@end

@implementation AccountPageViewControllerDelegate

- (_TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate_selfReference) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountPageViewControllerDelegate();
  v2 = [(AccountPageViewControllerDelegate *)&v6 init];
  v3 = *(&v2->super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate_selfReference);
  *(&v2->super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate_selfReference) = v2;
  v4 = v2;

  return v4;
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v9[4] = sub_47894C;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_23F0CC;
  v9[3] = &unk_892A60;
  v6 = _Block_copy(v9);
  selfCopy = self;
  finishCopy = finish;

  [finishCopy dismissViewControllerAnimated:1 completion:v6];

  _Block_release(v6);
}

@end