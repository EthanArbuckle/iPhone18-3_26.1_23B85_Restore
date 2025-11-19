@interface TTRIIntentsSnippetHeaderCell
- (_TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setHeadingLabel:(id)a3;
- (void)setTopConstraint:(id)a3;
@end

@implementation TTRIIntentsSnippetHeaderCell

- (void)setTopConstraint:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint) = a3;
  v3 = a3;
}

- (void)setHeadingLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel) = a3;
  v3 = a3;
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

- (_TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_2041C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_4924(a3, a4, v6);
}

@end