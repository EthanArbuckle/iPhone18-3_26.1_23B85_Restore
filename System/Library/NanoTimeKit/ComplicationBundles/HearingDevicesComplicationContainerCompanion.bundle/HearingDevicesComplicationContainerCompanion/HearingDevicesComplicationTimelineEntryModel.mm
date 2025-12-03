@interface HearingDevicesComplicationTimelineEntryModel
- (HearingDevicesComplicationTimelineEntryModel)initWithEntryDate:(id)date;
- (id)_textProviderForEar:(id)ear value:(id)value;
- (id)extraLargeForHearingDeviceDataProvider:(id)provider;
- (id)graphicBezelForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently;
- (id)graphicCircularForHearingDeviceDataProvider:(id)provider;
- (id)graphicCornerForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode;
- (id)graphicRectangularForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently;
- (id)largeModularForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently;
- (id)mediumCircleForHearingDeviceDataProvider:(id)provider;
- (id)smallCircleForHearingDeviceDataProvider:(id)provider;
- (id)smallModularForHearingDeviceDataProvider:(id)provider;
- (id)utilitarianLargeForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode;
- (id)utilitarianSmallFlatForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode;
@end

@implementation HearingDevicesComplicationTimelineEntryModel

- (HearingDevicesComplicationTimelineEntryModel)initWithEntryDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = HearingDevicesComplicationTimelineEntryModel;
  v6 = [(HearingDevicesComplicationTimelineEntryModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryDate, date);
  }

  return v7;
}

- (id)smallModularForHearingDeviceDataProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateModularSmallStackText);
    v6 = hearingLocString();
    hearingDevice = [providerCopy hearingDevice];
    [hearingDevice leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    shortDeviceNameColon = hearingLocString();
    hearingDevice2 = [providerCopy hearingDevice];

    [hearingDevice2 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateModularSmallSimpleText);
    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];

    hearingDevice2 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:hearingDevice2];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)largeModularForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently
{
  independentlyCopy = independently;
  providerCopy = provider;
  v6 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
  v7 = hearingLocString();
  v8 = [CLKSimpleTextProvider textProviderWithText:v7];
  [v6 setHeaderTextProvider:v8];

  v9 = +[UIColor systemRedColor];
  headerTextProvider = [v6 headerTextProvider];
  [headerTextProvider setTintColor:v9];

  if ([providerCopy hearingEar] == 6 && independentlyCopy)
  {
    hearingDevice = [providerCopy hearingDevice];
    leftSelectedProgram = [hearingDevice leftSelectedProgram];
    name = [leftSelectedProgram name];

    hearingDevice2 = [providerCopy hearingDevice];
    rightSelectedProgram = [hearingDevice2 rightSelectedProgram];
    name2 = [rightSelectedProgram name];

    if (name && name2)
    {
      v17 = hearingLocString();
      v18 = hearingLocString();
      hearingDevice3 = [providerCopy hearingDevice];
      [hearingDevice3 leftMicrophoneVolume];
      v20 = AXFormatFloat();
      v21 = [NSString localizedStringWithFormat:v17, v18, v20, name];
      v22 = [CLKSimpleTextProvider textProviderWithText:v21];
      [v6 setBody1TextProvider:v22];

      v23 = hearingLocString();
      v24 = hearingLocString();
      hearingDevice4 = [providerCopy hearingDevice];
      [hearingDevice4 rightMicrophoneVolume];
      v26 = AXFormatFloat();
      v27 = [NSString localizedStringWithFormat:v23, v24, v26, name2];
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
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (name)
    {
      v30 = hearingLocString();
      [providerCopy micLevel];
      v31 = AXFormatFloat();
      v32 = [NSString localizedStringWithFormat:v30, v31];
      v33 = [CLKSimpleTextProvider textProviderWithText:v32];
      [v6 setBody1TextProvider:v33];

      name2 = [CLKSimpleTextProvider textProviderWithText:name];
      [v6 setBody2TextProvider:name2];
      goto LABEL_12;
    }

    name2 = hearingLocString();
    v23 = [CLKSimpleTextProvider textProviderWithText:name2];
    [v6 setBody1TextProvider:v23];
  }

LABEL_12:

  return v6;
}

- (id)utilitarianSmallFlatForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode
{
  providerCopy = provider;
  if (independently)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallFlat);
  if (mode == 1)
  {
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (!name)
    {
      shortDeviceNameColon = hearingLocString();
      v16 = [CLKSimpleTextProvider textProviderWithText:shortDeviceNameColon];
      goto LABEL_9;
    }

    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    selfCopy2 = self;
    v13 = shortDeviceNameColon;
    v14 = name;
  }

  else
  {
    if (mode)
    {
      goto LABEL_10;
    }

    name = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];
    shortDeviceNameColon = AXFormatFloat();
    selfCopy2 = self;
    v13 = name;
    v14 = shortDeviceNameColon;
  }

  v16 = [(HearingDevicesComplicationTimelineEntryModel *)selfCopy2 _textProviderForEar:v13 value:v14];
LABEL_9:
  v17 = v16;
  [v9 setTextProvider:v16];

LABEL_10:

  return v9;
}

- (id)utilitarianLargeForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode
{
  providerCopy = provider;
  if (independently)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
  if (mode == 1)
  {
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (!name)
    {
      shortDeviceNameColon = hearingLocString();
      v16 = [CLKSimpleTextProvider textProviderWithText:shortDeviceNameColon];
      goto LABEL_9;
    }

    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    selfCopy2 = self;
    v13 = shortDeviceNameColon;
    v14 = name;
  }

  else
  {
    if (mode)
    {
      goto LABEL_10;
    }

    name = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];
    shortDeviceNameColon = AXFormatFloat();
    selfCopy2 = self;
    v13 = name;
    v14 = shortDeviceNameColon;
  }

  v16 = [(HearingDevicesComplicationTimelineEntryModel *)selfCopy2 _textProviderForEar:v13 value:v14];
LABEL_9:
  v17 = v16;
  [v9 setTextProvider:v16];

LABEL_10:

  return v9;
}

- (id)smallCircleForHearingDeviceDataProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
    v6 = hearingLocString();
    hearingDevice = [providerCopy hearingDevice];
    [hearingDevice leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    shortDeviceNameColon = hearingLocString();
    hearingDevice2 = [providerCopy hearingDevice];

    [hearingDevice2 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularSmallSimpleText);
    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];

    hearingDevice2 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:hearingDevice2];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)mediumCircleForHearingDeviceDataProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularMediumStackText);
    v6 = hearingLocString();
    hearingDevice = [providerCopy hearingDevice];
    [hearingDevice leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    shortDeviceNameColon = hearingLocString();
    hearingDevice2 = [providerCopy hearingDevice];

    [hearingDevice2 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateCircularMediumSimpleText);
    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];

    hearingDevice2 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:hearingDevice2];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)extraLargeForHearingDeviceDataProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy hearingEar] == 6)
  {
    v5 = objc_alloc_init(CLKComplicationTemplateExtraLargeStackText);
    v6 = hearingLocString();
    hearingDevice = [providerCopy hearingDevice];
    [hearingDevice leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    shortDeviceNameColon = hearingLocString();
    hearingDevice2 = [providerCopy hearingDevice];

    [hearingDevice2 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    v5 = objc_alloc_init(CLKComplicationTemplateExtraLargeSimpleText);
    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];

    hearingDevice2 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:hearingDevice2];
    [v5 setTextProvider:v12];
  }

  return v5;
}

- (id)graphicCornerForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently preferredDisplayMode:(int64_t)mode
{
  independentlyCopy = independently;
  providerCopy = provider;
  v9 = objc_alloc_init(CLKComplicationTemplateGraphicCornerStackText);
  if ([providerCopy hearingEar] != 6 || !independentlyCopy)
  {
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (name)
    {
      shortDeviceNameColon = [providerCopy shortDeviceNameColon];
      [providerCopy micLevel];
      v22 = AXFormatFloat();
      v23 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v22];
      [v9 setOuterTextProvider:v23];

      name2 = [CLKSimpleTextProvider textProviderWithText:name];
      [v9 setInnerTextProvider:name2];
    }

    else
    {
      name2 = hearingLocString();
      v24 = [CLKSimpleTextProvider textProviderWithText:name2];
      [v9 setInnerTextProvider:v24];
    }

    goto LABEL_15;
  }

  if (mode == 1)
  {
    hearingDevice = [providerCopy hearingDevice];
    leftSelectedProgram = [hearingDevice leftSelectedProgram];
    name = [leftSelectedProgram name];

    hearingDevice2 = [providerCopy hearingDevice];
    rightSelectedProgram = [hearingDevice2 rightSelectedProgram];
    name2 = [rightSelectedProgram name];

    if (!name || !name2)
    {
      v16 = hearingLocString();
      v31 = [CLKSimpleTextProvider textProviderWithText:v16];
      goto LABEL_14;
    }

    v29 = hearingLocString();
    v30 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v29 value:name];
    [v9 setOuterTextProvider:v30];

    v16 = hearingLocString();
    selfCopy2 = self;
    v18 = v16;
    v19 = name2;
  }

  else
  {
    if (mode)
    {
      goto LABEL_16;
    }

    v10 = hearingLocString();
    hearingDevice3 = [providerCopy hearingDevice];
    [hearingDevice3 leftMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v10 value:v12];
    [v9 setOuterTextProvider:v13];

    name = hearingLocString();
    name2 = [providerCopy hearingDevice];
    [name2 rightMicrophoneVolume];
    v16 = AXFormatFloat();
    selfCopy2 = self;
    v18 = name;
    v19 = v16;
  }

  v31 = [(HearingDevicesComplicationTimelineEntryModel *)selfCopy2 _textProviderForEar:v18 value:v19];
LABEL_14:
  v32 = v31;
  [v9 setInnerTextProvider:v31];

LABEL_15:
LABEL_16:

  return v9;
}

- (id)graphicBezelForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently
{
  providerCopy = provider;
  v7 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
  if (!independently)
  {
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (name)
    {
      v10 = [CLKSimpleTextProvider textProviderWithText:name];
      [v7 setTextProvider:v10];
    }

    else
    {
      v10 = hearingLocString();
      v11 = [CLKSimpleTextProvider textProviderWithText:v10];
      [v7 setTextProvider:v11];
    }
  }

  v12 = [(HearingDevicesComplicationTimelineEntryModel *)self graphicCircularForHearingDeviceDataProvider:providerCopy];
  [v7 setCircularTemplate:v12];

  return v7;
}

- (id)graphicCircularForHearingDeviceDataProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(CLKComplicationTemplateGraphicCircularStackText);
  if ([providerCopy hearingEar] == 6)
  {
    v6 = hearingLocString();
    hearingDevice = [providerCopy hearingDevice];
    [hearingDevice leftMicrophoneVolume];
    v8 = AXFormatFloat();
    v9 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:v6 value:v8];
    [v5 setLine1TextProvider:v9];

    shortDeviceNameColon = hearingLocString();
    hearingDevice2 = [providerCopy hearingDevice];
    [hearingDevice2 rightMicrophoneVolume];
    v12 = AXFormatFloat();
    v13 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:v12];
    [v5 setLine2TextProvider:v13];
  }

  else
  {
    shortDeviceNameColon = [providerCopy shortDeviceNameColon];
    [providerCopy micLevel];
    hearingDevice2 = AXFormatFloat();
    v12 = [(HearingDevicesComplicationTimelineEntryModel *)self _textProviderForEar:shortDeviceNameColon value:hearingDevice2];
    [v5 setLine1TextProvider:v12];
  }

  return v5;
}

- (id)graphicRectangularForHearingDeviceDataProvider:(id)provider adjustsIndependently:(BOOL)independently
{
  independentlyCopy = independently;
  providerCopy = provider;
  v6 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularStandardBody);
  v7 = hearingLocString();
  v8 = [CLKSimpleTextProvider textProviderWithText:v7];
  [v6 setHeaderTextProvider:v8];

  v9 = +[UIColor systemRedColor];
  headerTextProvider = [v6 headerTextProvider];
  [headerTextProvider setTintColor:v9];

  if ([providerCopy hearingEar] == 6 && independentlyCopy)
  {
    hearingDevice = [providerCopy hearingDevice];
    leftSelectedProgram = [hearingDevice leftSelectedProgram];
    name = [leftSelectedProgram name];

    hearingDevice2 = [providerCopy hearingDevice];
    rightSelectedProgram = [hearingDevice2 rightSelectedProgram];
    name2 = [rightSelectedProgram name];

    if (name && name2)
    {
      v17 = hearingLocString();
      v18 = hearingLocString();
      hearingDevice3 = [providerCopy hearingDevice];
      [hearingDevice3 leftMicrophoneVolume];
      v20 = AXFormatFloat();
      v21 = [NSString localizedStringWithFormat:v17, v18, v20, name];
      v22 = [CLKSimpleTextProvider textProviderWithText:v21];
      [v6 setBody1TextProvider:v22];

      v23 = hearingLocString();
      v24 = hearingLocString();
      hearingDevice4 = [providerCopy hearingDevice];
      [hearingDevice4 rightMicrophoneVolume];
      v26 = AXFormatFloat();
      v27 = [NSString localizedStringWithFormat:v23, v24, v26, name2];
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
    selectedMode = [providerCopy selectedMode];
    name = [selectedMode name];

    if (name)
    {
      v30 = hearingLocString();
      [providerCopy micLevel];
      v31 = AXFormatFloat();
      v32 = [NSString localizedStringWithFormat:v30, v31];
      v33 = [CLKSimpleTextProvider textProviderWithText:v32];
      [v6 setBody1TextProvider:v33];

      name2 = [CLKSimpleTextProvider textProviderWithText:name];
      [v6 setBody2TextProvider:name2];
      goto LABEL_12;
    }

    name2 = hearingLocString();
    v23 = [CLKSimpleTextProvider textProviderWithText:name2];
    [v6 setBody1TextProvider:v23];
  }

LABEL_12:

  return v6;
}

- (id)_textProviderForEar:(id)ear value:(id)value
{
  valueCopy = value;
  v6 = [CLKSimpleTextProvider textProviderWithText:ear];
  v7 = +[UIColor systemRedColor];
  [v6 setTintColor:v7];

  v8 = [CLKSimpleTextProvider textProviderWithText:valueCopy];

  v9 = hearingLocString();
  v10 = [CLKTextProvider textProviderWithFormat:v9, v6, v8];

  return v10;
}

@end