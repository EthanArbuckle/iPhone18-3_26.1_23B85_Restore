@interface RoutePlanningTiming
+ (id)leaveNowTiming;
+ (id)timingWithArrivalDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
+ (id)timingWithDepartureDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
+ (id)timingWithTimePoint:(GEOTimepoint *)point departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoutePlanningTiming:(id)timing;
- (GEOTimepoint)timepoint;
- (NSTimeZone)arrivalTimeZone;
- (NSTimeZone)bestTimeZone;
- (NSTimeZone)departureTimeZone;
- (RoutePlanningTiming)initWithDepartureDate:(id)date arrivalDate:(id)arrivalDate departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RoutePlanningTiming

- (RoutePlanningTiming)initWithDepartureDate:(id)date arrivalDate:(id)arrivalDate departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  dateCopy = date;
  arrivalDateCopy = arrivalDate;
  zoneCopy = zone;
  timeZoneCopy = timeZone;
  v25.receiver = self;
  v25.super_class = RoutePlanningTiming;
  v14 = [(RoutePlanningTiming *)&v25 init];
  if (v14)
  {
    v15 = [dateCopy copy];
    departureDate = v14->_departureDate;
    v14->_departureDate = v15;

    v17 = [arrivalDateCopy copy];
    arrivalDate = v14->_arrivalDate;
    v14->_arrivalDate = v17;

    v19 = [zoneCopy copy];
    departureTimeZone = v14->_departureTimeZone;
    v14->_departureTimeZone = v19;

    v21 = [timeZoneCopy copy];
    arrivalTimeZone = v14->_arrivalTimeZone;
    v14->_arrivalTimeZone = v21;

    v23 = v14;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  departureDate = [(RoutePlanningTiming *)self departureDate];
  arrivalDate = [(RoutePlanningTiming *)self arrivalDate];
  departureTimeZone = [(RoutePlanningTiming *)self departureTimeZone];
  arrivalTimeZone = [(RoutePlanningTiming *)self arrivalTimeZone];
  v9 = [v4 initWithDepartureDate:departureDate arrivalDate:arrivalDate departureTimeZone:departureTimeZone arrivalTimeZone:arrivalTimeZone];

  return v9;
}

+ (id)leaveNowTiming
{
  v2 = [[self alloc] initWithDepartureDate:0 arrivalDate:0 departureTimeZone:0 arrivalTimeZone:0];

  return v2;
}

+ (id)timingWithDepartureDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  timeZoneCopy = timeZone;
  zoneCopy = zone;
  dateCopy = date;
  v11 = [[self alloc] initWithDepartureDate:dateCopy arrivalDate:0 departureTimeZone:zoneCopy arrivalTimeZone:timeZoneCopy];

  return v11;
}

+ (id)timingWithArrivalDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  timeZoneCopy = timeZone;
  zoneCopy = zone;
  dateCopy = date;
  v11 = [[self alloc] initWithDepartureDate:0 arrivalDate:dateCopy departureTimeZone:zoneCopy arrivalTimeZone:timeZoneCopy];

  return v11;
}

+ (id)timingWithTimePoint:(GEOTimepoint *)point departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  zoneCopy = zone;
  timeZoneCopy = timeZone;
  if ((~*&point->var3 & 6) != 0)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  var2 = point->var2;
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:point->var1];
  v12 = v11;
  if (var2 == 1)
  {
    v14 = v11;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if (var2)
  {
    v15 = MAPSGetMapsAssertLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "+[RoutePlanningTiming timingWithTimePoint:departureTimeZone:arrivalTimeZone:]";
      v22 = 2080;
      v23 = "RoutePlanningTiming.m";
      v24 = 1024;
      v25 = 65;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v20, 0x1Cu);
    }

    if (_isInternalInstall())
    {
      v16 = MAPSGetMapsAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  v13 = v11;
  v14 = 0;
LABEL_15:

LABEL_16:
  v18 = [[self alloc] initWithDepartureDate:v13 arrivalDate:v14 departureTimeZone:zoneCopy arrivalTimeZone:timeZoneCopy];

  return v18;
}

- (NSTimeZone)bestTimeZone
{
  if (self->_arrivalDate)
  {
    [(RoutePlanningTiming *)self arrivalTimeZone];
  }

  else
  {
    [(RoutePlanningTiming *)self departureTimeZone];
  }
  v2 = ;

  return v2;
}

- (BOOL)isEqualToRoutePlanningTiming:(id)timing
{
  timingCopy = timing;
  v7 = timingCopy;
  if (timingCopy)
  {
    if (self != timingCopy)
    {
      departureDate = [(RoutePlanningTiming *)self departureDate];
      if (departureDate || ([(RoutePlanningTiming *)v7 departureDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        departureDate2 = [(RoutePlanningTiming *)self departureDate];
        departureDate3 = [(RoutePlanningTiming *)v7 departureDate];
        v10 = [departureDate2 isEqualToDate:departureDate3];

        if (departureDate)
        {
LABEL_11:

          arrivalDate = [(RoutePlanningTiming *)self arrivalDate];
          if (arrivalDate || ([(RoutePlanningTiming *)v7 arrivalDate], (departureDate2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            arrivalDate2 = [(RoutePlanningTiming *)self arrivalDate];
            arrivalDate3 = [(RoutePlanningTiming *)v7 arrivalDate];
            v15 = [arrivalDate2 isEqualToDate:arrivalDate3];

            if (arrivalDate)
            {
LABEL_17:

              departureTimeZone = [(RoutePlanningTiming *)self departureTimeZone];
              departureTimeZone2 = [(RoutePlanningTiming *)v7 departureTimeZone];
              v18 = [departureTimeZone _navigation_hasSameOffsetFromGMTAsTimeZone:departureTimeZone2];

              arrivalTimeZone = [(RoutePlanningTiming *)self arrivalTimeZone];
              arrivalTimeZone2 = [(RoutePlanningTiming *)v7 arrivalTimeZone];
              LOBYTE(departureTimeZone2) = [arrivalTimeZone _navigation_hasSameOffsetFromGMTAsTimeZone:arrivalTimeZone2];

              v11 = v10 & v15 & v18 & departureTimeZone2;
              goto LABEL_18;
            }
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RoutePlanningTiming *)self isEqualToRoutePlanningTiming:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  departureDate = [(RoutePlanningTiming *)self departureDate];
  v4 = [departureDate hash];
  arrivalDate = [(RoutePlanningTiming *)self arrivalDate];
  v6 = [arrivalDate hash] ^ v4;
  departureTimeZone = [(RoutePlanningTiming *)self departureTimeZone];
  v8 = [departureTimeZone hash];
  arrivalTimeZone = [(RoutePlanningTiming *)self arrivalTimeZone];
  v10 = v8 ^ [arrivalTimeZone hash];

  return v6 ^ v10;
}

- (GEOTimepoint)timepoint
{
  retstr->var0 = 0.0;
  retstr->var1 = 0.0;
  *&retstr->var2 = 0;
  result = self->_departureDate;
  if (!result)
  {
    result = self->_arrivalDate;
    if (!result)
    {
      return result;
    }

    retstr->var2 = 1;
  }

  result = [(GEOTimepoint *)result timeIntervalSinceReferenceDate];
  *&retstr->var3 = 6;
  retstr->var1 = v6;
  return result;
}

- (NSTimeZone)departureTimeZone
{
  departureTimeZone = self->_departureTimeZone;
  if (!departureTimeZone)
  {
    v4 = +[NSTimeZone localTimeZone];
    v5 = self->_departureTimeZone;
    self->_departureTimeZone = v4;

    departureTimeZone = self->_departureTimeZone;
  }

  return departureTimeZone;
}

- (NSTimeZone)arrivalTimeZone
{
  arrivalTimeZone = self->_arrivalTimeZone;
  if (!arrivalTimeZone)
  {
    v4 = +[NSTimeZone localTimeZone];
    v5 = self->_arrivalTimeZone;
    self->_arrivalTimeZone = v4;

    arrivalTimeZone = self->_arrivalTimeZone;
  }

  return arrivalTimeZone;
}

@end