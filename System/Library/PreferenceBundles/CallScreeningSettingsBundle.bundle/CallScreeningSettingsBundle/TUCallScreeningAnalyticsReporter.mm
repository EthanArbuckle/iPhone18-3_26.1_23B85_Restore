@interface TUCallScreeningAnalyticsReporter
- (_TtC27CallScreeningSettingsBundle32TUCallScreeningAnalyticsReporter)init;
- (void)logLiveVoiceMailToggleWithToggledTo:(BOOL)to;
@end

@implementation TUCallScreeningAnalyticsReporter

- (void)logLiveVoiceMailToggleWithToggledTo:(BOOL)to
{
  sub_1EAC(&qword_C458, &qword_39F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_39D0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000000003CB0;
  sub_2EE4(0, &qword_C460, NSNumber_ptr);
  selfCopy = self;
  *(inited + 48) = sub_2FF8(to);
  v7 = sub_2C50(inited);
  swift_setDeallocating();
  sub_2D54(inited + 32);
  sub_1EF4(v7);
  v9 = v8;

  sub_29A8(0xD00000000000002ALL, 0x8000000000003CD0, v9);
}

- (_TtC27CallScreeningSettingsBundle32TUCallScreeningAnalyticsReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TUCallScreeningAnalyticsReporter();
  return [(TUCallScreeningAnalyticsReporter *)&v3 init];
}

@end