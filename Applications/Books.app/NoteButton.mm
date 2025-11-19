@interface NoteButton
- (NSArray)accessibilityUserInputLabels;
- (_TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton)initWithCoder:(id)a3;
@end

@implementation NoteButton

- (_TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation) = 0;
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
  v3 = sub_100783AA4();

  if (v3)
  {
    v4.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end