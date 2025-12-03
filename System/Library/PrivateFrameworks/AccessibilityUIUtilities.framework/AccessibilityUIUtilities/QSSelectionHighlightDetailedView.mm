@interface QSSelectionHighlightDetailedView
- (CGRect)displayRect;
- (void)drawRect:(CGRect)rect;
- (void)setDisplayRect:(CGRect)rect;
@end

@implementation QSSelectionHighlightDetailedView

- (void)setDisplayRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_displayRect = &self->_displayRect;
  v9 = CGRectEqualToRect(self->_displayRect, rect);
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  quickSpeakHighlightOption = [mEMORY[0x1E6989890] quickSpeakHighlightOption];

  if ([(QSSelectionHighlightDetailedView *)self sentenceHighlight])
  {
    if ((quickSpeakHighlightOption & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      return;
    }

    mEMORY[0x1E6989890]2 = [MEMORY[0x1E6989890] sharedInstance];
    quickSpeakSentenceHighlightOption = [mEMORY[0x1E6989890]2 quickSpeakSentenceHighlightOption];

    if (quickSpeakSentenceHighlightOption == 2)
    {
      if (quickSpeakHighlightOption == 2)
      {
        selectionColor = [(QSSelectionHighlightDetailedView *)self selectionColor];
      }

      else
      {
        mEMORY[0x1E6989890]3 = [MEMORY[0x1E6989890] sharedInstance];
        quickSpeakSentenceHighlightColor = [mEMORY[0x1E6989890]3 quickSpeakSentenceHighlightColor];

        selectionColor = [(QSSelectionHighlightDetailedView *)self selectionColor];
        if (!quickSpeakSentenceHighlightColor)
        {
          v24 = selectionColor;
          v18 = selectionColor;
          cGColor = [v24 CGColor];

          if (CGColorGetNumberOfComponents(cGColor) < 3)
          {
            selectionColor2 = [(QSSelectionHighlightDetailedView *)self selectionColor];
            v25 = [selectionColor2 colorWithAlphaComponent:0.8];

            selectionColor = v25;
          }

          else
          {
            Components = CGColorGetComponents(cGColor);
            selectionColor = [MEMORY[0x1E69DC888] colorWithRed:1.0 - *Components green:1.0 - Components[1] blue:1.0 - Components[2] alpha:CGColorGetAlpha(cGColor) + 0.1];
          }
        }
      }

      if (!selectionColor)
      {
        goto LABEL_9;
      }

      bezierPath = selectionColor;
      [selectionColor setFill];
      v22 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
      [v22 fill];
    }

    else
    {
      if (quickSpeakSentenceHighlightOption != 1)
      {
        return;
      }

      underlineColor = [(QSSelectionHighlightDetailedView *)self underlineColor];
      [underlineColor setStroke];

      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      [bezierPath setLineWidth:1.0];
      [bezierPath setLineCapStyle:1];
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      [bezierPath moveToPoint:{x, CGRectGetMaxY(v27) + -1.0}];
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxX = CGRectGetMaxX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      [bezierPath addLineToPoint:{MaxX, CGRectGetMaxY(v29) + -1.0}];
      [bezierPath stroke];
    }
  }

  else
  {
    if ((quickSpeakHighlightOption & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      return;
    }

    selectionColor3 = [(QSSelectionHighlightDetailedView *)self selectionColor];
    [selectionColor3 setFill];

    bezierPath = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    [bezierPath fill];
  }

  selectionColor = bezierPath;
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