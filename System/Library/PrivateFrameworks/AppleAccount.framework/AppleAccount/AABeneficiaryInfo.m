@interface AABeneficiaryInfo
- (AABeneficiaryInfo)initWithBeneficiaryID:(id)a3 benefactorAltDSID:(id)a4 handle:(id)a5 otPeerID:(id)a6 repairDate:(id)a7 repairCount:(unint64_t)a8 recordBuildVersion:(id)a9;
- (AABeneficiaryInfo)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AABeneficiaryInfo

- (AABeneficiaryInfo)initWithBeneficiaryID:(id)a3 benefactorAltDSID:(id)a4 handle:(id)a5 otPeerID:(id)a6 repairDate:(id)a7 repairCount:(unint64_t)a8 recordBuildVersion:(id)a9
{
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = AABeneficiaryInfo;
  v18 = [(AABeneficiary *)&v23 initWithBeneficiaryID:a3 benefactorAltDSID:a4];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handle, a5);
    objc_storeStrong(&v19->_otPeerID, a6);
    objc_storeStrong(&v19->_repairDate, a7);
    v19->_repairCount = a8;
    objc_storeStrong(&v19->_recordBuildVersion, a9);
  }

  return v19;
}

- (AABeneficiaryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AABeneficiaryInfo;
  v5 = [(AABeneficiary *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_otPeerID"];
    otPeerID = v5->_otPeerID;
    v5->_otPeerID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_repairDate"];
    repairDate = v5->_repairDate;
    v5->_repairDate = v10;

    v5->_repairCount = [v4 decodeIntegerForKey:@"_repairCount"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = AABeneficiaryInfo;
  v4 = [(AABeneficiary *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_handle copy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  objc_storeStrong(v4 + 5, self->_otPeerID);
  objc_storeStrong(v4 + 6, self->_repairDate);
  *(v4 + 7) = self->_repairCount;
  objc_storeStrong(v4 + 8, self->_recordBuildVersion);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AABeneficiaryInfo;
  v4 = a3;
  [(AABeneficiary *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_handle forKey:{@"_handle", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_otPeerID forKey:@"_otPeerID"];
  [v4 encodeObject:self->_repairDate forKey:@"_repairDate"];
  [v4 encodeInteger:self->_repairCount forKey:@"_repairCount"];
  [v4 encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AABeneficiary *)self accessKey];
  v5 = [v4 claimTokenString];
  v6 = [(AABeneficiary *)self accessKey];
  v7 = [v6 wrappingKeyString];
  v21 = [v3 stringWithFormat:@"%@-%@", v5, v7];

  v20 = MEMORY[0x1E696AEC0];
  v22.receiver = self;
  v22.super_class = AABeneficiaryInfo;
  v8 = [(AABeneficiary *)&v22 description];
  handle = self->_handle;
  v9 = [(AABeneficiary *)self accessKey];
  v10 = [v9 claimTokenString];
  v11 = [(AABeneficiary *)self accessKey];
  v12 = [v11 wrappingKeyString];
  v13 = [(AABeneficiaryInfo *)self otPeerID];
  v14 = [(AABeneficiaryInfo *)self repairDate];
  v15 = [(AABeneficiaryInfo *)self repairCount];
  v16 = [(AABeneficiaryInfo *)self recordBuildVersion];
  v17 = [v20 stringWithFormat:@"%@ \nHandle: %@ \nClaim Code: %@\nAccess Key: %@\nFull Access Key: %@\nOTPeerID: %@\nRepair Date: %@\nRepair Count: %lu\nRecord Build Version: %@", v8, handle, v10, v12, v21, v13, v14, v15, v16];

  return v17;
}

@end