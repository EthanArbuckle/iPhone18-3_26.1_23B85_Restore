@interface APPromiseBridge
- (_TtC12APFoundation15APPromiseBridge)init;
- (void)catch:(id)a3;
- (void)raceWithTimeout:(double)a3 queue:(id)a4;
- (void)resolve;
- (void)then:(id)a3;
@end

@implementation APPromiseBridge

- (void)then:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BAF64348(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)catch:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  _Block_copy(v4);
  v6 = self;
  sub_1BAF4FA0C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)raceWithTimeout:(double)a3 queue:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v8 = a4;
  v7 = self;
  sub_1BAF63460(a4);
}

- (void)resolve
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v3 = self;
  sub_1BAF631D0();
}

- (_TtC12APFoundation15APPromiseBridge)init
{
  v3 = OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise;
  sub_1BAF2DB10(&qword_1EBC36E30, &qword_1BAF97E18);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 2;
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v4 + 48) = v6;
  *(v4 + 56) = 0;
  *(&self->super.isa + v3) = v4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for APPromiseBridge();
  return [(APPromiseBridge *)&v8 init];
}

@end