@interface AVMobileFluidSliderMark
+ (id)interstitialMarkAtValue:(float)a3;
+ (id)liveEdgeMarkAtValue:(float)a3;
- (AVMobileFluidSliderMark)initWithStartValue:(float)a3 endValue:(float)a4 filledColor:(id)a5 unfilledColor:(id)a6 markWithType:(unint64_t)a7;
@end

@implementation AVMobileFluidSliderMark

- (AVMobileFluidSliderMark)initWithStartValue:(float)a3 endValue:(float)a4 filledColor:(id)a5 unfilledColor:(id)a6 markWithType:(unint64_t)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AVMobileFluidSliderMark;
  v15 = [(AVMobileFluidSliderMark *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_startValue = a3;
    v15->_endValue = a4;
    objc_storeStrong(&v15->_filledColor, a5);
    objc_storeStrong(&v16->_unfilledColor, a6);
    v16->_markType = a7;
  }

  return v16;
}

+ (id)liveEdgeMarkAtValue:(float)a3
{
  v4 = [AVMobileFluidSliderMark alloc];
  v5 = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  v6 = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  *&v7 = a3;
  *&v8 = a3;
  v9 = [(AVMobileFluidSliderMark *)v4 initWithStartValue:v5 endValue:v6 filledColor:1 unfilledColor:v7 markWithType:v8];

  return v9;
}

+ (id)interstitialMarkAtValue:(float)a3
{
  v4 = [AVMobileFluidSliderMark alloc];
  v5 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6 = [MEMORY[0x1E69DC888] systemYellowColor];
  *&v7 = a3;
  *&v8 = a3;
  v9 = [(AVMobileFluidSliderMark *)v4 initWithStartValue:v5 endValue:v6 filledColor:0 unfilledColor:v7 markWithType:v8];

  return v9;
}

@end