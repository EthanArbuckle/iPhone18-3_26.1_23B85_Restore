@interface SiriIntentsTemplateModelEnumMapper
+ (id)stringFromComponentLabelStyle:(unint64_t)style;
+ (id)stringFromImageStyle:(unint64_t)style;
+ (id)stringFromMapSize:(unint64_t)size;
+ (id)stringFromTemplateAlignment:(unint64_t)alignment;
+ (unint64_t)componentLabelStyleFromString:(id)string;
+ (unint64_t)mapSizeFromString:(id)string;
+ (unint64_t)templateAlignmentFromString:(id)string;
@end

@implementation SiriIntentsTemplateModelEnumMapper

+ (unint64_t)componentLabelStyleFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleHeadingValue])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleBodyValue])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleSubheadingValue])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleFootnoteValue])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleCaptionValue])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupLabelTemplateComponentStyleLargeValue])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)stringFromComponentLabelStyle:(unint64_t)style
{
  if (style <= 5)
  {
    self = **(&off_C370 + style);
  }

  return self;
}

+ (unint64_t)templateAlignmentFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:SAIntentGroupAlignmentCenterValue])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:SAIntentGroupAlignmentRightValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromTemplateAlignment:(unint64_t)alignment
{
  if (alignment <= 2)
  {
    self = **(&off_C3A0 + alignment);
  }

  return self;
}

+ (id)stringFromImageStyle:(unint64_t)style
{
  if (style)
  {
    if (style != 1)
    {
      goto LABEL_6;
    }

    v4 = &SAIntentGroupImageStyleLargeValue;
  }

  else
  {
    v4 = &SAIntentGroupImageStyleSmallValue;
  }

  self = *v4;
LABEL_6:

  return self;
}

+ (unint64_t)mapSizeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:SAIntentGroupMapSnippetTemplateMapSizeMiniValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stringCopy isEqualToString:SAIntentGroupMapSnippetTemplateMapSizeFullValue];
  }

  return v4;
}

+ (id)stringFromMapSize:(unint64_t)size
{
  if (size)
  {
    if (size != 1)
    {
      goto LABEL_6;
    }

    v4 = &SAIntentGroupMapSnippetTemplateMapSizeFullValue;
  }

  else
  {
    v4 = &SAIntentGroupMapSnippetTemplateMapSizeMiniValue;
  }

  self = *v4;
LABEL_6:

  return self;
}

@end