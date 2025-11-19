@interface AllRefinementsViewModelSectionToggles
- (AllRefinementsViewModelSectionToggles)initWithToggles:(id)a3 displayName:(id)a4;
- (BOOL)compare:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)resetToDefault;
@end

@implementation AllRefinementsViewModelSectionToggles

- (void)resetToDefault
{
  v2 = [(AllRefinementsViewModelSectionToggles *)self toggles];
  [v2 enumerateObjectsUsingBlock:&stru_101653110];
}

- (BOOL)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 toggles];
  v6 = [v5 count];
  v7 = [(AllRefinementsViewModelSectionToggles *)self toggles];
  v8 = [v7 count];

  if (v6 == v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v9 = [(AllRefinementsViewModelSectionToggles *)self toggles];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100D74E94;
    v12[3] = &unk_1016530D0;
    v13 = v4;
    v14 = &v15;
    [v9 enumerateObjectsUsingBlock:v12];

    v10 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSMutableArray alloc];
  v5 = [(AllRefinementsViewModelSectionToggles *)self toggles];
  v6 = [v4 initWithArray:v5 copyItems:1];

  v7 = [AllRefinementsViewModelSectionToggles alloc];
  v8 = [(AllRefinementsViewModelSectionToggles *)self displayName];
  v9 = [(AllRefinementsViewModelSectionToggles *)v7 initWithToggles:v6 displayName:v8];

  return v9;
}

- (AllRefinementsViewModelSectionToggles)initWithToggles:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AllRefinementsViewModelSectionToggles;
  v9 = [(AllRefinementsViewModelSectionToggles *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSUUID);
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v9->_type = 0;
    objc_storeStrong(&v9->_toggles, a3);
    objc_storeStrong(&v9->_displayName, a4);
  }

  return v9;
}

@end