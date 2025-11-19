@interface AVVCDuckLevel
- (AVVCDuckLevel)init;
@end

@implementation AVVCDuckLevel

- (AVVCDuckLevel)init
{
  v6.receiver = self;
  v6.super_class = AVVCDuckLevel;
  v2 = [(AVVCDuckLevel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    value = v2->_value;
    v2->_value = 0;

    v3->_isBlur = 0;
  }

  return v3;
}

@end