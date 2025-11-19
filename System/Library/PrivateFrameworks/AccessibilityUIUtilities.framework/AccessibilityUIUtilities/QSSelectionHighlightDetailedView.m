@interface QSSelectionHighlightDetailedView
- (CGRect)displayRect;
- (void)drawRect:(CGRect)a3;
- (void)setDisplayRect:(CGRect)a3;
@end

@implementation QSSelectionHighlightDetailedView

- (void)setDisplayRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_displayRect = &self->_displayRect;
  v9 = CGRectEqualToRect(self->_displayRect, a3);
  p_displayRect->origin.x = x;
  p_displayRect->origin.y = y;
  p_displayRect->size.width = width;
  p_displayRect->size.height = height;
  [(QSSelectionHighlightDetailedView *)self setFrame:x, y, width, height];
  if (!v9)
  {

    [(QSSelectionHighlightDetailedView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E6989890] sharedInstance];
  v9 = [v8 quickSpeakHighlightOption];

  if ([(QSSelectionHighlightDetailedView *)self sentenceHighlight])
  {
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      return;
    }

    v10 = [MEMORY[0x1E6989890] sharedInstance];
    v11 = [v10 quickSpeakSentenceHighlightOption];

    if (v11 == 2)
    {
      if (v9 == 2)
      {
        v15 = [(QSSelectionHighlightDetailedView *)self selectionColor];
      }

      else
      {
        v16 = [MEMORY[0x1E6989890] sharedInstance];
        v17 = [v16 quickSpeakSentenceHighlightColor];

        v15 = [(QSSelectionHighlightDetailedView *)self selectionColor];
        if (!v17)
        {
          v24 = v15;
          v18 = v15;
          v19 = [v24 CGColor];

          if (CGColorGetNumberOfComponents(v19) < 3)
          {
            v21 = [(QSSelectionHighlightDetailedView *)self selectionColor];
            v25 = [v21 colorWithAlphaComponent:0.8];

            v15 = v25;
          }

          else
          {
            Components = CGColorGetComponents(v19);
            v15 = [MEMORY[0x1E69DC888] colorWithRed:1.0 - *Components green:1.0 - Components[1] blue:1.0 - Components[2] alpha:CGColorGetAlpha(v19) + 0.1];
          }
        }
      }

      if (!v15)
      {
        goto LABEL_9;
      }

      v23 = v15;
      [v15 setFill];
      v22 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
      [v22 fill];
    }

    else
    {
      if (v11 != 1)
      {
        return;
      }

      v12 = [(QSSelectionHighlightDetailedView *)self underlineColor];
      [v12 setStroke];

      v23 = [MEMORY[0x1E69DC728] bezierPath];
      [v23 setLineWidth:1.0];
      [v23 setLineCapStyle:1];
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      [v23 moveToPoint:{x, CGRectGetMaxY(v27) + -1.0}];
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxX = CGRectGetMaxX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      [v23 addLineToPoint:{MaxX, CGRectGetMaxY(v29) + -1.0}];
      [v23 stroke];
    }
  }

  else
  {
    if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      return;
    }

    v14 = [(QSSelectionHighlightDetailedView *)self selectionColor];
    [v14 setFill];

    v23 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    [v23 fill];
  }

  v15 = v23;
LABEL_9:
}

- (CGRect)displayRect
{
  x = self->_displayRect.origin.x;
  y = self->_displayRect.origin.y;
  width = self->_displayRect.size.width;
  height = self->_displayRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end