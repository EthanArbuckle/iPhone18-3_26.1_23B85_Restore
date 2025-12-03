@interface THThreadNetwork
- (THThreadNetwork)initWithCoder:(id)coder;
- (THThreadNetwork)initWithName:(id)name extendedPANID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetwork

- (THThreadNetwork)initWithName:(id)name extendedPANID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if ([dCopy length] == 8)
  {
    v15.receiver = self;
    v15.super_class = THThreadNetwork;
    v8 = [(THThreadNetwork *)&v15 init];
    if (v8)
    {
      v9 = [nameCopy copy];
      networkName = v8->_networkName;
      v8->_networkName = v9;

      v11 = [dCopy copy];
      extendedPANID = v8->_extendedPANID;
      v8->_extendedPANID = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (THThreadNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xp"];

  v7 = [(THThreadNetwork *)self initWithName:v5 extendedPANID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkName = [(THThreadNetwork *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"name"];

  extendedPANID = [(THThreadNetwork *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"xp"];
}

@end