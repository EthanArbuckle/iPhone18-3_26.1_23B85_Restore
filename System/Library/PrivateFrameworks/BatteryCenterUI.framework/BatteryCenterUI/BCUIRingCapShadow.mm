@interface BCUIRingCapShadow
+ (id)_ringCapShadowImageWithRingBounds:(CGRect)a3 lineWidth:(double)a4 scale:(double)a5;
+ (id)ringCapShadowForRingWithBounds:(CGRect)a3 lineWidth:(double)a4;
- (CGRect)_shadowCapFrame;
- (CGRect)ringBounds;
- (id)_initWithRingBounds:(CGRect)a3 lineWidth:(double)a4;
- (void)layoutSubviews;
- (void)setArcFraction:(double)a3;
@end

@implementation BCUIRingCapShadow

+ (id)ringCapShadowForRingWithBounds:(CGRect)a3 lineWidth:(double)a4
{
  v4 = [[BCUIRingCapShadow alloc] _initWithRingBounds:a3.origin.x lineWidth:a3.origin.y, a3.size.width, a3.size.height, a4];

  return v4;
}

- (void)setArcFraction:(double)a3
{
  if (self->_arcFraction != a3)
  {
    self->_arcFraction = a3;
    [(BCUIRingCapShadow *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = BCUIRingCapShadow;
  [(BCUIRingCapShadow *)&v23 layoutSubviews];
  [(BCUIRingCapShadow *)self _shadowCapFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  shadowCapImageView = self->_shadowCapImageView;
  if (shadowCapImageView)
  {
    [(UIImageView *)shadowCapImageView transform];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__BCUIRingCapShadow_layoutSubviews__block_invoke;
  v19[3] = &unk_1E814ECE8;
  v19[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v19];
  [(UIImageView *)self->_shadowCapImageView setFrame:v4, v6, v8, v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = v20;
  v15[2] = __35__BCUIRingCapShadow_layoutSubviews__block_invoke_2;
  v15[3] = &unk_1E814EE50;
  v15[4] = self;
  v17 = v21;
  v18 = v22;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
  v12 = (self->_arcFraction + -0.75 + self->_arcFraction + -0.75) * 3.14159265;
  v13 = self->_shadowCapImageView;
  CGAffineTransformMakeRotation(&v14, v12);
  [(UIImageView *)v13 setTransform:&v14];
}

uint64_t __35__BCUIRingCapShadow_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __35__BCUIRingCapShadow_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

+ (id)_ringCapShadowImageWithRingBounds:(CGRect)a3 lineWidth:(double)a4 scale:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = MEMORY[0x1E696AEC0];
  v12 = CGRectGetWidth(a3);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = [v11 stringWithFormat:@"ringCapShadow-%fx%f%f@%f", *&v12, CGRectGetHeight(v19), *&a4, *&a5];
  v14 = +[BCUIMappedImageCache sharedCache];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__BCUIRingCapShadow__ringCapShadowImageWithRingBounds_lineWidth_scale___block_invoke;
  v17[3] = &__block_descriptor_80_e18___UIImage_16__0_Q8l;
  *&v17[4] = x;
  *&v17[5] = y;
  *&v17[6] = width;
  *&v17[7] = height;
  *&v17[8] = a4;
  *&v17[9] = a5;
  v15 = [v14 imageForKey:v13 generatingIfNecessaryWithBlock:v17];

  return v15;
}

id __71__BCUIRingCapShadow__ringCapShadowImageWithRingBounds_lineWidth_scale___block_invoke(double *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = a1[8];
  v1 = a1[9];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v38[4] = *MEMORY[0x1E695F060];
  *v26 = 1065353216;
  *&v26[4] = *v38;
  *&v26[20] = *&v38[16];
  v27 = 0x4014000000000000;
  v7 = [MEMORY[0x1E69DCAB8] mt_shadowTemplateImageWithAttributes:v26 scale:0 maskCornerRadius:0 continuousCorners:v1 maskSize:v2 * 0.5 resizableCapInsets:{v2 * 0.5 + v2 * 0.5, v2 * 0.5 + v2 * 0.5}];
  v8 = [v7 imageWithRenderingMode:2];

  v9 = objc_alloc_init(BCUIRingView);
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [(BCUIRingView *)v9 setStrokeColor:v10];

  [(BCUIRingView *)v9 setFrame:v3, v4, v5, v6];
  [(BCUIRingView *)v9 setRingStart:0.755];
  [(BCUIRingView *)v9 setRingEnd:1.0];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v41.origin.x = v3;
  v41.origin.y = v4;
  v41.size.width = v5;
  v41.size.height = v6;
  Width = CGRectGetWidth(v41);
  v42.origin.x = v3;
  v42.origin.y = v4;
  v42.size.width = v5;
  v42.size.height = v6;
  Height = CGRectGetHeight(v42);
  v14 = CGBitmapContextCreate(0, Width, Height, 8uLL, 0, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  v15 = [(BCUIRingView *)v9 layer];
  [v15 renderInContext:v14];

  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);

  [v8 size];
  v18 = v17;
  v20 = v19;
  v21 = [MEMORY[0x1E69DCA80] preferredFormat];
  [v21 setScale:v1];
  v22 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v21 format:{v18, v20}];
  *v26 = MEMORY[0x1E69E9820];
  *&v26[8] = 3221225472;
  *&v26[16] = __NewRingCapShadowImage_block_invoke;
  v27 = &unk_1E814EE98;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v2;
  v34 = v1;
  v35 = v18;
  v36 = v20;
  v37 = Image;
  v28 = v8;
  v23 = v8;
  v24 = [v22 imageWithActions:v26];

  return v24;
}

- (id)_initWithRingBounds:(CGRect)a3 lineWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21.receiver = self;
  v21.super_class = BCUIRingCapShadow;
  v9 = [(BCUIRingCapShadow *)&v21 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    v9->_ringBounds.origin.x = x;
    v9->_ringBounds.origin.y = y;
    v9->_ringBounds.size.width = width;
    v9->_ringBounds.size.height = height;
    v9->_lineWidth = a4;
    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = objc_opt_class();
    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v15 = [v12 _ringCapShadowImageWithRingBounds:x lineWidth:y scale:{width, height, a4, v14}];
    v16 = [v11 initWithImage:v15];
    v17 = p_isa[51];
    p_isa[51] = v16;

    [p_isa addSubview:p_isa[51]];
    v18 = [p_isa layer];
    [v18 setAllowsGroupBlending:0];

    v19 = [p_isa[51] layer];
    [v19 setCompositingFilter:*MEMORY[0x1E6979CE8]];
  }

  return p_isa;
}

- (CGRect)_shadowCapFrame
{
  v16 = CGRectInset(self->_ringBounds, self->_lineWidth * 0.5, self->_lineWidth * 0.5);
  CoordinatesOfPointAtArcFraction(v16.origin.x, v16.origin.y, v16.size.width, v16.size.height, self->_arcFraction);
  UIPointRoundToScale();
  v4 = v3;
  v6 = v5;
  v7 = [(UIImageView *)self->_shadowCapImageView image];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = v4 - v9 * 0.5;
  v13 = v6 - v11 * 0.5;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)ringBounds
{
  x = self->_ringBounds.origin.x;
  y = self->_ringBounds.origin.y;
  width = self->_ringBounds.size.width;
  height = self->_ringBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end