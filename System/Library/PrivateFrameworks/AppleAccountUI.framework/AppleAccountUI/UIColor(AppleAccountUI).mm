@interface UIColor(AppleAccountUI)
+ (id)aaui_colorWithHexString:()AppleAccountUI;
@end

@implementation UIColor(AppleAccountUI)

+ (id)aaui_colorWithHexString:()AppleAccountUI
{
  v3 = 0;
  v0 = [MEMORY[0x1E696AE88] scannerWithString:?];
  [v0 scanHexInt:&v3];

  v1 = [MEMORY[0x1E69DC888] colorWithRed:(BYTE2(v3) / 255.0) green:(BYTE1(v3) / 255.0) blue:(v3 / 255.0) alpha:1.0];

  return v1;
}

@end