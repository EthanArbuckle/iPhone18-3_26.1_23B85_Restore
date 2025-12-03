@interface AllRefinementsViewModelOpenAt
- (AllRefinementsViewModelOpenAt)initWithDisplayName:(id)name timeStamp:(double)stamp isSelected:(BOOL)selected isNextDay:(BOOL)day data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AllRefinementsViewModelOpenAt

- (AllRefinementsViewModelOpenAt)initWithDisplayName:(id)name timeStamp:(double)stamp isSelected:(BOOL)selected isNextDay:(BOOL)day data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = AllRefinementsViewModelOpenAt;
  v15 = [(AllRefinementsViewModelOpenAt *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, name);
    v16->_isSelected = selected;
    v16->_timeStamp = stamp;
    v16->_isNextDay = day;
    objc_storeStrong(&v16->_data, data);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AllRefinementsViewModelOpenAt alloc];
  displayName = [(AllRefinementsViewModelOpenAt *)self displayName];
  [(AllRefinementsViewModelOpenAt *)self timeStamp];
  v7 = v6;
  isSelected = [(AllRefinementsViewModelOpenAt *)self isSelected];
  isNextDay = [(AllRefinementsViewModelOpenAt *)self isNextDay];
  data = [(AllRefinementsViewModelOpenAt *)self data];
  v11 = [(AllRefinementsViewModelOpenAt *)v4 initWithDisplayName:displayName timeStamp:isSelected isSelected:isNextDay isNextDay:data data:v7];

  return v11;
}

@end