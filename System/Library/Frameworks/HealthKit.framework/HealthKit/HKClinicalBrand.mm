@interface HKClinicalBrand
+ (id)createFakeBrandForTestAccounts;
- (BOOL)isEqual:(id)equal;
- (HKClinicalBrand)init;
- (HKClinicalBrand)initWithCoder:(id)coder;
- (HKClinicalBrand)initWithExternalID:(id)d batchID:(id)iD;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalBrand

- (HKClinicalBrand)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalBrand)initWithExternalID:(id)d batchID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HKClinicalBrand;
  v8 = [(HKClinicalBrand *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    externalID = v8->_externalID;
    v8->_externalID = v9;

    v11 = [iDCopy copy];
    batchID = v8->_batchID;
    v8->_batchID = v11;
  }

  return v8;
}

+ (id)createFakeBrandForTestAccounts
{
  v2 = [[HKClinicalBrand alloc] initWithExternalID:@"INVALID_FAKEBRANDID" batchID:@"INVALID_FAKEBRANDBATCHID"];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    externalID = [(HKClinicalBrand *)self externalID];
    externalID2 = [v5 externalID];
    if ([externalID isEqualToString:externalID2])
    {
      batchID = [(HKClinicalBrand *)self batchID];
      batchID2 = [v5 batchID];
      v10 = [batchID isEqualToString:batchID2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  externalID = [(HKClinicalBrand *)self externalID];
  v4 = [externalID hash];
  batchID = [(HKClinicalBrand *)self batchID];
  v6 = [batchID hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  externalID = [(HKClinicalBrand *)self externalID];
  [coderCopy encodeObject:externalID forKey:@"externalID"];

  batchID = [(HKClinicalBrand *)self batchID];
  [coderCopy encodeObject:batchID forKey:@"batchID"];
}

- (HKClinicalBrand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = [v9 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v10];

    selfCopy = 0;
  }

  else
  {
    self = [(HKClinicalBrand *)self initWithExternalID:v5 batchID:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end