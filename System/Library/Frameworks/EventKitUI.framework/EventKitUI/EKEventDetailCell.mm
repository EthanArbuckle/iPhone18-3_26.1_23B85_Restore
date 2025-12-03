@interface EKEventDetailCell
+ (double)_scaledDistanceCalculatedFromBottomToBaseline:(double)baseline;
+ (double)_scaledDistanceCalculatedFromTopFromBaseline:(double)baseline;
+ (double)detailsCellDefaultHeight;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKEventDetailCell)initWithEvent:(id)event editable:(BOOL)editable style:(int64_t)style;
- (double)detailsLeftInset;
- (double)detailsRightInset;
- (void)layoutForWidth:(double)width position:(int)position;
- (void)layoutMarginsDidChange;
- (void)setEvent:(id)event;
@end

@implementation EKEventDetailCell

- (EKEventDetailCell)initWithEvent:(id)event editable:(BOOL)editable style:(int64_t)style
{
  eventCopy = event;
  v9 = [(EKUITableViewCell *)self initWithStyle:style reuseIdentifier:0];
  v10 = v9;
  if (v9)
  {
    v9->_editable = editable;
    [(EKEventDetailCell *)v9 setEvent:eventCopy];
  }

  return v10;
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  if (self->_event != eventCopy)
  {
    v6 = eventCopy;
    objc_storeStrong(&self->_event, event);
    eventCopy = v6;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)layoutForWidth:(double)width position:(int)position
{
  [(EKEventDetailCell *)self setSelectionStyle:[(EKEventDetailCell *)self accessoryType]== 1];
  self->_lastLaidOutWidth = width;
  self->_lastLaidOutPosition = position;
}

+ (double)_scaledDistanceCalculatedFromTopFromBaseline:(double)baseline
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  _bodyFontAtDefaultSize = [self _bodyFontAtDefaultSize];
  [_bodyFontAtDefaultSize ascender];
  [v5 _scaledValueForValue:v7 + baseline];
  v9 = v8;
  [v5 ascender];
  CalRoundToScreenScale(v9 - v10);
  if (v11 >= baseline)
  {
    baseline = v11;
  }

  return baseline;
}

+ (double)_scaledDistanceCalculatedFromBottomToBaseline:(double)baseline
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  _bodyFontAtDefaultSize = [self _bodyFontAtDefaultSize];
  [_bodyFontAtDefaultSize descender];
  [v5 _scaledValueForValue:baseline - v7];
  v9 = v8;
  [v5 descender];
  CalRoundToScreenScale(v9 + v10);
  if (v11 >= baseline)
  {
    baseline = v11;
  }

  return baseline;
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