@interface CTLocalPlan
- (CTLocalPlan)initWithCoder:(id)coder;
- (CTLocalPlan)initWithPlanID:(id)d;
- (id)description;
@end

@implementation CTLocalPlan

- (CTLocalPlan)initWithPlanID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CTLocalPlan;
  v6 = [(CTLocalPlan *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_planID, d);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  planID = [(CTLocalPlan *)self planID];
  [v3 appendFormat:@" planID=%@", planID];

  [v3 appendString:@">"];

  return v3;
}

- (CTLocalPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLocalPlan;
  v5 = [(CTLocalPlan *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planID"];
    planID = v5->_planID;
    v5->_planID = v6;
  }

  return v5;
}

@end