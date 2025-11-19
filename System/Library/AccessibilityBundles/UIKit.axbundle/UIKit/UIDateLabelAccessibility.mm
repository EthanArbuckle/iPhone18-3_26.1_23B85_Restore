@interface UIDateLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation UIDateLabelAccessibility

- (id)accessibilityLabel
{
  v33 = self;
  v32 = a2;
  v16 = [(UIDateLabelAccessibility *)self safeValueForKey:@"use24HourTime"];
  v31 = [v16 BOOLValue];
  v17 = [(UIDateLabelAccessibility *)v33 safeValueForKey:@"timeDesignatorAppearsBeforeTime", MEMORY[0x29EDC9740](v16).n128_f64[0]];
  v30 = [v17 BOOLValue];
  v18 = [(UIDateLabelAccessibility *)v33 safeValueForKey:@"timeInterval", MEMORY[0x29EDC9740](v17).n128_f64[0]];
  [v18 doubleValue];
  v19 = v2;
  MEMORY[0x29EDC9740](v18);
  v29 = v19;
  v28 = [(UIDateLabelAccessibility *)v33 safeStringForKey:@"text"];
  v27 = [(UIDateLabelAccessibility *)v33 safeStringForKey:@"timeDesignator"];
  location = 0;
  if ((v31 & 1) != 0 || !v27)
  {
    objc_storeStrong(&location, v28);
  }

  else if (v28)
  {
    if (v30)
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

  v25 = [MEMORY[0x29EDB8DB0] date];
  v24 = [MEMORY[0x29EDB8D98] currentCalendar];
  v11 = [v24 timeZone];
  v23 = [v24 componentsInTimeZone:? fromDate:?];
  [v23 setHour:MEMORY[0x29EDC9740](v11).n128_f64[0]];
  [v23 setMinute:0];
  [v23 setSecond:0];
  v12 = [v23 date];
  [v12 timeIntervalSinceReferenceDate];
  v13 = v6;
  MEMORY[0x29EDC9740](v12);
  v22 = v13;
  [v23 setDay:{objc_msgSend(v23, "day") + 1}];
  v14 = [v23 date];
  [v14 timeIntervalSinceReferenceDate];
  v15 = v7;
  MEMORY[0x29EDC9740](v14);
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
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);

  return v10;
}

@end