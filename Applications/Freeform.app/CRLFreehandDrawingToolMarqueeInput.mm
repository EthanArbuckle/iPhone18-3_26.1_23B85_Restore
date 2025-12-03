@interface CRLFreehandDrawingToolMarqueeInput
- (CGPoint)unscaledTapPoint;
- (CRLFreehandDrawingToolMarqueeInput)initWithUnscaledTapPoint:(CGPoint)point inputType:(int64_t)type;
@end

@implementation CRLFreehandDrawingToolMarqueeInput

- (CRLFreehandDrawingToolMarqueeInput)initWithUnscaledTapPoint:(CGPoint)point inputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingToolMarqueeInput;
  result = [(CRLFreehandDrawingToolMarqueeInput *)&v8 init];
  if (result)
  {
    result->_unscaledTapPoint.x = x;
    result->_unscaledTapPoint.y = y;
    result->_inputType = type;
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