@interface ZeroHeightContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithCoder:(id)a3;
- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithFrame:(CGRect)a3;
@end

@implementation ZeroHeightContentView

- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v7 = [(ZeroHeightContentView *)&v11 initWithFrame:x, y, width, height];
  LODWORD(v8) = 1132068864;
  [(ZeroHeightContentView *)v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [(ZeroHeightContentView *)v7 setContentHuggingPriority:1 forAxis:v9];
  return v7;
}

- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end