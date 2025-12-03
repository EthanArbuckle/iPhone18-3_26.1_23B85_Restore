@interface SLSheetVideoPreviewView
- (CGSize)intrinsicContentSize;
- (SLSheetVideoPreviewView)initWithFrame:(CGRect)frame;
- (void)_applyConstraints;
- (void)setVideoDuration:(double)duration;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SLSheetVideoPreviewView

- (SLSheetVideoPreviewView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = SLSheetVideoPreviewView;
  v3 = [(SLSheetImagePreviewView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SLSheetVideoPreviewView *)v3 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
    [(SLSheetVideoPreviewView *)v4 setBounds:0.0, 0.0, v5, v7];
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v6, v8}];
    [(SLSheetImagePreviewView *)v4 setImageView:v9];

    imageView = [(SLSheetImagePreviewView *)v4 imageView];
    [imageView setContentMode:2];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    imageView2 = [(SLSheetImagePreviewView *)v4 imageView];
    [imageView2 setBackgroundColor:clearColor];

    imageView3 = [(SLSheetImagePreviewView *)v4 imageView];
    [(SLSheetVideoPreviewView *)v4 addSubview:imageView3];

    v14 = objc_alloc(MEMORY[0x1E69DD250]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    infoBar = v4->_infoBar;
    v4->_infoBar = v15;

    v17 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.699999988];
    [(UIView *)v4->_infoBar setBackgroundColor:v17];

    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v19 = [MEMORY[0x1E69DCAB8] socialFrameworkImageNamed:@"SLSheetVideoGlyph"];
    v20 = [v19 imageWithRenderingMode:2];
    v21 = [v18 initWithImage:v20];
    videoGlyphView = v4->_videoGlyphView;
    v4->_videoGlyphView = v21;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v4->_videoGlyphView setTintColor:whiteColor];

    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 40.0, 22.0}];
    durationLabel = v4->_durationLabel;
    v4->_durationLabel = v24;

    v26 = MEMORY[0x1E69DB878];
    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v27 _scaledValueForValue:12.0];
    v28 = [v26 systemFontOfSize:?];
    [(UILabel *)v4->_durationLabel setFont:v28];

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_durationLabel setTextColor:whiteColor2];

    [(UIView *)v4->_infoBar addSubview:v4->_videoGlyphView];
    [(UIView *)v4->_infoBar addSubview:v4->_durationLabel];
    [(SLSheetVideoPreviewView *)v4 addSubview:v4->_infoBar];
    [(SLSheetVideoPreviewView *)v4 _applyConstraints];
    [(SLSheetVideoPreviewView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(SLSheetVideoPreviewView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {

    v4 = 60.0;
    v5 = 89.0;
  }

  else
  {
    traitCollection2 = [(SLSheetVideoPreviewView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];

    v4 = 60.0;
    if (horizontalSizeClass != 1)
    {
      v4 = 61.0;
    }

    v5 = dbl_1C23F4540[horizontalSizeClass == 1];
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = SLSheetVideoPreviewView;
  [(SLSheetImagePreviewView *)&v16 traitCollectionDidChange:changeCopy];
  traitCollection = [(SLSheetVideoPreviewView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    v6 = 1;
  }

  else
  {
    traitCollection2 = [(SLSheetVideoPreviewView *)self traitCollection];
    v6 = [traitCollection2 horizontalSizeClass] == 1;
  }

  v8 = [changeCopy verticalSizeClass] == 1 || objc_msgSend(changeCopy, "horizontalSizeClass") == 1;
  if (v6 != v8)
  {
    [(SLSheetVideoPreviewView *)self invalidateIntrinsicContentSize];
  }

  traitCollection3 = [(SLSheetVideoPreviewView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v12 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E69DB878];
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v14 _scaledValueForValue:12.0];
    v15 = [v13 systemFontOfSize:?];
    [(UILabel *)self->_durationLabel setFont:v15];
  }
}

- (void)setVideoDuration:(double)duration
{
  if (duration > 86400.0 || duration < 0.0)
  {
    durationLabel = self->_durationLabel;

    [(UILabel *)durationLabel setText:&stru_1F41EC300];
  }

  else
  {
    v4 = llround(duration);
    v5 = ((((34953 * (v4 % 3600)) >> 16) >> 5) + (((v4 % 3600 + ((-30583 * (v4 % 3600)) >> 16)) & 0x8000) >> 15));
    v6 = (v4 % 3600 - 60 * ((((34953 * (v4 % 3600)) >> 16) >> 5) + (((v4 % 3600 + ((-30583 * (v4 % 3600)) >> 16)) & 0x8000) >> 15)));
    if ((v4 + 3599) > 0x1C1E)
    {
      v11 = v4 / 3600;
      v12 = MEMORY[0x1E696AEC0];
      v8 = SLSocialFrameworkBundle();
      v9 = [v8 localizedStringForKey:@"SHEET_PREVIEW_VIDEO_DURATION_LONG" value:&stru_1F41EC300 table:@"Localizable"];
      [v12 stringWithFormat:v9, v11, v5, v6];
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = SLSocialFrameworkBundle();
      v9 = [v8 localizedStringForKey:@"SHEET_PREVIEW_VIDEO_DURATION_SHORT" value:&stru_1F41EC300 table:@"Localizable"];
      [v7 stringWithFormat:v9, v5, v6, v13];
    }
    v14 = ;

    [(UILabel *)self->_durationLabel setText:v14];
    [(UILabel *)self->_durationLabel invalidateIntrinsicContentSize];
  }
}

- (void)_applyConstraints
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(UIImageView *)self->_videoGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_durationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_infoBar setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_videoGlyphView attribute:1 relatedBy:0 toItem:self->_infoBar attribute:1 multiplier:1.0 constant:6.0];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_durationLabel attribute:2 relatedBy:0 toItem:self->_infoBar attribute:2 multiplier:1.0 constant:-6.0];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_videoGlyphView attribute:10 relatedBy:0 toItem:self->_infoBar attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_durationLabel attribute:10 relatedBy:0 toItem:self->_infoBar attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v7];

  [(UIView *)self->_infoBar addConstraints:v3];
  v8 = objc_opt_new();
  v9 = MEMORY[0x1E696ACD8];
  infoBar = self->_infoBar;
  v19 = @"infoBar";
  v20[0] = infoBar;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v12 = [v9 constraintsWithVisualFormat:@"|[infoBar]|" options:0 metrics:0 views:v11];
  [v8 addObjectsFromArray:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = self->_infoBar;
  v17 = @"infoBar";
  v18 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v16 = [v13 constraintsWithVisualFormat:@"V:[infoBar(==22@999)]|" options:0 metrics:0 views:v15];
  [v8 addObjectsFromArray:v16];

  [(SLSheetVideoPreviewView *)self addConstraints:v8];
}

@end