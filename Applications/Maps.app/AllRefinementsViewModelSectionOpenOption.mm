@interface AllRefinementsViewModelSectionOpenOption
- (AllRefinementsViewModelSectionOpenOption)initWithOpenNow:(id)now openAt:(id)at displayName:(id)name;
- (BOOL)compare:(id)compare;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)numberOfItems;
- (void)resetToDefault;
@end

@implementation AllRefinementsViewModelSectionOpenOption

- (BOOL)compare:(id)compare
{
  compareCopy = compare;
  openNow = [compareCopy openNow];
  isSelected = [openNow isSelected];
  if (isSelected == [(AllRefinementsViewModelToggle *)self->_openNow isSelected])
  {
    openAt = [compareCopy openAt];
    isSelected2 = [openAt isSelected];
    if (isSelected2 == [(AllRefinementsViewModelOpenAt *)self->_openAt isSelected])
    {
      openAt2 = [compareCopy openAt];
      [openAt2 timeStamp];
      v12 = v11;
      [(AllRefinementsViewModelOpenAt *)self->_openAt timeStamp];
      v7 = v12 == v13;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)resetToDefault
{
  [(AllRefinementsViewModelToggle *)self->_openNow setIsSelected:0];
  openAt = self->_openAt;

  [(AllRefinementsViewModelOpenAt *)openAt updateTimeStamp:0 isSelected:0.0];
}

- (unint64_t)numberOfItems
{
  openAt = self->_openAt;
  v3 = openAt == 0;
  v4 = openAt != 0;
  v5 = 1;
  if (!v3)
  {
    v5 = 2;
  }

  if (self->_openNow)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AllRefinementsViewModelSectionOpenOption alloc];
  v5 = [(AllRefinementsViewModelToggle *)self->_openNow copy];
  v6 = [(AllRefinementsViewModelOpenAt *)self->_openAt copy];
  v7 = [(NSString *)self->_displayName copy];
  v8 = [(AllRefinementsViewModelSectionOpenOption *)v4 initWithOpenNow:v5 openAt:v6 displayName:v7];

  return v8;
}

- (AllRefinementsViewModelSectionOpenOption)initWithOpenNow:(id)now openAt:(id)at displayName:(id)name
{
  nowCopy = now;
  atCopy = at;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = AllRefinementsViewModelSectionOpenOption;
  v12 = [(AllRefinementsViewModelSectionOpenOption *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_openNow, now);
    objc_storeStrong(&v13->_openAt, at);
    v14 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    v13->_type = 2;
    v16 = objc_alloc_init(NSUUID);
    identifier = v13->_identifier;
    v13->_identifier = v16;
  }

  return v13;
}

@end