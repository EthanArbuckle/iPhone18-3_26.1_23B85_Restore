@interface _TransitDirectionsListViewInfo
+ (_TransitDirectionsListViewInfo)infoWithStepView:(id)a3 atIndexPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TransitDirectionsListViewInfo

- (id)description
{
  v13.receiver = self;
  v13.super_class = _TransitDirectionsListViewInfo;
  v3 = [(_TransitDirectionsListViewInfo *)&v13 description];
  v4 = [(_TransitDirectionsListViewInfo *)self indexPath];
  v5 = [v4 section];
  v6 = [(_TransitDirectionsListViewInfo *)self indexPath];
  v7 = [v6 item];
  v8 = [(_TransitDirectionsListViewInfo *)self stepView];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [NSString stringWithFormat:@"%@ (%ld-%ld: %@)", v3, v5, v7, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(_TransitDirectionsListViewInfo *)self indexPath];
    v9 = [v7 indexPath];
    if (v8 | v9)
    {
      v6 = [v8 isEqual:v9];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(_TransitDirectionsListViewInfo *)self indexPath];
  v3 = [v2 hash];

  return v3;
}

+ (_TransitDirectionsListViewInfo)infoWithStepView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = v8[1];
  v8[1] = v6;
  v10 = v6;

  v11 = v8[2];
  v8[2] = v7;

  return v8;
}

@end