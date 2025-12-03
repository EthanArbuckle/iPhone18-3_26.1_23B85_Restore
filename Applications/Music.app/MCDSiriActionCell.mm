@interface MCDSiriActionCell
- (void)_updateSiriImageViewTintColor;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation MCDSiriActionCell

- (void)_updateSiriImageViewTintColor
{
  siriImageView = [(MCDSiriActionCell *)self siriImageView];
  if (([(MCDSiriActionCell *)self isHighlighted]& 1) != 0 || ([(MCDSiriActionCell *)self isSelected]& 1) != 0)
  {
    v3 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v3 = +[UIColor tintColor];
  }

  v4 = v3;
  [siriImageView setTintColor:v3];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MCDSiriActionCell;
  [(MCDSiriActionCell *)&v17 layoutSubviews];
  v3 = MCDCarDisplayBundle();
  v4 = [v3 localizedStringForKey:@"SIRI_ACTION_CELL_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  textLabel = [(MCDSiriActionCell *)self textLabel];
  [textLabel setText:v4];

  v6 = +[UIColor tintColor];
  textLabel2 = [(MCDSiriActionCell *)self textLabel];
  [textLabel2 setTextColor:v6];

  v8 = +[UIColor _carSystemFocusLabelColor];
  textLabel3 = [(MCDSiriActionCell *)self textLabel];
  [textLabel3 setHighlightedTextColor:v8];

  textLabel4 = [(MCDSiriActionCell *)self textLabel];
  [textLabel4 setAdjustsFontSizeToFitWidth:1];

  siriImageView = [(MCDSiriActionCell *)self siriImageView];

  if (!siriImageView)
  {
    v12 = [UIImageView alloc];
    v13 = [UIImage _systemImageNamed:@"siri"];
    v14 = [v12 initWithImage:v13];

    v15 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    [v14 setPreferredSymbolConfiguration:v15];

    [v14 setContentMode:4];
    [(MCDSiriActionCell *)self setSiriImageView:v14];
  }

  siriImageView2 = [(MCDSiriActionCell *)self siriImageView];
  [(MCDSiriActionCell *)self setAccessoryView:siriImageView2];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MCDSiriActionCell;
  [(_MCDReusableCell *)&v5 setHighlighted:highlighted animated:animated];
  [(MCDSiriActionCell *)self _updateSiriImageViewTintColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MCDSiriActionCell;
  [(_MCDReusableCell *)&v5 setSelected:selected animated:animated];
  [(MCDSiriActionCell *)self _updateSiriImageViewTintColor];
}

@end