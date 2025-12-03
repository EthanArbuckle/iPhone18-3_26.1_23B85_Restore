@interface ASDDSPItemInfo
- (ASDDSPItemInfo)initWithDictionary:(id)dictionary resourcePath:(id)path;
@end

@implementation ASDDSPItemInfo

- (ASDDSPItemInfo)initWithDictionary:(id)dictionary resourcePath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = ASDDSPItemInfo;
  v8 = [(ASDDSPItemInfo *)&v14 init];
  if (v8)
  {
    v9 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"Type"];
    if ([v10 isEqual:@"DSPGraph"])
    {
      v11 = off_278CE3748;
    }

    else if ([v10 isEqual:@"AUStrip"])
    {
      v11 = off_278CE36F8;
    }

    else
    {
      if (![v10 isEqual:@"PropertyStrip"])
      {
        v12 = 0;
        goto LABEL_10;
      }

      v11 = off_278CE37A0;
    }

    v12 = [objc_alloc(*v11) initWithDictionary:dictionaryCopy resourcePath:pathCopy];
LABEL_10:

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end