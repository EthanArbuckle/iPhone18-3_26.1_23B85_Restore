@interface ZeroHeightContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithCoder:(id)coder;
- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithFrame:(CGRect)frame;
@end

@implementation ZeroHeightContentView

- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  height = [(ZeroHeightContentView *)&v11 initWithFrame:x, y, width, height];
  LODWORD(v8) = 1132068864;
  [(ZeroHeightContentView *)height setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [(ZeroHeightContentView *)height setContentHuggingPriority:1 forAxis:v9];
  return height;
}

- (_TtC9RemindersP33_95284DBD4D1A25A4FAFD3639B18485E021ZeroHeightContentView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end