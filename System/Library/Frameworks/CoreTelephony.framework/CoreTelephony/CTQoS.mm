@interface CTQoS
- (CTQoS)initWithCoder:(id)coder;
- (NSNumber)gbr;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

  bitRateMax = [(CTQoS *)self bitRateMax];

  if (bitRateMax)
  {
    bitRateMax2 = [(CTQoS *)self bitRateMax];
    [v3 appendFormat:@", bitRateMax=%@", bitRateMax2];
  }

  bitRateMin = [(CTQoS *)self bitRateMin];

  if (bitRateMin)
  {
    bitRateMin2 = [(CTQoS *)self bitRateMin];
    [v3 appendFormat:@", bitRateMin=%@", bitRateMin2];
  }

  filters = [(CTQoS *)self filters];

  if (filters)
  {
    filters2 = [(CTQoS *)self filters];
    [v3 appendFormat:@", filters=%@", filters2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(CTQoS *)self qci];
  v6 = [v5 copy];
  [v4 setQci:v6];

  bitRateMax = [(CTQoS *)self bitRateMax];
  v8 = [bitRateMax copy];
  [v4 setBitRateMax:v8];

  bitRateMin = [(CTQoS *)self bitRateMin];
  v10 = [bitRateMin copy];
  [v4 setBitRateMin:v10];

  filters = [(CTQoS *)self filters];
  v12 = [filters copy];
  [v4 setFilters:v12];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CTQoS *)self qci];
  [coderCopy encodeObject:v5 forKey:@"qci"];

  bitRateMax = [(CTQoS *)self bitRateMax];
  [coderCopy encodeObject:bitRateMax forKey:@"bitRateMax"];

  bitRateMin = [(CTQoS *)self bitRateMin];
  [coderCopy encodeObject:bitRateMin forKey:@"bitRateMin"];

  filters = [(CTQoS *)self filters];
  [coderCopy encodeObject:filters forKey:@"filters"];
}

- (CTQoS)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CTQoS;
  v5 = [(CTQoS *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qci"];
    qci = v5->_qci;
    v5->_qci = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitRateMax"];
    bitRateMax = v5->_bitRateMax;
    v5->_bitRateMax = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitRateMin"];
    bitRateMin = v5->_bitRateMin;
    v5->_bitRateMin = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"filters"];
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
    unsignedIntValue = [v4 unsignedIntValue];

    v6 = 1;
    v7 = unsignedIntValue - 65;
    if ((unsignedIntValue - 65) <= 0x14)
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

    if ((unsignedIntValue - 5) < 5)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_8;
    }

    if ((unsignedIntValue - 1) < 4)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end