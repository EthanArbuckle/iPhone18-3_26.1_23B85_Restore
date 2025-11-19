@interface CTQoS
- (CTQoS)initWithCoder:(id)a3;
- (NSNumber)gbr;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTQoS

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTQoS *)self qci];

  if (v4)
  {
    v5 = [(CTQoS *)self qci];
    [v3 appendFormat:@", qci=%@", v5];
  }

  v6 = [(CTQoS *)self bitRateMax];

  if (v6)
  {
    v7 = [(CTQoS *)self bitRateMax];
    [v3 appendFormat:@", bitRateMax=%@", v7];
  }

  v8 = [(CTQoS *)self bitRateMin];

  if (v8)
  {
    v9 = [(CTQoS *)self bitRateMin];
    [v3 appendFormat:@", bitRateMin=%@", v9];
  }

  v10 = [(CTQoS *)self filters];

  if (v10)
  {
    v11 = [(CTQoS *)self filters];
    [v3 appendFormat:@", filters=%@", v11];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTQoS *)self qci];
  v6 = [v5 copy];
  [v4 setQci:v6];

  v7 = [(CTQoS *)self bitRateMax];
  v8 = [v7 copy];
  [v4 setBitRateMax:v8];

  v9 = [(CTQoS *)self bitRateMin];
  v10 = [v9 copy];
  [v4 setBitRateMin:v10];

  v11 = [(CTQoS *)self filters];
  v12 = [v11 copy];
  [v4 setFilters:v12];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTQoS *)self qci];
  [v4 encodeObject:v5 forKey:@"qci"];

  v6 = [(CTQoS *)self bitRateMax];
  [v4 encodeObject:v6 forKey:@"bitRateMax"];

  v7 = [(CTQoS *)self bitRateMin];
  [v4 encodeObject:v7 forKey:@"bitRateMin"];

  v8 = [(CTQoS *)self filters];
  [v4 encodeObject:v8 forKey:@"filters"];
}

- (CTQoS)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CTQoS;
  v5 = [(CTQoS *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qci"];
    qci = v5->_qci;
    v5->_qci = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bitRateMax"];
    bitRateMax = v5->_bitRateMax;
    v5->_bitRateMax = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bitRateMin"];
    bitRateMin = v5->_bitRateMin;
    v5->_bitRateMin = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"filters"];
    filters = v5->_filters;
    v5->_filters = v15;
  }

  return v5;
}

- (NSNumber)gbr
{
  v3 = [(CTQoS *)self qci];

  if (v3)
  {
    v4 = [(CTQoS *)self qci];
    v5 = [v4 unsignedIntValue];

    v6 = 1;
    v7 = v5 - 65;
    if ((v5 - 65) <= 0x14)
    {
      if (((1 << v7) & 0xFC7) != 0)
      {
LABEL_8:
        v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v6];
        goto LABEL_10;
      }

      if (((1 << v7) & 0x1EC030) != 0)
      {
        goto LABEL_6;
      }
    }

    if ((v5 - 5) < 5)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_8;
    }

    if ((v5 - 1) < 4)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end