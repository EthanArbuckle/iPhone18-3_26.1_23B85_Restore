@interface TTRIIntentsSnippetHeaderCell
- (_TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setHeadingLabel:(id)label;
- (void)setTopConstraint:(id)constraint;
@end

@implementation TTRIIntentsSnippetHeaderCell

- (void)setTopConstraint:(id)constraint
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)setHeadingLabel:(id)label
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel) = label;
  labelCopy = label;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TTRIIntentsSnippetHeaderCell *)&v5 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
  v4 = *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel + 8];
  *v3 = 0;
  *(v3 + 1) = 0;

  sub_4700();
}

- (_TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_4924(style, identifier, v6);
}

@end