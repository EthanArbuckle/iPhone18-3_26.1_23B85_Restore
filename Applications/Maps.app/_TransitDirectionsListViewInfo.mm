@interface _TransitDirectionsListViewInfo
+ (_TransitDirectionsListViewInfo)infoWithStepView:(id)view atIndexPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TransitDirectionsListViewInfo

- (id)description
{
  v13.receiver = self;
  v13.super_class = _TransitDirectionsListViewInfo;
  v3 = [(_TransitDirectionsListViewInfo *)&v13 description];
  indexPath = [(_TransitDirectionsListViewInfo *)self indexPath];
  section = [indexPath section];
  indexPath2 = [(_TransitDirectionsListViewInfo *)self indexPath];
  item = [indexPath2 item];
  stepView = [(_TransitDirectionsListViewInfo *)self stepView];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [NSString stringWithFormat:@"%@ (%ld-%ld: %@)", v3, section, item, v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    indexPath = [(_TransitDirectionsListViewInfo *)self indexPath];
    indexPath2 = [v7 indexPath];
    if (indexPath | indexPath2)
    {
      v6 = [indexPath isEqual:indexPath2];
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
  indexPath = [(_TransitDirectionsListViewInfo *)self indexPath];
  v3 = [indexPath hash];

  return v3;
}

+ (_TransitDirectionsListViewInfo)infoWithStepView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = objc_alloc_init(self);
  v9 = v8[1];
  v8[1] = viewCopy;
  v10 = viewCopy;

  v11 = v8[2];
  v8[2] = pathCopy;

  return v8;
}

@end