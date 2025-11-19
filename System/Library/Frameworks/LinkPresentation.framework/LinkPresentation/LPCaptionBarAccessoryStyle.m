@interface LPCaptionBarAccessoryStyle
- (LPCaptionBarAccessoryStyle)init;
@end

@implementation LPCaptionBarAccessoryStyle

- (LPCaptionBarAccessoryStyle)init
{
  v7.receiver = self;
  v7.super_class = LPCaptionBarAccessoryStyle;
  v2 = [(LPCaptionBarAccessoryStyle *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(LPPadding);
    margin = v2->_margin;
    v2->_margin = v3;

    v5 = v2;
  }

  return v2;
}

@end