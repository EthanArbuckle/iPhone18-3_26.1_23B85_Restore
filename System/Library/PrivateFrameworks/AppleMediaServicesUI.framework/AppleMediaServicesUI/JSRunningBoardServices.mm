@interface JSRunningBoardServices
- (id)fetchProcessHandle:(id)handle;
@end

@implementation JSRunningBoardServices

- (id)fetchProcessHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  v6 = sub_1001361D4(handleCopy);

  return v6;
}

@end