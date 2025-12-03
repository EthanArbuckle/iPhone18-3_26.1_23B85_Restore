@interface PKPaletteToolPickerClippingEdgeView
- (PKPaletteToolPickerClippingEdgeView)init;
- (double)scaledMagicPocketThickness;
- (id)initWithEdge:(void *)edge inParent:(void *)parent withScrollView:;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setScalingFactor:(double)factor;
@end

@implementation PKPaletteToolPickerClippingEdgeView

- (PKPaletteToolPickerClippingEdgeView)init
{
  v8.receiver = self;
  v8.super_class = PKPaletteToolPickerClippingEdgeView;
  v2 = [(PKPaletteToolPickerClippingEdgeView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(PKPaletteToolPickerClippingEdgeView *)v2 setUserInteractionEnabled:0];
    v3->_axis = 0;
    v4 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    [(CAGradientLayer *)v3->_gradientLayer setGeometryFlipped:1];
    layer = [(PKPaletteToolPickerClippingEdgeView *)v3 layer];
    [layer insertSublayer:v3->_gradientLayer atIndex:0];

    [(PKPaletteToolPickerClippingEdgeView *)v3 _updateUI];
  }

  return v3;
}

- (void)_updateUI
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (_UISolariumEnabled())
    {
      [*(self + 416) setHidden:*(self + 441)];
      [*(self + 432) setHidden:*(self + 441)];
      v2 = *(self + 441);
      v3 = *(self + 416);

      [v3 setHidden:v2];
    }

    else
    {
      systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
      v5 = 0.5;
      v6 = [systemFillColor colorWithAlphaComponent:0.5];

      v7 = [v6 colorWithAlphaComponent:0.0];
      v17[0] = [v6 CGColor];
      v17[1] = [v7 CGColor];
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [*(self + 408) setColors:v8];

      v9 = *(self + 456);
      v10 = 0.75;
      if (v9)
      {
        v11 = 0.5;
      }

      else
      {
        v11 = 0.75;
      }

      if (v9)
      {
        v12 = 1.0;
      }

      else
      {
        v10 = 0.5;
        v12 = 0.5;
      }

      if (!v9)
      {
        v5 = 1.0;
      }

      [*(self + 408) setStartPoint:{v10, v11}];
      [*(self + 408) setEndPoint:{v12, v5}];
      v13 = -1.0;
      if (!*(self + 440))
      {
        v13 = 1.0;
      }

      CATransform3DMakeScale(&v16, v13, 1.0, 1.0);
      v14 = *(self + 408);
      v15 = v16;
      [v14 setTransform:&v15];
    }
  }
}

- (id)initWithEdge:(void *)edge inParent:(void *)parent withScrollView:
{
  v91 = *MEMORY[0x1E69E9840];
  edgeCopy = edge;
  parentCopy = parent;
  if (!self)
  {
    v9 = 0;
    goto LABEL_53;
  }

  v75.receiver = self;
  v75.super_class = PKPaletteToolPickerClippingEdgeView;
  v8 = objc_msgSendSuper2(&v75, sel_init);
  v9 = v8;
  if (v8)
  {
    v8[56] = 0x3FF0000000000000;
    v10 = [[PKPaletteToolPickerClippingEdgeBackdropLayerView alloc] initWithEdge:a2 isTopBackdropLayer:0];
    v11 = *(v9 + 52);
    *(v9 + 52) = v10;

    v12 = MEMORY[0x1E69DC730];
    if (a2 == 8 || a2 == 2)
    {
      scaledMagicPocketThickness = [(PKPaletteToolPickerClippingEdgeView *)v9 scaledMagicPocketThickness];
      scaledMagicPocketThickness2 = 1.0;
    }

    else
    {
      scaledMagicPocketThickness2 = [(PKPaletteToolPickerClippingEdgeView *)v9 scaledMagicPocketThickness];
      scaledMagicPocketThickness = 1.0;
    }

    v92.width = scaledMagicPocketThickness;
    v92.height = scaledMagicPocketThickness2;
    UIGraphicsBeginImageContextWithOptions(v92, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v17 = DeviceRGB;
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v84 = 0u;
        v85 = 0u;
        *components = 0u;
        *&v86 = 0;
        *(&v86 + 1) = 0x3FF0000000000000;
        locations = xmmword_1C8019980;
        v18 = CGGradientCreateWithColorComponents(DeviceRGB, components, &locations, 2uLL);
        scaledMagicPocketThickness = 0.0;
        v19 = scaledMagicPocketThickness2;
        goto LABEL_19;
      }

      if (a2 == 8)
      {
        v84 = 0u;
        v85 = 0u;
        *components = 0u;
        *&v86 = 0;
        *(&v86 + 1) = 0x3FF0000000000000;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v84 = 0u;
        v85 = 0u;
        *components = 0u;
        *&v86 = 0;
        *(&v86 + 1) = 0x3FF0000000000000;
        locations = xmmword_1C8019980;
        v18 = CGGradientCreateWithColorComponents(DeviceRGB, components, &locations, 2uLL);
        scaledMagicPocketThickness = 0.0;
        v19 = 0.0;
        v20 = 0;
        goto LABEL_20;
      }

      if (a2 == 2)
      {
        components[0] = 0.0;
        components[1] = 0.0;
        *&v84 = 0;
        *(&v84 + 1) = 0x3FF0000000000000;
        v85 = 0u;
        v86 = 0u;
LABEL_14:
        locations = xmmword_1C8019980;
        v18 = CGGradientCreateWithColorComponents(DeviceRGB, components, &locations, 2uLL);
LABEL_16:
        v19 = 0.0;
LABEL_19:
        v20 = 0;
        scaledMagicPocketThickness2 = 0.0;
LABEL_20:
        v21 = scaledMagicPocketThickness2;
        v22 = scaledMagicPocketThickness;
        CGContextDrawLinearGradient(CurrentContext, v18, *&v20, *(&v19 - 1), 0);
        v23 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        CGGradientRelease(v18);
        CGColorSpaceRelease(v17);
        v24 = [v12 effectWithVariableBlurRadius:v23 imageMask:3.0];

        v25 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v24];
        v26 = *(v9 + 54);
        *(v9 + 54) = v25;

        [*(v9 + 54) setUserInteractionEnabled:0];
        v27 = [[PKPaletteToolPickerClippingEdgeBackdropLayerView alloc] initWithEdge:a2 isTopBackdropLayer:1];
        v28 = *(v9 + 53);
        *(v9 + 53) = v27;

        [*(v9 + 53) setUserInteractionEnabled:0];
        v29 = edgeCopy;
        v30 = parentCopy;
        if (!_UISolariumEnabled())
        {
LABEL_52:

          goto LABEL_53;
        }

        [v29 insertSubview:*(v9 + 52) belowSubview:v30];
        [v29 addSubview:*(v9 + 54)];
        [v29 addSubview:*(v9 + 53)];
        array = [MEMORY[0x1E695DF70] array];
        scaledMagicPocketThickness3 = [(PKPaletteToolPickerClippingEdgeView *)v9 scaledMagicPocketThickness];
        v67 = v29;
        if (a2 == 8 || a2 == 2)
        {
          if (a2 == 2)
          {
            [v29 leadingAnchor];
          }

          else
          {
            [v29 trailingAnchor];
          }
          v68 = ;
          v89 = 0u;
          v90 = 0u;
          locations = 0u;
          v88 = 0u;
          v80 = *(v9 + 52);
          v81 = *(v9 + 54);
          v82 = *(v9 + 53);
          obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:3];
          v65 = [obj countByEnumeratingWithState:&locations objects:components count:16];
          if (!v65)
          {
            goto LABEL_51;
          }

          v57 = v30;
          v58 = v24;
          v59 = v9;
          v60 = parentCopy;
          v61 = edgeCopy;
          v63 = *v88;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v88 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&locations + 1) + 8 * i);
              [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
              topAnchor = [v33 topAnchor];
              topAnchor2 = [v29 topAnchor];
              v73 = topAnchor;
              v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
              v76 = v35;
              bottomAnchor = [v33 bottomAnchor];
              bottomAnchor2 = [v29 bottomAnchor];
              v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
              v77 = v38;
              widthAnchor = [v33 widthAnchor];
              v40 = [widthAnchor constraintEqualToConstant:scaledMagicPocketThickness3];
              v78 = v40;
              if (a2 == 2)
              {
                [v33 leadingAnchor];
              }

              else
              {
                [v33 trailingAnchor];
              }
              v41 = ;
              v42 = [v41 constraintEqualToAnchor:v68];
              v79 = v42;
              v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:4];
              [array addObjectsFromArray:v43];

              v29 = v67;
            }

            v65 = [obj countByEnumeratingWithState:&locations objects:components count:16];
          }

          while (v65);
        }

        else
        {
          if (a2 == 1)
          {
            [v29 topAnchor];
          }

          else
          {
            [v29 bottomAnchor];
          }
          v68 = ;
          v89 = 0u;
          v90 = 0u;
          locations = 0u;
          v88 = 0u;
          v80 = *(v9 + 52);
          v81 = *(v9 + 54);
          v82 = *(v9 + 53);
          obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:3];
          v66 = [obj countByEnumeratingWithState:&locations objects:components count:16];
          if (!v66)
          {
            goto LABEL_51;
          }

          v57 = v30;
          v58 = v24;
          v59 = v9;
          v60 = parentCopy;
          v61 = edgeCopy;
          v64 = *v88;
          do
          {
            for (j = 0; j != v66; ++j)
            {
              if (*v88 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&locations + 1) + 8 * j);
              [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
              leadingAnchor = [v45 leadingAnchor];
              leadingAnchor2 = [v29 leadingAnchor];
              v74 = leadingAnchor;
              v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
              v76 = v47;
              trailingAnchor = [v45 trailingAnchor];
              trailingAnchor2 = [v29 trailingAnchor];
              v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
              v77 = v50;
              heightAnchor = [v45 heightAnchor];
              v52 = [heightAnchor constraintEqualToConstant:scaledMagicPocketThickness3];
              v78 = v52;
              if (a2 == 1)
              {
                [v45 topAnchor];
              }

              else
              {
                [v45 bottomAnchor];
              }
              v53 = ;
              v54 = [v53 constraintEqualToAnchor:v68];
              v79 = v54;
              v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:4];
              [array addObjectsFromArray:v55];

              v29 = v67;
            }

            v66 = [obj countByEnumeratingWithState:&locations objects:components count:16];
          }

          while (v66);
        }

        parentCopy = v60;
        edgeCopy = v61;
        v24 = v58;
        v9 = v59;
        v30 = v57;
LABEL_51:

        [MEMORY[0x1E696ACD8] activateConstraints:array];
        goto LABEL_52;
      }
    }

    v85 = 0u;
    v86 = 0u;
    *components = 0u;
    v84 = 0u;
    locations = xmmword_1C8019980;
    v18 = CGGradientCreateWithColorComponents(DeviceRGB, components, &locations, 2uLL);
    scaledMagicPocketThickness = 0.0;
    goto LABEL_16;
  }

LABEL_53:

  return v9;
}

- (double)scaledMagicPocketThickness
{
  v2 = self[56];
  traitCollection = [self traitCollection];
  window = [self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  v7 = 26.0;
  if (v6)
  {
    v7 = 22.0;
  }

  return v2 * v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteToolPickerClippingEdgeView;
  [(PKPaletteToolPickerClippingEdgeView *)&v3 layoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(PKPaletteToolPickerClippingEdgeView *)self bounds];
    [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  }
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerClippingEdgeView *)self _updateUI];
  }
}

@end