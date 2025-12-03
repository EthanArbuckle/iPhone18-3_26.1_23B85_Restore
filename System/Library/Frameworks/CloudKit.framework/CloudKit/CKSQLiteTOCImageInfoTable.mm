@interface CKSQLiteTOCImageInfoTable
+ (id)dbProperties;
- (id)addEntriesForCurrentProcess;
- (id)enumerateImagesWithBlock:(id)block;
- (id)resetImageInfo;
- (id)updateForCurrentProcess;
@end

@implementation CKSQLiteTOCImageInfoTable

+ (id)dbProperties
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"imageID";
  v5[1] = @"name";
  v6[0] = &unk_1EFA85500;
  v6[1] = &unk_1EFA85518;
  v5[2] = @"uuid";
  v6[2] = &unk_1EFA85530;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 3);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)addEntriesForCurrentProcess
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE22C;
  v12 = sub_1883EF7BC;
  v13 = 0;
  v3 = sub_188690E00(self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18869112C;
  v7[3] = &unk_1E70C1638;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v4, v7);
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)enumerateImagesWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188691238;
  v9[3] = &unk_1E70C12F0;
  v9[4] = self;
  v10 = blockCopy;
  v5 = blockCopy;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);

  return v7;
}

- (id)updateForCurrentProcess
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18869185C;
  v4[3] = &unk_1E70BC1A0;
  v4[4] = self;
  v2 = objc_msgSend_performTransaction_(self, a2, v4);

  return v2;
}

- (id)resetImageInfo
{
  v4 = 0;
  objc_msgSend_deleteAllEntries_(self, a2, &v4);
  v2 = v4;

  return v2;
}

@end