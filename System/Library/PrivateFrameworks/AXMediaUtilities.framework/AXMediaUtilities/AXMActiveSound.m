@interface AXMActiveSound
- (AXMActiveSound)init;
- (BOOL)beginPlayback:(id)a3 withError:(id *)a4;
- (void)connectToEngine:(id)a3;
- (void)disconnectFromEngine:(id)a3;
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

- (void)connectToEngine:(id)a3
{
  v4 = a3;
  v5 = [(AXMActiveSound *)self player];
  [v4 attachNode:v5];

  v11 = [v4 mainMixerNode];
  v6 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:2 channels:44100.0];
  v7 = [(AXMActiveSound *)self timePitch];
  [v4 attachNode:v7];

  v8 = [(AXMActiveSound *)self player];
  v9 = [(AXMActiveSound *)self timePitch];
  [v4 connect:v8 to:v9 fromBus:0 toBus:0 format:v6];

  v10 = [(AXMActiveSound *)self timePitch];
  [v4 connect:v10 to:v11 fromBus:0 toBus:objc_msgSend(v11 format:{"nextAvailableInputBus"), v6}];
}

- (void)disconnectFromEngine:(id)a3
{
  v4 = a3;
  v5 = [(AXMActiveSound *)self player];
  [v4 detachNode:v5];

  v6 = [(AXMActiveSound *)self timePitch];
  [v4 detachNode:v6];
}

- (BOOL)beginPlayback:(id)a3 withError:(id *)a4
{
  v6 = MEMORY[0x1E6958440];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 processingFormat];
  v10 = [v8 initWithPCMFormat:v9 frameCapacity:objc_msgSend(v7, "length")];

  v11 = [v7 readIntoBuffer:v10 error:a4];
  if (v11)
  {
    v12 = [(AXMActiveSound *)self player];
    [v12 scheduleBuffer:v10 atTime:0 options:1 completionHandler:0];

    v13 = [(AXMActiveSound *)self player];
    [v13 play];
  }

  return v11;
}

@end