@interface CLTripSegmentRoadData
- (BOOL)isEqualStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endlongitude:(double)endlongitude;
- (CLTripSegmentRoadData)initWithCoder:(id)coder;
- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)d clRoadID:(unint64_t)iD roadClass:(int)class formOfWay:(int)way coordinates:(id)coordinates;
- (double)getLength;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentRoadData

- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)d clRoadID:(unint64_t)iD roadClass:(int)class formOfWay:(int)way coordinates:(id)coordinates
{
  v15.receiver = self;
  v15.super_class = CLTripSegmentRoadData;
  v12 = [(CLTripSegmentRoadData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_roadID = d;
    v12->_clRoadID = iD;
    v12->_roadClass = class;
    v12->_formOfWay = way;
    v12->_coordinates = coordinates;
    *&v13->_connectingCLRoadID = 0u;
    *&v13->_connectingRoadEndCoordinate = 0u;
    v13->_sequenceNumber = 0.0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:", -[CLTripSegmentRoadData roadID](self, "roadID"), -[CLTripSegmentRoadData clRoadID](self, "clRoadID"), -[CLTripSegmentRoadData roadClass](self, "roadClass"), -[CLTripSegmentRoadData formOfWay](self, "formOfWay"), -[CLTripSegmentRoadData coordinates](self, "coordinates")}];
  [v4 setConnectingCLRoadID:{-[CLTripSegmentRoadData clRoadID](self, "clRoadID")}];
  [v4 setConnectingRoadStartCoordinate:-[CLTripSegmentRoadData connectingRoadStartCoordinate](self endCoordinate:{"connectingRoadStartCoordinate"), -[CLTripSegmentRoadData connectingRoadEndCoordinate](self, "connectingRoadEndCoordinate")}];
  [(CLTripSegmentRoadData *)self familiarityIndex];
  [v4 setFamiliarityIndex:?];
  [(CLTripSegmentRoadData *)self sequenceNumber];
  [v4 setSequenceNumber:?];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentRoadData;
  [(CLTripSegmentRoadData *)&v3 dealloc];
}

- (id)description
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  coordinates = self->_coordinates;
  v4 = [(NSArray *)coordinates countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v7 = &stru_1F0E6F140;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(coordinates);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = MEMORY[0x1E696AEC0];
        [v9 latitude];
        v12 = v11;
        [v9 longitude];
        v7 = [v10 stringWithFormat:@"%@, %.7lf, %.7lf", v7, v12, v13];
      }

      v5 = [(NSArray *)coordinates countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F0E6F140;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  roadID = self->_roadID;
  clRoadID = self->_clRoadID;
  connectingCLRoadID = self->_connectingCLRoadID;
  roadClass = self->_roadClass;
  formOfWay = self->_formOfWay;
  [(CLLocationCoordinate *)self->_connectingRoadStartCoordinate latitude];
  v23 = v22;
  [(CLLocationCoordinate *)self->_connectingRoadStartCoordinate longitude];
  v25 = v24;
  [(CLLocationCoordinate *)self->_connectingRoadEndCoordinate latitude];
  v27 = v26;
  [(CLLocationCoordinate *)self->_connectingRoadEndCoordinate longitude];
  result = [v14 stringWithFormat:@"%@, roadID, %llu, clRoadID, %llu, roadClass, %d, formOfWay, %d, connectingCLRoadID, %llu, connectingStartCoord, %.7lf, %.7lf, connectingEndCoord, %.7lf, %.7lf, familiarityIndex, %.5lf, sequenceNumber, %.5lf, coordinates%@", v16, roadID, clRoadID, roadClass, formOfWay, connectingCLRoadID, v23, v25, v27, v28, *&self->_familiarityIndex, *&self->_sequenceNumber, v7];
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:-[CLTripSegmentRoadData roadID](self forKey:{"roadID"), @"roadID"}];
  [coder encodeInt64:-[CLTripSegmentRoadData clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  [coder encodeInt:-[CLTripSegmentRoadData roadClass](self forKey:{"roadClass"), @"roadClass"}];
  [coder encodeInt:-[CLTripSegmentRoadData formOfWay](self forKey:{"formOfWay"), @"formOfWay"}];
  [coder encodeObject:-[CLTripSegmentRoadData coordinates](self forKey:{"coordinates"), @"coordinates"}];
  [coder encodeInt64:-[CLTripSegmentRoadData connectingCLRoadID](self forKey:{"connectingCLRoadID"), @"connectingCLRoadID"}];
  [coder encodeObject:-[CLTripSegmentRoadData connectingRoadStartCoordinate](self forKey:{"connectingRoadStartCoordinate"), @"connectingRoadStartCoordinate"}];
  [coder encodeObject:-[CLTripSegmentRoadData connectingRoadEndCoordinate](self forKey:{"connectingRoadEndCoordinate"), @"connectingRoadEndCoordinate"}];
  [(CLTripSegmentRoadData *)self familiarityIndex];
  [coder encodeDouble:@"familiarityIndex" forKey:?];
  [(CLTripSegmentRoadData *)self sequenceNumber];

  [coder encodeDouble:@"sequenceNumber" forKey:?];
}

- (CLTripSegmentRoadData)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentRoadData alloc];
  v5 = [coder decodeInt64ForKey:@"roadID"];
  v6 = [coder decodeInt64ForKey:@"clRoadID"];
  v7 = [coder decodeIntForKey:@"roadClass"];
  v8 = [coder decodeIntForKey:@"formOfWay"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = -[CLTripSegmentRoadData initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:](v4, "initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:", v5, v6, v7, v8, [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"coordinates"}]);
  -[CLTripSegmentRoadData setConnectingCLRoadID:](v11, "setConnectingCLRoadID:", [coder decodeInt64ForKey:@"connectingCLRoadID"]);
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"connectingRoadStartCoordinate"];
  -[CLTripSegmentRoadData setConnectingRoadStartCoordinate:endCoordinate:](v11, "setConnectingRoadStartCoordinate:endCoordinate:", v12, [coder decodeObjectOfClass:objc_opt_class() forKey:@"connectingRoadEndCoordinate"]);
  [coder decodeDoubleForKey:@"familiarityIndex"];
  [(CLTripSegmentRoadData *)v11 setFamiliarityIndex:?];
  [coder decodeDoubleForKey:@"sequenceNumber"];
  [(CLTripSegmentRoadData *)v11 setSequenceNumber:?];
  return v11;
}

- (double)getLength
{
  v3 = 0.0;
  if ([(NSArray *)self->_coordinates count]!= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_coordinates objectAtIndexedSubscript:v4++];
      [v5 distanceFrom:{-[NSArray objectAtIndexedSubscript:](self->_coordinates, "objectAtIndexedSubscript:", v4)}];
      v3 = v3 + v6;
    }

    while ([(NSArray *)self->_coordinates count]- 1 > v4);
  }

  return v3;
}

- (BOOL)isEqualStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endlongitude:(double)endlongitude
{
  coordinates = self->_coordinates;
  if (coordinates)
  {
    coordinates = [(NSArray *)coordinates count];
    if (coordinates)
    {
      firstObject = [(NSArray *)self->_coordinates firstObject];
      lastObject = [(NSArray *)self->_coordinates lastObject];
      [firstObject latitude];
      if (vabdd_f64(latitude, v14) >= 0.0000001 || ([firstObject longitude], vabdd_f64(longitude, v15) >= 0.0000001) || (objc_msgSend(lastObject, "latitude"), vabdd_f64(endLatitude, v16) >= 0.0000001))
      {
        LOBYTE(coordinates) = 0;
      }

      else
      {
        [lastObject longitude];
        LOBYTE(coordinates) = vabdd_f64(endlongitude, v17) < 0.0000001;
      }
    }
  }

  return coordinates;
}

@end