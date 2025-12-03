@interface iCloudStatusFooter
- (_TtC8Freeform18iCloudStatusFooter)initWithCoder:(id)coder;
@end

@implementation iCloudStatusFooter

- (_TtC8Freeform18iCloudStatusFooter)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidEndObserver) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidBeginObserver) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end