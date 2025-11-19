@interface PKStrokePreviewView
- (PKStrokePreviewView)initWithFrame:(CGRect)a3;
- (void)prepareWithFrame:(double)a3 strokeBounds:(double)a4 strokes:(double)a5;
@end

@implementation PKStrokePreviewView

- (PKStrokePreviewView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKStrokePreviewView;
  v3 = [(PKStrokePreviewView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKStrokePreviewView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)prepareWithFrame:(double)a3 strokeBounds:(double)a4 strokes:(double)a5
{
  v19 = a2;
  v20 = v19;
  if (a1)
  {
    if ([v19 count])
    {
      if (!a1[53])
      {
        v21 = objc_alloc_init(MEMORY[0x1E695F620]);
        v22 = a1[53];
        a1[53] = v21;
      }

      v23 = [a1 window];
      v24 = [v23 screen];
      [v24 nativeScale];
      v26 = v25;

      v27 = fmax(v26, 1.0);
      v28 = dispatch_semaphore_create(0);
      v29 = [[PKImageRenderer alloc] initWithSize:0 scale:0 renderQueue:a5 sixChannelBlending:a6, v27];
      v30 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      -[PKImageRenderer setInvertColors:](v29, "setInvertColors:", [v30 userInterfaceStyle] == 2);

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
      v32 = [a1 traitCollection];
      v33 = [v32 userInterfaceStyle];

      v34 = v33 == 2;
      if (v33 == 2)
      {
        v35 = 0.5;
      }

      else
      {
        v35 = 0.0;
      }

      v36 = [MEMORY[0x1E695F648] colorMatrixFilter];
      v37 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [v36 setRVector:v37];

      v38 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [v36 setGVector:v38];

      v39 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v35];
      [v36 setBVector:v39];
      v40 = dbl_1C801EBE0[v34];

      v41 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v40];
      [v36 setAVector:v41];

      v42 = [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(v64[5], "CGImage")}];
      [v36 setInputImage:v42];

      v43 = [v36 outputImage];
      v44 = [v43 imageByApplyingGaussianBlurWithSigma:2.0];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [a1 setFrame:{a3, v59, a5, a6}];
      if (!a1[52])
      {
        v45 = objc_alloc_init(MEMORY[0x1E6979398]);
        v46 = a1[52];
        a1[52] = v45;

        v47 = [a1 layer];
        [v47 addSublayer:a1[52]];
      }

      [a1 bounds];
      v70 = CGRectInset(v69, -2.0, -2.0);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
      v52 = [a1[53] createCGImage:v44 fromRect:{v27 * v70.origin.x, v27 * v70.origin.y, v27 * v70.size.width, v27 * v70.size.height}];
      [a1[52] setContents:v52];
      CGImageRelease(v52);
      [a1[52] setFrame:{x + 2.0, y + 2.0, width, height}];
      if (!a1[51])
      {
        v53 = objc_alloc_init(MEMORY[0x1E6979398]);
        v54 = a1[51];
        a1[51] = v53;

        v55 = [a1 layer];
        [v55 addSublayer:a1[51]];
      }

      [a1 bounds];
      [a1[51] setFrame:?];
      [a1[51] setContents:{objc_msgSend(v64[5], "CGImage")}];
      [MEMORY[0x1E6979518] commit];

      _Block_object_dispose(&v63, 8);
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [a1[51] removeFromSuperlayer];
      v56 = a1[51];
      a1[51] = 0;

      [a1[52] removeFromSuperlayer];
      v57 = a1[52];
      a1[52] = 0;

      [MEMORY[0x1E6979518] commit];
      v58 = a1[53];
      a1[53] = 0;
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