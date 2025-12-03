@interface CTTransportKeysUpdate
- (CTTransportKeysUpdate)initWith:(id)with;
- (CTTransportKeysUpdate)initWith:(id)with sps:(id)sps;
- (CTTransportKeysUpdate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTTransportKeysUpdate

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  keys = [(CTTransportKeysUpdate *)self keys];
  [v3 appendFormat:@", keys=%@", keys];

  sps_environment = [(CTTransportKeysUpdate *)self sps_environment];
  [v3 appendFormat:@", env=%@", sps_environment];

  [v3 appendString:@">"];

  return v3;
}

- (CTTransportKeysUpdate)initWith:(id)with
{
  withCopy = with;
  v8.receiver = self;
  v8.super_class = CTTransportKeysUpdate;
  v5 = [(CTTransportKeysUpdate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CTTransportKeysUpdate *)v5 setKeys:withCopy];
    [(CTTransportKeysUpdate *)v6 setSps_environment:0];
  }

  return v6;
}

- (CTTransportKeysUpdate)initWith:(id)with sps:(id)sps
{
  withCopy = with;
  spsCopy = sps;
  v11.receiver = self;
  v11.super_class = CTTransportKeysUpdate;
  v8 = [(CTTransportKeysUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CTTransportKeysUpdate *)v8 setKeys:withCopy];
    [(CTTransportKeysUpdate *)v9 setSps_environment:spsCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  keys = [(CTTransportKeysUpdate *)self keys];
  v6 = [keys copy];
  [v4 setKeys:v6];

  sps_environment = [(CTTransportKeysUpdate *)self sps_environment];
  v8 = [sps_environment copy];
  [v4 setSps_environment:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keys = [(CTTransportKeysUpdate *)self keys];
  [coderCopy encodeObject:keys forKey:@"tkey_value"];

  sps_environment = [(CTTransportKeysUpdate *)self sps_environment];
  [coderCopy encodeObject:sps_environment forKey:@"sps_environment"];
}

- (CTTransportKeysUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTTransportKeysUpdate;
  v5 = [(CTTransportKeysUpdate *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tkey_value"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sps_environment"];
    sps_environment = v5->_sps_environment;
    v5->_sps_environment = v11;
  }

  return v5;
}

@end