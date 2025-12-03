@interface MTPodcastDatabaseWalDebugProvider
- (id)debugDataFileName;
@end

@implementation MTPodcastDatabaseWalDebugProvider

- (id)debugDataFileName
{
  v5.receiver = self;
  v5.super_class = MTPodcastDatabaseWalDebugProvider;
  debugDataFileName = [(MTPodcastDatabaseDebugProvider *)&v5 debugDataFileName];
  v3 = [debugDataFileName stringByAppendingString:@"-wal"];

  return v3;
}

@end