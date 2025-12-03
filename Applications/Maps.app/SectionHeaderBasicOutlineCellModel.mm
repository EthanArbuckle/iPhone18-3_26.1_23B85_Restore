@interface SectionHeaderBasicOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (SectionHeaderBasicOutlineCellModel)initWithTitle:(id)title;
- (void)_addAccessoryModels:(id)models;
@end

@implementation SectionHeaderBasicOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    title = [(SectionHeaderBasicOutlineCellModel *)v6 title];
    v8 = title;
    if (title == self->_title || [(NSString *)title isEqual:?])
    {
      accessoryModels = [(SectionHeaderBasicOutlineCellModel *)v6 accessoryModels];
      v10 = accessoryModels;
      if (accessoryModels == self->_accessoryModels)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(NSArray *)accessoryModels isEqual:?];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SectionHeaderBasicOutlineCellModel)initWithTitle:(id)title
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = SectionHeaderBasicOutlineCellModel;
  v5 = [(SectionHeaderBasicOutlineCellModel *)&v11 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = [[SectionHeaderOutlineCellAccessoryModel alloc] initWithAccessoryType:1 visibility:1 delegate:0];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [(SectionHeaderBasicOutlineCellModel *)v5 _addAccessoryModels:v9];
  }

  return v5;
}

- (void)_addAccessoryModels:(id)models
{
  modelsCopy = models;
  v7 = modelsCopy;
  if (self->_accessoryModels)
  {
    v5 = [modelsCopy arrayByAddingObjectsFromArray:?];
  }

  else
  {
    v5 = modelsCopy;
  }

  accessoryModels = self->_accessoryModels;
  self->_accessoryModels = v5;
}

@end