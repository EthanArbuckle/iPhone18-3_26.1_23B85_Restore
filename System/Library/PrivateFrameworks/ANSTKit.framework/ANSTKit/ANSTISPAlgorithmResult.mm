@interface ANSTISPAlgorithmResult
+ (id)_objectsOfCategory:(int)category fromAcResult:(id *)result;
+ (id)detectedObjectsForCategory:(id)category fromAcResult:(id *)result;
+ (id)new;
- (ANSTISPAlgorithmResult)init;
- (ANSTISPAlgorithmResult)initWithAcResult:(id *)result personMask:(__CVBuffer *)mask salientPersonMask:(__CVBuffer *)personMask skinMask:(__CVBuffer *)skinMask hairMask:(__CVBuffer *)hairMask skyMask:(__CVBuffer *)skyMask saliencyMask:(__CVBuffer *)saliencyMask;
- (__CVBuffer)maskForSemanticCategory:(id)category;
- (id)detectedObjectsForCategory:(id)category;
- (int)smudgeConfidence;
- (void)dealloc;
@end

@implementation ANSTISPAlgorithmResult

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTISPAlgorithmResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTISPAlgorithmResult)initWithAcResult:(id *)result personMask:(__CVBuffer *)mask salientPersonMask:(__CVBuffer *)personMask skinMask:(__CVBuffer *)skinMask hairMask:(__CVBuffer *)hairMask skyMask:(__CVBuffer *)skyMask saliencyMask:(__CVBuffer *)saliencyMask
{
  v18.receiver = self;
  v18.super_class = ANSTISPAlgorithmResult;
  _init = [(ANSTResult *)&v18 _init];
  if (_init)
  {
    if (result)
    {
      v16 = malloc_type_malloc(0x8110uLL, 0x10000402F34CA73uLL);
      _init->_acResult = v16;
      memcpy(v16, result, sizeof($A8D24B83268BAEB1FAC85F8F830F736F));
    }

    _init->_personMask = CVPixelBufferRetain(mask);
    _init->_salientPersonMask = CVPixelBufferRetain(personMask);
    _init->_skinMask = CVPixelBufferRetain(skinMask);
    _init->_hairMask = CVPixelBufferRetain(hairMask);
    _init->_skyMask = CVPixelBufferRetain(skyMask);
    _init->_saliencyMask = CVPixelBufferRetain(saliencyMask);
  }

  return _init;
}

- (void)dealloc
{
  acResult = self->_acResult;
  if (acResult)
  {
    free(acResult);
  }

  CVPixelBufferRelease(self->_personMask);
  CVPixelBufferRelease(self->_salientPersonMask);
  CVPixelBufferRelease(self->_skinMask);
  CVPixelBufferRelease(self->_hairMask);
  CVPixelBufferRelease(self->_skyMask);
  CVPixelBufferRelease(self->_saliencyMask);
  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmResult;
  [(ANSTISPAlgorithmResult *)&v4 dealloc];
}

- (int)smudgeConfidence
{
  acResult = self->_acResult;
  if (acResult)
  {
    return MEMORY[0x2821F9670](ANSTISPAlgorithmResult, sel_smudgeConfidenceFromAcResult_, acResult);
  }

  else
  {
    return 0;
  }
}

- (id)detectedObjectsForCategory:(id)category
{
  if (self->_acResult)
  {
    v4 = objc_msgSend_detectedObjectsForCategory_fromAcResult_(ANSTISPAlgorithmResult, a2, category);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__CVBuffer)maskForSemanticCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (@"Person" == categoryCopy || objc_msgSend_isEqualToString_(categoryCopy, v5, @"Person"))
  {
    v8 = 16;
LABEL_19:
    v13 = *(&self->super.super.isa + v8);
    goto LABEL_20;
  }

  if (@"SalientPerson" == v6 || objc_msgSend_isEqualToString_(v6, v7, @"SalientPerson"))
  {
    v8 = 24;
    goto LABEL_19;
  }

  if (@"Skin" == v6 || objc_msgSend_isEqualToString_(v6, v9, @"Skin"))
  {
    v8 = 32;
    goto LABEL_19;
  }

  if (@"Hair" == v6 || objc_msgSend_isEqualToString_(v6, v10, @"Hair"))
  {
    v8 = 40;
    goto LABEL_19;
  }

  if (@"Sky" == v6 || objc_msgSend_isEqualToString_(v6, v11, @"Sky"))
  {
    v8 = 48;
    goto LABEL_19;
  }

  if (@"Saliency" == v6 || objc_msgSend_isEqualToString_(v6, v12, @"Saliency"))
  {
    v8 = 56;
    goto LABEL_19;
  }

  v15 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_22E65C1B4();
  }

  v13 = 0;
LABEL_20:

  return v13;
}

+ (id)detectedObjectsForCategory:(id)category fromAcResult:(id *)result
{
  categoryCopy = category;
  v8 = categoryCopy;
  if (@"Face" == categoryCopy || objc_msgSend_isEqualToString_(categoryCopy, v7, @"Face"))
  {
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v7, result->var2);
    if (result->var2)
    {
      v12 = 0;
      var3 = result->var3;
      do
      {
        v14 = [ANSTFace alloc];
        v16 = objc_msgSend_initWithAcFace_(v14, v15, var3);
        objc_msgSend_addObject_(v11, v17, v16);

        ++v12;
        ++var3;
      }

      while (v12 < result->var2);
    }

LABEL_20:
    v33 = objc_msgSend_copy(v11, v9, v10);

    goto LABEL_21;
  }

  p_var4 = &result->var4;
  if (@"Hand" == v8 || objc_msgSend_isEqualToString_(v8, v7, @"Hand"))
  {
    v11 = objc_opt_new();
    v20 = *p_var4;
    if (v20)
    {
      v21 = 0;
      var5 = result->var5;
      do
      {
        if ((var5->var2 & 0xFFFFFFFE) == 0xA)
        {
          v23 = [ANSTHand alloc];
          v25 = objc_msgSend_initWithAcObject_(v23, v24, var5);
          objc_msgSend_addObject_(v11, v26, v25);

          v20 = *p_var4;
        }

        ++var5;
        ++v21;
      }

      while (v21 < v20);
    }

    goto LABEL_20;
  }

  if (@"Saliency" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"Saliency"))
  {
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, result->var7);
    if (result->var7)
    {
      v27 = 0;
      var8 = result->var8;
      do
      {
        v29 = [ANSTObject alloc];
        v31 = objc_msgSend_initWithAcObject_(v29, v30, var8);
        objc_msgSend_addObject_(v11, v32, v31);

        ++v27;
        ++var8;
      }

      while (v27 < p_var4[402]);
    }

    goto LABEL_20;
  }

  if (@"Body" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"Body"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 1, result);
    v33 = LABEL_48:;
    goto LABEL_21;
  }

  if (@"FullBody" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"FullBody"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 9, result);
    goto LABEL_48;
  }

  if (@"CatBody" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"CatBody"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 2, result);
    goto LABEL_48;
  }

  if (@"CatHead" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"CatHead"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 3, result);
    goto LABEL_48;
  }

  if (@"DogBody" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"DogBody"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 4, result);
    goto LABEL_48;
  }

  if (@"DogHead" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"DogHead"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 5, result);
    goto LABEL_48;
  }

  if (@"OtherAnimal" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"OtherAnimal"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 7, result);
    goto LABEL_48;
  }

  if (@"Sportsball" == v8 || objc_msgSend_isEqualToString_(v8, v19, @"Sportsball"))
  {
    objc_msgSend__objectsOfCategory_fromAcResult_(self, v19, 8, result);
    goto LABEL_48;
  }

  v35 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_22E65C234();
  }

  v33 = 0;
LABEL_21:

  return v33;
}

+ (id)_objectsOfCategory:(int)category fromAcResult:(id *)result
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