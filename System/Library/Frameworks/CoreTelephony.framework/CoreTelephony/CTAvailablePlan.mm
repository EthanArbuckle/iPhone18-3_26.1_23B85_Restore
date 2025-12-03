@interface CTAvailablePlan
- (BOOL)isEqual:(id)equal;
- (CTAvailablePlan)initWithCoder:(id)coder;
- (CTAvailablePlan)initWithIccid:(id)iccid;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTAvailablePlan

- (CTAvailablePlan)initWithIccid:(id)iccid
{
  iccidCopy = iccid;
  v9.receiver = self;
  v9.super_class = CTAvailablePlan;
  v6 = [(CTAvailablePlan *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccid, iccid);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = CTAvailablePlan;
  if ([(CTPlan *)&v11 isEqual:equalCopy])
  {
    iccid = [(CTAvailablePlan *)self iccid];
    iccid2 = [equalCopy iccid];
    if (iccid == iccid2)
    {
      v9 = 1;
    }

    else
    {
      iccid3 = [(CTAvailablePlan *)self iccid];
      iccid4 = [equalCopy iccid];
      v9 = [iccid3 isEqual:iccid4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CTAvailablePlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTAvailablePlan;
  v5 = [(CTPlan *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CTAvailablePlan;
  coderCopy = coder;
  [(CTPlan *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_iccid forKey:{@"iccid", v5.receiver, v5.super_class}];
}

@end