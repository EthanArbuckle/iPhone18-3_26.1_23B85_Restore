@interface CTNetworkList
- (CTNetworkList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTNetworkList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  networks = [(CTNetworkList *)self networks];
  [v3 appendFormat:@", networks=%@", networks];

  [v3 appendFormat:@", moreComing=%d", -[CTNetworkList moreComing](self, "moreComing")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  networks = [(CTNetworkList *)self networks];
  v6 = [networks copy];
  [v4 setNetworks:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networks = [(CTNetworkList *)self networks];
  [coderCopy encodeObject:networks forKey:@"networks"];

  [coderCopy encodeBool:-[CTNetworkList moreComing](self forKey:{"moreComing"), @"moreComing"}];
}

- (CTNetworkList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTNetworkList;
  v5 = [(CTNetworkList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"networks"];
    networks = v5->_networks;
    v5->_networks = v9;

    v5->_moreComing = [coderCopy decodeBoolForKey:@"moreComing"];
  }

  return v5;
}

@end