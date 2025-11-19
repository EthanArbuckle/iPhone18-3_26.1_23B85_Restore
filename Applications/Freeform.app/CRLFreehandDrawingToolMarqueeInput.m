@interface CRLFreehandDrawingToolMarqueeInput
- (CGPoint)unscaledTapPoint;
- (CRLFreehandDrawingToolMarqueeInput)initWithUnscaledTapPoint:(CGPoint)a3 inputType:(int64_t)a4;
@end

@implementation CRLFreehandDrawingToolMarqueeInput

- (CRLFreehandDrawingToolMarqueeInput)initWithUnscaledTapPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingToolMarqueeInput;
  result = [(CRLFreehandDrawingToolMarqueeInput *)&v8 init];
  if (result)
  {
    result->_unscaledTapPoint.x = x;
    result->_unscaledTapPoint.y = y;
    result->_inputType = a4;
  }

  return result;
}

- (CGPoint)unscaledTapPoint
{
  x = self->_unscaledTapPoint.x;
  y = self->_unscaledTapPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end