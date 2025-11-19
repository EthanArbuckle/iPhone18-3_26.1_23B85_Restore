@interface MsdosFileItem
- (void)waitForWrites;
@end

@implementation MsdosFileItem

- (void)waitForWrites
{
  v2 = self;
  while ([(FileItem *)self writeCounter])
  {
    usleep(0x64u);
    self = v2;
  }
}

@end