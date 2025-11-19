@interface NSDictionary(HKAttachmentMetadata)
+ (id)hk_acceptedAttachmentMetadataValueClasses;
+ (id)hk_secureAttachmentCodingClasses;
- (BOOL)hk_validateAttachmentMetadataKeysAndValuesWithError:()HKAttachmentMetadata;
@end

@implementation NSDictionary(HKAttachmentMetadata)

- (BOOL)hk_validateAttachmentMetadataKeysAndValuesWithError:()HKAttachmentMetadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__51;
  v13 = __Block_byref_object_dispose__51;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__NSDictionary_HKAttachmentMetadata__hk_validateAttachmentMetadataKeysAndValuesWithError___block_invoke;
  v8[3] = &unk_1E7384238;
  v8[4] = a1;
  v8[5] = &v9;
  v8[6] = a2;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = v10[5];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = v4;
      *a3 = v5;
    }

    else
    {
      _HKLogDroppedError(v4);
    }
  }

  _Block_object_dispose(&v9, 8);
  return v5 == 0;
}

+ (id)hk_acceptedAttachmentMetadataValueClasses
{
  if (hk_acceptedAttachmentMetadataValueClasses_onceToken != -1)
  {
    +[NSDictionary(HKAttachmentMetadata) hk_acceptedAttachmentMetadataValueClasses];
  }

  v1 = hk_acceptedAttachmentMetadataValueClasses_valueClasses;

  return v1;
}

+ (id)hk_secureAttachmentCodingClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NSDictionary_HKAttachmentMetadata__hk_secureAttachmentCodingClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (hk_secureAttachmentCodingClasses_onceToken != -1)
  {
    dispatch_once(&hk_secureAttachmentCodingClasses_onceToken, block);
  }

  v1 = hk_secureAttachmentCodingClasses__secureCodingClasses;

  return v1;
}

@end