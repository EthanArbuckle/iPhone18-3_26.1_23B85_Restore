@interface AKDevice
- (BOOL)isBuddyFinished;
@end

@implementation AKDevice

- (BOOL)isBuddyFinished
{
  if ((byte_100374658 & 1) == 0)
  {
    byte_100374658 = sub_10003B804() == 0;
  }

  return byte_100374658 & 1;
}

@end