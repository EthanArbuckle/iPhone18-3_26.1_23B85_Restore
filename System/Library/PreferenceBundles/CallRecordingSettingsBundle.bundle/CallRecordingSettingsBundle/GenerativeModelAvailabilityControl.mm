@interface GenerativeModelAvailabilityControl
- (_TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl)init;
- (int64_t)getAvailability;
@end

@implementation GenerativeModelAvailabilityControl

- (int64_t)getAvailability
{
  v3 = sub_3A04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl_available, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (&enum case for GenerativeModelsAvailability.Availability.restricted(_:) && v8 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v9 = 1;
LABEL_7:
    (*(v4 + 8))(v7, v3);
    return v9;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.unavailable(_:) && v8 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v9 = 2;
    goto LABEL_7;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.available(_:) && v8 == enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    return 0;
  }

  selfCopy = self;
  result = sub_3B34();
  __break(1u);
  return result;
}

- (_TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl)init
{
  v3 = sub_3A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A14();
  sub_3A44();
  (*(v9 + 8))(v12, v8);
  sub_3A34();
  (*(v4 + 8))(v7, v3);
  v13 = type metadata accessor for GenerativeModelAvailabilityControl();
  v15.receiver = self;
  v15.super_class = v13;
  return [(GenerativeModelAvailabilityControl *)&v15 init];
}

@end