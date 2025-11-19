@interface CSLPRFStingTitleSubtitleCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CSLPRFStingTitleSubtitleCell

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CSLPRFStingTitleSubtitleCell;
  [(CSLPRFStingTitleSubtitleCell *)&v14 layoutSubviews];
  if ([objc_opt_class() cellStyle] == &dword_0 + 3 && !-[CSLPRFStingTitleSubtitleCell hasSubtitle](self, "hasSubtitle"))
  {
    v3 = [(CSLPRFStingTitleSubtitleCell *)self textLabel];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [(CSLPRFStingTitleSubtitleCell *)self contentView];
    [v10 bounds];
    v12 = round((v11 - v9) * 0.5);

    v13 = [(CSLPRFStingTitleSubtitleCell *)self textLabel];
    [v13 setFrame:{v5, v12, v7, v9}];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSLPRFStingTitleSubtitleCell;
  [(CSLPRFStingTitleSubtitleCell *)&v9 refreshCellContentsWithSpecifier:v4];
  if ([objc_opt_class() cellStyle] == &dword_0 + 3)
  {
    v5 = [(CSLPRFStingTitleSubtitleCell *)self detailTextLabel];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v5 setFont:v6];

    v7 = [v4 objectForKeyedSubscript:PSTableCellSubtitleTextKey];
    [(CSLPRFStingTitleSubtitleCell *)self setHasSubtitle:v7 != 0];
    if ([(CSLPRFStingTitleSubtitleCell *)self hasSubtitle])
    {
      [v5 setText:v7];
      v8 = +[UIColor grayColor];
      [v5 setTextColor:v8];
    }

    else
    {
      [v5 setText:@" "];
    }
  }

  [(CSLPRFStingTitleSubtitleCell *)self setNeedsLayout];
}

@end