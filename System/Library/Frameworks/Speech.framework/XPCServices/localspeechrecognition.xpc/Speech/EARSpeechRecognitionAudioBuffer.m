@interface EARSpeechRecognitionAudioBuffer
- (void)addAudioSampleData:(NSData *)a3 reply:(id)a4;
- (void)cancelRecognition;
- (void)packetArrivalTimestampFromAudioTimestamp:(float)a3 reply:(id)a4;
@end

@implementation EARSpeechRecognitionAudioBuffer

- (void)addAudioSampleData:(NSData *)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100005D30(&unk_10004D240, v7);
}

- (void)cancelRecognition
{
  v2 = self;
  sub_10002C3BC();
}

- (void)packetArrivalTimestampFromAudioTimestamp:(float)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  v8 = self;

  sub_100005D30(&unk_10004D1F0, v7);
}

@end