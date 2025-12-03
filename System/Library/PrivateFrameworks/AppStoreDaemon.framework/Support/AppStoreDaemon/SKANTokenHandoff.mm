@interface SKANTokenHandoff
+ (void)handoffTokenWithTokenData:(id)data advertisedItemID:(unint64_t)d environment:(id)environment;
- (_TtC9appstored16SKANTokenHandoff)init;
@end

@implementation SKANTokenHandoff

+ (void)handoffTokenWithTokenData:(id)data advertisedItemID:(unint64_t)d environment:(id)environment
{
  v8 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  dataCopy = data;
  environmentCopy = environment;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = environment;
  v17[5] = v13;
  v17[6] = v15;
  v17[7] = d;
  sub_10019F02C(0, 0, v10, &unk_1004391B8, v17);
}

- (_TtC9appstored16SKANTokenHandoff)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SKANTokenHandoff();
  return [(SKANTokenHandoff *)&v3 init];
}

@end