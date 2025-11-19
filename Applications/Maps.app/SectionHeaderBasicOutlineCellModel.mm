@interface SectionHeaderBasicOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (SectionHeaderBasicOutlineCellModel)initWithTitle:(id)a3;
- (void)_addAccessoryModels:(id)a3;
@end

@implementation SectionHeaderBasicOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SectionHeaderBasicOutlineCellModel *)v6 title];
    v8 = v7;
    if (v7 == self->_title || [(NSString *)v7 isEqual:?])
    {
      v9 = [(SectionHeaderBasicOutlineCellModel *)v6 accessoryModels];
      v10 = v9;
      if (v9 == self->_accessoryModels)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(NSArray *)v9 isEqual:?];
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

- (SectionHeaderBasicOutlineCellModel)initWithTitle:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SectionHeaderBasicOutlineCellModel;
  v5 = [(SectionHeaderBasicOutlineCellModel *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = [[SectionHeaderOutlineCellAccessoryModel alloc] initWithAccessoryType:1 visibility:1 delegate:0];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [(SectionHeaderBasicOutlineCellModel *)v5 _addAccessoryModels:v9];
  }

  return v5;
}

- (void)_addAccessoryModels:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_accessoryModels)
  {
    v5 = [v4 arrayByAddingObjectsFromArray:?];
  }

  else
  {
    v5 = v4;
  }

  accessoryModels = self->_accessoryModels;
  self->_accessoryModels = v5;
}

@end