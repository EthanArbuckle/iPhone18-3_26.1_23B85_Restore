@interface HPRFSubtitleMultilineCell
- (HPRFSubtitleMultilineCell)initWithCoder:(id)coder;
- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPRFSubtitleMultilineCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SubtitleMultilineCell();
  v4 = v8.receiver;
  specifierCopy = specifier;
  [(HPRFSubtitleMultilineCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  detailTextLabel = [v4 detailTextLabel];
  if (detailTextLabel)
  {
    v7 = detailTextLabel;
    [detailTextLabel setNumberOfLines:0];
  }
}

- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_22874();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_1D948(style, v7, v9, specifier);
}

- (HPRFSubtitleMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(HPRFSubtitleMultilineCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (HPRFSubtitleMultilineCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SubtitleMultilineCell();
  coderCopy = coder;
  v5 = [(HPRFSubtitleMultilineCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end