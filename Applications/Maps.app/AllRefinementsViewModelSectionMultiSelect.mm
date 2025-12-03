@interface AllRefinementsViewModelSectionMultiSelect
- (AllRefinementsViewModelSectionMultiSelect)initWithElements:(id)elements displayName:(id)name maximumNumberOfSelectableElements:(unsigned int)selectableElements clauseType:(int64_t)type showEqualWidthButtonsOnFilterView:(BOOL)view displayNameForMultiSelected:(id)selected multiSelectIdentifier:(id)identifier;
- (BOOL)compare:(id)compare;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AllRefinementsViewModelSectionMultiSelect

- (BOOL)compare:(id)compare
{
  compareCopy = compare;
  v5 = compareCopy;
  if (compareCopy && ([compareCopy elements], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), -[AllRefinementsViewModelSectionMultiSelect elements](self, "elements"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSMutableArray alloc];
  elements = [(AllRefinementsViewModelSectionMultiSelect *)self elements];
  v6 = [v4 initWithArray:elements copyItems:1];

  v7 = [AllRefinementsViewModelSectionMultiSelect alloc];
  displayName = [(AllRefinementsViewModelSectionMultiSelect *)self displayName];
  maximumNumberOfSelectableElements = [(AllRefinementsViewModelSectionMultiSelect *)self maximumNumberOfSelectableElements];
  clauseType = [(AllRefinementsViewModelSectionMultiSelect *)self clauseType];
  showEqualWidthButtonsOnFilterView = [(AllRefinementsViewModelSectionMultiSelect *)self showEqualWidthButtonsOnFilterView];
  displayNameForMultiSelected = [(AllRefinementsViewModelSectionMultiSelect *)self displayNameForMultiSelected];
  multiSelectIdentifier = [(AllRefinementsViewModelSectionMultiSelect *)self multiSelectIdentifier];
  v14 = [(AllRefinementsViewModelSectionMultiSelect *)v7 initWithElements:v6 displayName:displayName maximumNumberOfSelectableElements:maximumNumberOfSelectableElements clauseType:clauseType showEqualWidthButtonsOnFilterView:showEqualWidthButtonsOnFilterView displayNameForMultiSelected:displayNameForMultiSelected multiSelectIdentifier:multiSelectIdentifier];

  return v14;
}

- (AllRefinementsViewModelSectionMultiSelect)initWithElements:(id)elements displayName:(id)name maximumNumberOfSelectableElements:(unsigned int)selectableElements clauseType:(int64_t)type showEqualWidthButtonsOnFilterView:(BOOL)view displayNameForMultiSelected:(id)selected multiSelectIdentifier:(id)identifier
{
  elementsCopy = elements;
  nameCopy = name;
  selectedCopy = selected;
  identifierCopy = identifier;
  v30.receiver = self;
  v30.super_class = AllRefinementsViewModelSectionMultiSelect;
  v20 = [(AllRefinementsViewModelSectionMultiSelect *)&v30 init];
  if (v20)
  {
    v21 = objc_alloc_init(NSUUID);
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v20->_type = 1;
    objc_storeStrong(&v20->_elements, elements);
    v23 = [nameCopy copy];
    displayName = v20->_displayName;
    v20->_displayName = v23;

    v20->_maximumNumberOfSelectableElements = selectableElements;
    v20->_clauseType = type;
    v20->_showEqualWidthButtonsOnFilterView = view;
    v25 = [selectedCopy copy];
    displayNameForMultiSelected = v20->_displayNameForMultiSelected;
    v20->_displayNameForMultiSelected = v25;

    v27 = [identifierCopy copy];
    multiSelectIdentifier = v20->_multiSelectIdentifier;
    v20->_multiSelectIdentifier = v27;
  }

  return v20;
}

@end