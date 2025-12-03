@interface AVTCoreModel
- (AVTCoreModel)initWithGroups:(id)groups colors:(id)colors colorDefaultsProvider:(id)provider forPlatform:(unint64_t)platform;
- (id)description;
@end

@implementation AVTCoreModel

- (AVTCoreModel)initWithGroups:(id)groups colors:(id)colors colorDefaultsProvider:(id)provider forPlatform:(unint64_t)platform
{
  groupsCopy = groups;
  colorsCopy = colors;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = AVTCoreModel;
  v13 = [(AVTCoreModel *)&v21 init];
  if (v13)
  {
    v14 = [groupsCopy copy];
    groups = v13->_groups;
    v13->_groups = v14;

    v16 = [colorsCopy copy];
    colors = v13->_colors;
    v13->_colors = v16;

    v18 = [providerCopy copy];
    colorDefaultsProvider = v13->_colorDefaultsProvider;
    v13->_colorDefaultsProvider = v18;

    v13->_platform = platform;
  }

  return v13;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AVTCoreModel;
  v3 = [(AVTCoreModel *)&v11 description];
  v4 = [v3 mutableCopy];

  groups = [(AVTCoreModel *)self groups];
  avt_description = [groups avt_description];
  [v4 appendFormat:@" groups: %@\n", avt_description];

  colors = [(AVTCoreModel *)self colors];
  [v4 appendFormat:@" colors: %p\n", colors];

  colorDefaultsProvider = [(AVTCoreModel *)self colorDefaultsProvider];
  [v4 appendFormat:@" colorDefaultsProvider: %p\n", colorDefaultsProvider];

  [v4 appendFormat:@" platform: %lu\n", -[AVTCoreModel platform](self, "platform")];
  v9 = [v4 copy];

  return v9;
}

@end