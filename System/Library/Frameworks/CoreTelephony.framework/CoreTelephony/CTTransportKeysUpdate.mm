@interface CTTransportKeysUpdate
- (CTTransportKeysUpdate)initWith:(id)a3;
- (CTTransportKeysUpdate)initWith:(id)a3 sps:(id)a4;
- (CTTransportKeysUpdate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTTransportKeysUpdate

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTTransportKeysUpdate *)self keys];
  [v3 appendFormat:@", keys=%@", v4];

  v5 = [(CTTransportKeysUpdate *)self sps_environment];
  [v3 appendFormat:@", env=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (CTTransportKeysUpdate)initWith:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CTTransportKeysUpdate;
  v5 = [(CTTransportKeysUpdate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CTTransportKeysUpdate *)v5 setKeys:v4];
    [(CTTransportKeysUpdate *)v6 setSps_environment:0];
  }

  return v6;
}

- (CTTransportKeysUpdate)initWith:(id)a3 sps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CTTransportKeysUpdate;
  v8 = [(CTTransportKeysUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CTTransportKeysUpdate *)v8 setKeys:v6];
    [(CTTransportKeysUpdate *)v9 setSps_environment:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTTransportKeysUpdate *)self keys];
  v6 = [v5 copy];
  [v4 setKeys:v6];

  v7 = [(CTTransportKeysUpdate *)self sps_environment];
  v8 = [v7 copy];
  [v4 setSps_environment:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTTransportKeysUpdate *)self keys];
  [v4 encodeObject:v5 forKey:@"tkey_value"];

  v6 = [(CTTransportKeysUpdate *)self sps_environment];
  [v4 encodeObject:v6 forKey:@"sps_environment"];
}

- (CTTransportKeysUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTTransportKeysUpdate;
  v5 = [(CTTransportKeysUpdate *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tkey_value"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sps_environment"];
    sps_environment = v5->_sps_environment;
    v5->_sps_environment = v11;
  }

  return v5;
}

@end