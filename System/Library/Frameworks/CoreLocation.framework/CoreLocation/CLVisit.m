@interface CLVisit
- (CLLocationCoordinate2D)coordinate;
- (CLVisit)initWithCoder:(id)a3;
- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)a3 horizontalAccuracy:(double)a4 arrivalDate:(id)a5 departureDate:(id)a6 detectionDate:(id)a7 placeInference:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLVisit

- (CLVisit)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 decodeDoubleForKey:@"kCLVisitCodingKeyLatitude"];
  [a3 decodeDoubleForKey:@"kCLVisitCodingKeyLongitude"];
  [a3 decodeDoubleForKey:@"kCLVisitCodingKeyHorizontalAccuracy"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyArrivalDate"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyDepartureDate"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyDetectionDate"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyPlaceInference"];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_);
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(CLVisit *)self coordinate];
  [a3 encodeDouble:@"kCLVisitCodingKeyLatitude" forKey:?];
  [(CLVisit *)self coordinate];
  [a3 encodeDouble:@"kCLVisitCodingKeyLongitude" forKey:v6];
  [(CLVisit *)self horizontalAccuracy];
  [a3 encodeDouble:@"kCLVisitCodingKeyHorizontalAccuracy" forKey:?];
  [a3 encodeObject:-[CLVisit arrivalDate](self forKey:{"arrivalDate"), @"kCLVisitCodingKeyArrivalDate"}];
  [a3 encodeObject:-[CLVisit departureDate](self forKey:{"departureDate"), @"kCLVisitCodingKeyDepartureDate"}];
  [a3 encodeObject:-[CLVisit detectionDate](self forKey:{"detectionDate"), @"kCLVisitCodingKeyDetectionDate"}];
  v7 = [(CLVisit *)self _placeInference];

  [a3 encodeObject:v7 forKey:@"kCLVisitCodingKeyPlaceInference"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLVisit allocWithZone:a3];
  [(CLVisit *)self coordinate];
  [(CLVisit *)self horizontalAccuracy];
  [(CLVisit *)self arrivalDate];
  [(CLVisit *)self departureDate];
  [(CLVisit *)self detectionDate];
  [(CLVisit *)self _placeInference];

  return MEMORY[0x1EEE66B58](v4, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_);
}

- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)a3 horizontalAccuracy:(double)a4 arrivalDate:(id)a5 departureDate:(id)a6 detectionDate:(id)a7 placeInference:(id)a8
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v17.receiver = self;
  v17.super_class = CLVisit;
  v15 = [(CLVisit *)&v17 init];
  if (v15)
  {
    if (a6)
    {
      if (a5)
      {
LABEL_4:
        v15->_coordinate.latitude = latitude;
        v15->_coordinate.longitude = longitude;
        v15->_horizontalAccuracy = a4;
        v15->_arrivalDate = a5;
        v15->_departureDate = a6;
        v15->_detectionDate = a7;
        v15->__placeInference = a8;
        return v15;
      }
    }

    else
    {
      a6 = [MEMORY[0x1E695DF00] distantFuture];
      if (a5)
      {
        goto LABEL_4;
      }
    }

    a5 = [MEMORY[0x1E695DF00] distantPast];
    goto LABEL_4;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLVisit;
  [(CLVisit *)&v3 dealloc];
}

- (id)description
{
  if ([(CLVisit *)self hasArrivalDate])
  {
    v3 = [(NSDate *)[(CLVisit *)self arrivalDate] description];
  }

  else
  {
    v3 = @"-";
  }

  if ([(CLVisit *)self hasDepartureDate])
  {
    v4 = [(NSDate *)[(CLVisit *)self departureDate] description];
  }

  else
  {
    v4 = @"-";
  }

  v5 = MEMORY[0x1E696AEC0];
  [(CLVisit *)self coordinate];
  v7 = v6;
  [(CLVisit *)self coordinate];
  v9 = v8;
  [(CLVisit *)self horizontalAccuracy];
  return [v5 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2fm (%@ to %@) %@", v7, v9, v10, v3, v4, -[CLVisit _placeInference](self, "_placeInference")];
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end