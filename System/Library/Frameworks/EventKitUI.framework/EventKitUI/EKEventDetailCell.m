@interface EKEventDetailCell
+ (double)_scaledDistanceCalculatedFromBottomToBaseline:(double)a3;
+ (double)_scaledDistanceCalculatedFromTopFromBaseline:(double)a3;
+ (double)detailsCellDefaultHeight;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKEventDetailCell)initWithEvent:(id)a3 editable:(BOOL)a4 style:(int64_t)a5;
- (double)detailsLeftInset;
- (double)detailsRightInset;
- (void)layoutForWidth:(double)a3 position:(int)a4;
- (void)layoutMarginsDidChange;
- (void)setEvent:(id)a3;
@end

@implementation EKEventDetailCell

- (EKEventDetailCell)initWithEvent:(id)a3 editable:(BOOL)a4 style:(int64_t)a5
{
  v8 = a3;
  v9 = [(EKUITableViewCell *)self initWithStyle:a5 reuseIdentifier:0];
  v10 = v9;
  if (v9)
  {
    v9->_editable = a4;
    [(EKEventDetailCell *)v9 setEvent:v8];
  }

  return v10;
}

- (void)setEvent:(id)a3
{
  v5 = a3;
  if (self->_event != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_event, a3);
    v5 = v6;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [objc_opt_class() detailsCellDefaultHeight];
  if (height < v5)
  {
    [objc_opt_class() detailsCellDefaultHeight];
    height = v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutForWidth:(double)a3 position:(int)a4
{
  [(EKEventDetailCell *)self setSelectionStyle:[(EKEventDetailCell *)self accessoryType]== 1];
  self->_lastLaidOutWidth = a3;
  self->_lastLaidOutPosition = a4;
}

+ (double)_scaledDistanceCalculatedFromTopFromBaseline:(double)a3
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [a1 _bodyFontAtDefaultSize];
  [v6 ascender];
  [v5 _scaledValueForValue:v7 + a3];
  v9 = v8;
  [v5 ascender];
  CalRoundToScreenScale(v9 - v10);
  if (v11 >= a3)
  {
    a3 = v11;
  }

  return a3;
}

+ (double)_scaledDistanceCalculatedFromBottomToBaseline:(double)a3
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [a1 _bodyFontAtDefaultSize];
  [v6 descender];
  [v5 _scaledValueForValue:a3 - v7];
  v9 = v8;
  [v5 descender];
  CalRoundToScreenScale(v9 + v10);
  if (v11 >= a3)
  {
    a3 = v11;
  }

  return a3;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = EKEventDetailCell;
  [(EKEventDetailCell *)&v3 layoutMarginsDidChange];
  [(EKEventDetailCell *)self setNeedsLayout];
}

- (double)detailsLeftInset
{
  [(EKEventDetailCell *)self layoutMargins];
  v4 = v3;
  [(EKEventDetailCell *)self safeAreaInsets];
  return v4 - v5;
}

- (double)detailsRightInset
{
  [(EKEventDetailCell *)self layoutMargins];
  v4 = v3;
  [(EKEventDetailCell *)self safeAreaInsets];
  return v4 - v5;
}

+ (double)detailsCellDefaultHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (MEMORY[0x1D38B98D0]())
  {
    v3 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v3 = 44.0;
    [v2 _scaledValueForValue:44.0];
    CalRoundToScreenScale(v4);
    if (v5 >= 44.0)
    {
      v3 = v5;
    }
  }

  return v3;
}

@end