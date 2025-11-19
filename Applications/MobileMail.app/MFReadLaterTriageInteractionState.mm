@interface MFReadLaterTriageInteractionState
+ (_TtC10MobileMail33MFReadLaterTriageInteractionState)stateWithDate:(id)a3;
+ (_TtC10MobileMail33MFReadLaterTriageInteractionState)stateWithMessageListItems:(id)a3;
+ (id)removeDateState;
- (BOOL)hasReadLater;
- (BOOL)isCancelled;
- (BOOL)isInitialState;
- (BOOL)isRemoveDate;
- (BOOL)shouldPresentCustomDatePicker;
- (NSDate)date;
- (void)didSelectCustomDate:(id)a3;
- (void)perform:(int64_t)a3;
- (void)removeDate;
@end

@implementation MFReadLaterTriageInteractionState

+ (_TtC10MobileMail33MFReadLaterTriageInteractionState)stateWithMessageListItems:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  sub_10025C9B0(&unk_1006D7220);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v6 = sub_1003CAD54(v4);

  _objc_release(a3);

  return v6;
}

+ (_TtC10MobileMail33MFReadLaterTriageInteractionState)stateWithDate:(id)a3
{
  v9 = a1;
  v17 = a3;
  swift_getObjCClassMetadata();
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v14 = &v6 - v13;
  v15 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v17);
  v16 = &v6 - v15;
  _objc_retain(v3);
  if (v17)
  {
    v8 = v17;
    v7 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v16, v14, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    _objc_release(v7);
  }

  else
  {
    (*(v11 + 56))(v16, 1, 1, v10);
  }

  swift_getObjCClassMetadata();
  v6 = sub_1003CB0F8(v16);
  sub_1002A70C0(v16);
  v4 = v6;

  return v4;
}

+ (id)removeDateState
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = sub_1003C8B80();

  return v2;
}

- (BOOL)shouldPresentCustomDatePicker
{
  _objc_retain(self);
  sub_1003CBBD4();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isInitialState
{
  _objc_retain(self);
  sub_1003CBD84();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isRemoveDate
{
  _objc_retain(self);
  sub_1003CBF14();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isCancelled
{
  _objc_retain(self);
  sub_1003CC0A4();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)hasReadLater
{
  _objc_retain(self);
  sub_1003CC234();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (NSDate)date
{
  v9 = self;
  v3 = sub_10025C9B0(&qword_1006D8740);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v10 = &isa - v8;
  _objc_retain(self);
  sub_1003CC4D8(v10);
  _objc_release(v9);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v10, v11);
    v7 = isa;
  }

  v4 = v7;

  return v4;
}

- (void)perform:(int64_t)a3
{
  _objc_retain(self);
  sub_1003CD460(a3);
  _objc_release(self);
}

- (void)didSelectCustomDate:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v11);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003CE220(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
}

- (void)removeDate
{
  _objc_retain(self);
  sub_1003CEC8C();
  _objc_release(self);
}

@end