@interface FileDescriptorInputStream
- (NSError)streamError;
- (NSStreamDelegate)delegate;
- (_TtC5Anvil25FileDescriptorInputStream)initWithData:(id)a3;
- (_TtC5Anvil25FileDescriptorInputStream)initWithURL:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(int64_t)a4;
@end

@implementation FileDescriptorInputStream

- (NSError)streamError
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_err);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DDA13400();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)read:(char *)a3 maxLength:(int64_t)a4
{
  v4 = self;
  v5 = sub_1DD941C0C();

  return v5;
}

- (NSStreamDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC5Anvil25FileDescriptorInputStream)initWithData:(id)a3
{
  v3 = a3;
  sub_1DDA13590();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Anvil25FileDescriptorInputStream)initWithURL:(id)a3
{
  v3 = sub_1DDA134E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DDA134A0();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end