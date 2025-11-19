@interface THAnnotationAnchor
+ (id)annotationAnchorWithContentNode:(id)a3 annotation:(id)a4 noteRange:(_NSRange)a5;
- (THAnnotationAnchor)initWithContentNode:(id)a3 annotation:(id)a4 noteRange:(_NSRange)a5;
- (_NSRange)noteRange;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
@end

@implementation THAnnotationAnchor

- (THAnnotationAnchor)initWithContentNode:(id)a3 annotation:(id)a4 noteRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10.receiver = self;
  v10.super_class = THAnnotationAnchor;
  v8 = [(THModelBoundAnchor *)&v10 initWithContentNode:a3];
  if (v8)
  {
    v8->_annotation = a4;
    v8->_noteRange.location = location;
    v8->_noteRange.length = length;
  }

  return v8;
}

+ (id)annotationAnchorWithContentNode:(id)a3 annotation:(id)a4 noteRange:(_NSRange)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithContentNode:a3 annotation:a4 noteRange:{a5.location, a5.length}];

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
  v2 = [(THAnnotationAnchor *)self annotation];

  return [(THAnnotation *)v2 annotationAbsolutePhysicalPageIndex];
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