@interface AVPictureInPictureIndicatorView
- (void)_addIndicatorLayerIfNeeded;
- (void)_updateGeometry;
- (void)didMoveToWindow;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCustomMessage:(id)a3;
@end

@implementation AVPictureInPictureIndicatorView

- (void)_addIndicatorLayerIfNeeded
{
  v3 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  if (!v3)
  {
    v4 = [(AVPictureInPictureIndicatorView *)self window];

    if (!v4)
    {
      return;
    }

    v5 = MEMORY[0x1E69DCAB8];
    v6 = AVBundle();
    v7 = [(AVPictureInPictureIndicatorView *)self window];
    v8 = [v7 traitCollection];
    v23 = [v5 imageNamed:@"PictureInPictureIndicatorLarge" inBundle:v6 compatibleWithTraitCollection:v8];

    v9 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    v10 = [v23 _flatImageWithColor:v9];

    v11 = [AVPictureInPictureIndicatorLayer alloc];
    v12 = [(AVPictureInPictureIndicatorView *)self window];
    v13 = [v12 traitCollection];
    [v13 displayScale];
    v15 = v14;
    v16 = [v10 CGImage];
    v17 = [(AVPictureInPictureIndicatorLayer *)v11 initWithDisplayScale:v16 placeholderImage:0 opaque:v15 videoRectWhenPIPBegan:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

    [(AVPictureInPictureIndicatorView *)self setPipIndicatorLayer:v17];
    v18 = [(AVPictureInPictureIndicatorView *)self customMessage];

    if (v18)
    {
      v19 = [(AVPictureInPictureIndicatorView *)self customMessage];
      v20 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
      [v20 setCustomText:v19];
    }

    v21 = [(AVPictureInPictureIndicatorView *)self layer];
    v22 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
    [v21 addSublayer:v22];

    v3 = v23;
  }
}

- (void)_updateGeometry
{
  v2 = self;
  v47 = *MEMORY[0x1E69E9840];
  [(AVPictureInPictureIndicatorView *)self _addIndicatorLayerIfNeeded];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [(AVPictureInPictureIndicatorView *)v2 layer];
  v4 = [v3 animationKeys];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
        v10 = [(AVPictureInPictureIndicatorView *)v2 layer];
        v11 = [v10 animationForKey:v9];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v9 containsString:@"position"] & 1) != 0 || objc_msgSend(v9, "containsString:", @"bounds.origin")))
        {
          v12 = v7;
          v13 = [(AVPictureInPictureIndicatorView *)v2 pipIndicatorLayer];
          [v13 addAnimation:v11 forKey:v9];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v14 = v2;
          v15 = [(AVPictureInPictureIndicatorView *)v2 pipIndicatorLayer];
          v16 = [v15 sublayers];

          v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                  objc_enumerationMutation(v16);
                }

                [*(*(&v37 + 1) + 8 * v20++) addAnimation:v11 forKey:v9];
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v18);
          }

          v7 = v12;
          v6 = v35;
          v2 = v14;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  [(AVPictureInPictureIndicatorView *)v2 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(AVPictureInPictureIndicatorView *)v2 pipIndicatorLayer];
  [v29 setBounds:{v22, v24, v26, v28}];

  [(AVPictureInPictureIndicatorView *)v2 bounds];
  UIRectGetCenter();
  v31 = v30;
  v33 = v32;
  v34 = [(AVPictureInPictureIndicatorView *)v2 pipIndicatorLayer];
  [v34 setPosition:{v31, v33}];
}

- (void)setBackgroundColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVPictureInPictureIndicatorView;
  v4 = a3;
  [(AVPictureInPictureIndicatorView *)&v8 setBackgroundColor:v4];
  v5 = v4;
  v6 = [v5 CGColor];

  v7 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  [v7 setBackgroundColor:v6];
}

- (void)setCustomMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  customMessage = self->_customMessage;
  self->_customMessage = v5;

  v7 = [(AVPictureInPictureIndicatorView *)self pipIndicatorLayer];
  [v7 setCustomText:v4];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVPictureInPictureIndicatorView;
  [(AVPictureInPictureIndicatorView *)&v4 layoutSublayersOfLayer:a3];
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