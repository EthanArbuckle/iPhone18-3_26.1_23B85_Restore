@interface AllRefinementsViewModelToggle
- (AllRefinementsViewModelToggle)initWithDisplayName:(id)name isSelected:(BOOL)selected data:(id)data refinementKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AllRefinementsViewModelToggle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AllRefinementsViewModelToggle alloc];
  displayName = [(AllRefinementsViewModelToggle *)self displayName];
  isSelected = [(AllRefinementsViewModelToggle *)self isSelected];
  data = [(AllRefinementsViewModelToggle *)self data];
  refinementKey = [(AllRefinementsViewModelToggle *)self refinementKey];
  v9 = [(AllRefinementsViewModelToggle *)v4 initWithDisplayName:displayName isSelected:isSelected data:data refinementKey:refinementKey];

  return v9;
}

- (AllRefinementsViewModelToggle)initWithDisplayName:(id)name isSelected:(BOOL)selected data:(id)data refinementKey:(id)key
{
  nameCopy = name;
  dataCopy = data;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = AllRefinementsViewModelToggle;
  v13 = [(AllRefinementsViewModelToggle *)&v19 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    v13->_isSelected = selected;
    objc_storeStrong(&v13->_data, data);
    v16 = [keyCopy copy];
    refinementKey = v13->_refinementKey;
    v13->_refinementKey = v16;
  }

  return v13;
}

@end