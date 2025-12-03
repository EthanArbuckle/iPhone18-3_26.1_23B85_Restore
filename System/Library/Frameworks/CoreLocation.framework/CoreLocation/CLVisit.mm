@interface CLVisit
- (CLLocationCoordinate2D)coordinate;
- (CLVisit)initWithCoder:(id)coder;
- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate placeInference:(id)inference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVisit

- (CLVisit)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder decodeDoubleForKey:@"kCLVisitCodingKeyLatitude"];
  [coder decodeDoubleForKey:@"kCLVisitCodingKeyLongitude"];
  [coder decodeDoubleForKey:@"kCLVisitCodingKeyHorizontalAccuracy"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyArrivalDate"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyDepartureDate"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyDetectionDate"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLVisitCodingKeyPlaceInference"];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_);
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(CLVisit *)self coordinate];
  [coder encodeDouble:@"kCLVisitCodingKeyLatitude" forKey:?];
  [(CLVisit *)self coordinate];
  [coder encodeDouble:@"kCLVisitCodingKeyLongitude" forKey:v6];
  [(CLVisit *)self horizontalAccuracy];
  [coder encodeDouble:@"kCLVisitCodingKeyHorizontalAccuracy" forKey:?];
  [coder encodeObject:-[CLVisit arrivalDate](self forKey:{"arrivalDate"), @"kCLVisitCodingKeyArrivalDate"}];
  [coder encodeObject:-[CLVisit departureDate](self forKey:{"departureDate"), @"kCLVisitCodingKeyDepartureDate"}];
  [coder encodeObject:-[CLVisit detectionDate](self forKey:{"detectionDate"), @"kCLVisitCodingKeyDetectionDate"}];
  _placeInference = [(CLVisit *)self _placeInference];

  [coder encodeObject:_placeInference forKey:@"kCLVisitCodingKeyPlaceInference"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLVisit allocWithZone:zone];
  [(CLVisit *)self coordinate];
  [(CLVisit *)self horizontalAccuracy];
  [(CLVisit *)self arrivalDate];
  [(CLVisit *)self departureDate];
  [(CLVisit *)self detectionDate];
  [(CLVisit *)self _placeInference];

  return MEMORY[0x1EEE66B58](v4, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_);
}

- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate placeInference:(id)inference
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v17.receiver = self;
  v17.super_class = CLVisit;
  v15 = [(CLVisit *)&v17 init];
  if (v15)
  {
    if (departureDate)
    {
      if (date)
      {
LABEL_4:
        v15->_coordinate.latitude = latitude;
        v15->_coordinate.longitude = longitude;
        v15->_horizontalAccuracy = accuracy;
        v15->_arrivalDate = date;
        v15->_departureDate = departureDate;
        v15->_detectionDate = detectionDate;
        v15->__placeInference = inference;
        return v15;
      }
    }

    else
    {
      departureDate = [MEMORY[0x1E695DF00] distantFuture];
      if (date)
      {
        goto LABEL_4;
      }
    }

    date = [MEMORY[0x1E695DF00] distantPast];
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