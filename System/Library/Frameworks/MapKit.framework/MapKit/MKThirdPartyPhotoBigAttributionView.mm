@interface MKThirdPartyPhotoBigAttributionView
- (MKThirdPartyPhotoBigAttributionView)initWithContext:(int64_t)context;
- (id)firstLineLabelFont;
- (id)secondLineLabelFont;
- (void)updateInfoAttributionString;
@end

@implementation MKThirdPartyPhotoBigAttributionView

- (id)secondLineLabelFont
{
  context = [(MKPhotoBigAttributionView *)self context];
  if (context)
  {
    if (context != 1)
    {
      goto LABEL_6;
    }

    v3 = 17.0;
  }

  else
  {
    v3 = 13.0;
  }

  context = [MEMORY[0x1E69DB878] systemFontOfSize:v3];
LABEL_6:

  return context;
}

- (id)firstLineLabelFont
{
  context = [(MKPhotoBigAttributionView *)self context];
  if (context)
  {
    if (context != 1)
    {
      goto LABEL_6;
    }

    v3 = 20.0;
  }

  else
  {
    v3 = 15.0;
  }

  context = [MEMORY[0x1E69DB878] systemFontOfSize:v3 weight:*MEMORY[0x1E69DB980]];
LABEL_6:

  return context;
}

- (void)updateInfoAttributionString
{
  v32[2] = *MEMORY[0x1E69E9840];
  type = [(MKPhotoBigAttributionView *)self type];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (type)
  {
    v5 = @"More photos";
  }

  else
  {
    v5 = @"Add a photo";
  }

  v6 = _MKLocalizedStringFromThisBundle(v5);
  v7 = *MEMORY[0x1E69DB648];
  v31[0] = *MEMORY[0x1E69DB648];
  firstLineLabelFont = [(MKThirdPartyPhotoBigAttributionView *)self firstLineLabelFont];
  v32[0] = firstLineLabelFont;
  v9 = *MEMORY[0x1E69DB650];
  v31[1] = *MEMORY[0x1E69DB650];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v32[1] = whiteColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v12 = [v4 initWithString:v6 attributes:v11];

  v13 = [v12 copy];
  [(_MKUILabel *)self->_firstLineLabel setAttributedText:v13];

  mapItem = [(MKPhotoBigAttributionView *)self mapItem];
  _mapkit_preferredFirstPhotoVendor = [mapItem _mapkit_preferredFirstPhotoVendor];

  providerName = [_mapkit_preferredFirstPhotoVendor providerName];
  if ([providerName length])
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = MEMORY[0x1E696AEC0];
    v19 = _MKLocalizedStringFromThisBundle(@"PlaceCardPhotosBigAttribution");
    providerName2 = [_mapkit_preferredFirstPhotoVendor providerName];
    v21 = [v18 stringWithFormat:v19, providerName2];
    v22 = [v17 initWithString:v21];

    v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v22];
    v24 = [v22 length];
    v29[0] = v7;
    secondLineLabelFont = [(MKThirdPartyPhotoBigAttributionView *)self secondLineLabelFont];
    v29[1] = v9;
    v30[0] = secondLineLabelFont;
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v30[1] = systemGrayColor;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v23 addAttributes:v27 range:{0, v24}];

    v28 = [v23 copy];
    [(_MKUILabel *)self->_secondLineLabel setAttributedText:v28];
  }
}

- (MKThirdPartyPhotoBigAttributionView)initWithContext:(int64_t)context
{
  v69[14] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = MKThirdPartyPhotoBigAttributionView;
  v3 = [(MKPhotoBigAttributionView *)&v68 initWithContext:context];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    labelsView = v3->_labelsView;
    v3->_labelsView = v5;

    [(UIView *)v3->_labelsView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(MKPhotoBigAttributionView *)v3 contentView];
    [contentView addSubview:v3->_labelsView];

    v8 = [_MKUILabel alloc];
    [(MKThirdPartyPhotoBigAttributionView *)v3 bounds];
    v9 = [(_MKUILabel *)v8 initWithFrame:?];
    [(_MKUILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v9 setBackgroundColor:clearColor];

    [(_MKUILabel *)v9 setTextAlignment:1];
    [(_MKUILabel *)v9 setNumberOfLines:2];
    firstLineLabel = v3->_firstLineLabel;
    v3->_firstLineLabel = v9;
    v12 = v9;

    v13 = [_MKUILabel alloc];
    [(MKThirdPartyPhotoBigAttributionView *)v3 bounds];
    v14 = [(_MKUILabel *)v13 initWithFrame:?];
    [(_MKUILabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v14 setBackgroundColor:clearColor2];

    [(_MKUILabel *)v14 setTextAlignment:1];
    [(_MKUILabel *)v14 setNumberOfLines:2];
    secondLineLabel = v3->_secondLineLabel;
    v3->_secondLineLabel = v14;
    v52 = v14;

    [(UIView *)v3->_labelsView addSubview:v3->_firstLineLabel];
    [(UIView *)v3->_labelsView addSubview:v3->_secondLineLabel];
    contentView2 = [(MKPhotoBigAttributionView *)v3 contentView];
    v48 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v3->_labelsView topAnchor];
    topAnchor2 = [contentView2 topAnchor];
    v65 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v69[0] = v65;
    bottomAnchor = [(UIView *)v3->_labelsView bottomAnchor];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v62 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v69[1] = v62;
    leadingAnchor = [(UIView *)v3->_labelsView leadingAnchor];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v69[2] = v59;
    trailingAnchor = [(UIView *)v3->_labelsView trailingAnchor];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v69[3] = v56;
    centerYAnchor = [(UIView *)v3->_labelsView centerYAnchor];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v69[4] = v53;
    topAnchor3 = [(_MKUILabel *)v3->_firstLineLabel topAnchor];
    topAnchor4 = [(UIView *)v3->_labelsView topAnchor];
    v49 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v69[5] = v49;
    leadingAnchor3 = [(_MKUILabel *)v3->_firstLineLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v3->_labelsView leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v69[6] = v45;
    trailingAnchor3 = [(_MKUILabel *)v3->_firstLineLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v3->_labelsView trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v69[7] = v42;
    topAnchor5 = [(_MKUILabel *)v3->_secondLineLabel topAnchor];
    bottomAnchor3 = [(_MKUILabel *)v3->_firstLineLabel bottomAnchor];
    v38 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
    v69[8] = v38;
    bottomAnchor4 = [(_MKUILabel *)v3->_secondLineLabel bottomAnchor];
    bottomAnchor5 = [(UIView *)v3->_labelsView bottomAnchor];
    v35 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v69[9] = v35;
    leadingAnchor5 = [(_MKUILabel *)v3->_secondLineLabel leadingAnchor];
    leadingAnchor6 = [(UIView *)v3->_labelsView leadingAnchor];
    v32 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v69[10] = v32;
    trailingAnchor5 = [(_MKUILabel *)v3->_secondLineLabel trailingAnchor];
    trailingAnchor6 = [(UIView *)v3->_labelsView trailingAnchor];
    v29 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v69[11] = v29;
    spinner = [(MKPhotoBigAttributionView *)v3 spinner];
    centerXAnchor = [spinner centerXAnchor];
    v20 = contentView2;
    v41 = contentView2;
    centerXAnchor2 = [contentView2 centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v69[12] = v22;
    spinner2 = [(MKPhotoBigAttributionView *)v3 spinner];
    centerYAnchor3 = [spinner2 centerYAnchor];
    centerYAnchor4 = [v20 centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v69[13] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:14];
    [v48 activateConstraints:v27];
  }

  return v3;
}

@end