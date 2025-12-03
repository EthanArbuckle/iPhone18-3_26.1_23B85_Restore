@interface EARSpeechRecognitionAudioBuffer
- (void)addAudioSampleData:(NSData *)data reply:(id)reply;
- (void)cancelRecognition;
- (void)packetArrivalTimestampFromAudioTimestamp:(float)timestamp reply:(id)reply;
@end

@implementation EARSpeechRecognitionAudioBuffer

- (void)addAudioSampleData:(NSData *)data reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  v7[2] = data;
  v7[3] = v6;
  v7[4] = self;
  dataCopy = data;
  selfCopy = self;

  sub_100005D30(&unk_10004D240, v7);
}

- (void)cancelRecognition
{
  selfCopy = self;
  sub_10002C3BC();
}

- (void)packetArrivalTimestampFromAudioTimestamp:(float)timestamp reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = timestamp;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  selfCopy = self;

  sub_100005D30(&unk_10004D1F0, v7);
}

@end