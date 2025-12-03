@interface AXElementNamesItemView
- (AXElementNamesItemView)initWithName:(id)name elementFrame:(CGRect)frame availableBounds:(CGRect)bounds styleProvider:(id)provider isSpacer:(BOOL)spacer;
- (BOOL)_usesExtendedArrow;
- (BOOL)collidesWithView:(id)view;
- (CGPoint)arrowTipLocation;
- (CGRect)_collisionFrameForArrow;
- (CGRect)_elementFrameAdjustedForBounds;
- (CGRect)_validateLabelContainerFrame:(CGRect)frame;
- (CGRect)availableBounds;
- (CGRect)elementFrame;
- (CGRect)labelContainerFrame;
- (CGSize)forcedLabelContainerSize;
- (CGSize)labelContainerSize;
- (double)_arrowHeight;
- (double)_cornerRadius;
- (id)_newBackgroundImage;
- (void)_updateFromLabelContainerFrame;
- (void)_updateFromMainProperties;
- (void)_updateLabelContainerSize;
- (void)layoutSubviews;
- (void)setForcedLabelContainerSize:(CGSize)size;
- (void)setLabelContainerFrame:(CGRect)frame;
- (void)setLabelPosition:(int64_t)position;
@end

@implementation AXElementNamesItemView

- (AXElementNamesItemView)initWithName:(id)name elementFrame:(CGRect)frame availableBounds:(CGRect)bounds styleProvider:(id)provider isSpacer:(BOOL)spacer
{
  spacerCopy = spacer;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = frame.size.height;
  v14 = frame.size.width;
  v15 = frame.origin.y;
  v16 = frame.origin.x;
  nameCopy = name;
  providerCopy = provider;
  v34.receiver = self;
  v34.super_class = AXElementNamesItemView;
  v20 = [(AXElementNamesItemView *)&v34 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v20)
  {
    itemBackgroundViewCreationHandler = [providerCopy itemBackgroundViewCreationHandler];

    if (itemBackgroundViewCreationHandler)
    {
      itemBackgroundViewCreationHandler2 = [providerCopy itemBackgroundViewCreationHandler];
      v23 = itemBackgroundViewCreationHandler2[2]();
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x1E69DD298]);
      itemBackgroundViewCreationHandler2 = [MEMORY[0x1E69DC730] effectWithStyle:2];
      v23 = [v24 initWithEffect:itemBackgroundViewCreationHandler2];
    }

    backgroundView = v20->_backgroundView;
    v20->_backgroundView = v23;

    [(AXElementNamesItemView *)v20 addSubview:v20->_backgroundView];
    v26 = objc_opt_new();
    backgroundMaskView = v20->_backgroundMaskView;
    v20->_backgroundMaskView = v26;

    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v20->_label;
    v20->_label = v28;

    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v20->_label setFont:v30];

    [(UILabel *)v20->_label setAdjustsFontForContentSizeCategory:1];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v20->_label setTextColor:whiteColor];

    [(UILabel *)v20->_label setTextAlignment:1];
    [(AXElementNamesItemView *)v20 addSubview:v20->_label];
    v32 = 4;
    if (!spacerCopy)
    {
      v32 = 0;
    }

    v20->_labelPosition = v32;
    [(UILabel *)v20->_label setText:nameCopy];
    v20->_elementFrame.origin.x = v16;
    v20->_elementFrame.origin.y = v15;
    v20->_elementFrame.size.width = v14;
    v20->_elementFrame.size.height = v13;
    v20->_availableBounds.origin.x = x;
    v20->_availableBounds.origin.y = y;
    v20->_availableBounds.size.width = width;
    v20->_availableBounds.size.height = height;
    v20->_isSpacer = spacerCopy;
    [(AXElementNamesItemView *)v20 _updateLabelContainerSize];
    [(AXElementNamesItemView *)v20 _updateFromMainProperties];
  }

  return v20;
}

- (void)setLabelPosition:(int64_t)position
{
  if (self->_labelPosition != position)
  {
    self->_labelPosition = position;
    [(AXElementNamesItemView *)self _updateFromMainProperties];
  }
}

- (void)setForcedLabelContainerSize:(CGSize)size
{
  if (self->_forcedLabelContainerSize.width != size.width || self->_forcedLabelContainerSize.height != size.height)
  {
    self->_forcedLabelContainerSize = size;
    [(AXElementNamesItemView *)self _updateLabelContainerSize];

    [(AXElementNamesItemView *)self _updateFromMainProperties];
  }
}

- (void)setLabelContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_labelContainerFrame = &self->_labelContainerFrame;
  if (!CGRectEqualToRect(self->_labelContainerFrame, frame))
  {
    p_labelContainerFrame->origin.x = x;
    p_labelContainerFrame->origin.y = y;
    p_labelContainerFrame->size.width = width;
    p_labelContainerFrame->size.height = height;

    [(AXElementNamesItemView *)self _updateFromLabelContainerFrame];
  }
}

- (BOOL)collidesWithView:(id)view
{
  viewCopy = view;
  [(AXElementNamesItemView *)self labelContainerFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [viewCopy labelContainerFrame];
  v51.origin.x = v13;
  v51.origin.y = v14;
  v51.size.width = v15;
  v51.size.height = v16;
  v43.origin.x = v6;
  v43.origin.y = v8;
  v43.size.width = v10;
  v43.size.height = v12;
  if (CGRectIntersectsRect(v43, v51) || (-[AXElementNamesItemView _collisionFrameForArrow](self, "_collisionFrameForArrow"), v20 = v19, v22 = v21, v24 = v23, v26 = v25, [viewCopy _collisionFrameForArrow], v28 = v27, v30 = v29, v32 = v31, v34 = v33, v44.origin.x = v20, v44.origin.y = v22, v44.size.width = v24, v44.size.height = v26, !CGRectIsNull(v44)) && (v45.origin.x = v28, v45.origin.y = v30, v45.size.width = v32, v45.size.height = v34, !CGRectIsNull(v45)) && (v46.origin.x = v20, v46.origin.y = v22, v46.size.width = v24, v46.size.height = v26, v52.origin.x = v28, v52.origin.y = v30, v52.size.width = v32, v52.size.height = v34, CGRectIntersectsRect(v46, v52)) || (v47.origin.x = v20, v47.origin.y = v22, v47.size.width = v24, v47.size.height = v26, !CGRectIsNull(v47)) && (objc_msgSend(viewCopy, "labelContainerFrame"), v53.origin.x = v35, v53.origin.y = v36, v53.size.width = v37, v53.size.height = v38, v48.origin.x = v20, v48.origin.y = v22, v48.size.width = v24, v48.size.height = v26, CGRectIntersectsRect(v48, v53)))
  {
    v17 = 1;
  }

  else
  {
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    if (CGRectIsNull(v49))
    {
      v17 = 0;
    }

    else
    {
      [(AXElementNamesItemView *)self labelContainerFrame];
      v54.origin.x = v39;
      v54.origin.y = v40;
      v54.size.width = v41;
      v54.size.height = v42;
      v50.origin.x = v28;
      v50.origin.y = v30;
      v50.size.width = v32;
      v50.size.height = v34;
      v17 = CGRectIntersectsRect(v50, v54);
    }
  }

  return v17;
}

- (CGRect)_collisionFrameForArrow
{
  if ([(AXElementNamesItemView *)self _usesArrow])
  {
    [(AXElementNamesItemView *)self arrowTipLocation];
    v4 = v3;
    v6 = v5 + -15.0;
    if ([(AXElementNamesItemView *)self _arrowPointsDown])
    {
      v7 = v4 + -9.0;
    }

    else
    {
      v7 = v4;
    }

    v8 = 15.0;
    v9 = 9.0;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  v10 = v6;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v10;
  return result;
}

- (CGRect)_elementFrameAdjustedForBounds
{
  if ([(AXElementNamesItemView *)self isSpacer])
  {
    [(AXElementNamesItemView *)self elementFrame];
  }

  else
  {
    [(AXElementNamesItemView *)self availableBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(AXElementNamesItemView *)self elementFrame];
    v21.origin.x = v15;
    v21.origin.y = v16;
    v21.size.width = v17;
    v21.size.height = v18;
    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    *&v3 = CGRectIntersection(v19, v21);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_updateLabelContainerSize
{
  [(AXElementNamesItemView *)self forcedLabelContainerSize];
  label = self->_label;
  if (v5 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    [(UILabel *)label sizeToFit];
    [(UILabel *)self->_label frame];
    v16 = CGRectGetWidth(v18) + 10.0;
    [(UILabel *)self->_label frame];
    v14 = CGRectGetHeight(v19) + 6.0;
  }

  else
  {
    [(UILabel *)label frame];
    v8 = v7;
    v10 = v9;
    [(AXElementNamesItemView *)self forcedLabelContainerSize];
    v12 = v11 + -10.0;
    [(AXElementNamesItemView *)self forcedLabelContainerSize];
    [(UILabel *)self->_label setFrame:v8, v10, v12, v13 + -6.0];
    [(AXElementNamesItemView *)self forcedLabelContainerSize];
    v16 = v15;
  }

  [(AXElementNamesItemView *)self setLabelContainerSize:v16, v14];
}

- (CGRect)_validateLabelContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(AXElementNamesItemView *)self isSpacer])
  {
    goto LABEL_27;
  }

  if (![(AXElementNamesItemView *)self _shouldAllowLongArrows]&& [(AXElementNamesItemView *)self _usesExtendedArrow])
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_27;
  }

  [(AXElementNamesItemView *)self availableBounds];
  v9 = v8;
  v11 = v10;
  v12 = width;
  v14 = v13;
  v16 = v15;
  v41.origin.x = x;
  v41.origin.y = y;
  v38 = v12;
  v41.size.width = v12;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  rect = v9;
  v42.origin.x = v9;
  v18 = v11;
  v42.origin.y = v11;
  v19 = v14;
  v42.size.width = v14;
  v42.size.height = v16;
  if (MinY >= CGRectGetMinY(v42))
  {
    goto LABEL_8;
  }

  if ([(AXElementNamesItemView *)self labelPosition]== 4)
  {
    v43.origin.x = rect;
    v43.origin.y = v18;
    v43.size.width = v14;
    v43.size.height = v16;
    y = CGRectGetMinY(v43);
LABEL_8:
    width = v38;
    goto LABEL_10;
  }

  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
LABEL_10:
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = rect;
  v45.origin.y = v18;
  v45.size.width = v19;
  v45.size.height = v16;
  v37 = v16;
  if (MaxY > CGRectGetMaxY(v45))
  {
    if ([(AXElementNamesItemView *)self labelPosition]== 4)
    {
      v21 = rect;
      v46.origin.x = rect;
      v22 = v18;
      v46.origin.y = v18;
      v46.size.width = v19;
      v46.size.height = v37;
      y = CGRectGetMaxY(v46) - height;
      goto LABEL_15;
    }

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v21 = rect;
  v22 = v18;
LABEL_15:
  v23 = *MEMORY[0x1E695F058];
  v62 = **&MEMORY[0x1E695F058];
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v39 = v62.origin.y;
  v35 = v62.size.height;
  v36 = v62.size.width;
  if (!CGRectEqualToRect(v47, *MEMORY[0x1E695F058]))
  {
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v24 = CGRectGetHeight(v48);
    v25 = v21;
    v26 = v24;
    v49.origin.x = v25;
    v49.origin.y = v22;
    v49.size.width = v19;
    v49.size.height = v37;
    if (v26 > CGRectGetHeight(v49))
    {
      v50.origin.x = rect;
      v50.origin.y = v22;
      v50.size.width = v19;
      v50.size.height = v37;
      height = CGRectGetHeight(v50);
    }

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v27 = CGRectGetWidth(v51);
    v52.origin.x = rect;
    v52.origin.y = v22;
    v52.size.width = v19;
    v52.size.height = v37;
    if (v27 > CGRectGetWidth(v52))
    {
      v53.origin.x = rect;
      v53.origin.y = v22;
      v53.size.width = v19;
      v53.size.height = v37;
      width = CGRectGetWidth(v53);
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MinX = CGRectGetMinX(v54);
    v55.origin.x = rect;
    v55.origin.y = v22;
    v55.size.width = v19;
    v55.size.height = v37;
    if (MinX < CGRectGetMinX(v55))
    {
      v56.origin.x = rect;
      v56.origin.y = v22;
      v56.size.width = v19;
      v56.size.height = v37;
      x = CGRectGetMinX(v56);
    }

    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MaxX = CGRectGetMaxX(v57);
    v58.origin.x = rect;
    v58.origin.y = v22;
    v58.size.width = v19;
    v58.size.height = v37;
    if (MaxX > CGRectGetMaxX(v58))
    {
      v59.origin.x = rect;
      v59.origin.y = v22;
      v59.size.width = v19;
      v59.size.height = v37;
      x = CGRectGetMaxX(v59) - width;
    }

    if ([(AXElementNamesItemView *)self labelPosition]== 5)
    {
      [(AXElementNamesItemView *)self elementFrame];
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      if (!CGRectContainsRect(v60, v63))
      {
        height = v35;
        width = v36;
        y = v39;
        x = v34;
      }
    }
  }

LABEL_27:
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_updateFromMainProperties
{
  [(AXElementNamesItemView *)self _elementFrameAdjustedForBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  labelPosition = [(AXElementNamesItemView *)self labelPosition];
  if (labelPosition <= 5)
  {
    if (((1 << labelPosition) & 3) != 0)
    {
      v41.origin.x = v4;
      v41.origin.y = v6;
      v41.size.width = v8;
      v41.size.height = v10;
      v16 = CGRectGetMinY(v41) + 15.0;
      v42.origin.x = v4;
      v42.origin.y = v6;
      v42.size.width = v8;
      v42.size.height = v10;
      MidX = CGRectGetMidX(v42);
      [(AXElementNamesItemView *)self labelContainerSize];
      v38 = MidX + v22 * -0.5;
      [(AXElementNamesItemView *)self _arrowHeight];
      v24 = v16 - v23;
      [(AXElementNamesItemView *)self labelContainerSize];
      v20 = v24 - v25;
    }

    else
    {
      v12 = v4;
      v13 = v6;
      v14 = v8;
      v15 = v10;
      if (((1 << labelPosition) & 0xC) == 0)
      {
        v31 = CGRectGetMidX(*&v12);
        [(AXElementNamesItemView *)self labelContainerSize];
        v38 = v31 - v32 * 0.5;
        v44.origin.x = v4;
        v44.origin.y = v6;
        v44.size.width = v8;
        v44.size.height = v10;
        MidY = CGRectGetMidY(v44);
        [(AXElementNamesItemView *)self labelContainerSize];
        v20 = MidY - v34 * 0.5;
        [(AXElementNamesItemView *)self labelContainerSize];
        v27 = v35;
        [(AXElementNamesItemView *)self labelContainerSize];
        v29 = v36;
        v30 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        goto LABEL_8;
      }

      v16 = CGRectGetMaxY(*&v12) + -15.0;
      v40.origin.x = v4;
      v40.origin.y = v6;
      v40.size.width = v8;
      v40.size.height = v10;
      v17 = CGRectGetMidX(v40);
      [(AXElementNamesItemView *)self labelContainerSize];
      v38 = v17 + v18 * -0.5;
      [(AXElementNamesItemView *)self _arrowHeight];
      v20 = v16 + v19;
    }

    [(AXElementNamesItemView *)self labelContainerSize];
    v27 = v26;
    [(AXElementNamesItemView *)self labelContainerSize];
    v29 = v28;
    v43.origin.x = v4;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    v30 = CGRectGetMidX(v43);
LABEL_8:
    [(AXElementNamesItemView *)self setArrowTipLocation:v30, v16];
    v37 = v38;
    goto LABEL_9;
  }

  v29 = 0.0;
  v27 = 0.0;
  v20 = 0.0;
  v37 = 0.0;
LABEL_9:
  [(AXElementNamesItemView *)self _validateLabelContainerFrame:v37, v20, v27, v29];
  [(AXElementNamesItemView *)self setLabelContainerFrame:?];
  [(AXElementNamesItemView *)self labelContainerFrame];
  if (!CGRectEqualToRect(v45, *MEMORY[0x1E695F058]))
  {

    [(AXElementNamesItemView *)self _updateFromLabelContainerFrame];
  }
}

- (void)_updateFromLabelContainerFrame
{
  [(AXElementNamesItemView *)self labelContainerFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(AXElementNamesItemView *)self _usesArrow])
  {
    [(AXElementNamesItemView *)self _outlineWidth];
    v12 = v11 + v11;
    _arrowPointsDown = [(AXElementNamesItemView *)self _arrowPointsDown];
    [(AXElementNamesItemView *)self arrowTipLocation];
    v15 = v14;
    if (_arrowPointsDown)
    {
      [(AXElementNamesItemView *)self arrowTipLocation];
      v17 = v16;
    }

    else
    {
      v15 = v14 - v12;
      [(AXElementNamesItemView *)self arrowTipLocation];
      v17 = v18 - v12;
    }

    [(AXElementNamesItemView *)self labelContainerFrame];
    v22.origin.x = v15;
    v22.origin.y = v17;
    v22.size.width = v12;
    v22.size.height = v12;
    v21 = CGRectUnion(v20, v22);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  [(AXElementNamesItemView *)self setFrame:x, y, width, height];

  [(AXElementNamesItemView *)self setNeedsLayout];
}

- (BOOL)_usesExtendedArrow
{
  labelPosition = [(AXElementNamesItemView *)self labelPosition];
  if (labelPosition != 1)
  {
    LOBYTE(labelPosition) = [(AXElementNamesItemView *)self labelPosition]== 3;
  }

  return labelPosition;
}

- (double)_arrowHeight
{
  _usesExtendedArrow = [(AXElementNamesItemView *)self _usesExtendedArrow];
  result = 9.0;
  if (_usesExtendedArrow)
  {
    [(AXElementNamesItemView *)self labelContainerSize];
    return v5 + 5.0 + 9.0;
  }

  return result;
}

- (double)_cornerRadius
{
  v2 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  [v2 scaledValueForValue:5.0];
  v4 = v3;

  return v4;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXElementNamesItemView;
  [(AXElementNamesItemView *)&v11 layoutSubviews];
  [(AXElementNamesItemView *)self labelContainerFrame];
  v13 = CGRectInset(v12, 5.0, 3.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  [(AXElementNamesItemView *)self frame];
  v8 = x - v7;
  [(AXElementNamesItemView *)self frame];
  [(UILabel *)self->_label setFrame:v8, y - v9, width, height];
  [(AXElementNamesItemView *)self bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  _newBackgroundImage = [(AXElementNamesItemView *)self _newBackgroundImage];
  [(UIImageView *)self->_backgroundMaskView setImage:_newBackgroundImage];

  [(AXElementNamesItemView *)self bounds];
  [(UIImageView *)self->_backgroundMaskView setFrame:?];
  [(UIView *)self->_backgroundView setMaskView:self->_backgroundMaskView];
}

- (id)_newBackgroundImage
{
  [(AXElementNamesItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v9 = v8;
  v73.width = v4;
  v73.height = v6;
  UIGraphicsBeginImageContextWithOptions(v73, 0, v9);

  [(AXElementNamesItemView *)self labelContainerFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(AXElementNamesItemView *)self frame];
  v19 = v11 - v18;
  [(AXElementNamesItemView *)self frame];
  v21 = v13 - v20;
  [(AXElementNamesItemView *)self arrowTipLocation];
  v67 = v22;
  v69 = v23;
  [(AXElementNamesItemView *)self frame];
  v65 = v24;
  [(AXElementNamesItemView *)self frame];
  v26 = v25;
  [(AXElementNamesItemView *)self _cornerRadius];
  v28 = v27;
  [(AXElementNamesItemView *)self _outlineWidth];
  v30 = v29;
  v31 = v29 + v29;
  v32 = MEMORY[0x1E69DC728];
  v72 = v19;
  v74.origin.x = v19;
  v71 = v21;
  v74.origin.y = v21;
  v74.size.width = v15;
  v74.size.height = v17;
  v75 = CGRectInset(v74, v30, v30);
  v33 = [v32 bezierPathWithRoundedRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, v28}];
  [v33 setLineWidth:v31];
  if ([(AXElementNamesItemView *)self _usesArrow])
  {
    v34 = v67 - v65;
    v35 = v69 - v26;
    _usesExtendedArrow = [(AXElementNamesItemView *)self _usesExtendedArrow];
    v37 = 15.0;
    if (_usesExtendedArrow)
    {
      v37 = 6.0;
    }

    v68 = v37;
    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    [bezierPath setLineWidth:v31];
    _arrowPointsDown = [(AXElementNamesItemView *)self _arrowPointsDown];
    v40 = _arrowPointsDown;
    v41 = 9.0;
    if (_arrowPointsDown)
    {
      v41 = -9.0;
    }

    v70 = v35 + v41;
    v42 = 4.0 / fabs((v35 + v41 - v35) / (v34 + 7.5 - v34));
    v43 = -4.0;
    if (!_arrowPointsDown)
    {
      v43 = 4.0;
    }

    v44 = v35 + v43;
    v45 = v34 - v42;
    [bezierPath moveToPoint:{v34 + v42, v35 + v43, v34 + 7.5}];
    [bezierPath addQuadCurveToPoint:v45 controlPoint:{v44, v34, v35}];
    v46 = v72;
    v47 = v71;
    v48 = v15;
    v49 = v17;
    if (v40)
    {
      v50 = CGRectGetMaxY(*&v46) - v30;
    }

    else
    {
      v50 = v30 + CGRectGetMinY(*&v46);
    }

    v66 = v50;
    v76.origin.x = v72;
    v76.origin.y = v71;
    v76.size.width = v15;
    v76.size.height = v17;
    MinX = CGRectGetMinX(v76);
    v52 = v71;
    v53 = v30 + v28 + MinX;
    v54 = v17;
    if (v34 + v68 * -0.5 >= v53)
    {
      v55 = v34 + v68 * -0.5;
    }

    else
    {
      v55 = v53;
    }

    v56 = v68 + v55;
    v57 = v72;
    v58 = v15;
    v59 = CGRectGetMaxX(*(&v52 - 1)) - v28 - v30;
    if (v68 + v55 >= v59)
    {
      v56 = v59;
    }

    if (_usesExtendedArrow)
    {
      [bezierPath addLineToPoint:{v34 + -7.5, v70}];
      [bezierPath addLineToPoint:{v55, v70}];
    }

    [bezierPath addLineToPoint:{v55, v66}];
    [bezierPath addLineToPoint:{v56, v66}];
    if (_usesExtendedArrow)
    {
      [bezierPath addLineToPoint:{v56, v70}];
      [bezierPath addLineToPoint:{v64, v70}];
    }

    [bezierPath closePath];
  }

  else
  {
    bezierPath = 0;
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor set];

  [v33 stroke];
  [bezierPath stroke];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [blackColor set];

  [v33 fill];
  [bezierPath fill];
  v62 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v62;
}

- (CGRect)elementFrame
{
  x = self->_elementFrame.origin.x;
  y = self->_elementFrame.origin.y;
  width = self->_elementFrame.size.width;
  height = self->_elementFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)availableBounds
{
  x = self->_availableBounds.origin.x;
  y = self->_availableBounds.origin.y;
  width = self->_availableBounds.size.width;
  height = self->_availableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)labelContainerFrame
{
  x = self->_labelContainerFrame.origin.x;
  y = self->_labelContainerFrame.origin.y;
  width = self->_labelContainerFrame.size.width;
  height = self->_labelContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)forcedLabelContainerSize
{
  width = self->_forcedLabelContainerSize.width;
  height = self->_forcedLabelContainerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)labelContainerSize
{
  width = self->_labelContainerSize.width;
  height = self->_labelContainerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)arrowTipLocation
{
  x = self->_arrowTipLocation.x;
  y = self->_arrowTipLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end