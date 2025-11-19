@interface FMEditableMessageTableViewCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy30FMEditableMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)textViewDidChange:(id)a3;
@end

@implementation FMEditableMessageTableViewCell

- (void)textViewDidChange:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"textViewDidChange:"])
    {
      [v5 textViewDidChange:a3];
    }

    swift_unknownObjectRelease();
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  if ([Strong respondsToSelector:"textView:shouldChangeTextInRange:replacementText:"])
  {
    v11 = [v10 textView:a3 shouldChangeTextInRange:location replacementText:{length, a5}];
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRelease();
  return v11;
}

- (_TtC6FindMy30FMEditableMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100372AA0(a3, a4, v6);
}

@end