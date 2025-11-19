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
  [a1 addAttribute:v7 value:v6 range:{0, objc_msgSend(a1, "length")}];
}

- (void)mf_removeAttribute:()MFUtilities
{
  v4 = a3;
  [a1 removeAttribute:v4 range:{0, objc_msgSend(a1, "length")}];
}

- (void)mf_setString:()MFUtilities
{
  v4 = a3;
  [a1 replaceCharactersInRange:0 withString:{objc_msgSend(a1, "length"), v4}];
}

@end