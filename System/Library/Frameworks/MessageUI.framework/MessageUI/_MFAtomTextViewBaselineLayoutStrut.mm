@interface _MFAtomTextViewBaselineLayoutStrut
- (CGSize)intrinsicContentSize;
@end

@implementation _MFAtomTextViewBaselineLayoutStrut

- (CGSize)intrinsicContentSize
{
  font = [(_MFAtomTextViewBaselineLayoutStrut *)self font];
  [@"X" sizeWithFont:font forWidth:-[_MFAtomTextViewBaselineLayoutStrut lineBreakMode](self lineBreakMode:"lineBreakMode") letterSpacing:{3.40282347e38, 0.0}];
  v5 = v4;
  v6 = *MEMORY[0x1E695F060];

  v7 = v6;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

@end