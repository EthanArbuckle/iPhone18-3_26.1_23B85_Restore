@interface IMCalloutBar
- (CGRect)dividerLineRectForControl:(int64_t)control;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsControls:(id)controls;
- (IMCalloutBar)initWithFrame:(CGRect)frame;
- (id)newMaskView:(int64_t)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBlurDisabled:(BOOL)disabled;
- (void)setControls:(id)controls;
- (void)setHighlighted:(BOOL)highlighted forControl:(id)control;
@end

@implementation IMCalloutBar

- (IMCalloutBar)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = IMCalloutBar;
  v3 = [(IMCalloutBar *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(IMCalloutBar *)v3 setBackgroundColor:v4];

    v5 = [_UIBackdropView alloc];
    [(IMCalloutBar *)v3 bounds];
    v6 = [v5 initWithFrame:2050 privateStyle:?];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v6;

    layer = [(_UIBackdropView *)v3->_backgroundView layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(_UIBackdropView *)v3->_backgroundView layer];
    [layer2 setAllowsGroupBlending:0];

    if (objc_opt_respondsToSelector())
    {
      [(_UIBackdropView *)v3->_backgroundView performSelector:"setDisablesOccludedBackdropBlurs:" withObject:0];
    }

    [(IMCalloutBar *)v3 bounds];
    [(_UIBackdropView *)v3->_backgroundView setFrame:?];
    [(_UIBackdropView *)v3->_backgroundView setAutoresizingMask:18];
    [(IMCalloutBar *)v3 addSubview:v3->_backgroundView];
    v10 = [[_UIBackdropView alloc] initWithPrivateStyle:2020];
    separatorBackgroundView = v3->_separatorBackgroundView;
    v3->_separatorBackgroundView = v10;

    layer3 = [(_UIBackdropView *)v3->_separatorBackgroundView layer];
    [layer3 setAllowsGroupOpacity:0];

    layer4 = [(_UIBackdropView *)v3->_separatorBackgroundView layer];
    [layer4 setAllowsGroupBlending:0];

    [(IMCalloutBar *)v3 bounds];
    [(_UIBackdropView *)v3->_separatorBackgroundView setFrame:?];
    [(_UIBackdropView *)v3->_separatorBackgroundView setAutoresizingMask:18];
    [(IMCalloutBar *)v3 addSubview:v3->_separatorBackgroundView];
    v14 = [(IMCalloutBar *)v3 newMaskView:4];
    blurMaskView = v3->_blurMaskView;
    v3->_blurMaskView = v14;

    v16 = [(IMCalloutBar *)v3 newMaskView:3];
    tintMaskView = v3->_tintMaskView;
    v3->_tintMaskView = v16;

    v18 = [(IMCalloutBar *)v3 newMaskView:7];
    separatorMaskView = v3->_separatorMaskView;
    v3->_separatorMaskView = v18;
  }

  return v3;
}

- (void)dealloc
{
  [(IMCalloutBar *)self setControls:0];
  v3.receiver = self;
  v3.super_class = IMCalloutBar;
  [(IMCalloutBar *)&v3 dealloc];
}

- (id)newMaskView:(int64_t)view
{
  v4 = objc_alloc_init(UIImageView);
  [v4 _setBackdropMaskViewFlags:view];
  [v4 setAutoresizingMask:18];
  return v4;
}

- (void)setBlurDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v4 = [_UIBackdropViewSettings settingsForPrivateStyle:2050 graphicsQuality:10];
    [(_UIBackdropView *)self->_backgroundView transitionToSettings:v4];
    [_UIBackdropViewSettings settingsForPrivateStyle:2020 graphicsQuality:10];
  }

  else
  {
    v4 = [_UIBackdropViewSettings settingsForPrivateStyle:2050];
    [(_UIBackdropView *)self->_backgroundView transitionToSettings:v4];
    [_UIBackdropViewSettings settingsForPrivateStyle:2020];
  }
  v5 = ;

  [(_UIBackdropView *)self->_separatorBackgroundView transitionToSettings:v5];
}

- (void)setHighlighted:(BOOL)highlighted forControl:(id)control
{
  highlightedCopy = highlighted;
  controlCopy = control;
  controls = [(IMCalloutBar *)self controls];
  v8 = [controls indexOfObject:controlCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (highlightedCopy)
    {
      [(IMCalloutBar *)self dividerLineRectForControl:v8];
      v10 = v9;
      v25 = v11;
      v26 = v9;
      v12 = v11;
      v14 = v13;
      v27 = v15;
      [(IMCalloutBar *)self dividerLineRectForControl:v8 - 1];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v10;
      v30.origin.y = v12;
      v30.size.width = v14;
      v30.size.height = v27;
      MinX = CGRectGetMinX(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v22 = MinX - CGRectGetMaxX(v31);
      v32.origin.y = v25;
      v32.origin.x = v26;
      v32.size.width = v14;
      v32.size.height = v27;
      v23 = CGRectGetHeight(v32);
      v24 = 0.0;
    }

    else
    {
      MaxX = CGRectZero.origin.x;
      v24 = CGRectZero.origin.y;
      v22 = CGRectZero.size.width;
      v23 = CGRectZero.size.height;
    }

    v33.origin.x = MaxX;
    v33.origin.y = v24;
    v33.size.width = v22;
    v33.size.height = v23;
    if (!CGRectEqualToRect(v33, self->_highlightRect))
    {
      self->_highlightRect.origin.x = MaxX;
      self->_highlightRect.origin.y = v24;
      self->_highlightRect.size.width = v22;
      self->_highlightRect.size.height = v23;

      [(IMCalloutBar *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v95.receiver = self;
  v95.super_class = IMCalloutBar;
  [(IMCalloutBar *)&v95 layoutSubviews];
  controls = [(IMCalloutBar *)self controls];
  [(IMCalloutBar *)self sizeThatFitsControls:controls];
  v5 = v4;

  [(IMCalloutBar *)self bounds];
  Width = CGRectGetWidth(v100);
  controls2 = [(IMCalloutBar *)self controls];
  v8 = [controls2 count];

  controls3 = [(IMCalloutBar *)self controls];
  v10 = [controls3 count];

  if (v10)
  {
    v11 = 0;
    v12 = (Width - v5) / (2 * v8) + 6.0;
    v13 = v12;
    do
    {
      controls4 = [(IMCalloutBar *)self controls];
      v15 = [controls4 objectAtIndex:v11];

      [v15 frame];
      v17 = v16;
      v18 = round(v13);
      if ([(IMCalloutBar *)self up])
      {
        v19 = 14.0;
      }

      else
      {
        v19 = 0.0;
      }

      [v15 setFrame:{v18, v19, v17, 38.0}];
      v101.origin.x = v18;
      v101.origin.y = v19;
      v101.size.width = v17;
      v101.size.height = 38.0;
      v20 = CGRectGetWidth(v101);
      v21 = +[UIScreen mainScreen];
      [v21 scale];
      v13 = v13 + v20 + 1.0 / v22 + v12 * 2.0;

      ++v11;
      controls5 = [(IMCalloutBar *)self controls];
      v24 = [controls5 count];
    }

    while (v24 > v11);
  }

  [(IMCalloutBar *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = 0.0;
  v96.width = v29;
  v96.height = v31;
  UIGraphicsBeginImageContextWithOptions(v96, 0, 0.0);
  if ([(IMCalloutBar *)self up])
  {
    v33 = 14.0;
  }

  v34 = +[UIColor blackColor];
  [v34 set];

  v35 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:v33, v30, 38.0, 8.0];
  [v35 fill];

  v36 = +[UIColor blackColor];
  [v36 set];

  if ([(IMCalloutBar *)self up])
  {
    v37 = 5.0;
  }

  else
  {
    v37 = 38.0;
  }

  [(IMCalloutBar *)self arrowX];
  v39 = v38;
  v102.origin.x = v26;
  v102.origin.y = v28;
  v102.size.width = v30;
  v102.size.height = v32;
  v40 = CGRectGetWidth(v102) + -17.0;
  if (v39 < v40)
  {
    v40 = v39;
  }

  v41 = fmax(v40, 17.0);
  v42 = round(v41 + -9.0);
  v43 = +[UIBezierPath bezierPath];
  if ([(IMCalloutBar *)self up])
  {
    [v43 moveToPoint:{v41, v37}];
    v37 = v37 + 9.0;
  }

  else
  {
    [v43 moveToPoint:{v41, v37 + 9.0}];
  }

  [v43 addLineToPoint:{v42, v37}];
  [v43 addLineToPoint:{v42 + 18.0, v37}];
  [v43 closePath];
  [v43 fill];
  v44 = UIGraphicsGetImageFromCurrentImageContext();
  v45 = +[UIColor clearColor];
  [v45 set];

  controls6 = [(IMCalloutBar *)self controls];
  v47 = [controls6 count];

  if (v47 != &dword_0 + 1)
  {
    v48 = 0;
    do
    {
      [(IMCalloutBar *)self dividerLineRectForControl:v48];
      UIRectFillUsingBlendMode(v103, kCGBlendModeCopy);
      ++v48;
      controls7 = [(IMCalloutBar *)self controls];
      v50 = [controls7 count] - 1;
    }

    while (v48 < v50);
  }

  v51 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v51 size];
  v53 = v52;
  v55 = v54;
  [v51 scale];
  v57 = v56;
  v97.width = v53;
  v97.height = v55;
  UIGraphicsBeginImageContextWithOptions(v97, 0, v57);
  y = CGPointZero.y;
  [v51 drawAtPoint:17 blendMode:CGPointZero.x alpha:{y, 1.0}];
  v59 = +[UIColor blackColor];
  [v59 set];

  [v51 size];
  v61 = v60;
  [v51 size];
  v104.size.height = v62;
  v104.origin.x = 0.0;
  v104.origin.y = 0.0;
  v104.size.width = v61;
  UIRectFillUsingBlendMode(v104, kCGBlendModeSourceOut);
  v63 = UIGraphicsGetImageFromCurrentImageContext();
  [(UIImageView *)self->_blurMaskView setImage:v63];

  [(UIImageView *)self->_blurMaskView sizeToFit];
  UIGraphicsEndImageContext();
  [(_UIBackdropView *)self->_backgroundView updateMaskViewsForView:self->_blurMaskView];
  [v51 size];
  v65 = v64;
  v67 = v66;
  [v51 scale];
  v69 = v68;
  v98.width = v65;
  v98.height = v67;
  UIGraphicsBeginImageContextWithOptions(v98, 0, v69);
  [v51 drawAtPoint:17 blendMode:CGPointZero.x alpha:{y, 1.0}];
  if (!CGRectIsEmpty(self->_highlightRect))
  {
    v70 = +[UIDevice currentDevice];
    _graphicsQuality = [v70 _graphicsQuality];

    v72 = 0.75;
    if (_graphicsQuality != &dword_8 + 2)
    {
      v72 = 0.4;
    }

    v73 = [UIColor colorWithWhite:0.0 alpha:v72];
    [v73 set];

    UIRectFillUsingBlendMode(self->_highlightRect, kCGBlendModeSourceIn);
  }

  v74 = +[UIColor blackColor];
  [v74 set];

  [v51 size];
  v76 = v75;
  [v51 size];
  v105.size.height = v77;
  v105.origin.x = 0.0;
  v105.origin.y = 0.0;
  v105.size.width = v76;
  UIRectFillUsingBlendMode(v105, kCGBlendModeSourceOut);
  v78 = UIGraphicsGetImageFromCurrentImageContext();
  [(UIImageView *)self->_tintMaskView setImage:v78];

  [(UIImageView *)self->_tintMaskView sizeToFit];
  UIGraphicsEndImageContext();
  [(_UIBackdropView *)self->_backgroundView updateMaskViewsForView:self->_tintMaskView];
  [v51 size];
  v80 = v79;
  v82 = v81;
  [v51 scale];
  v84 = v83;
  v99.width = v80;
  v99.height = v82;
  UIGraphicsBeginImageContextWithOptions(v99, 0, v84);
  v85 = +[UIColor blackColor];
  [v85 set];

  controls8 = [(IMCalloutBar *)self controls];
  v87 = [controls8 count];

  if (v87 != &dword_0 + 1)
  {
    v88 = 0;
    do
    {
      [(IMCalloutBar *)self dividerLineRectForControl:v88];
      UIRectFillUsingBlendMode(v106, kCGBlendModeCopy);
      ++v88;
      controls9 = [(IMCalloutBar *)self controls];
      v90 = [controls9 count] - 1;
    }

    while (v88 < v90);
  }

  [v44 drawAtPoint:22 blendMode:CGPointZero.x alpha:{y, 1.0}];
  [v51 size];
  v92 = v91;
  [v51 size];
  v107.size.height = v93;
  v107.origin.x = 0.0;
  v107.origin.y = 0.0;
  v107.size.width = v92;
  UIRectFillUsingBlendMode(v107, kCGBlendModeSourceOut);
  v94 = UIGraphicsGetImageFromCurrentImageContext();
  [(UIImageView *)self->_separatorMaskView setImage:v94];

  [(UIImageView *)self->_separatorMaskView sizeToFit];
  UIGraphicsEndImageContext();
  [(_UIBackdropView *)self->_separatorBackgroundView updateMaskViewsForView:self->_separatorMaskView];
}

- (CGRect)dividerLineRectForControl:(int64_t)control
{
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  if (control < 0)
  {
    v15 = 0.0;
  }

  else
  {
    controls = [(IMCalloutBar *)self controls];
    v9 = [controls count] - 1;

    if (v9 <= control)
    {
      [(IMCalloutBar *)self bounds];
      v15 = v16;
    }

    else
    {
      controls2 = [(IMCalloutBar *)self controls];
      v11 = [controls2 objectAtIndex:control];

      controls3 = [(IMCalloutBar *)self controls];
      v13 = [controls3 objectAtIndex:control + 1];

      [v13 frame];
      MinX = CGRectGetMinX(v21);
      [v11 frame];
      v15 = round((MinX + CGRectGetMaxX(v22) + -1.0) * 0.5);
    }
  }

  v17 = 1.0 / v7;
  v18 = 52.0;
  v19 = v15;
  v20 = 0.0;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(IMCalloutBar *)self controls:fits.width];
  [(IMCalloutBar *)self sizeThatFitsControls:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setControls:(id)controls
{
  controlsCopy = controls;
  controls = self->_controls;
  if (controls != controlsCopy)
  {
    v22 = controlsCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    controlsCopy2 = controls;
    v8 = [(NSArray *)controlsCopy2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(controlsCopy2);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          [v12 removeFromSuperview];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setBar:0];
          }
        }

        v9 = [(NSArray *)controlsCopy2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_controls, controls);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_controls;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            [v19 setBar:self];
            v20 = [(NSArray *)self->_controls indexOfObject:v19];
            if (v20)
            {
              if (v20 == [(NSArray *)self->_controls count]- 1)
              {
                v21 = 2;
              }

              else
              {
                v21 = 1;
              }
            }

            else
            {
              v21 = 0;
            }

            [v19 setPosition:v21];
          }

          [(IMCalloutBar *)self addSubview:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    [(IMCalloutBar *)self setNeedsDisplay];
    controlsCopy = v22;
  }
}

- (CGSize)sizeThatFitsControls:(id)controls
{
  controlsCopy = controls;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [controlsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 12.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        [*(*(&v12 + 1) + 8 * i) frame];
        v7 = v7 + CGRectGetWidth(v18);
      }

      v5 = [controlsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 12.0;
  }

  v9 = [controlsCopy count];

  v10 = v7 + (v9 - 1) * 13.0;
  v11 = 52.0;
  result.height = v11;
  result.width = v10;
  return result;
}

@end