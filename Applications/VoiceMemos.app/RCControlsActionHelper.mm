@interface RCControlsActionHelper
- (_TtC10VoiceMemos22RCControlsActionHelper)init;
- (void)transcriptionStringForRecordingUUID:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation RCControlsActionHelper

- (void)transcriptionStringForRecordingUUID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10024F960;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100243D40;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001A8E50(0, 0, v10, &unk_100243540, v15);
}

- (_TtC10VoiceMemos22RCControlsActionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCControlsActionHelper();
  return [(RCControlsActionHelper *)&v3 init];
}

@end