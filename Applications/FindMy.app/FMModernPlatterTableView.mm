@interface FMModernPlatterTableView
- (CGSize)contentSize;
- (_TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView)initWithCoder:(id)a3;
- (_TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
@end

@implementation FMModernPlatterTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMModernPlatterTableView();
  [(FMModernPlatterTableView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMModernPlatterTableView();
  v5 = v6.receiver;
  [(FMModernPlatterTableView *)&v6 setContentSize:width, height];
  sub_1004EC60C();
}

- (_TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_heightConstraint) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView_resizeBlockCount) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMyP33_CC23E81230DC16D325E739DF41B02D5424FMModernPlatterTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end