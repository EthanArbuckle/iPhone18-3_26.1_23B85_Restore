@interface MsdosFileItem
- (void)waitForWrites;
@end

@implementation MsdosFileItem

- (void)waitForWrites
{
  selfCopy = self;
  while ([(FileItem *)self writeCounter])
  {
    usleep(0x64u);
    self = selfCopy;
  }
}

@end