@interface HDFHIRResourceObject
- (id)_codableFHIRResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDate:(id)a5 receivedDateTimeZoneName:(id)a6 firstSeenDate:(id)a7 firstSeenDateTimeZoneName:(id)a8 extractionHints:(unint64_t)a9 originInformation:(id)a10;
- (id)codableFHIRResourceForNewlyIngestedResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDateTimeZone:(id)a5 behavior:(id)a6;
- (id)currentCodableMessageVersionWithExtractionHints:(unint64_t)a3;
@end

@implementation HDFHIRResourceObject

- (id)currentCodableMessageVersionWithExtractionHints:(unint64_t)a3
{
  v3 = a3;
  v5 = objc_alloc_init(HDCodableMessageVersion);
  v6 = &dword_0 + 1;
  [v5 setEntityVersion:1];
  if (([(HDFHIRResourceObject *)self isClinicalNoteRecord]& 1) == 0)
  {
    v6 = [(HDFHIRResourceObject *)self isDocumentReference];
  }

  [v5 setCompatibilityVersion:v6];
  if ((v3 & 0x10) != 0)
  {
    v7 = [v5 compatibilityVersion];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    [v5 setCompatibilityVersion:v8];
  }

  return v5;
}

- (id)codableFHIRResourceForNewlyIngestedResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDateTimeZone:(id)a5 behavior:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_A9ADC(a2, self);
  }

  v15 = [HDHRSOriginInformation alloc];
  if (v11)
  {
    [v11 currentOSVersionStruct];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v16 = [v11 currentOSBuild];
  v17 = [v15 initWithOperatingSystemVersion:v22 build:v16];

  v18 = [(HDFHIRResourceObject *)self receivedDate];
  v19 = [v12 name];

  v20 = [(HDFHIRResourceObject *)self _codableFHIRResourceWithGatewayExternalID:v14 accountID:v13 receivedDate:v18 receivedDateTimeZoneName:v19 firstSeenDate:0 firstSeenDateTimeZoneName:0 extractionHints:[(HDFHIRResourceObject *)self extractionHints] originInformation:v17];

  return v20;
}

- (id)_codableFHIRResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDate:(id)a5 receivedDateTimeZoneName:(id)a6 firstSeenDate:(id)a7 firstSeenDateTimeZoneName:(id)a8 extractionHints:(unint64_t)a9 originInformation:(id)a10
{
  v41 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a10;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_alloc_init(HDCodableFHIRResource);
  v23 = [(HDFHIRResourceObject *)self currentCodableMessageVersionWithExtractionHints:a9];
  [v22 setMessageVersion:v23];

  [v22 setGatewayExternalID:v21];
  v24 = [(HDFHIRResourceObject *)self identifier];
  v25 = [v24 resourceType];
  [v22 setResourceType:v25];

  v26 = [(HDFHIRResourceObject *)self identifier];
  v27 = [v26 identifier];
  [v22 setResourceID:v27];

  v28 = [(HDFHIRResourceObject *)self data];
  [v22 setRawContent:v28];

  v29 = [(HDFHIRResourceObject *)self uniquenessChecksum];
  [v22 setUniquenessChecksum:v29];

  v30 = [(HDFHIRResourceObject *)self sourceURL];
  v31 = [v30 absoluteString];
  [v22 setSourceURL:v31];

  v32 = [(HDFHIRResourceObject *)self FHIRVersion];
  v33 = [v32 stringRepresentation];
  [v22 setFhirVersion:v33];

  v34 = v41;
  [v19 timeIntervalSinceReferenceDate];
  v36 = v35;

  [v22 setReceivedDate:v36];
  [v22 setReceivedDateTimeZoneName:v41];
  if (v16)
  {
    [v16 timeIntervalSinceReferenceDate];
    [v22 setFirstSeenDate:?];
    if (v17)
    {
      v37 = v17;
    }

    else
    {
      v37 = v41;
    }

    [v22 setFirstSeenDateTimeZoneName:{v37, v41}];
  }

  [v22 setExtractionHints:{a9, v41}];
  [v22 setAccountIdentifier:v20];

  if (v18)
  {
    [v18 operatingSystemVersion];
    [v22 setOriginVersionMajor:v44];
    [v18 operatingSystemVersion];
    [v22 setOriginVersionMinor:v43];
    [v18 operatingSystemVersion];
    v38 = v42;
  }

  else
  {
    [v22 setOriginVersionMajor:0];
    [v22 setOriginVersionMinor:0];
    v38 = 0;
  }

  [v22 setOriginVersionPatch:v38];
  v39 = [v18 operatingSystemBuild];
  [v22 setOriginVersionBuild:v39];

  return v22;
}

@end