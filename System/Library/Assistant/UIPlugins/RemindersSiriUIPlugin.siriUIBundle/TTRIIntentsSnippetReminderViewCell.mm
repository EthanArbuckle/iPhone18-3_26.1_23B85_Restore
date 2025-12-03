@interface TTRIIntentsSnippetReminderViewCell
- (UILabel)contactTriggerLabel;
- (UILabel)locationTriggerLabel;
- (UILabel)timeTriggerLabel;
- (UILabel)titleLabel;
- (UIStackView)stackView;
- (_TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TTRIIntentsSnippetReminderViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_50DC();
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
  selfCopy = self;
  sub_55EC();
}

- (_TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_2041C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_7140(style, identifier, v6);
}

@end