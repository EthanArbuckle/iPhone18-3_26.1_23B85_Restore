@interface NSArray(UpcomingMedia)
- (id)atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList:()UpcomingMedia;
@end

@implementation NSArray(UpcomingMedia)

- (id)atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList:()UpcomingMedia
{
  v5 = a3;
  if ([self count])
  {
    v6 = MEMORY[0x277CCAC30];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__NSArray_UpcomingMedia__atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList___block_invoke;
    v10[3] = &unk_27859F6D8;
    v12 = a2;
    v10[4] = self;
    v11 = v5;
    v7 = [v6 predicateWithBlock:v10];
    selfCopy = [self filteredArrayUsingPredicate:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end