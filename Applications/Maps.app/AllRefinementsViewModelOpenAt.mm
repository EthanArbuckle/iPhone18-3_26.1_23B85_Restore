@interface AllRefinementsViewModelOpenAt
- (AllRefinementsViewModelOpenAt)initWithDisplayName:(id)a3 timeStamp:(double)a4 isSelected:(BOOL)a5 isNextDay:(BOOL)a6 data:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AllRefinementsViewModelOpenAt

- (AllRefinementsViewModelOpenAt)initWithDisplayName:(id)a3 timeStamp:(double)a4 isSelected:(BOOL)a5 isNextDay:(BOOL)a6 data:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = AllRefinementsViewModelOpenAt;
  v15 = [(AllRefinementsViewModelOpenAt *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, a3);
    v16->_isSelected = a5;
    v16->_timeStamp = a4;
    v16->_isNextDay = a6;
    objc_storeStrong(&v16->_data, a7);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AllRefinementsViewModelOpenAt alloc];
  v5 = [(AllRefinementsViewModelOpenAt *)self displayName];
  [(AllRefinementsViewModelOpenAt *)self timeStamp];
  v7 = v6;
  v8 = [(AllRefinementsViewModelOpenAt *)self isSelected];
  v9 = [(AllRefinementsViewModelOpenAt *)self isNextDay];
  v10 = [(AllRefinementsViewModelOpenAt *)self data];
  v11 = [(AllRefinementsViewModelOpenAt *)v4 initWithDisplayName:v5 timeStamp:v8 isSelected:v9 isNextDay:v10 data:v7];

  return v11;
}

@end