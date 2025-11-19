@interface CTAvailablePlan
- (BOOL)isEqual:(id)a3;
- (CTAvailablePlan)initWithCoder:(id)a3;
- (CTAvailablePlan)initWithIccid:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTAvailablePlan

- (CTAvailablePlan)initWithIccid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTAvailablePlan;
  v6 = [(CTAvailablePlan *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccid, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", iccid=%@", self->_iccid];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTAvailablePlan;
  if ([(CTPlan *)&v11 isEqual:v4])
  {
    v5 = [(CTAvailablePlan *)self iccid];
    v6 = [v4 iccid];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(CTAvailablePlan *)self iccid];
      v8 = [v4 iccid];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CTAvailablePlan)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTAvailablePlan;
  v5 = [(CTPlan *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CTAvailablePlan;
  v4 = a3;
  [(CTPlan *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_iccid forKey:{@"iccid", v5.receiver, v5.super_class}];
}

@end