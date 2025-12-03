@interface HDCodableFHIRResource
- (NSData)safeUniquenessChecksum;
@end

@implementation HDCodableFHIRResource

- (NSData)safeUniquenessChecksum
{
  if ([(HDCodableFHIRResource *)self hasUniquenessChecksum])
  {
    uniquenessChecksum = [(HDCodableFHIRResource *)self uniquenessChecksum];
  }

  else
  {
    fhirVersion = [(HDCodableFHIRResource *)self fhirVersion];
    v5 = [HKFHIRVersion versionFromVersionString:fhirVersion];

    v6 = [HDFHIRResourceData alloc];
    rawContent = [(HDCodableFHIRResource *)self rawContent];
    sourceURL = [(HDCodableFHIRResource *)self sourceURL];
    v9 = [NSURL hk_safeURLWithString:sourceURL];
    v10 = [v6 initWithData:rawContent sourceURL:v9 FHIRVersion:v5];

    [(HDCodableFHIRResource *)self receivedDate];
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v17 = 0;
    v12 = [HDFHIRResourceObject resourceObjectWithResourceData:v10 receivedDate:v11 extractionHints:[(HDCodableFHIRResource *)self extractionHints] error:&v17];
    v13 = v17;

    if (v12)
    {
      uniquenessChecksum = [v12 uniquenessChecksum];
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A3318(v13, v14);
      }

      rawContent2 = [(HDCodableFHIRResource *)self rawContent];
      uniquenessChecksum = [rawContent2 hk_MD5];
    }
  }

  return uniquenessChecksum;
}

@end