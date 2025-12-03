@interface ASVBadgeView
+ (id)badgeForThumbnail:(id)thumbnail;
+ (id)badgeView;
+ (id)highlightedBlurViewEffects;
+ (id)normalBlurViewEffects;
+ (void)applyBlurWithBackground:(id)background offset:(CGPoint)offset;
- (CGSize)intrinsicContentSize;
- (CGSize)thumbnailSize;
- (void)_updateShadow;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setThumbnailSize:(CGSize)size;
- (void)setUpView;
@end

@implementation ASVBadgeView

+ (id)badgeView
{
  v2 = objc_opt_new();
  [v2 setUpView];

  return v2;
}

+ (id)normalBlurViewEffects
{
  if (normalBlurViewEffects_onceToken != -1)
  {
    +[ASVBadgeView normalBlurViewEffects];
  }

  v3 = normalBlurViewEffects_blurViewEffects;

  return v3;
}

void __37__ASVBadgeView_normalBlurViewEffects__block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75358];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 colorEffectMonochromeTint:v1 blendingAmount:0.82 brightnessAdjustment:0.0];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v9[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.8];
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v8 = normalBlurViewEffects_blurViewEffects;
  normalBlurViewEffects_blurViewEffects = v7;
}

+ (id)highlightedBlurViewEffects
{
  if (highlightedBlurViewEffects_onceToken != -1)
  {
    +[ASVBadgeView highlightedBlurViewEffects];
  }

  v3 = highlightedBlurViewEffects_highlightedBlurViewEffects;

  return v3;
}

void __42__ASVBadgeView_highlightedBlurViewEffects__block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75358];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 colorEffectMonochromeTint:v1 blendingAmount:0.52 brightnessAdjustment:0.0];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v9[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.8];
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v8 = highlightedBlurViewEffects_highlightedBlurViewEffects;
  highlightedBlurViewEffects_highlightedBlurViewEffects = v7;
}

- (void)setUpView
{
  [(ASVBadgeView *)self setOpaque:0];
  v3 = objc_opt_new();
  shadowView = self->_shadowView;
  self->_shadowView = v3;

  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowOffset:{0.0, 0.0}];

  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.06];
  cGColor = [v6 CGColor];
  layer2 = [(UIView *)self->_shadowView layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(UIView *)self->_shadowView layer];
  LODWORD(v10) = 1.0;
  [layer3 setShadowOpacity:v10];

  [(UIView *)self->_shadowView setAutoresizingMask:18];
  [(ASVBadgeView *)self bounds];
  [(UIView *)self->_shadowView setFrame:?];
  v11 = objc_opt_new();
  blurView = self->_blurView;
  self->_blurView = v11;

  v13 = +[ASVBadgeView normalBlurViewEffects];
  [(UIVisualEffectView *)self->_blurView setBackgroundEffects:v13];

  [(UIVisualEffectView *)self->_blurView setAutoresizingMask:18];
  [(ASVBadgeView *)self bounds];
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(UIVisualEffectView *)self->_blurView setClipsToBounds:1];
  v14 = objc_opt_new();
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = v14;

  [(UIImageView *)self->_badgeImageView setAutoresizingMask:18];
  [(ASVBadgeView *)self bounds];
  [(UIImageView *)self->_badgeImageView setFrame:?];
  [(ASVBadgeView *)self addSubview:self->_shadowView];
  [(ASVBadgeView *)self addSubview:self->_blurView];
  v16 = self->_badgeImageView;

  [(ASVBadgeView *)self addSubview:v16];
}

- (void)setThumbnailSize:(CGSize)size
{
  self->_thumbnailSize = size;
  v4 = [ASVBadgeDescription descriptionForSize:?];
  badgeDescription = self->_badgeDescription;
  self->_badgeDescription = v4;

  badgeDescription = [(ASVBadgeView *)self badgeDescription];
  badgeImage = [badgeDescription badgeImage];
  [(UIImageView *)self->_badgeImageView setImage:badgeImage];

  badgeDescription2 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription2 badgeSize];
  v10 = v9 * 0.5;
  layer = [(UIVisualEffectView *)self->_blurView layer];
  [layer setCornerRadius:v10];

  [(ASVBadgeView *)self _updateShadow];

  [(ASVBadgeView *)self invalidateIntrinsicContentSize];
}

- (void)_updateShadow
{
  badgeDescription = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription shadowSize];
  v5 = v4;
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowRadius:v5];

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  badgeDescription2 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription2 badgeSize];
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v7, v8, v11, v13}];
  cGPath = [v14 CGPath];
  layer2 = [(UIView *)self->_shadowView layer];
  [layer2 setShadowPath:cGPath];

  badgeDescription3 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription3 shadowSize];
  v19 = v18 * -2.0;
  badgeDescription4 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription4 shadowSize];
  v22 = v21 * -2.0;
  v44.origin.x = v7;
  v44.origin.y = v8;
  v44.size.width = v11;
  v44.size.height = v13;
  v45 = CGRectInset(v44, v19, v22);
  y = v45.origin.y;
  x = v45.origin.x;
  width = v45.size.width;
  height = v45.size.height;

  badgeDescription5 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription5 shadowSize];
  v27 = v26 + v26;
  badgeDescription6 = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription6 shadowSize];
  v30 = v29 + v29;
  v46.origin.x = v7;
  v46.origin.y = v8;
  v46.size.width = v11;
  v46.size.height = v13;
  v47 = CGRectOffset(v46, v27, v30);
  v31 = v47.origin.x;
  v32 = v47.origin.y;
  v33 = v47.size.width;
  v34 = v47.size.height;

  v42 = [MEMORY[0x277D75208] bezierPathWithRect:{v7, v8, width, height}];
  v35 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v31, v32, v33, v34}];
  bezierPathByReversingPath = [v35 bezierPathByReversingPath];
  [v42 appendPath:bezierPathByReversingPath];

  v37 = objc_opt_new();
  v38 = v42;
  [v37 setPath:{objc_msgSend(v42, "CGPath")}];
  [v37 setFrame:{x, y, width, height}];
  layer3 = [(UIView *)self->_shadowView layer];
  [layer3 setMask:v37];
}

- (void)setHighlighted:(BOOL)highlighted
{
  self->_highlighted = highlighted;
  if (highlighted)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(UIImageView *)self->_badgeImageView setDrawMode:v5];
  if (highlighted)
  {
    +[ASVBadgeView highlightedBlurViewEffects];
  }

  else
  {
    +[ASVBadgeView normalBlurViewEffects];
  }
  v6 = ;
  [(UIVisualEffectView *)self->_blurView setBackgroundEffects:v6];
}

- (CGSize)intrinsicContentSize
{
  badgeDescription = [(ASVBadgeView *)self badgeDescription];
  [badgeDescription badgeSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (id)badgeForThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  [thumbnailCopy size];
  v6 = v5;
  v7 = [ASVBadgeDescription descriptionForSize:?];
  [v7 badgeSize];
  v9 = v8;
  v11 = v10;
  [v7 shadowSize];
  v13 = v12;
  [v7 badgeOffset];
  v15 = v6 - (v9 + v13 * 2.0) - v14;
  [v7 badgeOffset];
  v17 = v16;
  v18 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v9 + v13 * 2.0, v11 + v13 * 2.0}];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __34__ASVBadgeView_badgeForThumbnail___block_invoke;
  v23[3] = &unk_278CCB018;
  v25 = v7;
  selfCopy = self;
  v27 = v15;
  v28 = v17;
  v24 = thumbnailCopy;
  v29 = v13;
  v30 = v9;
  v31 = v11;
  v19 = v7;
  v20 = thumbnailCopy;
  v21 = [v18 imageWithActions:v23];

  return v21;
}

void __34__ASVBadgeView_badgeForThumbnail___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = -*(a1 + 56);
  v6 = -*(a1 + 64);
  v7 = a2;
  [v3 applyBlurWithBackground:v4 offset:{v5, v6}];
  v8 = [*(a1 + 40) badgeImage];
  [v8 drawInRect:{*(a1 + 72), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  v9 = [v7 currentImage];
  v10 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{*(a1 + 72), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v7 CGContext];
  CGContextClear();
  [v10 addClip];
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [v9 drawAtPoint:{*MEMORY[0x277CBF348], v12}];
  CGContextResetClip([v7 CGContext]);
  v13 = [v7 currentImage];

  v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.06];
  v15 = [v7 CGContext];
  v16 = *(a1 + 72);
  v17 = [v14 CGColor];
  CGContextSetShadowWithColor(v15, *MEMORY[0x277CBF3A8], v16, v17);
  v19 = [v7 currentImage];

  v18 = [v7 currentImage];

  [v18 drawAtPoint:{v11, v12}];
}

+ (void)applyBlurWithBackground:(id)background offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  backgroundCopy = background;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v33 = [MEMORY[0x277CBF740] contextWithOptions:0];
  v10 = backgroundCopy;
  if ([backgroundCopy ioSurface])
  {
    [MEMORY[0x277CBF758] imageWithIOSurface:{objc_msgSend(backgroundCopy, "ioSurface")}];
  }

  else
  {
    [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(backgroundCopy, "CGImage")}];
  }
  v11 = ;
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v34[0] = *MEMORY[0x277CBF2C0];
  v34[1] = v12;
  v34[2] = *(MEMORY[0x277CBF2C0] + 32);
  v13 = MEMORY[0x277CBF750];
  v14 = v11;
  v15 = [v13 filterWithName:@"CIAffineClamp"];
  v16 = *MEMORY[0x277CBFAF0];
  [v15 setValue:v14 forKey:*MEMORY[0x277CBFAF0]];

  v17 = [MEMORY[0x277CCAE60] valueWithBytes:v34 objCType:"{CGAffineTransform=dddddd}"];
  v32 = v15;
  [v15 setValue:v17 forKey:*MEMORY[0x277CBFB38]];

  outputImage = [v15 outputImage];
  v19 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur"];
  [v19 setDefaults];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v9 * 10.0];
  [v19 setValue:v20 forKey:*MEMORY[0x277CBFB08]];

  [v19 setValue:outputImage forKey:v16];
  outputImage2 = [v19 outputImage];

  v22 = [MEMORY[0x277CBF750] filterWithName:@"CIColorControls"];
  [v22 setValue:outputImage2 forKey:v16];
  [v22 setValue:&unk_2853135E0 forKey:*MEMORY[0x277CBFB10]];
  outputImage3 = [v22 outputImage];

  v24 = [MEMORY[0x277CBF750] filterWithName:@"CIConstantColorGenerator"];
  v31 = [MEMORY[0x277CBF730] colorWithString:@"1.0 1.0 1.0 0.405"];
  [v24 setValue:v31 forKey:*MEMORY[0x277CBFAD0]];
  outputImage4 = [v24 outputImage];
  v26 = [MEMORY[0x277CBF750] filterWithName:@"CIAdditionCompositing"];
  [v26 setValue:outputImage4 forKey:v16];
  [v26 setValue:outputImage3 forKey:*MEMORY[0x277CBFAB8]];
  outputImage5 = [v26 outputImage];

  [v14 extent];
  v28 = [v33 createCGImage:outputImage5 fromRect:?];
  v29 = MEMORY[0x277D755B8];
  [v10 scale];
  v30 = [v29 imageWithCGImage:v28 scale:0 orientation:?];
  CGImageRelease(v28);
  [v30 drawAtPoint:{x, y}];
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end