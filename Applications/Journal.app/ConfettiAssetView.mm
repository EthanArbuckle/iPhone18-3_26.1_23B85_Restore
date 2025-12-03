@interface ConfettiAssetView
- (void)horizontalSizeClassDidChange;
@end

@implementation ConfettiAssetView

- (void)horizontalSizeClassDidChange
{
  v2 = *((swift_isaMask & self->super.super.super.super.isa) + 0x100);
  selfCopy = self;
  v2();
}

@end