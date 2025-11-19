@interface AVVCDuckFadeDuration
- (AVVCDuckFadeDuration)initWithFadeIn:(id)a3 fadeOut:(id)a4;
@end

@implementation AVVCDuckFadeDuration

- (AVVCDuckFadeDuration)initWithFadeIn:(id)a3 fadeOut:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVVCDuckFadeDuration;
  v9 = [(AVVCDuckFadeDuration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fadeIn, a3);
    objc_storeStrong(&v10->_fadeOut, a4);
  }

  return v10;
}

@end