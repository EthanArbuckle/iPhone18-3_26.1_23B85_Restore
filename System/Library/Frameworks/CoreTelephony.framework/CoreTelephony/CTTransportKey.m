@interface CTTransportKey
- (CTTransportKey)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTTransportKey

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", index=%d", -[CTTransportKey index](self, "index")];
  v4 = [(CTTransportKey *)self key];
  [v3 appendFormat:@", key=%@", v4];

  v5 = [(CTTransportKey *)self key_epki];
  [v3 appendFormat:@", epki=%@", v5];

  v6 = [(CTTransportKey *)self retiredKey_epki];
  [v3 appendFormat:@", retired epki=%@", v6];

  [v3 appendFormat:@", last resort=%d", -[CTTransportKey last_resort](self, "last_resort")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIndex:{-[CTTransportKey index](self, "index")}];
  v5 = [(CTTransportKey *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  v7 = [(CTTransportKey *)self key_epki];
  v8 = [v7 copy];
  [v4 setKey_epki:v8];

  v9 = [(CTTransportKey *)self retiredKey_epki];
  v10 = [v9 copy];
  [v4 setRetiredKey_epki:v10];

  [v4 setLast_resort:{-[CTTransportKey last_resort](self, "last_resort")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt32:-[CTTransportKey index](self forKey:{"index"), @"tkey_index"}];
  v4 = [(CTTransportKey *)self key];
  [v7 encodeObject:v4 forKey:@"tkey_value"];

  v5 = [(CTTransportKey *)self key_epki];
  [v7 encodeObject:v5 forKey:@"tkey_epki"];

  v6 = [(CTTransportKey *)self retiredKey_epki];
  [v7 encodeObject:v6 forKey:@"tkey_retired_epki"];

  [v7 encodeBool:-[CTTransportKey last_resort](self forKey:{"last_resort"), @"last_resort"}];
}

- (CTTransportKey)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTTransportKey;
  v5 = [(CTTransportKey *)&v13 init];
  if (v5)
  {
    v5->_index = [v4 decodeInt32ForKey:@"tkey_index"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tkey_value"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tkey_epki"];
    key_epki = v5->_key_epki;
    v5->_key_epki = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tkey_retired_epki"];
    retiredKey_epki = v5->_retiredKey_epki;
    v5->_retiredKey_epki = v10;

    v5->_last_resort = [v4 decodeBoolForKey:@"last_resort"];
  }

  return v5;
}

@end