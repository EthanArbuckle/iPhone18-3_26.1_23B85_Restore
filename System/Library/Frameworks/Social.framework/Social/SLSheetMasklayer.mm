@interface SLSheetMasklayer
- (SLSheetMasklayer)initWithBackgroundColor:(id)a3 cornerRadius:(double)a4;
- (void)animateSheetMaskFromOldSheetFrame:(CGRect)a3 toSheetFrame:(CGRect)a4 duration:(double)a5;
- (void)removeAllAnimations;
- (void)removeSheetCutout;
- (void)restoreSheetCutout;
- (void)updateMaskWithBounds:(CGRect)a3 maskRect:(CGRect)a4;
@end

@implementation SLSheetMasklayer

- (SLSheetMasklayer)initWithBackgroundColor:(id)a3 cornerRadius:(double)a4
{
  v31[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v30.receiver = self;
  v30.super_class = SLSheetMasklayer;
  v8 = [(SLSheetMasklayer *)&v30 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E6979398] layer];
    topLayer = v8->_topLayer;
    v8->_topLayer = v9;

    v11 = [MEMORY[0x1E6979398] layer];
    leftLayer = v8->_leftLayer;
    v8->_leftLayer = v11;

    v13 = [MEMORY[0x1E6979398] layer];
    bottomLayer = v8->_bottomLayer;
    v8->_bottomLayer = v13;

    v15 = [MEMORY[0x1E6979398] layer];
    rightLayer = v8->_rightLayer;
    v8->_rightLayer = v15;

    v17 = +[_SLSheetMaskLayer layer];
    sheetMaskLayer = v8->_sheetMaskLayer;
    v8->_sheetMaskLayer = v17;

    objc_storeStrong(&v8->_clipBackgroundColor, a3);
    v8->_clipCornerRadius = a4;
    objc_storeStrong(&v8->_backgroundColor, a3);
    v19 = [MEMORY[0x1E69DC888] clearColor];
    -[SLSheetMasklayer setBackgroundColor:](v8, "setBackgroundColor:", [v19 CGColor]);

    v31[0] = v8->_topLayer;
    v31[1] = v8->_leftLayer;
    v31[2] = v8->_bottomLayer;
    v31[3] = v8->_rightLayer;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __57__SLSheetMasklayer_initWithBackgroundColor_cornerRadius___block_invoke;
    v27[3] = &unk_1E8175F60;
    v21 = v7;
    v28 = v21;
    v22 = v8;
    v29 = v22;
    [v20 enumerateObjectsUsingBlock:v27];

    v23 = [MEMORY[0x1E6979398] layer];
    v24 = v22[11];
    v22[11] = v23;

    [v22[11] removeAllAnimations];
    [v22[11] setBackgroundColor:{objc_msgSend(v21, "CGColor")}];
    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer setBounds:0.0, 0.0, 200.0, 200.0];
    v25 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v25 scale];
    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer setContentsScale:?];

    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer setContentsCenter:0.5, 0.5, 0.100000001, 0.100000001];
    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer setClipBackgroundColor:v21];
    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer setClipCornerRadius:a4];
    [(_SLSheetMaskLayer *)v8->_sheetMaskLayer removeAllAnimations];
    [v22 addSublayer:v8->_sheetMaskLayer];
    [v22 removeAllAnimations];
  }

  return v8;
}

void __57__SLSheetMasklayer_initWithBackgroundColor_cornerRadius___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = a2;
  [v6 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];
  [v6 removeAllAnimations];
  [*(a1 + 40) addSublayer:v6];
}

- (void)removeAllAnimations
{
  v3.receiver = self;
  v3.super_class = SLSheetMasklayer;
  [(SLSheetMasklayer *)&v3 removeAllAnimations];
  [(CALayer *)self->_topLayer removeAllAnimations];
  [(CALayer *)self->_leftLayer removeAllAnimations];
  [(CALayer *)self->_bottomLayer removeAllAnimations];
  [(CALayer *)self->_rightLayer removeAllAnimations];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer removeAllAnimations];
}

- (void)removeSheetCutout
{
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer removeFromSuperlayer];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer frame];
  [(CALayer *)self->_solidSheetMaskLayer setFrame:?];
  solidSheetMaskLayer = self->_solidSheetMaskLayer;

  [(SLSheetMasklayer *)self addSublayer:solidSheetMaskLayer];
}

- (void)restoreSheetCutout
{
  [(CALayer *)self->_solidSheetMaskLayer frame];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer setFrame:?];
  [(CALayer *)self->_solidSheetMaskLayer removeFromSuperlayer];
  sheetMaskLayer = self->_sheetMaskLayer;

  [(SLSheetMasklayer *)self addSublayer:sheetMaskLayer];
}

- (void)animateSheetMaskFromOldSheetFrame:(CGRect)a3 toSheetFrame:(CGRect)a4 duration:(double)a5
{
  v69[5] = *MEMORY[0x1E69E9840];
  [(SLSheetMasklayer *)self frame];
  [SLSheetMasklayer updateMaskWithBounds:"updateMaskWithBounds:maskRect:" maskRect:?];
  v6 = MEMORY[0x1E696B098];
  [(CALayer *)self->_topLayer position];
  v7 = [v6 valueWithCGPoint:?];
  v69[0] = v7;
  v8 = MEMORY[0x1E696B098];
  [(CALayer *)self->_leftLayer position];
  v9 = [v8 valueWithCGPoint:?];
  v69[1] = v9;
  v10 = MEMORY[0x1E696B098];
  [(CALayer *)self->_bottomLayer position];
  v11 = [v10 valueWithCGPoint:?];
  v69[2] = v11;
  v12 = MEMORY[0x1E696B098];
  [(CALayer *)self->_rightLayer position];
  v13 = [v12 valueWithCGPoint:?];
  v69[3] = v13;
  v14 = MEMORY[0x1E696B098];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer position];
  v15 = [v14 valueWithCGPoint:?];
  v69[4] = v15;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];

  v16 = MEMORY[0x1E696B098];
  [(CALayer *)self->_topLayer bounds];
  v17 = [v16 valueWithCGRect:?];
  v68[0] = v17;
  v18 = MEMORY[0x1E696B098];
  [(CALayer *)self->_leftLayer bounds];
  v19 = [v18 valueWithCGRect:?];
  v68[1] = v19;
  v20 = MEMORY[0x1E696B098];
  [(CALayer *)self->_bottomLayer bounds];
  v21 = [v20 valueWithCGRect:?];
  v68[2] = v21;
  v22 = MEMORY[0x1E696B098];
  [(CALayer *)self->_rightLayer bounds];
  v23 = [v22 valueWithCGRect:?];
  v68[3] = v23;
  v24 = MEMORY[0x1E696B098];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer bounds];
  v25 = [v24 valueWithCGRect:?];
  v68[4] = v25;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];

  [(SLSheetMasklayer *)self frame];
  [SLSheetMasklayer updateMaskWithBounds:"updateMaskWithBounds:maskRect:" maskRect:?];
  v26 = MEMORY[0x1E696B098];
  [(CALayer *)self->_topLayer position];
  v27 = [v26 valueWithCGPoint:?];
  v67[0] = v27;
  v28 = MEMORY[0x1E696B098];
  [(CALayer *)self->_leftLayer position];
  v29 = [v28 valueWithCGPoint:?];
  v67[1] = v29;
  v30 = MEMORY[0x1E696B098];
  [(CALayer *)self->_bottomLayer position];
  v31 = [v30 valueWithCGPoint:?];
  v67[2] = v31;
  v32 = MEMORY[0x1E696B098];
  [(CALayer *)self->_rightLayer position];
  v33 = [v32 valueWithCGPoint:?];
  v67[3] = v33;
  v34 = MEMORY[0x1E696B098];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer position];
  v35 = [v34 valueWithCGPoint:?];
  v67[4] = v35;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];

  v36 = MEMORY[0x1E696B098];
  [(CALayer *)self->_topLayer bounds];
  v37 = [v36 valueWithCGRect:?];
  v66[0] = v37;
  v38 = MEMORY[0x1E696B098];
  [(CALayer *)self->_leftLayer bounds];
  v39 = [v38 valueWithCGRect:?];
  v66[1] = v39;
  v40 = MEMORY[0x1E696B098];
  [(CALayer *)self->_bottomLayer bounds];
  v41 = [v40 valueWithCGRect:?];
  v66[2] = v41;
  v42 = MEMORY[0x1E696B098];
  [(CALayer *)self->_rightLayer bounds];
  v43 = [v42 valueWithCGRect:?];
  v66[3] = v43;
  v44 = MEMORY[0x1E696B098];
  [(_SLSheetMaskLayer *)self->_sheetMaskLayer bounds];
  v45 = [v44 valueWithCGRect:?];
  v66[4] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:5];

  UIAnimationDragCoefficient();
  v48 = v47 * a5;
  leftLayer = self->_leftLayer;
  v65[0] = self->_topLayer;
  v65[1] = leftLayer;
  rightLayer = self->_rightLayer;
  v65[2] = self->_bottomLayer;
  v65[3] = rightLayer;
  v65[4] = self->_sheetMaskLayer;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:5];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __76__SLSheetMasklayer_animateSheetMaskFromOldSheetFrame_toSheetFrame_duration___block_invoke;
  v59[3] = &unk_1E8175F88;
  v64 = v48;
  v60 = v58;
  v61 = v56;
  v62 = v57;
  v63 = v46;
  v52 = v46;
  v53 = v57;
  v54 = v56;
  v55 = v58;
  [v51 enumerateObjectsUsingBlock:v59];
}

void __76__SLSheetMasklayer_animateSheetMaskFromOldSheetFrame_toSheetFrame_duration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E6979318];
  v6 = a2;
  v17 = [v5 animationWithKeyPath:@"position"];
  [v17 setDuration:*(a1 + 64)];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v17 setFromValue:v7];

  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v17 setToValue:v8];

  v9 = *MEMORY[0x1E6979EB8];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v17 setTimingFunction:v10];

  [v6 addAnimation:v17 forKey:0];
  v11 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v11 CGPointValue];
  [v6 setPosition:?];

  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  [v12 setDuration:*(a1 + 64)];
  v13 = [*(a1 + 48) objectAtIndexedSubscript:a3];
  [v12 setFromValue:v13];

  v14 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [v12 setToValue:v14];

  v15 = [MEMORY[0x1E69793D0] functionWithName:v9];
  [v12 setTimingFunction:v15];

  [v6 addAnimation:v12 forKey:0];
  v16 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [v16 CGRectValue];
  [v6 setBounds:?];
}

- (void)updateMaskWithBounds:(CGRect)a3 maskRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (!CGRectIsNull(a4))
  {
    v21.origin.x = v11;
    v21.origin.y = v10;
    v21.size.width = v9;
    v21.size.height = v8;
    if (!CGRectEqualToRect(self->_lastBounds, v21) || (v22.origin.x = x, v22.origin.y = y, v22.size.width = width, v22.size.height = height, !CGRectEqualToRect(self->_lastMaskRect, v22)))
    {
      self->_lastMaskRect.origin.x = x;
      self->_lastMaskRect.origin.y = y;
      self->_lastMaskRect.size.width = width;
      self->_lastMaskRect.size.height = height;
      self->_lastBounds.origin.x = v11;
      self->_lastBounds.origin.y = v10;
      self->_lastBounds.size.width = v9;
      self->_lastBounds.size.height = v8;
      [(SLSheetMasklayer *)self setFrame:v11, v10, v9, v8];
      [(CALayer *)self->_leftLayer setFrame:0.0, 0.0, x, v8];
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MaxX = CGRectGetMaxX(v17);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      [(CALayer *)self->_rightLayer setFrame:MaxX, 0.0, v9 - CGRectGetMaxX(v18), v8];
      [(CALayer *)self->_topLayer setFrame:x, 0.0, width, y];
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MaxY = CGRectGetMaxY(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      [(CALayer *)self->_bottomLayer setFrame:x, MaxY, width, v8 - CGRectGetMaxY(v20)];
      [(_SLSheetMaskLayer *)self->_sheetMaskLayer setFrame:x, y, width, height];
      sheetMaskLayer = self->_sheetMaskLayer;

      [(_SLSheetMaskLayer *)sheetMaskLayer setNeedsDisplay];
    }
  }
}

@end