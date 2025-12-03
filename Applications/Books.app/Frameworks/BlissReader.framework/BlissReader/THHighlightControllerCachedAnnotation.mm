@interface THHighlightControllerCachedAnnotation
- (THHighlightControllerCachedAnnotation)initWithAnnotation:(id)annotation;
- (void)dealloc;
- (void)updateAnnotation:(id)annotation;
@end

@implementation THHighlightControllerCachedAnnotation

- (THHighlightControllerCachedAnnotation)initWithAnnotation:(id)annotation
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8.receiver = self;
  v8.super_class = THHighlightControllerCachedAnnotation;
  v5 = [(THHighlightControllerCachedAnnotation *)&v8 init];
  if (v5)
  {
    if (!annotation)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    annotationCopy = annotation;
    v5->mAnnotation = annotationCopy;
    v5->mLastRenderedStyle = [(THAnnotation *)annotationCopy annotationStyle];
  }

  return v5;
}

- (void)dealloc
{
  self->mAnnotation = 0;

  self->mHighlight = 0;
  self->mMarginNote = 0;
  v3.receiver = self;
  v3.super_class = THHighlightControllerCachedAnnotation;
  [(THHighlightControllerCachedAnnotation *)&v3 dealloc];
}

- (void)updateAnnotation:(id)annotation
{
  mAnnotation = self->mAnnotation;
  if (mAnnotation != annotation && [(THAnnotation *)mAnnotation isEqual:?])
  {

    self->mAnnotation = 0;
    annotationCopy = annotation;
    self->mAnnotation = annotationCopy;
    mHighlight = self->mHighlight;

    [(THHighlight *)mHighlight setAnnotation:annotationCopy];
  }
}

@end