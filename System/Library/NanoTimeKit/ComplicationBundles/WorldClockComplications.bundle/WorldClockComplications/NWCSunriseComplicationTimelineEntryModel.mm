@interface NWCSunriseComplicationTimelineEntryModel
+ (id)_attributedDisplayNameWithLocationGlyph:(id)glyph inFont:(id)font;
+ (id)currentEventEntryModelWithEntryAndEventDate:(id)date atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun animationGroup:(id)group device:(id)device;
+ (id)entryModelWithEntryDate:(id)date eventDate:(id)eventDate atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun animationGroup:(id)group device:(id)self0;
+ (id)placeholderEntryModelWithEntryDate:(id)date animationGroup:(id)group device:(id)device;
- (BOOL)isNormalUpcomingEvent;
- (NWCSunriseComplicationTimelineEntryModel)initWithEntryDate:(id)date eventDate:(id)eventDate atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun currentEvent:(BOOL)event animationGroup:(id)self0 device:(id)self1;
- (id)_circularTemplateIsMedium:(BOOL)medium;
- (id)_eventTimeAndCountdownAbbreviated:(BOOL)abbreviated suppressCountdown:(BOOL)countdown suppressCommaSeparator:(BOOL)separator;
- (id)_extraLargeTemplate;
- (id)_graphicCircularTemplate;
- (id)_graphicCornerTemplate;
- (id)_graphicExtraLargeTemplate;
- (id)_graphicRectangularTemplate;
- (id)_imageProviderForImageSymbolName:(id)name imageAssetNamePrefix:(id)prefix;
- (id)_largeModularTemplate;
- (id)_smallModularTemplate;
- (id)_smallUtilityTemplate;
- (id)_swapPlaceholderString:(id)string withTimeStringForDate:(id)date inString:(id)inString usingBaseFont:(id)font smallCapsBaseFont:(id)baseFont;
- (id)description;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NWCSunriseComplicationTimelineEntryModel

+ (id)currentEventEntryModelWithEntryAndEventDate:(id)date atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun animationGroup:(id)group device:(id)device
{
  deviceCopy = device;
  groupCopy = group;
  shiftedLocationCopy = shiftedLocation;
  nameCopy = name;
  locationCopy = location;
  dateCopy = date;
  LOBYTE(v24) = 1;
  v22 = [[self alloc] initWithEntryDate:dateCopy eventDate:dateCopy atLocation:locationCopy withDisplayName:nameCopy chinaShiftedLocation:shiftedLocationCopy constantSun:sun currentEvent:v24 animationGroup:groupCopy device:deviceCopy];

  return v22;
}

+ (id)entryModelWithEntryDate:(id)date eventDate:(id)eventDate atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun animationGroup:(id)group device:(id)self0
{
  deviceCopy = device;
  groupCopy = group;
  shiftedLocationCopy = shiftedLocation;
  nameCopy = name;
  locationCopy = location;
  eventDateCopy = eventDate;
  dateCopy = date;
  LOBYTE(v26) = 0;
  v24 = [[self alloc] initWithEntryDate:dateCopy eventDate:eventDateCopy atLocation:locationCopy withDisplayName:nameCopy chinaShiftedLocation:shiftedLocationCopy constantSun:sun currentEvent:v26 animationGroup:groupCopy device:deviceCopy];

  return v24;
}

+ (id)placeholderEntryModelWithEntryDate:(id)date animationGroup:(id)group device:(id)device
{
  deviceCopy = device;
  groupCopy = group;
  dateCopy = date;
  LOBYTE(v13) = 0;
  v11 = [[self alloc] initWithEntryDate:dateCopy eventDate:0 atLocation:0 withDisplayName:0 chinaShiftedLocation:0 constantSun:0 currentEvent:v13 animationGroup:groupCopy device:deviceCopy];

  return v11;
}

- (NWCSunriseComplicationTimelineEntryModel)initWithEntryDate:(id)date eventDate:(id)eventDate atLocation:(id)location withDisplayName:(id)name chinaShiftedLocation:(id)shiftedLocation constantSun:(int64_t)sun currentEvent:(BOOL)event animationGroup:(id)self0 device:(id)self1
{
  eventDateCopy = eventDate;
  locationCopy = location;
  nameCopy = name;
  shiftedLocationCopy = shiftedLocation;
  groupCopy = group;
  deviceCopy = device;
  v27.receiver = self;
  v27.super_class = NWCSunriseComplicationTimelineEntryModel;
  v19 = [(NWCComplicationTimelineEntryModel *)&v27 initWithEntryDate:date];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_location, location);
    objc_storeStrong(&v20->_locationName, name);
    objc_storeStrong(&v20->_chinaShiftedLocation, shiftedLocation);
    v20->_constantSun = sun;
    v20->_currentEvent = event;
    objc_storeStrong(&v20->_eventDate, eventDate);
    objc_storeStrong(&v20->_animationGroup, group);
    objc_storeStrong(&v20->_device, device);
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  locationName = [(NWCSunriseComplicationTimelineEntryModel *)self locationName];
  eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
  v7 = [v3 stringWithFormat:@"%@ in %@ at %@. constantSun: %ld.", v4, locationName, eventDate, -[NWCSunriseComplicationTimelineEntryModel constantSun](self, "constantSun")];

  return v7;
}

- (id)templateForComplicationFamily:(int64_t)family
{
  v6 = sub_23BDD9068(v3);
  if (**(v7 + 3760) == v5)
  {
    v8 = 1;
LABEL_3:
    _smallModularTemplate = [v4 _largeUtilityTemplateSuppressCountdown:{v8, v6}];
    goto LABEL_7;
  }

  v10 = v5;
  if (*MEMORY[0x277CBB668] == v5)
  {
    v11 = 1;
LABEL_6:
    _smallModularTemplate = [v4 _circularTemplateIsMedium:{v11, v6}];
    goto LABEL_7;
  }

  if (v5 <= 5)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        _smallModularTemplate = [v4 _smallModularTemplate];
        goto LABEL_7;
      }

      if (v5 == 1)
      {
        _smallModularTemplate = [v4 _largeModularTemplate];
        goto LABEL_7;
      }
    }

    else
    {
      switch(v5)
      {
        case 2:
          goto LABEL_28;
        case 3:
          v8 = 0;
          goto LABEL_3;
        case 4:
          v11 = 0;
          goto LABEL_6;
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5 != 6)
      {
        if (v5 == 7)
        {
          _smallModularTemplate = [v4 _extraLargeTemplate];
          goto LABEL_7;
        }

        if (v5 == 8)
        {
          _smallModularTemplate = [v4 _graphicCornerTemplate];
          goto LABEL_7;
        }

        goto LABEL_34;
      }

LABEL_28:
      _smallModularTemplate = [v4 _smallUtilityTemplate];
      goto LABEL_7;
    }

    switch(v5)
    {
      case 10:
        _smallModularTemplate = [v4 _graphicCircularTemplate];
        goto LABEL_7;
      case 11:
        _smallModularTemplate = [v4 _graphicRectangularTemplate];
        goto LABEL_7;
      case 12:
        _smallModularTemplate = [v4 _graphicExtraLargeTemplate];
        goto LABEL_7;
    }
  }

LABEL_34:
  v13 = NTALogForCategory(6uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_23BDD862C(v10, v13);
  }

  _smallModularTemplate = 0;
LABEL_7:

  return _smallModularTemplate;
}

- (id)_eventTimeAndCountdownAbbreviated:(BOOL)abbreviated suppressCountdown:(BOOL)countdown suppressCommaSeparator:(BOOL)separator
{
  separatorCopy = separator;
  abbreviatedCopy = abbreviated;
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v10 = [MEMORY[0x277CBBBB8] textProviderWithDate:eventDate];
    if (countdown)
    {
      goto LABEL_20;
    }

    if ([(NWCSunriseComplicationTimelineEntryModel *)self isCurrentEvent])
    {
      v11 = MEMORY[0x277CBBB88];
      v12 = NWCComplicationLocalizedString(@"COUNTDOWN_NOW", @"Now", 0);
      currentLocale = [v11 textProviderWithText:v12];
    }

    else
    {
      if (abbreviatedCopy)
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      currentLocale = [MEMORY[0x277CBBB60] textProviderWithDate:eventDate style:v19 units:96];
    }

    if (separatorCopy)
    {
      v20 = @"%@ %@";
    }

    else
    {
      v20 = @"%@, %@";
    }

    v21 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v20, v10, currentLocale];

    v10 = v21;
  }

  else if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v14 = @"SUNRISE_SUNUP";
    }

    else
    {
      v14 = @"SUNRISE_SUNDOWN";
    }

    eventDate = NWCComplicationLocalizedString(v14, @"up down", 0);
    v15 = MEMORY[0x277CBBB88];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [eventDate uppercaseStringWithLocale:currentLocale];
    v10 = [v15 textProviderWithText:v16];
  }

  else
  {
    v17 = NWCComplicationLocalizedString(@"SUNRISE_SUNRISE_SUNSET", @"Sunrise/Sunset", 0);
    eventDate = [v17 localizedUppercaseString];

    v18 = NWCComplicationLocalizedString(@"SUNRISE_SUNRISE_SUNSET_SHORT", @"Sunrise/set", 0);
    currentLocale = [v18 localizedUppercaseString];

    v10 = [MEMORY[0x277CBBB88] textProviderWithText:eventDate shortText:currentLocale];
  }

LABEL_20:

  return v10;
}

- (id)_swapPlaceholderString:(id)string withTimeStringForDate:(id)date inString:(id)inString usingBaseFont:(id)font smallCapsBaseFont:(id)baseFont
{
  v43[1] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  inStringCopy = inString;
  dateCopy = date;
  stringCopy = string;
  cLKFontWithLocalizedSmallCaps = [baseFont CLKFontWithLocalizedSmallCaps];
  v16 = MEMORY[0x277CCA898];
  v42 = *MEMORY[0x277CBB6D0];
  v17 = v42;
  v43[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v19 = [v16 NTKTimeWithDate:dateCopy andDesignatorAttributes:v18 timeZone:0 options:0];

  v20 = [v19 mutableCopy];
  [v20 beginEditing];
  v21 = [v20 length];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = sub_23BDD0F34;
  v36 = &unk_278B99958;
  v22 = v20;
  v37 = v22;
  v23 = cLKFontWithLocalizedSmallCaps;
  v38 = v23;
  v24 = fontCopy;
  v39 = v24;
  [v22 enumerateAttribute:v17 inRange:0 options:v21 usingBlock:{0x100000, &v33}];
  [v22 endEditing];
  v25 = [inStringCopy rangeOfString:stringCopy];
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x277CCAB48]);
  v40 = *MEMORY[0x277D740A8];
  v41 = v24;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v30 = [v28 initWithString:inStringCopy attributes:v29];

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v30 replaceCharactersInRange:v25 withAttributedString:{v27, v22}];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_imageProviderForImageSymbolName:(id)name imageAssetNamePrefix:(id)prefix
{
  nameCopy = name;
  prefixCopy = prefix;
  if ((-[CLKDevice isRunningGloryGMOrLater](self->_device, "isRunningGloryGMOrLater") & 1) != 0 || (NWCPreGloryComplicationImageNamed(prefixCopy), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v8], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:nameCopy];
  }

  return v10;
}

- (id)_largeModularTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v4 = @"SUNRISE_SUNRISE";
    }

    else
    {
      v4 = @"SUNRISE_SUNSET";
    }

    v5 = NWCComplicationLocalizedString(v4, @"Sunrise | Sunset", 0);
    v6 = [v5 stringByAppendingFormat:@" %@", @"%@"];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_23BDD1578;
    v51[3] = &unk_278B99980;
    v51[4] = self;
    v52 = @"%@";
    v7 = eventDate;
    v53 = v7;
    v8 = MEMORY[0x23EEBDCB0](v51);
    v10 = sub_23BDD911C(v9);
    v12 = [*(v11 + 152) textProviderWithText:v6 overrideBlock:{v8, v10}];
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isCurrentEvent])
    {
      v13 = MEMORY[0x277CBBB88];
      v14 = NWCComplicationLocalizedString(@"COUNTDOWN_NOW", @"Now", 0);
      location = [v13 textProviderWithText:v14];
    }

    else
    {
      location = [MEMORY[0x277CBBB60] textProviderWithDate:v7 style:0 units:96];
    }
  }

  else
  {
    isConstantSunEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent];
    v17 = NWCComplicationLocalizedString(@"SUNRISE_SUNRISE_SUNSET", @"Sunrise/Sunset", 0);
    v12 = [MEMORY[0x277CBBB88] textProviderWithText:v17];
    if (isConstantSunEvent)
    {
      location = [(NWCSunriseComplicationTimelineEntryModel *)self location];

      if (location)
      {
        if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
        {
          v18 = @"SUNRISE_SUNUP";
        }

        else
        {
          v18 = @"SUNRISE_SUNDOWN";
        }

        v19 = NWCComplicationLocalizedString(v18, @"no event", 0);
        location = [MEMORY[0x277CBBB88] textProviderWithText:v19];
      }
    }

    else
    {
      location = [MEMORY[0x277CBBB88] textProviderWithText:@" "];
    }
  }

  locationName = [(NWCSunriseComplicationTimelineEntryModel *)self locationName];
  if ([(__CFString *)locationName length])
  {
    v21 = MEMORY[0x277CBBB88];
    v22 = locationName;
LABEL_19:
    v23 = [v21 textProviderWithText:v22];
    goto LABEL_22;
  }

  location2 = [(NWCSunriseComplicationTimelineEntryModel *)self location];

  if (!location2)
  {
    v21 = MEMORY[0x277CBBB88];
    v22 = @" ";
    goto LABEL_19;
  }

  v25 = NWCComplicationLocalizedString(@"SUNRISE_UNKNOWN_LOCATION_FORMAT", @"unknown location format", 0);
  location3 = [(NWCSunriseComplicationTimelineEntryModel *)self location];
  v50 = sub_23BDD8FB8(v27);

  v28 = MEMORY[0x277CCACA8];
  v30 = sub_23BDD90B0(v29);
  v32 = **(v31 + 3912);
  v33 = [v50 objectForKeyedSubscript:{v32, v30}];
  v35 = sub_23BDD90D4(v34);
  v37 = **(v36 + 3920);
  v38 = [v50 objectForKeyedSubscript:{v37, v35}];
  v39 = [v28 localizedStringWithFormat:v25, v33, v38];

  location4 = [(NWCSunriseComplicationTimelineEntryModel *)self location];
  v42 = sub_23BDD8FE4(v41);

  v43 = MEMORY[0x277CCACA8];
  v44 = [v42 objectForKeyedSubscript:v32];
  v45 = [v42 objectForKeyedSubscript:v37];
  v46 = [v43 localizedStringWithFormat:v25, v44, v45];

  v23 = [MEMORY[0x277CBBB88] textProviderWithText:v39 shortText:v46];

LABEL_22:
  [v23 setItalicized:1];
  v47 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v12 body1TextProvider:location body2TextProvider:v23];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v47 setTintColor:systemOrangeColor];

  return v47;
}

- (id)_smallModularTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v4 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v4 = @"sunrise.fill";
    }

    v5 = v4;
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v7 = @"modularSunset";
    if (isSunriseEvent2)
    {
      v7 = @"modularSunrise";
    }

    v8 = v7;
    v9 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v11 = [v9 textProviderWithDate:eventDate];

    [v11 setDisallowBothMinutesAndDesignator:1];
  }

  else if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent3 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v13 = @"sunset.fill";
    if (isSunriseEvent3)
    {
      v13 = @"sunrise.fill";
    }

    v5 = v13;
    isSunriseEvent4 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v15 = @"modularSunset";
    if (isSunriseEvent4)
    {
      v15 = @"modularSunrise";
    }

    v8 = v15;
    v16 = MEMORY[0x277CBBB88];
    v17 = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v11 = [v16 textProviderWithText:v17];
  }

  else
  {
    v18 = MEMORY[0x277CBBB88];
    v19 = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v11 = [v18 textProviderWithText:v19];

    v5 = @"sunrise.fill";
    v8 = @"modularSunrise";
  }

  v20 = [(NWCSunriseComplicationTimelineEntryModel *)self _imageProviderForImageSymbolName:v5 imageAssetNamePrefix:v8];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v20 setTintColor:systemOrangeColor];

  v22 = [MEMORY[0x277CBBA68] templateWithLine1ImageProvider:v20 line2TextProvider:v11];
  systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
  [v22 setTintColor:systemOrangeColor2];

  return v22;
}

- (id)_circularTemplateIsMedium:(BOOL)medium
{
  mediumCopy = medium;
  if (medium)
  {
    v5 = @"victoryNTK";
  }

  else
  {
    v5 = @"colorAnalog";
  }

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v7 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v7 = @"sunrise.fill";
    }

    v8 = v7;
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v9 = @"Sunrise";
    }

    else
    {
      v9 = @"Sunset";
    }

    v10 = [(__CFString *)v5 stringByAppendingString:v9];
    v11 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v13 = [v11 textProviderWithDate:eventDate];

    [v13 setDisallowBothMinutesAndDesignator:1];
    [v13 setPrefersDesignatorToMinutes:1];
  }

  else if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v15 = @"sunset.fill";
    if (isSunriseEvent2)
    {
      v15 = @"sunrise.fill";
    }

    v8 = v15;
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v16 = @"Sunrise";
    }

    else
    {
      v16 = @"Sunset";
    }

    v10 = [(__CFString *)v5 stringByAppendingString:v16];
    v17 = MEMORY[0x277CBBB88];
    v18 = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v13 = [v17 textProviderWithText:v18];
  }

  else
  {
    v10 = [(__CFString *)v5 stringByAppendingString:@"SunriseSunset"];
    v19 = MEMORY[0x277CBBB88];
    v20 = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v13 = [v19 textProviderWithText:v20];

    v8 = @"sun.and.horizon.fill";
  }

  v21 = [(NWCSunriseComplicationTimelineEntryModel *)self _imageProviderForImageSymbolName:v8 imageAssetNamePrefix:v10];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v21 setTintColor:systemOrangeColor];

  v23 = 0x277CBB758;
  if (!mediumCopy)
  {
    v23 = 0x277CBB7A0;
  }

  v24 = [*v23 templateWithLine1ImageProvider:v21 line2TextProvider:v13];

  return v24;
}

- (id)_smallUtilityTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v4 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v4 = @"sunrise.fill";
    }

    v5 = v4;
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v7 = @"analogSunset";
    if (isSunriseEvent2)
    {
      v7 = @"analogSunrise";
    }

    v8 = v7;
    v9 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v11 = [v9 textProviderWithDate:eventDate];
LABEL_13:
    v17 = v11;
    goto LABEL_15;
  }

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent3 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v13 = @"sunset.fill";
    if (isSunriseEvent3)
    {
      v13 = @"sunrise.fill";
    }

    v5 = v13;
    isSunriseEvent4 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v15 = @"analogSunset";
    if (isSunriseEvent4)
    {
      v15 = @"analogSunrise";
    }

    v8 = v15;
    v16 = MEMORY[0x277CBBB88];
    eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v11 = [v16 textProviderWithText:eventDate];
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBBB88];
  eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
  v17 = [v18 textProviderWithText:eventDate];
  v5 = @"sun.and.horizon.fill";
  v8 = @"analogSunriseSunset";
LABEL_15:

  v19 = [(NWCSunriseComplicationTimelineEntryModel *)self _imageProviderForImageSymbolName:v5 imageAssetNamePrefix:v8];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v19 setTintColor:systemOrangeColor];

  v21 = [MEMORY[0x277CBBA90] templateWithTextProvider:v17 imageProvider:v19];

  return v21;
}

- (id)_graphicCircularTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v4 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v4 = @"sunrise.fill";
    }

    v5 = v4;
    v6 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v8 = [v6 textProviderWithDate:eventDate];
LABEL_9:
    v12 = v8;
    goto LABEL_11;
  }

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v10 = @"sunset.fill";
    if (isSunriseEvent2)
    {
      v10 = @"sunrise.fill";
    }

    v5 = v10;
    v11 = MEMORY[0x277CBBB88];
    eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v8 = [v11 textProviderWithText:eventDate];
    goto LABEL_9;
  }

  v13 = MEMORY[0x277CBBB88];
  eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
  v12 = [v13 textProviderWithText:eventDate];
  v5 = @"sun.and.horizon.fill";
LABEL_11:

  v14 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:v5];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v14 setTintColor:systemOrangeColor];

  v16 = [MEMORY[0x277CBB890] templateWithLine1ImageProvider:v14 line2TextProvider:v12];

  return v16;
}

- (id)_extraLargeTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v4 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v4 = @"sunrise.fill";
    }

    v5 = v4;
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v7 = @"XLmodularSunset";
    if (isSunriseEvent2)
    {
      v7 = @"XLmodularSunrise";
    }

    v8 = v7;
    v9 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v11 = [v9 textProviderWithDate:eventDate];
LABEL_13:
    v17 = v11;
    goto LABEL_15;
  }

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent3 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v13 = @"sunset.fill";
    if (isSunriseEvent3)
    {
      v13 = @"sunrise.fill";
    }

    v5 = v13;
    isSunriseEvent4 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v15 = @"XLmodularSunset";
    if (isSunriseEvent4)
    {
      v15 = @"XLmodularSunrise";
    }

    v8 = v15;
    v16 = MEMORY[0x277CBBB88];
    eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v11 = [v16 textProviderWithText:eventDate];
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBBB88];
  eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
  v17 = [v18 textProviderWithText:eventDate];
  v5 = @"sunrise.fill";
  v8 = @"XLmodularSunrise";
LABEL_15:

  v19 = [(NWCSunriseComplicationTimelineEntryModel *)self _imageProviderForImageSymbolName:v5 imageAssetNamePrefix:v8];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v19 setTintColor:systemOrangeColor];

  v21 = [MEMORY[0x277CBB800] templateWithLine1ImageProvider:v19 line2TextProvider:v17];

  return v21;
}

- (id)_graphicExtraLargeTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v4 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v4 = @"sunrise.fill";
    }

    v5 = v4;
    v6 = MEMORY[0x277CBBBB8];
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    v8 = [v6 textProviderWithDate:eventDate];
LABEL_9:
    v12 = v8;
    goto LABEL_11;
  }

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent2 = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v10 = @"sunset.fill";
    if (isSunriseEvent2)
    {
      v10 = @"sunrise.fill";
    }

    v5 = v10;
    v11 = MEMORY[0x277CBBB88];
    eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
    v8 = [v11 textProviderWithText:eventDate];
    goto LABEL_9;
  }

  v13 = MEMORY[0x277CBBB88];
  eventDate = NWCComplicationLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒", 0);
  v12 = [v13 textProviderWithText:eventDate];
  v5 = @"sunrise.fill";
LABEL_11:

  v14 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:v5];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v14 setTintColor:systemOrangeColor];

  v16 = [MEMORY[0x277CBB978] templateWithLine1ImageProvider:v14 line2TextProvider:v12];

  return v16;
}

- (id)_graphicCornerTemplate
{
  v3 = [(NWCSunriseComplicationTimelineEntryModel *)self _eventTimeAndCountdownAbbreviated:1 suppressCountdown:0 suppressCommaSeparator:0];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v3 setTintColor:systemOrangeColor];

  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent]|| [(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent])
  {
    isSunriseEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent];
    v6 = @"sunset.fill";
    if (isSunriseEvent)
    {
      v6 = @"sunrise.fill";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"sun.and.horizon.fill";
  }

  v8 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:v7];
  systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
  [v8 setTintColor:systemOrangeColor2];

  v10 = [MEMORY[0x277CBB908] templateWithTextProvider:v3 imageProvider:v8];

  return v10;
}

- (id)_graphicRectangularTemplate
{
  if ([(NWCSunriseComplicationTimelineEntryModel *)self isNormalUpcomingEvent])
  {
    eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v4 = @"SUNRISE_SUNRISE";
    }

    else
    {
      v4 = @"SUNRISE_SUNSET";
    }

    v5 = NWCComplicationLocalizedString(v4, @"Sunrise | Sunset", 0);
    v6 = [v5 stringByAppendingFormat:@" %@", @"%@"];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_23BDD2A94;
    v60[3] = &unk_278B99980;
    v60[4] = self;
    v61 = @"%@";
    v7 = eventDate;
    v62 = v7;
    v8 = MEMORY[0x23EEBDCB0](v60);
    v10 = sub_23BDD911C(v9);
    v12 = [*(v11 + 152) textProviderWithText:v6 overrideBlock:{v8, v10}];

    if ([(NWCSunriseComplicationTimelineEntryModel *)self isCurrentEvent])
    {
      v13 = MEMORY[0x277CBBB88];
      v14 = NWCComplicationLocalizedString(@"COUNTDOWN_NOW", @"Now", 0);
      location = [v13 textProviderWithText:v14];

LABEL_15:
      goto LABEL_17;
    }

    v20 = [MEMORY[0x277CBBB60] textProviderWithDate:v7 style:0 units:96];
LABEL_14:
    location = v20;
    goto LABEL_15;
  }

  isConstantSunEvent = [(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent];
  v17 = NWCComplicationLocalizedString(@"SUNRISE_SUNRISE_SUNSET", @"Sunrise/Sunset", 0);
  v12 = [MEMORY[0x277CBBB88] textProviderWithText:v17];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v12 setTintColor:systemOrangeColor];

  if (isConstantSunEvent)
  {
    location = [(NWCSunriseComplicationTimelineEntryModel *)self location];

    if (!location)
    {
      goto LABEL_17;
    }

    if ([(NWCSunriseComplicationTimelineEntryModel *)self isSunriseEvent])
    {
      v19 = @"SUNRISE_SUNUP";
    }

    else
    {
      v19 = @"SUNRISE_SUNDOWN";
    }

    v7 = NWCComplicationLocalizedString(v19, @"no event", 0);
    v20 = [MEMORY[0x277CBBB88] textProviderWithText:v7];
    goto LABEL_14;
  }

  location = [MEMORY[0x277CBBB88] textProviderWithText:@" "];
LABEL_17:
  locationName = [(NWCSunriseComplicationTimelineEntryModel *)self locationName];
  if ([locationName length])
  {
    v22 = [MEMORY[0x277CBBB88] textProviderWithText:locationName];
    grayColor = [MEMORY[0x277D75348] grayColor];
    [v22 setTintColor:grayColor];

    goto LABEL_29;
  }

  location2 = [(NWCSunriseComplicationTimelineEntryModel *)self location];

  if (!location2)
  {
    v22 = [MEMORY[0x277CBBB88] textProviderWithText:@" "];
    goto LABEL_29;
  }

  location3 = [(NWCSunriseComplicationTimelineEntryModel *)self location];
  v26 = NWCShouldChinaShiftCoordinates(location3);

  v58 = v12;
  if (v26)
  {
    chinaShiftedLocation = [(NWCSunriseComplicationTimelineEntryModel *)self chinaShiftedLocation];

    v28 = NTALogForCategory(6uLL);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (!chinaShiftedLocation)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_23BDCF000, v28, OS_LOG_TYPE_DEFAULT, "Intentionally not displaying the location coordinates (shifted or actual) for this China regulatory case. Shifted coordinates must not be done (asynchronously) calculating yet.", buf, 2u);
      }

      v31 = 0;
      goto LABEL_28;
    }

    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_23BDCF000, v28, OS_LOG_TYPE_DEFAULT, "Displaying shifted location coordinates for this China regulatory case.", buf, 2u);
    }

    chinaShiftedLocation2 = [(NWCSunriseComplicationTimelineEntryModel *)self chinaShiftedLocation];
  }

  else
  {
    chinaShiftedLocation2 = [(NWCSunriseComplicationTimelineEntryModel *)self location];
  }

  v31 = chinaShiftedLocation2;
LABEL_28:
  v57 = v31;
  v32 = NWCComplicationLocalizedString(@"SUNRISE_UNKNOWN_LOCATION_FORMAT", @"unknown location format", 0);
  v34 = sub_23BDD8FB8(v33);
  v35 = MEMORY[0x277CCACA8];
  v37 = sub_23BDD90B0(v36);
  v39 = **(v38 + 3912);
  v41 = [v40 objectForKeyedSubscript:{v39, v37}];
  v43 = sub_23BDD90D4(v42);
  v45 = **(v44 + 3920);
  v46 = [v34 objectForKeyedSubscript:{v45, v43}];
  v47 = [v35 localizedStringWithFormat:v32, v41, v46];

  location4 = [(NWCSunriseComplicationTimelineEntryModel *)self location];
  v50 = sub_23BDD8FE4(v49);

  v51 = MEMORY[0x277CCACA8];
  v52 = [v50 objectForKeyedSubscript:v39];
  v53 = [v50 objectForKeyedSubscript:v45];
  v54 = [v51 localizedStringWithFormat:v32, v52, v53];

  v22 = [MEMORY[0x277CBBB88] textProviderWithText:v47 shortText:v54];

  v12 = v58;
LABEL_29:

  v55 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v12 body1TextProvider:location body2TextProvider:v22];

  return v55;
}

+ (id)_attributedDisplayNameWithLocationGlyph:(id)glyph inFont:(id)font
{
  fontCopy = font;
  block = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23BDD2D7C;
  v18 = &unk_278B999A8;
  v19 = fontCopy;
  v6 = qword_27E1C78D0;
  v7 = fontCopy;
  glyphCopy = glyph;
  if (v6 != -1)
  {
    dispatch_once(&qword_27E1C78D0, &block);
  }

  v9 = objc_alloc_init(MEMORY[0x277D74270]);
  [v9 setImage:qword_27E1C78C8];
  v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", glyphCopy, block, v16, v17, v18];

  v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
  [v12 insertAttributedString:v10 atIndex:0];
  [v12 addAttribute:*MEMORY[0x277D74078] value:&unk_284E905C0 range:{0, 1}];
  [v12 addAttribute:*MEMORY[0x277D740A8] value:v7 range:{0, objc_msgSend(v12, "length")}];
  v13 = [v12 copy];

  return v13;
}

- (BOOL)isNormalUpcomingEvent
{
  eventDate = [(NWCSunriseComplicationTimelineEntryModel *)self eventDate];
  if (eventDate)
  {
    v4 = ![(NWCSunriseComplicationTimelineEntryModel *)self isConstantSunEvent];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end