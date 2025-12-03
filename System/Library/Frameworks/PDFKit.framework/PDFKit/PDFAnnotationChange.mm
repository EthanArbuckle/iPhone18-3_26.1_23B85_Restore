@interface PDFAnnotationChange
- (PDFAnnotationChange)initWithAddedAnnotation:(id)annotation;
- (PDFAnnotationChange)initWithChangedAnnotation:(id)annotation;
- (PDFAnnotationChange)initWithRemovedAnnotation:(id)annotation;
- (PDFAnnotationChange)initWithReorderedAndChangedAnnotation:(id)annotation;
- (PDFAnnotationChange)initWithReorderedAnnotation:(id)annotation;
- (id)description;
@end

@implementation PDFAnnotationChange

- (PDFAnnotationChange)initWithAddedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = PDFAnnotationChange;
  v6 = [(PDFAnnotationChange *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(PDFAnnotationChangePrivate);
    v8 = v6->_private;
    v6->_private = v7;

    v9 = sChangeCounter++;
    v6->_private->changeTimestamp = v9;
    v6->_private->changeType = 0;
    objc_storeStrong(&v6->_private->annotation, annotation);
  }

  return v6;
}

- (PDFAnnotationChange)initWithChangedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = PDFAnnotationChange;
  v6 = [(PDFAnnotationChange *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(PDFAnnotationChangePrivate);
    v8 = v6->_private;
    v6->_private = v7;

    v9 = sChangeCounter++;
    v6->_private->changeTimestamp = v9;
    v6->_private->changeType = 1;
    objc_storeStrong(&v6->_private->annotation, annotation);
  }

  return v6;
}

- (PDFAnnotationChange)initWithRemovedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = PDFAnnotationChange;
  v6 = [(PDFAnnotationChange *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(PDFAnnotationChangePrivate);
    v8 = v6->_private;
    v6->_private = v7;

    v9 = sChangeCounter++;
    v6->_private->changeTimestamp = v9;
    v6->_private->changeType = 2;
    objc_storeStrong(&v6->_private->annotation, annotation);
  }

  return v6;
}

- (PDFAnnotationChange)initWithReorderedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = PDFAnnotationChange;
  v6 = [(PDFAnnotationChange *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(PDFAnnotationChangePrivate);
    v8 = v6->_private;
    v6->_private = v7;

    v9 = sChangeCounter++;
    v6->_private->changeTimestamp = v9;
    v6->_private->changeType = 3;
    objc_storeStrong(&v6->_private->annotation, annotation);
  }

  return v6;
}

- (PDFAnnotationChange)initWithReorderedAndChangedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = PDFAnnotationChange;
  v6 = [(PDFAnnotationChange *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(PDFAnnotationChangePrivate);
    v8 = v6->_private;
    v6->_private = v7;

    v9 = sChangeCounter++;
    v6->_private->changeTimestamp = v9;
    v6->_private->changeType = 4;
    objc_storeStrong(&v6->_private->annotation, annotation);
  }

  return v6;
}

- (id)description
{
  changeType = self->_private->changeType;
  if (changeType > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E81514A0[changeType];
  }

  v5 = MEMORY[0x1E696AEC0];
  changeTimestamp = self->_private->changeTimestamp;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  type = [(PDFAnnotation *)self->_private->annotation type];
  v10 = [v5 stringWithFormat:@"PDFAnnotationChange - Type: %@  Timestamp: %llu  Annotation: %@/%@ (%p) ", v4, changeTimestamp, v8, type, self->_private->annotation];

  return v10;
}

@end