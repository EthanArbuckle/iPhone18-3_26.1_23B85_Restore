@interface AVPictureInPictureIndicatorSublayer
- (AVPictureInPictureIndicatorSublayer)init;
- (AVPictureInPictureIndicatorSublayer)initWithDisplayScale:(double)a3 placeholderImage:(CGImage *)a4 opaque:(BOOL)a5;
- (BOOL)canRenderAttributedTextWithoutTruncationInsideRect:(CGRect)a3;
- (CGRect)textBoundingRectWhenDrawnInRect:(CGRect)a3;
- (void)layoutSublayers;
- (void)layoutSublayersWithTextAndImageUsingInsetBounds:(CGRect)a3;
- (void)setCustomText:(id)a3;
@end

@implementation AVPictureInPictureIndicatorSublayer

- (BOOL)canRenderAttributedTextWithoutTruncationInsideRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(NSAttributedString *)self->_attributedText boundingRectWithSize:1 options:0 context:CGRectGetWidth(a3), 1000.0];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = width;
  v12 = height;
  v13 = *MEMORY[0x1E695EFF8];
  v14 = v10;

  return CGRectContainsRect(*&v9, *&v13);
}

- (CGRect)textBoundingRectWhenDrawnInRect:(CGRect)a3
{
  [(NSAttributedString *)self->_attributedText boundingRectWithSize:1 options:0 context:a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layoutSublayersWithTextAndImageUsingInsetBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVPictureInPictureIndicatorSublayer *)self bounds];
  rect_16 = v8;
  v68 = v10;
  v70 = v9;
  v66 = v11;
  textLayer = self->_textLayer;
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  if (CGRectGetWidth(v86) <= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v13 = CGRectGetHeight(v87) <= 0.0;
  }

  [(CATextLayer *)textLayer setHidden:v13];
  [(AVPictureInPictureIndicatorSublayer *)self textBoundingRectWhenDrawnInRect:x, y, width, height];
  rect = x;
  rect_8 = width;
  v65 = y;
  v14 = v88.origin.x;
  v15 = v88.origin.y;
  v16 = v88.size.width;
  v82 = height;
  v17 = v88.size.height;
  v18 = CGRectGetHeight(v88);
  lineHeight = self->_lineHeight;
  if (lineHeight < 13.0)
  {
    lineHeight = 13.0;
  }

  v20 = v18 / lineHeight;
  left = self->_languageAwareOutsets.left;
  v22 = v14 - left;
  v23 = v15 - self->_languageAwareOutsets.top * v20;
  v83 = v16 - (-self->_languageAwareOutsets.right - left);
  v24 = v17 - (-(self->_languageAwareOutsets.top * v20) - v20 * self->_languageAwareOutsets.bottom);
  [(AVPictureInPictureIndicatorSublayer *)self textBoundingRectWhenDrawnInRect:v22, v23];
  v75 = v25;
  v81 = v26;
  v74 = v27;
  v84 = v28;
  p_imageSize = &self->_imageSize;
  v61 = self->_imageSize.height;
  v62 = self->_imageSize.width;
  v89.origin.x = rect_16;
  v89.origin.y = v70;
  v89.size.width = v68;
  v89.size.height = v66;
  MidX = CGRectGetMidX(v89);
  v90.origin.x = rect_16;
  v90.origin.y = v70;
  v90.size.width = v68;
  v90.size.height = v66;
  MidY = CGRectGetMidY(v90);
  v73 = v22;
  v91.origin.x = v22;
  v91.origin.y = v23;
  v91.size.width = v83;
  v91.size.height = v24;
  v64 = MidY + CGRectGetMidY(v91);
  v92.origin.x = v75;
  v92.origin.y = v81;
  v92.size.width = v74;
  v92.size.height = v84;
  v63 = CGRectGetMidY(v92);
  v93.origin.x = rect_16;
  v93.origin.y = v70;
  v93.size.width = v68;
  v93.size.height = v66;
  rect_24 = CGRectGetMidX(v93);
  v94.origin.x = rect_16;
  v94.origin.y = v70;
  v94.size.width = v68;
  v94.size.height = v66;
  rect_16a = CGRectGetMidY(v94);
  v69 = self->_imageSize.height;
  v71 = self->_imageSize.width;
  baselineOffset = self->_baselineOffset;
  v95.origin.x = rect;
  v95.origin.y = v65;
  v95.size.width = width;
  v95.size.height = v82;
  v31 = CGRectGetHeight(v95);
  v96.origin.x = v75;
  v96.origin.y = v81;
  v96.size.width = v74;
  v96.size.height = v84;
  v67 = round(24.0 - baselineOffset);
  v32 = v31 - CGRectGetHeight(v96) - v67;
  imageLayer = self->_imageLayer;
  if (v32 >= 48.0)
  {
    v97.origin.x = rect;
    v34 = v65;
    v97.origin.y = v65;
    v97.size.width = width;
    v97.size.height = v82;
    v35 = v82;
    v36 = CGRectGetWidth(v97) < v71 / v69 * 48.0;
  }

  else
  {
    v34 = v65;
    v35 = v82;
    v36 = 1;
  }

  v37 = v64 - v63;
  [(CALayer *)imageLayer setHidden:v36];
  if ([(CALayer *)self->_imageLayer isHidden]|| self->_imageSize.width * self->_imageSize.height <= 0.0)
  {
    v47 = v61;
    v46 = v62;
  }

  else
  {
    v38 = round(32.0 - baselineOffset);
    v98.origin.x = rect;
    v98.size.width = rect_8;
    v98.origin.y = v34;
    v98.size.height = v35;
    v39 = CGRectGetWidth(v98);
    v40 = p_imageSize->width;
    v41 = self->_imageSize.height;
    if (v39 >= p_imageSize->width)
    {
      v39 = p_imageSize->width;
    }

    if (v32 >= v41)
    {
      v42 = self->_imageSize.height;
    }

    else
    {
      v42 = v32;
    }

    v43 = v39 / v40;
    v44 = v42 / v41;
    if (v43 >= v44)
    {
      v43 = v44;
    }

    v45 = fmin(v43, 1.0);
    v46 = v40 * v45;
    v47 = v41 * v45;
    v99.origin.x = 0.0;
    v99.origin.y = 0.0;
    v99.size.width = v46;
    v99.size.height = v47;
    v48 = v32 - CGRectGetHeight(v99);
    if (v67 >= v48)
    {
      v48 = v67;
    }

    if (v48 < v38)
    {
      v38 = v48;
    }

    v100.origin.x = v75;
    v100.origin.y = v81;
    v100.size.width = v74;
    v100.size.height = v84;
    v49 = CGRectGetHeight(v100) + v38;
    v101.origin.x = 0.0;
    v101.origin.y = 0.0;
    v101.size.width = v46;
    v101.size.height = v47;
    rect_24 = rect_24 + v45 * 3.0;
    v50 = (CGRectGetHeight(v101) + v49) * 0.5;
    v102.origin.x = 0.0;
    v102.origin.y = 0.0;
    v102.size.width = v46;
    v102.size.height = v47;
    rect_16a = rect_16a - (v50 - CGRectGetMidY(v102));
    v103.origin.x = v75;
    v103.origin.y = v81;
    v103.size.width = v74;
    v103.size.height = v84;
    v37 = v37 + v50 - CGRectGetMidY(v103);
  }

  [(CALayer *)self->_imageLayer setPosition:round(rect_24), round(rect_16a)];
  [(CATextLayer *)self->_textLayer setPosition:round(MidX), round(v37)];
  v51 = self->_imageLayer;
  v104.origin.x = 0.0;
  v104.origin.y = 0.0;
  v104.size.width = v46;
  v104.size.height = v47;
  v52 = round(CGRectGetMinX(v104));
  v105.origin.x = 0.0;
  v105.origin.y = 0.0;
  v105.size.width = v46;
  v105.size.height = v47;
  v53 = round(CGRectGetMinY(v105));
  v106.origin.x = 0.0;
  v106.origin.y = 0.0;
  v106.size.width = v46;
  v106.size.height = v47;
  v54 = round(CGRectGetWidth(v106));
  v107.origin.x = 0.0;
  v107.origin.y = 0.0;
  v107.size.width = v46;
  v107.size.height = v47;
  [(CALayer *)v51 setBounds:v52, v53, v54, round(CGRectGetHeight(v107))];
  v55 = self->_textLayer;
  v108.origin.x = v73;
  v108.origin.y = v23;
  v108.size.width = v83;
  v108.size.height = v24;
  v56 = round(CGRectGetMinX(v108));
  v109.origin.x = v73;
  v109.origin.y = v23;
  v109.size.width = v83;
  v109.size.height = v24;
  v57 = round(CGRectGetMinY(v109));
  v110.origin.x = v73;
  v110.origin.y = v23;
  v110.size.width = v83;
  v110.size.height = v24;
  v58 = round(CGRectGetWidth(v110));
  v111.origin.x = v73;
  v111.origin.y = v23;
  v111.size.width = v83;
  v111.size.height = v24;
  v59 = round(CGRectGetHeight(v111));

  [(CATextLayer *)v55 setBounds:v56, v57, v58, v59];
}

- (void)layoutSublayers
{
  v13.receiver = self;
  v13.super_class = AVPictureInPictureIndicatorSublayer;
  [(AVPictureInPictureIndicatorSublayer *)&v13 layoutSublayers];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVPictureInPictureIndicatorSublayer *)self bounds];
  v7 = 8.0;
  if (fmin(v6 + -16.0, v5 + -16.0) > 32.0)
  {
    v7 = 16.0;
  }

  v14 = CGRectInset(*&v3, v7, v7);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if ([(AVPictureInPictureIndicatorSublayer *)self canRenderAttributedTextWithoutTruncationInsideRect:?])
  {
    [(AVPictureInPictureIndicatorSublayer *)self layoutSublayersWithTextAndImageUsingInsetBounds:x, y, width, height];
  }

  else
  {
    [(CALayer *)self->_imageLayer setHidden:0];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v15 = AVMakeRectWithAspectRatioInsideRect(self->_imageSize, v18);
    [(CALayer *)self->_imageLayer setBounds:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = round(CGRectGetMidX(v16));
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [(CALayer *)self->_imageLayer setPosition:v12, round(CGRectGetMidY(v17))];
    [(CATextLayer *)self->_textLayer setHidden:1];
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)setCustomText:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(__CFString *)v4 isEqualToString:self->_customText]& 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &stru_1EFED57D8;
    }

    v9 = *MEMORY[0x1E69DB650];
    v15[0] = *MEMORY[0x1E69DB648];
    v15[1] = v9;
    v16[0] = v6;
    v16[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v7 initWithString:v8 attributes:v10];
    attributedText = self->_attributedText;
    self->_attributedText = v11;

    v13 = [(__CFString *)v4 copy];
    customText = self->_customText;
    self->_customText = v13;

    [(CATextLayer *)self->_textLayer setString:v4];
    [(AVPictureInPictureIndicatorSublayer *)self setNeedsLayout];
  }
}

- (AVPictureInPictureIndicatorSublayer)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _AVMethodProem(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithTraitCollection:opaque:].", v5, v7}];

  return [(AVPictureInPictureIndicatorSublayer *)self initWithDisplayScale:0 placeholderImage:0 opaque:1.0];
}

- (AVPictureInPictureIndicatorSublayer)initWithDisplayScale:(double)a3 placeholderImage:(CGImage *)a4 opaque:(BOOL)a5
{
  v5 = a5;
  v32[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AVPictureInPictureIndicatorSublayer;
  v8 = [(AVPictureInPictureIndicatorSublayer *)&v30 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69DC888] AV_indicatorBackgroundColor];
    v10 = [v9 CGColor];

    v11 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [v12 lineHeight];
    v8->_lineHeight = v13;
    if (v5)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    [(AVPictureInPictureIndicatorSublayer *)v8 setBackgroundColor:v14];
    Width = CGImageGetWidth(a4);
    Height = CGImageGetHeight(a4);
    v8->_imageSize.width = Width;
    v8->_imageSize.height = Height;
    v17 = AVLocalizedString(@"PICTURE_IN_PICTURE_INDICATOR_LAYER_TITLE");
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = *MEMORY[0x1E69DB650];
    v31[0] = *MEMORY[0x1E69DB648];
    v31[1] = v19;
    v32[0] = v12;
    v32[1] = v11;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v21 = [v18 initWithString:v17 attributes:v20];
    attributedText = v8->_attributedText;
    v8->_attributedText = v21;

    [v12 ascender];
    v8->_baselineOffset = v23;
    CTFontGetLanguageAwareOutsets();
    v8->_languageAwareOutsets.top = 0.0;
    v8->_languageAwareOutsets.left = 0.0;
    v8->_languageAwareOutsets.bottom = 0.0;
    v8->_languageAwareOutsets.right = 0.0;
    v24 = [MEMORY[0x1E6979398] layer];
    imageLayer = v8->_imageLayer;
    v8->_imageLayer = v24;

    [(CALayer *)v8->_imageLayer setContents:a4];
    [(CALayer *)v8->_imageLayer setContentsGravity:*MEMORY[0x1E6979DE0]];
    [(CALayer *)v8->_imageLayer setContentsScale:a3];
    v26 = v8->_imageLayer;
    [(AVPictureInPictureIndicatorSublayer *)v8 bounds];
    [(CALayer *)v26 setBounds:?];
    [(AVPictureInPictureIndicatorSublayer *)v8 addSublayer:v8->_imageLayer];
    v27 = [MEMORY[0x1E6979508] layer];
    textLayer = v8->_textLayer;
    v8->_textLayer = v27;

    [(CATextLayer *)v8->_textLayer setFont:v12];
    [(CATextLayer *)v8->_textLayer setFontSize:13.0];
    -[CATextLayer setForegroundColor:](v8->_textLayer, "setForegroundColor:", [v11 CGColor]);
    [(CATextLayer *)v8->_textLayer setAlignmentMode:*MEMORY[0x1E6979560]];
    [(CATextLayer *)v8->_textLayer setContentsScale:a3];
    [(CATextLayer *)v8->_textLayer setString:v8->_attributedText];
    [(CATextLayer *)v8->_textLayer setTruncationMode:*MEMORY[0x1E697A060]];
    [(CATextLayer *)v8->_textLayer setWrapped:1];
    [(AVPictureInPictureIndicatorSublayer *)v8 addSublayer:v8->_textLayer];
  }

  return v8;
}

@end