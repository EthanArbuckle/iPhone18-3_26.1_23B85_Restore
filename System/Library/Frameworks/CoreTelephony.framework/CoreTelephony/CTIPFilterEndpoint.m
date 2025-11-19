@interface CTIPFilterEndpoint
- (CTIPFilterEndpoint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTIPFilterEndpoint

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTIPFilterEndpoint *)self addr];

  if (v4)
  {
    v5 = [(CTIPFilterEndpoint *)self addr];
    [v3 appendFormat:@", addr=%@", v5];
  }

  v6 = [(CTIPFilterEndpoint *)self maskLen];

  if (v6)
  {
    v7 = [(CTIPFilterEndpoint *)self maskLen];
    [v3 appendFormat:@", maskLen=%@", v7];
  }

  v8 = [(CTIPFilterEndpoint *)self port];

  if (v8)
  {
    v9 = [(CTIPFilterEndpoint *)self port];
    [v3 appendFormat:@", port=%@", v9];
  }

  v10 = [(CTIPFilterEndpoint *)self portRange];

  if (v10)
  {
    v11 = [(CTIPFilterEndpoint *)self portRange];
    [v3 appendFormat:@", portRange=%@", v11];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTIPFilterEndpoint *)self addr];
  v6 = [v5 copy];
  [v4 setAddr:v6];

  v7 = [(CTIPFilterEndpoint *)self maskLen];
  v8 = [v7 copy];
  [v4 setMaskLen:v8];

  v9 = [(CTIPFilterEndpoint *)self port];
  v10 = [v9 copy];
  [v4 setPort:v10];

  v11 = [(CTIPFilterEndpoint *)self portRange];
  v12 = [v11 copy];
  [v4 setPortRange:v12];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTIPFilterEndpoint *)self addr];
  [v4 encodeObject:v5 forKey:@"addr"];

  v6 = [(CTIPFilterEndpoint *)self maskLen];
  [v4 encodeObject:v6 forKey:@"maskLen"];

  v7 = [(CTIPFilterEndpoint *)self port];
  [v4 encodeObject:v7 forKey:@"port"];

  v8 = [(CTIPFilterEndpoint *)self portRange];
  [v4 encodeObject:v8 forKey:@"portRange"];
}

- (CTIPFilterEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTIPFilterEndpoint;
  v5 = [(CTIPFilterEndpoint *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addr"];
    addr = v5->_addr;
    v5->_addr = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskLen"];
    maskLen = v5->_maskLen;
    v5->_maskLen = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portRange"];
    portRange = v5->_portRange;
    v5->_portRange = v12;
  }

  return v5;
}

@end