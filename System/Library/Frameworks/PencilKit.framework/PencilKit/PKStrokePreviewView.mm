@interface PKStrokePreviewView
- (PKStrokePreviewView)initWithFrame:(CGRect)frame;
- (void)prepareWithFrame:(double)frame strokeBounds:(double)bounds strokes:(double)strokes;
@end

@implementation PKStrokePreviewView

- (PKStrokePreviewView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKStrokePreviewView;
  v3 = [(PKStrokePreviewView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKStrokePreviewView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)prepareWithFrame:(double)frame strokeBounds:(double)bounds strokes:(double)strokes
{
  v19 = a2;
  v20 = v19;
  if (self)
  {
    if ([v19 count])
    {
      if (!self[53])
      {
        v21 = objc_alloc_init(MEMORY[0x1E695F620]);
        v22 = self[53];
        self[53] = v21;
      }

      window = [self window];
      screen = [window screen];
      [screen nativeScale];
      v26 = v25;

      v27 = fmax(v26, 1.0);
      v28 = dispatch_semaphore_create(0);
      v29 = [[PKImageRenderer alloc] initWithSize:0 scale:0 renderQueue:strokes sixChannelBlending:a6, v27];
      currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      -[PKImageRenderer setInvertColors:](v29, "setInvertColors:", [currentTraitCollection userInterfaceStyle] == 2);

      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy__28;
      v67 = __Block_byref_object_dispose__28;
      v68 = 0;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __61__PKStrokePreviewView_prepareWithFrame_strokeBounds_strokes___block_invoke;
      v60[3] = &unk_1E82D82B8;
      v62 = &v63;
      v31 = v28;
      v61 = v31;
      [(PKImageRenderer *)v29 renderStrokes:v20 clippedToStrokeSpaceRect:v60 scale:a7 completion:a8, a9, a10, v27];
      dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
      traitCollection = [self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v34 = userInterfaceStyle == 2;
      if (userInterfaceStyle == 2)
      {
        v35 = 0.5;
      }

      else
      {
        v35 = 0.0;
      }

      colorMatrixFilter = [MEMORY[0x1E695F648] colorMatrixFilter];
      v37 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [colorMatrixFilter setRVector:v37];

      v38 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [colorMatrixFilter setGVector:v38];

      v39 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [colorMatrixFilter setBVector:v39];
      v40 = dbl_1C801EBE0[v34];

      v41 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v40];
      [colorMatrixFilter setAVector:v41];

      v42 = [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(v64[5], "CGImage")}];
      [colorMatrixFilter setInputImage:v42];

      outputImage = [colorMatrixFilter outputImage];
      v44 = [outputImage imageByApplyingGaussianBlurWithSigma:2.0];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [self setFrame:{frame, v59, strokes, a6}];
      if (!self[52])
      {
        v45 = objc_alloc_init(MEMORY[0x1E6979398]);
        v46 = self[52];
        self[52] = v45;

        layer = [self layer];
        [layer addSublayer:self[52]];
      }

      [self bounds];
      v70 = CGRectInset(v69, -2.0, -2.0);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
      v52 = [self[53] createCGImage:v44 fromRect:{v27 * v70.origin.x, v27 * v70.origin.y, v27 * v70.size.width, v27 * v70.size.height}];
      [self[52] setContents:v52];
      CGImageRelease(v52);
      [self[52] setFrame:{x + 2.0, y + 2.0, width, height}];
      if (!self[51])
      {
        v53 = objc_alloc_init(MEMORY[0x1E6979398]);
        v54 = self[51];
        self[51] = v53;

        layer2 = [self layer];
        [layer2 addSublayer:self[51]];
      }

      [self bounds];
      [self[51] setFrame:?];
      [self[51] setContents:{objc_msgSend(v64[5], "CGImage")}];
      [MEMORY[0x1E6979518] commit];

      _Block_object_dispose(&v63, 8);
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [self[51] removeFromSuperlayer];
      v56 = self[51];
      self[51] = 0;

      [self[52] removeFromSuperlayer];
      v57 = self[52];
      self[52] = 0;

      [MEMORY[0x1E6979518] commit];
      v58 = self[53];
      self[53] = 0;
    }
  }
}

void __61__PKStrokePreviewView_prepareWithFrame_strokeBounds_strokes___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end