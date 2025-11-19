@interface APJSONArchiver
+ (id)JSONObjectWithObject:(id)a3;
- (APJSONArchiver)initWithArray;
- (APJSONArchiver)initWithDictionary;
- (BOOL)_containerIsArray;
- (id)_JSONObjectWithObject:(id)a3;
- (void)_addClassToContainer:(Class)a3;
- (void)_addValueToContainer:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation APJSONArchiver

- (APJSONArchiver)initWithArray
{
  v9.receiver = self;
  v9.super_class = APJSONArchiver;
  v5 = [(APJSONArchiver *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4);
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (APJSONArchiver)initWithDictionary
{
  v9.receiver = self;
  v9.super_class = APJSONArchiver;
  v5 = [(APJSONArchiver *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4);
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (BOOL)_containerIsArray
{
  container = self->_container;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)_addClassToContainer:(Class)a3
{
  v5 = NSStringFromClass(a3);
  objc_msgSend__addValueToContainer_forKey_(self, v4, v5, @"$");
}

- (void)_addValueToContainer:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v9 = a4;
  if (v14)
  {
    IsArray = objc_msgSend__containerIsArray(self, v6, v7, v8);
    container = self->_container;
    if (IsArray)
    {
      objc_msgSend_addObject_(container, v10, v14, v11);
    }

    else
    {
      objc_msgSend_setValue_forKey_(container, v10, v14, v9);
    }
  }
}

- (id)_JSONObjectWithObject:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v4, v5, v6);

  if (v8 == v7)
  {
    v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v9, v10, v11);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = v7;
LABEL_8:
    v13 = v12;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend__valueForNumber_(self, v15, v7, v16);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_apDefaultSharedFormatter(MEMORY[0x1E696AC80], v17, v18, v19);
    v23 = objc_msgSend_stringFromDate_(v20, v21, v7, v22);
LABEL_18:
    v13 = v23;
LABEL_19:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_base64EncodedStringWithOptions_(v7, v24, 0, v25);
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"data:base64,%@", v27, v20);;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_UUIDString(v7, v28, v29, v30);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = MEMORY[0x1E695DF70];
    v32 = v7;
    v36 = objc_msgSend_count(v32, v33, v34, v35);
    v39 = objc_msgSend_arrayWithCapacity_(v31, v37, v36, v38);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = sub_1BAF0A618;
    v101[3] = &unk_1E7F1CDA8;
    v101[4] = self;
    v40 = v39;
    v102 = v40;
    objc_msgSend_enumerateObjectsUsingBlock_(v32, v41, v101, v42);

    v43 = v102;
LABEL_26:
    v13 = v40;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = MEMORY[0x1E695DF90];
    v45 = v7;
    v49 = objc_msgSend_count(v45, v46, v47, v48);
    v52 = objc_msgSend_dictionaryWithCapacity_(v44, v50, v49, v51);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = sub_1BAF0A67C;
    v99[3] = &unk_1E7F1CDD0;
    v99[4] = self;
    v40 = v52;
    v100 = v40;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v45, v53, v99, v54);

    v43 = v100;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_allObjects(v7, v55, v56, v57);
    v58 = MEMORY[0x1E695DF70];
    v62 = objc_msgSend_count(v20, v59, v60, v61);
    v65 = objc_msgSend_arrayWithCapacity_(v58, v63, v62, v64);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = sub_1BAF0A6F0;
    v97[3] = &unk_1E7F1CDA8;
    v97[4] = self;
    v66 = v65;
    v98 = v66;
    objc_msgSend_enumerateObjectsUsingBlock_(v20, v67, v97, v68);
    v69 = v98;
    v13 = v66;

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = MEMORY[0x1E695DF70];
    v71 = v7;
    v75 = objc_msgSend_count(v71, v72, v73, v74);
    v78 = objc_msgSend_arrayWithCapacity_(v70, v76, v75, v77);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = sub_1BAF0A754;
    v95[3] = &unk_1E7F1CDA8;
    v95[4] = self;
    v40 = v78;
    v96 = v40;
    objc_msgSend_enumerateObjectsUsingBlock_(v71, v79, v95, v80);

    v43 = v96;
    goto LABEL_26;
  }

  v81 = objc_autoreleasePoolPush();
  v82 = [APJSONArchiver alloc];
  v86 = objc_msgSend_initWithDictionary(v82, v83, v84, v85);
  v87 = objc_opt_class();
  objc_msgSend__addClassToContainer_(v86, v88, v87, v89);
  objc_msgSend_encodeWithCoder_(v7, v90, v86, v91);
  v13 = objc_msgSend_object(v86, v92, v93, v94);

  objc_autoreleasePoolPop(v81);
LABEL_9:

  return v13;
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v11 = objc_msgSend_numberWithLongLong_(v6, v8, a3, v9);
  objc_msgSend__addValueToContainer_forKey_(self, v10, v11, v7);
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v15 = objc_msgSend_numberWithDouble_(v6, v8, v9, v10, a3);
  v13 = objc_msgSend__valueForNumber_(self, v11, v15, v12);
  objc_msgSend__addValueToContainer_forKey_(self, v14, v13, v7);
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend__JSONObjectWithObject_(self, v7, a3, v8);
  objc_msgSend__addValueToContainer_forKey_(self, v9, v10, v6);
}

+ (id)JSONObjectWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(APJSONArchiver);
  v7 = objc_msgSend__JSONObjectWithObject_(v4, v5, v3, v6);

  return v7;
}

@end