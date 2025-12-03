@interface HKAttachmentObjectIdentifierUtilities
+ (BOOL)componentsFromAttachmentObjectIdentifier:(id)identifier sampleTypeIdentifier:(id *)typeIdentifier bundleIdentifier:(id *)bundleIdentifier FHIRIdentifier:(id *)rIdentifier;
+ (id)attachmentObjectIdentifierForClinicalRecord:(id)record;
+ (id)attachmentObjectIdentifierForMedicalRecord:(id)record;
@end

@implementation HKAttachmentObjectIdentifierUtilities

+ (id)attachmentObjectIdentifierForClinicalRecord:(id)record
{
  recordCopy = record;
  clinicalType = [recordCopy clinicalType];
  identifier = [clinicalType identifier];
  sourceRevision = [recordCopy sourceRevision];
  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  fHIRResource = [recordCopy FHIRResource];
  resourceType = [fHIRResource resourceType];
  fHIRResource2 = [recordCopy FHIRResource];

  identifier2 = [fHIRResource2 identifier];
  v14 = [self _attachmentObjectIdentifierWithSampleTypeIdentifier:identifier bundleIdentifier:bundleIdentifier FHIRResourceType:resourceType FHIRResourceIdentifier:identifier2];

  return v14;
}

+ (id)attachmentObjectIdentifierForMedicalRecord:(id)record
{
  recordCopy = record;
  medicalType = [recordCopy medicalType];
  identifier = [medicalType identifier];
  sourceRevision = [recordCopy sourceRevision];
  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  fHIRIdentifier = [recordCopy FHIRIdentifier];
  resourceType = [fHIRIdentifier resourceType];
  fHIRIdentifier2 = [recordCopy FHIRIdentifier];

  identifier2 = [fHIRIdentifier2 identifier];
  v14 = [self _attachmentObjectIdentifierWithSampleTypeIdentifier:identifier bundleIdentifier:bundleIdentifier FHIRResourceType:resourceType FHIRResourceIdentifier:identifier2];

  return v14;
}

+ (BOOL)componentsFromAttachmentObjectIdentifier:(id)identifier sampleTypeIdentifier:(id *)typeIdentifier bundleIdentifier:(id *)bundleIdentifier FHIRIdentifier:(id *)rIdentifier
{
  v9 = [identifier componentsSeparatedByString:@"/"];
  if ([v9 count] == 4)
  {
    v10 = [v9 objectAtIndexedSubscript:2];
    v11 = [v9 objectAtIndexedSubscript:3];
    if (rIdentifier)
    {
      v12 = [[HKFHIRIdentifier alloc] initWithResourceType:v10 identifier:v11];
      if (!v12)
      {
        v14 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v13 = v12;
      *rIdentifier = v13;
    }

    if (typeIdentifier)
    {
      *typeIdentifier = [v9 objectAtIndexedSubscript:0];
    }

    v14 = 1;
    if (bundleIdentifier)
    {
      *bundleIdentifier = [v9 objectAtIndexedSubscript:1];
    }

    goto LABEL_11;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end