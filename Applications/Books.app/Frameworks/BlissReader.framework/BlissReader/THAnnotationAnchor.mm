@interface THAnnotationAnchor
+ (id)annotationAnchorWithContentNode:(id)node annotation:(id)annotation noteRange:(_NSRange)range;
- (THAnnotationAnchor)initWithContentNode:(id)node annotation:(id)annotation noteRange:(_NSRange)range;
- (_NSRange)noteRange;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
@end

@implementation THAnnotationAnchor

- (THAnnotationAnchor)initWithContentNode:(id)node annotation:(id)annotation noteRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = THAnnotationAnchor;
  v8 = [(THModelBoundAnchor *)&v10 initWithContentNode:node];
  if (v8)
  {
    v8->_annotation = annotation;
    v8->_noteRange.location = location;
    v8->_noteRange.length = length;
  }

  return v8;
}

+ (id)annotationAnchorWithContentNode:(id)node annotation:(id)annotation noteRange:(_NSRange)range
{
  v5 = [objc_alloc(objc_opt_class()) initWithContentNode:node annotation:annotation noteRange:{range.location, range.length}];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

- (unint64_t)absolutePageIndex
{
  annotation = [(THAnnotationAnchor *)self annotation];

  return [(THAnnotation *)annotation annotationAbsolutePhysicalPageIndex];
}

- (_NSRange)noteRange
{
  p_noteRange = &self->_noteRange;
  location = self->_noteRange.location;
  length = p_noteRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end