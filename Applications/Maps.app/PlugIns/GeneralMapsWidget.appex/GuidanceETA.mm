@interface GuidanceETA
+ (id)_arrivalTimeStringForEtaDate:(id)date timeZone:(id)zone includingAMPMSymbols:(BOOL)symbols;
+ (id)defaultArrivalString;
+ (id)defaultBatteryOnArrivalString;
+ (id)defaultDistanceUnit;
+ (id)defaultDistanceUnitAccessibility;
+ (id)defaultTimeUnit;
+ (id)defaultTimeUnitAccessibility;
+ (id)displayDateForDate:(id)date;
+ (id)invalidValueString;
- (BOOL)isVisuallyDistinctFromGuidanceETA:(id)a;
- (GuidanceETA)initWithDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info destinationTimeZone:(id)zone transportType:(int)type;
- (GuidanceETA)initWithLeaveByDate:(id)date remainingTime:(double)time remainingDistance:(double)distance arrivalBatteryCharge:(id)charge destinationTimeZone:(id)zone transportType:(int)type;
- (GuidanceETA)initWithRemainingTime:(double)time remainingDistance:(double)distance arrivalBatteryCharge:(id)charge destinationTimeZone:(id)zone transportType:(int)type;
- (NSString)arrivalAMPMTimeString;
- (NSString)arrivalChargeString;
- (NSString)arrivalTimeBottomString;
- (NSString)arrivalTimeExpandedString;
- (NSString)arrivalTimeString;
- (NSString)distanceUnit;
- (NSString)distanceUnitAccessibility;
- (NSString)distanceValue;
- (NSString)etaDateString;
- (NSString)shortArrivalChargeString;
- (NSString)timeUnit;
- (NSString)timeUnitAccessibility;
- (NSString)timeValue;
- (id)_chargeImageAttachmentWithFont:(id)font;
- (id)arrivalWithBatteryChargeStringWithFont:(id)font;
- (id)batteryChargeStringWithFont:(id)font;
- (id)description;
- (id)extendedArrivalBatteryChargeStringWithFont:(id)font;
- (int64_t)_lengthUnitFromUnit:(id)unit;
- (int64_t)_unitStyleForUnit:(int64_t)unit;
- (void)_computeDistanceProperties;
- (void)_computeTimeProperties;
@end

@implementation GuidanceETA

- (GuidanceETA)initWithRemainingTime:(double)time remainingDistance:(double)distance arrivalBatteryCharge:(id)charge destinationTimeZone:(id)zone transportType:(int)type
{
  chargeCopy = charge;
  zoneCopy = zone;
  v23.receiver = self;
  v23.super_class = GuidanceETA;
  v15 = [(GuidanceETA *)&v23 init];
  if (v15)
  {
    v15->_remainingMinutes = [objc_opt_class() displayMinutesForTimeInterval:time];
    v15->_remainingDistance = distance;
    v16 = +[NSDate date];
    v17 = [GuidanceETA displayDateForDate:v16];

    v18 = [v17 dateByAddingTimeInterval:v15->_remainingMinutes * 60.0];
    etaDate = v15->_etaDate;
    v15->_etaDate = v18;

    objc_storeStrong(&v15->_arrivalBatteryCharge, charge);
    if (zoneCopy)
    {
      v20 = zoneCopy;
    }

    else
    {
      v20 = +[NSTimeZone defaultTimeZone];
    }

    destinationTimeZone = v15->_destinationTimeZone;
    v15->_destinationTimeZone = v20;

    v15->_transportType = type;
    v15->_isEtaToFinalDestination = 1;
  }

  return v15;
}

- (GuidanceETA)initWithDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info destinationTimeZone:(id)zone transportType:(int)type
{
  aCopy = a;
  distanceCopy = distance;
  infoCopy = info;
  zoneCopy = zone;
  v26.receiver = self;
  v26.super_class = GuidanceETA;
  v16 = [(GuidanceETA *)&v26 init];
  if (v16)
  {
    v16->_remainingMinutes = [aCopy displayRemainingMinutesToEndOfLeg];
    [distanceCopy distanceRemainingToEndOfLeg];
    v16->_remainingDistance = v17;
    displayETAToEndOfLeg = [aCopy displayETAToEndOfLeg];
    etaDate = v16->_etaDate;
    v16->_etaDate = displayETAToEndOfLeg;

    if (infoCopy)
    {
      [infoCopy batteryChargeRemainingAtEndOfLeg];
      v20 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v20 = 0;
    }

    arrivalBatteryCharge = v16->_arrivalBatteryCharge;
    v16->_arrivalBatteryCharge = v20;

    if (zoneCopy)
    {
      v22 = zoneCopy;
    }

    else
    {
      v22 = +[NSTimeZone defaultTimeZone];
    }

    destinationTimeZone = v16->_destinationTimeZone;
    v16->_destinationTimeZone = v22;

    v16->_transportType = type;
    legInfos = [aCopy legInfos];
    v16->_isEtaToFinalDestination = [legInfos count] < 2;
  }

  return v16;
}

- (GuidanceETA)initWithLeaveByDate:(id)date remainingTime:(double)time remainingDistance:(double)distance arrivalBatteryCharge:(id)charge destinationTimeZone:(id)zone transportType:(int)type
{
  dateCopy = date;
  chargeCopy = charge;
  zoneCopy = zone;
  v24.receiver = self;
  v24.super_class = GuidanceETA;
  v17 = [(GuidanceETA *)&v24 init];
  if (v17)
  {
    v17->_remainingMinutes = [objc_opt_class() displayMinutesForTimeInterval:time];
    v17->_remainingDistance = distance;
    v18 = [GuidanceETA displayDateForDate:dateCopy];
    v19 = [v18 dateByAddingTimeInterval:v17->_remainingMinutes * 60.0];
    etaDate = v17->_etaDate;
    v17->_etaDate = v19;

    objc_storeStrong(&v17->_arrivalBatteryCharge, charge);
    if (zoneCopy)
    {
      v21 = zoneCopy;
    }

    else
    {
      v21 = +[NSTimeZone defaultTimeZone];
    }

    destinationTimeZone = v17->_destinationTimeZone;
    v17->_destinationTimeZone = v21;

    v17->_transportType = type;
    v17->_isEtaToFinalDestination = 1;
  }

  return v17;
}

- (NSString)etaDateString
{
  if (qword_1000E2B48 != -1)
  {
    sub_10007D128();
  }

  etaDateString = self->_etaDateString;
  if (etaDateString)
  {
    v4 = etaDateString;
  }

  else
  {
    [qword_1000E2B40 setTimeZone:self->_destinationTimeZone];
    v5 = qword_1000E2B40;
    etaDate = [(GuidanceETA *)self etaDate];
    v7 = [v5 stringFromDate:etaDate];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"00:00 ETA [CarPlay]" value:@"localized string not found" table:0];

    v10 = [NSString stringWithFormat:v9, v7];
    v11 = self->_etaDateString;
    self->_etaDateString = v10;

    v4 = self->_etaDateString;
  }

  return v4;
}

+ (id)displayDateForDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:96 fromDate:dateCopy];

  v7 = [v4 dateBySettingHour:objc_msgSend(v6 minute:"hour") second:objc_msgSend(v6 ofDate:"minute") options:{0, dateCopy, 2}];

  return v7;
}

- (id)description
{
  arrivalBatteryCharge = self->_arrivalBatteryCharge;
  v4 = objc_opt_class();
  remainingMinutes = self->_remainingMinutes;
  remainingDistance = self->_remainingDistance;
  etaDate = [(GuidanceETA *)self etaDate];
  v8 = etaDate;
  if (arrivalBatteryCharge)
  {
    [NSString stringWithFormat:@"<%@: %p remainingMinutes=%lu remainingDistance=%f etaDate=%@ arrivalBatteryCharge=%lu timezone=%@>", v4, self, remainingMinutes, *&remainingDistance, etaDate, [(NSNumber *)self->_arrivalBatteryCharge unsignedIntegerValue], self->_destinationTimeZone];
  }

  else
  {
    [NSString stringWithFormat:@"<%@: %p remainingMinutes=%lu remainingDistance=%f etaDate=%@ timezone=%@>", v4, self, remainingMinutes, *&remainingDistance, etaDate, self->_destinationTimeZone, v11];
  }
  v9 = ;

  return v9;
}

- (NSString)arrivalTimeString
{
  arrivalTimeString = self->_arrivalTimeString;
  if (!arrivalTimeString)
  {
    v4 = objc_opt_class();
    etaDate = [(GuidanceETA *)self etaDate];
    v6 = [v4 _arrivalTimeStringForEtaDate:etaDate timeZone:self->_destinationTimeZone includingAMPMSymbols:0];
    v7 = self->_arrivalTimeString;
    self->_arrivalTimeString = v6;

    arrivalTimeString = self->_arrivalTimeString;
  }

  return arrivalTimeString;
}

- (NSString)arrivalAMPMTimeString
{
  arrivalAMPMTimeString = self->_arrivalAMPMTimeString;
  if (!arrivalAMPMTimeString)
  {
    v4 = objc_opt_class();
    etaDate = [(GuidanceETA *)self etaDate];
    v6 = [v4 _arrivalTimeStringForEtaDate:etaDate timeZone:self->_destinationTimeZone includingAMPMSymbols:1];
    v7 = self->_arrivalAMPMTimeString;
    self->_arrivalAMPMTimeString = v6;

    arrivalAMPMTimeString = self->_arrivalAMPMTimeString;
  }

  return arrivalAMPMTimeString;
}

- (NSString)arrivalTimeBottomString
{
  isEtaToFinalDestination = [(GuidanceETA *)self isEtaToFinalDestination];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (isEtaToFinalDestination)
  {
    v5 = @"[NavTray] arrival label";
  }

  else
  {
    v5 = @"[NavTray] arrival label (next stop)";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (NSString)arrivalTimeExpandedString
{
  v3 = objc_opt_class();
  etaDate = [(GuidanceETA *)self etaDate];
  v5 = [v3 _arrivalTimeStringForEtaDate:etaDate timeZone:self->_destinationTimeZone includingAMPMSymbols:0];

  LODWORD(self) = [(GuidanceETA *)self isEtaToFinalDestination];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (self)
  {
    v8 = @"[NavTray] Arrival time format";
  }

  else
  {
    v8 = @"[NavTray] Arrival time format (next stop)";
  }

  v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
  v10 = [NSString stringWithFormat:v9, v5];

  return v10;
}

+ (id)_arrivalTimeStringForEtaDate:(id)date timeZone:(id)zone includingAMPMSymbols:(BOOL)symbols
{
  symbolsCopy = symbols;
  dateCopy = date;
  zoneCopy = zone;
  if (qword_1000E2B58 != -1)
  {
    sub_10007D13C();
  }

  [qword_1000E2B50 setTimeZone:zoneCopy];
  if (symbolsCopy)
  {
    v9 = @"j:mm";
  }

  else
  {
    v9 = @"J:mm";
  }

  [qword_1000E2B50 setLocalizedDateFormatFromTemplate:v9];
  v10 = [qword_1000E2B50 stringFromDate:dateCopy];

  return v10;
}

- (NSString)timeValue
{
  timeValue = self->_timeValue;
  if (!timeValue)
  {
    [(GuidanceETA *)self _computeTimeProperties];
    timeValue = self->_timeValue;
  }

  return timeValue;
}

- (NSString)timeUnit
{
  timeUnit = self->_timeUnit;
  if (!timeUnit)
  {
    [(GuidanceETA *)self _computeTimeProperties];
    timeUnit = self->_timeUnit;
  }

  return timeUnit;
}

- (NSString)timeUnitAccessibility
{
  timeUnitAccessibility = self->_timeUnitAccessibility;
  if (!timeUnitAccessibility)
  {
    [(GuidanceETA *)self _computeTimeProperties];
    timeUnitAccessibility = self->_timeUnitAccessibility;
  }

  return timeUnitAccessibility;
}

- (void)_computeTimeProperties
{
  remainingMinutes_low = LODWORD(self->_remainingMinutes);
  if (remainingMinutes_low < 14401)
  {
    v12 = (remainingMinutes_low / 60);
    if (remainingMinutes_low <= 1439)
    {
      v13 = (remainingMinutes_low % 60);
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = (remainingMinutes_low - 60) >= 0x3C;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 2;
    }

    if (v15)
    {
      if (v13)
      {
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"Hours and minutes value [ETA]" value:@"localized string not found" table:0];
        v18 = [NSString localizedStringWithFormat:v17, v12, v13];
        timeValue = self->_timeValue;
        self->_timeValue = v18;
      }

      else
      {
        v27 = [NSString localizedStringWithFormat:@"%d", v12];
        v16 = self->_timeValue;
        self->_timeValue = v27;
      }

      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"Hours label [ETA]" value:@"localized string not found" table:0];
      v30 = [NSString stringWithFormat:v29, v15];
      timeUnit = self->_timeUnit;
      self->_timeUnit = v30;

      +[NSBundle mainBundle];
      v26 = [objc_claimAutoreleasedReturnValue() localizedStringForKey:@"Hours accessibility label [ETA]" value:@"localized string not found" table:0];
      [NSString stringWithFormat:v26, v15];
    }

    else
    {
      v20 = [NSString localizedStringWithFormat:@"%d", LODWORD(self->_remainingMinutes)];
      v21 = self->_timeValue;
      self->_timeValue = v20;

      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"Minutes label [ETA]" value:@"localized string not found" table:0];
      remainingMinutes_low = [NSString stringWithFormat:v23, remainingMinutes_low];
      v25 = self->_timeUnit;
      self->_timeUnit = remainingMinutes_low;

      +[NSBundle mainBundle];
      v26 = [objc_claimAutoreleasedReturnValue() localizedStringForKey:@"Minutes accessibility label [ETA]" value:@"localized string not found" table:0];
      [NSString stringWithFormat:v26, remainingMinutes_low];
    }
    v32 = ;
    timeUnitAccessibility = self->_timeUnitAccessibility;
    self->_timeUnitAccessibility = v32;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Excessive time (10+ days) [ETA]" value:@"localized string not found" table:0];
    v6 = self->_timeValue;
    self->_timeValue = v5;

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Days label [ETA]" value:@"localized string not found" table:0];
    v9 = self->_timeUnit;
    self->_timeUnit = v8;

    v10 = self->_timeUnit;
    v11 = self->_timeUnitAccessibility;
    self->_timeUnitAccessibility = v10;
  }

  _objc_release_x1();
}

- (NSString)distanceValue
{
  distanceValue = self->_distanceValue;
  if (!distanceValue)
  {
    [(GuidanceETA *)self _computeDistanceProperties];
    distanceValue = self->_distanceValue;
  }

  return distanceValue;
}

- (NSString)distanceUnit
{
  distanceUnit = self->_distanceUnit;
  if (!distanceUnit)
  {
    [(GuidanceETA *)self _computeDistanceProperties];
    distanceUnit = self->_distanceUnit;
  }

  return distanceUnit;
}

- (NSString)distanceUnitAccessibility
{
  distanceUnitAccessibility = self->_distanceUnitAccessibility;
  if (!distanceUnitAccessibility)
  {
    [(GuidanceETA *)self _computeDistanceProperties];
    distanceUnitAccessibility = self->_distanceUnitAccessibility;
  }

  return distanceUnitAccessibility;
}

- (int64_t)_lengthUnitFromUnit:(id)unit
{
  unitCopy = unit;
  v4 = +[NSUnitLength kilometers];

  if (v4 == unitCopy)
  {
    v9 = 14;
  }

  else
  {
    v5 = +[NSUnitLength meters];

    if (v5 == unitCopy)
    {
      v9 = 11;
    }

    else
    {
      v6 = +[NSUnitLength miles];

      if (v6 == unitCopy)
      {
        v9 = 1284;
      }

      else
      {
        v7 = +[NSUnitLength yards];

        if (v7 == unitCopy)
        {
          v9 = 1283;
        }

        else
        {
          v8 = +[NSUnitLength feet];

          if (v8 == unitCopy)
          {
            v9 = 1282;
          }

          else
          {
            v9 = 1284;
          }
        }
      }
    }
  }

  return v9;
}

- (int64_t)_unitStyleForUnit:(int64_t)unit
{
  result = 1;
  if (unit > 1282)
  {
    if ((unit - 1283) >= 2)
    {
      return 2;
    }
  }

  else if (unit != 11 && unit != 14)
  {
    return 2;
  }

  return result;
}

- (void)_computeDistanceProperties
{
  transportType = self->_transportType;
  remainingDistance = self->_remainingDistance;
  v19 = GEORoundedMeasurementForDistance();
  [v19 doubleValue];
  v6 = v5;
  if (self->_remainingDistance >= 0.0)
  {
    if (vabdd_f64(v5, floor(v5)) < 0.000001)
    {
      [NSString localizedStringWithFormat:@"%.0f", *&v5];
    }

    else
    {
      [NSString localizedStringWithFormat:@"%.1f", *&v5];
    }
    v10 = ;
    distanceValue = self->_distanceValue;
    self->_distanceValue = v10;
  }

  else
  {
    distanceValue = +[NSBundle mainBundle];
    v8 = [distanceValue localizedStringForKey:@"Invalid Distance [ETA]" value:@"localized string not found" table:0];
    v9 = self->_distanceValue;
    self->_distanceValue = v8;
  }

  unit = [v19 unit];
  v12 = [(GuidanceETA *)self _lengthUnitFromUnit:unit];

  if (qword_1000E2B68 != -1)
  {
    sub_10007D150();
  }

  v13 = qword_1000E2B60;
  [v13 setUnitStyle:{-[GuidanceETA _unitStyleForUnit:](self, "_unitStyleForUnit:", v12)}];
  v14 = [v13 unitStringFromValue:v12 unit:v6];
  distanceUnit = self->_distanceUnit;
  self->_distanceUnit = v14;

  if (qword_1000E2B78 != -1)
  {
    sub_10007D164();
  }

  v16 = qword_1000E2B70;
  v17 = [v16 unitStringFromValue:v12 unit:v6];
  distanceUnitAccessibility = self->_distanceUnitAccessibility;
  self->_distanceUnitAccessibility = v17;
}

+ (id)defaultArrivalString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"arrival/ETA" value:@"localized string not found" table:0];

  return v3;
}

+ (id)invalidValueString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[NavTray] Unknown value" value:@"localized string not found" table:0];

  return v3;
}

+ (id)defaultTimeUnit
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[NavTray] default time units" value:@"localized string not found" table:0];

  return v3;
}

+ (id)defaultTimeUnitAccessibility
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[NavTray] default time units accessibility" value:@"localized string not found" table:0];

  return v3;
}

+ (id)defaultDistanceUnit
{
  v2 = +[NSLocale currentLocale];
  _navigation_distanceUsesMetricSystem = [v2 _navigation_distanceUsesMetricSystem];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (_navigation_distanceUsesMetricSystem)
  {
    v6 = @"[NavTray][Metric] default distance units";
  }

  else
  {
    v6 = @"[NavTray][Imperial] default distance units";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

+ (id)defaultDistanceUnitAccessibility
{
  v2 = +[NSLocale currentLocale];
  _navigation_distanceUsesMetricSystem = [v2 _navigation_distanceUsesMetricSystem];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (_navigation_distanceUsesMetricSystem)
  {
    v6 = @"[NavTray][Metric] default distance units accessibility";
  }

  else
  {
    v6 = @"[NavTray][Imperial] default distance units accessibility";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

+ (id)defaultBatteryOnArrivalString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"on arrival/ETA" value:@"localized string not found" table:0];

  return v3;
}

- (id)_chargeImageAttachmentWithFont:(id)font
{
  fontCopy = font;
  v5 = objc_opt_new();
  [fontCopy pointSize];
  v7 = v6;
  arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
  v9 = +[UIImage chargeImageOfSize:batteryLevel:](UIImage, "chargeImageOfSize:batteryLevel:", [arrivalBatteryCharge unsignedIntegerValue], v7);

  [v5 setImage:v9];
  [fontCopy capHeight];
  v11 = v10;

  [v9 size];
  v13 = (v11 - v12) * 0.5;
  [v9 size];
  v15 = v14;
  [v9 size];
  [v5 setBounds:{0.0, v13, v15, v16}];
  v17 = [NSAttributedString attributedStringWithAttachment:v5];

  return v17;
}

- (id)batteryChargeStringWithFont:(id)font
{
  fontCopy = font;
  v5 = [(GuidanceETA *)self _chargeImageAttachmentWithFont:fontCopy];
  v6 = [v5 mutableCopy];

  v7 = [[NSAttributedString alloc] initWithString:@" "];
  [v6 appendAttributedString:v7];

  v8 = [NSAttributedString alloc];
  arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld%%", [arrivalBatteryCharge integerValue]);
  v11 = [v8 initWithString:v10];
  [v6 appendAttributedString:v11];

  string = [v6 string];
  v13 = [string length];

  v17 = NSFontAttributeName;
  v18 = fontCopy;
  v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [v6 addAttributes:v14 range:{0, v13}];
  v15 = [v6 copy];

  return v15;
}

- (id)arrivalWithBatteryChargeStringWithFont:(id)font
{
  fontCopy = font;
  v5 = [(GuidanceETA *)self _chargeImageAttachmentWithFont:fontCopy];
  arrivalTimeString = [(GuidanceETA *)self arrivalTimeString];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"00:00 arrival with X%" value:@"localized string not found" table:0];
  arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v8, arrivalTimeString, [arrivalBatteryCharge integerValue]);

  v11 = [[NSAttributedString alloc] initWithString:v10];
  v12 = [v11 mutableCopy];

  string = [v12 string];
  v14 = [string rangeOfString:@"$1$@"];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 replaceCharactersInRange:v14 withAttributedString:{v16, v5}];
  }

  string2 = [v12 string];
  v18 = [string2 length];

  v22 = NSFontAttributeName;
  v23 = fontCopy;
  v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v12 addAttributes:v19 range:{0, v18}];

  v20 = [v12 copy];

  return v20;
}

- (id)extendedArrivalBatteryChargeStringWithFont:(id)font
{
  fontCopy = font;
  v5 = [(GuidanceETA *)self _chargeImageAttachmentWithFont:fontCopy];
  v6 = [v5 mutableCopy];

  v7 = [[NSAttributedString alloc] initWithString:@" "];
  [v6 appendAttributedString:v7];

  v8 = [NSAttributedString alloc];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[NavTray] Extended arrival battery charge format" value:@"localized string not found" table:0];
  arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v10, [arrivalBatteryCharge integerValue]);
  v13 = [v8 initWithString:v12];
  [v6 appendAttributedString:v13];

  string = [v6 string];
  v15 = [string length];

  v19 = NSFontAttributeName;
  v20 = fontCopy;
  v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  [v6 addAttributes:v16 range:{0, v15}];
  v17 = [v6 copy];

  return v17;
}

- (NSString)arrivalChargeString
{
  arrivalChargeString = self->_arrivalChargeString;
  if (!arrivalChargeString)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[NavTray] arrival charge percentage" value:@"localized string not found" table:0];
    arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [arrivalBatteryCharge integerValue]);
    v8 = self->_arrivalChargeString;
    self->_arrivalChargeString = v7;

    arrivalChargeString = self->_arrivalChargeString;
  }

  return arrivalChargeString;
}

- (NSString)shortArrivalChargeString
{
  shortArrivalChargeString = self->_shortArrivalChargeString;
  if (!shortArrivalChargeString)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[NavTray] short arrival charge percentage" value:@"localized string not found" table:0];
    arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [arrivalBatteryCharge integerValue]);
    v8 = self->_shortArrivalChargeString;
    self->_shortArrivalChargeString = v7;

    shortArrivalChargeString = self->_shortArrivalChargeString;
  }

  return shortArrivalChargeString;
}

- (BOOL)isVisuallyDistinctFromGuidanceETA:(id)a
{
  aCopy = a;
  if (!aCopy)
  {
    goto LABEL_3;
  }

  isEtaToFinalDestination = [(GuidanceETA *)self isEtaToFinalDestination];
  if (isEtaToFinalDestination != [aCopy isEtaToFinalDestination])
  {
    goto LABEL_3;
  }

  arrivalTimeString = [(GuidanceETA *)self arrivalTimeString];
  arrivalTimeString2 = [aCopy arrivalTimeString];
  v9 = arrivalTimeString;
  v10 = arrivalTimeString2;
  if (v9 | v10)
  {
    v11 = v10;
    v12 = [v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_3;
    }
  }

  timeValue = [(GuidanceETA *)self timeValue];
  timeValue2 = [aCopy timeValue];
  arrivalBatteryCharge = timeValue;
  arrivalBatteryCharge2 = timeValue2;
  if (arrivalBatteryCharge | arrivalBatteryCharge2)
  {
    v17 = [arrivalBatteryCharge isEqual:arrivalBatteryCharge2];

    if (!v17)
    {
LABEL_24:
      v6 = 1;
      goto LABEL_25;
    }
  }

  timeUnit = [(GuidanceETA *)self timeUnit];
  timeUnit2 = [aCopy timeUnit];
  v20 = timeUnit;
  v21 = timeUnit2;
  if (v20 | v21)
  {
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  timeUnitAccessibility = [(GuidanceETA *)self timeUnitAccessibility];
  timeUnitAccessibility2 = [aCopy timeUnitAccessibility];
  v25 = timeUnitAccessibility;
  v26 = timeUnitAccessibility2;
  if (v25 | v26)
  {
    v27 = [v25 isEqual:v26];

    if (!v27)
    {

      goto LABEL_23;
    }
  }

  v48 = v25;
  distanceValue = [(GuidanceETA *)self distanceValue];
  distanceValue2 = [aCopy distanceValue];
  v30 = distanceValue;
  v31 = distanceValue2;
  v32 = v30;
  v33 = v31;
  if (v30 | v31)
  {
    v34 = [v30 isEqual:v31];

    if (!v34)
    {

      goto LABEL_23;
    }
  }

  v46 = v32;
  v47 = v20;
  distanceUnit = [(GuidanceETA *)self distanceUnit];
  distanceUnit2 = [aCopy distanceUnit];
  v37 = distanceUnit;
  v38 = distanceUnit2;
  if (v37 | v38)
  {
    v39 = [v37 isEqual:v38];

    if (!v39)
    {

      goto LABEL_24;
    }
  }

  v45 = arrivalBatteryCharge;
  distanceUnitAccessibility = [(GuidanceETA *)self distanceUnitAccessibility];
  distanceUnitAccessibility2 = [aCopy distanceUnitAccessibility];
  if (distanceUnitAccessibility | distanceUnitAccessibility2)
  {
    v44 = [distanceUnitAccessibility isEqual:distanceUnitAccessibility2] ^ 1;
  }

  else
  {
    LOBYTE(v44) = 0;
  }

  if ((v44 & 1) == 0)
  {
    arrivalBatteryCharge = [(GuidanceETA *)self arrivalBatteryCharge];
    integerValue = [arrivalBatteryCharge integerValue];
    arrivalBatteryCharge2 = [aCopy arrivalBatteryCharge];
    v6 = integerValue != [arrivalBatteryCharge2 integerValue];
LABEL_25:

    goto LABEL_26;
  }

LABEL_3:
  v6 = 1;
LABEL_26:

  return v6;
}

@end