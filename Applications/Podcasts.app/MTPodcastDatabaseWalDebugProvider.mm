@interface MTPodcastDatabaseWalDebugProvider
- (id)debugDataFileName;
@end

@implementation MTPodcastDatabaseWalDebugProvider

- (id)debugDataFileName
{
  v5.receiver = self;
  v5.super_class = MTPodcastDatabaseWalDebugProvider;
  v2 = [(MTPodcastDatabaseDebugProvider *)&v5 debugDataFileName];
  v3 = [v2 stringByAppendingString:@"-wal"];

  return v3;
}

@end