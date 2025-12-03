@interface FigAlternateObjCVideoLayoutAttributes
- (FigAlternateObjCVideoLayoutAttributes)initWithTagCollection:(OpaqueCMTagCollection *)collection;
- (unint64_t)packingType;
- (unint64_t)projectionType;
- (unint64_t)stereoViewComponents;
- (void)dealloc;
@end

@implementation FigAlternateObjCVideoLayoutAttributes

- (FigAlternateObjCVideoLayoutAttributes)initWithTagCollection:(OpaqueCMTagCollection *)collection
{
  v7.receiver = self;
  v7.super_class = FigAlternateObjCVideoLayoutAttributes;
  v4 = [(FigAlternateObjCVideoLayoutAttributes *)&v7 init];
  if (v4)
  {
    if (collection)
    {
      v5 = CFRetain(collection);
    }

    else
    {
      v5 = 0;
    }

    v4->_tagCollection = v5;
  }

  return v4;
}

- (void)dealloc
{
  tagCollection = self->_tagCollection;
  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  v4.receiver = self;
  v4.super_class = FigAlternateObjCVideoLayoutAttributes;
  [(FigAlternateObjCVideoLayoutAttributes *)&v4 dealloc];
}

- (unint64_t)stereoViewComponents
{
  tagBuffer = *MEMORY[0x1E6963130];
  numberOfTagsCopied = 0;
  result = self->_tagCollection;
  if (result)
  {
    if (CMTagCollectionGetTagsWithCategory(result, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied))
    {
      v3 = 0;
    }

    else
    {
      v3 = numberOfTagsCopied == 1;
    }

    if (v3)
    {
      return CMTagGetFlagsValue(tagBuffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)projectionType
{
  v2 = 1919247220;
  tagBuffer = *MEMORY[0x1E6963130];
  numberOfTagsCopied = 0;
  tagCollection = self->_tagCollection;
  if (tagCollection)
  {
    if (CMTagCollectionGetTagsWithCategory(tagCollection, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied))
    {
      v4 = 0;
    }

    else
    {
      v4 = numberOfTagsCopied == 1;
    }

    if (v4 && CMTagGetValueDataType(tagBuffer) == kCMTagDataType_OSType)
    {
      return CMTagGetOSTypeValue(tagBuffer);
    }
  }

  return v2;
}

- (unint64_t)packingType
{
  v2 = 1852796517;
  tagBuffer = *MEMORY[0x1E6963130];
  numberOfTagsCopied = 0;
  tagCollection = self->_tagCollection;
  if (tagCollection)
  {
    if (CMTagCollectionGetTagsWithCategory(tagCollection, kCMTagCategory_PackingType, &tagBuffer, 1, &numberOfTagsCopied))
    {
      v4 = 0;
    }

    else
    {
      v4 = numberOfTagsCopied == 1;
    }

    if (v4 && CMTagGetValueDataType(tagBuffer) == kCMTagDataType_OSType)
    {
      return CMTagGetOSTypeValue(tagBuffer);
    }
  }

  return v2;
}

@end