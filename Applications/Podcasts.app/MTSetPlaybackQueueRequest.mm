@interface MTSetPlaybackQueueRequest
+ (id)requestWithContext:(id)a3;
- (BOOL)validate;
- (void)finishWithStatus:(int64_t)a3;
@end

@implementation MTSetPlaybackQueueRequest

+ (id)requestWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 copy];

  [v5 setContext:v6];

  return v5;
}

- (BOOL)validate
{
  v3 = [(MTSetPlaybackQueueRequest *)self manifest];

  v4 = [(MTSetPlaybackQueueRequest *)self context];

  if (!v4)
  {
    v5 = +[IMLogger sharedLogger];
    [v5 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/Support/MTPlayerController.m" lineNumber:2705 format:@"Falling back to the default playback context."];

    v6 = +[MTPlaybackContext defaultContext];
    [(MTSetPlaybackQueueRequest *)self setContext:v6];
  }

  return v3 != 0;
}

- (void)finishWithStatus:(int64_t)a3
{
  v5 = [(MTSetPlaybackQueueRequest *)self completion];

  if (v5)
  {
    v6 = [(MTSetPlaybackQueueRequest *)self completion];
    v6[2](v6, a3);

    [(MTSetPlaybackQueueRequest *)self setCompletion:0];
  }

  self->_finished = 1;
}

@end