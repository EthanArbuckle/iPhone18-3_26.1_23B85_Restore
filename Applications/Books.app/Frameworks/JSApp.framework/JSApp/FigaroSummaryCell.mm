@interface FigaroSummaryCell
- (_TtC5JSApp17FigaroSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation FigaroSummaryCell

- (_TtC5JSApp17FigaroSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_843AC();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_7A5C0(v4, v5);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_788D8();
}

@end