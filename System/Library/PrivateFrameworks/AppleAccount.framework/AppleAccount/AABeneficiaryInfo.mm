@interface AABeneficiaryInfo
- (AABeneficiaryInfo)initWithBeneficiaryID:(id)d benefactorAltDSID:(id)iD handle:(id)handle otPeerID:(id)peerID repairDate:(id)date repairCount:(unint64_t)count recordBuildVersion:(id)version;
- (AABeneficiaryInfo)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AABeneficiaryInfo

- (AABeneficiaryInfo)initWithBeneficiaryID:(id)d benefactorAltDSID:(id)iD handle:(id)handle otPeerID:(id)peerID repairDate:(id)date repairCount:(unint64_t)count recordBuildVersion:(id)version
{
  handleCopy = handle;
  peerIDCopy = peerID;
  dateCopy = date;
  versionCopy = version;
  v23.receiver = self;
  v23.super_class = AABeneficiaryInfo;
  v18 = [(AABeneficiary *)&v23 initWithBeneficiaryID:d benefactorAltDSID:iD];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handle, handle);
    objc_storeStrong(&v19->_otPeerID, peerID);
    objc_storeStrong(&v19->_repairDate, date);
    v19->_repairCount = count;
    objc_storeStrong(&v19->_recordBuildVersion, version);
  }

  return v19;
}

- (AABeneficiaryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AABeneficiaryInfo;
  v5 = [(AABeneficiary *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_otPeerID"];
    otPeerID = v5->_otPeerID;
    v5->_otPeerID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_repairDate"];
    repairDate = v5->_repairDate;
    v5->_repairDate = v10;

    v5->_repairCount = [coderCopy decodeIntegerForKey:@"_repairCount"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = AABeneficiaryInfo;
  v4 = [(AABeneficiary *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_handle copy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  objc_storeStrong(v4 + 5, self->_otPeerID);
  objc_storeStrong(v4 + 6, self->_repairDate);
  *(v4 + 7) = self->_repairCount;
  objc_storeStrong(v4 + 8, self->_recordBuildVersion);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AABeneficiaryInfo;
  coderCopy = coder;
  [(AABeneficiary *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_handle forKey:{@"_handle", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_otPeerID forKey:@"_otPeerID"];
  [coderCopy encodeObject:self->_repairDate forKey:@"_repairDate"];
  [coderCopy encodeInteger:self->_repairCount forKey:@"_repairCount"];
  [coderCopy encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accessKey = [(AABeneficiary *)self accessKey];
  claimTokenString = [accessKey claimTokenString];
  accessKey2 = [(AABeneficiary *)self accessKey];
  wrappingKeyString = [accessKey2 wrappingKeyString];
  v21 = [v3 stringWithFormat:@"%@-%@", claimTokenString, wrappingKeyString];

  v20 = MEMORY[0x1E696AEC0];
  v22.receiver = self;
  v22.super_class = AABeneficiaryInfo;
  v8 = [(AABeneficiary *)&v22 description];
  handle = self->_handle;
  accessKey3 = [(AABeneficiary *)self accessKey];
  claimTokenString2 = [accessKey3 claimTokenString];
  accessKey4 = [(AABeneficiary *)self accessKey];
  wrappingKeyString2 = [accessKey4 wrappingKeyString];
  otPeerID = [(AABeneficiaryInfo *)self otPeerID];
  repairDate = [(AABeneficiaryInfo *)self repairDate];
  repairCount = [(AABeneficiaryInfo *)self repairCount];
  recordBuildVersion = [(AABeneficiaryInfo *)self recordBuildVersion];
  v17 = [v20 stringWithFormat:@"%@ \nHandle: %@ \nClaim Code: %@\nAccess Key: %@\nFull Access Key: %@\nOTPeerID: %@\nRepair Date: %@\nRepair Count: %lu\nRecord Build Version: %@", v8, handle, claimTokenString2, wrappingKeyString2, v21, otPeerID, repairDate, repairCount, recordBuildVersion];

  return v17;
}

@end