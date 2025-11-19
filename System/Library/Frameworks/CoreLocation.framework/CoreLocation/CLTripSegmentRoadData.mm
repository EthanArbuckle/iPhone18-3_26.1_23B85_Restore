@interface CLTripSegmentRoadData
- (BOOL)isEqualStartLatitude:(double)a3 startLongitude:(double)a4 endLatitude:(double)a5 endlongitude:(double)a6;
- (CLTripSegmentRoadData)initWithCoder:(id)a3;
- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)a3 clRoadID:(unint64_t)a4 roadClass:(int)a5 formOfWay:(int)a6 coordinates:(id)a7;
- (double)getLength;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLTripSegmentRoadData

- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)a3 clRoadID:(unint64_t)a4 roadClass:(int)a5 formOfWay:(int)a6 coordinates:(id)a7
{
  v15.receiver = self;
  v15.super_class = CLTripSegmentRoadData;
  v12 = [(CLTripSegmentRoadData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_roadID = a3;
    v12->_clRoadID = a4;
    v12->_roadClass = a5;
    v12->_formOfWay = a6;
    v12->_coordinates = a7;
    *&v13->_connectingCLRoadID = 0u;
    *&v13->_connectingRoadEndCoordinate = 0u;
    v13->_sequenceNumber = 0.0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:", -[CLTripSegmentRoadData roadID](self, "roadID"), -[CLTripSegmentRoadData clRoadID](self, "clRoadID"), -[CLTripSegmentRoadData roadClass](self, "roadClass"), -[CLTripSegmentRoadData formOfWay](self, "formOfWay"), -[CLTripSegmentRoadData coordinates](self, "coordinates")}];
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:-[CLTripSegmentRoadData roadID](self forKey:{"roadID"), @"roadID"}];
  [a3 encodeInt64:-[CLTripSegmentRoadData clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  [a3 encodeInt:-[CLTripSegmentRoadData roadClass](self forKey:{"roadClass"), @"roadClass"}];
  [a3 encodeInt:-[CLTripSegmentRoadData formOfWay](self forKey:{"formOfWay"), @"formOfWay"}];
  [a3 encodeObject:-[CLTripSegmentRoadData coordinates](self forKey:{"coordinates"), @"coordinates"}];
  [a3 encodeInt64:-[CLTripSegmentRoadData connectingCLRoadID](self forKey:{"connectingCLRoadID"), @"connectingCLRoadID"}];
  [a3 encodeObject:-[CLTripSegmentRoadData connectingRoadStartCoordinate](self forKey:{"connectingRoadStartCoordinate"), @"connectingRoadStartCoordinate"}];
  [a3 encodeObject:-[CLTripSegmentRoadData connectingRoadEndCoordinate](self forKey:{"connectingRoadEndCoordinate"), @"connectingRoadEndCoordinate"}];
  [(CLTripSegmentRoadData *)self familiarityIndex];
  [a3 encodeDouble:@"familiarityIndex" forKey:?];
  [(CLTripSegmentRoadData *)self sequenceNumber];

  [a3 encodeDouble:@"sequenceNumber" forKey:?];
}

- (CLTripSegmentRoadData)initWithCoder:(id)a3
{
  v4 = [CLTripSegmentRoadData alloc];
  v5 = [a3 decodeInt64ForKey:@"roadID"];
  v6 = [a3 decodeInt64ForKey:@"clRoadID"];
  v7 = [a3 decodeIntForKey:@"roadClass"];
  v8 = [a3 decodeIntForKey:@"formOfWay"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = -[CLTripSegmentRoadData initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:](v4, "initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:", v5, v6, v7, v8, [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"coordinates"}]);
  -[CLTripSegmentRoadData setConnectingCLRoadID:](v11, "setConnectingCLRoadID:", [a3 decodeInt64ForKey:@"connectingCLRoadID"]);
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"connectingRoadStartCoordinate"];
  -[CLTripSegmentRoadData setConnectingRoadStartCoordinate:endCoordinate:](v11, "setConnectingRoadStartCoordinate:endCoordinate:", v12, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"connectingRoadEndCoordinate"]);
  [a3 decodeDoubleForKey:@"familiarityIndex"];
  [(CLTripSegmentRoadData *)v11 setFamiliarityIndex:?];
  [a3 decodeDoubleForKey:@"sequenceNumber"];
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

- (BOOL)isEqualStartLatitude:(double)a3 startLongitude:(double)a4 endLatitude:(double)a5 endlongitude:(double)a6
{
  coordinates = self->_coordinates;
  if (coordinates)
  {
    coordinates = [(NSArray *)coordinates count];
    if (coordinates)
    {
      v12 = [(NSArray *)self->_coordinates firstObject];
      v13 = [(NSArray *)self->_coordinates lastObject];
      [v12 latitude];
      if (vabdd_f64(a3, v14) >= 0.0000001 || ([v12 longitude], vabdd_f64(a4, v15) >= 0.0000001) || (objc_msgSend(v13, "latitude"), vabdd_f64(a5, v16) >= 0.0000001))
      {
        LOBYTE(coordinates) = 0;
      }

      else
      {
        [v13 longitude];
        LOBYTE(coordinates) = vabdd_f64(a6, v17) < 0.0000001;
      }
    }
  }

  return coordinates;
}

@end