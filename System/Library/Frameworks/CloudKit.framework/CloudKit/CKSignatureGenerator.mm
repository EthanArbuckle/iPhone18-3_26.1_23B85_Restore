@interface CKSignatureGenerator
+ (BOOL)isValidSignature:(id)signature;
+ (BOOL)isValidV2Signature:(id)signature;
+ (id)signatureForStreamingAsset;
- (CKSignatureGenerator)init;
- (CKSignatureGenerator)initWithBoundaryKey:(id)key;
- (CKSignatureGenerator)initWithVerificationKey:(id)key;
- (char)_newSignatureByFinishingGenerator;
- (id)dataByFinishingSignature;
- (void)dealloc;
- (void)updateWithBytes:(const void *)bytes length:(unint64_t)length;
- (void)updateWithData:(id)data;
@end

@implementation CKSignatureGenerator

- (CKSignatureGenerator)init
{
  v17.receiver = self;
  v17.super_class = CKSignatureGenerator;
  v2 = [(CKSignatureGenerator *)&v17 init];
  v5 = v2;
  if (!v2)
  {
    return v5;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v6 = off_1EA911600;
  v26 = off_1EA911600;
  if (!off_1EA911600)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = sub_1886C29CC;
    v21 = &unk_1E70BBE90;
    v22 = &v23;
    v7 = sub_1886C2A1C(v2, v3, v4);
    v8 = dlsym(v7, "MMCSSignatureGeneratorCreate");
    *(v22[1] + 24) = v8;
    off_1EA911600 = *(v22[1] + 24);
    v6 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v6)
  {
    v5->_generator = v6();
    v5->_valid = 1;
    return v5;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, "void *__MMCSSignatureGeneratorCreate(void)");
  v15 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v12, v16, v14, @"CKSignatureGenerator.m", 24, @"%s", v15);

  __break(1u);
  return result;
}

- (CKSignatureGenerator)initWithBoundaryKey:(id)key
{
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = CKSignatureGenerator;
  v5 = [(CKSignatureGenerator *)&v20 init];
  v8 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = off_1EA919BB8;
  v29 = off_1EA919BB8;
  if (!off_1EA919BB8)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1886C2BE4;
    v24 = &unk_1E70BBE90;
    v25 = &v26;
    v10 = sub_1886C2A1C(v5, v6, v7);
    v11 = dlsym(v10, "MMCSSignatureGeneratorCreateWithBoundaryKey");
    *(v25[1] + 24) = v11;
    off_1EA919BB8 = *(v25[1] + 24);
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v9)
  {
    v8->_generator = v9(keyCopy);
    v8->_valid = 1;
LABEL_6:

    return v8;
  }

  v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v16, "void *__MMCSSignatureGeneratorCreateWithBoundaryKey(CFDataRef)");
  v18 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v15, v19, v17, @"CKSignatureGenerator.m", 28, @"%s", v18);

  __break(1u);
  return result;
}

- (CKSignatureGenerator)initWithVerificationKey:(id)key
{
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = CKSignatureGenerator;
  v5 = [(CKSignatureGenerator *)&v20 init];
  v8 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = off_1EA919BC0;
  v29 = off_1EA919BC0;
  if (!off_1EA919BC0)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1886C2C34;
    v24 = &unk_1E70BBE90;
    v25 = &v26;
    v10 = sub_1886C2A1C(v5, v6, v7);
    v11 = dlsym(v10, "MMCSSignatureGeneratorCreateWithVerificationKey");
    *(v25[1] + 24) = v11;
    off_1EA919BC0 = *(v25[1] + 24);
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v9)
  {
    v8->_generator = v9(keyCopy);
    v8->_valid = 1;
LABEL_6:

    return v8;
  }

  v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v16, "void *__MMCSSignatureGeneratorCreateWithVerificationKey(CFDataRef)");
  v18 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v15, v19, v17, @"CKSignatureGenerator.m", 33, @"%s", v18);

  __break(1u);
  return result;
}

- (void)dealloc
{
  v4 = objc_msgSend__newSignatureByFinishingGenerator(self, a2, v2);
  if (v4)
  {
    free(v4);
  }

  v5.receiver = self;
  v5.super_class = CKSignatureGenerator;
  [(CKSignatureGenerator *)&v5 dealloc];
}

- (char)_newSignatureByFinishingGenerator
{
  if (!objc_msgSend_isValid(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_setValid_(self, v4, 0);
  v7 = objc_msgSend_generator(self, v5, v6);
  v10 = v7;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v11 = off_1EA9115F8;
  v24 = off_1EA9115F8;
  if (!off_1EA9115F8)
  {
    v12 = sub_1886C2A1C(v7, v8, v9);
    v22[3] = dlsym(v12, "MMCSSignatureGeneratorFinish");
    off_1EA9115F8 = v22[3];
    v11 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v11)
  {
    result = v11(v10);
    self->_generator = 0;
  }

  else
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, "unsigned char *__MMCSSignatureGeneratorFinish(void *)");
    v19 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v16, v20, v18, @"CKSignatureGenerator.m", 40, @"%s", v19);

    __break(1u);
  }

  return result;
}

- (void)updateWithBytes:(const void *)bytes length:(unint64_t)length
{
  if ((objc_msgSend_isValid(self, a2, bytes) & 1) == 0)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKSignatureGenerator.m", 119, @"Attempted to update an invalidated signature generator");
  }

  v10 = objc_msgSend_generator(self, v8, v9);

  sub_1886C1D50(v10, bytes, length);
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_isValid(self, v6, v7) & 1) == 0)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKSignatureGenerator.m", 124, @"Attempted to update an invalidated signature generator");
  }

  v21 = dataCopy;
  v12 = objc_msgSend_generator(self, v10, v11);
  v15 = objc_msgSend_bytes(v21, v13, v14);
  v18 = objc_msgSend_length(v21, v16, v17);
  sub_1886C1D50(v12, v15, v18);
}

- (id)dataByFinishingSignature
{
  v3 = objc_msgSend__newSignatureByFinishingGenerator(self, a2, v2);
  v4 = MEMORY[0x1E695DEF0];
  sub_1886C1FF8(v3, v5, v6);

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v4, v8, v3, v7, 1);
}

+ (BOOL)isValidSignature:(id)signature
{
  signatureCopy = signature;
  if (!objc_msgSend_length(signatureCopy, v4, v5) || (v8 = objc_msgSend_length(signatureCopy, v6, v7), v11 = objc_msgSend_bytes(signatureCopy, v9, v10), sub_1886C1FF8(v11, v12, v13), v8 != v16))
  {
    v25 = 0;
    goto LABEL_8;
  }

  v17 = objc_msgSend_bytes(signatureCopy, v14, v15);
  v20 = v17;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v21 = off_1EA919BD8;
  v35 = off_1EA919BD8;
  if (!off_1EA919BD8)
  {
    v22 = sub_1886C2A1C(v17, v18, v19);
    v33[3] = dlsym(v22, "MMCSSignatureIsValid");
    off_1EA919BD8 = v33[3];
    v21 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v21)
  {
    v25 = v21(v20) != 0;
LABEL_8:

    return v25;
  }

  v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, "Boolean __MMCSSignatureIsValid(const unsigned char *)");
  v30 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v27, v31, v29, @"CKSignatureGenerator.m", 52, @"%s", v30);

  __break(1u);
  return result;
}

+ (BOOL)isValidV2Signature:(id)signature
{
  signatureCopy = signature;
  if (!objc_msgSend_length(signatureCopy, v4, v5) || (v8 = objc_msgSend_length(signatureCopy, v6, v7), v11 = objc_msgSend_bytes(signatureCopy, v9, v10), sub_1886C1FF8(v11, v12, v13), v8 != v16))
  {
    v25 = 0;
    goto LABEL_8;
  }

  v17 = objc_msgSend_bytes(signatureCopy, v14, v15);
  v20 = v17;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v21 = off_1EA9115E8;
  v35 = off_1EA9115E8;
  if (!off_1EA9115E8)
  {
    v22 = sub_1886C2A1C(v17, v18, v19);
    v33[3] = dlsym(v22, "MMCSSignatureIsValidV2");
    off_1EA9115E8 = v33[3];
    v21 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v21)
  {
    v25 = v21(v20) != 0;
LABEL_8:

    return v25;
  }

  v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, "Boolean __MMCSSignatureIsValidV2(const unsigned char *)");
  v30 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v27, v31, v29, @"CKSignatureGenerator.m", 55, @"%s", v30);

  __break(1u);
  return result;
}

+ (id)signatureForStreamingAsset
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF88]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, 21);
  v15 = 3;
  objc_msgSend_appendBytes_length_(v4, v5, &v15, 1);
  for (i = 0; i != 20; ++i)
  {
    v16[i] = arc4random();
  }

  v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, v16, 20);
  objc_msgSend_appendData_(v4, v9, v8);
  v12 = objc_msgSend_copy(v4, v10, v11);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end