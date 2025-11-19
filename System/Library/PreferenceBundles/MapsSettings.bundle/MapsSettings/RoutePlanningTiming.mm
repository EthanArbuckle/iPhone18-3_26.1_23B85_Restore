@interface RoutePlanningTiming
+ (id)leaveNowTiming;
+ (id)timingWithArrivalDate:(id)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5;
+ (id)timingWithDepartureDate:(id)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5;
+ (id)timingWithTimePoint:(GEOTimepoint *)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoutePlanningTiming:(id)a3;
- (GEOTimepoint)timepoint;
- (NSTimeZone)arrivalTimeZone;
- (NSTimeZone)bestTimeZone;
- (NSTimeZone)departureTimeZone;
- (RoutePlanningTiming)initWithDepartureDate:(id)a3 arrivalDate:(id)a4 departureTimeZone:(id)a5 arrivalTimeZone:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RoutePlanningTiming

- (RoutePlanningTiming)initWithDepartureDate:(id)a3 arrivalDate:(id)a4 departureTimeZone:(id)a5 arrivalTimeZone:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = RoutePlanningTiming;
  v14 = [(RoutePlanningTiming *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    departureDate = v14->_departureDate;
    v14->_departureDate = v15;

    v17 = [v11 copy];
    arrivalDate = v14->_arrivalDate;
    v14->_arrivalDate = v17;

    v19 = [v12 copy];
    departureTimeZone = v14->_departureTimeZone;
    v14->_departureTimeZone = v19;

    v21 = [v13 copy];
    arrivalTimeZone = v14->_arrivalTimeZone;
    v14->_arrivalTimeZone = v21;

    v23 = v14;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RoutePlanningTiming *)self departureDate];
  v6 = [(RoutePlanningTiming *)self arrivalDate];
  v7 = [(RoutePlanningTiming *)self departureTimeZone];
  v8 = [(RoutePlanningTiming *)self arrivalTimeZone];
  v9 = [v4 initWithDepartureDate:v5 arrivalDate:v6 departureTimeZone:v7 arrivalTimeZone:v8];

  return v9;
}

+ (id)leaveNowTiming
{
  v2 = [[a1 alloc] initWithDepartureDate:0 arrivalDate:0 departureTimeZone:0 arrivalTimeZone:0];

  return v2;
}

+ (id)timingWithDepartureDate:(id)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithDepartureDate:v10 arrivalDate:0 departureTimeZone:v9 arrivalTimeZone:v8];

  return v11;
}

+ (id)timingWithArrivalDate:(id)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithDepartureDate:0 arrivalDate:v10 departureTimeZone:v9 arrivalTimeZone:v8];

  return v11;
}

+ (id)timingWithTimePoint:(GEOTimepoint *)a3 departureTimeZone:(id)a4 arrivalTimeZone:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ((~*&a3->var3 & 6) != 0)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  var2 = a3->var2;
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3->var1];
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
  v18 = [[a1 alloc] initWithDepartureDate:v13 arrivalDate:v14 departureTimeZone:v8 arrivalTimeZone:v9];

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

- (BOOL)isEqualToRoutePlanningTiming:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (self != v6)
    {
      v8 = [(RoutePlanningTiming *)self departureDate];
      if (v8 || ([(RoutePlanningTiming *)v7 departureDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = [(RoutePlanningTiming *)self departureDate];
        v9 = [(RoutePlanningTiming *)v7 departureDate];
        v10 = [v4 isEqualToDate:v9];

        if (v8)
        {
LABEL_11:

          v12 = [(RoutePlanningTiming *)self arrivalDate];
          if (v12 || ([(RoutePlanningTiming *)v7 arrivalDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v13 = [(RoutePlanningTiming *)self arrivalDate];
            v14 = [(RoutePlanningTiming *)v7 arrivalDate];
            v15 = [v13 isEqualToDate:v14];

            if (v12)
            {
LABEL_17:

              v16 = [(RoutePlanningTiming *)self departureTimeZone];
              v17 = [(RoutePlanningTiming *)v7 departureTimeZone];
              v18 = [v16 _navigation_hasSameOffsetFromGMTAsTimeZone:v17];

              v19 = [(RoutePlanningTiming *)self arrivalTimeZone];
              v20 = [(RoutePlanningTiming *)v7 arrivalTimeZone];
              LOBYTE(v17) = [v19 _navigation_hasSameOffsetFromGMTAsTimeZone:v20];

              v11 = v10 & v15 & v18 & v17;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RoutePlanningTiming *)self isEqualToRoutePlanningTiming:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RoutePlanningTiming *)self departureDate];
  v4 = [v3 hash];
  v5 = [(RoutePlanningTiming *)self arrivalDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(RoutePlanningTiming *)self departureTimeZone];
  v8 = [v7 hash];
  v9 = [(RoutePlanningTiming *)self arrivalTimeZone];
  v10 = v8 ^ [v9 hash];

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