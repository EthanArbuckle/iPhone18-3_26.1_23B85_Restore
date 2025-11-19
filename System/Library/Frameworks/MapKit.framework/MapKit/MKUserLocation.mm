@interface MKUserLocation
+ (id)title;
+ (void)_setAnnotationClass:(Class)a3;
- (BOOL)hasValidHeading;
- (BOOL)isEqualToLocation:(id)a3;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (MKUserLocation)init;
- (NSString)shortDescription;
- (NSString)subtitle;
- (NSString)title;
- (double)accuracy;
- (void)_updateCoordinate;
- (void)dealloc;
- (void)reset;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
- (void)setLocation:(id)a3;
- (void)setSubtitle:(NSString *)subtitle;
@end

@implementation MKUserLocation

- (MKUserLocation)init
{
  v10.receiver = self;
  v10.super_class = MKUserLocation;
  v2 = [(MKUserLocation *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKUserLocationInternal);
    internal = v2->_internal;
    v2->_internal = v3;

    v5 = sAnnotationClass;
    if (!sAnnotationClass)
    {
      v5 = objc_opt_class();
    }

    v6 = objc_alloc_init(v5);
    v7 = v2->_internal;
    annotation = v7->_annotation;
    v7->_annotation = v6;
  }

  return v2;
}

- (CLLocation)location
{
  fixedLocation = self->_internal->fixedLocation;
  if (fixedLocation)
  {
    v3 = fixedLocation;
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateCoordinate
{
  v3 = [(MKUserLocation *)self location];
  v5 = v3;
  if (v3)
  {
    [v3 coordinate];
  }

  else
  {
    v4 = -180.0;
  }

  [(MKUserLocation *)self setCoordinate:v4];
}

- (CLLocationCoordinate2D)coordinate
{
  [(MKAnnotationPrivate *)self->_internal->_annotation coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (double)accuracy
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1.0;
  }

  v3 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
  [v3 horizontalAccuracy];
  v5 = v4;

  return v5;
}

- (BOOL)hasValidHeading
{
  heading = self->_internal->heading;
  if (heading)
  {
    [(CLHeading *)heading headingAccuracy];
    LOBYTE(heading) = v3 >= 0.0;
  }

  return heading;
}

- (void)reset
{
  [(MKUserLocation *)self setLocation:0];
  [(MKUserLocation *)self setFixedLocation:0];
  [(MKUserLocation *)self setPredictedLocation:0];

  [(MKUserLocation *)self setHeading:0];
}

- (NSString)shortDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v23.receiver = self;
  v23.super_class = MKUserLocation;
  v4 = [(MKUserLocation *)&v23 description];
  v5 = [v3 initWithString:v4];

  if (objc_opt_respondsToSelector())
  {
    v6 = [(MKAnnotationPrivate *)self->_internal->_annotation location];

    if (v6)
    {
      v7 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
      [v7 coordinate];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v8, v9];
      [v5 appendFormat:@" %@", v10];
    }
  }

  internal = self->_internal;
  fixedLocation = internal->fixedLocation;
  if (fixedLocation)
  {
    [(CLLocation *)fixedLocation coordinate];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v13, v14];
    [v5 appendFormat:@" fixed:%@", v15];

    internal = self->_internal;
  }

  predictedLocation = internal->predictedLocation;
  if (predictedLocation)
  {
    [(CLLocation *)predictedLocation coordinate];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v17, v18];
    [v5 appendFormat:@" predicted:%@", v19];

    internal = self->_internal;
  }

  heading = internal->heading;
  if (heading)
  {
    v21 = [(CLHeading *)heading compactDescription];
    [v5 appendFormat:@" heading:%@", v21];
  }

  return v5;
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (objc_opt_respondsToSelector())
  {
    annotation = self->_internal->_annotation;

    [(MKAnnotationPrivate *)annotation setCoordinate:latitude, longitude];
  }
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
    [v4 coordinate];
    if ([v5 _navigation_isEqualToLocationCoordinate:?])
    {
      v6 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
      [v6 horizontalAccuracy];
      v8 = v7;
      [v4 horizontalAccuracy];
      if (vabdd_f64(v8, v9) >= 0.001)
      {
        v14 = 0;
      }

      else
      {
        v10 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
        v11 = [v10 type];
        if (v11 == [v4 type])
        {
          v12 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
          v13 = [v12 _navigation_isStale];
          if (v13 == [v4 _navigation_isStale])
          {
            v15 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
            v16 = [v15 _navigation_hasValidCourse];
            if (v16 == [v4 _navigation_hasValidCourse])
            {
              v17 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
              v18 = objc_opt_class();
              if (v18 == objc_opt_class())
              {
                v19 = [(MKAnnotationPrivate *)self->_internal->_annotation location];
                v20 = [v19 _navigation_routeMatch];
                v21 = [v4 _navigation_routeMatch];
                v14 = v20 == v21;
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setLocation:(id)a3
{
  v6 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [(MKAnnotationPrivate *)self->_internal->_annotation location];

    if (v4 != v6)
    {
      [(MKAnnotationPrivate *)self->_internal->_annotation setLocation:v6];
      [(MKUserLocation *)self _updateCoordinate];
      [v6 course];
      self->_internal->course = v5;
    }
  }
}

- (void)setSubtitle:(NSString *)subtitle
{
  v9 = subtitle;
  v4 = [(MKUserLocation *)self annotation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKUserLocation *)self annotation];
    [v6 setSubtitle:v9];
  }

  else
  {
    v7 = [(NSString *)v9 copy];
    internal = self->_internal;
    v6 = internal->subtitle;
    internal->subtitle = v7;
  }
}

- (NSString)subtitle
{
  v3 = [(MKUserLocation *)self annotation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MKUserLocation *)self annotation];
    v6 = [v5 subtitle];
  }

  else
  {
    v6 = self->_internal->subtitle;
  }

  return v6;
}

- (NSString)title
{
  v3 = [(MKUserLocationInternal *)self->_internal title];

  if (!v3)
  {
    v4 = [objc_opt_class() title];
    [(MKUserLocationInternal *)self->_internal setTitle:v4];
  }

  internal = self->_internal;

  return [(MKUserLocationInternal *)internal title];
}

- (void)dealloc
{
  [(MKUserLocation *)self setLocation:0];
  [(MKUserLocation *)self setFixedLocation:0];
  [(MKUserLocation *)self setPredictedLocation:0];
  [(MKUserLocation *)self setHeading:0];
  internal = self->_internal;
  annotation = internal->_annotation;
  internal->_annotation = 0;

  v5.receiver = self;
  v5.super_class = MKUserLocation;
  [(MKUserLocation *)&v5 dealloc];
}

+ (void)_setAnnotationClass:(Class)a3
{
  if (sAnnotationClass != a3)
  {
    if ([(objc_class *)a3 conformsToProtocol:&unk_1F16678E0])
    {
      sAnnotationClass = a3;
    }
  }
}

+ (id)title
{
  v2 = +[MKLocationManager sharedLocationManager];
  if ([v2 isLocationServicesApproved] && (objc_msgSend(v2, "isAuthorizedForPreciseLocation") & 1) == 0)
  {
    v3 = MKLocalizedStringForApproximateLocation();
  }

  else
  {
    v3 = MKLocalizedStringForCurrentLocation();
  }

  v4 = v3;

  return v4;
}

@end