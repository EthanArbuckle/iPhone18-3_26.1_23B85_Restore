@interface THNotesViewAnnotationRenderer
- (THNotesViewAnnotationRenderer)initWithDelegate:(id)a3;
- (id)p_newHighlightLayerForAnnotation:(id)a3 width:(double)a4 storage:(id)a5 text:(id)a6 range:(_NSRange)a7 interfaceStyle:(int64_t)a8 maxLines:(unint64_t)a9 documentRoot:(id)a10;
- (void)dealloc;
- (void)p_finishedRenderJob:(id)a3;
- (void)p_performRenderJob:(id)a3 accessController:(id)a4 location:(id)a5 width:(double)a6 editingWidth:(double)a7 text:(id)a8 range:(_NSRange)a9 interfaceStyle:(int64_t)a10;
- (void)p_startNextRenderJob;
- (void)p_startRenderJob:(id)a3;
- (void)renderAnnotations:(id)a3;
- (void)renderAnnotations:(id)a3 withUserInterfaceStyle:(int64_t)a4;
- (void)waitWithTimeout:(double)a3 forCondition:(id)a4;
@end

@implementation THNotesViewAnnotationRenderer

- (THNotesViewAnnotationRenderer)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = THNotesViewAnnotationRenderer;
  result = [(THNotesViewAnnotationRenderer *)&v5 init];
  if (result)
  {
    result->mDelegate = a3;
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

- (void)renderAnnotations:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [a3 mutableCopy];
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

- (void)renderAnnotations:(id)a3 withUserInterfaceStyle:(int64_t)a4
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [a3 mutableCopy];
  mCurrentRenderJob = self->mCurrentRenderJob;
  if (mCurrentRenderJob)
  {
    [(THNotesViewAnnotationRenderJob *)mCurrentRenderJob setCancelled:1];
    [(THModelContentNode *)[(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob contentNode] cancelLoading];

    self->mCurrentRenderJob = 0;
  }

  self->mAnnotationQueue = v7;
  self->mInterfaceStyle = a4;
  if (!self->mCurrentRenderJob)
  {

    [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
  }
}

- (void)waitWithTimeout:(double)a3 forCondition:(id)a4
{
  if (((*(a4 + 2))(a4, a2) & 1) == 0)
  {
    if (!self->mCurrentRenderJob)
    {
      [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
    }

    v7 = dispatch_time(0, (a3 * 1000000000.0));
    do
    {
      if (![(THNotesViewAnnotationRenderJob *)self->mCurrentRenderJob waitUntilFinishedWithTimeoutTime:v7])
      {
        break;
      }

      [(THNotesViewAnnotationRenderer *)self p_finishedRenderJob:self->mCurrentRenderJob];
    }

    while (!(*(a4 + 2))(a4));
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

  v3 = [(NSMutableArray *)self->mAnnotationQueue firstObject];
  if (self->mDelegate)
  {
    v4 = v3;
    if (v3)
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

- (void)p_startRenderJob:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCurrentRenderJob != a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [a3 willStart];
  [(THNotesViewAnnotationRendererDelegate *)self->mDelegate highlightWidthForAnnotationRenderer:self];
  v6 = v5;
  [(THNotesViewAnnotationRendererDelegate *)self->mDelegate editingHighlightWidthForAnnotationRenderer:self];
  v8 = v7;
  v9 = [objc_msgSend(a3 "annotation")];
  v10 = [objc_msgSend(a3 "annotation")];
  v12 = v11;
  v13 = [objc_msgSend(a3 "annotation")];
  v14 = [a3 interfaceStyle];
  v15 = [(THNotesViewAnnotationRendererDelegate *)self->mDelegate accessControllerForAnnotationRenderer:self];
  [objc_msgSend(a3 "contentNode")];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_12CD6C;
  v16[3] = &unk_45DD08;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = v15;
  v16[7] = v13;
  v16[9] = v6;
  v16[10] = v8;
  v16[8] = v9;
  v16[11] = v10;
  v16[12] = v12;
  v16[13] = v14;
  [+[TSKThreadDispatcher sharedInstance](TSKThreadDispatcher dispatch:"dispatch:", v16];
}

- (void)p_performRenderJob:(id)a3 accessController:(id)a4 location:(id)a5 width:(double)a6 editingWidth:(double)a7 text:(id)a8 range:(_NSRange)a9 interfaceStyle:(int64_t)a10
{
  length = a9.length;
  location = a9.location;
  v18 = [(THNotesViewAnnotationRendererDelegate *)self->mDelegate annotationRenderer:self storageForAnnotationLocation:a5];
  if (([a3 cancelled] & 1) == 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_12CECC;
    v19[3] = &unk_45DD30;
    v19[4] = self;
    v19[5] = a3;
    *&v19[8] = a6;
    v19[6] = v18;
    v19[7] = a8;
    v19[9] = location;
    v19[10] = length;
    v19[11] = a10;
    *&v19[12] = a7;
    [a4 performRead:v19];
  }
}

- (void)p_finishedRenderJob:(id)a3
{
  if (([a3 cancelled] & 1) == 0 && self->mCurrentRenderJob == a3)
  {
    if ([a3 contentNode])
    {
      -[THNotesViewAnnotationRendererDelegate annotationRenderer:didLoadContentNode:](self->mDelegate, "annotationRenderer:didLoadContentNode:", self, [a3 contentNode]);
    }

    if (([a3 cancelled] & 1) == 0)
    {
      v5 = a3;

      self->mCurrentRenderJob = 0;
      -[THNotesViewAnnotationRendererDelegate annotationRenderer:didRenderAnnotation:withResult:](self->mDelegate, "annotationRenderer:didRenderAnnotation:withResult:", self, [a3 annotation], objc_msgSend(a3, "renderedAnnotation"));

      [(THNotesViewAnnotationRenderer *)self p_startNextRenderJob];
    }
  }
}

- (id)p_newHighlightLayerForAnnotation:(id)a3 width:(double)a4 storage:(id)a5 text:(id)a6 range:(_NSRange)a7 interfaceStyle:(int64_t)a8 maxLines:(unint64_t)a9 documentRoot:(id)a10
{
  length = a7.length;
  location = a7.location;
  v16 = [[THNotesAnnotationLayer alloc] initWithAnnotation:a3 maxLines:a9 showHighlight:0];
  TSUScreenScale();
  [(THNotesAnnotationLayer *)v16 setContentsScale:?];
  [(THNotesAnnotationLayer *)v16 setFrame:0.0, 0.0, a4, 100.0];
  v17 = objc_autoreleasePoolPush();
  if (a5)
  {
    [(THNoteCardStorageLayer *)v16 setStorage:a5 range:location, length];
  }

  else
  {
    -[THNoteCardStorageLayer setText:context:](v16, "setText:context:", a6, [a10 context]);
  }

  if (a8 == 1)
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