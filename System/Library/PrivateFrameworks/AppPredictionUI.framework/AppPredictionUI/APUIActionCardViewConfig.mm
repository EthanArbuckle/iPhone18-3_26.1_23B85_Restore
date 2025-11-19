@interface APUIActionCardViewConfig
- (APUIActionCardViewConfig)init;
@end

@implementation APUIActionCardViewConfig

- (APUIActionCardViewConfig)init
{
  v5.receiver = self;
  v5.super_class = APUIActionCardViewConfig;
  v2 = [(APUIActionCardViewConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(APUIActionCardViewConfig *)v2 setMaxLinesForTitle:2];
    [(APUIActionCardViewConfig *)v3 setMaxLinesForSubtitle:2];
    [(APUIActionCardViewConfig *)v3 setMaxLinesForFootnote:1];
  }

  return v3;
}

@end