@interface CTTransportSTK
- (CTTransportSTK)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTTransportSTK

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", index=%d", -[CTTransportSTK index](self, "index")];
  v4 = [(CTTransportSTK *)self key_epki];
  [v3 appendFormat:@", epki=%@", v4];

  v5 = [(CTTransportSTK *)self stk];
  [v3 appendFormat:@", stk=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIndex:{-[CTTransportSTK index](self, "index")}];
  v5 = [(CTTransportSTK *)self key_epki];
  v6 = [v5 copy];
  [v4 setKey_epki:v6];

  v7 = [(CTTransportSTK *)self stk];
  v8 = [v7 copy];
  [v4 setStk:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[CTTransportSTK index](self forKey:{"index"), @"tkey_index"}];
  v5 = [(CTTransportSTK *)self key_epki];
  [v4 encodeObject:v5 forKey:@"tkey_epki"];

  v6 = [(CTTransportSTK *)self stk];
  [v4 encodeObject:v6 forKey:@"tkey_value"];
}

- (CTTransportSTK)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTTransportSTK;
  v5 = [(CTTransportSTK *)&v11 init];
  if (v5)
  {
    v5->_index = [v4 decodeInt32ForKey:@"tkey_index"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tkey_epki"];
    key_epki = v5->_key_epki;
    v5->_key_epki = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tkey_value"];
    stk = v5->_stk;
    v5->_stk = v8;
  }

  return v5;
}

@end