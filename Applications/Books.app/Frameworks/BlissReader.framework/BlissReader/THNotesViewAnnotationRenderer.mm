@interface THNotesViewAnnotationRenderer
- (THNotesViewAnnotationRenderer)initWithDelegate:(id)delegate;
- (id)p_newHighlightLayerForAnnotation:(id)annotation width:(double)width storage:(id)storage text:(id)text range:(_NSRange)range interfaceStyle:(int64_t)style maxLines:(unint64_t)lines documentRoot:(id)self0;
- (void)dealloc;
- (void)p_finishedRenderJob:(id)job;
- (void)p_performRenderJob:(id)job accessController:(id)controller location:(id)location width:(double)width editingWidth:(double)editingWidth text:(id)text range:(_NSRange)range interfaceStyle:(int64_t)self0;
- (void)p_startNextRenderJob;
- (void)p_startRenderJob:(id)job;
- (void)renderAnnotations:(id)annotations;
- (void)renderAnnotations:(id)annotations withUserInterfaceStyle:(int64_t)style;
- (void)waitWithTimeout:(double)timeout forCondition:(id)condition;
@end

@implementation THNotesViewAnnotationRenderer

- (THNotesViewAnnotationRenderer)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = THNotesViewAnnotationRenderer;
  result = [(THNotesViewAnnotationRenderer *)&v5 init];
  if (result)
  {
    result->mDelegate = delegate;
  }

  return result;
}

- (void)dealloc
{
  if (self->mCurrentRenderJob)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THNotesViewAnnotationRenderer;
  [(THNotesViewAnnotationRenderer *)&v3 dealloc];
}

- (void)renderAnnotations:(id)annotations
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [annotations mutableCopy];
  mCurrentRenderJob = self->mCurrentRenderJob;
  if (mCurrentRenderJob)
  {
    [(THNotesViewAnnotationRenderJob *)mCurrentRenderJob setCancelled:1];
    [(THModelContentNode *)[(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob contentNode] cancelLoading];

    self->mCurrentRenderJob = 0;
  }

  self->mAnnotationQueue = v5;
  if (!self->mCurrentRenderJob)
  {

    [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
  }
}

- (void)renderAnnotations:(id)annotations withUserInterfaceStyle:(int64_t)style
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [annotations mutableCopy];
  mCurrentRenderJob = self->mCurrentRenderJob;
  if (mCurrentRenderJob)
  {
    [(THNotesViewAnnotationRenderJob *)mCurrentRenderJob setCancelled:1];
    [(THModelContentNode *)[(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob contentNode] cancelLoading];

    self->mCurrentRenderJob = 0;
  }

  self->mAnnotationQueue = v7;
  self->mInterfaceStyle = style;
  if (!self->mCurrentRenderJob)
  {

    [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
  }
}

- (void)waitWithTimeout:(double)timeout forCondition:(id)condition
{
  if (((*(condition + 2))(condition, a2) & 1) == 0)
  {
    if (!self->mCurrentRenderJob)
    {
      [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
    }

    v7 = dispatch_time(0, (timeout * 1000000000.0));
    do
    {
      if (![(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob waitUntilFinishedWithTimeoutTime:v7])
      {
        break;
      }

      [(THNotesViewAnnotationRenderer *)self p_finishedRenderJob:self->mCurrentRenderJob];
    }

    while (!(*(condition + 2))(condition));
  }
}

- (void)p_startNextRenderJob
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCurrentRenderJob)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  firstObject = [(NSMutableArray *)self->mAnnotationQueue firstObject];
  if (self->mDelegate)
  {
    v4 = firstObject;
    if (firstObject)
    {
      v5 = objc_alloc_init(THNotesViewAnnotationRenderJob);
      self->mCurrentRenderJob = v5;
      [(THNotesViewAnnotationRenderJob *)v5 setAnnotation:v4];
      [(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob setInterfaceStyle:self->mInterfaceStyle];
      [(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob setContentNode:[(THNotesViewAnnotationRendererDelegate *)self->mDelegate annotationRenderer:self contentNodeForAnnotation:v4]];
      [(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob setMaxLines:[(THNotesViewAnnotationRendererDelegate *)self->mDelegate maxLinesForAnnotationRenderer:self]];
      [(NSMutableArray *)self->mAnnotationQueue removeObjectAtIndex:0];
      mCurrentRenderJob = self->mCurrentRenderJob;

      [(THNotesViewAnnotationRenderer *)self p_startRenderJob:mCurrentRenderJob];
    }
  }

  else
  {
    mAnnotationQueue = self->mAnnotationQueue;

    [(NSMutableArray *)mAnnotationQueue removeAllObjects];
  }
}

- (void)p_startRenderJob:(id)job
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCurrentRenderJob != job)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [job willStart];
  [(THNotesViewAnnotationRendererDelegate *)self->mDelegate highlightWidthForAnnotationRenderer:self];
  v6 = v5;
  [(THNotesViewAnnotationRendererDelegate *)self->mDelegate editingHighlightWidthForAnnotationRenderer:self];
  v8 = v7;
  v9 = [objc_msgSend(job "annotation")];
  v10 = [objc_msgSend(job "annotation")];
  v12 = v11;
  v13 = [objc_msgSend(job "annotation")];
  interfaceStyle = [job interfaceStyle];
  v15 = [(THNotesViewAnnotationRendererDelegate *)self->mDelegate accessControllerForAnnotationRenderer:self];
  [objc_msgSend(job "contentNode")];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_12CD6C;
  v16[3] = &unk_45DD08;
  v16[4] = self;
  v16[5] = job;
  v16[6] = v15;
  v16[7] = v13;
  v16[9] = v6;
  v16[10] = v8;
  v16[8] = v9;
  v16[11] = v10;
  v16[12] = v12;
  v16[13] = interfaceStyle;
  [+[TSKThreadDispatcher sharedInstance](TSKThreadDispatcher dispatch:"dispatch:", v16];
}

- (void)p_performRenderJob:(id)job accessController:(id)controller location:(id)location width:(double)width editingWidth:(double)editingWidth text:(id)text range:(_NSRange)range interfaceStyle:(int64_t)self0
{
  length = range.length;
  location = range.location;
  v18 = [(THNotesViewAnnotationRendererDelegate *)self->mDelegate annotationRenderer:self storageForAnnotationLocation:location];
  if (([job cancelled] & 1) == 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_12CECC;
    v19[3] = &unk_45DD30;
    v19[4] = self;
    v19[5] = job;
    *&v19[8] = width;
    v19[6] = v18;
    v19[7] = text;
    v19[9] = location;
    v19[10] = length;
    v19[11] = style;
    *&v19[12] = editingWidth;
    [controller performRead:v19];
  }
}

- (void)p_finishedRenderJob:(id)job
{
  if (([job cancelled] & 1) == 0 && self->mCurrentRenderJob == job)
  {
    if ([job contentNode])
    {
      -[THNotesViewAnnotationRendererDelegate annotationRenderer:didLoadContentNode:](self->mDelegate, "annotationRenderer:didLoadContentNode:", self, [job contentNode]);
    }

    if (([job cancelled] & 1) == 0)
    {
      jobCopy = job;

      self->mCurrentRenderJob = 0;
      -[THNotesViewAnnotationRendererDelegate annotationRenderer:didRenderAnnotation:withResult:](self->mDelegate, "annotationRenderer:didRenderAnnotation:withResult:", self, [job annotation], objc_msgSend(job, "renderedAnnotation"));

      [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
    }
  }
}

- (id)p_newHighlightLayerForAnnotation:(id)annotation width:(double)width storage:(id)storage text:(id)text range:(_NSRange)range interfaceStyle:(int64_t)style maxLines:(unint64_t)lines documentRoot:(id)self0
{
  length = range.length;
  location = range.location;
  v16 = [[THNotesAnnotationLayer alloc] initWithAnnotation:annotation maxLines:lines showHighlight:0];
  TSUScreenScale();
  [(THNotesAnnotationLayer *)v16 setContentsScale:?];
  [(THNotesAnnotationLayer *)v16 setFrame:0.0, 0.0, width, 100.0];
  v17 = objc_autoreleasePoolPush();
  if (storage)
  {
    [(THNoteCardStorageLayer *)v16 setStorage:storage range:location, length];
  }

  else
  {
    -[THNoteCardStorageLayer setText:context:](v16, "setText:context:", text, [root context]);
  }

  if (style == 1)
  {
    v18 = +[TSUColor blackColor];
  }

  else
  {
    v18 = +[TSUColor whiteColor];
  }

  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:](v16, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], v18, 0, 0, 0.0, 1.0);
  [(THNotesAnnotationLayer *)v16 frame];
  v20 = v19;
  v22 = v21;
  [(THNotesAnnotationLayer *)v16 sizeThatFits:v23, v24];
  [(THNotesAnnotationLayer *)v16 setFrame:v20, v22, v25, v26];
  [(THNotesAnnotationLayer *)v16 layoutIfNeeded];
  objc_autoreleasePoolPop(v17);
  return v16;
}

@end