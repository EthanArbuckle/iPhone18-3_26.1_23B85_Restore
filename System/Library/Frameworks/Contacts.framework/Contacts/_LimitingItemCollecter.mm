@interface _LimitingItemCollecter
- (NSArray)itemsToPersist;
- (_LimitingItemCollecter)init;
@end

@implementation _LimitingItemCollecter

- (_LimitingItemCollecter)init
{
  v9.receiver = self;
  v9.super_class = _LimitingItemCollecter;
  v2 = [(_LimitingItemCollecter *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    posters = v2->_posters;
    v2->_posters = v3;

    v5 = objc_opt_new();
    images = v2->_images;
    v2->_images = v5;

    v7 = v2;
  }

  return v2;
}

- (NSArray)itemsToPersist
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableArray *)self->_posters _cn_takeLast:8];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableArray *)self->_images _cn_takeLast:8];
  [v3 addObjectsFromArray:v5];

  return v3;
}

@end