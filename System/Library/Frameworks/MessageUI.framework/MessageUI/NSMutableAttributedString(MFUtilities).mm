@interface NSMutableAttributedString(MFUtilities)
- (void)mf_addAttribute:()MFUtilities value:;
- (void)mf_removeAttribute:()MFUtilities;
- (void)mf_setString:()MFUtilities;
@end

@implementation NSMutableAttributedString(MFUtilities)

- (void)mf_addAttribute:()MFUtilities value:
{
  v7 = a3;
  v6 = a4;
  [self addAttribute:v7 value:v6 range:{0, objc_msgSend(self, "length")}];
}

- (void)mf_removeAttribute:()MFUtilities
{
  v4 = a3;
  [self removeAttribute:v4 range:{0, objc_msgSend(self, "length")}];
}

- (void)mf_setString:()MFUtilities
{
  v4 = a3;
  [self replaceCharactersInRange:0 withString:{objc_msgSend(self, "length"), v4}];
}

@end