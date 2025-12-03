@interface PKPaletteTooltipPresentationHandle
- (PKPaletteTooltipPresentationHandle)initWithHostingView:(id)view;
- (void)hideFloatingLabel;
- (void)showWithText:(id)text fromView:(id)view rect:(CGRect)rect atEdge:(unint64_t)edge offset:(double)offset traitCollection:(id)collection;
@end

@implementation PKPaletteTooltipPresentationHandle

- (PKPaletteTooltipPresentationHandle)initWithHostingView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = PKPaletteTooltipPresentationHandle;
  v5 = [(PKPaletteTooltipPresentationHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, viewCopy);
  }

  return v6;
}

- (void)showWithText:(id)text fromView:(id)view rect:(CGRect)rect atEdge:(unint64_t)edge offset:(double)offset traitCollection:(id)collection
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  viewCopy = view;
  collectionCopy = collection;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideFloatingLabel object:0];
  [(PKPaletteTooltipPresentationHandle *)self hideFloatingLabel];
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);
  if (WeakRetained)
  {
    offsetCopy = offset;
    v51.origin.x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(viewCopy, WeakRetained, x, y, width, height);
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
    v26 = [(PKFloatingLabelView *)MidX floatingLabelViewWithString:PKFloatingLabelView font:textCopy location:0 traitCollection:collectionCopy];
    floatingLabel = self->_floatingLabel;
    self->_floatingLabel = v26;

    [(UIView *)self->_floatingLabel frame];
    v30 = v29;
    v31 = v28;
    v33 = v32;
    v35 = v34;
    if (edge > 3)
    {
      if (edge == 4)
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
        v36 = CGRectGetMinY(v65) - offsetCopy;
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

      if (edge == 8)
      {
        v56.origin.x = v20;
        v56.origin.y = v21;
        v56.size.width = v22;
        v56.size.height = v23;
        v47 = CGRectGetMinX(v56) - offsetCopy;
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
      if (edge == 1)
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
        v36 = CGRectGetMaxY(v61) + offsetCopy;
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

      if (edge == 2)
      {
        v53.origin.x = v20;
        v53.origin.y = v21;
        v53.size.width = v22;
        v53.size.height = v23;
        v47 = CGRectGetMaxX(v53) + offsetCopy;
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