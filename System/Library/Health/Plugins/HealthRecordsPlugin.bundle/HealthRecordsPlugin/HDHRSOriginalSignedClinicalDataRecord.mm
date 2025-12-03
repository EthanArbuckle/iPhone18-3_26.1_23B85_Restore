@interface HDHRSOriginalSignedClinicalDataRecord
- (id)asNewCodableRecordWithRawDataUniquenessChecksumForUnitTestingWithSyncIdentity:(id)identity;
- (id)asNewCodableRecordWithUniquenessChecksum:(id)checksum syncIdentity:(id)identity;
@end

@implementation HDHRSOriginalSignedClinicalDataRecord

- (id)asNewCodableRecordWithRawDataUniquenessChecksumForUnitTestingWithSyncIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[HDOriginalSignedClinicalDataRecordEntity newCompatibleCodableSignedClinicalDataRecord];
  receivedDate = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDate];
  [receivedDate timeIntervalSinceReferenceDate];
  [v5 setFirstSeenDate:?];

  receivedDateTimeZone = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDateTimeZone];
  name = [receivedDateTimeZone name];
  [v5 setFirstSeenDateTimeZoneName:name];

  receivedDate2 = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDate];
  [receivedDate2 timeIntervalSinceReferenceDate];
  [v5 setReceivedDate:?];

  receivedDateTimeZone2 = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDateTimeZone];
  name2 = [receivedDateTimeZone2 name];
  [v5 setReceivedDateTimeZoneName:name2];

  credentialTypes = [(HDHRSOriginalSignedClinicalDataRecord *)self credentialTypes];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2BF44;
  v25[3] = &unk_106C08;
  v13 = v5;
  v26 = v13;
  [credentialTypes enumerateObjectsUsingBlock:v25];

  [v13 setSignatureStatus:{-[HDHRSOriginalSignedClinicalDataRecord signatureStatus](self, "signatureStatus")}];
  metadata = [(HDHRSOriginalSignedClinicalDataRecord *)self metadata];
  hk_codableMetadata = [metadata hk_codableMetadata];
  [v13 setMetadata:hk_codableMetadata];

  rawContent = [(HDHRSOriginalSignedClinicalDataRecord *)self rawContent];
  [v13 setRawContent:rawContent];

  rawContent2 = [(HDHRSOriginalSignedClinicalDataRecord *)self rawContent];
  [v13 setUniquenessChecksum:rawContent2];

  sourceURL = [(HDHRSOriginalSignedClinicalDataRecord *)self sourceURL];
  absoluteString = [sourceURL absoluteString];
  [v13 setSourceURL:absoluteString];

  [v13 setSourceType:{-[HDHRSOriginalSignedClinicalDataRecord sourceType](self, "sourceType")}];
  issuerIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)self issuerIdentifier];
  [v13 setIssuerIdentifier:issuerIdentifier];

  syncIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)self syncIdentifier];
  hk_dataForUUIDBytes = [syncIdentifier hk_dataForUUIDBytes];
  [v13 setSyncIdentifier:hk_dataForUUIDBytes];

  +[NSDate timeIntervalSinceReferenceDate];
  [v13 setLastModifiedDate:?];
  [v13 setDeleted:0];
  if (identityCopy)
  {
    codableSyncIdentity = [identityCopy codableSyncIdentity];
    [v13 setSyncIdentity:codableSyncIdentity];
  }

  return v13;
}

- (id)asNewCodableRecordWithUniquenessChecksum:(id)checksum syncIdentity:(id)identity
{
  checksumCopy = checksum;
  identityCopy = identity;
  if (!checksumCopy)
  {
    sub_A0550(a2, self);
  }

  v9 = +[HDOriginalSignedClinicalDataRecordEntity newCompatibleCodableSignedClinicalDataRecord];
  receivedDate = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDate];
  [receivedDate timeIntervalSinceReferenceDate];
  [v9 setFirstSeenDate:?];

  receivedDateTimeZone = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDateTimeZone];
  name = [receivedDateTimeZone name];
  [v9 setFirstSeenDateTimeZoneName:name];

  receivedDate2 = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDate];
  [receivedDate2 timeIntervalSinceReferenceDate];
  [v9 setReceivedDate:?];

  receivedDateTimeZone2 = [(HDHRSOriginalSignedClinicalDataRecord *)self receivedDateTimeZone];
  name2 = [receivedDateTimeZone2 name];
  [v9 setReceivedDateTimeZoneName:name2];

  credentialTypes = [(HDHRSOriginalSignedClinicalDataRecord *)self credentialTypes];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_2C23C;
  v28[3] = &unk_106C08;
  v17 = v9;
  v29 = v17;
  [credentialTypes enumerateObjectsUsingBlock:v28];

  [v17 setSignatureStatus:{-[HDHRSOriginalSignedClinicalDataRecord signatureStatus](self, "signatureStatus")}];
  metadata = [(HDHRSOriginalSignedClinicalDataRecord *)self metadata];
  hk_codableMetadata = [metadata hk_codableMetadata];
  [v17 setMetadata:hk_codableMetadata];

  rawContent = [(HDHRSOriginalSignedClinicalDataRecord *)self rawContent];
  [v17 setRawContent:rawContent];

  [v17 setUniquenessChecksum:checksumCopy];
  sourceURL = [(HDHRSOriginalSignedClinicalDataRecord *)self sourceURL];
  absoluteString = [sourceURL absoluteString];
  [v17 setSourceURL:absoluteString];

  [v17 setSourceType:{-[HDHRSOriginalSignedClinicalDataRecord sourceType](self, "sourceType")}];
  issuerIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)self issuerIdentifier];
  [v17 setIssuerIdentifier:issuerIdentifier];

  syncIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)self syncIdentifier];
  hk_dataForUUIDBytes = [syncIdentifier hk_dataForUUIDBytes];
  [v17 setSyncIdentifier:hk_dataForUUIDBytes];

  +[NSDate timeIntervalSinceReferenceDate];
  [v17 setLastModifiedDate:?];
  [v17 setDeleted:0];
  codableSyncIdentity = [identityCopy codableSyncIdentity];
  [v17 setSyncIdentity:codableSyncIdentity];

  return v17;
}

@end