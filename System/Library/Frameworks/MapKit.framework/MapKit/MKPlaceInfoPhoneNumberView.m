@interface MKPlaceInfoPhoneNumberView
- (MKPlaceInfoPhoneNumberView)initWithFrame:(CGRect)a3;
- (id)_valueString;
- (id)formatPhoneNumber:(id)a3;
- (void)setOptsOutOfAds:(BOOL)a3;
@end

@implementation MKPlaceInfoPhoneNumberView

- (void)setOptsOutOfAds:(BOOL)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (LOBYTE(self->_optsOutOfAdsView) != a3)
  {
    LOBYTE(self->_optsOutOfAdsView) = a3;
    labelColor = self->super._labelColor;
    if (a3)
    {
      if (!labelColor)
      {
        v5 = [_MKUILabel alloc];
        v6 = [(_MKUILabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v7 = self->super._labelColor;
        self->super._labelColor = v6;

        [(UIColor *)self->super._labelColor setTranslatesAutoresizingMaskIntoConstraints:0];
        v8 = [(MKPlaceInfoContactRowView *)self valueLabel];
        v9 = [v8 font];
        [(UIColor *)self->super._labelColor setFont:v9];

        v10 = [(MKPlaceInfoContactRowView *)self valueLabel];
        v11 = [v10 textColor];
        [(UIColor *)self->super._labelColor setTextColor:v11];

        v12 = _MKLocalizedStringFromThisBundle(@"PlaceOptsOutOfTelephoneAds");
        [(UIColor *)self->super._labelColor setText:v12];

        [(MKPlaceInfoPhoneNumberView *)self addSubview:self->super._labelColor];
        v13 = MEMORY[0x1E696ACD8];
        v14 = [(UIColor *)self->super._labelColor leadingAnchor];
        v15 = [(MKPlaceInfoContactRowView *)self valueLabel];
        v16 = [v15 trailingAnchor];
        v17 = [v14 constraintEqualToAnchor:v16 constant:5.0];
        v24[0] = v17;
        v18 = [(UIColor *)self->super._labelColor firstBaselineAnchor];
        v19 = [(MKPlaceInfoContactRowView *)self valueLabel];
        v20 = [v19 firstBaselineAnchor];
        v21 = [v18 constraintEqualToAnchor:v20];
        v24[1] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
        [v13 activateConstraints:v22];
      }
    }

    else if (labelColor)
    {
      [(UIColor *)labelColor removeFromSuperview];
      v23 = self->super._labelColor;
      self->super._labelColor = 0;
    }
  }
}

- (id)formatPhoneNumber:(id)a3
{
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E69A1CD8];
  v5 = a3;
  v6 = [v4 sharedConfiguration];
  v7 = [v6 countryCode];
  v8 = mk_CFPhoneNumberCreate(v3, v5, v7);

  if (v8)
  {
    String = mk_CFPhoneNumberCreateString(v3, v8, 5);
    CFRelease(v8);
  }

  else
  {
    String = &stru_1F15B23C0;
  }

  return String;
}

- (id)_valueString
{
  v3 = [(MKPlaceInfoContactRowView *)self labeledValue];
  v4 = [v3 value];
  v5 = [v4 stringValue];
  v6 = [(MKPlaceInfoPhoneNumberView *)self formatPhoneNumber:v5];

  return v6;
}

- (MKPlaceInfoPhoneNumberView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoPhoneNumberView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [v5 setLineBreakMode:1];
  }

  return v4;
}

@end