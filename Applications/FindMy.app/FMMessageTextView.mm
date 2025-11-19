@interface FMMessageTextView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy17FMMessageTextView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMMessageTextView

- (void)layoutSubviews
{
  v2 = self;
  sub_100155084();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMessageTextView();
  v4 = a3;
  v5 = v6.receiver;
  [(FMMessageTextView *)&v6 traitCollectionDidChange:v4];
  sub_10015604C();
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100155AF8(v4);
}

- (void)textViewDidEndEditing:(id)a3
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

- (_TtC6FindMy17FMMessageTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end