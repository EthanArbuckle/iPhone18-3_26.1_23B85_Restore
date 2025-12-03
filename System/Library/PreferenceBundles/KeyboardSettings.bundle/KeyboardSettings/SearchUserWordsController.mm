@interface SearchUserWordsController
- (SearchUserWordsController)initWithListController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)filterContentForSearchText:(id)text;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation SearchUserWordsController

- (SearchUserWordsController)initWithListController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SearchUserWordsController;
  v4 = [(SearchUserWordsController *)&v6 init];
  if (v4)
  {
    v7[0] = &stru_49C80;
    v7[1] = &stru_49C80;
    v7[2] = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NO_RESULTS", &stru_49C80, @"Keyboard"];
    v4->_noResults = [NSArray arrayWithObjects:v7 count:3];
    [(SearchUserWordsController *)v4 setEdgesForExtendedLayout:4];
    [(SearchUserWordsController *)v4 setListController:controller];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SearchUserWordsController;
  [(SearchUserWordsController *)&v3 dealloc];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    [view deselectRowAtIndexPath:path animated:?];
    v7 = -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]);
    [(TIUserWordsManager *)[(SearchUserWordsController *)self dictionaryController] addEntries:0 removeEntries:[NSArray withCompletionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    return path;
  }

  else
  {
    return 0;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [view deselectRowAtIndexPath:path animated:1];
  v6 = -[EditUserWordController initWithUserWord:]([EditUserWordController alloc], "initWithUserWord:", -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]));
  [(EditUserWordController *)v6 setDictionaryController:[(SearchUserWordsController *)self dictionaryController]];
  [(ListUserWordsController *)[(SearchUserWordsController *)self listController] showController:v6];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(NSArray *)[(SearchUserWordsController *)self filteredListContent:view] count];
  if (!result)
  {
    noResults = [(SearchUserWordsController *)self noResults];

    return [(NSArray *)noResults count];
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    v7 = @"kCellIdentifier";
  }

  else
  {
    v7 = @"kNoResultsIdentifier";
  }

  v8 = [view dequeueReusableCellWithIdentifier:v7];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:-[NSArray count](-[SearchUserWordsController filteredListContent](self reuseIdentifier:{"filteredListContent"), "count") != 0, v7}];
    [v8 setAccessoryType:0];
  }

  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    v9 = -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]);
    [objc_msgSend(v8 "detailTextLabel")];
    [objc_msgSend(v8 "textLabel")];
  }

  else
  {
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
  }

  return v8;
}

- (void)filterContentForSearchText:(id)text
{
  [(SearchUserWordsController *)self setFilteredListContent:[(NSArray *)[(TIUserWordsManager *)[(SearchUserWordsController *)self dictionaryController] entries] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"(shortcut CONTAINS[c] %@) OR (phrase CONTAINS[c] %@)", text, text]]];
  tableView = [(SearchUserWordsController *)self tableView];

  [tableView reloadData];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  if ([controller isActive])
  {
    v5 = [objc_msgSend(controller "searchBar")];

    [(SearchUserWordsController *)self filterContentForSearchText:v5];
  }
}

@end