@interface APSDNSResponse
- (APSDNSResponse)initWithCoder:(id)a3;
- (id)initResponseForHostname:(id)a3 ipv4Address:(id)a4 ipv6Address:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSDNSResponse

- (id)initResponseForHostname:(id)a3 ipv4Address:(id)a4 ipv6Address:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = APSDNSResponse;
  v11 = [(APSDNSResponse *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    hostname = v11->_hostname;
    v11->_hostname = v12;

    v14 = [v9 componentsSeparatedByString:{@", "}];
    ipv4Address = v11->_ipv4Address;
    v11->_ipv4Address = v14;

    v16 = [v10 componentsSeparatedByString:{@", "}];
    ipv6Address = v11->_ipv6Address;
    v11->_ipv6Address = v16;
  }

  return v11;
}

- (APSDNSResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = APSDNSResponse;
  v5 = [(APSDNSResponse *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSHostname"];
    hostname = v5->_hostname;
    v5->_hostname = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"APSDNSIPv4Address"];
    ipv4Address = v5->_ipv4Address;
    v5->_ipv4Address = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"APSDNSIPv6Address"];
    ipv6Address = v5->_ipv6Address;
    v5->_ipv6Address = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hostname = self->_hostname;
  v5 = a3;
  [v5 encodeObject:hostname forKey:@"APSDNSHostname"];
  [v5 encodeObject:self->_ipv4Address forKey:@"APSDNSIPv4Address"];
  [v5 encodeObject:self->_ipv6Address forKey:@"APSDNSIPv6Address"];
}

@end