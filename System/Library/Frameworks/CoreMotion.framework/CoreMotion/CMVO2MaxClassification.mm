@interface CMVO2MaxClassification
+ (int)CLHKBiologicalSexFromBiologicalSex:(int64_t)a3;
+ (int64_t)biologicalSexFromCLHKBiologicalSex:(int)a3;
- (CMVO2MaxClassification)init;
- (id)classificationDataFromStruct:(CLVO2MaxClassificationData *)a3;
- (void)queryAllClassificationsWithHandler:(id)a3;
- (void)queryClassificationForBiologicalSex:(int64_t)a3 age:(int64_t)a4 handler:(id)a5;
- (void)queryClassificationForBiologicalSex:(int64_t)a3 age:(int64_t)a4 vo2Max:(double)a5 handler:(id)a6;
@end

@implementation CMVO2MaxClassification

- (CMVO2MaxClassification)init
{
  v3.receiver = self;
  v3.super_class = CMVO2MaxClassification;
  if ([(CMVO2MaxClassification *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)queryAllClassificationsWithHandler:(id)a3
{
  sub_19B687CD0(self->fVO2MaxClassifier.__ptr_, &__p);
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_initWithCapacity_(v5, v6, (v16 - __p) >> 5);
  v9 = __p;
  v10 = v16;
  while (v9 != v10)
  {
    v11 = v9[1];
    v14[0] = *v9;
    v14[1] = v11;
    v12 = objc_msgSend_classificationDataFromStruct_(self, v7, v14);
    objc_msgSend_addObject_(v8, v13, v12);
    v9 += 2;
  }

  (*(a3 + 2))(a3, v8, 0);

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (void)queryClassificationForBiologicalSex:(int64_t)a3 age:(int64_t)a4 handler:(id)a5
{
  v6 = a4;
  v31[1] = *MEMORY[0x1E69E9840];
  if ((a4 - 20) >= 0xB5)
  {
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Age parameter is outside of supported range for VO2 Max classification");
    v20 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v19, @"com.apple.coremotion");
    v30 = *MEMORY[0x1E696A578];
    v31[0] = objc_msgSend_localizedStringForKey_value_table_(v20, v21, v18, &stru_1F0E3D7A0, 0);
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v31, &v30, 1);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v24, @"CMErrorDomain", 107, v23);
    (*(a5 + 2))(a5, 0, v25);
  }

  else
  {
    v8 = objc_msgSend_CLHKBiologicalSexFromBiologicalSex_(CMVO2MaxClassification, a2, a3);
    sub_19B688328(self->fVO2MaxClassifier.__ptr_, v8, v6, &__p);
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, (v29 - __p) >> 5);
    v13 = __p;
    v14 = v29;
    while (v13 != v14)
    {
      v15 = v13[1];
      v27[0] = *v13;
      v27[1] = v15;
      v16 = objc_msgSend_classificationDataFromStruct_(self, v11, v27);
      objc_msgSend_addObject_(v12, v17, v16);
      v13 += 2;
    }

    (*(a5 + 2))(a5, v12, 0);

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)queryClassificationForBiologicalSex:(int64_t)a3 age:(int64_t)a4 vo2Max:(double)a5 handler:(id)a6
{
  v7 = a4;
  v33[1] = *MEMORY[0x1E69E9840];
  if ((a4 - 20) >= 0xB5)
  {
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Age parameter is outside of supported range for VO2 Max classification", a5);
    v22 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v21, @"com.apple.coremotion");
    v32 = *MEMORY[0x1E696A578];
    v33[0] = objc_msgSend_localizedStringForKey_value_table_(v22, v23, v20, &stru_1F0E3D7A0, 0);
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v33, &v32, 1);
    v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v26, @"CMErrorDomain", 107, v25);
    (*(a6 + 2))(a6, 0, v27);
  }

  else
  {
    v10 = objc_msgSend_CLHKBiologicalSexFromBiologicalSex_(CMVO2MaxClassification, a2, a3);
    sub_19B6886B4(self->fVO2MaxClassifier.__ptr_, v10, v7, &__p, a5);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = objc_msgSend_initWithCapacity_(v11, v12, (v31 - __p) >> 5);
    v15 = __p;
    v16 = v31;
    while (v15 != v16)
    {
      v17 = v15[1];
      v29[0] = *v15;
      v29[1] = v17;
      v18 = objc_msgSend_classificationDataFromStruct_(self, v13, v29);
      objc_msgSend_addObject_(v14, v19, v18);
      v15 += 2;
    }

    (*(a6 + 2))(a6, v14, 0);

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)classificationDataFromStruct:(CLVO2MaxClassificationData *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_biologicalSexFromCLHKBiologicalSex_(CMVO2MaxClassification, a2, a3->var0);
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  if (var3 >= 4)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29C60);
    }

    v8 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
    {
      v9 = a3->var3;
      *buf = 67174657;
      v18 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "[CMVO2MaxClassification] Unexpected classificationType: %{private}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29C60);
      }

      v16 = a3->var3;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxClassification classificationDataFromStruct:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    var3 = 0;
  }

  if (var2 == 200)
  {
    var2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [CMVO2MaxClassificationData alloc];
  result = objc_msgSend_initWithBiologicalSex_ageLowerBound_ageUpperBound_classificationType_vo2MaxLowerBound_vo2MaxUpperBound_(v12, v13, v4, var1, var2, var3, a3->var4, a3->var5);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)biologicalSexFromCLHKBiologicalSex:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)CLHKBiologicalSexFromBiologicalSex:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end