@interface FigaroSummaryCell
- (_TtC5JSApp17FigaroSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation FigaroSummaryCell

- (_TtC5JSApp17FigaroSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v2 = self;
  sub_788D8();
}

@end