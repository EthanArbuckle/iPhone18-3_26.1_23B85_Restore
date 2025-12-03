@interface AllRefinementsViewModelSectionToggles
- (AllRefinementsViewModelSectionToggles)initWithToggles:(id)toggles displayName:(id)name;
- (BOOL)compare:(id)compare;
- (id)copyWithZone:(_NSZone *)zone;
- (void)resetToDefault;
@end

@implementation AllRefinementsViewModelSectionToggles

- (void)resetToDefault
{
  toggles = [(AllRefinementsViewModelSectionToggles *)self toggles];
  [toggles enumerateObjectsUsingBlock:&stru_101653110];
}

- (BOOL)compare:(id)compare
{
  compareCopy = compare;
  toggles = [compareCopy toggles];
  v6 = [toggles count];
  toggles2 = [(AllRefinementsViewModelSectionToggles *)self toggles];
  v8 = [toggles2 count];

  if (v6 == v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    toggles3 = [(AllRefinementsViewModelSectionToggles *)self toggles];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100D74E94;
    v12[3] = &unk_1016530D0;
    v13 = compareCopy;
    v14 = &v15;
    [toggles3 enumerateObjectsUsingBlock:v12];

    v10 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSMutableArray alloc];
  toggles = [(AllRefinementsViewModelSectionToggles *)self toggles];
  v6 = [v4 initWithArray:toggles copyItems:1];

  v7 = [AllRefinementsViewModelSectionToggles alloc];
  displayName = [(AllRefinementsViewModelSectionToggles *)self displayName];
  v9 = [(AllRefinementsViewModelSectionToggles *)v7 initWithToggles:v6 displayName:displayName];

  return v9;
}

- (AllRefinementsViewModelSectionToggles)initWithToggles:(id)toggles displayName:(id)name
{
  togglesCopy = toggles;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = AllRefinementsViewModelSectionToggles;
  v9 = [(AllRefinementsViewModelSectionToggles *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSUUID);
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v9->_type = 0;
    objc_storeStrong(&v9->_toggles, toggles);
    objc_storeStrong(&v9->_displayName, name);
  }

  return v9;
}

@end