@interface MKPhotoSmallAttributionView
- (CGSize)intrinsicContentSize;
- (MKPhotoSmallAttributionView)initWithMapItem:(id)item;
- (id)attributionFont;
- (void)layoutSubviews;
@end

@implementation MKPhotoSmallAttributionView

- (CGSize)intrinsicContentSize
{
  traitCollection = [(MKPhotoSmallAttributionView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  width = self->_labelSize.width;
  if (userInterfaceIdiom == 5)
  {
    width = width + 4.0;
    height = self->_labelSize.height + 8.0;
  }

  else
  {
    height = self->_labelSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MKPhotoSmallAttributionView;
  [(MKPhotoSmallAttributionView *)&v9 layoutSubviews];
  [(MKPhotoSmallAttributionView *)self bounds];
  v4 = v3;
  v6 = v5;
  width = self->_labelSize.width;
  height = self->_labelSize.height;
  [(UIView *)self->_backgroundView setFrame:?];
  [(_MKUILabel *)self->_label setFrame:(v4 - width) * 0.5, (v6 - height) * 0.5, width, height];
}

- (MKPhotoSmallAttributionView)initWithMapItem:(id)item
{
  _mapkit_preferredFirstPhotoVendor = [item _mapkit_preferredFirstPhotoVendor];
  providerName = [_mapkit_preferredFirstPhotoVendor providerName];
  v6 = [providerName length];

  if (v6)
  {
    v37.receiver = self;
    v37.super_class = MKPhotoSmallAttributionView;
    v7 = [(MKPhotoSmallAttributionView *)&v37 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (v7)
    {
      v8 = [_MKUILabel alloc];
      [(MKPhotoSmallAttributionView *)v7 bounds];
      v9 = [(_MKUILabel *)v8 initWithFrame:?];
      v10 = MEMORY[0x1E696AEC0];
      v11 = _MKLocalizedStringFromThisBundle(@"Photos on %@");
      providerName2 = [_mapkit_preferredFirstPhotoVendor providerName];
      v13 = [v10 stringWithFormat:v11, providerName2];
      [(_MKUILabel *)v9 setText:v13];

      attributionFont = [(MKPhotoSmallAttributionView *)v7 attributionFont];
      [(_MKUILabel *)v9 setFont:attributionFont];

      IsMacCatalyst = MapKitIdiomIsMacCatalyst();
      v16 = 0.75;
      if (IsMacCatalyst)
      {
        v16 = 0.85;
      }

      v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v16];
      [(_MKUILabel *)v9 setTextColor:v17];

      traitCollection = [(MKPhotoSmallAttributionView *)v7 traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 5)
      {
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(_MKUILabel *)v9 setTextColor:whiteColor];
      }

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(_MKUILabel *)v9 setBackgroundColor:clearColor];

      [(_MKUILabel *)v9 setTextAlignment:1];
      label = v7->_label;
      v7->_label = v9;
      v23 = v9;

      [(_MKUILabel *)v7->_label sizeToFit];
      [(_MKUILabel *)v7->_label frame];
      v7->_labelSize.width = v24;
      v7->_labelSize.height = v25;
      font = [(_MKUILabel *)v7->_label font];
      [font _mapkit_scaledValueForValue:12.0];
      v7->_labelSize.width = v7->_labelSize.width + round(v27);

      font2 = [(_MKUILabel *)v7->_label font];
      [font2 _mapkit_scaledValueForValue:21.0];
      v7->_labelSize.height = round(v29);

      photoSmallAttributionVisualEffectView = [MEMORY[0x1E69DD298] photoSmallAttributionVisualEffectView];
      v31 = +[MKSystemController sharedInstance];
      if ([v31 userInterfaceIdiom] == 2)
      {
        v32 = 5.0;
      }

      else
      {
        v32 = 4.0;
      }

      [(UIView *)photoSmallAttributionVisualEffectView _setCornerRadius:1 continuous:15 maskedCorners:v32];
      [(MKPhotoSmallAttributionView *)v7 addSubview:photoSmallAttributionVisualEffectView];
      contentView = [(UIView *)photoSmallAttributionVisualEffectView contentView];
      [contentView addSubview:v23];

      backgroundView = v7->_backgroundView;
      v7->_backgroundView = photoSmallAttributionVisualEffectView;

      [(MKPhotoSmallAttributionView *)v7 setClipsToBounds:1];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)attributionFont
{
  v2 = +[MKFontManager sharedManager];
  smallAttributionFont = [v2 smallAttributionFont];

  [smallAttributionFont pointSize];
  if (v4 > 18.0)
  {
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB978]];

    smallAttributionFont = v5;
  }

  return smallAttributionFont;
}

@end