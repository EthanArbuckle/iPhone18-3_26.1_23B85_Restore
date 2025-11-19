@interface THThreadNetworkBorderAgent
- (THThreadNetworkBorderAgent)initWithBaDiscrId:(id)a3;
- (THThreadNetworkBorderAgent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetworkBorderAgent

- (THThreadNetworkBorderAgent)initWithBaDiscrId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] != 8)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THThreadNetworkBorderAgent;
    v6 = [(THThreadNetworkBorderAgent *)&v11 init];
    if (v6)
    {
      v7 = [v5 copy];
      discriminatorId = v6->_discriminatorId;
      v6->_discriminatorId = v7;
    }

    self = v6;
    v9 = self;
  }

  return v9;
}

- (THThreadNetworkBorderAgent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ba"];

  v6 = [(THThreadNetworkBorderAgent *)self initWithBaDiscrId:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkBorderAgent *)self discriminatorId];
  [v4 encodeObject:v5 forKey:@"ba"];
}

@end