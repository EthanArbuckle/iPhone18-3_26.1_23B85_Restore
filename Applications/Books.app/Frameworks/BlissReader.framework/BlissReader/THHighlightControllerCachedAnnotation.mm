@interface THHighlightControllerCachedAnnotation
- (THHighlightControllerCachedAnnotation)initWithAnnotation:(id)a3;
- (void)dealloc;
- (void)updateAnnotation:(id)a3;
@end

@implementation THHighlightControllerCachedAnnotation

- (THHighlightControllerCachedAnnotation)initWithAnnotation:(id)a3
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
    if (!a3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v6 = a3;
    v5->mAnnotation = v6;
    v5->mLastRenderedStyle = [(THAnnotation *)v6 annotationStyle];
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

- (void)updateAnnotation:(id)a3
{
  mAnnotation = self->mAnnotation;
  if (mAnnotation != a3 && [(THAnnotation *)mAnnotation isEqual:?])
  {

    self->mAnnotation = 0;
    v6 = a3;
    self->mAnnotation = v6;
    mHighlight = self->mHighlight;

    [(THHighlight *)mHighlight setAnnotation:v6];
  }
}

@end