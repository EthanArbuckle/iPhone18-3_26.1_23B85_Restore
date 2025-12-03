@interface CTIPFilterEndpoint
- (CTIPFilterEndpoint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTIPFilterEndpoint

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  addr = [(CTIPFilterEndpoint *)self addr];

  if (addr)
  {
    addr2 = [(CTIPFilterEndpoint *)self addr];
    [v3 appendFormat:@", addr=%@", addr2];
  }

  maskLen = [(CTIPFilterEndpoint *)self maskLen];

  if (maskLen)
  {
    maskLen2 = [(CTIPFilterEndpoint *)self maskLen];
    [v3 appendFormat:@", maskLen=%@", maskLen2];
  }

  port = [(CTIPFilterEndpoint *)self port];

  if (port)
  {
    port2 = [(CTIPFilterEndpoint *)self port];
    [v3 appendFormat:@", port=%@", port2];
  }

  portRange = [(CTIPFilterEndpoint *)self portRange];

  if (portRange)
  {
    portRange2 = [(CTIPFilterEndpoint *)self portRange];
    [v3 appendFormat:@", portRange=%@", portRange2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  addr = [(CTIPFilterEndpoint *)self addr];
  v6 = [addr copy];
  [v4 setAddr:v6];

  maskLen = [(CTIPFilterEndpoint *)self maskLen];
  v8 = [maskLen copy];
  [v4 setMaskLen:v8];

  port = [(CTIPFilterEndpoint *)self port];
  v10 = [port copy];
  [v4 setPort:v10];

  portRange = [(CTIPFilterEndpoint *)self portRange];
  v12 = [portRange copy];
  [v4 setPortRange:v12];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  addr = [(CTIPFilterEndpoint *)self addr];
  [coderCopy encodeObject:addr forKey:@"addr"];

  maskLen = [(CTIPFilterEndpoint *)self maskLen];
  [coderCopy encodeObject:maskLen forKey:@"maskLen"];

  port = [(CTIPFilterEndpoint *)self port];
  [coderCopy encodeObject:port forKey:@"port"];

  portRange = [(CTIPFilterEndpoint *)self portRange];
  [coderCopy encodeObject:portRange forKey:@"portRange"];
}

- (CTIPFilterEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTIPFilterEndpoint;
  v5 = [(CTIPFilterEndpoint *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addr"];
    addr = v5->_addr;
    v5->_addr = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskLen"];
    maskLen = v5->_maskLen;
    v5->_maskLen = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"portRange"];
    portRange = v5->_portRange;
    v5->_portRange = v12;
  }

  return v5;
}

@end