@interface MechanismManagerACMResult
- (MechanismManagerACMResult)initWithMechanism:(id)mechanism availableMechanisms:(id)mechanisms mechanismTree:(id)tree internalInfo:(id)info;
@end

@implementation MechanismManagerACMResult

- (MechanismManagerACMResult)initWithMechanism:(id)mechanism availableMechanisms:(id)mechanisms mechanismTree:(id)tree internalInfo:(id)info
{
  mechanismCopy = mechanism;
  mechanismsCopy = mechanisms;
  treeCopy = tree;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = MechanismManagerACMResult;
  v15 = [(MechanismManagerACMResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mechanism, mechanism);
    objc_storeStrong(&v16->_availableMechanisms, mechanisms);
    objc_storeStrong(&v16->_mechanismTree, tree);
    objc_storeStrong(&v16->_internalInfo, info);
  }

  return v16;
}

@end