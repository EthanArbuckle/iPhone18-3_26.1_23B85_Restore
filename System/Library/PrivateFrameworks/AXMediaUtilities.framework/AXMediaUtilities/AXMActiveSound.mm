@interface AXMActiveSound
- (AXMActiveSound)init;
- (BOOL)beginPlayback:(id)playback withError:(id *)error;
- (void)connectToEngine:(id)engine;
- (void)disconnectFromEngine:(id)engine;
@end

@implementation AXMActiveSound

- (AXMActiveSound)init
{
  v6.receiver = self;
  v6.super_class = AXMActiveSound;
  v2 = [(AXMActiveSound *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6958458]);
    [(AXMActiveSound *)v2 setPlayer:v3];

    v4 = objc_alloc_init(MEMORY[0x1E69584D8]);
    [(AXMActiveSound *)v2 setTimePitch:v4];
  }

  return v2;
}

- (void)connectToEngine:(id)engine
{
  engineCopy = engine;
  player = [(AXMActiveSound *)self player];
  [engineCopy attachNode:player];

  mainMixerNode = [engineCopy mainMixerNode];
  v6 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:2 channels:44100.0];
  timePitch = [(AXMActiveSound *)self timePitch];
  [engineCopy attachNode:timePitch];

  player2 = [(AXMActiveSound *)self player];
  timePitch2 = [(AXMActiveSound *)self timePitch];
  [engineCopy connect:player2 to:timePitch2 fromBus:0 toBus:0 format:v6];

  timePitch3 = [(AXMActiveSound *)self timePitch];
  [engineCopy connect:timePitch3 to:mainMixerNode fromBus:0 toBus:objc_msgSend(mainMixerNode format:{"nextAvailableInputBus"), v6}];
}

- (void)disconnectFromEngine:(id)engine
{
  engineCopy = engine;
  player = [(AXMActiveSound *)self player];
  [engineCopy detachNode:player];

  timePitch = [(AXMActiveSound *)self timePitch];
  [engineCopy detachNode:timePitch];
}

- (BOOL)beginPlayback:(id)playback withError:(id *)error
{
  v6 = MEMORY[0x1E6958440];
  playbackCopy = playback;
  v8 = [v6 alloc];
  processingFormat = [playbackCopy processingFormat];
  v10 = [v8 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(playbackCopy, "length")];

  v11 = [playbackCopy readIntoBuffer:v10 error:error];
  if (v11)
  {
    player = [(AXMActiveSound *)self player];
    [player scheduleBuffer:v10 atTime:0 options:1 completionHandler:0];

    player2 = [(AXMActiveSound *)self player];
    [player2 play];
  }

  return v11;
}

@end