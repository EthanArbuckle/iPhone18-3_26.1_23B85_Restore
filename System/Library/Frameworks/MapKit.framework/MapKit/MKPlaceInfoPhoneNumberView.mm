@interface MKPlaceInfoPhoneNumberView
- (MKPlaceInfoPhoneNumberView)initWithFrame:(CGRect)frame;
- (id)_valueString;
- (id)formatPhoneNumber:(id)number;
- (void)setOptsOutOfAds:(BOOL)ads;
@end

@implementation MKPlaceInfoPhoneNumberView

- (void)setOptsOutOfAds:(BOOL)ads
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (LOBYTE(self->_optsOutOfAdsView) != ads)
  {
    LOBYTE(self->_optsOutOfAdsView) = ads;
    labelColor = self->super._labelColor;
    if (ads)
    {
      if (!labelColor)
      {
        v5 = [_MKUILabel alloc];
        v6 = [(_MKUILabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v7 = self->super._labelColor;
        self->super._labelColor = v6;

        [(UIColor *)self->super._labelColor setTranslatesAutoresizingMaskIntoConstraints:0];
        valueLabel = [(MKPlaceInfoContactRowView *)self valueLabel];
        font = [valueLabel font];
        [(UIColor *)self->super._labelColor setFont:font];

        valueLabel2 = [(MKPlaceInfoContactRowView *)self valueLabel];
        textColor = [valueLabel2 textColor];
        [(UIColor *)self->super._labelColor setTextColor:textColor];

        v12 = _MKLocalizedStringFromThisBundle(@"PlaceOptsOutOfTelephoneAds");
        [(UIColor *)self->super._labelColor setText:v12];

        [(MKPlaceInfoPhoneNumberView *)self addSubview:self->super._labelColor];
        v13 = MEMORY[0x1E696ACD8];
        leadingAnchor = [(UIColor *)self->super._labelColor leadingAnchor];
        valueLabel3 = [(MKPlaceInfoContactRowView *)self valueLabel];
        trailingAnchor = [valueLabel3 trailingAnchor];
        v17 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:5.0];
        v24[0] = v17;
        firstBaselineAnchor = [(UIColor *)self->super._labelColor firstBaselineAnchor];
        valueLabel4 = [(MKPlaceInfoContactRowView *)self valueLabel];
        firstBaselineAnchor2 = [valueLabel4 firstBaselineAnchor];
        v21 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
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

- (id)formatPhoneNumber:(id)number
{
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E69A1CD8];
  numberCopy = number;
  sharedConfiguration = [v4 sharedConfiguration];
  countryCode = [sharedConfiguration countryCode];
  v8 = mk_CFPhoneNumberCreate(v3, numberCopy, countryCode);

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
  labeledValue = [(MKPlaceInfoContactRowView *)self labeledValue];
  value = [labeledValue value];
  stringValue = [value stringValue];
  v6 = [(MKPlaceInfoPhoneNumberView *)self formatPhoneNumber:stringValue];

  return v6;
}

- (MKPlaceInfoPhoneNumberView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MKPlaceInfoPhoneNumberView;
  v3 = [(MKPlaceInfoContactRowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    valueLabel = [(MKPlaceInfoContactRowView *)v3 valueLabel];
    [valueLabel setLineBreakMode:1];
  }

  return v4;
}

@end