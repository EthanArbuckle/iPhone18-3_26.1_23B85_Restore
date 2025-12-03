@interface FRFlintEmbedConfiguration
- (FRFlintEmbedConfiguration)initWithData:(id)data;
- (id)embedForType:(id)type;
@end

@implementation FRFlintEmbedConfiguration

- (FRFlintEmbedConfiguration)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = FRFlintEmbedConfiguration;
  v5 = [(FRFlintEmbedConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:0];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [[SXJSONDictionary alloc] initWithValueClassBlock:&stru_1000C18A8 objectValueClassBlock:0 purgeBlock:0 andJSONObject:v6 andVersion:0];
        embedConfiguration = v5->_embedConfiguration;
        v5->_embedConfiguration = v7;
      }
    }
  }

  return v5;
}

- (id)embedForType:(id)type
{
  typeCopy = type;
  embedConfiguration = [(FRFlintEmbedConfiguration *)self embedConfiguration];
  v6 = [embedConfiguration objectForKey:typeCopy];

  return v6;
}

@end