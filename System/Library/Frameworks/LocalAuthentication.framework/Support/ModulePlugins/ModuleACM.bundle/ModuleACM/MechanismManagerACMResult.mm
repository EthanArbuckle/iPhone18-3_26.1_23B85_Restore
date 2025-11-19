@interface MechanismManagerACMResult
- (MechanismManagerACMResult)initWithMechanism:(id)a3 availableMechanisms:(id)a4 mechanismTree:(id)a5 internalInfo:(id)a6;
@end

@implementation MechanismManagerACMResult

- (MechanismManagerACMResult)initWithMechanism:(id)a3 availableMechanisms:(id)a4 mechanismTree:(id)a5 internalInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MechanismManagerACMResult;
  v15 = [(MechanismManagerACMResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mechanism, a3);
    objc_storeStrong(&v16->_availableMechanisms, a4);
    objc_storeStrong(&v16->_mechanismTree, a5);
    objc_storeStrong(&v16->_internalInfo, a6);
  }

  return v16;
}

@end