@interface APSDNSResponse
- (APSDNSResponse)initWithCoder:(id)coder;
- (id)initResponseForHostname:(id)hostname ipv4Address:(id)address ipv6Address:(id)ipv6Address;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSDNSResponse

- (id)initResponseForHostname:(id)hostname ipv4Address:(id)address ipv6Address:(id)ipv6Address
{
  hostnameCopy = hostname;
  addressCopy = address;
  ipv6AddressCopy = ipv6Address;
  v19.receiver = self;
  v19.super_class = APSDNSResponse;
  v11 = [(APSDNSResponse *)&v19 init];
  if (v11)
  {
    v12 = [hostnameCopy copy];
    hostname = v11->_hostname;
    v11->_hostname = v12;

    v14 = [addressCopy componentsSeparatedByString:{@", "}];
    ipv4Address = v11->_ipv4Address;
    v11->_ipv4Address = v14;

    v16 = [ipv6AddressCopy componentsSeparatedByString:{@", "}];
    ipv6Address = v11->_ipv6Address;
    v11->_ipv6Address = v16;
  }

  return v11;
}

- (APSDNSResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = APSDNSResponse;
  v5 = [(APSDNSResponse *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSHostname"];
    hostname = v5->_hostname;
    v5->_hostname = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"APSDNSIPv4Address"];
    ipv4Address = v5->_ipv4Address;
    v5->_ipv4Address = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"APSDNSIPv6Address"];
    ipv6Address = v5->_ipv6Address;
    v5->_ipv6Address = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hostname = self->_hostname;
  coderCopy = coder;
  [coderCopy encodeObject:hostname forKey:@"APSDNSHostname"];
  [coderCopy encodeObject:self->_ipv4Address forKey:@"APSDNSIPv4Address"];
  [coderCopy encodeObject:self->_ipv6Address forKey:@"APSDNSIPv6Address"];
}

@end