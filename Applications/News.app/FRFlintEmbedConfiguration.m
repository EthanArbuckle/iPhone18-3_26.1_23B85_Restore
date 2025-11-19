@interface FRFlintEmbedConfiguration
- (FRFlintEmbedConfiguration)initWithData:(id)a3;
- (id)embedForType:(id)a3;
@end

@implementation FRFlintEmbedConfiguration

- (FRFlintEmbedConfiguration)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FRFlintEmbedConfiguration;
  v5 = [(FRFlintEmbedConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [NSJSONSerialization JSONObjectWithData:v4 options:4 error:0];
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

- (id)embedForType:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintEmbedConfiguration *)self embedConfiguration];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end