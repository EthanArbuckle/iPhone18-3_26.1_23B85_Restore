@interface NTKCellularConnectivityTimelineEntryModel
- (BOOL)_needsPlatterForComplicationFamily:(int64_t)family;
- (double)_imageAlphaForComplicationFamily:(int64_t)family;
- (double)_platterAlphaForComplicationFamily:(int64_t)family;
- (id)_cellImageSizeForComplicationFamily:(int64_t)family;
- (id)_circularMediumTemplate;
- (id)_circularSmallTemplate;
- (id)_dotConstraintsForComplicationFamily:(int64_t)family;
- (id)_extraLargeTemplate;
- (id)_graphicBezelTemplate;
- (id)_graphicCircularTemplate;
- (id)_graphicCornerTemplate;
- (id)_graphicExtraLargeTemplate;
- (id)_imageOverrideColorForComplicationFamily:(int64_t)family;
- (id)_imageProviderForComplicationFamily:(int64_t)family;
- (id)_modularSmallTemplate;
- (id)_platterOverrideColorForComplicationFamily:(int64_t)family;
- (id)_utilitarianSmallTemplate;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKCellularConnectivityTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  v5 = 0;
  if (family > 7)
  {
    if (family > 9)
    {
      if (family == 10)
      {
        _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _graphicCircularTemplate];
      }

      else
      {
        if (family != 12)
        {
          goto LABEL_21;
        }

        _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _graphicExtraLargeTemplate];
      }
    }

    else
    {
      if (family == 8)
      {
        [(NTKCellularConnectivityTimelineEntryModel *)self _graphicCornerTemplate];
      }

      else
      {
        [(NTKCellularConnectivityTimelineEntryModel *)self _graphicBezelTemplate];
      }
      _graphicCircularTemplate = ;
    }
  }

  else if (family > 3)
  {
    if (family == 4)
    {
      _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _circularSmallTemplate];
    }

    else
    {
      if (family != 7)
      {
        goto LABEL_21;
      }

      _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _extraLargeTemplate];
    }
  }

  else if (family)
  {
    if (family != 2)
    {
      goto LABEL_21;
    }

    _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _utilitarianSmallTemplate];
  }

  else
  {
    _graphicCircularTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _modularSmallTemplate];
  }

  v5 = _graphicCircularTemplate;
LABEL_21:
  if (CLKComplicationFamilyCircularMedium == family)
  {
    _circularMediumTemplate = [(NTKCellularConnectivityTimelineEntryModel *)self _circularMediumTemplate];

    v5 = _circularMediumTemplate;
  }

  if (self->_cellularConnectivityState > 2 || family != 7 && family)
  {
    v8 = +[UIColor systemGreenColor];
  }

  else
  {
    v8 = +[UIColor whiteColor];
  }

  v9 = v8;
  [v5 setTintColor:v8];

  return v5;
}

- (BOOL)_needsPlatterForComplicationFamily:(int64_t)family
{
  LOBYTE(v3) = 1;
  if (family != 2 && family != 4)
  {
    if (CLKComplicationFamilyCircularMedium == family)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      cellularConnectivityState = self->_cellularConnectivityState;
      LOBYTE(v3) = cellularConnectivityState < 3;
      if ((family - 8) <= 4)
      {
        v3 = (0x17u >> (family - 8)) | (cellularConnectivityState < 3);
      }
    }
  }

  return v3 & 1;
}

- (double)_platterAlphaForComplicationFamily:(int64_t)family
{
  v5 = NTKIsRichComplicationFamily();
  cellularConnectivityState = self->_cellularConnectivityState;
  if (v5)
  {
    result = 0.0;
    if (cellularConnectivityState == 2)
    {
      return 1.0;
    }
  }

  else if (cellularConnectivityState > 1)
  {
    result = 1.0;
    if (cellularConnectivityState != 2)
    {
      result = 0.119999997;
      if (family != 4 && CLKComplicationFamilyCircularMedium != family)
      {
        result = 1.0;
        if ((family - 8) <= 4)
        {
          return dbl_6058[family - 8];
        }
      }
    }
  }

  else
  {
    result = 0.119999997;
    if (family != 4 && CLKComplicationFamilyCircularMedium != family)
    {
      if (family)
      {
        v8 = family == 7;
      }

      else
      {
        v8 = 1;
      }

      result = 0.119999997;
      if (!v8)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (id)_platterOverrideColorForComplicationFamily:(int64_t)family
{
  v5 = 0;
  if (family <= 0xC && ((1 << family) & 0x1704) != 0)
  {
    cellularConnectivityState = self->_cellularConnectivityState;
    if (cellularConnectivityState >= 2)
    {
      if (cellularConnectivityState != 2)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v7 = 0.800000012;
    }

    else
    {
      v7 = 0.100000001;
    }

    v5 = [UIColor colorWithWhite:v7 alpha:1.0];
  }

LABEL_9:
  if ((family - 8) < 3 || family == 12)
  {
    if (self->_cellularConnectivityState < 3)
    {
      goto LABEL_17;
    }

    v8 = +[UIColor systemGreenColor];
    goto LABEL_16;
  }

  if (family == 2 && self->_cellularConnectivityState >= 3)
  {
    v8 = [UIColor colorWithWhite:0.100000001 alpha:1.0];
LABEL_16:
    v9 = v8;

    v5 = v9;
  }

LABEL_17:

  return v5;
}

- (double)_imageAlphaForComplicationFamily:(int64_t)family
{
  if (CLKComplicationFamilyCircularMedium == family || (result = 1.0, family <= 7) && ((1 << family) & 0x91) != 0)
  {
    result = 0.400000006;
    if (self->_cellularConnectivityState >= 2)
    {
      return 1.0;
    }
  }

  return result;
}

- (id)_imageOverrideColorForComplicationFamily:(int64_t)family
{
  cellularConnectivityState = self->_cellularConnectivityState;
  if (cellularConnectivityState > 1)
  {
    if (cellularConnectivityState == 3)
    {
      if (family != 4 && family != 2)
      {
        v5 = 0.5;
        goto LABEL_5;
      }

      v4 = +[UIColor whiteColor];
    }

    else if (cellularConnectivityState == 2)
    {
      v4 = +[UIColor blackColor];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    if (family <= 0xC && ((1 << family) & 0x1704) != 0)
    {
      v5 = 0.400000006;
LABEL_5:
      v4 = [UIColor colorWithWhite:v5 alpha:1.0];
    }
  }

  return v4;
}

- (id)_cellImageSizeForComplicationFamily:(int64_t)family
{
  v4 = +[CLKDevice currentDevice];
  v5 = sub_1400(v4, v4);

  v6 = [NSNumber numberWithInteger:family];
  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)_dotConstraintsForComplicationFamily:(int64_t)family
{
  v4 = +[CLKDevice currentDevice];
  v5 = sub_17D0(v4, v4);

  v6 = [[NSNumber alloc] initWithUnsignedInteger:family];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = objc_alloc_init(NTKExplorerDotLayoutConstraints);
  }

  return v8;
}

- (id)_imageProviderForComplicationFamily:(int64_t)family
{
  v5 = objc_alloc_init(NTKCellularConnectivityImageProvider);
  [(NTKCellularConnectivityImageProvider *)v5 setNeedsPlatter:[(NTKCellularConnectivityTimelineEntryModel *)self _needsPlatterForComplicationFamily:family]];
  [(NTKCellularConnectivityTimelineEntryModel *)self _platterAlphaForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setPlatterAlpha:?];
  [(NTKCellularConnectivityImageProvider *)v5 setCutoutImageFromPlatter:[(NTKCellularConnectivityTimelineEntryModel *)self _cutoutImageFromPlatterForComplicationFamily:family]];
  v6 = [(NTKCellularConnectivityTimelineEntryModel *)self _platterOverrideColorForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setPlatterOverrideColor:v6];

  v7 = [(NTKCellularConnectivityTimelineEntryModel *)self _tritiumPlatterColorForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setTritiumPlatterColor:v7];

  [(NTKCellularConnectivityImageProvider *)v5 setShowsAsDots:self->_cellularConnectivityState > 2];
  [(NTKCellularConnectivityImageProvider *)v5 setDisconnected:self->_cellularConnectivityState < 5];
  v8 = [(NTKCellularConnectivityTimelineEntryModel *)self _cellImageSizeForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setImageSize:v8];

  [(NTKCellularConnectivityImageProvider *)v5 setImageVerticalOffsetScaleFromWidth:&off_8670];
  [(NTKCellularConnectivityTimelineEntryModel *)self _imageAlphaForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setImageAlpha:?];
  v9 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageOverrideColorForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setImageOverrideColor:v9];

  v10 = [(NTKCellularConnectivityTimelineEntryModel *)self _dotConstraintsForComplicationFamily:family];
  [(NTKCellularConnectivityImageProvider *)v5 setDotLayoutConstraints:v10];

  v11 = objc_alloc_init(NTKExplorerDotColorOptions);
  if (family == 4 || family == 2)
  {
    v12 = +[UIColor whiteColor];
  }

  else
  {
    v12 = [UIColor colorWithWhite:0.5 alpha:1.0];
  }

  v13 = v12;
  [v11 setNoServiceDotColor:v12];

  [(NTKCellularConnectivityImageProvider *)v5 setDotColorOptions:v11];
  cellularConnectivityState = self->_cellularConnectivityState;
  if (cellularConnectivityState <= 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = cellularConnectivityState - 5;
  }

  [(NTKCellularConnectivityImageProvider *)v5 setNumDotsFilled:v15];
  v16 = self->_cellularConnectivityState == 3 && !self->_pauseAnimations;
  [(NTKCellularConnectivityImageProvider *)v5 setAnimateSearchingState:v16];

  return v5;
}

- (id)_modularSmallTemplate
{
  v2 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:0];
  v3 = [CLKComplicationTemplateModularSmallSimpleImage templateWithImageProvider:v2];

  return v3;
}

- (id)_utilitarianSmallTemplate
{
  v2 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:2];
  v3 = [CLKComplicationTemplateUtilitarianSmallSquare templateWithImageProvider:v2];

  return v3;
}

- (id)_circularSmallTemplate
{
  v2 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:4];
  v3 = [CLKComplicationTemplateCircularSmallCircularImage templateWithImageProvider:v2];

  return v3;
}

- (id)_extraLargeTemplate
{
  v2 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:7];
  v3 = [CLKComplicationTemplateExtraLargeSimpleImage templateWithImageProvider:v2];

  return v3;
}

- (id)_circularMediumTemplate
{
  v2 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:CLKComplicationFamilyCircularMedium];
  v3 = [CLKComplicationTemplateCircularMediumCircularImage templateWithImageProvider:v2];

  return v3;
}

- (id)_graphicCornerTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v11 = @"NTKCellularConnectivityImageProviderMetadataKey";
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:8];
  v12 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicCornerCircularImage templateWithImageProvider:v3];
  v9 = NTKRichComplicationViewUsePlatterKey;
  v10 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 setMetadata:v7];

  return v6;
}

- (id)_graphicCircularTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v11 = @"NTKCellularConnectivityImageProviderMetadataKey";
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:10];
  v12 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v3];
  v9 = NTKRichComplicationViewUsePlatterKey;
  v10 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 setMetadata:v7];

  return v6;
}

- (id)_graphicExtraLargeTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v11 = @"NTKCellularConnectivityImageProviderMetadataKey";
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:12];
  v12 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v3];
  v9 = NTKRichComplicationViewUsePlatterKey;
  v10 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 setMetadata:v7];

  return v6;
}

- (id)_graphicBezelTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v12 = @"NTKCellularConnectivityImageProviderMetadataKey";
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)self _imageProviderForComplicationFamily:10];
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v3];
  v7 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v6];
  v10 = NTKRichComplicationViewUsePlatterKey;
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v7 setMetadata:v8];

  return v7;
}

@end