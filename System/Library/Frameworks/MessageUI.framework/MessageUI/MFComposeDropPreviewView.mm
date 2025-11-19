@interface MFComposeDropPreviewView
- (MFComposeDropPreviewView)initWithFrame:(CGRect)a3;
- (void)setFinalImage:(id)a3;
- (void)setPreviewClippingPath:(id)a3;
- (void)setPreviewView:(id)a3;
@end

@implementation MFComposeDropPreviewView

- (MFComposeDropPreviewView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MFComposeDropPreviewView;
  v3 = [(MFComposeDropPreviewView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] mailGeneralBackgroundColor];
    [(MFComposeDropPreviewView *)v3 setBackgroundColor:v4];

    [(MFComposeDropPreviewView *)v3 setClipsToBounds:1];
    [(MFComposeDropPreviewView *)v3 setOpaque:1];
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(MFComposeDropPreviewView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    [(MFComposeDropPreviewView *)v3 setImageView:v6];

    v7 = [(MFComposeDropPreviewView *)v3 imageView];
    [v7 setContentMode:0];

    v8 = [(MFComposeDropPreviewView *)v3 imageView];
    [v8 setAutoresizingMask:18];

    v9 = [(MFComposeDropPreviewView *)v3 imageView];
    [(MFComposeDropPreviewView *)v3 addSubview:v9];
  }

  return v3;
}

- (void)setPreviewView:(id)a3
{
  v5 = a3;
  if (self->_previewView != v5)
  {
    objc_storeStrong(&self->_previewView, a3);
    v6 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MFComposeDropPreviewView_setPreviewView___block_invoke;
    v7[3] = &unk_1E806C520;
    v8 = v5;
    v9 = self;
    [v6 performWithoutAnimation:v7];
  }
}

uint64_t __43__MFComposeDropPreviewView_setPreviewView___block_invoke(uint64_t a1)
{
  [*(a1 + 40) bounds];
  [*(a1 + 32) setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 addSubview:v3];
}

- (void)setPreviewClippingPath:(id)a3
{
  v5 = a3;
  if (self->_previewClippingPath != v5)
  {
    objc_storeStrong(&self->_previewClippingPath, a3);
    if (self->_previewClippingPath)
    {
      v6 = [(MFComposeDropPreviewView *)self previewClippingPath];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [(MFComposeDropPreviewView *)self previewView];
      [v15 convertRect:self toView:{v8, v10, v12, v14}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      [(MFComposeDropPreviewView *)self bounds];
      x = v43.origin.x;
      y = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
      MidX = CGRectGetMidX(v43);
      v44.origin.x = v17;
      v44.origin.y = v19;
      v44.size.width = v21;
      v44.size.height = v23;
      v37 = CGRectGetMidX(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      MidY = CGRectGetMidY(v45);
      v46.origin.x = v17;
      v46.origin.y = v19;
      v46.size.width = v21;
      v46.size.height = v23;
      v35 = CGRectGetMidY(v46);
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v34 = CGRectGetWidth(v47);
      v48.origin.x = v17;
      v48.origin.y = v19;
      v48.size.width = v21;
      v48.size.height = v23;
      v33 = CGRectGetWidth(v48);
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v28 = CGRectGetHeight(v49);
      v50.origin.x = v17;
      v50.origin.y = v19;
      v50.size.width = v21;
      v50.size.height = v23;
      v29 = CGRectGetHeight(v50);
      *&v30 = -1;
      *(&v30 + 1) = -1;
      *&v42.c = v30;
      *&v42.tx = v30;
      *&v42.a = v30;
      v31 = v28 / v29;
      CGAffineTransformMakeScale(&v42, v34 / v33, v28 / v29);
      v40 = v42;
      CGAffineTransformTranslate(&v41, &v40, (MidX - v37) / (v34 / v33), (MidY - v35) / v31);
      v42 = v41;
      v39 = v41;
      v32 = [(MFComposeDropPreviewView *)self previewView];
      v41 = v39;
      [v32 setTransform:&v41];
    }
  }
}

- (void)setFinalImage:(id)a3
{
  v5 = a3;
  if (self->_finalImage != v5)
  {
    objc_storeStrong(&self->_finalImage, a3);
    v6 = [(MFComposeDropPreviewView *)self imageView];
    [v6 setImage:v5];

    v7 = [(MFComposeDropPreviewView *)self previewView];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __42__MFComposeDropPreviewView_setFinalImage___block_invoke;
      v8[3] = &unk_1E806C570;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
    }
  }
}

void __42__MFComposeDropPreviewView_setFinalImage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) previewView];
  [v1 setAlpha:0.0];
}

@end