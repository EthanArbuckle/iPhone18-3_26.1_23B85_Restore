@interface AVTCoreModelGroup
- (AVTCoreModelGroup)initWithName:(id)a3 symbolNames:(id)a4 previewMode:(id)a5 categories:(id)a6;
- (id)description;
@end

@implementation AVTCoreModelGroup

- (AVTCoreModelGroup)initWithName:(id)a3 symbolNames:(id)a4 previewMode:(id)a5 categories:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = AVTCoreModelGroup;
  v14 = [(AVTCoreModelGroup *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_symbolNames, a4);
    objc_storeStrong(&v14->_previewMode, a5);
    v17 = [v13 copy];
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

  v5 = [(AVTCoreModelGroup *)self name];
  [v4 appendFormat:@" name: %@\n", v5];

  v6 = [(AVTCoreModelGroup *)self symbolNames];
  v7 = [v6 allValues];
  [v4 appendFormat:@" symbols:%@\n", v7];

  v8 = [(AVTCoreModelGroup *)self previewMode];
  [v4 appendFormat:@" previewMode:%@\n", v8];

  v9 = [(AVTCoreModelGroup *)self categories];
  v10 = [v9 avt_description];
  [v4 appendFormat:@" categories: %@\n", v10];

  v11 = [v4 copy];

  return v11;
}

@end