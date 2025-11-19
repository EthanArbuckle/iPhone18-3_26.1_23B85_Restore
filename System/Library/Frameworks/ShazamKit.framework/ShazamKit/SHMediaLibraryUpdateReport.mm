@interface SHMediaLibraryUpdateReport
- (SHMediaLibraryUpdateReport)init;
@end

@implementation SHMediaLibraryUpdateReport

- (SHMediaLibraryUpdateReport)init
{
  v12.receiver = self;
  v12.super_class = SHMediaLibraryUpdateReport;
  v2 = [(SHMediaLibraryUpdateReport *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    locallyFoundTracks = v2->_locallyFoundTracks;
    v2->_locallyFoundTracks = v3;

    v5 = +[NSMutableArray array];
    missingFromLocalStoreTracks = v2->_missingFromLocalStoreTracks;
    v2->_missingFromLocalStoreTracks = v5;

    v7 = +[NSMutableArray array];
    locallyFoundGroups = v2->_locallyFoundGroups;
    v2->_locallyFoundGroups = v7;

    v9 = +[NSMutableArray array];
    missingFromLocalStoreGroups = v2->_missingFromLocalStoreGroups;
    v2->_missingFromLocalStoreGroups = v9;
  }

  return v2;
}

@end