@interface MTRChannelClusterProgramCategoryStruct
- (MTRChannelClusterProgramCategoryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterProgramCategoryStruct

- (MTRChannelClusterProgramCategoryStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChannelClusterProgramCategoryStruct;
  v2 = [(MTRChannelClusterProgramCategoryStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    category = v2->_category;
    v2->_category = &stru_284BD0DD8;

    subCategory = v3->_subCategory;
    v3->_subCategory = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterProgramCategoryStruct);
  category = [(MTRChannelClusterProgramCategoryStruct *)self category];
  [(MTRChannelClusterProgramCategoryStruct *)v4 setCategory:category];

  subCategory = [(MTRChannelClusterProgramCategoryStruct *)self subCategory];
  [(MTRChannelClusterProgramCategoryStruct *)v4 setSubCategory:subCategory];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: category:%@ subCategory:%@; >", v5, self->_category, self->_subCategory];;

  return v6;
}

@end