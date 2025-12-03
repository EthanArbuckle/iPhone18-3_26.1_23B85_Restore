@interface MTPlaylistIncludeAllProcessor
- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds;
@end

@implementation MTPlaylistIncludeAllProcessor

- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds
{
  if ([insertIds count])
  {

    [(MTBaseProcessor *)self results:&stru_1004DB490];
  }
}

@end