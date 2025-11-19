@interface _TUIButtonMetrics
- (UIEdgeInsets)alignmentRectInsets;
- (_TUIButtonMetrics)initWithHeight:(double)a3 widthPadding:(double)a4 alignmentRectInsets:(UIEdgeInsets)a5;
@end

@implementation _TUIButtonMetrics

- (_TUIButtonMetrics)initWithHeight:(double)a3 widthPadding:(double)a4 alignmentRectInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12.receiver = self;
  v12.super_class = _TUIButtonMetrics;
  result = [(_TUIButtonMetrics *)&v12 init];
  if (result)
  {
    result->_height = a3;
    result->_widthPadding = a4;
    result->_alignmentRectInsets.top = top;
    result->_alignmentRectInsets.left = left;
    result->_alignmentRectInsets.bottom = bottom;
    result->_alignmentRectInsets.right = right;
  }

  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end