@interface NTKLeghornPOIFilterEditOption
+ (id)optionAtIndex:(unint64_t)a3 forDevice:(id)a4;
+ (id)optionForEverythingForDevice:(id)a3;
+ (id)optionWithPOIFilter:(id)a3 forDevice:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NTKLeghornPOIFilterEditOption)initWithCoder:(id)a3;
- (NTKLeghornPOIFilterEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (NTKLeghornPOIFilterEditOption)initWithPOIFilter:(id)a3 forDevice:(id)a4;
- (id)JSONObjectRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKLeghornPOIFilterEditOption

- (NTKLeghornPOIFilterEditOption)initWithPOIFilter:(id)a3 forDevice:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NTKLeghornPOIFilterEditOption;
  v8 = [(NTKEditOption *)&v11 initWithDevice:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filter, a3);
  }

  return v9;
}

+ (id)optionWithPOIFilter:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NTKLeghornPOIFilterEditOption alloc];
  v10 = objc_msgSend_initWithPOIFilter_forDevice_(v7, v8, v9, v6, v5);

  return v10;
}

+ (id)optionForEverythingForDevice:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_all(NTKLeghornPOIFilter, v5, v6);
  v10 = objc_msgSend_optionWithPOIFilter_forDevice_(a1, v8, v9, v7, v4);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqual = objc_msgSend_isEqual_(self->_filter, v5, v6, v4[2]);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NTKLeghornPOIFilterEditOption;
  return [(NTKLeghornPOIFilterEditOption *)&v3 hash];
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKLeghornPOIFilterEditOption;
  v4 = a3;
  [(NTKEditOption *)&v10 encodeWithCoder:v4];
  v7 = objc_msgSend_dictionaryValue(self->_filter, v5, v6, v10.receiver, v10.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v8, v9, v7, @"filter");
}

- (NTKLeghornPOIFilterEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NTKLeghornPOIFilterEditOption;
  v6 = [(NTKEditOption *)&v14 initWithCoder:v4];
  if (v6)
  {
    v8 = objc_msgSend_decodeObjectForKey_(v4, v5, v7, @"filter");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_poiFilterFromDictionary_(NTKLeghornPOIFilter, v9, v10, v8);
    }

    else
    {
      objc_msgSend_all(NTKLeghornPOIFilter, v9, v10);
    }
    v11 = ;
    filter = v6->_filter;
    v6->_filter = v11;
  }

  return v6;
}

- (id)JSONObjectRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dictionaryValue(self->_filter, a2, v2);
  v15 = 0;
  v6 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v4, v5, v3, 0, &v15);
  v7 = v15;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[NTKLeghornPOIFilterEditOption JSONObjectRepresentation]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEFAULT, "%s: failed to JSON encode filter dictionary, error = %@", buf, 0x16u);
    }

    v13 = @"bad";
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_msgSend_initWithData_encoding_(v10, v11, v12, v6, 4);
  }

  return v13;
}

- (NTKLeghornPOIFilterEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v9 = objc_msgSend_initWithDevice_(self, v7, v8, a4);
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, v11, *MEMORY[0x277CBE660], @"object must be a string - invalid value: %@", v6);
    }

    v12 = objc_msgSend_dataUsingEncoding_(v6, v10, v11, 4);
    v15 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v13, v14, v12, 1, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_poiFilterFromDictionary_(NTKLeghornPOIFilter, v16, v17, v15);
    }

    else
    {
      objc_msgSend_all(NTKLeghornPOIFilter, v16, v17);
    }
    v18 = ;
    filter = v9->_filter;
    v9->_filter = v18;
  }

  return v9;
}

+ (id)optionAtIndex:(unint64_t)a3 forDevice:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v8 = objc_msgSend_optionForEverythingForDevice_(v5, v6, v7, v4);

  return v8;
}

@end