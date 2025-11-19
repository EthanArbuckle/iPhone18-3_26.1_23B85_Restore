@interface PKToolPreviewView
- (PKToolPreviewView)initWithFrame:(CGRect)a3;
- (id)prepareWithFrame:(double)a3 mode:(double)a4;
- (void)layoutSubviews;
@end

@implementation PKToolPreviewView

- (PKToolPreviewView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKToolPreviewView;
  v3 = [(PKToolPreviewView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKToolPreviewView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)prepareWithFrame:(double)a3 mode:(double)a4
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [result layer];
  [v12 setAllowsGroupOpacity:0];

  v13 = [v11 layer];
  [v13 setAllowsGroupBlending:0];

  if (v11[51])
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v14 = v11[52];
    if (!v14)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v16 = &OBJC_IVAR___PKToolPreviewView__shapeLayer;
      v33 = v11[52];
      v11[52] = v32;

      v34 = [MEMORY[0x1E69DC888] clearColor];
      [v11[52] setFillColor:{objc_msgSend(v34, "CGColor")}];

      [v11[52] setLineWidth:1.0];
      v20 = [MEMORY[0x1E69DC888] whiteColor];
      [v11[52] setStrokeColor:{objc_msgSend(v20, "CGColor")}];
      goto LABEL_10;
    }

LABEL_11:
    [v11[51] setMask:v14];
    goto LABEL_12;
  }

  v29 = objc_alloc_init(MEMORY[0x1E6979310]);
  v30 = v11[51];
  v11[51] = v29;

  [(PKMetalView *)0.2 installLuminanceColorFilterOnLayer:PKMetalView lightLuma:v11[51] darkLuma:?];
  [v11[51] setReducesCaptureBitDepth:1];
  [v11[51] setIgnoresScreenClip:1];
  [v11[51] setScale:0.25];
  v31 = [v11 layer];
  [v31 addSublayer:v11[51]];

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a2 <= 3)
  {
    v14 = v11[53];
    if (!v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E6979398]);
      v16 = &OBJC_IVAR___PKToolPreviewView__symbolLayer;
      v17 = v11[53];
      v11[53] = v15;

      v18 = 8 * a2 - 8;
      v19 = *(off_1E82D8EF0 + v18);
      v20 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:*(&unk_1C801D2B8 + v18)];
      v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v19 withConfiguration:v20];
      [v21 size];
      v23 = v22;
      v25 = v24;
      [v21 scale];
      v27 = v26;
      v36.width = v23;
      v36.height = v25;
      UIGraphicsBeginImageContextWithOptions(v36, 0, v27);
      [v21 drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
      v28 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      [v11[53] setContents:{objc_msgSend(v28, "CGImage")}];

LABEL_10:
      v14 = *(v11 + *v16);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
  [v11 setFrame:{a3, a4, a5, a6}];

  return [v11 setNeedsLayout];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKToolPreviewView;
  [(PKToolPreviewView *)&v11 layoutSubviews];
  [(PKToolPreviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CABackdropLayer *)self->_backdropLayer setFrame:?];
  [(CAShapeLayer *)self->_shapeLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_symbolLayer setFrame:v4, v6, v8, v10];
}

@end