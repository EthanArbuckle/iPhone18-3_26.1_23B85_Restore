@interface CarFocusOrderSequence
+ (id)defaultSequence;
+ (id)sequenceWithItems:(id)items options:(unint64_t)options;
- (BOOL)flipForRHD;
- (NSArray)items;
@end

@implementation CarFocusOrderSequence

- (NSArray)items
{
  options = [(CarFocusOrderSequence *)self options];
  if (options)
  {
    v4 = options;
  }

  else
  {
    v4 = 3;
  }

  v5 = +[MapsExternalDevice sharedInstance];
  rightHandDrive = [v5 rightHandDrive];

  if (rightHandDrive)
  {
    if ((v4 & 2) == 0)
    {
      if ((v4 & 4) != 0)
      {
        reverseObjectEnumerator = [(NSArray *)self->_items reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];

        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 1) == 0)
  {
LABEL_9:
    allObjects = &__NSArray0__struct;
    goto LABEL_11;
  }

  allObjects = self->_items;
LABEL_11:

  return allObjects;
}

- (BOOL)flipForRHD
{
  if (([(CarFocusOrderSequence *)self options]& 4) == 0)
  {
    return 0;
  }

  v3 = +[MapsExternalDevice sharedInstance];
  rightHandDrive = [v3 rightHandDrive];

  return rightHandDrive;
}

+ (id)defaultSequence
{
  v2 = [CarFocusOrderItem itemWithRepresentativeItemType:3];
  v3 = [CarFocusOrderItem itemWithRepresentativeItemType:1, v2];
  v8[1] = v3;
  v4 = [CarFocusOrderItem itemWithRepresentativeItemType:0];
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6 = [CarFocusOrderSequence sequenceWithItems:v5 options:5];

  return v6;
}

+ (id)sequenceWithItems:(id)items options:(unint64_t)options
{
  itemsCopy = items;
  v6 = objc_alloc_init(CarFocusOrderSequence);
  [(CarFocusOrderSequence *)v6 setItems:itemsCopy];

  [(CarFocusOrderSequence *)v6 setOptions:options];

  return v6;
}

@end