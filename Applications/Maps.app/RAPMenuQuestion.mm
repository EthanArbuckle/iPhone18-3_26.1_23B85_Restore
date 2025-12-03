@interface RAPMenuQuestion
+ (id)localizedHeaderText;
+ (id)menuForReport:(id)report state:(id)state onlyShowIncidents:(BOOL)incidents;
- (BOOL)_isRecursivelyComplete;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category;
- (NSArray)allMenuItems;
- (NSArray)mainMenuItems;
- (NSArray)mainMenuQuestionCategories;
- (NSArray)menuItems;
- (id)menuItemForIndexPath:(id)path;
- (id)menuItemWithFollowUpQuestionCategory:(int64_t)category;
- (unint64_t)numberOfMenuItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)removeMenuItemForFollowUpQuestionCategory:(int64_t)category;
- (void)resetMenu;
- (void)setSelectedMenuItem:(id)item;
@end

@implementation RAPMenuQuestion

- (BOOL)_isRecursivelyComplete
{
  _isRecursivelyComplete = [(RAPMenuItem *)self->_selectedMenuItem _isRecursivelyComplete];
  if (_isRecursivelyComplete)
  {
    v5.receiver = self;
    v5.super_class = RAPMenuQuestion;
    LOBYTE(_isRecursivelyComplete) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return _isRecursivelyComplete;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  [selectedMenuItem _fillSubmissionParameters:parametersCopy];
}

- (void)setSelectedMenuItem:(id)item
{
  itemCopy = item;
  if (self->_selectedMenuItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_selectedMenuItem, item);
    [(RAPQuestion *)self _setComplete:v6 != 0 allowInvokingDidChange:0];
    [(RAPQuestion *)self _didChange];
    itemCopy = v6;
  }
}

- (void)removeMenuItemForFollowUpQuestionCategory:(int64_t)category
{
  menuItemsByKind = self->_menuItemsByKind;
  v4 = [NSNumber numberWithInteger:category];
  [(NSMutableDictionary *)menuItemsByKind removeObjectForKey:v4];
}

- (id)menuItemWithFollowUpQuestionCategory:(int64_t)category
{
  menuItemsByKind = self->_menuItemsByKind;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)menuItemsByKind objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(RAPMenuQuestion *)self _newMenuItemWithFollowUpQuestionCategory:category];
    if (!self->_menuItemsByKind)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_menuItemsByKind;
      self->_menuItemsByKind = v8;
    }

    if (v7)
    {
      v10 = self->_menuItemsByKind;
      v11 = [NSNumber numberWithInteger:category];
      [(NSMutableDictionary *)v10 setObject:v7 forKeyedSubscript:v11];
    }
  }

  return v7;
}

- (NSArray)allMenuItems
{
  allMenuItems = self->_allMenuItems;
  if (!allMenuItems)
  {
    v4 = +[NSMutableArray array];
    menuItems = [(RAPMenuQuestion *)self menuItems];
    v6 = [menuItems count];

    if (v6)
    {
      v7 = 0;
      do
      {
        menuItems2 = [(RAPMenuQuestion *)self menuItems];
        v9 = [menuItems2 objectAtIndexedSubscript:v7];
        [v4 addObjectsFromArray:v9];

        ++v7;
        menuItems3 = [(RAPMenuQuestion *)self menuItems];
        v11 = [menuItems3 count];
      }

      while (v7 < v11);
    }

    v12 = [v4 copy];
    v13 = self->_allMenuItems;
    self->_allMenuItems = v12;

    allMenuItems = self->_allMenuItems;
  }

  return allMenuItems;
}

- (NSArray)menuItems
{
  if (!self->_menuItems)
  {
    mainMenuItems = [(RAPMenuQuestion *)self mainMenuItems];

    if (mainMenuItems)
    {
      mainMenuItems2 = [(RAPMenuQuestion *)self mainMenuItems];
      v10 = mainMenuItems2;
      v5 = [NSArray arrayWithObjects:&v10 count:1];
      menuItems = self->_menuItems;
      self->_menuItems = v5;

      allMenuItems = self->_allMenuItems;
      self->_allMenuItems = 0;
    }
  }

  v8 = self->_menuItems;

  return v8;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category
{
  mainMenuQuestionCategories = [(RAPMenuQuestion *)self mainMenuQuestionCategories];
  v5 = [NSNumber numberWithInteger:category];
  v6 = [mainMenuQuestionCategories containsObject:v5];

  return v6;
}

- (NSArray)mainMenuQuestionCategories
{
  mainMenuQuestionCategories = self->_mainMenuQuestionCategories;
  if (!mainMenuQuestionCategories)
  {
    self->_mainMenuQuestionCategories = &__NSArray0__struct;
    mainMenuQuestionCategories = self->_mainMenuQuestionCategories;
  }

  return mainMenuQuestionCategories;
}

- (NSArray)mainMenuItems
{
  mainMenuItems = self->_mainMenuItems;
  if (!mainMenuItems)
  {
    v4 = +[NSMutableArray array];
    mainMenuQuestionCategories = [(RAPMenuQuestion *)self mainMenuQuestionCategories];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1006CE2EC;
    v13 = &unk_10162DD18;
    selfCopy = self;
    v15 = v4;
    v6 = v4;
    [mainMenuQuestionCategories enumerateObjectsUsingBlock:&v10];

    v7 = [v6 copy];
    v8 = self->_mainMenuItems;
    self->_mainMenuItems = v7;

    mainMenuItems = self->_mainMenuItems;
  }

  return mainMenuItems;
}

- (id)menuItemForIndexPath:(id)path
{
  pathCopy = path;
  menuItems = [(RAPMenuQuestion *)self menuItems];
  v6 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  item = [pathCopy item];
  v8 = [v6 objectAtIndexedSubscript:item];

  return v8;
}

- (unint64_t)numberOfMenuItemsInSection:(unint64_t)section
{
  menuItems = [(RAPMenuQuestion *)self menuItems];
  v5 = [menuItems objectAtIndexedSubscript:section];

  v6 = [v5 count];
  return v6;
}

- (unint64_t)numberOfSections
{
  menuItems = [(RAPMenuQuestion *)self menuItems];
  v3 = [menuItems count];

  return v3;
}

- (void)resetMenu
{
  allMenuItems = self->_allMenuItems;
  self->_allMenuItems = 0;

  menuItems = self->_menuItems;
  self->_menuItems = 0;

  mainMenuItems = self->_mainMenuItems;
  self->_mainMenuItems = 0;
}

+ (id)menuForReport:(id)report state:(id)state onlyShowIncidents:(BOOL)incidents
{
  incidentsCopy = incidents;
  reportCopy = report;
  stateCopy = state;
  v9 = stateCopy;
  if (incidentsCopy)
  {
    v10 = RAPMainIncidentQuestion;
  }

  else
  {
    reportedPlace = [stateCopy reportedPlace];

    if (reportedPlace)
    {
      v12 = [RAPPlaceMenuQuestion alloc];
      reportedPlace2 = [v9 reportedPlace];
      v14 = [(RAPPlaceMenuQuestion *)v12 initWithReport:reportCopy reportedPlace:reportedPlace2];

      goto LABEL_7;
    }

    v10 = RAPMainQuestion;
  }

  v14 = [[v10 alloc] initWithReport:reportCopy parentQuestion:0];
LABEL_7:

  return v14;
}

+ (id)localizedHeaderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Issue Type [Report an Issue]" value:@"localized string not found" table:0];

  return v3;
}

@end