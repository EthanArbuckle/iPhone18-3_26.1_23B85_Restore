@interface RAPMenuQuestion
+ (id)localizedHeaderText;
+ (id)menuForReport:(id)a3 state:(id)a4 onlyShowIncidents:(BOOL)a5;
- (BOOL)_isRecursivelyComplete;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3;
- (NSArray)allMenuItems;
- (NSArray)mainMenuItems;
- (NSArray)mainMenuQuestionCategories;
- (NSArray)menuItems;
- (id)menuItemForIndexPath:(id)a3;
- (id)menuItemWithFollowUpQuestionCategory:(int64_t)a3;
- (unint64_t)numberOfMenuItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_fillSubmissionParameters:(id)a3;
- (void)removeMenuItemForFollowUpQuestionCategory:(int64_t)a3;
- (void)resetMenu;
- (void)setSelectedMenuItem:(id)a3;
@end

@implementation RAPMenuQuestion

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPMenuItem *)self->_selectedMenuItem _isRecursivelyComplete];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = RAPMenuQuestion;
    LOBYTE(v3) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return v3;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [(RAPMenuQuestion *)self selectedMenuItem];
  [v5 _fillSubmissionParameters:v4];
}

- (void)setSelectedMenuItem:(id)a3
{
  v5 = a3;
  if (self->_selectedMenuItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedMenuItem, a3);
    [(RAPQuestion *)self _setComplete:v6 != 0 allowInvokingDidChange:0];
    [(RAPQuestion *)self _didChange];
    v5 = v6;
  }
}

- (void)removeMenuItemForFollowUpQuestionCategory:(int64_t)a3
{
  menuItemsByKind = self->_menuItemsByKind;
  v4 = [NSNumber numberWithInteger:a3];
  [(NSMutableDictionary *)menuItemsByKind removeObjectForKey:v4];
}

- (id)menuItemWithFollowUpQuestionCategory:(int64_t)a3
{
  menuItemsByKind = self->_menuItemsByKind;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)menuItemsByKind objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(RAPMenuQuestion *)self _newMenuItemWithFollowUpQuestionCategory:a3];
    if (!self->_menuItemsByKind)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_menuItemsByKind;
      self->_menuItemsByKind = v8;
    }

    if (v7)
    {
      v10 = self->_menuItemsByKind;
      v11 = [NSNumber numberWithInteger:a3];
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
    v5 = [(RAPMenuQuestion *)self menuItems];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(RAPMenuQuestion *)self menuItems];
        v9 = [v8 objectAtIndexedSubscript:v7];
        [v4 addObjectsFromArray:v9];

        ++v7;
        v10 = [(RAPMenuQuestion *)self menuItems];
        v11 = [v10 count];
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
    v3 = [(RAPMenuQuestion *)self mainMenuItems];

    if (v3)
    {
      v4 = [(RAPMenuQuestion *)self mainMenuItems];
      v10 = v4;
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

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3
{
  v4 = [(RAPMenuQuestion *)self mainMenuQuestionCategories];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

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
    v5 = [(RAPMenuQuestion *)self mainMenuQuestionCategories];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1006CE2EC;
    v13 = &unk_10162DD18;
    v14 = self;
    v15 = v4;
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:&v10];

    v7 = [v6 copy];
    v8 = self->_mainMenuItems;
    self->_mainMenuItems = v7;

    mainMenuItems = self->_mainMenuItems;
  }

  return mainMenuItems;
}

- (id)menuItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RAPMenuQuestion *)self menuItems];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v7 = [v4 item];
  v8 = [v6 objectAtIndexedSubscript:v7];

  return v8;
}

- (unint64_t)numberOfMenuItemsInSection:(unint64_t)a3
{
  v4 = [(RAPMenuQuestion *)self menuItems];
  v5 = [v4 objectAtIndexedSubscript:a3];

  v6 = [v5 count];
  return v6;
}

- (unint64_t)numberOfSections
{
  v2 = [(RAPMenuQuestion *)self menuItems];
  v3 = [v2 count];

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

+ (id)menuForReport:(id)a3 state:(id)a4 onlyShowIncidents:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v5)
  {
    v10 = RAPMainIncidentQuestion;
  }

  else
  {
    v11 = [v8 reportedPlace];

    if (v11)
    {
      v12 = [RAPPlaceMenuQuestion alloc];
      v13 = [v9 reportedPlace];
      v14 = [(RAPPlaceMenuQuestion *)v12 initWithReport:v7 reportedPlace:v13];

      goto LABEL_7;
    }

    v10 = RAPMainQuestion;
  }

  v14 = [[v10 alloc] initWithReport:v7 parentQuestion:0];
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