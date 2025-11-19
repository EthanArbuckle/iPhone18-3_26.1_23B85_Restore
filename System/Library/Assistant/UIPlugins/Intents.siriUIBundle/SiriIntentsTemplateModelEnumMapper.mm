@interface SiriIntentsTemplateModelEnumMapper
+ (id)stringFromComponentLabelStyle:(unint64_t)a3;
+ (id)stringFromImageStyle:(unint64_t)a3;
+ (id)stringFromMapSize:(unint64_t)a3;
+ (id)stringFromTemplateAlignment:(unint64_t)a3;
+ (unint64_t)componentLabelStyleFromString:(id)a3;
+ (unint64_t)mapSizeFromString:(id)a3;
+ (unint64_t)templateAlignmentFromString:(id)a3;
@end

@implementation SiriIntentsTemplateModelEnumMapper

+ (unint64_t)componentLabelStyleFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleHeadingValue])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleBodyValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleSubheadingValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleFootnoteValue])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleCaptionValue])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:SAIntentGroupLabelTemplateComponentStyleLargeValue])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)stringFromComponentLabelStyle:(unint64_t)a3
{
  if (a3 <= 5)
  {
    a1 = **(&off_C370 + a3);
  }

  return a1;
}

+ (unint64_t)templateAlignmentFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAIntentGroupAlignmentCenterValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAIntentGroupAlignmentRightValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromTemplateAlignment:(unint64_t)a3
{
  if (a3 <= 2)
  {
    a1 = **(&off_C3A0 + a3);
  }

  return a1;
}

+ (id)stringFromImageStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = &SAIntentGroupImageStyleLargeValue;
  }

  else
  {
    v4 = &SAIntentGroupImageStyleSmallValue;
  }

  a1 = *v4;
LABEL_6:

  return a1;
}

+ (unint64_t)mapSizeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAIntentGroupMapSnippetTemplateMapSizeMiniValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:SAIntentGroupMapSnippetTemplateMapSizeFullValue];
  }

  return v4;
}

+ (id)stringFromMapSize:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = &SAIntentGroupMapSnippetTemplateMapSizeFullValue;
  }

  else
  {
    v4 = &SAIntentGroupMapSnippetTemplateMapSizeMiniValue;
  }

  a1 = *v4;
LABEL_6:

  return a1;
}

@end