@interface CKPackage
+ (id)clonedPackageWithRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name error:(id *)error;
+ (id)packageFromAnchor:(id)anchor error:(id *)error;
+ (id)packageWithPackage:(id)package error:(id *)error;
- (BOOL)deleteFilesWithError:(id *)error;
- (BOOL)setArchiverInfo:(id)info error:(id *)error;
- (BOOL)useMMCSEncryptionV2;
- (CKPackage)initWithCoder:(id)coder;
- (id)UUID;
- (id)addItem:(id)item;
- (id)anchorWithExpirationDate:(id)date error:(id *)error;
- (id)archiverInfo;
- (id)assetTransferOptions;
- (id)boundaryKey;
- (id)clonedPackageWithBundle:(id)bundle filesDuplicatedIntoDirectory:(id)directory error:(id *)error;
- (id)itemAtIndex:(unint64_t)index error:(id *)error;
- (id)itemEnumerator;
- (id)packageID;
- (id)setBoundaryKey:(id)key;
- (unint64_t)itemCount;
- (void)encodeWithCoder:(id)coder;
- (void)setAssetTransferOptions:(id)options;
@end

@implementation CKPackage

+ (id)packageWithPackage:(id)package error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  v7 = objc_msgSend_packageWithError_(CKConcretePackage, v6, error);
  objc_msgSend_itemEnumerator(packageCopy, v8, v9);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = objc_msgSend_addItem_(v7, v13, *(*(&v24 + 1) + 8 * v16), v24);
      if (v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = v17;

    if (error)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_9:

    v20 = objc_msgSend_enumerationError(v10, v18, v19);
    if (!v20)
    {
      goto LABEL_13;
    }

    if (error)
    {
LABEL_11:
      v21 = v20;
      *error = v20;
    }
  }

  v7 = 0;
LABEL_13:

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)clonedPackageWithRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name error:(id *)error
{
  nameCopy = name;
  dCopy = d;
  v10 = [CKPackageReference alloc];
  v12 = objc_msgSend_initWithRecordID_databaseScope_fieldName_(v10, v11, dCopy, scope, nameCopy);

  v13 = [CKReferencePackage alloc];
  v15 = objc_msgSend_initWithPackageReference_uuid_(v13, v14, v12, 0);

  return v15;
}

+ (id)packageFromAnchor:(id)anchor error:(id *)error
{
  v4 = objc_msgSend_packageFromAnchor_error_(CKPackageDatabase, a2, anchor, error);
  if (v4)
  {
    v5 = [CKConcretePackage alloc];
    v7 = objc_msgSend_initWithSQLitePackageRef_(v5, v6, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)useMMCSEncryptionV2
{
  v3 = objc_msgSend_assetTransferOptions(self, a2, v2);
  v6 = objc_msgSend_useMMCSEncryptionV2(v3, v4, v5);
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, v6, @"class");
}

- (CKPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"class");
  v8 = objc_alloc(NSClassFromString(v7));
  v10 = objc_msgSend_initWithCoder_(v8, v9, coderCopy);

  if (!v10)
  {
    v10 = objc_alloc_init(CKInvalidPackage);
  }

  return &v10->super;
}

- (id)addItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v4, v5);
  v7 = [CKSignificantIssue alloc];
  v8 = [CKSourceCodeLocation alloc];
  v10 = objc_msgSend_initWithFilePath_lineNumber_(v8, v9, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 150);
  v12 = objc_msgSend_initWithSourceCodeLocation_format_(v7, v11, v10, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v6, v13, v12, 0);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v15, v16, v17);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)itemAtIndex:(unint64_t)index error:(id *)error
{
  v4 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, index, error);
  v5 = [CKSignificantIssue alloc];
  v6 = [CKSourceCodeLocation alloc];
  v8 = objc_msgSend_initWithFilePath_lineNumber_(v6, v7, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 154);
  v10 = objc_msgSend_initWithSourceCodeLocation_format_(v5, v9, v8, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v4, v11, v10, 0);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v13, v14, v15);
  result = _os_crash();
  __break(1u);
  return result;
}

- (unint64_t)itemCount
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 158);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)itemEnumerator
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 162);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)packageID
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 166);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)anchorWithExpirationDate:(id)date error:(id *)error
{
  dateCopy = date;
  v7 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v5, v6);
  v8 = [CKSignificantIssue alloc];
  v9 = [CKSourceCodeLocation alloc];
  v11 = objc_msgSend_initWithFilePath_lineNumber_(v9, v10, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 170);
  v13 = objc_msgSend_initWithSourceCodeLocation_format_(v8, v12, v11, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v7, v14, v13, 0);

  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v16, v17, v18);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)archiverInfo
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 174);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)setArchiverInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v5, v6);
  v8 = [CKSignificantIssue alloc];
  v9 = [CKSourceCodeLocation alloc];
  v11 = objc_msgSend_initWithFilePath_lineNumber_(v9, v10, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 178);
  v13 = objc_msgSend_initWithSourceCodeLocation_format_(v8, v12, v11, @"Operation requires a concrete package");
  objc_msgSend_handleSignificantIssue_actions_(v7, v14, v13, 0);

  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Operation requires a concrete package");
  objc_msgSend_UTF8String(v16, v17, v18);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)assetTransferOptions
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 182);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a non abstract package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a non abstract package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)setAssetTransferOptions:(id)options
{
  optionsCopy = options;
  v6 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v4, v5);
  v7 = [CKSignificantIssue alloc];
  v8 = [CKSourceCodeLocation alloc];
  v10 = objc_msgSend_initWithFilePath_lineNumber_(v8, v9, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 186);
  v12 = objc_msgSend_initWithSourceCodeLocation_format_(v7, v11, v10, @"Operation requires a non abstract package");
  objc_msgSend_handleSignificantIssue_actions_(v6, v13, v12, 0);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Operation requires a non abstract package");
  objc_msgSend_UTF8String(v15, v16, v17);
  _os_crash();
  __break(1u);
}

- (id)boundaryKey
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 190);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a non abstract package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a non abstract package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)setBoundaryKey:(id)key
{
  keyCopy = key;
  v6 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v4, v5);
  v7 = [CKSignificantIssue alloc];
  v8 = [CKSourceCodeLocation alloc];
  v10 = objc_msgSend_initWithFilePath_lineNumber_(v8, v9, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 194);
  v12 = objc_msgSend_initWithSourceCodeLocation_format_(v7, v11, v10, @"Operation requires a non abstract package");
  objc_msgSend_handleSignificantIssue_actions_(v6, v13, v12, 0);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Operation requires a non abstract package");
  objc_msgSend_UTF8String(v15, v16, v17);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)UUID
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, v2);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKPackage.m", 198);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Operation requires a non abstract package");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Operation requires a non abstract package");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)clonedPackageWithBundle:(id)bundle filesDuplicatedIntoDirectory:(id)directory error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if (error)
  {
    *error = 0;
  }

  v76 = 0;
  v10 = objc_msgSend_packageForBundleID_error_(CKConcretePackage, v8, bundle, &v76);
  v11 = v76;
  v14 = v11;
  if (v11)
  {
    if (error)
    {
      v15 = v11;
      v16 = 0;
      *error = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    objc_msgSend_itemEnumerator(self, v12, v13);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v17 = v75 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v72, v78, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v73;
      obj = v17;
      v66 = directoryCopy;
      v64 = 0;
LABEL_8:
      v24 = 0;
      while (1)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v72 + 1) + 8 * v24);
        if (directoryCopy)
        {
          v26 = v10;
          v27 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v20, v21);
          v30 = objc_msgSend_UUIDString(v27, v28, v29);

          v32 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(directoryCopy, v31, v30, 0);
          v35 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v33, v34);
          v38 = objc_msgSend_fileURL(v25, v36, v37);
          v71 = 0;
          objc_msgSend_copyItemAtURL_toURL_error_(v35, v39, v38, v32, &v71);
          v40 = v71;

          if (v40)
          {

            v10 = v26;
            goto LABEL_23;
          }

          v10 = v26;
        }

        else
        {
          v32 = objc_msgSend_fileURL(*(*(&v72 + 1) + 8 * v24), v20, v21);
        }

        v41 = [CKPackageItem alloc];
        v43 = objc_msgSend_initWithFileURL_(v41, v42, v32);
        v40 = objc_msgSend_addItem_(v10, v44, v43);

        if (v40)
        {
          v17 = obj;

          if (!v66)
          {
LABEL_31:
            if (error)
            {
              v61 = v40;
              v16 = 0;
              *error = v40;
            }

            else
            {
              v16 = 0;
            }

            directoryCopy = v66;
            v14 = v64;
            goto LABEL_35;
          }

LABEL_23:
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v47 = objc_msgSend_itemEnumerator(v10, v45, v46, 0);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v67, v77, 16);
          if (v49)
          {
            v52 = v49;
            v53 = *v68;
            do
            {
              for (i = 0; i != v52; ++i)
              {
                if (*v68 != v53)
                {
                  objc_enumerationMutation(v47);
                }

                v55 = *(*(&v67 + 1) + 8 * i);
                v56 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v50, v51);
                v59 = objc_msgSend_fileURL(v55, v57, v58);
                objc_msgSend_removeItemAtURL_error_(v56, v60, v59, 0);
              }

              v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v67, v77, 16);
            }

            while (v52);
          }

          v17 = obj;
          goto LABEL_31;
        }

        ++v24;
        directoryCopy = v66;
        if (v22 == v24)
        {
          v17 = obj;
          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v72, v78, 16);
          v14 = 0;
          if (v22)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v16 = v10;
    v40 = 0;
LABEL_35:
  }

  v62 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)deleteFilesWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = objc_msgSend_itemEnumerator(self, a2, error);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = *v27;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v26 + 1) + 8 * v12);
        v15 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
        v18 = objc_msgSend_fileURL(v14, v16, v17);
        v25 = 0;
        objc_msgSend_removeItemAtURL_error_(v15, v19, v18, &v25);
        v20 = v25;

        if (v13)
        {
          v21 = v13;
        }

        else
        {
          v21 = v20;
        }

        v10 = v21;

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v26, v30, 16);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (error)
  {
    v22 = v10;
    *error = v10;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

@end