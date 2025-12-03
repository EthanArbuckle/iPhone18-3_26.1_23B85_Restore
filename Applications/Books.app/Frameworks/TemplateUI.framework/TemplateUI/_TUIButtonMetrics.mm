@interface _TUIButtonMetrics
- (UIEdgeInsets)alignmentRectInsets;
- (_TUIButtonMetrics)initWithHeight:(double)height widthPadding:(double)padding alignmentRectInsets:(UIEdgeInsets)insets;
@end

@implementation _TUIButtonMetrics

- (_TUIButtonMetrics)initWithHeight:(double)height widthPadding:(double)padding alignmentRectInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v12.receiver = self;
  v12.super_class = _TUIButtonMetrics;
  result = [(_TUIButtonMetrics *)&v12 init];
  if (result)
  {
    result->_height = height;
    result->_widthPadding = padding;
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