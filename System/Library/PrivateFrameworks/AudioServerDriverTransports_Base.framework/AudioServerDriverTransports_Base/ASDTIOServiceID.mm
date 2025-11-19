@interface ASDTIOServiceID
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASDTIOServiceID

- (unint64_t)hash
{
  v3 = [(ASDTIOServiceID *)self identifier];
  v4 = [v3 hash];
  v5 = [(ASDTIOServiceID *)self clientType];

  return v4 ^ v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ASDTIOServiceID *)self identifier];
  v6 = [v4 initForIdentifier:v5 andClientType:{-[ASDTIOServiceID clientType](self, "clientType")}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASDTIOServiceID *)self identifier];
      v7 = [(ASDTIOServiceID *)v5 identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(ASDTIOServiceID *)self clientType];
        v9 = v8 == [(ASDTIOServiceID *)v5 clientType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v5 = [(ASDTIOServiceID *)self identifier];
      v9 = [(ASDTIOServiceID *)v5 isEqualToString:v4];
    }
  }

LABEL_12:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASDTIOServiceID *)self identifier];
  v5 = [v3 stringWithFormat:@"%@:%u", v4, -[ASDTIOServiceID clientType](self, "clientType")];

  return v5;
}

@end