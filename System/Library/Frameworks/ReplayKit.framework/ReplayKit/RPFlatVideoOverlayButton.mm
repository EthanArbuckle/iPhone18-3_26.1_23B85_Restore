@interface RPFlatVideoOverlayButton
- (RPFlatVideoOverlayButton)initWithStyle:(int64_t)style;
- (id)_createOverlayImageWithBackgroundWhite:(double)white backgroundAlpha:(double)alpha glyphAlpha:(double)glyphAlpha;
- (id)_highlightedButtonImage;
- (id)_normalButtonImage;
- (id)target;
- (void)_handleTap:(id)tap;
@end

@implementation RPFlatVideoOverlayButton

- (RPFlatVideoOverlayButton)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = RPFlatVideoOverlayButton;
  v4 = [(RPFlatVideoOverlayButton *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    _normalButtonImage = [(RPFlatVideoOverlayButton *)v4 _normalButtonImage];
    [(RPFlatVideoOverlayButton *)v5 setImage:_normalButtonImage forState:0];

    _highlightedButtonImage = [(RPFlatVideoOverlayButton *)v5 _highlightedButtonImage];
    [(RPFlatVideoOverlayButton *)v5 setImage:_highlightedButtonImage forState:1];

    [(RPFlatVideoOverlayButton *)v5 sizeToFit];
    [(RPFlatVideoOverlayButton *)v5 setDeliversTouchesForGesturesToSuperview:0];
    [(RPFlatVideoOverlayButton *)v5 addTarget:v5 action:sel__handleTap_ forControlEvents:64];
  }

  return v5;
}

- (void)_handleTap:(id)tap
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  action = self->_action;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_target);
    [v7 performSelector:self->_action withObject:self];
  }
}

- (id)_normalButtonImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RPFlatVideoOverlayButton__normalButtonImage__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  if (_normalButtonImage_onceToken != -1)
  {
    dispatch_once(&_normalButtonImage_onceToken, block);
  }

  return _normalButtonImage_image;
}

uint64_t __46__RPFlatVideoOverlayButton__normalButtonImage__block_invoke(uint64_t a1)
{
  _normalButtonImage_image = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.300000012];

  return MEMORY[0x2821F96F8]();
}

- (id)_highlightedButtonImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RPFlatVideoOverlayButton__highlightedButtonImage__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  if (_highlightedButtonImage_onceToken != -1)
  {
    dispatch_once(&_highlightedButtonImage_onceToken, block);
  }

  return _highlightedButtonImage_image;
}

uint64_t __51__RPFlatVideoOverlayButton__highlightedButtonImage__block_invoke(uint64_t a1)
{
  _highlightedButtonImage_image = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.5];

  return MEMORY[0x2821F96F8]();
}

- (id)_createOverlayImageWithBackgroundWhite:(double)white backgroundAlpha:(double)alpha glyphAlpha:(double)glyphAlpha
{
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x277D755B8] imageNamed:@"RPVideoOverlayBackgroundMask" inBundle:v8];
  v10 = [MEMORY[0x277D755B8] imageNamed:@"RPVideoOverlayGlyphMask" inBundle:v8];
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [v9 size];
  width = v18.width;
  height = v18.height;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetGrayFillColor(CurrentContext, white, alpha);
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = width;
  v19.size.height = height;
  CGContextFillRect(CurrentContext, v19);
  [v9 drawAtPoint:23 blendMode:v11 alpha:{v12, 1.0}];
  [v10 drawAtPoint:23 blendMode:v11 alpha:{v12, 1.0}];
  [v10 drawAtPoint:0 blendMode:v11 alpha:{v12, glyphAlpha}];
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end