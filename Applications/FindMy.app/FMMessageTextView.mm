@interface FMMessageTextView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy17FMMessageTextView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMMessageTextView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100155084();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMessageTextView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMMessageTextView *)&v6 traitCollectionDidChange:changeCopy];
  sub_10015604C();
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100155AF8(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"textViewDidChange:"])
    {
      [v5 textViewDidChange:editing];
    }

    swift_unknownObjectRelease();
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  if ([Strong respondsToSelector:"textView:shouldChangeTextInRange:replacementText:"])
  {
    v11 = [v10 textView:view shouldChangeTextInRange:location replacementText:{length, text}];
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRelease();
  return v11;
}

- (_TtC6FindMy17FMMessageTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end