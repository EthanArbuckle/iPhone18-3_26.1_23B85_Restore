@interface CSLPRFStingTitleSubtitleCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CSLPRFStingTitleSubtitleCell

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CSLPRFStingTitleSubtitleCell;
  [(CSLPRFStingTitleSubtitleCell *)&v14 layoutSubviews];
  if ([objc_opt_class() cellStyle] == &dword_0 + 3 && !-[CSLPRFStingTitleSubtitleCell hasSubtitle](self, "hasSubtitle"))
  {
    textLabel = [(CSLPRFStingTitleSubtitleCell *)self textLabel];
    [textLabel frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    contentView = [(CSLPRFStingTitleSubtitleCell *)self contentView];
    [contentView bounds];
    v12 = round((v11 - v9) * 0.5);

    textLabel2 = [(CSLPRFStingTitleSubtitleCell *)self textLabel];
    [textLabel2 setFrame:{v5, v12, v7, v9}];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = CSLPRFStingTitleSubtitleCell;
  [(CSLPRFStingTitleSubtitleCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  if ([objc_opt_class() cellStyle] == &dword_0 + 3)
  {
    detailTextLabel = [(CSLPRFStingTitleSubtitleCell *)self detailTextLabel];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [detailTextLabel setFont:v6];

    v7 = [specifierCopy objectForKeyedSubscript:PSTableCellSubtitleTextKey];
    [(CSLPRFStingTitleSubtitleCell *)self setHasSubtitle:v7 != 0];
    if ([(CSLPRFStingTitleSubtitleCell *)self hasSubtitle])
    {
      [detailTextLabel setText:v7];
      v8 = +[UIColor grayColor];
      [detailTextLabel setTextColor:v8];
    }

    else
    {
      [detailTextLabel setText:@" "];
    }
  }

  [(CSLPRFStingTitleSubtitleCell *)self setNeedsLayout];
}

@end