@interface CNEmptyPeopleFetcher
- (void)fetchNextBatchWithReply:(id)a3;
@end

@implementation CNEmptyPeopleFetcher

- (void)fetchNextBatchWithReply:(id)a3
{
  v3 = MEMORY[0x1E69966D0];
  v4 = a3;
  v5 = [v3 emptyResponse];
  v4[2](v4, v5, 1, 0);
}

@end