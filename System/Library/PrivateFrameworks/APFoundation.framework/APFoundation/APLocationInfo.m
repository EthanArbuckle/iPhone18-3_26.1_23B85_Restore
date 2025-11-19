@interface APLocationInfo
- (APLocationInfo)initWithCoder:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqualToAPLocationInfo:(id)a3;
- (id)description;
- (id)jsonRepresentationWithOptions:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APLocationInfo

- (id)jsonRepresentationWithOptions:(unint64_t)a3
{
  v35[5] = *MEMORY[0x1E69E9840];
  v34[0] = @"locality";
  v5 = objc_msgSend_locality(self, a2, a3, v3);
  v9 = v5;
  if (!v5)
  {
    v5 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7, v8);
  }

  v35[0] = v5;
  v34[1] = @"administrativeArea";
  v13 = objc_msgSend_administrativeArea(self, v6, v7, v8, v5);
  v14 = v13;
  if (!v13)
  {
    v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v10, v11, v12);
  }

  v35[1] = v14;
  v34[2] = @"subAdministrativeArea";
  v18 = objc_msgSend_subAdministrativeArea(self, v10, v11, v12);
  v19 = v18;
  if (!v18)
  {
    v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16, v17);
  }

  v35[2] = v19;
  v34[3] = @"isoCountryCode";
  v23 = objc_msgSend_isoCountryCode(self, v15, v16, v17);
  v24 = v23;
  if (!v23)
  {
    v24 = objc_msgSend_null(MEMORY[0x1E695DFB0], v20, v21, v22);
  }

  v35[3] = v24;
  v34[4] = @"postalCode";
  v28 = objc_msgSend_postalCode(self, v20, v21, v22);
  v29 = v28;
  if (!v28)
  {
    v29 = objc_msgSend_null(MEMORY[0x1E695DFB0], v25, v26, v27);
  }

  v35[4] = v29;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v35, v34, 5);
  if (!v28)
  {
  }

  if (!v23)
  {
  }

  if (!v18)
  {
  }

  if (!v13)
  {
  }

  if (!v9)
  {
  }

  v31 = *MEMORY[0x1E69E9840];
  return @"<redacted>";
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_locality(self, v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"locality");

  v13 = objc_msgSend_administrativeArea(self, v10, v11, v12);
  objc_msgSend_encodeObject_forKey_(v4, v14, v13, @"administrativeArea");

  v18 = objc_msgSend_subAdministrativeArea(self, v15, v16, v17);
  objc_msgSend_encodeObject_forKey_(v4, v19, v18, @"subAdministrativeArea");

  v23 = objc_msgSend_isoCountryCode(self, v20, v21, v22);
  objc_msgSend_encodeObject_forKey_(v4, v24, v23, @"isoCountryCode");

  v29 = objc_msgSend_postalCode(self, v25, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v28, v29, @"postalCode");
}

- (APLocationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  if (v8)
  {
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v9, @"locality");
    locality = v8->_locality;
    v8->_locality = v11;

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"administrativeArea");
    administrativeArea = v8->_administrativeArea;
    v8->_administrativeArea = v15;

    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"subAdministrativeArea");
    subAdministrativeArea = v8->_subAdministrativeArea;
    v8->_subAdministrativeArea = v19;

    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v21, @"isoCountryCode");
    isoCountryCode = v8->_isoCountryCode;
    v8->_isoCountryCode = v23;

    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"postalCode");
    postalCode = v8->_postalCode;
    v8->_postalCode = v27;
  }

  return v8;
}

- (BOOL)isEqualToAPLocationInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_description(self, v5, v6, v7);
    v12 = objc_msgSend_description(v4, v9, v10, v11);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v13, v12, v14);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)isEmpty
{
  v8 = objc_msgSend_locality(self, a2, v2, v3);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v13 = objc_msgSend_administrativeArea(self, v5, v6, v7);
    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v17 = objc_msgSend_subAdministrativeArea(self, v10, v11, v12);
      if (v17)
      {
        v9 = 0;
      }

      else
      {
        v21 = objc_msgSend_isoCountryCode(self, v14, v15, v16);
        if (v21)
        {
          v9 = 0;
        }

        else
        {
          v22 = objc_msgSend_postalCode(self, v18, v19, v20);
          v9 = v22 == 0;
        }
      }
    }
  }

  return v9;
}

- (id)description
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v9 = objc_msgSend_locality(self, v6, v7, v8);
  objc_msgSend_setValue_forKey_(v5, v10, v9, @"locality");

  v14 = objc_msgSend_administrativeArea(self, v11, v12, v13);
  objc_msgSend_setValue_forKey_(v5, v15, v14, @"administrativeArea");

  v19 = objc_msgSend_subAdministrativeArea(self, v16, v17, v18);
  objc_msgSend_setValue_forKey_(v5, v20, v19, @"subAdministrativeArea");

  v24 = objc_msgSend_isoCountryCode(self, v21, v22, v23);
  objc_msgSend_setValue_forKey_(v5, v25, v24, @"isoCountryCode");

  v29 = objc_msgSend_postalCode(self, v26, v27, v28);
  objc_msgSend_setValue_forKey_(v5, v30, v29, @"postalCode");

  return @"<redacted>";
}

@end