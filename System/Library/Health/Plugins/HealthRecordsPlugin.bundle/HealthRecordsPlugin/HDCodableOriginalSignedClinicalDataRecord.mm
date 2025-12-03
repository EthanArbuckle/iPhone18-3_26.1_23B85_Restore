@interface HDCodableOriginalSignedClinicalDataRecord
- (id)asOriginalSignedClinicalDataRecord;
- (id)asTombstone;
@end

@implementation HDCodableOriginalSignedClinicalDataRecord

- (id)asOriginalSignedClinicalDataRecord
{
  v3 = [HDHRSOriginalSignedClinicalDataRecord alloc];
  rawContent = [(HDCodableOriginalSignedClinicalDataRecord *)self rawContent];
  sourceType = [(HDCodableOriginalSignedClinicalDataRecord *)self sourceType];
  sourceURL = [(HDCodableOriginalSignedClinicalDataRecord *)self sourceURL];
  v16 = [NSURL URLWithString:sourceURL];
  issuerIdentifier = [(HDCodableOriginalSignedClinicalDataRecord *)self issuerIdentifier];
  types = [(HDCodableOriginalSignedClinicalDataRecord *)self types];
  syncIdentifier = [(HDCodableOriginalSignedClinicalDataRecord *)self syncIdentifier];
  v6 = [NSUUID hk_UUIDWithData:syncIdentifier];
  metadata = [(HDCodableOriginalSignedClinicalDataRecord *)self metadata];
  v8 = [NSDictionary hk_dictionaryWithCodableMetadata:metadata];
  [(HDCodableOriginalSignedClinicalDataRecord *)self receivedDate];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  receivedDateTimeZoneName = [(HDCodableOriginalSignedClinicalDataRecord *)self receivedDateTimeZoneName];
  v11 = [NSTimeZone timeZoneWithName:receivedDateTimeZoneName];
  v13 = [v3 initWithRawContent:rawContent sourceType:sourceType sourceURL:v16 issuerIdentifier:issuerIdentifier credentialTypes:types syncIdentifier:v6 metadata:v8 receivedDate:v9 receivedDateTimeZone:v11 signatureStatus:{-[HDCodableOriginalSignedClinicalDataRecord signatureStatus](self, "signatureStatus")}];

  return v13;
}

- (id)asTombstone
{
  v2 = [(HDCodableOriginalSignedClinicalDataRecord *)self copy];
  [v2 setRawContent:0];
  syncIdentifier = [v2 syncIdentifier];
  [v2 setUniquenessChecksum:syncIdentifier];

  [v2 setDeleted:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [v2 setLastModifiedDate:?];

  return v2;
}

@end