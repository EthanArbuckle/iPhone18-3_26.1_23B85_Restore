@interface HDFHIRResourceObject
- (id)_codableFHIRResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDate:(id)date receivedDateTimeZoneName:(id)name firstSeenDate:(id)seenDate firstSeenDateTimeZoneName:(id)zoneName extractionHints:(unint64_t)hints originInformation:(id)self0;
- (id)codableFHIRResourceForNewlyIngestedResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDateTimeZone:(id)zone behavior:(id)behavior;
- (id)currentCodableMessageVersionWithExtractionHints:(unint64_t)hints;
@end

@implementation HDFHIRResourceObject

- (id)currentCodableMessageVersionWithExtractionHints:(unint64_t)hints
{
  hintsCopy = hints;
  v5 = objc_alloc_init(HDCodableMessageVersion);
  isDocumentReference = &dword_0 + 1;
  [v5 setEntityVersion:1];
  if (([(HDFHIRResourceObject *)self isClinicalNoteRecord]& 1) == 0)
  {
    isDocumentReference = [(HDFHIRResourceObject *)self isDocumentReference];
  }

  [v5 setCompatibilityVersion:isDocumentReference];
  if ((hintsCopy & 0x10) != 0)
  {
    compatibilityVersion = [v5 compatibilityVersion];
    if (compatibilityVersion <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = compatibilityVersion;
    }

    [v5 setCompatibilityVersion:v8];
  }

  return v5;
}

- (id)codableFHIRResourceForNewlyIngestedResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDateTimeZone:(id)zone behavior:(id)behavior
{
  behaviorCopy = behavior;
  zoneCopy = zone;
  iDCopy = iD;
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_A9ADC(a2, self);
  }

  v15 = [HDHRSOriginInformation alloc];
  if (behaviorCopy)
  {
    [behaviorCopy currentOSVersionStruct];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  currentOSBuild = [behaviorCopy currentOSBuild];
  v17 = [v15 initWithOperatingSystemVersion:v22 build:currentOSBuild];

  receivedDate = [(HDFHIRResourceObject *)self receivedDate];
  name = [zoneCopy name];

  v20 = [(HDFHIRResourceObject *)self _codableFHIRResourceWithGatewayExternalID:dCopy accountID:iDCopy receivedDate:receivedDate receivedDateTimeZoneName:name firstSeenDate:0 firstSeenDateTimeZoneName:0 extractionHints:[(HDFHIRResourceObject *)self extractionHints] originInformation:v17];

  return v20;
}

- (id)_codableFHIRResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDate:(id)date receivedDateTimeZoneName:(id)name firstSeenDate:(id)seenDate firstSeenDateTimeZoneName:(id)zoneName extractionHints:(unint64_t)hints originInformation:(id)self0
{
  nameCopy = name;
  seenDateCopy = seenDate;
  zoneNameCopy = zoneName;
  informationCopy = information;
  dateCopy = date;
  iDCopy = iD;
  dCopy = d;
  v22 = objc_alloc_init(HDCodableFHIRResource);
  v23 = [(HDFHIRResourceObject *)self currentCodableMessageVersionWithExtractionHints:hints];
  [v22 setMessageVersion:v23];

  [v22 setGatewayExternalID:dCopy];
  identifier = [(HDFHIRResourceObject *)self identifier];
  resourceType = [identifier resourceType];
  [v22 setResourceType:resourceType];

  identifier2 = [(HDFHIRResourceObject *)self identifier];
  v26Identifier = [identifier2 identifier];
  [v22 setResourceID:v26Identifier];

  data = [(HDFHIRResourceObject *)self data];
  [v22 setRawContent:data];

  uniquenessChecksum = [(HDFHIRResourceObject *)self uniquenessChecksum];
  [v22 setUniquenessChecksum:uniquenessChecksum];

  sourceURL = [(HDFHIRResourceObject *)self sourceURL];
  absoluteString = [sourceURL absoluteString];
  [v22 setSourceURL:absoluteString];

  fHIRVersion = [(HDFHIRResourceObject *)self FHIRVersion];
  stringRepresentation = [fHIRVersion stringRepresentation];
  [v22 setFhirVersion:stringRepresentation];

  v34 = nameCopy;
  [dateCopy timeIntervalSinceReferenceDate];
  v36 = v35;

  [v22 setReceivedDate:v36];
  [v22 setReceivedDateTimeZoneName:nameCopy];
  if (seenDateCopy)
  {
    [seenDateCopy timeIntervalSinceReferenceDate];
    [v22 setFirstSeenDate:?];
    if (zoneNameCopy)
    {
      v37 = zoneNameCopy;
    }

    else
    {
      v37 = nameCopy;
    }

    [v22 setFirstSeenDateTimeZoneName:{v37, nameCopy}];
  }

  [v22 setExtractionHints:{hints, nameCopy}];
  [v22 setAccountIdentifier:iDCopy];

  if (informationCopy)
  {
    [informationCopy operatingSystemVersion];
    [v22 setOriginVersionMajor:v44];
    [informationCopy operatingSystemVersion];
    [v22 setOriginVersionMinor:v43];
    [informationCopy operatingSystemVersion];
    v38 = v42;
  }

  else
  {
    [v22 setOriginVersionMajor:0];
    [v22 setOriginVersionMinor:0];
    v38 = 0;
  }

  [v22 setOriginVersionPatch:v38];
  operatingSystemBuild = [informationCopy operatingSystemBuild];
  [v22 setOriginVersionBuild:operatingSystemBuild];

  return v22;
}

@end