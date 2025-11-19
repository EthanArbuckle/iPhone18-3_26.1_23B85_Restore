@interface TTRIIntentsSnippetReminderViewCell
- (UILabel)contactTriggerLabel;
- (UILabel)locationTriggerLabel;
- (UILabel)timeTriggerLabel;
- (UILabel)titleLabel;
- (UIStackView)stackView;
- (_TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TTRIIntentsSnippetReminderViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_100015B54();
}

- (UILabel)titleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)timeTriggerLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)locationTriggerLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)contactTriggerLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)stackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100016064();
}

- (_TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_10001FA84();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100017BB8(a3, a4, v6);
}

@end