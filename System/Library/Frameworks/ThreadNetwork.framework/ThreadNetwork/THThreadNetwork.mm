@interface THThreadNetwork
- (THThreadNetwork)initWithCoder:(id)a3;
- (THThreadNetwork)initWithName:(id)a3 extendedPANID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetwork

- (THThreadNetwork)initWithName:(id)a3 extendedPANID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length] == 8)
  {
    v15.receiver = self;
    v15.super_class = THThreadNetwork;
    v8 = [(THThreadNetwork *)&v15 init];
    if (v8)
    {
      v9 = [v6 copy];
      networkName = v8->_networkName;
      v8->_networkName = v9;

      v11 = [v7 copy];
      extendedPANID = v8->_extendedPANID;
      v8->_extendedPANID = v11;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (THThreadNetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xp"];

  v7 = [(THThreadNetwork *)self initWithName:v5 extendedPANID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetwork *)self networkName];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(THThreadNetwork *)self extendedPANID];
  [v4 encodeObject:v6 forKey:@"xp"];
}

@end