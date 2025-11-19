@interface AllRefinementsViewModelSectionMultiSelect
- (AllRefinementsViewModelSectionMultiSelect)initWithElements:(id)a3 displayName:(id)a4 maximumNumberOfSelectableElements:(unsigned int)a5 clauseType:(int64_t)a6 showEqualWidthButtonsOnFilterView:(BOOL)a7 displayNameForMultiSelected:(id)a8 multiSelectIdentifier:(id)a9;
- (BOOL)compare:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AllRefinementsViewModelSectionMultiSelect

- (BOOL)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 elements], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), -[AllRefinementsViewModelSectionMultiSelect elements](self, "elements"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    elements = self->_elements;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100D75288;
    v13[3] = &unk_101653178;
    v14 = v5;
    v15 = &v16;
    [(NSArray *)elements enumerateObjectsUsingBlock:v13];
    v11 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSMutableArray alloc];
  v5 = [(AllRefinementsViewModelSectionMultiSelect *)self elements];
  v6 = [v4 initWithArray:v5 copyItems:1];

  v7 = [AllRefinementsViewModelSectionMultiSelect alloc];
  v8 = [(AllRefinementsViewModelSectionMultiSelect *)self displayName];
  v9 = [(AllRefinementsViewModelSectionMultiSelect *)self maximumNumberOfSelectableElements];
  v10 = [(AllRefinementsViewModelSectionMultiSelect *)self clauseType];
  v11 = [(AllRefinementsViewModelSectionMultiSelect *)self showEqualWidthButtonsOnFilterView];
  v12 = [(AllRefinementsViewModelSectionMultiSelect *)self displayNameForMultiSelected];
  v13 = [(AllRefinementsViewModelSectionMultiSelect *)self multiSelectIdentifier];
  v14 = [(AllRefinementsViewModelSectionMultiSelect *)v7 initWithElements:v6 displayName:v8 maximumNumberOfSelectableElements:v9 clauseType:v10 showEqualWidthButtonsOnFilterView:v11 displayNameForMultiSelected:v12 multiSelectIdentifier:v13];

  return v14;
}

- (AllRefinementsViewModelSectionMultiSelect)initWithElements:(id)a3 displayName:(id)a4 maximumNumberOfSelectableElements:(unsigned int)a5 clauseType:(int64_t)a6 showEqualWidthButtonsOnFilterView:(BOOL)a7 displayNameForMultiSelected:(id)a8 multiSelectIdentifier:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v30.receiver = self;
  v30.super_class = AllRefinementsViewModelSectionMultiSelect;
  v20 = [(AllRefinementsViewModelSectionMultiSelect *)&v30 init];
  if (v20)
  {
    v21 = objc_alloc_init(NSUUID);
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v20->_type = 1;
    objc_storeStrong(&v20->_elements, a3);
    v23 = [v17 copy];
    displayName = v20->_displayName;
    v20->_displayName = v23;

    v20->_maximumNumberOfSelectableElements = a5;
    v20->_clauseType = a6;
    v20->_showEqualWidthButtonsOnFilterView = a7;
    v25 = [v18 copy];
    displayNameForMultiSelected = v20->_displayNameForMultiSelected;
    v20->_displayNameForMultiSelected = v25;

    v27 = [v19 copy];
    multiSelectIdentifier = v20->_multiSelectIdentifier;
    v20->_multiSelectIdentifier = v27;
  }

  return v20;
}

@end