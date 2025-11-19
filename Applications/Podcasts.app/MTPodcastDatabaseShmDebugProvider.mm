@interface MTPodcastDatabaseShmDebugProvider
- (id)debugDataFileName;
@end

@implementation MTPodcastDatabaseShmDebugProvider

- (id)debugDataFileName
{
  v5.receiver = self;
  v5.super_class = MTPodcastDatabaseShmDebugProvider;
  v2 = [(MTPodcastDatabaseDebugProvider *)&v5 debugDataFileName];
  v3 = [v2 stringByAppendingString:@"-shm"];

  return v3;
}

@end