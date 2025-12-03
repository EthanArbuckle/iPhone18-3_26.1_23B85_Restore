@interface SNMovieRemixSession
- (id)subscribeWithFinalResultHandler:(id)handler completionHandler:(id)completionHandler;
- (void)finishWithError:(id)error;
- (void)setInFrameMixMode:(BOOL)mode;
- (void)yieldBuffer:(id)buffer;
@end

@implementation SNMovieRemixSession

- (id)subscribeWithFinalResultHandler:(id)handler completionHandler:(id)completionHandler
{
  v6 = _Block_copy(handler);
  v7 = _Block_copy(completionHandler);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  v11 = sub_1C9810E24(sub_1C97BD1EC, v8, sub_1C97F042C, v9);

  return v11;
}

- (void)yieldBuffer:(id)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  sub_1C9811124(bufferCopy, selfCopy, v5, v6, v7, v8, v9, v10);
}

- (void)setInFrameMixMode:(BOOL)mode
{
  modeCopy = mode;
  selfCopy = self;
  sub_1C98111F4(modeCopy);
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1C98112A8(error);
}

@end