@interface MKPlaceServiceHoursView
- (id)_standardLabel;
@end

@implementation MKPlaceServiceHoursView

- (id)_standardLabel
{
  v3 = [_MKUILabel alloc];
  v4 = [(_MKUILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_MKUILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [(_MKUILabel *)v4 setTextColor:grayColor];

  v6 = +[MKFontManager sharedManager];
  bodyFont = [v6 bodyFont];
  [(_MKUILabel *)v4 setFont:bodyFont];

  [(_MKUILabel *)v4 setNumberOfLines:4];
  [(MKPlaceServiceHoursView *)self addSubview:v4];

  return v4;
}

@end