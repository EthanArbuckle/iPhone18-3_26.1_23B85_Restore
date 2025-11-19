@interface AAUICustodianHelpCodeView
- (AAUICustodianHelpCodeView)initWithFrame:(CGRect)a3;
- (void)setText:(id)a3;
@end

@implementation AAUICustodianHelpCodeView

- (AAUICustodianHelpCodeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AAUICustodianHelpCodeView;
  v3 = [(AAUICustodianHelpCodeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AAUICustodianHelpCodeView *)v3 setTextAlignment:1];
    [(AAUICustodianHelpCodeView *)v4 setContentMode:4];
  }

  return v4;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
  if ([v4 length] != 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E69DB660];
    do
    {
      [v5 addAttribute:v7 value:&unk_1F44C06F0 range:{v6++, 1}];
    }

    while ([v4 length] - 1 > v6);
  }

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD20]];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:v8 range:{0, 6}];
  v9.receiver = self;
  v9.super_class = AAUICustodianHelpCodeView;
  [(AAUICustodianHelpCodeView *)&v9 setAttributedText:v5];
}

@end