@interface EKStructuredLocationSemanticIdentifierGenerator
+ (id)semanticIdentifierForLocationWithTitle:(id)title address:(id)address mapKitHandle:(id)handle contactLabel:(id)label latitude:(id)latitude longitude:(id)longitude radius:(id)radius;
@end

@implementation EKStructuredLocationSemanticIdentifierGenerator

+ (id)semanticIdentifierForLocationWithTitle:(id)title address:(id)address mapKitHandle:(id)handle contactLabel:(id)label latitude:(id)latitude longitude:(id)longitude radius:(id)radius
{
  titleCopy = title;
  addressCopy = address;
  handleCopy = handle;
  labelCopy = label;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  radiusCopy = radius;
  if (!(titleCopy | addressCopy))
  {
    if (handleCopy)
    {
      v24 = [handleCopy base64EncodedStringWithOptions:0];
    }

    else if (labelCopy)
    {
      v24 = labelCopy;
    }

    else
    {
      v23 = 0;
      if (!latitudeCopy || !longitudeCopy)
      {
        goto LABEL_18;
      }

      v25 = MEMORY[0x1E696AEC0];
      [latitudeCopy floatValue];
      v27 = v26;
      [longitudeCopy floatValue];
      v29 = v28;
      if (radiusCopy)
      {
        [radiusCopy floatValue];
        [v25 stringWithFormat:@"%f:%f:%f", *&v27, *&v29, v30];
      }

      else
      {
        [v25 stringWithFormat:@"%f:%f", *&v27, v28, v32];
      }
      v24 = ;
    }

    v23 = v24;
    goto LABEL_18;
  }

  string = [MEMORY[0x1E696AD60] string];
  v22 = string;
  if (titleCopy)
  {
    [string appendFormat:@"TITLE=%@;", titleCopy];
  }

  if (addressCopy)
  {
    [v22 appendFormat:@"ADDRESS=%@;", addressCopy];
  }

  v23 = [v22 copy];

LABEL_18:

  return v23;
}

@end