@interface RequestTransportTypeInformation
- (BOOL)isEqual:(id)a3;
- (RequestTransportTypeInformation)initWithDictionary:(id)a3;
- (id)requestInfoProviderForTransportType:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation RequestTransportTypeInformation

- (unint64_t)hash
{
  v2 = [(RequestTransportTypeInformation *)self transportTypeInfoProviders];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if ([(RequestTransportTypeInformation *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(RequestTransportTypeInformation *)v4 transportTypeInfoProviders];
    v6 = [(RequestTransportTypeInformation *)self transportTypeInfoProviders];
    v7 = [v5 isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)requestInfoProviderForTransportType:(int64_t)a3
{
  v4 = [(RequestTransportTypeInformation *)self transportTypeInfoProviders];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (RequestTransportTypeInformation)initWithDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if (([v10 integerValue] & 0x8000000000000000) != 0 || !objc_msgSend(v10, "integerValue") || objc_msgSend(v10, "integerValue") > 5)
          {

            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16.receiver = self;
    v16.super_class = RequestTransportTypeInformation;
    v11 = [(RequestTransportTypeInformation *)&v16 init];
    if (v11)
    {
      v12 = [v5 copy];
      transportTypeInfoProviders = v11->_transportTypeInfoProviders;
      v11->_transportTypeInfoProviders = v12;
    }

    self = v11;
    v14 = self;
  }

  else
  {

LABEL_17:
    v14 = 0;
  }

  return v14;
}

@end