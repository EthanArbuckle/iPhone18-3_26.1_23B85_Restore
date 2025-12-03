@interface UIDateLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation UIDateLabelAccessibility

- (id)accessibilityLabel
{
  selfCopy = self;
  v32 = a2;
  v16 = [(UIDateLabelAccessibility *)self safeValueForKey:@"use24HourTime"];
  bOOLValue = [v16 BOOLValue];
  v17 = [(UIDateLabelAccessibility *)selfCopy safeValueForKey:@"timeDesignatorAppearsBeforeTime", MEMORY[0x29EDC9740](v16).n128_f64[0]];
  bOOLValue2 = [v17 BOOLValue];
  v18 = [(UIDateLabelAccessibility *)selfCopy safeValueForKey:@"timeInterval", MEMORY[0x29EDC9740](v17).n128_f64[0]];
  [v18 doubleValue];
  v19 = v2;
  MEMORY[0x29EDC9740](v18);
  v29 = v19;
  v28 = [(UIDateLabelAccessibility *)selfCopy safeStringForKey:@"text"];
  v27 = [(UIDateLabelAccessibility *)selfCopy safeStringForKey:@"timeDesignator"];
  location = 0;
  if ((bOOLValue & 1) != 0 || !v27)
  {
    objc_storeStrong(&location, v28);
  }

  else if (v28)
  {
    if (bOOLValue2)
    {
      v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v27, v28];
    }

    else
    {
      v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v28, v27];
    }

    v5 = location;
    location = v4;
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  }

  else
  {
    objc_storeStrong(&location, v27);
  }

  date = [MEMORY[0x29EDB8DB0] date];
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  timeZone = [currentCalendar timeZone];
  v23 = [currentCalendar componentsInTimeZone:? fromDate:?];
  [v23 setHour:MEMORY[0x29EDC9740](timeZone).n128_f64[0]];
  [v23 setMinute:0];
  [v23 setSecond:0];
  date2 = [v23 date];
  [date2 timeIntervalSinceReferenceDate];
  v13 = v6;
  MEMORY[0x29EDC9740](date2);
  v22 = v13;
  [v23 setDay:{objc_msgSend(v23, "day") + 1}];
  date3 = [v23 date];
  [date3 timeIntervalSinceReferenceDate];
  v15 = v7;
  MEMORY[0x29EDC9740](date3);
  v21 = v15;
  v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:location];
  v8 = v29;
  if (v29 < v13 || (v8 = v29, v29 >= v21))
  {
    [v20 setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD898], v8}];
  }

  else
  {
    [v20 setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD888], v29}];
  }

  v10 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&currentCalendar, 0);
  objc_storeStrong(&date, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);

  return v10;
}

@end