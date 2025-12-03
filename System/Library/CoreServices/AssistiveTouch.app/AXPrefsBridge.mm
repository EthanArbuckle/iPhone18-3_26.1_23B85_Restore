@interface AXPrefsBridge
+ (void)voiceSelectionForLanguageCode:(NSString *)code completionHandler:(id)handler;
- (_TtC15assistivetouchd13AXPrefsBridge)init;
@end

@implementation AXPrefsBridge

+ (void)voiceSelectionForLanguageCode:(NSString *)code completionHandler:(id)handler
{
  v7 = sub_1000F40B0(&qword_100217A40);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = code;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001BF958;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001BF968;
  v14[5] = v13;
  codeCopy = code;
  sub_10011E80C(0, 0, v9, &unk_1001BF978, v14);
}

- (_TtC15assistivetouchd13AXPrefsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXPrefsBridge();
  return [(AXPrefsBridge *)&v3 init];
}

@end