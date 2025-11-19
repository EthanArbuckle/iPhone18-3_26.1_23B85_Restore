@interface SearchUserWordsController
- (SearchUserWordsController)initWithListController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)filterContentForSearchText:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation SearchUserWordsController

- (SearchUserWordsController)initWithListController:(id)a3
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
    [(SearchUserWordsController *)v4 setListController:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SearchUserWordsController;
  [(SearchUserWordsController *)&v3 dealloc];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    [a3 deselectRowAtIndexPath:a5 animated:?];
    v7 = -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a5 row]);
    [(TIUserWordsManager *)[(SearchUserWordsController *)self dictionaryController] addEntries:0 removeEntries:[NSArray withCompletionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [a3 deselectRowAtIndexPath:a4 animated:1];
  v6 = -[EditUserWordController initWithUserWord:]([EditUserWordController alloc], "initWithUserWord:", -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a4 row]));
  [(EditUserWordController *)v6 setDictionaryController:[(SearchUserWordsController *)self dictionaryController]];
  [(ListUserWordsController *)[(SearchUserWordsController *)self listController] showController:v6];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)[(SearchUserWordsController *)self filteredListContent:a3] count];
  if (!result)
  {
    v6 = [(SearchUserWordsController *)self noResults];

    return [(NSArray *)v6 count];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    v7 = @"kCellIdentifier";
  }

  else
  {
    v7 = @"kNoResultsIdentifier";
  }

  v8 = [a3 dequeueReusableCellWithIdentifier:v7];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:-[NSArray count](-[SearchUserWordsController filteredListContent](self reuseIdentifier:{"filteredListContent"), "count") != 0, v7}];
    [v8 setAccessoryType:0];
  }

  if ([(NSArray *)[(SearchUserWordsController *)self filteredListContent] count])
  {
    v9 = -[NSArray objectAtIndex:](-[SearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a4 row]);
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

- (void)filterContentForSearchText:(id)a3
{
  [(SearchUserWordsController *)self setFilteredListContent:[(NSArray *)[(TIUserWordsManager *)[(SearchUserWordsController *)self dictionaryController] entries] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"(shortcut CONTAINS[c] %@) OR (phrase CONTAINS[c] %@)", a3, a3]]];
  v4 = [(SearchUserWordsController *)self tableView];

  [v4 reloadData];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  if ([a3 isActive])
  {
    v5 = [objc_msgSend(a3 "searchBar")];

    [(SearchUserWordsController *)self filterContentForSearchText:v5];
  }
}

@end