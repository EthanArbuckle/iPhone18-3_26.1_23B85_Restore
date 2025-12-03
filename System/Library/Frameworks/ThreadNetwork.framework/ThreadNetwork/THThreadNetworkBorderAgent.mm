@interface THThreadNetworkBorderAgent
- (THThreadNetworkBorderAgent)initWithBaDiscrId:(id)id;
- (THThreadNetworkBorderAgent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetworkBorderAgent

- (THThreadNetworkBorderAgent)initWithBaDiscrId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (idCopy && [idCopy length] != 8)
  {
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (THThreadNetworkBorderAgent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ba"];

  v6 = [(THThreadNetworkBorderAgent *)self initWithBaDiscrId:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  discriminatorId = [(THThreadNetworkBorderAgent *)self discriminatorId];
  [coderCopy encodeObject:discriminatorId forKey:@"ba"];
}

@end