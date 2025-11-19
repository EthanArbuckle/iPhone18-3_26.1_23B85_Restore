@interface AllRefinementsViewModelMultiSelectElement
- (AllRefinementsViewModelMultiSelectElement)initWithDisplayName:(id)a3 isSelected:(BOOL)a4 optionalLabelWidth:(id)a5 refinementKey:(id)a6 data:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AllRefinementsViewModelMultiSelectElement

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AllRefinementsViewModelMultiSelectElement alloc];
  v5 = [(AllRefinementsViewModelMultiSelectElement *)self displayName];
  v6 = [(AllRefinementsViewModelMultiSelectElement *)self isSelected];
  v7 = [(AllRefinementsViewModelMultiSelectElement *)self labelWidth];
  v8 = [(AllRefinementsViewModelMultiSelectElement *)self refinementKey];
  v9 = [(AllRefinementsViewModelMultiSelectElement *)self data];
  v10 = [(AllRefinementsViewModelMultiSelectElement *)v4 initWithDisplayName:v5 isSelected:v6 optionalLabelWidth:v7 refinementKey:v8 data:v9];

  return v10;
}

- (AllRefinementsViewModelMultiSelectElement)initWithDisplayName:(id)a3 isSelected:(BOOL)a4 optionalLabelWidth:(id)a5 refinementKey:(id)a6 data:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = AllRefinementsViewModelMultiSelectElement;
  v16 = [(AllRefinementsViewModelMultiSelectElement *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    displayName = v16->_displayName;
    v16->_displayName = v17;

    v16->_isSelected = a4;
    objc_storeStrong(&v16->_labelWidth, a5);
    v19 = [v14 copy];
    refinementKey = v16->_refinementKey;
    v16->_refinementKey = v19;

    objc_storeStrong(&v16->_data, a7);
  }

  return v16;
}

@end