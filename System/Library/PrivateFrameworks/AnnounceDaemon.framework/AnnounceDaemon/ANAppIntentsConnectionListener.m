@interface ANAppIntentsConnectionListener
- (ANAppIntentsConnectionListener)init;
@end

@implementation ANAppIntentsConnectionListener

- (ANAppIntentsConnectionListener)init
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBA598]) initWithBundleIdentifier_];
  *(&self->super.isa + OBJC_IVAR___ANAppIntentsConnectionListener_connectionListener) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppIntentsConnectionListener();
  return [(ANAppIntentsConnectionListener *)&v5 init];
}

@end