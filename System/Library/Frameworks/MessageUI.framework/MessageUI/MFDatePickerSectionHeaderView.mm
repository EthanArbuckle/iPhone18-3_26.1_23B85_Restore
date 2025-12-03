@interface MFDatePickerSectionHeaderView
- (MFDatePickerSectionHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation MFDatePickerSectionHeaderView

- (MFDatePickerSectionHeaderView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MFDatePickerSectionHeaderView;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(MFDatePickerSectionHeaderView *)&v11 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v3, v4, v5, v6}];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v8 setFont:v9];

    [v8 setNumberOfLines:0];
    [v8 setLineBreakMode:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFDatePickerSectionHeaderView *)v7 setLabel:v8];
    [(MFDatePickerSectionHeaderView *)v7 addSubview:v8];
    [v8 mf_pinToView:v7 usingLayoutMargins:1];
  }

  return v7;
}

@end