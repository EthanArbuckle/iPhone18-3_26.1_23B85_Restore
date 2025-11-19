@interface MainLoop.InternalObserver
- (_TtCC7Measure8MainLoopP33_3089E251FF26A255EE4B430BFB36566C16InternalObserver)init;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
@end

@implementation MainLoop.InternalObserver

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000E46B4(a4);
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = self;
    sub_1000E25F8();
  }
}

- (_TtCC7Measure8MainLoopP33_3089E251FF26A255EE4B430BFB36566C16InternalObserver)init
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtCC7Measure8MainLoopP33_3089E251FF26A255EE4B430BFB36566C16InternalObserver__resetEvent;
  KeyPath = swift_getKeyPath();
  v5 = sub_10000F974(&unk_1004A8748);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v5 + 272);

  *(&self->super.isa + v3) = v7(KeyPath, v6);
  v9.receiver = self;
  v9.super_class = type metadata accessor for MainLoop.InternalObserver();
  return [(MainLoop.InternalObserver *)&v9 init];
}

@end