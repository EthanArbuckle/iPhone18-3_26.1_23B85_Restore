@interface AllRefinementsViewModelMultiSelectElement
- (AllRefinementsViewModelMultiSelectElement)initWithDisplayName:(id)name isSelected:(BOOL)selected optionalLabelWidth:(id)width refinementKey:(id)key data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AllRefinementsViewModelMultiSelectElement

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AllRefinementsViewModelMultiSelectElement alloc];
  displayName = [(AllRefinementsViewModelMultiSelectElement *)self displayName];
  isSelected = [(AllRefinementsViewModelMultiSelectElement *)self isSelected];
  labelWidth = [(AllRefinementsViewModelMultiSelectElement *)self labelWidth];
  refinementKey = [(AllRefinementsViewModelMultiSelectElement *)self refinementKey];
  data = [(AllRefinementsViewModelMultiSelectElement *)self data];
  v10 = [(AllRefinementsViewModelMultiSelectElement *)v4 initWithDisplayName:displayName isSelected:isSelected optionalLabelWidth:labelWidth refinementKey:refinementKey data:data];

  return v10;
}

- (AllRefinementsViewModelMultiSelectElement)initWithDisplayName:(id)name isSelected:(BOOL)selected optionalLabelWidth:(id)width refinementKey:(id)key data:(id)data
{
  nameCopy = name;
  widthCopy = width;
  keyCopy = key;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = AllRefinementsViewModelMultiSelectElement;
  v16 = [(AllRefinementsViewModelMultiSelectElement *)&v22 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    displayName = v16->_displayName;
    v16->_displayName = v17;

    v16->_isSelected = selected;
    objc_storeStrong(&v16->_labelWidth, width);
    v19 = [keyCopy copy];
    refinementKey = v16->_refinementKey;
    v16->_refinementKey = v19;

    objc_storeStrong(&v16->_data, data);
  }

  return v16;
}

@end