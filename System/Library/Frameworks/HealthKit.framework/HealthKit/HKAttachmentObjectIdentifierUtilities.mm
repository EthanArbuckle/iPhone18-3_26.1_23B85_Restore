@interface HKAttachmentObjectIdentifierUtilities
+ (BOOL)componentsFromAttachmentObjectIdentifier:(id)a3 sampleTypeIdentifier:(id *)a4 bundleIdentifier:(id *)a5 FHIRIdentifier:(id *)a6;
+ (id)attachmentObjectIdentifierForClinicalRecord:(id)a3;
+ (id)attachmentObjectIdentifierForMedicalRecord:(id)a3;
@end

@implementation HKAttachmentObjectIdentifierUtilities

+ (id)attachmentObjectIdentifierForClinicalRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 clinicalType];
  v6 = [v5 identifier];
  v7 = [v4 sourceRevision];
  v8 = [v7 source];
  v9 = [v8 bundleIdentifier];
  v10 = [v4 FHIRResource];
  v11 = [v10 resourceType];
  v12 = [v4 FHIRResource];

  v13 = [v12 identifier];
  v14 = [a1 _attachmentObjectIdentifierWithSampleTypeIdentifier:v6 bundleIdentifier:v9 FHIRResourceType:v11 FHIRResourceIdentifier:v13];

  return v14;
}

+ (id)attachmentObjectIdentifierForMedicalRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 medicalType];
  v6 = [v5 identifier];
  v7 = [v4 sourceRevision];
  v8 = [v7 source];
  v9 = [v8 bundleIdentifier];
  v10 = [v4 FHIRIdentifier];
  v11 = [v10 resourceType];
  v12 = [v4 FHIRIdentifier];

  v13 = [v12 identifier];
  v14 = [a1 _attachmentObjectIdentifierWithSampleTypeIdentifier:v6 bundleIdentifier:v9 FHIRResourceType:v11 FHIRResourceIdentifier:v13];

  return v14;
}

+ (BOOL)componentsFromAttachmentObjectIdentifier:(id)a3 sampleTypeIdentifier:(id *)a4 bundleIdentifier:(id *)a5 FHIRIdentifier:(id *)a6
{
  v9 = [a3 componentsSeparatedByString:@"/"];
  if ([v9 count] == 4)
  {
    v10 = [v9 objectAtIndexedSubscript:2];
    v11 = [v9 objectAtIndexedSubscript:3];
    if (a6)
    {
      v12 = [[HKFHIRIdentifier alloc] initWithResourceType:v10 identifier:v11];
      if (!v12)
      {
        v14 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v13 = v12;
      *a6 = v13;
    }

    if (a4)
    {
      *a4 = [v9 objectAtIndexedSubscript:0];
    }

    v14 = 1;
    if (a5)
    {
      *a5 = [v9 objectAtIndexedSubscript:1];
    }

    goto LABEL_11;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end