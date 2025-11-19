@interface CTNetworkList
- (CTNetworkList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTNetworkList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTNetworkList *)self networks];
  [v3 appendFormat:@", networks=%@", v4];

  [v3 appendFormat:@", moreComing=%d", -[CTNetworkList moreComing](self, "moreComing")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTNetworkList *)self networks];
  v6 = [v5 copy];
  [v4 setNetworks:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTNetworkList *)self networks];
  [v5 encodeObject:v4 forKey:@"networks"];

  [v5 encodeBool:-[CTNetworkList moreComing](self forKey:{"moreComing"), @"moreComing"}];
}

- (CTNetworkList)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTNetworkList;
  v5 = [(CTNetworkList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"networks"];
    networks = v5->_networks;
    v5->_networks = v9;

    v5->_moreComing = [v4 decodeBoolForKey:@"moreComing"];
  }

  return v5;
}

@end