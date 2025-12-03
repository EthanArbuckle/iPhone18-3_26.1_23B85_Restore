@interface RAPCorrectableEntryPoints
- (NSArray)correctedPoints;
- (NSArray)workingPoints;
- (RAPCorrectableEntryPoints)initWithGEORoadAccessPoints:(id)points;
- (id)_entryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createEntryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type;
- (id)editedPointWithCorrectedPoint:(id)point;
- (void)modifyEntryPoint:(id)point withCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type;
- (void)removeEntryPoint:(id)point;
@end

@implementation RAPCorrectableEntryPoints

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [NSMutableArray arrayWithArray:self->_originalPoints];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [NSMutableArray arrayWithArray:self->_deletedPoints];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [NSMutableArray arrayWithArray:self->_addedPoints];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [NSMutableArray arrayWithArray:self->_correctedPoints];
  v12 = v4[4];
  v4[4] = v11;

  return v4;
}

- (NSArray)workingPoints
{
  v3 = [&__NSArray0__struct arrayByAddingObjectsFromArray:self->_originalPoints];
  v4 = [v3 arrayByAddingObjectsFromArray:self->_addedPoints];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_correctedPoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v9);
        v12 = [RAPEntryPoint alloc];
        corrected = [v11 corrected];
        v14 = [(RAPEntryPoint *)v12 initWithAccessPoint:corrected];
        v4 = [v10 arrayByAddingObject:v14];

        v9 = v9 + 1;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)correctedPoints
{
  v2 = [(NSMutableArray *)self->_correctedPoints copy];

  return v2;
}

- (id)editedPointWithCorrectedPoint:(id)point
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E03A60;
  v9[3] = &unk_101655710;
  pointCopy = point;
  v4 = pointCopy;
  v5 = [NSPredicate predicateWithBlock:v9];
  v6 = [(NSMutableArray *)self->_correctedPoints filteredArrayUsingPredicate:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)removeEntryPoint:(id)point
{
  pointCopy = point;
  if ([(NSMutableArray *)self->_originalPoints containsObject:?])
  {
    [(NSMutableArray *)self->_deletedPoints addObject:pointCopy];
  }

  [(NSMutableArray *)self->_originalPoints removeObject:pointCopy];
  [(NSMutableArray *)self->_addedPoints removeObject:pointCopy];
  accessPoint = [pointCopy accessPoint];
  v5 = [(RAPCorrectableEntryPoints *)self editedPointWithCorrectedPoint:accessPoint];

  if (v5)
  {
    [(NSMutableArray *)self->_correctedPoints removeObject:v5];
  }
}

- (id)createEntryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type
{
  v5 = [(RAPCorrectableEntryPoints *)self _entryPointWithCoordinates:type entryPointType:coordinates.latitude, coordinates.longitude];
  [(NSMutableArray *)self->_addedPoints addObject:v5];

  return v5;
}

- (id)_entryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  v7 = objc_alloc_init(GEOLatLng);
  [v7 setLat:latitude];
  [v7 setLng:longitude];
  v8 = objc_alloc_init(GEORoadAccessPoint);
  [v8 setLocation:v7];
  v9 = [[RAPEntryPoint alloc] initWithAccessPoint:v8 type:type];

  return v9;
}

- (void)modifyEntryPoint:(id)point withCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  pointCopy = point;
  longitude = [(RAPCorrectableEntryPoints *)self _entryPointWithCoordinates:type entryPointType:latitude, longitude];
  if ([(NSMutableArray *)self->_originalPoints containsObject:pointCopy])
  {
    [(NSMutableArray *)self->_originalPoints removeObject:pointCopy];
    v10 = objc_alloc_init(GEORPEditedAccessPoint);
    accessPoint = [pointCopy accessPoint];
    [v10 setOriginal:accessPoint];

    accessPoint2 = [longitude accessPoint];
    [v10 setCorrected:accessPoint2];

    [(NSMutableArray *)self->_correctedPoints addObject:v10];
  }

  else if ([(NSMutableArray *)self->_addedPoints containsObject:pointCopy])
  {
    [(NSMutableArray *)self->_addedPoints removeObject:pointCopy];
    [(NSMutableArray *)self->_addedPoints addObject:longitude];
  }

  else
  {
    accessPoint3 = [pointCopy accessPoint];
    v14 = [(RAPCorrectableEntryPoints *)self editedPointWithCorrectedPoint:accessPoint3];

    accessPoint4 = [longitude accessPoint];
    [v14 setCorrected:accessPoint4];
  }
}

- (RAPCorrectableEntryPoints)initWithGEORoadAccessPoints:(id)points
{
  pointsCopy = points;
  v44.receiver = self;
  v44.super_class = RAPCorrectableEntryPoints;
  v5 = [(RAPCorrectableEntryPoints *)&v44 init];
  if (v5)
  {
    v38 = [pointsCopy count];
    v33 = pointsCopy;
    v6 = sub_100021DB0(pointsCopy, &stru_1016556E8);
    v7 = [NSPredicate predicateWithFormat:@"isDestinationEntryPoint == YES"];
    v8 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 0];
    v9 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 1];
    v10 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 2];
    v11 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 4];
    v12 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 3];
    v13 = [NSPredicate predicateWithFormat:@"entryPointType == %d", 5];
    v39 = v8;
    v46[0] = v8;
    v46[1] = v9;
    v36 = v10;
    v37 = v9;
    v46[2] = v10;
    v46[3] = v12;
    v34 = v12;
    v35 = v11;
    v14 = v13;
    v46[4] = v11;
    v46[5] = v13;
    v15 = [NSArray arrayWithObjects:v46 count:6];
    v16 = +[NSMutableArray array];
    originalPoints = v5->_originalPoints;
    v5->_originalPoints = v16;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        v22 = 0;
        do
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [v6 filteredArrayUsingPredicate:*(*(&v40 + 1) + 8 * v22)];
          v24 = [v23 filteredArrayUsingPredicate:v7];
          if ([v24 count])
          {
            v25 = v24;
          }

          else
          {
            v25 = v23;
          }

          [(NSMutableArray *)v5->_originalPoints addObjectsFromArray:v25];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v20);
    }

    v26 = [NSMutableArray arrayWithCapacity:v38];
    addedPoints = v5->_addedPoints;
    v5->_addedPoints = v26;

    v28 = [NSMutableArray arrayWithCapacity:v38];
    correctedPoints = v5->_correctedPoints;
    v5->_correctedPoints = v28;

    v30 = [NSMutableArray arrayWithCapacity:v38];
    deletedPoints = v5->_deletedPoints;
    v5->_deletedPoints = v30;

    pointsCopy = v33;
  }

  return v5;
}

@end