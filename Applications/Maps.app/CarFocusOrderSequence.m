@interface CarFocusOrderSequence
+ (id)defaultSequence;
+ (id)sequenceWithItems:(id)a3 options:(unint64_t)a4;
- (BOOL)flipForRHD;
- (NSArray)items;
@end

@implementation CarFocusOrderSequence

- (NSArray)items
{
  v3 = [(CarFocusOrderSequence *)self options];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  v5 = +[MapsExternalDevice sharedInstance];
  v6 = [v5 rightHandDrive];

  if (v6)
  {
    if ((v4 & 2) == 0)
    {
      if ((v4 & 4) != 0)
      {
        v7 = [(NSArray *)self->_items reverseObjectEnumerator];
        v8 = [v7 allObjects];

        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 1) == 0)
  {
LABEL_9:
    v8 = &__NSArray0__struct;
    goto LABEL_11;
  }

  v8 = self->_items;
LABEL_11:

  return v8;
}

- (BOOL)flipForRHD
{
  if (([(CarFocusOrderSequence *)self options]& 4) == 0)
  {
    return 0;
  }

  v3 = +[MapsExternalDevice sharedInstance];
  v4 = [v3 rightHandDrive];

  return v4;
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

+ (id)sequenceWithItems:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CarFocusOrderSequence);
  [(CarFocusOrderSequence *)v6 setItems:v5];

  [(CarFocusOrderSequence *)v6 setOptions:a4];

  return v6;
}

@end