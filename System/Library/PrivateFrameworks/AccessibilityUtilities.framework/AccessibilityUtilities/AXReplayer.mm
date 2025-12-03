@interface AXReplayer
+ (id)replayer;
- (void)replayWithName:(id)name attempts:(int64_t)attempts interval:(double)interval async:(BOOL)async queue:(id)queue replayBlock:(id)block completion:(id)completion;
@end

@implementation AXReplayer

+ (id)replayer
{
  if (replayer_onceToken != -1)
  {
    +[AXReplayer replayer];
  }

  v3 = replayer__Replayer;

  return v3;
}

uint64_t __22__AXReplayer_replayer__block_invoke()
{
  v0 = objc_alloc_init(AXReplayer);
  v1 = replayer__Replayer;
  replayer__Replayer = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)replayWithName:(id)name attempts:(int64_t)attempts interval:(double)interval async:(BOOL)async queue:(id)queue replayBlock:(id)block completion:(id)completion
{
  asyncCopy = async;
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  completionCopy = completion;
  if (!blockCopy)
  {
    _AXAssert();
  }

  v18 = [_AXReplayInstance replayBlock:blockCopy name:nameCopy attempts:attempts interval:asyncCopy async:queueCopy queue:completionCopy completion:interval];
  [v18 dispatch];
}

@end