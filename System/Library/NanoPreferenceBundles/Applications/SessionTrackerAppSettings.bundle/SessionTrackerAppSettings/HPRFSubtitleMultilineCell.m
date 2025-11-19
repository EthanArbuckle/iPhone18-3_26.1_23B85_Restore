@interface HPRFSubtitleMultilineCell
- (HPRFSubtitleMultilineCell)initWithCoder:(id)a3;
- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPRFSubtitleMultilineCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SubtitleMultilineCell();
  v4 = v8.receiver;
  v5 = a3;
  [(HPRFSubtitleMultilineCell *)&v8 refreshCellContentsWithSpecifier:v5];
  v6 = [v4 detailTextLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines:0];
  }
}

- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_22874();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_1D948(a3, v7, v9, a5);
}

- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_22874();
    v6 = sub_22864();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for SubtitleMultilineCell();
  v7 = [(HPRFSubtitleMultilineCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (HPRFSubtitleMultilineCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SubtitleMultilineCell();
  v4 = a3;
  v5 = [(HPRFSubtitleMultilineCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end