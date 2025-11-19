@interface AssetPromise
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (NSUUID)requestID;
- (_TtC9appstored12AssetPromise)init;
- (_TtC9appstored12AssetPromise)initWithRequestID:(id)a3 promiseBlock:(id)a4;
- (id)progress;
- (void)cancel;
- (void)finishWithError:(id)a3;
- (void)finishWithResult:(id)a3;
- (void)setProgress:(id)a3;
@end

@implementation AssetPromise

- (NSUUID)requestID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC9appstored12AssetPromise_requestID, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (id)progress
{
  v2 = self;
  v3 = sub_1000C1988();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000C1A4C;
    v7[3] = &unk_10050BE28;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (void)setProgress:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000C4A68;
  }

  else
  {
    v5 = 0;
  }

  v6 = self + OBJC_IVAR____TtC9appstored12AssetPromise__progress;
  v7 = self;
  os_unfair_lock_lock(v6);
  sub_100006F8C(*(v6 + 1));
  *(v6 + 1) = v4;
  *(v6 + 2) = v5;
  os_unfair_lock_unlock(v6);
}

- (BOOL)isCancelled
{
  v2 = self;
  v3 = sub_1000C1BAC();

  return v3 & 1;
}

- (BOOL)isFinished
{
  v2 = (self + OBJC_IVAR____TtC9appstored12AssetPromise_state);
  v3 = self;
  os_unfair_lock_lock(v2);
  v4 = (v2[12]._os_unfair_lock_opaque & 0xC000) == 0x8000;
  os_unfair_lock_unlock(v2);

  return v4;
}

- (_TtC9appstored12AssetPromise)initWithRequestID:(id)a3 promiseBlock:(id)a4
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1000C321C(v7, sub_100006060, v9);

  return v10;
}

- (void)cancel
{
  type metadata accessor for CancellationError();
  sub_1000C4A20(&qword_10059CBF0, &type metadata accessor for CancellationError);
  v3 = swift_allocError();
  v4 = self;
  CancellationError.init()();
  v5 = v3;
  v6 = 0u;
  v7 = 0u;
  v8 = 256;
  sub_1000C2880(&v5);
}

- (void)finishWithError:(id)a3
{
  v6 = a3;
  v7 = 0u;
  v8 = 0u;
  v9 = 256;
  v4 = a3;
  v5 = self;
  sub_1000C2880(&v6);
}

- (void)finishWithResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000BBFD8(v4, &v10);
  v6 = *(&v10 + 1);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = 0;
  sub_1000C2880(&v19);

  v18 = v6;
  sub_100005518(&v18, &qword_10059C988);
  v17 = v7;
  sub_100005518(&v17, &qword_10059C990);
  v16 = v8;
  sub_100005518(&v16, &qword_10059C998);
  v15 = v9;
  sub_100005518(&v15, &unk_10059C9A0);
}

- (_TtC9appstored12AssetPromise)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end