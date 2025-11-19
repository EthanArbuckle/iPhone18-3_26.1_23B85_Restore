@interface Throughput
- (_TtC9appstored10Throughput)init;
@end

@implementation Throughput

- (_TtC9appstored10Throughput)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9appstored10Throughput_isValid) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored10Throughput_minValue) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored10Throughput_maxValue) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored10Throughput_avgValue) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored10Throughput_avgCount) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for Throughput();
  return [(Throughput *)&v3 init];
}

@end