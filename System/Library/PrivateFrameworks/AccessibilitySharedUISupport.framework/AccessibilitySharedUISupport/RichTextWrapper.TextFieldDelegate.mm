@interface RichTextWrapper.TextFieldDelegate
- (_TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate)init;
- (void)textViewDidChange:(id)change;
@end

@implementation RichTextWrapper.TextFieldDelegate

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_23DB35F58(changeCopy);
}

- (_TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end