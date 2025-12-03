@interface TSSIMUnlockListHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (TSSIMUnlockListHeaderView)initWithFrame:(CGRect)frame;
- (double)_descriptionLabelHeightForWidth:(double)width;
- (double)_titleLabelHeightForWidth:(double)width;
- (void)_configureLabels;
- (void)layoutSubviews;
- (void)setNumberOfSIMsToUnlockAndanESIMExists:(id)exists;
@end

@implementation TSSIMUnlockListHeaderView

- (TSSIMUnlockListHeaderView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = TSSIMUnlockListHeaderView;
  v3 = [(TSSIMUnlockListHeaderView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    v10 = v3->_titleLabel;
    v11 = sub_1000013A0();
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    [(TSSIMUnlockListHeaderView *)v3 addSubview:v3->_titleLabel];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v12;

    v14 = v3->_descriptionLabel;
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v14 setFont:v15];

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    [(TSSIMUnlockListHeaderView *)v3 addSubview:v3->_descriptionLabel];
    [(TSSIMUnlockListHeaderView *)v3 _configureLabels];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = TSSIMUnlockListHeaderView;
  [(TSSIMUnlockListHeaderView *)&v30 layoutSubviews];
  [(TSSIMUnlockListHeaderView *)self bounds];
  Width = CGRectGetWidth(v31);
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v6 = CGRectZero.size.width;
  height = CGRectZero.size.height;
  text = [(UILabel *)self->_titleLabel text];
  v9 = [text length];

  if (v9)
  {
    [(TSSIMUnlockListHeaderView *)self _titleLabelHeightForWidth:Width];
    v11 = v10;
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = Width;
    v32.size.height = v11;
    MaxY = CGRectGetMaxY(v32);
    v12 = sub_100001424();
    v14 = v13 + 0.0;
    v15 = v12 + 0.0;
    v29 = Width - (v13 + v16);
    v18 = v11 - (v12 + v17);
  }

  else
  {
    MaxY = 0.0;
    v29 = v6;
    v18 = height;
    v15 = y;
    v14 = CGRectZero.origin.x;
  }

  text2 = [(UILabel *)self->_descriptionLabel text];
  v20 = [text2 length];

  if (v20)
  {
    [(TSSIMUnlockListHeaderView *)self _descriptionLabelHeightForWidth:Width];
    v22 = v21;
    v23 = sub_100001438();
    x = v24 + 0.0;
    y = v28 + v23;
    v6 = Width - (v24 + v25);
    height = v22 - (v23 + v26);
  }

  [(UILabel *)self->_titleLabel setFrame:v14, v15, v29, v18];
  [(UILabel *)self->_descriptionLabel setFrame:x, y, v6, height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(TSSIMUnlockListHeaderView *)self _titleLabelHeightForWidth:fits.width, fits.height];
  v6 = v5;
  [(TSSIMUnlockListHeaderView *)self _descriptionLabelHeightForWidth:width];
  v8 = v6 + v7;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setNumberOfSIMsToUnlockAndanESIMExists:(id)exists
{
  existsCopy = exists;
  if (![(NSDictionary *)self->_numberOfSIMsToUnlockAndanESIMExists isEqualToDictionary:?])
  {
    objc_storeStrong(&self->_numberOfSIMsToUnlockAndanESIMExists, exists);
    [(TSSIMUnlockListHeaderView *)self _configureLabels];
  }
}

- (void)_configureLabels
{
  v3 = [(NSDictionary *)self->_numberOfSIMsToUnlockAndanESIMExists objectForKeyedSubscript:@"NumOfSimsAvailKey"];
  intValue = [v3 intValue];

  v5 = [(NSDictionary *)self->_numberOfSIMsToUnlockAndanESIMExists objectForKeyedSubscript:@"kPhysicalSimExists"];
  bOOLValue = [v5 BOOLValue];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  v9 = @"SINGLE_ESIM_LOCKED";
  if (bOOLValue)
  {
    v9 = @"SINGLE_SIM_LOCKED";
  }

  v10 = @"SINGLE_ESIM_LOCKED_DESCRIPTION";
  if (bOOLValue)
  {
    v10 = @"SINGLE_SIM_LOCKED_DESCRIPTION";
  }

  v11 = @"MULTIPLE_SIMS_LOCKED";
  if (!bOOLValue)
  {
    v11 = @"MULTIPLE_ESIMS_LOCKED";
  }

  v12 = @"ESIM_LOCKED_DESCRIPTION";
  if (bOOLValue)
  {
    v12 = @"SIM_LOCKED_DESCRIPTION";
  }

  if (intValue == 1)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (intValue == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v20 = [v7 localizedStringForKey:v13 value:&stru_10001CA70 table:@"Localizable"];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:v14 value:&stru_10001CA70 table:@"Localizable"];

  if (+[TSUtilities inBuddy])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"SIM_LOCKED_DESCRIPTION_IN_BUDDY" value:&stru_10001CA70 table:@"Localizable"];
    v19 = [NSString stringWithFormat:@"%@%@", v16, v18];

    v16 = v19;
  }

  [(UILabel *)self->_titleLabel setText:v20];
  [(UILabel *)self->_descriptionLabel setText:v16];
  [(TSSIMUnlockListHeaderView *)self setNeedsLayout];
  [(TSSIMUnlockListHeaderView *)self setNeedsUpdateConstraints];
}

- (double)_titleLabelHeightForWidth:(double)width
{
  text = [(UILabel *)self->_titleLabel text];
  v6 = [text length];

  if (!v6)
  {
    return 0.0;
  }

  v7 = sub_100001424();
  v9 = v8;
  [(UILabel *)self->_titleLabel sizeThatFits:width - v10 - v11, 1.79769313e308];
  return v9 + v7 + v12;
}

- (double)_descriptionLabelHeightForWidth:(double)width
{
  text = [(UILabel *)self->_descriptionLabel text];
  v6 = [text length];

  if (!v6)
  {
    return 0.0;
  }

  v7 = sub_100001438();
  v9 = v8;
  [(UILabel *)self->_descriptionLabel sizeThatFits:width - v10 - v11, 1.79769313e308];
  return v9 + v7 + v12;
}

@end