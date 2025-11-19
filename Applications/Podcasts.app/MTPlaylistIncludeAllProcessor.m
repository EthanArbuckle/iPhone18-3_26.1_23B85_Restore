@interface MTPlaylistIncludeAllProcessor
- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5;
@end

@implementation MTPlaylistIncludeAllProcessor

- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5
{
  if ([a4 count])
  {

    [(MTBaseProcessor *)self results:&stru_1004DB490];
  }
}

@end