@interface MTSetPlaybackQueueRequest
+ (id)requestWithContext:(id)context;
- (BOOL)validate;
- (void)finishWithStatus:(int64_t)status;
@end

@implementation MTSetPlaybackQueueRequest

+ (id)requestWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(self);
  v6 = [contextCopy copy];

  [v5 setContext:v6];

  return v5;
}

- (BOOL)validate
{
  manifest = [(MTSetPlaybackQueueRequest *)self manifest];

  context = [(MTSetPlaybackQueueRequest *)self context];

  if (!context)
  {
    v5 = +[IMLogger sharedLogger];
    [v5 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/Support/MTPlayerController.m" lineNumber:2705 format:@"Falling back to the default playback context."];

    v6 = +[MTPlaybackContext defaultContext];
    [(MTSetPlaybackQueueRequest *)self setContext:v6];
  }

  return manifest != 0;
}

- (void)finishWithStatus:(int64_t)status
{
  completion = [(MTSetPlaybackQueueRequest *)self completion];

  if (completion)
  {
    completion2 = [(MTSetPlaybackQueueRequest *)self completion];
    completion2[2](completion2, status);

    [(MTSetPlaybackQueueRequest *)self setCompletion:0];
  }

  self->_finished = 1;
}

@end