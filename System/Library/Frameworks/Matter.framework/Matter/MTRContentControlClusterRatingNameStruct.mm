@interface MTRContentControlClusterRatingNameStruct
- (MTRContentControlClusterRatingNameStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentControlClusterRatingNameStruct

- (MTRContentControlClusterRatingNameStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRContentControlClusterRatingNameStruct;
  v2 = [(MTRContentControlClusterRatingNameStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    ratingName = v2->_ratingName;
    v2->_ratingName = &stru_284BD0DD8;

    ratingNameDesc = v3->_ratingNameDesc;
    v3->_ratingNameDesc = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentControlClusterRatingNameStruct);
  ratingName = [(MTRContentControlClusterRatingNameStruct *)self ratingName];
  [(MTRContentControlClusterRatingNameStruct *)v4 setRatingName:ratingName];

  ratingNameDesc = [(MTRContentControlClusterRatingNameStruct *)self ratingNameDesc];
  [(MTRContentControlClusterRatingNameStruct *)v4 setRatingNameDesc:ratingNameDesc];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ratingName:%@ ratingNameDesc:%@; >", v5, self->_ratingName, self->_ratingNameDesc];;

  return v6;
}

@end