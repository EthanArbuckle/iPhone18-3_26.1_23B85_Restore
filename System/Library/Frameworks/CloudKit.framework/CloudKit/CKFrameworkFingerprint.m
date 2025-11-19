@interface CKFrameworkFingerprint
- (BOOL)isLikelyEqual:(id)a3;
- (CKFrameworkFingerprint)init;
- (CKFrameworkFingerprint)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFrameworkFingerprint

- (CKFrameworkFingerprint)init
{
  v32[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKFrameworkFingerprint;
  v2 = [(CKFrameworkFingerprint *)&v27 init];
  if (v2)
  {
    v3 = CKHeaderForLibraryName(@"CloudKit");
    if (v3)
    {
      v4 = v3;
      v32[0] = 0;
      v32[1] = 0;
      if (_dyld_get_image_uuid())
      {
        v5 = objc_alloc(MEMORY[0x1E696AFB0]);
        v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, v32);
        objc_msgSend_setUuid_(v2, v8, v7);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v13 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v29 = v4;
          v30 = 2112;
          v31 = @"CloudKit";
          _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "Failed to get image uuid for header %p in library name %@", buf, 0x16u);
        }
      }

      v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, v4->cputype);
      objc_msgSend_setCpuType_(v2, v15, v14);

      v17 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v4->cpusubtype);
      objc_msgSend_setCpuSubtype_(v2, v18, v17);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = @"CloudKit";
        _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Couldn't get mach_header for library name %@", buf, 0xCu);
      }
    }

    v19 = objc_msgSend_UTF8String(@"CloudKit", v11, v12);
    v20 = NSVersionOfRunTimeLibrary(v19);
    if (v20 == -1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v24 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = @"CloudKit";
        _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Couldn't get runtime version for library name %@", buf, 0xCu);
      }
    }

    else
    {
      v22 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, v20);
      objc_msgSend_setVersion_(v2, v23, v22);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v2;
}

- (CKFrameworkFingerprint)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CKFrameworkFingerprint;
  v5 = [(CKFrameworkFingerprint *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
    uuid = v5->_uuid;
    v5->_uuid = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_version);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v11, v12);
    version = v5->_version;
    v5->_version = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_cpuType);
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v16, v17);
    cpuType = v5->_cpuType;
    v5->_cpuType = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_cpuSubtype);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v21, v22);
    cpuSubtype = v5->_cpuSubtype;
    v5->_cpuSubtype = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_uuid(self, v5, v6);
  v8 = NSStringFromSelector(sel_uuid);
  objc_msgSend_encodeObject_forKey_(v4, v9, v7, v8);

  v12 = objc_msgSend_version(self, v10, v11);
  v13 = NSStringFromSelector(sel_version);
  objc_msgSend_encodeObject_forKey_(v4, v14, v12, v13);

  v17 = objc_msgSend_cpuType(self, v15, v16);
  v18 = NSStringFromSelector(sel_cpuType);
  objc_msgSend_encodeObject_forKey_(v4, v19, v17, v18);

  v24 = objc_msgSend_cpuSubtype(self, v20, v21);
  v22 = NSStringFromSelector(sel_cpuSubtype);
  objc_msgSend_encodeObject_forKey_(v4, v23, v24, v22);
}

- (id)description
{
  v3 = self;
  v6 = objc_msgSend_cpuType(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_cpuSubtype(v3, v4, v5);

    if (v7)
    {
      v8 = objc_msgSend_cpuType(v3, v4, v5);
      v11 = objc_msgSend_intValue(v8, v9, v10);
      v14 = objc_msgSend_cpuSubtype(v3, v12, v13);
      v17 = objc_msgSend_intValue(v14, v15, v16);
      v6 = macho_arch_name_for_cpu_type(v11, v17);

      if (v6)
      {
        v6 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v4, v6, 4);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v18 = MEMORY[0x1E696AEC0];
  v21 = objc_msgSend_uuid(v3, v4, v5);
  if (v3)
  {
    v22 = objc_msgSend_version(v3, v19, v20);

    if (v22)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = objc_msgSend_version(v3, v19, v23);
      v28 = objc_msgSend_unsignedIntValue(v25, v26, v27) >> 16;
      v31 = objc_msgSend_version(v3, v29, v30);
      v34 = (objc_msgSend_unsignedIntValue(v31, v32, v33) >> 8);
      v37 = objc_msgSend_version(v3, v35, v36);
      v40 = objc_msgSend_unsignedIntValue(v37, v38, v39);
      v3 = objc_msgSend_stringWithFormat_(v24, v41, @"%u.%u.%u", v28, v34, v40);
    }

    else
    {
      v3 = 0;
    }
  }

  v42 = objc_msgSend_stringWithFormat_(v18, v19, @"%@, %@, %@", v21, v3, v6);

  return v42;
}

- (BOOL)isLikelyEqual:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_uuid(self, v5, v6);
  v10 = objc_msgSend_uuid(v4, v8, v9);
  isEqual = objc_msgSend_isEqual_(v7, v11, v10);

  if (isEqual)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v16 = objc_msgSend_version(self, v13, v14);
    v19 = objc_msgSend_version(v4, v17, v18);
    v21 = objc_msgSend_isEqual_(v16, v20, v19);

    if (v21)
    {
      v26 = objc_msgSend_cpuType(self, v22, v23);
      if (v26)
      {
        v29 = objc_msgSend_cpuSubtype(self, v24, v25);
        if (v29)
        {
          v30 = objc_msgSend_cpuType(self, v27, v28);
          v33 = objc_msgSend_cpuType(v4, v31, v32);
          if (objc_msgSend_isEqual_(v30, v34, v33))
          {
            v37 = objc_msgSend_cpuSubtype(self, v35, v36);
            v40 = objc_msgSend_cpuSubtype(v4, v38, v39);
            v15 = objc_msgSend_isEqual_(v37, v41, v40) ^ 1;
          }

          else
          {
            LOBYTE(v15) = 1;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

@end