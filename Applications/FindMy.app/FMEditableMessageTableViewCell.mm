@interface FMEditableMessageTableViewCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy30FMEditableMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)textViewDidChange:(id)change;
@end

@implementation FMEditableMessageTableViewCell

- (void)textViewDidChange:(id)change
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"textViewDidChange:"])
    {
      [v5 textViewDidChange:change];
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

- (_TtC6FindMy30FMEditableMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100372AA0(style, identifier, v6);
}

@end