@interface ASDDSPItemInfo
- (ASDDSPItemInfo)initWithDictionary:(id)a3 resourcePath:(id)a4;
@end

@implementation ASDDSPItemInfo

- (ASDDSPItemInfo)initWithDictionary:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDDSPItemInfo;
  v8 = [(ASDDSPItemInfo *)&v14 init];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 objectForKeyedSubscript:@"Type"];
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

    v12 = [objc_alloc(*v11) initWithDictionary:v6 resourcePath:v7];
LABEL_10:

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end