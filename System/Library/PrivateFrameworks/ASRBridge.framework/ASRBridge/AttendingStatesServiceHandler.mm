@interface AttendingStatesServiceHandler
- (_TtC9ASRBridge29AttendingStatesServiceHandler)init;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)error;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s;
@end

@implementation AttendingStatesServiceHandler

- (void)localAttendingStoppedUnexpectedlyWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_2232A6AB4(error);
}

- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  if (id)
  {
    sub_2232AAC04();
  }

  selfCopy = self;
  sub_2232A91D0();
}

- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s
{
  selfCopy = self;
  sub_2232A76FC(s);
}

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  if (id)
  {
    v8 = sub_2232AAC04();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  sub_2232A81B0(time, type, v8, v10);
}

- (_TtC9ASRBridge29AttendingStatesServiceHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end