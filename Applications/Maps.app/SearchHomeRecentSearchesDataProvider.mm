@interface SearchHomeRecentSearchesDataProvider
- (NSArray)objects;
- (SearchHomeRecentSearchesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
- (id)objectsForAnalytics;
- (void)deleteAllEntries;
- (void)deleteEntryAtIndex:(unint64_t)index;
- (void)setEntriesState:(int64_t)state;
- (void)toggleEntriesSate;
@end

@implementation SearchHomeRecentSearchesDataProvider

- (id)objectsForAnalytics
{
  objects = [(SearchHomeRecentSearchesDataProvider *)self objects];
  v3 = [objects copy];

  return v3;
}

- (NSArray)objects
{
  if (_UISolariumEnabled())
  {
    objects = self->_objects;
    v3 = [NSArray arrayWithObjects:&objects count:1];
  }

  else
  {
    v3 = [(NSArray *)self->_objects subarrayWithRange:0, [(SearchHomeRecentSearchesDataProvider *)self numberOfVisibleItems]];
  }

  return v3;
}

- (void)toggleEntriesSate
{
  entriesState = self->_entriesState;
  if (entriesState == 1)
  {
    [(SearchHomeRecentSearchesDataProvider *)self setEntriesState:0];
  }

  else if (!entriesState)
  {
    [(SearchHomeRecentSearchesDataProvider *)self setEntriesState:1];
  }
}

- (void)setEntriesState:(int64_t)state
{
  self->_entriesState = state;
  if ([(NSArray *)self->_objects count]<= 3)
  {
    actionTitle = self->_actionTitle;
    self->_actionTitle = &stru_1016631F0;

LABEL_7:
    v9 = [(NSArray *)self->_objects count];
    goto LABEL_8;
  }

  entriesState = self->_entriesState;
  if (!entriesState)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Less [expand state]" value:@"localized string not found" table:0];
    v12 = self->_actionTitle;
    self->_actionTitle = v11;

    goto LABEL_7;
  }

  if (entriesState != 1)
  {
    return;
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"More [collapse state]" value:@"localized string not found" table:0];
  v8 = self->_actionTitle;
  self->_actionTitle = v7;

  v9 = 3;
LABEL_8:

  [(SearchHomeRecentSearchesDataProvider *)self setNumberOfVisibleItems:v9];
}

- (void)deleteAllEntries
{
  v3 = +[Recents sharedRecents];
  [v3 deleteRecents:self->_objects completion:&stru_10165F7D8];

  [GEOAPPortal captureUserAction:2026 target:13 value:0];
}

- (void)deleteEntryAtIndex:(unint64_t)index
{
  v5 = _UISolariumEnabled();
  objects = [(SearchHomeRecentSearchesDataProvider *)self objects];
  v7 = objects;
  if (v5)
  {
    firstObject = [objects firstObject];
    v9 = [firstObject objectAtIndex:index];
  }

  else
  {
    v9 = [objects objectAtIndex:index];
  }

  v10 = +[Recents sharedRecents];
  v15 = v9;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F97764;
  v13[3] = &unk_10165F7B8;
  v14 = v9;
  v12 = v9;
  [v10 deleteRecents:v11 completion:v13];

  [GEOAPPortal captureUserAction:2027 target:13 value:0];
}

- (SearchHomeRecentSearchesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v21.receiver = self;
  v21.super_class = SearchHomeRecentSearchesDataProvider;
  v13 = [(SearchHomeRecentSearchesDataProvider *)&v21 init];
  if (v13)
  {
    v14 = [objectsCopy copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v13->_type = type;
    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v18;

    [(SearchHomeRecentSearchesDataProvider *)v13 resetEntriesState];
  }

  return v13;
}

@end