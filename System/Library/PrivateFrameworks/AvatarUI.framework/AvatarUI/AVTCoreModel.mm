@interface AVTCoreModel
- (AVTCoreModel)initWithGroups:(id)a3 colors:(id)a4 colorDefaultsProvider:(id)a5 forPlatform:(unint64_t)a6;
- (id)description;
@end

@implementation AVTCoreModel

- (AVTCoreModel)initWithGroups:(id)a3 colors:(id)a4 colorDefaultsProvider:(id)a5 forPlatform:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = AVTCoreModel;
  v13 = [(AVTCoreModel *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    groups = v13->_groups;
    v13->_groups = v14;

    v16 = [v11 copy];
    colors = v13->_colors;
    v13->_colors = v16;

    v18 = [v12 copy];
    colorDefaultsProvider = v13->_colorDefaultsProvider;
    v13->_colorDefaultsProvider = v18;

    v13->_platform = a6;
  }

  return v13;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AVTCoreModel;
  v3 = [(AVTCoreModel *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTCoreModel *)self groups];
  v6 = [v5 avt_description];
  [v4 appendFormat:@" groups: %@\n", v6];

  v7 = [(AVTCoreModel *)self colors];
  [v4 appendFormat:@" colors: %p\n", v7];

  v8 = [(AVTCoreModel *)self colorDefaultsProvider];
  [v4 appendFormat:@" colorDefaultsProvider: %p\n", v8];

  [v4 appendFormat:@" platform: %lu\n", -[AVTCoreModel platform](self, "platform")];
  v9 = [v4 copy];

  return v9;
}

@end