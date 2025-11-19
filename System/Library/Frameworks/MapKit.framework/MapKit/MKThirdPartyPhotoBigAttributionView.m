@interface MKThirdPartyPhotoBigAttributionView
- (MKThirdPartyPhotoBigAttributionView)initWithContext:(int64_t)a3;
- (id)firstLineLabelFont;
- (id)secondLineLabelFont;
- (void)updateInfoAttributionString;
@end

@implementation MKThirdPartyPhotoBigAttributionView

- (id)secondLineLabelFont
{
  v2 = [(MKPhotoBigAttributionView *)self context];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = 17.0;
  }

  else
  {
    v3 = 13.0;
  }

  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:v3];
LABEL_6:

  return v2;
}

- (id)firstLineLabelFont
{
  v2 = [(MKPhotoBigAttributionView *)self context];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = 20.0;
  }

  else
  {
    v3 = 15.0;
  }

  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:v3 weight:*MEMORY[0x1E69DB980]];
LABEL_6:

  return v2;
}

- (void)updateInfoAttributionString
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = [(MKPhotoBigAttributionView *)self type];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v3)
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
  v8 = [(MKThirdPartyPhotoBigAttributionView *)self firstLineLabelFont];
  v32[0] = v8;
  v9 = *MEMORY[0x1E69DB650];
  v31[1] = *MEMORY[0x1E69DB650];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  v32[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v12 = [v4 initWithString:v6 attributes:v11];

  v13 = [v12 copy];
  [(_MKUILabel *)self->_firstLineLabel setAttributedText:v13];

  v14 = [(MKPhotoBigAttributionView *)self mapItem];
  v15 = [v14 _mapkit_preferredFirstPhotoVendor];

  v16 = [v15 providerName];
  if ([v16 length])
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = MEMORY[0x1E696AEC0];
    v19 = _MKLocalizedStringFromThisBundle(@"PlaceCardPhotosBigAttribution");
    v20 = [v15 providerName];
    v21 = [v18 stringWithFormat:v19, v20];
    v22 = [v17 initWithString:v21];

    v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v22];
    v24 = [v22 length];
    v29[0] = v7;
    v25 = [(MKThirdPartyPhotoBigAttributionView *)self secondLineLabelFont];
    v29[1] = v9;
    v30[0] = v25;
    v26 = [MEMORY[0x1E69DC888] systemGrayColor];
    v30[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v23 addAttributes:v27 range:{0, v24}];

    v28 = [v23 copy];
    [(_MKUILabel *)self->_secondLineLabel setAttributedText:v28];
  }
}

- (MKThirdPartyPhotoBigAttributionView)initWithContext:(int64_t)a3
{
  v69[14] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = MKThirdPartyPhotoBigAttributionView;
  v3 = [(MKPhotoBigAttributionView *)&v68 initWithContext:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    labelsView = v3->_labelsView;
    v3->_labelsView = v5;

    [(UIView *)v3->_labelsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(MKPhotoBigAttributionView *)v3 contentView];
    [v7 addSubview:v3->_labelsView];

    v8 = [_MKUILabel alloc];
    [(MKThirdPartyPhotoBigAttributionView *)v3 bounds];
    v9 = [(_MKUILabel *)v8 initWithFrame:?];
    [(_MKUILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v9 setBackgroundColor:v10];

    [(_MKUILabel *)v9 setTextAlignment:1];
    [(_MKUILabel *)v9 setNumberOfLines:2];
    firstLineLabel = v3->_firstLineLabel;
    v3->_firstLineLabel = v9;
    v12 = v9;

    v13 = [_MKUILabel alloc];
    [(MKThirdPartyPhotoBigAttributionView *)v3 bounds];
    v14 = [(_MKUILabel *)v13 initWithFrame:?];
    [(_MKUILabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v14 setBackgroundColor:v15];

    [(_MKUILabel *)v14 setTextAlignment:1];
    [(_MKUILabel *)v14 setNumberOfLines:2];
    secondLineLabel = v3->_secondLineLabel;
    v3->_secondLineLabel = v14;
    v52 = v14;

    [(UIView *)v3->_labelsView addSubview:v3->_firstLineLabel];
    [(UIView *)v3->_labelsView addSubview:v3->_secondLineLabel];
    v17 = [(MKPhotoBigAttributionView *)v3 contentView];
    v48 = MEMORY[0x1E696ACD8];
    v67 = [(UIView *)v3->_labelsView topAnchor];
    v66 = [v17 topAnchor];
    v65 = [v67 constraintGreaterThanOrEqualToAnchor:v66];
    v69[0] = v65;
    v64 = [(UIView *)v3->_labelsView bottomAnchor];
    v63 = [v17 bottomAnchor];
    v62 = [v64 constraintLessThanOrEqualToAnchor:v63];
    v69[1] = v62;
    v61 = [(UIView *)v3->_labelsView leadingAnchor];
    v60 = [v17 leadingAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v69[2] = v59;
    v58 = [(UIView *)v3->_labelsView trailingAnchor];
    v57 = [v17 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v69[3] = v56;
    v55 = [(UIView *)v3->_labelsView centerYAnchor];
    v54 = [v17 centerYAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v69[4] = v53;
    v51 = [(_MKUILabel *)v3->_firstLineLabel topAnchor];
    v50 = [(UIView *)v3->_labelsView topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v69[5] = v49;
    v47 = [(_MKUILabel *)v3->_firstLineLabel leadingAnchor];
    v46 = [(UIView *)v3->_labelsView leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v69[6] = v45;
    v44 = [(_MKUILabel *)v3->_firstLineLabel trailingAnchor];
    v43 = [(UIView *)v3->_labelsView trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v69[7] = v42;
    v40 = [(_MKUILabel *)v3->_secondLineLabel topAnchor];
    v39 = [(_MKUILabel *)v3->_firstLineLabel bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:2.0];
    v69[8] = v38;
    v37 = [(_MKUILabel *)v3->_secondLineLabel bottomAnchor];
    v36 = [(UIView *)v3->_labelsView bottomAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v69[9] = v35;
    v34 = [(_MKUILabel *)v3->_secondLineLabel leadingAnchor];
    v33 = [(UIView *)v3->_labelsView leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v69[10] = v32;
    v31 = [(_MKUILabel *)v3->_secondLineLabel trailingAnchor];
    v30 = [(UIView *)v3->_labelsView trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v69[11] = v29;
    v18 = [(MKPhotoBigAttributionView *)v3 spinner];
    v19 = [v18 centerXAnchor];
    v20 = v17;
    v41 = v17;
    v21 = [v17 centerXAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v69[12] = v22;
    v23 = [(MKPhotoBigAttributionView *)v3 spinner];
    v24 = [v23 centerYAnchor];
    v25 = [v20 centerYAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v69[13] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:14];
    [v48 activateConstraints:v27];
  }

  return v3;
}

@end