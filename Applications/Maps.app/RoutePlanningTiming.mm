@interface RoutePlanningTiming
+ (RoutePlanningTiming)timingWithArrivalDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
+ (RoutePlanningTiming)timingWithDepartureDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
+ (RoutePlanningTiming)timingWithTimePoint:(GEOTimepoint *)point departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone;
+ (RoutePlanningTiming)timingWithUserInfo:(id)info;
+ (id)leaveNowTiming;
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

+ (id)leaveNowTiming
{
  v2 = [[self alloc] initWithDepartureDate:0 arrivalDate:0 departureTimeZone:0 arrivalTimeZone:0];

  return v2;
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

+ (RoutePlanningTiming)timingWithTimePoint:(GEOTimepoint *)point departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
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
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "+[RoutePlanningTiming timingWithTimePoint:departureTimeZone:arrivalTimeZone:]";
      v22 = 2080;
      v23 = "RoutePlanningTiming.m";
      v24 = 1024;
      v25 = 65;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v20, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
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

+ (RoutePlanningTiming)timingWithArrivalDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  timeZoneCopy = timeZone;
  zoneCopy = zone;
  dateCopy = date;
  v11 = [[self alloc] initWithDepartureDate:0 arrivalDate:dateCopy departureTimeZone:zoneCopy arrivalTimeZone:timeZoneCopy];

  return v11;
}

+ (RoutePlanningTiming)timingWithDepartureDate:(id)date departureTimeZone:(id)zone arrivalTimeZone:(id)timeZone
{
  timeZoneCopy = timeZone;
  zoneCopy = zone;
  dateCopy = date;
  v11 = [[self alloc] initWithDepartureDate:dateCopy arrivalDate:0 departureTimeZone:zoneCopy arrivalTimeZone:timeZoneCopy];

  return v11;
}

+ (RoutePlanningTiming)timingWithUserInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315906;
      *&v27[4] = "+[RoutePlanningTiming(DirectionsUserInfo) timingWithUserInfo:]";
      *&v27[12] = 2080;
      *&v27[14] = "RoutePlanningPreferences+DirectionsUserInfo.m";
      *&v27[22] = 1024;
      v28 = 46;
      v29 = 2080;
      v30 = "userInfo != nil";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", v27, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *v27 = 138412290;
        *&v27[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }
    }
  }

  v4 = [infoCopy objectForKeyedSubscript:@"GEOURLTimePoint"];

  if (v4)
  {
    v5 = [infoCopy objectForKeyedSubscript:@"GEOURLTimePoint"];
    if ([v5 hasTime])
    {
      [v5 time];
      v7 = v6;
      v8 = 2;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    if (![v5 hasType])
    {
      goto LABEL_12;
    }

    type = [v5 type];
    if (!type)
    {
      v11 = 0;
      v8 |= 4u;
      goto LABEL_13;
    }

    if (type == 1)
    {
      v8 |= 4u;
      v11 = 1;
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

LABEL_13:
    *v27 = 0;
    *&v27[8] = v7;
    *&v27[16] = v11;
    v27[20] = v8;
    *&v27[21] = 0;
    v27[23] = 0;
    v12 = [RoutePlanningTiming timingWithTimePoint:v27 departureTimeZone:0 arrivalTimeZone:0];

    goto LABEL_21;
  }

  v9 = [infoCopy objectForKeyedSubscript:@"DirectionsDepartureDateKey"];
  if (v9)
  {

    goto LABEL_15;
  }

  v13 = [infoCopy objectForKeyedSubscript:@"DirectionsArrivalDateKey"];

  if (v13)
  {
LABEL_15:
    v14 = [infoCopy objectForKeyedSubscript:@"DirectionsDepartureDateKey"];
    v15 = [infoCopy objectForKeyedSubscript:@"DirectionsArrivalDateKey"];
    v16 = v14;
    v17 = v15;
    v18 = v17;
    if (v16)
    {
      v19 = 0;
      v17 = v16;
    }

    else
    {
      if (!v17)
      {
        v19 = 0;
        v22 = 0;
        v21 = 0;
        goto LABEL_20;
      }

      v19 = 1;
    }

    [v17 timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = 6;
LABEL_20:

    *v27 = 0;
    *&v27[8] = v21;
    *&v27[16] = v19;
    v27[20] = v22;
    *&v27[21] = 0;
    v27[23] = 0;
    v12 = [RoutePlanningTiming timingWithTimePoint:v27 departureTimeZone:0 arrivalTimeZone:0];
    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

@end