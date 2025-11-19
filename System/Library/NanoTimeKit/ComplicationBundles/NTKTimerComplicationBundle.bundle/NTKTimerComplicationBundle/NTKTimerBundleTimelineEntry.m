@interface NTKTimerBundleTimelineEntry
+ (id)circularMediumImageProviderForDevice:(id)a3;
+ (id)circularSmallImageProviderForDevice:(id)a3;
+ (id)extraLargeImageProviderForDevice:(id)a3;
+ (id)fullColorSymbolImageProviderForDevice:(id)a3 withOverridePointSize:(double)a4;
+ (id)modularSmallImageProviderForDevice:(id)a3;
+ (id)utilitarianSmallImageProviderForDevice:(id)a3;
- (NTKTimerBundleTimelineEntry)initWithDevice:(id)a3;
- (id)_countdownTextProviderWithBaseDate:(id)a3;
- (id)_gaugeProviderForTimeAtState:(unint64_t)a3 tintColor:(id)a4;
- (id)_newCircularMediumTemplate;
- (id)_newCircularSmallTemplate;
- (id)_newExtraLargeTemplate;
- (id)_newLargeFlatUtilityTemplate;
- (id)_newLargeModularTemplate;
- (id)_newSignatureBezelTemplate;
- (id)_newSignatureCircularTemplate;
- (id)_newSignatureCornerGaugeImageTemplate;
- (id)_newSignatureExtraLargeCircularTemplate;
- (id)_newSignatureRectangular;
- (id)_newSignatureRectangularBodyRelativeDateTextProvider;
- (id)_newSignatureRectangularHeaderTextProvider;
- (id)_newSimpleTextTemplate;
- (id)_newSmallFlatUtilityTemplate;
- (id)_newSmallModularTemplate;
- (id)_relativeDateGaugeProviderForTimeInterval:(double)a3 fullDuration:(double)a4 paused:(BOOL)a5 tintColor:(id)a6;
- (id)_templateMetadata;
- (id)_titleTextProvider:(BOOL)a3;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKTimerBundleTimelineEntry

+ (id)circularMediumImageProviderForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 isRunningGloryGMOrLater];
  if (v4)
  {
    [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v3];
  }

  else
  {
    sub_3F8C(v4, v3);
  }
  v5 = ;

  return v5;
}

+ (id)circularSmallImageProviderForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 isRunningGloryGMOrLater];
  if (v4)
  {
    [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v3];
  }

  else
  {
    sub_4158(v4, v3);
  }
  v5 = ;

  return v5;
}

+ (id)extraLargeImageProviderForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 isRunningGloryGMOrLater];
  if (v4)
  {
    [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v3];
  }

  else
  {
    sub_4324(v4, v3);
  }
  v5 = ;

  return v5;
}

+ (id)modularSmallImageProviderForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 isRunningGloryGMOrLater];
  if (v4)
  {
    [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v3];
  }

  else
  {
    sub_44F0(v4, v3);
  }
  v5 = ;

  return v5;
}

+ (id)utilitarianSmallImageProviderForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 isRunningGloryGMOrLater];
  if (v4)
  {
    [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v3];
  }

  else
  {
    sub_46BC(v4, v3);
  }
  v5 = ;

  return v5;
}

- (NTKTimerBundleTimelineEntry)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKTimerBundleTimelineEntry;
  v6 = [(NTKTimerBundleTimelineEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)_templateMetadata
{
  v3 = +[NSMutableDictionary dictionary];
  state = self->_state;
  if (state == 2)
  {
    if ([(NTKTimerBundleTimelineEntry *)self isDefaultComplication])
    {
      v6 = &NTTimerComplicationMetadataStateValue_Stopped;
    }

    else
    {
      v6 = NTTimerComplicationMetadataStateValue_Paused;
    }

    v7 = *v6;
  }

  else
  {
    if (state == 3)
    {
      v5 = NTTimerComplicationMetadataStateValue_Running;
    }

    else
    {
      v5 = &NTTimerComplicationMetadataStateValue_Stopped;
    }

    v7 = *v5;
  }

  [v3 setObject:v7 forKeyedSubscript:@"NTKTimerComplicationMetadataStateKey"];
  [(NTKTimerBundleTimelineEntry *)self countdownDuration];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"NTKTimerComplicationMetadataDurationKey"];

  if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = +[CLKDate complicationDate];
    [(NTKTimerBundleTimelineEntry *)self remainingTime];
    v10 = [v9 dateByAddingTimeInterval:?];
    [v3 setObject:v10 forKeyedSubscript:@"NTKTimerComplicationMetadataTimerDateKey"];
    v11 = [(NTKTimerBundleTimelineEntry *)self _countdownTextProviderWithBaseDate:v9];
    [v3 setObject:v11 forKeyedSubscript:@"NTKTimerComplicationMetadataTextProviderKey"];
  }

  else
  {
    if ([(NTKTimerBundleTimelineEntry *)self isDefaultComplication])
    {
      goto LABEL_15;
    }

    [(NTKTimerBundleTimelineEntry *)self countdownDuration];
    v9 = [(NTKTimerBundleTimelineEntry *)self _relativeDateTextProviderForTimeInterval:1 paused:v12 > 600.0 twoDigitMinuteZeroPadding:?];
    [v3 setObject:v9 forKeyedSubscript:@"NTKTimerComplicationMetadataTextProviderKey"];
  }

LABEL_15:
  v13 = [NSNumber numberWithBool:[(NTKTimerBundleTimelineEntry *)self isDefaultComplication]];
  [v3 setObject:v13 forKeyedSubscript:@"NTKTimerComplicationMetaDataIsDefaultKey"];

  [(NTKTimerBundleTimelineEntry *)self remainingTime];
  v14 = [NSNumber numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:@"NTKTimerComplicationMetaDataRemainingPausedTimeKey"];

  return v3;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v4 = [(NTKTimerBundleTimelineEntry *)self _newCircularMediumTemplate];
    goto LABEL_3;
  }

  if (CLKComplicationFamilySimpleText == a3)
  {
    v7 = [(NTKTimerBundleTimelineEntry *)self _newSimpleTextTemplate];
  }

  else
  {
    v5 = 0;
    if (a3 <= 6)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v4 = [(NTKTimerBundleTimelineEntry *)self _newLargeFlatUtilityTemplate];
          goto LABEL_3;
        }

        if (a3 == 4)
        {
          v4 = [(NTKTimerBundleTimelineEntry *)self _newCircularSmallTemplate];
          goto LABEL_3;
        }

        if (a3 != 6)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!a3)
        {
          v4 = [(NTKTimerBundleTimelineEntry *)self _newSmallModularTemplate];
          goto LABEL_3;
        }

        if (a3 == 1)
        {
          v4 = [(NTKTimerBundleTimelineEntry *)self _newLargeModularTemplate];
          goto LABEL_3;
        }

        if (a3 != 2)
        {
          goto LABEL_4;
        }
      }

      v4 = [(NTKTimerBundleTimelineEntry *)self _newSmallFlatUtilityTemplate];
LABEL_3:
      v5 = v4;
LABEL_4:
      v6 = [(NTKTimerBundleTimelineEntry *)self _templateMetadata];
      [v5 setMetadata:v6];

      goto LABEL_8;
    }

    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v7 = [(NTKTimerBundleTimelineEntry *)self _newSignatureCircularTemplate];
          break;
        case 11:
          v4 = [(NTKTimerBundleTimelineEntry *)self _newSignatureRectangular];
          goto LABEL_3;
        case 12:
          v7 = [(NTKTimerBundleTimelineEntry *)self _newSignatureExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_4;
      }
    }

    else
    {
      if (a3 == 7)
      {
        v4 = [(NTKTimerBundleTimelineEntry *)self _newExtraLargeTemplate];
        goto LABEL_3;
      }

      if (a3 == 8)
      {
        v4 = [(NTKTimerBundleTimelineEntry *)self _newSignatureCornerGaugeImageTemplate];
        goto LABEL_3;
      }

      v7 = [(NTKTimerBundleTimelineEntry *)self _newSignatureBezelTemplate];
    }
  }

  v5 = v7;
LABEL_8:
  v8 = +[UIColor systemOrangeColor];
  [v5 setTintColor:v8];

  v9 = [CLKComplicationBackgroundDescriptor alloc];
  v10 = [UIColor colorWithRed:0.623529412 green:0.250980392 blue:0.0274509804 alpha:1.0];
  v11 = [v9 initWithBackgroundColor:v10];
  [v5 setBackgroundDescriptor:v11];

  return v5;
}

- (id)_countdownTextProviderWithBaseDate:(id)a3
{
  v4 = a3;
  [(NTKTimerBundleTimelineEntry *)self countdownDuration];
  v6 = v5;
  [(NTKTimerBundleTimelineEntry *)self remainingTime];
  v7 = [v4 dateByAddingTimeInterval:?];
  state = self->_state;
  v9 = [CLKRelativeDateTextProvider textProviderWithDate:v7 style:2 units:224];
  [v9 setPauseTimerAtZero:1];
  [v9 setTwoDigitMinuteZeroPadding:v6 > 600.0];
  if (state == 2)
  {
    [v9 setRelativeToDate:v4];
    [(NTKTimerBundleTimelineEntry *)self _updateTextProviderForAOTPaused:v9];
  }

  return v9;
}

- (id)_newSignatureCircularTemplate
{
  v2 = [(NTKTimerBundleTimelineEntry *)self _templateMetadata];
  v3 = [CLKComplicationTemplateGraphicCircularMetadata templateWithMetadata:v2];

  return v3;
}

- (id)_newSignatureExtraLargeCircularTemplate
{
  v2 = [(NTKTimerBundleTimelineEntry *)self _templateMetadata];
  v3 = [CLKComplicationTemplateGraphicExtraLargeCircularMetadata templateWithMetadata:v2];

  return v3;
}

- (id)_newSignatureBezelTemplate
{
  v2 = [(NTKTimerBundleTimelineEntry *)self _newSignatureCircularTemplate];
  v3 = +[UIColor systemOrangeColor];
  [v2 setTintColor:v3];

  v4 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v2];

  return v4;
}

- (id)_newSignatureRectangular
{
  v3 = +[UIColor systemOrangeColor];
  v4 = [(NTKTimerBundleTimelineEntry *)self device];
  v5 = [NTKTimerBundleTimelineEntry fullColorSymbolImageProviderForDevice:v4];

  v6 = [(NTKTimerBundleTimelineEntry *)self _newSignatureRectangularHeaderTextProvider];
  [v6 setTintColor:v3];
  if (*&self->_numPausedTimers != 0)
  {
    state = self->_state;
    v8 = NTKClockFaceLocalizedString();
    v15 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v8 twoDigitMinuteZeroPadding:0];

    v9 = self->_state;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v13 = NTKClockFaceLocalizedString();
        v11 = [CLKTextProvider textProviderWithFormat:v13, v15];

        v15 = v13;
        goto LABEL_11;
      }

      if (v9 != 4)
      {
        goto LABEL_12;
      }
    }

    else if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v10 = NTKClockFaceLocalizedString();
        v11 = [CLKTextProvider textProviderWithFormat:v10, v15];

        v15 = +[UIColor whiteColor];
        v12 = [v15 colorWithAlphaComponent:0.5];
        [v11 setTintColor:v12];

LABEL_11:
        v15 = v11;
      }

LABEL_12:
      v16 = [(NTKTimerBundleTimelineEntry *)self _gaugeProviderForTimeAtState:self->_state tintColor:v3];
      v18 = [CLKComplicationTemplateGraphicRectangularTextGauge templateWithHeaderImageProvider:v5 headerTextProvider:v6 body1TextProvider:v15 gaugeProvider:v16];
      goto LABEL_13;
    }

    v11 = [(NTKTimerBundleTimelineEntry *)self _newSignatureRectangularBodyRelativeDateTextProvider];
    goto LABEL_11;
  }

  v15 = [(NTKTimerBundleTimelineEntry *)self _newSignatureRectangularBodyRelativeDateTextProvider];
  v16 = [v3 colorWithAlphaComponent:0.25];
  v17 = [(NTKTimerBundleTimelineEntry *)self _gaugeProviderForTimeAtState:self->_state tintColor:v16];
  v18 = [CLKComplicationTemplateGraphicRectangularTextGauge templateWithHeaderImageProvider:v5 headerTextProvider:v6 body1TextProvider:v15 gaugeProvider:v17];

LABEL_13:
  return v18;
}

- (id)_newSignatureCornerGaugeImageTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry fullColorSymbolImageProviderForDevice:v3];

  state = self->_state;
  v6 = NTKClockFaceLocalizedString();
  v7 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v6];

  v8 = +[UIColor systemOrangeColor];
  [v7 setTintColor:v8];
  v9 = [(NTKTimerBundleTimelineEntry *)self _gaugeProviderForTimeAtState:self->_state tintColor:v8];
  v10 = [CLKComplicationTemplateGraphicCornerGaugeImage templateWithGaugeProvider:v9 leadingTextProvider:v7 trailingTextProvider:0 imageProvider:v4];

  return v10;
}

- (id)_newSmallModularTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry modularSmallImageProviderForDevice:v3];

  state = self->_state;
  v6 = NTKClockFaceLocalizedString();
  v7 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v6];

  v8 = [CLKComplicationTemplateModularSmallStackImage templateWithLine1ImageProvider:v4 line2TextProvider:v7];

  return v8;
}

- (id)_newLargeModularTemplate
{
  state = self->_state;
  if (state == 2)
  {
    goto LABEL_7;
  }

  if (state == 3)
  {
    v4 = [(NTKTimerBundleTimelineEntry *)self _titleTextProvider:0];
    goto LABEL_9;
  }

  if (![(NTKTimerBundleTimelineEntry *)self isDefaultComplication])
  {
LABEL_7:
    v5 = NTKClockFaceLocalizedString();
    v4 = [CLKSimpleTextProvider textProviderWithText:v5];
  }

  else
  {
    v5 = NTKClockFaceLocalizedString();
    v6 = NTKClockFaceLocalizedString();
    v4 = [CLKSimpleTextProvider textProviderWithText:v5 shortText:v6];
  }

LABEL_9:
  v7 = self->_state;
  v8 = NTKClockFaceLocalizedString();
  v9 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:v7 withUnknownText:v8];

  v10 = [(NTKTimerBundleTimelineEntry *)self device];
  v11 = [v10 supportsPDRCapability:3516830922];

  if (v11)
  {
    v12 = [(NTKTimerBundleTimelineEntry *)self device];
    v13 = [NTKTimerBundleTimelineEntry symbolImageProviderForDevice:v12];
    v14 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderImageProvider:v13 headerTextProvider:v4 bodyTextProvider:v9];
  }

  else
  {
    v14 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v4 bodyTextProvider:v9];
  }

  return v14;
}

- (id)_newCircularSmallTemplate
{
  if ((self->_state | 4) == 4)
  {
    v2 = [(NTKTimerBundleTimelineEntry *)self device];
    v3 = [NTKTimerBundleTimelineEntry circularSmallImageProviderForDevice:v2];

    [CLKComplicationTemplateCircularSmallSimpleImage templateWithImageProvider:v3];
  }

  else
  {
    v3 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:?];
    [CLKComplicationTemplateCircularSmallSimpleText templateWithTextProvider:v3];
  }
  v4 = ;

  return v4;
}

- (id)_newCircularMediumTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry circularMediumImageProviderForDevice:v3];

  v5 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:self->_state];
  v6 = [CLKComplicationTemplateCircularMediumStackImage templateWithLine1ImageProvider:v4 line2TextProvider:v5];

  return v6;
}

- (id)_newSmallFlatUtilityTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry utilitarianSmallImageProviderForDevice:v3];

  state = self->_state;
  v6 = NTKClockFaceLocalizedString();
  v7 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v6];

  v8 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v7 imageProvider:v4];

  return v8;
}

- (id)_newLargeFlatUtilityTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry utilitarianSmallImageProviderForDevice:v3];

  v5 = 0;
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      v14 = [(NTKTimerBundleTimelineEntry *)self title];

      if (!v14)
      {
        [(NTKTimerBundleTimelineEntry *)self remainingTime];
        v5 = [(NTKTimerBundleTimelineEntry *)self _relativeDateTextProviderForTimeInterval:0 paused:1 twoDigitMinuteZeroPadding:?];
        goto LABEL_15;
      }

      v8 = [(NTKTimerBundleTimelineEntry *)self _titleTextProvider:0];
      [(NTKTimerBundleTimelineEntry *)self remainingTime];
      v13 = [(NTKTimerBundleTimelineEntry *)self _relativeDateTextProviderForTimeInterval:0 paused:1 twoDigitMinuteZeroPadding:?];
      [CLKTextProvider textProviderWithFormat:@"%@ %@", v13, v8];
      goto LABEL_13;
    }

    if (state != 4)
    {
      goto LABEL_15;
    }

LABEL_8:
    if ([(NTKTimerBundleTimelineEntry *)self isDefaultComplication])
    {
      goto LABEL_9;
    }

    v11 = self->_state;
    v12 = NTKClockFaceLocalizedString();
    v13 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:v11 withUnknownText:v12 twoDigitMinuteZeroPadding:0];

    v8 = NTKClockFaceLocalizedString();
    [CLKTextProvider textProviderWithFormat:v8, v13, v17];
    v5 = LABEL_13:;

    goto LABEL_14;
  }

  if (state < 2)
  {
    goto LABEL_8;
  }

  if (state == 2)
  {
    v7 = [(NTKTimerBundleTimelineEntry *)self title];

    if (v7)
    {
      v8 = NTKClockFaceLocalizedString();
      v9 = [(NTKTimerBundleTimelineEntry *)self title];
      v10 = [NSString stringWithFormat:v8, v9];

      v5 = [CLKSimpleTextProvider textProviderWithText:v10];

LABEL_14:
      goto LABEL_15;
    }

LABEL_9:
    v8 = NTKClockFaceLocalizedString();
    v5 = [CLKSimpleTextProvider textProviderWithText:v8];
    goto LABEL_14;
  }

LABEL_15:
  v15 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v5 imageProvider:v4];

  return v15;
}

- (id)_newSimpleTextTemplate
{
  state = self->_state;
  v4 = NTKClockFaceLocalizedString();
  v5 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v4];

  v6 = [CLKComplicationTemplateSimpleText templateWithTextProvider:v5];
  v7 = [(NTKTimerBundleTimelineEntry *)self _templateMetadata];
  v8 = [v7 mutableCopy];

  [v8 setObject:&off_CFE8 forKeyedSubscript:NTKSimpleTextComplicationTypeMetadataKey];
  [v6 setMetadata:v8];

  return v6;
}

- (id)_newExtraLargeTemplate
{
  v3 = [(NTKTimerBundleTimelineEntry *)self device];
  v4 = [NTKTimerBundleTimelineEntry extraLargeImageProviderForDevice:v3];

  state = self->_state;
  v6 = NTKClockFaceLocalizedString();
  v7 = [(NTKTimerBundleTimelineEntry *)self _textProviderForTimeAtState:state withUnknownText:v6];

  v8 = [CLKComplicationTemplateExtraLargeStackImage templateWithLine1ImageProvider:v4 line2TextProvider:v7];

  return v8;
}

- (id)_gaugeProviderForTimeAtState:(unint64_t)a3 tintColor:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_9:
      v9 = 100.0;
      v10 = 0.0;
      v11 = self;
LABEL_12:
      v14 = 1;
LABEL_13:
      v7 = [(NTKTimerBundleTimelineEntry *)v11 _relativeDateGaugeProviderForTimeInterval:v14 fullDuration:v6 paused:v10 tintColor:v9];
      goto LABEL_14;
    }

    if (a3 != 1)
    {
      goto LABEL_14;
    }

    [(NTKTimerBundleTimelineEntry *)self countdownDuration];
LABEL_11:
    v12 = v8;
    [(NTKTimerBundleTimelineEntry *)self countdownDuration];
    v9 = v13;
    v11 = self;
    v10 = v12;
    goto LABEL_12;
  }

  switch(a3)
  {
    case 2uLL:
      [(NTKTimerBundleTimelineEntry *)self remainingTime];
      goto LABEL_11;
    case 3uLL:
      [(NTKTimerBundleTimelineEntry *)self remainingTime];
      v17 = v16;
      [(NTKTimerBundleTimelineEntry *)self countdownDuration];
      v9 = v18;
      v11 = self;
      v10 = v17;
      v14 = 0;
      goto LABEL_13;
    case 4uLL:
      goto LABEL_9;
  }

LABEL_14:

  return v7;
}

- (id)_relativeDateGaugeProviderForTimeInterval:(double)a3 fullDuration:(double)a4 paused:(BOOL)a5 tintColor:(id)a6
{
  v7 = a3 / a4;
  if (a3 <= 0.0 || a5)
  {
    v14 = a6;
    *&v15 = v7;
    v13 = [CLKSimpleGaugeProvider gaugeProviderWithStyle:1 gaugeColor:v14 fillFraction:v15];
  }

  else
  {
    v8 = a6;
    v9 = +[NSDate date];
    v10 = [v9 dateByAddingTimeInterval:a3];
    v17 = v8;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    *&v12 = v7;
    v13 = [CLKTimeIntervalGaugeProvider gaugeProviderWithStyle:1 gaugeColors:v11 gaugeColorLocations:0 startDate:v9 startFillFraction:v10 endDate:v12 endFillFraction:0.0];
  }

  return v13;
}

- (id)_newSignatureRectangularHeaderTextProvider
{
  v2 = self->_numPausedTimers + self->_numRunningTimers;
  if (v2 == 1)
  {
    [(NTKTimerBundleTimelineEntry *)self _titleTextProvider:0];
    return objc_claimAutoreleasedReturnValue();
  }

  else if (v2)
  {
    v6 = NTKClockFaceLocalizedString();
    v7 = [NSString localizedStringWithFormat:v6, v2];

    v5 = [CLKSimpleTextProvider textProviderWithText:v7];
  }

  else
  {
    if ([(NTKTimerBundleTimelineEntry *)self isDefaultComplication])
    {
      v3 = NTKClockFaceLocalizedString();
      v4 = NTKClockFaceLocalizedString();
      v5 = [CLKSimpleTextProvider textProviderWithText:v3 shortText:v4];
    }

    else
    {
      v3 = NTKClockFaceLocalizedString();
      v5 = [CLKSimpleTextProvider textProviderWithText:v3];
    }
  }

  return v5;
}

- (id)_newSignatureRectangularBodyRelativeDateTextProvider
{
  [(NTKTimerBundleTimelineEntry *)self countdownDuration];
  v4 = v3;
  if (v3 >= 0x3D)
  {
    v6.i64[0] = 0xFEDCBA987654321 * v4;
    v6.i64[1] = 0xEEEEEEEEEEEEEEEFLL * v4;
    v7 = vmovn_s64(vcgeq_u64(xmmword_8E00, vorrq_s8(vshlq_u64(v6, xmmword_8DF0), vshlq_u64(v6, xmmword_8DE0))));
    v5 = 1;
    if ((v7.i8[0] & 1) == 0 && ((v4 < 0xE11) & v7.i8[4]) == 0)
    {
      v5 = 2 * (v4 > 0xE10);
    }
  }

  else
  {
    v5 = 1;
  }

  v8 = +[NSDate date];
  [(NTKTimerBundleTimelineEntry *)self countdownDuration];
  v10 = [v8 dateByAddingTimeInterval:-v9];
  v11 = [CLKRelativeDateTextProvider textProviderWithDate:v10 style:v5 units:224];
  [v11 setDisableOffsetPrefix:1];
  [v11 setTwoDigitMinuteZeroPadding:1];
  [v11 setRelativeToDate:v8];
  [(NTKTimerBundleTimelineEntry *)self _updateTextProviderForAOTPaused:v11];

  return v11;
}

- (id)_titleTextProvider:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKTimerBundleTimelineEntry *)self title];

  if (v5)
  {
    v6 = [(NTKTimerBundleTimelineEntry *)self title];
    if (v3)
    {
      v7 = NTKClockFaceLocalizedString();
      v8 = [NSString stringWithFormat:@"%@ %@", v6, v7];

      v6 = v8;
    }
  }

  else
  {
    v6 = NTKClockFaceLocalizedString();
  }

  v9 = [CLKSimpleTextProvider textProviderWithText:v6];

  return v9;
}

+ (id)fullColorSymbolImageProviderForDevice:(id)a3 withOverridePointSize:(double)a4
{
  sub_65E8(a1, a3);
  *&v5 = a4;
  v6 = [NSNumber numberWithFloat:v5];
  v7 = [qword_113A0 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:@"timer"];
    [v7 setOverridePointSize:v6];
    v8 = +[UIColor systemOrangeColor];
    [v7 setTintColor:v8];

    [qword_113A0 setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

@end