@interface THNotesViewRenderedAnnotation
- (CGRect)highlightTextFrame;
- (void)dealloc;
@end

@implementation THNotesViewRenderedAnnotation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesViewRenderedAnnotation;
  [(THNotesViewRenderedAnnotation *)&v3 dealloc];
}

- (CGRect)highlightTextFrame
{
  x = self->mHighlightTextFrame.origin.x;
  y = self->mHighlightTextFrame.origin.y;
  width = self->mHighlightTextFrame.size.width;
  height = self->mHighlightTextFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end