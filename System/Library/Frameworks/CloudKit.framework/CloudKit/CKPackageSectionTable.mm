@interface CKPackageSectionTable
+ (id)dbProperties;
- (id)resetSectionPlanning;
@end

@implementation CKPackageSectionTable

+ (id)dbProperties
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"sectionID";
  v5[1] = @"signature";
  v6[0] = &unk_1EFA84F30;
  v6[1] = &unk_1EFA84F48;
  v5[2] = @"verificationKey";
  v5[3] = @"manifestSize";
  v6[2] = &unk_1EFA84F48;
  v6[3] = &unk_1EFA84F60;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 4);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)resetSectionPlanning
{
  v4 = 0;
  objc_msgSend_deleteAllEntries_(self, a2, &v4);
  result = v4;
  self->super._nextIndex = 0;
  return result;
}

@end