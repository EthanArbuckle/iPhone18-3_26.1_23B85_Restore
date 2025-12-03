@interface AVTCoreModelGroup
- (AVTCoreModelGroup)initWithName:(id)name symbolNames:(id)names previewMode:(id)mode categories:(id)categories;
- (id)description;
@end

@implementation AVTCoreModelGroup

- (AVTCoreModelGroup)initWithName:(id)name symbolNames:(id)names previewMode:(id)mode categories:(id)categories
{
  nameCopy = name;
  namesCopy = names;
  modeCopy = mode;
  categoriesCopy = categories;
  v20.receiver = self;
  v20.super_class = AVTCoreModelGroup;
  v14 = [(AVTCoreModelGroup *)&v20 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_symbolNames, names);
    objc_storeStrong(&v14->_previewMode, mode);
    v17 = [categoriesCopy copy];
    categories = v14->_categories;
    v14->_categories = v17;
  }

  return v14;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = AVTCoreModelGroup;
  v3 = [(AVTCoreModelGroup *)&v13 description];
  v4 = [v3 mutableCopy];

  name = [(AVTCoreModelGroup *)self name];
  [v4 appendFormat:@" name: %@\n", name];

  symbolNames = [(AVTCoreModelGroup *)self symbolNames];
  allValues = [symbolNames allValues];
  [v4 appendFormat:@" symbols:%@\n", allValues];

  previewMode = [(AVTCoreModelGroup *)self previewMode];
  [v4 appendFormat:@" previewMode:%@\n", previewMode];

  categories = [(AVTCoreModelGroup *)self categories];
  avt_description = [categories avt_description];
  [v4 appendFormat:@" categories: %@\n", avt_description];

  v11 = [v4 copy];

  return v11;
}

@end