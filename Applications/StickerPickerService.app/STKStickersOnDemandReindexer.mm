@interface STKStickersOnDemandReindexer
+ (void)reindexStickersIfNecessaryWithCompletionHandler:(id)handler;
- (STKStickersOnDemandReindexer)init;
@end

@implementation STKStickersOnDemandReindexer

+ (void)reindexStickersIfNecessaryWithCompletionHandler:(id)handler
{
  v5 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10000FD90;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000FDA0;
  v13[5] = v12;
  sub_10000B980(0, 0, v8, &unk_10000FDB0, v13);
}

- (STKStickersOnDemandReindexer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersOnDemandReindexer();
  return [(STKStickersOnDemandReindexer *)&v3 init];
}

@end