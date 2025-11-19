@interface SearchHomeBrowseCategoriesDataProvider
- (NSArray)objects;
- (SearchHomeBrowseCategoriesDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6;
- (void)resetEntriesState;
- (void)setEntriesState:(int64_t)a3;
- (void)toggleEntriesSate;
@end

@implementation SearchHomeBrowseCategoriesDataProvider

- (void)resetEntriesState
{
  if ((_UISolariumEnabled() & 1) == 0)
  {

    [(SearchHomeBrowseCategoriesDataProvider *)self setEntriesState:1];
  }
}

- (void)toggleEntriesSate
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    entriesState = self->_entriesState;
    if (entriesState == 1)
    {
      v4 = 0;
    }

    else
    {
      if (entriesState)
      {
        return;
      }

      v4 = 1;
    }

    [(SearchHomeBrowseCategoriesDataProvider *)self setEntriesState:v4];
  }
}

- (void)setEntriesState:(int64_t)a3
{
  if (_UISolariumEnabled())
  {
    return;
  }

  self->_entriesState = a3;
  if ([(NSArray *)self->_objects count]> 3)
  {
    entriesState = self->_entriesState;
    if (entriesState)
    {
      if (entriesState != 1)
      {
        return;
      }

      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"More [collapse state]" value:@"localized string not found" table:0];
      actionTitle = self->_actionTitle;
      self->_actionTitle = v8;

      v10 = 3;
      goto LABEL_10;
    }

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Less [expand state]" value:@"localized string not found" table:0];
    v13 = self->_actionTitle;
    self->_actionTitle = v12;
  }

  else
  {
    v5 = self->_actionTitle;
    self->_actionTitle = &stru_1016631F0;
  }

  v10 = [(NSArray *)self->_objects count];
LABEL_10:

  [(SearchHomeBrowseCategoriesDataProvider *)self setNumberOfVisibleItems:v10];
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
    v4 = [(NSArray *)self->_objects subarrayWithRange:0, [(SearchHomeBrowseCategoriesDataProvider *)self numberOfVisibleItems]];
    v6 = v4;
    v3 = [NSArray arrayWithObjects:&v6 count:1];
  }

  return v3;
}

- (SearchHomeBrowseCategoriesDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SearchHomeBrowseCategoriesDataProvider;
  v13 = [(SearchHomeBrowseCategoriesDataProvider *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    objects = v13->_objects;
    v13->_objects = v14;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      [(SearchHomeBrowseCategoriesDataProvider *)v13 setNumberOfVisibleItems:[(NSArray *)v13->_objects count]];
    }

    v13->_type = a4;
    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [v12 copy];
    title = v13->_title;
    v13->_title = v18;
  }

  return v13;
}

@end