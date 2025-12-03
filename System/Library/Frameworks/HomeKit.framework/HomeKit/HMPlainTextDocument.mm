@interface HMPlainTextDocument
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMPlainTextDocument)initWithCoder:(id)coder;
- (HMPlainTextDocument)initWithData:(id)data error:(id *)error;
- (HMPlainTextDocument)initWithString:(id)string;
- (HMPlainTextDocument)initWithURL:(id)l error:(id *)error;
- (HMPlainTextDocument)initWithURL:(id)l fileManager:(id)manager error:(id *)error;
- (NSAttributedString)attributedString;
- (NSString)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMPlainTextDocument

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(HMPlainTextDocument *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"HM.stringValue"];
}

- (HMPlainTextDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.stringValue"];

  v6 = [(HMPlainTextDocument *)self initWithString:v5];
  return v6;
}

- (NSAttributedString)attributedString
{
  if (UIKitLibraryCore())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__27018;
    v11 = __Block_byref_object_dispose__27019;
    v12 = 0;
    v3 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__HMPlainTextDocument_attributedString__block_invoke;
    v6[3] = &unk_1E7549100;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __39__HMPlainTextDocument_attributedString__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) stringValue];
  v4 = [v3 fastestEncoding];

  v5 = [*v2 stringValue];
  v6 = [v5 dataUsingEncoding:v4];

  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v8 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  v36 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke;
    v41 = &unk_1E754CB30;
    v42 = &v33;
    v9 = UIKitLibrary();
    v10 = dlsym(v9, "NSDocumentTypeDocumentAttribute");
    *(v42[1] + 24) = v10;
    getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = *(v42[1] + 24);
    v8 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v8)
  {
    goto LABEL_15;
  }

  v11 = *v8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v12 = getNSPlainTextDocumentTypeSymbolLoc_ptr;
  v36 = getNSPlainTextDocumentTypeSymbolLoc_ptr;
  v37 = v11;
  if (!getNSPlainTextDocumentTypeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNSPlainTextDocumentTypeSymbolLoc_block_invoke;
    v41 = &unk_1E754CB30;
    v42 = &v33;
    v13 = UIKitLibrary();
    v14 = dlsym(v13, "NSPlainTextDocumentType");
    *(v42[1] + 24) = v14;
    getNSPlainTextDocumentTypeSymbolLoc_ptr = *(v42[1] + 24);
    v12 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v12)
  {
    goto LABEL_15;
  }

  v15 = *v12;
  v39[0] = v15;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v16 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr;
  v36 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr;
  if (!getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNSCharacterEncodingDocumentAttributeSymbolLoc_block_invoke;
    v41 = &unk_1E754CB30;
    v42 = &v33;
    v17 = UIKitLibrary();
    v18 = dlsym(v17, "NSCharacterEncodingDocumentAttribute");
    *(v42[1] + 24) = v18;
    getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr = *(v42[1] + 24);
    v16 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v16)
  {
LABEL_15:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v38 = *v16;
  v19 = MEMORY[0x1E696AD98];
  v20 = v38;
  v21 = [v19 numberWithUnsignedInteger:v4];
  v39[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v37 count:2];
  v32 = 0;
  v23 = [v7 initWithData:v6 options:v22 documentAttributes:0 error:&v32];
  v24 = v32;
  v25 = *(*(a1 + 40) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v23;

  if (v24)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Create NSAttributedString failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (NSString)stringValue
{
  document = [(HMPlainTextDocument *)self document];
  stringValue = [document stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      document = [(HMPlainTextDocument *)self document];
      document2 = [(HMPlainTextDocument *)v6 document];
      v9 = [document isEqual:document2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  stringValue = [(HMPlainTextDocument *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (HMPlainTextDocument)initWithURL:(id)l fileManager:(id)manager error:(id *)error
{
  lCopy = l;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = HMPlainTextDocument;
  v10 = [(HMPlainTextDocument *)&v15 init];
  if (v10 && (v11 = [[_HMDocument alloc] initWithURL:lCopy fileManager:managerCopy error:error], document = v10->_document, v10->_document = v11, document, !v10->_document))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (HMPlainTextDocument)initWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v6 defaultManager];
  v9 = [(HMPlainTextDocument *)self initWithURL:lCopy fileManager:defaultManager error:error];

  return v9;
}

- (HMPlainTextDocument)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HMPlainTextDocument;
  v7 = [(HMPlainTextDocument *)&v12 init];
  if (v7 && (v8 = [[_HMDocument alloc] initWithData:dataCopy error:error], document = v7->_document, v7->_document = v8, document, !v7->_document))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (HMPlainTextDocument)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = HMPlainTextDocument;
  v5 = [(HMPlainTextDocument *)&v10 init];
  if (v5 && (v6 = [[_HMDocument alloc] initWithString:stringCopy], document = v5->_document, v5->_document = v6, document, !v5->_document))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_27041 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_27041, &__block_literal_global_27042);
  }

  v3 = logCategory__hmf_once_v3_27043;

  return v3;
}

uint64_t __34__HMPlainTextDocument_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_27043;
  logCategory__hmf_once_v3_27043 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end