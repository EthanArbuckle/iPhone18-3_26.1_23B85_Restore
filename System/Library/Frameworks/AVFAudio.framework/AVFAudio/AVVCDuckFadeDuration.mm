@interface AVVCDuckFadeDuration
- (AVVCDuckFadeDuration)initWithFadeIn:(id)in fadeOut:(id)out;
@end

@implementation AVVCDuckFadeDuration

- (AVVCDuckFadeDuration)initWithFadeIn:(id)in fadeOut:(id)out
{
  inCopy = in;
  outCopy = out;
  v12.receiver = self;
  v12.super_class = AVVCDuckFadeDuration;
  v9 = [(AVVCDuckFadeDuration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fadeIn, in);
    objc_storeStrong(&v10->_fadeOut, out);
  }

  return v10;
}

@end