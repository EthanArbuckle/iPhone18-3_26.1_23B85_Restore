@interface HKClinicalBrand
+ (id)createFakeBrandForTestAccounts;
- (BOOL)isEqual:(id)a3;
- (HKClinicalBrand)init;
- (HKClinicalBrand)initWithCoder:(id)a3;
- (HKClinicalBrand)initWithExternalID:(id)a3 batchID:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalBrand)initWithExternalID:(id)a3 batchID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKClinicalBrand;
  v8 = [(HKClinicalBrand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    externalID = v8->_externalID;
    v8->_externalID = v9;

    v11 = [v7 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKClinicalBrand *)self externalID];
    v7 = [v5 externalID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(HKClinicalBrand *)self batchID];
      v9 = [v5 batchID];
      v10 = [v8 isEqualToString:v9];
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
  v3 = [(HKClinicalBrand *)self externalID];
  v4 = [v3 hash];
  v5 = [(HKClinicalBrand *)self batchID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalBrand *)self externalID];
  [v4 encodeObject:v5 forKey:@"externalID"];

  v6 = [(HKClinicalBrand *)self batchID];
  [v4 encodeObject:v6 forKey:@"batchID"];
}

- (HKClinicalBrand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchID"];
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
    [v4 failWithError:v10];

    v11 = 0;
  }

  else
  {
    self = [(HKClinicalBrand *)self initWithExternalID:v5 batchID:v6];
    v11 = self;
  }

  return v11;
}

@end