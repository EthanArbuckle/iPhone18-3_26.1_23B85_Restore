@interface THNotesViewAnnotationRenderJob
- (BOOL)waitUntilFinishedWithTimeoutTime:(unint64_t)a3;
- (void)dealloc;
- (void)willStart;
@end

@implementation THNotesViewAnnotationRenderJob

- (void)dealloc
{
  mSemaphore = self->mSemaphore;
  if (mSemaphore)
  {
    dispatch_release(mSemaphore);
  }

  v4.receiver = self;
  v4.super_class = THNotesViewAnnotationRenderJob;
  [(THNotesViewAnnotationRenderJob *)&v4 dealloc];
}

- (BOOL)waitUntilFinishedWithTimeoutTime:(unint64_t)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCancelled)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return dispatch_semaphore_wait(self->mSemaphore, a3) == 0;
}

- (void)willStart
{
  if (!self->mSemaphore || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], !self->mSemaphore))
  {
    self->mSemaphore = dispatch_semaphore_create(0);
  }
}

@end