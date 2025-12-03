@interface MTPodcastDatabaseShmDebugProvider
- (id)debugDataFileName;
@end

@implementation MTPodcastDatabaseShmDebugProvider

- (id)debugDataFileName
{
  v5.receiver = self;
  v5.super_class = MTPodcastDatabaseShmDebugProvider;
  debugDataFileName = [(MTPodcastDatabaseDebugProvider *)&v5 debugDataFileName];
  v3 = [debugDataFileName stringByAppendingString:@"-shm"];

  return v3;
}

@end