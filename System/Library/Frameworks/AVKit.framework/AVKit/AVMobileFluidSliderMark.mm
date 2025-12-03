@interface AVMobileFluidSliderMark
+ (id)interstitialMarkAtValue:(float)value;
+ (id)liveEdgeMarkAtValue:(float)value;
- (AVMobileFluidSliderMark)initWithStartValue:(float)value endValue:(float)endValue filledColor:(id)color unfilledColor:(id)unfilledColor markWithType:(unint64_t)type;
@end

@implementation AVMobileFluidSliderMark

- (AVMobileFluidSliderMark)initWithStartValue:(float)value endValue:(float)endValue filledColor:(id)color unfilledColor:(id)unfilledColor markWithType:(unint64_t)type
{
  colorCopy = color;
  unfilledColorCopy = unfilledColor;
  v18.receiver = self;
  v18.super_class = AVMobileFluidSliderMark;
  v15 = [(AVMobileFluidSliderMark *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_startValue = value;
    v15->_endValue = endValue;
    objc_storeStrong(&v15->_filledColor, color);
    objc_storeStrong(&v16->_unfilledColor, unfilledColor);
    v16->_markType = type;
  }

  return v16;
}

+ (id)liveEdgeMarkAtValue:(float)value
{
  v4 = [AVMobileFluidSliderMark alloc];
  avkit_liveContentAccessoryViewColor = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  avkit_liveContentAccessoryViewColor2 = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  *&v7 = value;
  *&v8 = value;
  v9 = [(AVMobileFluidSliderMark *)v4 initWithStartValue:avkit_liveContentAccessoryViewColor endValue:avkit_liveContentAccessoryViewColor2 filledColor:1 unfilledColor:v7 markWithType:v8];

  return v9;
}

+ (id)interstitialMarkAtValue:(float)value
{
  v4 = [AVMobileFluidSliderMark alloc];
  systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  *&v7 = value;
  *&v8 = value;
  v9 = [(AVMobileFluidSliderMark *)v4 initWithStartValue:systemDarkGrayColor endValue:systemYellowColor filledColor:0 unfilledColor:v7 markWithType:v8];

  return v9;
}

@end