@interface CTTransportKey
- (CTTransportKey)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTTransportKey

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", index=%d", -[CTTransportKey index](self, "index")];
  v4 = [(CTTransportKey *)self key];
  [v3 appendFormat:@", key=%@", v4];

  key_epki = [(CTTransportKey *)self key_epki];
  [v3 appendFormat:@", epki=%@", key_epki];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  [v3 appendFormat:@", retired epki=%@", retiredKey_epki];

  [v3 appendFormat:@", last resort=%d", -[CTTransportKey last_resort](self, "last_resort")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIndex:{-[CTTransportKey index](self, "index")}];
  v5 = [(CTTransportKey *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  key_epki = [(CTTransportKey *)self key_epki];
  v8 = [key_epki copy];
  [v4 setKey_epki:v8];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  v10 = [retiredKey_epki copy];
  [v4 setRetiredKey_epki:v10];

  [v4 setLast_resort:{-[CTTransportKey last_resort](self, "last_resort")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[CTTransportKey index](self forKey:{"index"), @"tkey_index"}];
  v4 = [(CTTransportKey *)self key];
  [coderCopy encodeObject:v4 forKey:@"tkey_value"];

  key_epki = [(CTTransportKey *)self key_epki];
  [coderCopy encodeObject:key_epki forKey:@"tkey_epki"];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  [coderCopy encodeObject:retiredKey_epki forKey:@"tkey_retired_epki"];

  [coderCopy encodeBool:-[CTTransportKey last_resort](self forKey:{"last_resort"), @"last_resort"}];
}

- (CTTransportKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTTransportKey;
  v5 = [(CTTransportKey *)&v13 init];
  if (v5)
  {
    v5->_index = [coderCopy decodeInt32ForKey:@"tkey_index"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_value"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_epki"];
    key_epki = v5->_key_epki;
    v5->_key_epki = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_retired_epki"];
    retiredKey_epki = v5->_retiredKey_epki;
    v5->_retiredKey_epki = v10;

    v5->_last_resort = [coderCopy decodeBoolForKey:@"last_resort"];
  }

  return v5;
}

@end