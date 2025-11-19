@interface HearingDevicesComplicationTimelineEntryModel
- (HearingDevicesComplicationTimelineEntryModel)initWithEntryDate:(id)a3;
- (id)_textProviderForEar:(id)a3 value:(id)a4;
- (id)extraLargeForHearingDeviceDataProvider:(id)a3;
- (id)graphicBezelForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4;
- (id)graphicCircularForHearingDeviceDataProvider:(id)a3;
- (id)graphicCornerForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5;
- (id)graphicRectangularForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4;
- (id)largeModularForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4;
- (id)mediumCircleForHearingDeviceDataProvider:(id)a3;
- (id)smallCircleForHearingDeviceDataProvider:(id)a3;
- (id)smallModularForHearingDeviceDataProvider:(id)a3;
- (id)utilitarianLargeForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5;
- (id)utilitarianSmallFlatForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5;
@end

@implementation HearingDevicesComplicationTimelineEntryModel

- (HearingDevicesComplicationTimelineEntryModel)initWithEntryDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HearingDevicesComplicationTimelineEntryModel;
  v6 = [(HearingDevicesComplicationTimelineEntryModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryDate, a3);
  }

  return v7;
}

- (id)smallModularForHearingDeviceDataProvider:(id)a3
{
  v4 = a3;
  if ([v4 hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateModularSmallStackText);
    v6 = hearingLocString();
    v7 = [v4 hearingDevice];
    [v7 leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    v10 = hearingLocString();
    v11 = [v4 hearingDevice];

    [v11 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateModularSmallSimpleText);
    v10 = [v4 shortDeviceNameColon];
    [v4 micLevel];

    v11 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v11];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)largeModularForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
  v7 = hearingLocString();
  v8 = [CLKSimpleTextProvider textProviderWithText:v7];
  [v6 setHeaderTextProvider:v8];

  v9 = +[UIColor systemRedColor];
  v10 = [v6 headerTextProvider];
  [v10 setTintColor:v9];

  if ([v5 hearingEar] == 6 && v4)
  {
    v11 = [v5 hearingDevice];
    v12 = [v11 leftSelectedProgram];
    v13 = [v12 name];

    v14 = [v5 hearingDevice];
    v15 = [v14 rightSelectedProgram];
    v16 = [v15 name];

    if (v13 && v16)
    {
      v17 = hearingLocString();
      v18 = hearingLocString();
      v19 = [v5 hearingDevice];
      [v19 leftMicrophoneVolume];
      v20 = AXFormatFloat();
      v21 = [NSString localizedStringWithFormat:v17, v18, v20, v13];
      v22 = [CLKSimpleTextProvider textProviderWithText:v21];
      [v6 setBody1TextProvider:v22];

      v23 = hearingLocString();
      v24 = hearingLocString();
      v25 = [v5 hearingDevice];
      [v25 rightMicrophoneVolume];
      v26 = AXFormatFloat();
      v27 = [NSString localizedStringWithFormat:v23, v24, v26, v16];
      v28 = [CLKSimpleTextProvider textProviderWithText:v27];
      [v6 setBody2TextProvider:v28];
    }

    else
    {
      v23 = hearingLocString();
      v24 = [CLKSimpleTextProvider textProviderWithText:v23];
      [v6 setBody1TextProvider:v24];
    }
  }

  else
  {
    v29 = [v5 selectedMode];
    v13 = [v29 name];

    if (v13)
    {
      v30 = hearingLocString();
      [v5 micLevel];
      v31 = AXFormatFloat();
      v32 = [NSString localizedStringWithFormat:v30, v31];
      v33 = [CLKSimpleTextProvider textProviderWithText:v32];
      [v6 setBody1TextProvider:v33];

      v16 = [CLKSimpleTextProvider textProviderWithText:v13];
      [v6 setBody2TextProvider:v16];
      goto LABEL_12;
    }

    v16 = hearingLocString();
    v23 = [CLKSimpleTextProvider textProviderWithText:v16];
    [v6 setBody1TextProvider:v23];
  }

LABEL_12:

  return v6;
}

- (id)utilitarianSmallFlatForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallFlat);
  if (a5 == 1)
  {
    v15 = [v8 selectedMode];
    v10 = [v15 name];

    if (!v10)
    {
      v11 = hearingLocString();
      v16 = [CLKSimpleTextProvider textProviderWithText:v11];
      goto LABEL_9;
    }

    v11 = [v8 shortDeviceNameColon];
    v12 = self;
    v13 = v11;
    v14 = v10;
  }

  else
  {
    if (a5)
    {
      goto LABEL_10;
    }

    v10 = [v8 shortDeviceNameColon];
    [v8 micLevel];
    v11 = AXFormatFloat();
    v12 = self;
    v13 = v10;
    v14 = v11;
  }

  v16 = [(HearingDevicesComplicationTimelineEntryModel *)v12 _textProviderForEar:v13 value:v14];
LABEL_9:
  v17 = v16;
  [v9 setTextProvider:v16];

LABEL_10:

  return v9;
}

- (id)utilitarianLargeForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
  if (a5 == 1)
  {
    v15 = [v8 selectedMode];
    v10 = [v15 name];

    if (!v10)
    {
      v11 = hearingLocString();
      v16 = [CLKSimpleTextProvider textProviderWithText:v11];
      goto LABEL_9;
    }

    v11 = [v8 shortDeviceNameColon];
    v12 = self;
    v13 = v11;
    v14 = v10;
  }

  else
  {
    if (a5)
    {
      goto LABEL_10;
    }

    v10 = [v8 shortDeviceNameColon];
    [v8 micLevel];
    v11 = AXFormatFloat();
    v12 = self;
    v13 = v10;
    v14 = v11;
  }

  v16 = [(HearingDevicesComplicationTimelineEntryModel *)v12 _textProviderForEar:v13 value:v14];
LABEL_9:
  v17 = v16;
  [v9 setTextProvider:v16];

LABEL_10:

  return v9;
}

- (id)smallCircleForHearingDeviceDataProvider:(id)a3
{
  v4 = a3;
  if ([v4 hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
    v6 = hearingLocString();
    v7 = [v4 hearingDevice];
    [v7 leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    v10 = hearingLocString();
    v11 = [v4 hearingDevice];

    [v11 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularSmallSimpleText);
    v10 = [v4 shortDeviceNameColon];
    [v4 micLevel];

    v11 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v11];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)mediumCircleForHearingDeviceDataProvider:(id)a3
{
  v4 = a3;
  if ([v4 hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularMediumStackText);
    v6 = hearingLocString();
    v7 = [v4 hearingDevice];
    [v7 leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    v10 = hearingLocString();
    v11 = [v4 hearingDevice];

    [v11 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularMediumSimpleText);
    v10 = [v4 shortDeviceNameColon];
    [v4 micLevel];

    v11 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v11];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)extraLargeForHearingDeviceDataProvider:(id)a3
{
  v4 = a3;
  if ([v4 hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateExtraLargeStackText);
    v6 = hearingLocString();
    v7 = [v4 hearingDevice];
    [v7 leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    v10 = hearingLocString();
    v11 = [v4 hearingDevice];

    [v11 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateExtraLargeSimpleText);
    v10 = [v4 shortDeviceNameColon];
    [v4 micLevel];

    v11 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v11];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)graphicCornerForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4 preferredDisplayMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = objc_alloc_init(CLKComplicationTemplateGraphicCornerStackText);
  if ([v8 hearingEar] != 6 || !v6)
  {
    v20 = [v8 selectedMode];
    v14 = [v20 name];

    if (v14)
    {
      v21 = [v8 shortDeviceNameColon];
      [v8 micLevel];
      v22 = AXFormatFloat();
      v23 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v21 value:v22];
      [v9 setOuterTextProvider:v23];

      v15 = [CLKSimpleTextProvider textProviderWithText:v14];
      [v9 setInnerTextProvider:v15];
    }

    else
    {
      v15 = hearingLocString();
      v24 = [CLKSimpleTextProvider textProviderWithText:v15];
      [v9 setInnerTextProvider:v24];
    }

    goto LABEL_15;
  }

  if (a5 == 1)
  {
    v25 = [v8 hearingDevice];
    v26 = [v25 leftSelectedProgram];
    v14 = [v26 name];

    v27 = [v8 hearingDevice];
    v28 = [v27 rightSelectedProgram];
    v15 = [v28 name];

    if (!v14 || !v15)
    {
      v16 = hearingLocString();
      v31 = [CLKSimpleTextProvider textProviderWithText:v16];
      goto LABEL_14;
    }

    v29 = hearingLocString();
    v30 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v29 value:v14];
    [v9 setOuterTextProvider:v30];

    v16 = hearingLocString();
    v17 = self;
    v18 = v16;
    v19 = v15;
  }

  else
  {
    if (a5)
    {
      goto LABEL_16;
    }

    v10 = hearingLocString();
    v11 = [v8 hearingDevice];
    [v11 leftMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v9 setOuterTextProvider:v13];

    v14 = hearingLocString();
    v15 = [v8 hearingDevice];
    [v15 rightMicrophoneVolume];
    v16 = AXFormatFloat();
    v17 = self;
    v18 = v14;
    v19 = v16;
  }

  v31 = [(HearingDevicesComplicationTimelineEntryModel *)v17 _textProviderForEar:v18 value:v19];
LABEL_14:
  v32 = v31;
  [v9 setInnerTextProvider:v31];

LABEL_15:
LABEL_16:

  return v9;
}

- (id)graphicBezelForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
  if (!a4)
  {
    v8 = [v6 selectedMode];
    v9 = [v8 name];

    if (v9)
    {
      v10 = [CLKSimpleTextProvider textProviderWithText:v9];
      [v7 setTextProvider:v10];
    }

    else
    {
      v10 = hearingLocString();
      v11 = [CLKSimpleTextProvider textProviderWithText:v10];
      [v7 setTextProvider:v11];
    }
  }

  v12 = [(HearingDevicesComplicationTimelineEntryModel *)self graphicCircularForHearingDeviceDataProvider:v6];
  [v7 setCircularTemplate:v12];

  return v7;
}

- (id)graphicCircularForHearingDeviceDataProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CLKComplicationTemplateGraphicCircularStackText);
  if ([v4 hearingEar] == 6)
  {
    v6 = hearingLocString();
    v7 = [v4 hearingDevice];
    [v7 leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    v10 = hearingLocString();
    v11 = [v4 hearingDevice];
    [v11 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v10 = [v4 shortDeviceNameColon];
    [v4 micLevel];
    v11 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v11];
    [v5 setLine1TextProvider:v12];
  }

  return v5;
}

- (id)graphicRectangularForHearingDeviceDataProvider:(id)a3 adjustsIndependently:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularStandardBody);
  v7 = hearingLocString();
  v8 = [CLKSimpleTextProvider textProviderWithText:v7];
  [v6 setHeaderTextProvider:v8];

  v9 = +[UIColor systemRedColor];
  v10 = [v6 headerTextProvider];
  [v10 setTintColor:v9];

  if ([v5 hearingEar] == 6 && v4)
  {
    v11 = [v5 hearingDevice];
    v12 = [v11 leftSelectedProgram];
    v13 = [v12 name];

    v14 = [v5 hearingDevice];
    v15 = [v14 rightSelectedProgram];
    v16 = [v15 name];

    if (v13 && v16)
    {
      v17 = hearingLocString();
      v18 = hearingLocString();
      v19 = [v5 hearingDevice];
      [v19 leftMicrophoneVolume];
      v20 = AXFormatFloat();
      v21 = [NSString localizedStringWithFormat:v17, v18, v20, v13];
      v22 = [CLKSimpleTextProvider textProviderWithText:v21];
      [v6 setBody1TextProvider:v22];

      v23 = hearingLocString();
      v24 = hearingLocString();
      v25 = [v5 hearingDevice];
      [v25 rightMicrophoneVolume];
      v26 = AXFormatFloat();
      v27 = [NSString localizedStringWithFormat:v23, v24, v26, v16];
      v28 = [CLKSimpleTextProvider textProviderWithText:v27];
      [v6 setBody2TextProvider:v28];
    }

    else
    {
      v23 = hearingLocString();
      v24 = [CLKSimpleTextProvider textProviderWithText:v23];
      [v6 setBody1TextProvider:v24];
    }
  }

  else
  {
    v29 = [v5 selectedMode];
    v13 = [v29 name];

    if (v13)
    {
      v30 = hearingLocString();
      [v5 micLevel];
      v31 = AXFormatFloat();
      v32 = [NSString localizedStringWithFormat:v30, v31];
      v33 = [CLKSimpleTextProvider textProviderWithText:v32];
      [v6 setBody1TextProvider:v33];

      v16 = [CLKSimpleTextProvider textProviderWithText:v13];
      [v6 setBody2TextProvider:v16];
      goto LABEL_12;
    }

    v16 = hearingLocString();
    v23 = [CLKSimpleTextProvider textProviderWithText:v16];
    [v6 setBody1TextProvider:v23];
  }

LABEL_12:

  return v6;
}

- (id)_textProviderForEar:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [CLKSimpleTextProvider textProviderWithText:a3];
  v7 = +[UIColor systemRedColor];
  [v6 setTintColor:v7];

  v8 = [CLKSimpleTextProvider textProviderWithText:v5];

  v9 = hearingLocString();
  v10 = [CLKTextProvider textProviderWithFormat:v9, v6, v8];

  return v10;
}

@end