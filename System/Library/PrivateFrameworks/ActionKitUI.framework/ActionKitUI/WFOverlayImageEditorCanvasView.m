@interface WFOverlayImageEditorCanvasView
- (BOOL)isRotationEnabled;
- (UIImageView)backgroundImageView;
- (UIImageView)overlayImageView;
- (UIRotationGestureRecognizer)rotateRecognizer;
- (WFOverlayImageEditorCanvasView)initWithBackgroundImage:(id)a3 overlayImage:(id)a4 transform:(id)a5;
- (void)handlePanGesture:(id)a3;
- (void)handlePinchGesture:(id)a3;
- (void)handleRotateGesture:(id)a3;
- (void)layoutSubviews;
- (void)reset;
- (void)setOverlayImageOpacity:(double)a3;
@end

@implementation WFOverlayImageEditorCanvasView

- (UIImageView)overlayImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayImageView);

  return WeakRetained;
}

- (UIImageView)backgroundImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageView);

  return WeakRetained;
}

- (UIRotationGestureRecognizer)rotateRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_rotateRecognizer);

  return WeakRetained;
}

- (void)reset
{
  [(WFOverlayImageTransform *)self->_imageTransform setRotation:0.0];

  [(WFOverlayImageEditorCanvasView *)self setNeedsLayout];
}

- (void)setOverlayImageOpacity:(double)a3
{
  [(WFOverlayImageTransform *)self->_imageTransform setOpacity:a3];

  [(WFOverlayImageEditorCanvasView *)self setNeedsLayout];
}

- (BOOL)isRotationEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_rotateRecognizer);
  v3 = [WeakRetained isEnabled];

  return v3;
}

- (void)handlePinchGesture:(id)a3
{
  imageTransform = self->_imageTransform;
  v5 = a3;
  [v5 scale];
  v7 = v6;
  [(WFOverlayImageTransform *)imageTransform scale];
  [(WFOverlayImageTransform *)imageTransform setScale:v7 * v8];
  [(WFOverlayImageTransform *)self->_imageTransform center];
  v14 = v10;
  v15 = v9;
  [v5 scale];
  v12 = 1.0 / v11;
  [v5 scale];
  CGAffineTransformMakeScale(&v16, v12, 1.0 / v13);
  [(WFOverlayImageTransform *)self->_imageTransform setCenter:vaddq_f64(*&v16.tx, vmlaq_n_f64(vmulq_n_f64(*&v16.c, v14), *&v16.a, v15))];
  [v5 setScale:1.0];

  [(WFOverlayImageEditorCanvasView *)self setNeedsLayout];
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  [(WFOverlayImageEditorCanvasView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageView);
  v14 = [WeakRetained image];
  [v14 size];
  v16 = v15;
  v18 = v17;

  [v4 translationInView:self];
  v20 = v19;
  v22 = v21;
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  v23 = CGRectGetWidth(v33) / v16;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  v24 = fmin(v23, CGRectGetHeight(v34) / v18);
  [v4 setTranslation:self inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  [(WFOverlayImageTransform *)self->_imageTransform center];
  v30 = v26;
  v31 = v25;
  [(WFOverlayImageTransform *)self->_imageTransform scale];
  v28 = v20 / v24 / v27;
  [(WFOverlayImageTransform *)self->_imageTransform scale];
  CGAffineTransformMakeTranslation(&v32, v28, v22 / v24 / v29);
  [(WFOverlayImageTransform *)self->_imageTransform setCenter:vaddq_f64(*&v32.tx, vmlaq_n_f64(vmulq_n_f64(*&v32.c, v30), *&v32.a, v31))];
  [(WFOverlayImageEditorCanvasView *)self setNeedsLayout];
}

- (void)handleRotateGesture:(id)a3
{
  imageTransform = self->_imageTransform;
  v5 = a3;
  [v5 rotation];
  v7 = v6;
  [(WFOverlayImageTransform *)imageTransform rotation];
  [(WFOverlayImageTransform *)imageTransform setRotation:v7 + v8];
  [v5 setRotation:0.0];

  [(WFOverlayImageEditorCanvasView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = WFOverlayImageEditorCanvasView;
  [(WFOverlayImageEditorCanvasView *)&v49 layoutSubviews];
  [(WFOverlayImageEditorCanvasView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageView);
  v12 = [WeakRetained image];
  [v12 size];
  v14 = v13;
  v16 = v15;

  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  v17 = CGRectGetWidth(v50) / v14;
  v51.origin.x = v4;
  v51.origin.y = v6;
  v51.size.width = v8;
  v51.size.height = v10;
  memset(&v48, 0, sizeof(v48));
  v18 = fmin(v17, CGRectGetHeight(v51) / v16);
  CGAffineTransformMakeScale(&v48, v18, v18);
  v52.origin.x = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  MidY = CGRectGetMidY(v53);
  v21 = objc_loadWeakRetained(&self->_backgroundImageView);
  [v21 setCenter:{MidX, MidY}];

  v54.origin.x = *MEMORY[0x277CBF348];
  v54.origin.y = *(MEMORY[0x277CBF348] + 8);
  v54.size.width = v16 * v48.c + v48.a * v14;
  v54.size.height = v16 * v48.d + v48.b * v14;
  v55 = CGRectIntegral(v54);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v26 = objc_loadWeakRetained(&self->_backgroundImageView);
  [v26 setBounds:{x, y, width, height}];

  memset(&v47, 0, sizeof(v47));
  [(WFOverlayImageTransform *)self->_imageTransform scale];
  v28 = v27;
  [(WFOverlayImageTransform *)self->_imageTransform scale];
  CGAffineTransformMakeScale(&t1, v28, v29);
  t2 = v48;
  CGAffineTransformConcat(&v47, &t1, &t2);
  [(WFOverlayImageTransform *)self->_imageTransform rotation];
  CGAffineTransformMakeRotation(&v44, v30);
  v31 = objc_loadWeakRetained(&self->_overlayImageView);
  t1 = v44;
  [v31 setTransform:&t1];

  [(WFOverlayImageTransform *)self->_imageTransform center];
  v43 = vaddq_f64(*&v47.tx, vmlaq_n_f64(vmulq_n_f64(*&v47.c, v32), *&v47.a, v33));
  v34 = objc_loadWeakRetained(&self->_overlayImageView);
  [v34 setCenter:*&v43];

  [(WFOverlayImageTransform *)self->_imageTransform bounds];
  t1 = v47;
  v57 = CGRectApplyAffineTransform(v56, &t1);
  v35 = v57.origin.x;
  v36 = v57.origin.y;
  v37 = v57.size.width;
  v38 = v57.size.height;
  v39 = objc_loadWeakRetained(&self->_overlayImageView);
  [v39 setBounds:{v35, v36, v37, v38}];

  [(WFOverlayImageTransform *)self->_imageTransform opacity];
  v41 = v40;
  v42 = objc_loadWeakRetained(&self->_overlayImageView);
  [v42 setAlpha:v41];
}

- (WFOverlayImageEditorCanvasView)initWithBackgroundImage:(id)a3 overlayImage:(id)a4 transform:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = WFOverlayImageEditorCanvasView;
  v11 = [(WFOverlayImageEditorCanvasView *)&v21 init];
  v12 = v11;
  if (v11)
  {
    [(WFOverlayImageEditorCanvasView *)v11 setClipsToBounds:1];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    [v13 setUserInteractionEnabled:1];
    [v13 setClipsToBounds:1];
    [(WFOverlayImageEditorCanvasView *)v12 addSubview:v13];
    objc_storeWeak(&v12->_backgroundImageView, v13);
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    [v14 setUserInteractionEnabled:1];
    [v14 setContentMode:1];
    WeakRetained = objc_loadWeakRetained(&v12->_backgroundImageView);
    [WeakRetained addSubview:v14];

    objc_storeWeak(&v12->_overlayImageView, v14);
    objc_storeStrong(&v12->_imageTransform, a5);
    v16 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:v12 action:sel_handlePinchGesture_];
    [v16 setDelegate:v12];
    [(WFOverlayImageEditorCanvasView *)v12 addGestureRecognizer:v16];
    v17 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v12 action:sel_handlePanGesture_];
    [v17 setDelegate:v12];
    [(WFOverlayImageEditorCanvasView *)v12 addGestureRecognizer:v17];
    v18 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:v12 action:sel_handleRotateGesture_];
    [v18 setDelegate:v12];
    [(WFOverlayImageEditorCanvasView *)v12 addGestureRecognizer:v18];
    objc_storeWeak(&v12->_rotateRecognizer, v18);
    v19 = v12;
  }

  return v12;
}

@end