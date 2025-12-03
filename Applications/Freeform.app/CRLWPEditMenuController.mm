@interface CRLWPEditMenuController
- (_TtC8Freeform23CRLWPEditMenuController)init;
- (void)hide;
- (void)showMenuOn:(id)on;
@end

@implementation CRLWPEditMenuController

- (void)showMenuOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  sub_10127F7CC(onCopy);
}

- (void)hide
{
  selfCopy = self;
  sub_10127F918();
}

- (_TtC8Freeform23CRLWPEditMenuController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end