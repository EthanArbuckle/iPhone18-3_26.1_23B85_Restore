@interface DoseTextProvider
- (id)attributedTextAndSize:(CGSize *)a3 forMaxWidth:(double)a4 withStyle:(id)a5 now:(id)a6;
@end

@implementation DoseTextProvider

- (id)attributedTextAndSize:(CGSize *)a3 forMaxWidth:(double)a4 withStyle:(id)a5 now:(id)a6
{
  v10.receiver = self;
  v10.super_class = DoseTextProvider;
  v6 = [(DoseTextProvider *)&v10 attributedTextAndSize:a3 forMaxWidth:a5 withStyle:a6 now:a4];
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