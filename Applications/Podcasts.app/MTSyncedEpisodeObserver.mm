@interface MTSyncedEpisodeObserver
+ (id)observerWithBlock:(id)a3;
- (MTSyncedEpisodeObserver)initWithBlock:(id)a3;
@end

@implementation MTSyncedEpisodeObserver

- (MTSyncedEpisodeObserver)initWithBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTSyncedEpisodeObserver;
  v5 = [(MTSyncedEpisodeObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTSyncedEpisodeObserver *)v5 setBlock:v4];
  }

  return v6;
}

+ (id)observerWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

@end