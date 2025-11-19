@interface AXReplayer
+ (id)replayer;
- (void)replayWithName:(id)a3 attempts:(int64_t)a4 interval:(double)a5 async:(BOOL)a6 queue:(id)a7 replayBlock:(id)a8 completion:(id)a9;
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

- (void)replayWithName:(id)a3 attempts:(int64_t)a4 interval:(double)a5 async:(BOOL)a6 queue:(id)a7 replayBlock:(id)a8 completion:(id)a9
{
  v12 = a6;
  v19 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (!v16)
  {
    _AXAssert();
  }

  v18 = [_AXReplayInstance replayBlock:v16 name:v19 attempts:a4 interval:v12 async:v15 queue:v17 completion:a5];
  [v18 dispatch];
}

@end