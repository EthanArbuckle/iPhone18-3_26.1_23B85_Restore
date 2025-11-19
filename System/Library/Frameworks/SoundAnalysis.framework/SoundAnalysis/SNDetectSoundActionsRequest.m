@interface SNDetectSoundActionsRequest
- (NSArray)commands;
- (SNDetectSoundActionsRequest)initWithModel:(id)a3 dictionary:(id)a4 error:(id *)a5;
- (void)setCommands:(id)a3;
@end

@implementation SNDetectSoundActionsRequest

- (NSArray)commands
{
  v2 = self;
  sub_1C99D2278();

  type metadata accessor for SNSoundActionCommand();
  v3 = sub_1C9A92768();

  return v3;
}

- (void)setCommands:(id)a3
{
  type metadata accessor for SNSoundActionCommand();
  v4 = sub_1C9A92798();
  v5 = self;
  sub_1C99D2418(v4);
}

- (SNDetectSoundActionsRequest)initWithModel:(id)a3 dictionary:(id)a4 error:(id *)a5
{
  v6 = sub_1C9A92328();
  sub_1C99D2624(a3, v6);
  return result;
}

@end