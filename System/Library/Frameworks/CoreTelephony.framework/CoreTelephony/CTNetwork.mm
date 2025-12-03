@interface CTNetwork
- (BOOL)isEqual:(id)equal;
- (CTNetwork)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTNetwork

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(CTNetwork *)self name];
      name2 = [(CTNetwork *)v5 name];
      if (name == name2 || [name isEqualToString:name2])
      {
        plmn = [(CTNetwork *)self plmn];
        plmn2 = [(CTNetwork *)v5 plmn];
        if (plmn == plmn2 || [plmn isEqualToString:plmn2])
        {
          v10 = [(CTNetwork *)self rat];
          v11 = [(CTNetwork *)v5 rat];
          if (v10 == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [v10 isEqualToString:v11];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  name = [(CTNetwork *)self name];
  [v3 appendFormat:@", name=%@", name];

  plmn = [(CTNetwork *)self plmn];
  [v3 appendFormat:@", plmn=%@", plmn];

  v6 = [(CTNetwork *)self rat];
  [v3 appendFormat:@", rat=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(CTNetwork *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  plmn = [(CTNetwork *)self plmn];
  v8 = [plmn copy];
  [v4 setPlmn:v8];

  v9 = [(CTNetwork *)self rat];
  v10 = [v9 copy];
  [v4 setRat:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CTNetwork *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  plmn = [(CTNetwork *)self plmn];
  [coderCopy encodeObject:plmn forKey:@"plmn"];

  v7 = [(CTNetwork *)self rat];
  [coderCopy encodeObject:v7 forKey:@"rat"];
}

- (CTNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTNetwork;
  v5 = [(CTNetwork *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plmn"];
    plmn = v5->_plmn;
    v5->_plmn = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rat"];
    rat = v5->_rat;
    v5->_rat = v10;
  }

  return v5;
}

@end