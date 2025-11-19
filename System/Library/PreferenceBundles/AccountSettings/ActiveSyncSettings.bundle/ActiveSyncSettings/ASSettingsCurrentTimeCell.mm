@interface ASSettingsCurrentTimeCell
- (ASSettingsCurrentTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation ASSettingsCurrentTimeCell

- (ASSettingsCurrentTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = ASSettingsCurrentTimeCell;
  v9 = [(ASSettingsCurrentTimeCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"kPSOofScheduleEndDateTextColor"];
    -[ASSettingsCurrentTimeCell setCellFocusColor:](v9, "setCellFocusColor:", [v10 BOOLValue]);
  }

  return v9;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = ASSettingsCurrentTimeCell;
  [(ASSettingsCurrentTimeCell *)&v22 layoutSubviews];
  v3 = [(ASSettingsCurrentTimeCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(ASSettingsCurrentTimeCell *)self textLabel];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(ASSettingsCurrentTimeCell *)self oldTextColor];

  if (!v13)
  {
    v14 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    v15 = [v14 color];
    [(ASSettingsCurrentTimeCell *)self setOldTextColor:v15];
  }

  if ([(ASSettingsCurrentTimeCell *)self cellFocusColor])
  {
    v16 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    v17 = [v16 color];
    [(ASSettingsCurrentTimeCell *)self setOldTextColor:v17];

    v18 = +[UIApplication sharedApplication];
    v19 = [v18 keyWindow];
    v20 = [v19 tintColor];
    v21 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    [v21 setColor:v20];
  }

  else
  {
    v18 = [(ASSettingsCurrentTimeCell *)self oldTextColor];
    v19 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    [v19 setColor:v18];
  }

  [(ASSettingsCurrentTimeCell *)self setSelectionStyle:3];
}

@end