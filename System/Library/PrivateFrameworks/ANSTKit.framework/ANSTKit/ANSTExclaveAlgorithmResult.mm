@interface ANSTExclaveAlgorithmResult
+ (id)new;
- (ANSTExclaveAlgorithmResult)init;
- (ANSTExclaveAlgorithmResult)initWithAcResult:(id *)result;
- (id)_objectsOfCategory:(int)category fromAcResult:(id *)result;
- (id)detectedObjectsForCategory:(id)category;
- (void)dealloc;
@end

@implementation ANSTExclaveAlgorithmResult

- (ANSTExclaveAlgorithmResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTExclaveAlgorithmResult)initWithAcResult:(id *)result
{
  v8.receiver = self;
  v8.super_class = ANSTExclaveAlgorithmResult;
  _init = [(ANSTResult *)&v8 _init];
  v5 = _init;
  if (result && _init)
  {
    v6 = malloc_type_malloc(0x8110uLL, 0x10000402F34CA73uLL);
    v5->_acResult = v6;
    memcpy(v6, result, sizeof($A8D24B83268BAEB1FAC85F8F830F736F));
  }

  return v5;
}

- (void)dealloc
{
  acResult = self->_acResult;
  if (acResult)
  {
    free(acResult);
  }

  v4.receiver = self;
  v4.super_class = ANSTExclaveAlgorithmResult;
  [(ANSTExclaveAlgorithmResult *)&v4 dealloc];
}

- (id)detectedObjectsForCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  acResult = self->_acResult;
  if (acResult)
  {
    if (@"Face" == categoryCopy)
    {
      goto LABEL_5;
    }

    if (objc_msgSend_isEqualToString_(categoryCopy, v5, @"Face"))
    {
      acResult = self->_acResult;
LABEL_5:
      v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, acResult->var2);
      if (self->_acResult->var2)
      {
        v11 = 0;
        v12 = 224;
        do
        {
          v13 = [ANSTFace alloc];
          v15 = objc_msgSend_initWithAcFace_(v13, v14, self->_acResult + v12);
          objc_msgSend_addObject_(v10, v16, v15);

          ++v11;
          v12 += 2808;
        }

        while (v11 < self->_acResult->var2);
      }

LABEL_16:
      v25 = objc_msgSend_copy(v10, v8, v9);

      goto LABEL_40;
    }

    if (@"Hand" == v6 || objc_msgSend_isEqualToString_(v6, v5, @"Hand"))
    {
      v10 = objc_opt_new();
      v18 = self->_acResult;
      if (v18->var4)
      {
        v19 = 0;
        v20 = 28316;
        do
        {
          if ((*(&v18->var0.var0 + v20) & 0xFFFFFFFE) == 0xA)
          {
            v21 = [ANSTHand alloc];
            v23 = objc_msgSend_initWithAcObject_(v21, v22, self->_acResult + v20 - 8);
            objc_msgSend_addObject_(v10, v24, v23);

            v18 = self->_acResult;
          }

          ++v19;
          v20 += 40;
        }

        while (v19 < v18->var4);
      }

      goto LABEL_16;
    }

    if (@"Body" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"Body"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 1, self->_acResult);
      v25 = LABEL_35:;
      goto LABEL_40;
    }

    if (@"FullBody" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"FullBody"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 9, self->_acResult);
      goto LABEL_35;
    }

    if (@"CatBody" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"CatBody"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 2, self->_acResult);
      goto LABEL_35;
    }

    if (@"CatHead" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"CatHead"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 3, self->_acResult);
      goto LABEL_35;
    }

    if (@"DogBody" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"DogBody"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 4, self->_acResult);
      goto LABEL_35;
    }

    if (@"DogHead" == v6 || objc_msgSend_isEqualToString_(v6, v17, @"DogHead"))
    {
      objc_msgSend__objectsOfCategory_fromAcResult_(self, v17, 5, self->_acResult);
      goto LABEL_35;
    }

    v26 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C4B4(v6, v26);
    }
  }

  v25 = 0;
LABEL_40:

  return v25;
}

- (id)_objectsOfCategory:(int)category fromAcResult:(id *)result
{
  v8 = objc_opt_new();
  var4 = result->var4;
  if (var4)
  {
    v10 = 0;
    var5 = result->var5;
    do
    {
      v12 = *&var5->var3.var1;
      v19[0] = *&var5->var0;
      v19[1] = v12;
      v20 = *&var5->var5;
      if (DWORD2(v19[0]) == category)
      {
        v13 = [ANSTObject alloc];
        v15 = objc_msgSend_initWithAcObject_(v13, v14, v19);
        objc_msgSend_addObject_(v8, v16, v15, *&v19[0]);

        var4 = result->var4;
      }

      ++v10;
      ++var5;
    }

    while (v10 < var4);
  }

  v17 = objc_msgSend_copy(v8, v6, v7, *&v19[0]);

  return v17;
}

@end