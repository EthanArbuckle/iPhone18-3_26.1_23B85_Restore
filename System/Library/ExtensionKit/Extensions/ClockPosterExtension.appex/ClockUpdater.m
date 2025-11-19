@interface ClockUpdater
- (void)dealloc;
- (void)updateConfiguration:(id)a3 completion:(id)a4;
- (void)updateConfiguration:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
@end

@implementation ClockUpdater

- (void)dealloc
{
  v3 = sub_100008A28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  v8 = self;
  sub_1000089F8();
  (*(v4 + 104))(v7, enum case for ClockLogger.Role.update(_:), v3);
  sub_100008A48();

  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for ClockUpdater();
  v10.receiver = v8;
  v10.super_class = v9;
  [(ClockUpdater *)&v10 dealloc];
}

- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_100001B94();
  v8 = sub_100008C48();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_100002EDC(v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateConfiguration:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v5[2](v5, a3, 0);

  _Block_release(v5);
}

- (void)updateConfiguration:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v6[2](v6, a3, 0);

  _Block_release(v6);
}

@end