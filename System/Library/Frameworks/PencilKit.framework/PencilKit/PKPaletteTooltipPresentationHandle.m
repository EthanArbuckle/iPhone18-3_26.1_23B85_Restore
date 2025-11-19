@interface PKPaletteTooltipPresentationHandle
- (PKPaletteTooltipPresentationHandle)initWithHostingView:(id)a3;
- (void)hideFloatingLabel;
- (void)showWithText:(id)a3 fromView:(id)a4 rect:(CGRect)a5 atEdge:(unint64_t)a6 offset:(double)a7 traitCollection:(id)a8;
@end

@implementation PKPaletteTooltipPresentationHandle

- (PKPaletteTooltipPresentationHandle)initWithHostingView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPaletteTooltipPresentationHandle;
  v5 = [(PKPaletteTooltipPresentationHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, v4);
  }

  return v6;
}

- (void)showWithText:(id)a3 fromView:(id)a4 rect:(CGRect)a5 atEdge:(unint64_t)a6 offset:(double)a7 traitCollection:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v49 = a3;
  v17 = a4;
  v18 = a8;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideFloatingLabel object:0];
  [(PKPaletteTooltipPresentationHandle *)self hideFloatingLabel];
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);
  if (WeakRetained)
  {
    v48 = a7;
    v51.origin.x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v17, WeakRetained, x, y, width, height);
    v20 = v51.origin.x;
    v21 = v51.origin.y;
    v22 = v51.size.width;
    v23 = v51.size.height;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = v20;
    v52.origin.y = v21;
    v52.size.width = v22;
    v52.size.height = v23;
    MidY = CGRectGetMidY(v52);
    v26 = [(PKFloatingLabelView *)MidX floatingLabelViewWithString:PKFloatingLabelView font:v49 location:0 traitCollection:v18];
    floatingLabel = self->_floatingLabel;
    self->_floatingLabel = v26;

    [(UIView *)self->_floatingLabel frame];
    v30 = v29;
    v31 = v28;
    v33 = v32;
    v35 = v34;
    if (a6 > 3)
    {
      if (a6 == 4)
      {
        v64.origin.x = v20;
        v64.origin.y = v21;
        v64.size.width = v22;
        v64.size.height = v23;
        v47 = CGRectGetMidX(v64);
        v65.origin.x = v20;
        v65.origin.y = v21;
        v65.size.width = v22;
        v65.size.height = v23;
        v36 = CGRectGetMinY(v65) - v48;
        v66.origin.x = v30;
        v66.origin.y = v31;
        v66.size.width = v33;
        v66.size.height = v35;
        v38 = CGRectGetMidX(v66);
        v67.origin.x = v30;
        v67.origin.y = v31;
        v67.size.width = v33;
        v67.size.height = v35;
        MaxY = CGRectGetMaxY(v67);
        goto LABEL_13;
      }

      if (a6 == 8)
      {
        v56.origin.x = v20;
        v56.origin.y = v21;
        v56.size.width = v22;
        v56.size.height = v23;
        v47 = CGRectGetMinX(v56) - v48;
        v57.origin.x = v20;
        v57.origin.y = v21;
        v57.size.width = v22;
        v57.size.height = v23;
        v36 = CGRectGetMidY(v57);
        v58.origin.x = v30;
        v58.origin.y = v31;
        v58.size.width = v33;
        v58.size.height = v35;
        MaxX = CGRectGetMaxX(v58);
        goto LABEL_9;
      }
    }

    else
    {
      if (a6 == 1)
      {
        v60.origin.x = v20;
        v60.origin.y = v21;
        v60.size.width = v22;
        v60.size.height = v23;
        v47 = CGRectGetMidX(v60);
        v61.origin.x = v20;
        v61.origin.y = v21;
        v61.size.width = v22;
        v61.size.height = v23;
        v36 = CGRectGetMaxY(v61) + v48;
        v62.origin.x = v30;
        v62.origin.y = v31;
        v62.size.width = v33;
        v62.size.height = v35;
        v38 = CGRectGetMidX(v62);
        v63.origin.x = v30;
        v63.origin.y = v31;
        v63.size.width = v33;
        v63.size.height = v35;
        MaxY = CGRectGetMinY(v63);
        goto LABEL_13;
      }

      if (a6 == 2)
      {
        v53.origin.x = v20;
        v53.origin.y = v21;
        v53.size.width = v22;
        v53.size.height = v23;
        v47 = CGRectGetMaxX(v53) + v48;
        v54.origin.x = v20;
        v54.origin.y = v21;
        v54.size.width = v22;
        v54.size.height = v23;
        v36 = CGRectGetMidY(v54);
        v55.origin.x = v30;
        v55.origin.y = v31;
        v55.size.width = v33;
        v55.size.height = v35;
        MaxX = CGRectGetMinX(v55);
LABEL_9:
        v38 = MaxX;
        v59.origin.x = v30;
        v59.origin.y = v31;
        v59.size.width = v33;
        v59.size.height = v35;
        MaxY = CGRectGetMidY(v59);
LABEL_13:
        v40 = v47;
        goto LABEL_14;
      }
    }

    MaxY = v28;
    v38 = v30;
    v36 = v28;
    v40 = v30;
LABEL_14:
    v41 = v30 + v40 - v38;
    v42 = v31 + v36 - MaxY;
    [WeakRetained bounds];
    [(UIView *)self->_floatingLabel setFrame:DKDUpdateFixedSizeRectToFitInsideRectIfPossible(v41, v42, v33, v35, v43, v44, v45, v46)];
    [WeakRetained addSubview:self->_floatingLabel];
    [(PKPaletteTooltipPresentationHandle *)self performSelector:sel_hideFloatingLabel withObject:0 afterDelay:1.0];
  }
}

- (void)hideFloatingLabel
{
  [(UIView *)self->_floatingLabel removeFromSuperview];
  floatingLabel = self->_floatingLabel;
  self->_floatingLabel = 0;
}

@end