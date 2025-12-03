@interface MSPMutableHistoryEntrySearch
- (MSPMutableHistoryEntrySearch)initWithTicket:(id)ticket completionTitle:(id)title;
@end

@implementation MSPMutableHistoryEntrySearch

- (MSPMutableHistoryEntrySearch)initWithTicket:(id)ticket completionTitle:(id)title
{
  ticketCopy = ticket;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = MSPMutableHistoryEntrySearch;
  v8 = [(MSPMutableHistoryEntrySearch *)&v14 init];
  if (v8)
  {
    if ([titleCopy length])
    {
      [(MSPMutableHistoryEntrySearch *)v8 setQuery:titleCopy];
    }

    else
    {
      searchQuery = [ticketCopy searchQuery];
      v10 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v11 = [searchQuery stringByTrimmingCharactersInSet:v10];
      [(MSPMutableHistoryEntrySearch *)v8 setQuery:v11];
    }

    boundingRegion = [ticketCopy boundingRegion];
    [(MSPMutableHistoryEntrySearch *)v8 setMapRegion:boundingRegion];
  }

  return v8;
}

@end