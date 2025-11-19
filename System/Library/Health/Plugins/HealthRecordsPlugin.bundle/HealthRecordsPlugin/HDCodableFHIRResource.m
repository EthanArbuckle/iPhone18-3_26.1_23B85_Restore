@interface HDCodableFHIRResource
- (NSData)safeUniquenessChecksum;
@end

@implementation HDCodableFHIRResource

- (NSData)safeUniquenessChecksum
{
  if ([(HDCodableFHIRResource *)self hasUniquenessChecksum])
  {
    v3 = [(HDCodableFHIRResource *)self uniquenessChecksum];
  }

  else
  {
    v4 = [(HDCodableFHIRResource *)self fhirVersion];
    v5 = [HKFHIRVersion versionFromVersionString:v4];

    v6 = [HDFHIRResourceData alloc];
    v7 = [(HDCodableFHIRResource *)self rawContent];
    v8 = [(HDCodableFHIRResource *)self sourceURL];
    v9 = [NSURL hk_safeURLWithString:v8];
    v10 = [v6 initWithData:v7 sourceURL:v9 FHIRVersion:v5];

    [(HDCodableFHIRResource *)self receivedDate];
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v17 = 0;
    v12 = [HDFHIRResourceObject resourceObjectWithResourceData:v10 receivedDate:v11 extractionHints:[(HDCodableFHIRResource *)self extractionHints] error:&v17];
    v13 = v17;

    if (v12)
    {
      v3 = [v12 uniquenessChecksum];
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A3318(v13, v14);
      }

      v15 = [(HDCodableFHIRResource *)self rawContent];
      v3 = [v15 hk_MD5];
    }
  }

  return v3;
}

@end