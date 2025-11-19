@interface HDCodableOriginalSignedClinicalDataRecord
- (id)asOriginalSignedClinicalDataRecord;
- (id)asTombstone;
@end

@implementation HDCodableOriginalSignedClinicalDataRecord

- (id)asOriginalSignedClinicalDataRecord
{
  v3 = [HDHRSOriginalSignedClinicalDataRecord alloc];
  v4 = [(HDCodableOriginalSignedClinicalDataRecord *)self rawContent];
  v5 = [(HDCodableOriginalSignedClinicalDataRecord *)self sourceType];
  v18 = [(HDCodableOriginalSignedClinicalDataRecord *)self sourceURL];
  v16 = [NSURL URLWithString:v18];
  v15 = [(HDCodableOriginalSignedClinicalDataRecord *)self issuerIdentifier];
  v14 = [(HDCodableOriginalSignedClinicalDataRecord *)self types];
  v17 = [(HDCodableOriginalSignedClinicalDataRecord *)self syncIdentifier];
  v6 = [NSUUID hk_UUIDWithData:v17];
  v7 = [(HDCodableOriginalSignedClinicalDataRecord *)self metadata];
  v8 = [NSDictionary hk_dictionaryWithCodableMetadata:v7];
  [(HDCodableOriginalSignedClinicalDataRecord *)self receivedDate];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [(HDCodableOriginalSignedClinicalDataRecord *)self receivedDateTimeZoneName];
  v11 = [NSTimeZone timeZoneWithName:v10];
  v13 = [v3 initWithRawContent:v4 sourceType:v5 sourceURL:v16 issuerIdentifier:v15 credentialTypes:v14 syncIdentifier:v6 metadata:v8 receivedDate:v9 receivedDateTimeZone:v11 signatureStatus:{-[HDCodableOriginalSignedClinicalDataRecord signatureStatus](self, "signatureStatus")}];

  return v13;
}

- (id)asTombstone
{
  v2 = [(HDCodableOriginalSignedClinicalDataRecord *)self copy];
  [v2 setRawContent:0];
  v3 = [v2 syncIdentifier];
  [v2 setUniquenessChecksum:v3];

  [v2 setDeleted:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [v2 setLastModifiedDate:?];

  return v2;
}

@end