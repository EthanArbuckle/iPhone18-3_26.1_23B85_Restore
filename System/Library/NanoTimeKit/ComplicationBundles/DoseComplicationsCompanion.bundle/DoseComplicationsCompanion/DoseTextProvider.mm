@interface DoseTextProvider
- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style now:(id)now;
@end

@implementation DoseTextProvider

- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style now:(id)now
{
  v10.receiver = self;
  v10.super_class = DoseTextProvider;
  v6 = [(DoseTextProvider *)&v10 attributedTextAndSize:size forMaxWidth:style withStyle:now now:width];
  if (v6)
  {
    dword_10B18 = (dword_10B18 + 1) % 100;
    v7 = [[NSMutableAttributedString alloc] initWithAttributedString:v6];
    v8 = [NSNumber numberWithInt:dword_10B18];
    [v7 addAttribute:@"_CLK_Workaround_Key" value:v8 range:{0, 1}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end