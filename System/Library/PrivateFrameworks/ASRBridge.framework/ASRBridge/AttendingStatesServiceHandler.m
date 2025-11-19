@interface AttendingStatesServiceHandler
- (_TtC9ASRBridge29AttendingStatesServiceHandler)init;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)a3;
@end

@implementation AttendingStatesServiceHandler

- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2232A6AB4(a3);
}

- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  if (a5)
  {
    sub_2232AAC04();
  }

  v6 = self;
  sub_2232A91D0();
}

- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)a3
{
  v4 = self;
  sub_2232A76FC(a3);
}

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  if (a5)
  {
    v8 = sub_2232AAC04();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = self;
  sub_2232A81B0(a3, a4, v8, v10);
}

- (_TtC9ASRBridge29AttendingStatesServiceHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end