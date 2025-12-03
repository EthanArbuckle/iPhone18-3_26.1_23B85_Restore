@interface AVPictureInPictureIndicatorView
- (void)_addIndicatorLayerIfNeeded;
- (void)_updateGeometry;
- (void)didMoveToWindow;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setBackgroundColor:(id)color;
- (void)setCustomMessage:(id)message;
@end

@implementation AVPictureInPictureIndicatorView

- (void)_addIndicatorLayerIfNeeded
{
  pipIndicatorLayer = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  if (!pipIndicatorLayer)
  {
    window = [(AVPictureInPictureIndicatorView *)self window];

    if (!window)
    {
      return;
    }

    v5 = MEMORY[0x1E69DCAB8];
    v6 = AVBundle();
    window2 = [(AVPictureInPictureIndicatorView *)self window];
    traitCollection = [window2 traitCollection];
    v23 = [v5 imageNamed:@"PictureInPictureIndicatorLarge" inBundle:v6 compatibleWithTraitCollection:traitCollection];

    aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    v10 = [v23 _flatImageWithColor:aV_indicatorForegroundColor];

    v11 = [AVPictureInPictureIndicatorLayer alloc];
    window3 = [(AVPictureInPictureIndicatorView *)self window];
    traitCollection2 = [window3 traitCollection];
    [traitCollection2 displayScale];
    v15 = v14;
    cGImage = [v10 CGImage];
    v17 = [(AVPictureInPictureIndicatorLayer *)v11 initWithDisplayScale:cGImage placeholderImage:0 opaque:v15 videoRectWhenPIPBegan:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

    [(AVPictureInPictureIndicatorView *)self setPipIndicatorLayer:v17];
    customMessage = [(AVPictureInPictureIndicatorView *)self customMessage];

    if (customMessage)
    {
      customMessage2 = [(AVPictureInPictureIndicatorView *)self customMessage];
      pipIndicatorLayer2 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
      [pipIndicatorLayer2 setCustomText:customMessage2];
    }

    layer = [(AVPictureInPictureIndicatorView *)self layer];
    pipIndicatorLayer3 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
    [layer addSublayer:pipIndicatorLayer3];

    pipIndicatorLayer = v23;
  }
}

- (void)_updateGeometry
{
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  [(AVPictureInPictureIndicatorView *)self _addIndicatorLayerIfNeeded];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  layer = [(AVPictureInPictureIndicatorView *)selfCopy layer];
  animationKeys = [layer animationKeys];

  obj = animationKeys;
  v5 = [animationKeys countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      v8 = 0;
      v35 = v6;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        layer2 = [(AVPictureInPictureIndicatorView *)selfCopy layer];
        v11 = [layer2 animationForKey:v9];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v9 containsString:@"position"] & 1) != 0 || objc_msgSend(v9, "containsString:", @"bounds.origin")))
        {
          v12 = v7;
          pipIndicatorLayer = [(AVPictureInPictureIndicatorView *)selfCopy pipIndicatorLayer];
          [pipIndicatorLayer addAnimation:v11 forKey:v9];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v14 = selfCopy;
          pipIndicatorLayer2 = [(AVPictureInPictureIndicatorView *)selfCopy pipIndicatorLayer];
          sublayers = [pipIndicatorLayer2 sublayers];

          v17 = [sublayers countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v38;
            do
            {
              v20 = 0;
              do
              {
                if (*v38 != v19)
                {
                  objc_enumerationMutation(sublayers);
                }

                [*(*(&v37 + 1) + 8 * v20++) addAnimation:v11 forKey:v9];
              }

              while (v18 != v20);
              v18 = [sublayers countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v18);
          }

          v7 = v12;
          v6 = v35;
          selfCopy = v14;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  [(AVPictureInPictureIndicatorView *)selfCopy bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  pipIndicatorLayer3 = [(AVPictureInPictureIndicatorView *)selfCopy pipIndicatorLayer];
  [pipIndicatorLayer3 setBounds:{v22, v24, v26, v28}];

  [(AVPictureInPictureIndicatorView *)selfCopy bounds];
  UIRectGetCenter();
  v31 = v30;
  v33 = v32;
  pipIndicatorLayer4 = [(AVPictureInPictureIndicatorView *)selfCopy pipIndicatorLayer];
  [pipIndicatorLayer4 setPosition:{v31, v33}];
}

- (void)setBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = AVPictureInPictureIndicatorView;
  colorCopy = color;
  [(AVPictureInPictureIndicatorView *)&v8 setBackgroundColor:colorCopy];
  v5 = colorCopy;
  cGColor = [v5 CGColor];

  pipIndicatorLayer = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  [pipIndicatorLayer setBackgroundColor:cGColor];
}

- (void)setCustomMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy copy];
  customMessage = self->_customMessage;
  self->_customMessage = v5;

  pipIndicatorLayer = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  [pipIndicatorLayer setCustomText:messageCopy];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = AVPictureInPictureIndicatorView;
  [(AVPictureInPictureIndicatorView *)&v4 layoutSublayersOfLayer:layer];
  [(AVPictureInPictureIndicatorView *)self _updateGeometry];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVPictureInPictureIndicatorView;
  [(AVPictureInPictureIndicatorView *)&v3 didMoveToWindow];
  [(AVPictureInPictureIndicatorView *)self _updateGeometry];
}

@end