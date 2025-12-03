@interface CNEmptyPeopleFetcher
- (void)fetchNextBatchWithReply:(id)reply;
@end

@implementation CNEmptyPeopleFetcher

- (void)fetchNextBatchWithReply:(id)reply
{
  v3 = MEMORY[0x1E69966D0];
  replyCopy = reply;
  emptyResponse = [v3 emptyResponse];
  replyCopy[2](replyCopy, emptyResponse, 1, 0);
}

@end