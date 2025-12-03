@interface CAUITransportButton
- (CAUITransportButton)initWithCoder:(id)coder;
- (CAUITransportButton)initWithFrame:(CGRect)frame;
- (CGPath)newPathRefForStyle:(int)style;
- (void)flash;
- (void)setDrawingStyle:(int)style;
- (void)setFillColor:(CGColor *)color;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CAUITransportButton

- (CAUITransportButton)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = CAUITransportButton;
  v3 = [(CAUITransportButton *)&v22 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    p_imageRect = &v3->imageRect;
    [(CAUITransportButton *)v3 bounds];
    *&p_imageRect->origin.x = v6;
    v4->imageRect.origin.y = v7;
    v4->imageRect.size.width = v8;
    v4->imageRect.size.height = v9;
    [(CAUITransportButton *)v4 bounds];
    width = 24.0;
    v12 = 24.0 - v11;
    [(CAUITransportButton *)v4 bounds];
    v14 = 24.0 - v13;
    if (v12 > 0.0 || v14 > 0.0)
    {
      if (v12 <= 0.0)
      {
        width = v4->imageRect.size.width;
      }

      height = 24.0;
      if (v14 <= 0.0)
      {
        height = v4->imageRect.size.height;
      }

      [(CAUITransportButton *)v4 frame];
      v17 = v16;
      if (v12 > 0.0)
      {
        v18 = v16 + v12 * -0.5;
        v17 = roundf(v18);
      }

      [(CAUITransportButton *)v4 frame];
      if (v14 > 0.0)
      {
        v20 = v19 + v14 * -0.5;
        v19 = roundf(v20);
      }

      [(CAUITransportButton *)v4 setFrame:v17, v19, width, height];
      [(CAUITransportButton *)v4 setBounds:0.0, 0.0, width, height];
    }
  }

  return v4;
}

- (CAUITransportButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v23.receiver = self;
  v23.super_class = CAUITransportButton;
  v5 = [(CAUITransportButton *)&v23 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = v5;
  if (v5)
  {
    p_imageRect = &v5->imageRect;
    [(CAUITransportButton *)v5 bounds];
    v10 = v9;
    *&p_imageRect->origin.x = v11;
    v6->imageRect.origin.y = v12;
    v6->imageRect.size.width = v9;
    v6->imageRect.size.height = v8;
    v13 = 24.0 - width;
    v14 = 24.0 - height;
    if (24.0 - width > 0.0 || v14 > 0.0)
    {
      if (v14 <= 0.0)
      {
        v15 = v8;
      }

      else
      {
        v15 = 24.0;
      }

      [(CAUITransportButton *)v6 frame];
      v17 = v16;
      if (v13 <= 0.0)
      {
        v18 = v10;
      }

      else
      {
        v18 = 24.0;
      }

      if (v13 > 0.0)
      {
        v19 = v16 + v13 * -0.5;
        v17 = roundf(v19);
      }

      [(CAUITransportButton *)v6 frame];
      if (v14 > 0.0)
      {
        v21 = v20 + v14 * -0.5;
        v20 = roundf(v21);
      }

      [(CAUITransportButton *)v6 setFrame:v17, v20, v18, v15];
      [(CAUITransportButton *)v6 setBounds:0.0, 0.0, v18, v15];
    }
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![event type])
  {
    [-[CAUITransportButton layer](self "layer")];
  }

  v7.receiver = self;
  v7.super_class = CAUITransportButton;
  [(CAUITransportButton *)&v7 touchesBegan:began withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (![event type])
  {
    [-[CAUITransportButton layer](self "layer")];
  }

  v7.receiver = self;
  v7.super_class = CAUITransportButton;
  [(CAUITransportButton *)&v7 touchesEnded:ended withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (![event type])
  {
    [-[CAUITransportButton layer](self "layer")];
  }

  v7.receiver = self;
  v7.super_class = CAUITransportButton;
  [(CAUITransportButton *)&v7 touchesEnded:cancelled withEvent:event];
}

- (void)setDrawingStyle:(int)style
{
  if (self->drawingStyle != style)
  {
    v21 = v3;
    v22 = v4;
    self->drawingStyle = style;
    v7 = [(CAUITransportButton *)self newPathRefForStyle:?];
    [-[CAUITransportButton layer](self "layer")];
    CGPathRelease(v7);
    -[CAUITransportButton setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    if (style == 4)
    {
      [-[CAUITransportButton layer](self "layer")];
      v8 = MEMORY[0x277D75D18];
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __39__CAUITransportButton_setDrawingStyle___block_invoke_2;
      v14 = &unk_278A255E0;
      selfCopy = self;
      v9 = 1.0;
      v10 = &v11;
    }

    else
    {
      if (style != 5)
      {
LABEL_7:
        [(CAUITransportButton *)self setNeedsDisplay];
        return;
      }

      v8 = MEMORY[0x277D75D18];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __39__CAUITransportButton_setDrawingStyle___block_invoke;
      v19 = &unk_278A255E0;
      selfCopy2 = self;
      v9 = 1.0;
      v10 = &v16;
    }

    [v8 animateWithDuration:196608 delay:v10 options:0 animations:v9 completion:{0.0, v11, v12, v13, v14, selfCopy, v16, v17, v18, v19, selfCopy2}];
    goto LABEL_7;
  }
}

uint64_t __39__CAUITransportButton_setDrawingStyle___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "layer")];
  [objc_msgSend(*(a1 + 32) "layer")];
  [objc_msgSend(*(a1 + 32) "layer")];
  v2 = *(a1 + 32);

  return [v2 flash];
}

uint64_t __39__CAUITransportButton_setDrawingStyle___block_invoke_2(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "layer")];
  [objc_msgSend(*(a1 + 32) "layer")];
  v2 = [*(a1 + 32) layer];

  return [v2 setLineWidth:0.0];
}

- (void)setFillColor:(CGColor *)color
{
  CGColorRetain(color);
  CGColorRelease(self->fillColor);
  self->fillColor = color;
  layer = [(CAUITransportButton *)self layer];

  [layer setFillColor:color];
}

- (void)flash
{
  v3 = [objc_msgSend(MEMORY[0x277D75348] colorWithCGColor:{self->fillColor), "colorWithAlphaComponent:", 0.2}];
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"fillColor"];
  [v4 setFromValue:{objc_msgSend(-[CAUITransportButton layer](self, "layer"), "fillColor")}];
  [v4 setToValue:{objc_msgSend(v3, "CGColor")}];
  [v4 setDuration:2.0];
  [v4 setRepeatCount:0.0];
  [v4 setAutoreverses:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__CAUITransportButton_flash__block_invoke;
  v5[3] = &unk_278A255E0;
  v5[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v5];
  [-[CAUITransportButton layer](self "layer")];
  [MEMORY[0x277CD9FF0] commit];
}

_DWORD *__28__CAUITransportButton_flash__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[186] == 5)
  {
    return [result flash];
  }

  return result;
}

- (CGPath)newPathRefForStyle:(int)style
{
  Mutable = 0;
  p_imageRect = &self->imageRect;
  width = self->imageRect.size.width;
  height = self->imageRect.size.height;
  if (width >= height)
  {
    v7 = self->imageRect.size.height;
  }

  else
  {
    v7 = self->imageRect.size.width;
  }

  if (style <= 3)
  {
    switch(style)
    {
      case 1:
        Mutable = CGPathCreateMutable();
        v26 = (p_imageRect->size.height - v7 * 0.857) * 0.5;
        v27 = roundf(v26);
        v28 = v7 * 0.857;
        v29 = roundf(v28);
        v42.origin.x = 0.0;
        v42.origin.y = v27;
        v42.size.width = v7 * 0.062;
        v42.size.height = v29;
        CGPathAddRoundedRect(Mutable, 0, v42, v7 * 0.026 * 0.5, v7 * 0.026 * 0.5);
        v30 = v7 * 0.0631 * 0.5;
        v31 = v7 * 0.062 + v7 * 0.006;
        v15 = 2.0943951;
        CGPathAddArc(Mutable, 0, v31 + v30, v29 * 0.5 + v27, v30, 2.0943951, 4.1887902, 0);
        CGPathAddArc(Mutable, 0, v7 * 0.699 + v31 - v30, v30 + v27, v30, 4.1887902, 0.0, 0);
        v16 = v29 + v27 - v30;
        v20 = 0.0;
        v17 = Mutable;
        v18 = v7 * 0.699 + v31 - v30;
        v19 = v30;
        goto LABEL_14;
      case 2:
        Mutable = CGPathCreateMutable();
        v32 = v7 * 0.2776;
        v33 = (p_imageRect->size.width + v7 * -0.7452) * 0.5;
        v34 = roundf(v33);
        v35 = (p_imageRect->size.height - v7 * 0.857) * 0.5;
        v36 = roundf(v35);
        v37 = v7 * 0.0397 * 0.5;
        v38 = v7 * 0.857;
        v39 = roundf(v38);
        v43.origin.x = v34;
        v43.origin.y = v36;
        v43.size.width = v32;
        v43.size.height = v39;
        CGPathAddRoundedRect(Mutable, 0, v43, v37, v37);
        v40 = p_imageRect->size.width - v34 - v32;
        v44.origin.x = roundf(v40);
        v44.origin.y = v36;
        v44.size.width = v32;
        v44.size.height = v39;
        CGPathAddRoundedRect(Mutable, 0, v44, v37, v37);
        return Mutable;
      case 3:
        Mutable = CGPathCreateMutable();
        v8 = (p_imageRect->size.width - v7 * 0.6538) * 0.5;
        v9 = roundf(v8);
        v10 = (p_imageRect->size.height - v7 * 0.857) * 0.5;
        v11 = roundf(v10);
        v12 = v7 * 0.0631 * 0.5;
        v13 = v7 * 0.857;
        v14 = roundf(v13);
        v15 = 3.14159265;
        CGPathAddArc(Mutable, 0, v12 + v9, v12 + v11, v12, 3.14159265, 5.23598776, 0);
        CGPathAddArc(Mutable, 0, v7 * 0.6538 + v9 - v12, v14 * 0.5 + v11, v12, 5.23598776, 1.04719755, 0);
        v16 = v14 + v11 - v12;
        v17 = Mutable;
        v18 = v12 + v9;
        v19 = v12;
        v20 = 1.04719755;
LABEL_14:
        CGPathAddArc(v17, 0, v18, v16, v19, v20, v15, 0);
        CGPathCloseSubpath(Mutable);
        break;
    }

    return Mutable;
  }

  if ((style - 4) >= 2)
  {
    return Mutable;
  }

  v22 = (width - v7 * 0.7825) * 0.5;
  v23 = (height - v7 * 0.7825) * 0.5;

  v21 = v7 * 0.7825;
  v24 = v7 * 0.7825;
  return CGPathCreateWithEllipseInRect(*&v22, 0);
}

@end