@interface MTSyncedEpisodeObserver
+ (id)observerWithBlock:(id)block;
- (MTSyncedEpisodeObserver)initWithBlock:(id)block;
@end

@implementation MTSyncedEpisodeObserver

- (MTSyncedEpisodeObserver)initWithBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = MTSyncedEpisodeObserver;
  v5 = [(MTSyncedEpisodeObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTSyncedEpisodeObserver *)v5 setBlock:blockCopy];
  }

  return v6;
}

+ (id)observerWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

@end