@interface MTPodcastDatabaseDebugProvider
- (id)debugData;
@end

@implementation MTPodcastDatabaseDebugProvider

- (id)debugData
{
  v3 = +[MTConstants sharedDocumentsDirectory];
  debugDataFileName = [(MTPodcastDatabaseDebugProvider *)self debugDataFileName];
  v5 = [v3 URLByAppendingPathComponent:debugDataFileName];

  v6 = [NSData dataWithContentsOfURL:v5];

  return v6;
}

@end