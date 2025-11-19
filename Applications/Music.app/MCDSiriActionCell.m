@interface MCDSiriActionCell
- (void)_updateSiriImageViewTintColor;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MCDSiriActionCell

- (void)_updateSiriImageViewTintColor
{
  v5 = [(MCDSiriActionCell *)self siriImageView];
  if (([(MCDSiriActionCell *)self isHighlighted]& 1) != 0 || ([(MCDSiriActionCell *)self isSelected]& 1) != 0)
  {
    v3 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v3 = +[UIColor tintColor];
  }

  v4 = v3;
  [v5 setTintColor:v3];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MCDSiriActionCell;
  [(MCDSiriActionCell *)&v17 layoutSubviews];
  v3 = MCDCarDisplayBundle();
  v4 = [v3 localizedStringForKey:@"SIRI_ACTION_CELL_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v5 = [(MCDSiriActionCell *)self textLabel];
  [v5 setText:v4];

  v6 = +[UIColor tintColor];
  v7 = [(MCDSiriActionCell *)self textLabel];
  [v7 setTextColor:v6];

  v8 = +[UIColor _carSystemFocusLabelColor];
  v9 = [(MCDSiriActionCell *)self textLabel];
  [v9 setHighlightedTextColor:v8];

  v10 = [(MCDSiriActionCell *)self textLabel];
  [v10 setAdjustsFontSizeToFitWidth:1];

  v11 = [(MCDSiriActionCell *)self siriImageView];

  if (!v11)
  {
    v12 = [UIImageView alloc];
    v13 = [UIImage _systemImageNamed:@"siri"];
    v14 = [v12 initWithImage:v13];

    v15 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    [v14 setPreferredSymbolConfiguration:v15];

    [v14 setContentMode:4];
    [(MCDSiriActionCell *)self setSiriImageView:v14];
  }

  v16 = [(MCDSiriActionCell *)self siriImageView];
  [(MCDSiriActionCell *)self setAccessoryView:v16];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = MCDSiriActionCell;
  [(_MCDReusableCell *)&v5 setHighlighted:a3 animated:a4];
  [(MCDSiriActionCell *)self _updateSiriImageViewTintColor];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = MCDSiriActionCell;
  [(_MCDReusableCell *)&v5 setSelected:a3 animated:a4];
  [(MCDSiriActionCell *)self _updateSiriImageViewTintColor];
}

@end