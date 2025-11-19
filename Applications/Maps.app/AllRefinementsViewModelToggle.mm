@interface AllRefinementsViewModelToggle
- (AllRefinementsViewModelToggle)initWithDisplayName:(id)a3 isSelected:(BOOL)a4 data:(id)a5 refinementKey:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AllRefinementsViewModelToggle

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AllRefinementsViewModelToggle alloc];
  v5 = [(AllRefinementsViewModelToggle *)self displayName];
  v6 = [(AllRefinementsViewModelToggle *)self isSelected];
  v7 = [(AllRefinementsViewModelToggle *)self data];
  v8 = [(AllRefinementsViewModelToggle *)self refinementKey];
  v9 = [(AllRefinementsViewModelToggle *)v4 initWithDisplayName:v5 isSelected:v6 data:v7 refinementKey:v8];

  return v9;
}

- (AllRefinementsViewModelToggle)initWithDisplayName:(id)a3 isSelected:(BOOL)a4 data:(id)a5 refinementKey:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = AllRefinementsViewModelToggle;
  v13 = [(AllRefinementsViewModelToggle *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    v13->_isSelected = a4;
    objc_storeStrong(&v13->_data, a5);
    v16 = [v12 copy];
    refinementKey = v13->_refinementKey;
    v13->_refinementKey = v16;
  }

  return v13;
}

@end