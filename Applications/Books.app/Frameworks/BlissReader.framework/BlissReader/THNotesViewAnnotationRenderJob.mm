@interface THNotesViewAnnotationRenderJob
- (BOOL)waitUntilFinishedWithTimeoutTime:(unint64_t)time;
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

- (BOOL)waitUntilFinishedWithTimeoutTime:(unint64_t)time
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCancelled)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return dispatch_semaphore_wait(self->mSemaphore, time) == 0;
}

- (void)willStart
{
  if (!self->mSemaphore || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], !self->mSemaphore))
  {
    self->mSemaphore = dispatch_semaphore_create(0);
  }
}

@end