@interface VNANFDMultiDetectorOriginalRequestInfo
+ (id)originatingRequestSpecifierToDetectorClassMap;
+ (id)requestClassNameFromRequestKey:(id)key;
+ (id)requestKeyFromRequest:(id)request;
+ (id)requestPropertiesFromRequestKey:(id)key;
@end

@implementation VNANFDMultiDetectorOriginalRequestInfo

+ (id)originatingRequestSpecifierToDetectorClassMap
{
  if (+[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::onceToken, &__block_literal_global_61_31026);
  }

  v3 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision;

  return v3;
}

void __87__VNANFDMultiDetectorOriginalRequestInfo_originatingRequestSpecifierToDetectorClassMap__block_invoke()
{
  v42[39] = *MEMORY[0x1E69E9840];
  v40 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[0] = v40;
  v42[0] = objc_opt_class();
  v39 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v41[1] = v39;
  v42[1] = objc_opt_class();
  v38 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841668 error:0];
  v41[2] = v38;
  v42[2] = objc_opt_class();
  v37 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3 error:0];
  v41[3] = v37;
  v42[3] = objc_opt_class();
  v36 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841669 error:0];
  v41[4] = v36;
  v42[4] = objc_opt_class();
  v35 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841667 error:0];
  v41[5] = v35;
  v42[5] = objc_opt_class();
  v34 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841670 error:0];
  v41[6] = v34;
  v42[6] = objc_opt_class();
  v33 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841671 error:0];
  v41[7] = v33;
  v42[7] = objc_opt_class();
  v32 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[8] = v32;
  v42[8] = objc_opt_class();
  v31 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[9] = v31;
  v42[9] = objc_opt_class();
  v30 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[10] = v30;
  v42[10] = objc_opt_class();
  v29 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v41[11] = v29;
  v42[11] = objc_opt_class();
  v28 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841667 error:0];
  v41[12] = v28;
  v42[12] = objc_opt_class();
  v27 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[13] = v27;
  v42[13] = objc_opt_class();
  v26 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[14] = v26;
  v42[14] = objc_opt_class();
  v25 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v41[15] = v25;
  v42[15] = objc_opt_class();
  v24 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[16] = v24;
  v42[16] = objc_opt_class();
  v23 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v41[17] = v23;
  v42[17] = objc_opt_class();
  v22 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[18] = v22;
  v42[18] = objc_opt_class();
  v21 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[19] = v21;
  v42[19] = objc_opt_class();
  v20 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v41[20] = v20;
  v42[20] = objc_opt_class();
  v19 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[21] = v19;
  v42[21] = objc_opt_class();
  v18 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v41[22] = v18;
  v42[22] = objc_opt_class();
  v17 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[23] = v17;
  v42[23] = objc_opt_class();
  v16 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[24] = v16;
  v42[24] = objc_opt_class();
  v15 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[25] = v15;
  v42[25] = objc_opt_class();
  v14 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v41[26] = v14;
  v42[26] = objc_opt_class();
  v13 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[27] = v13;
  v42[27] = objc_opt_class();
  v12 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[28] = v12;
  v42[28] = objc_opt_class();
  v11 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[29] = v11;
  v42[29] = objc_opt_class();
  v10 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[30] = v10;
  v42[30] = objc_opt_class();
  v0 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v41[31] = v0;
  v42[31] = objc_opt_class();
  v1 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v41[32] = v1;
  v42[32] = objc_opt_class();
  v2 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[33] = v2;
  v42[33] = objc_opt_class();
  v3 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v41[34] = v3;
  v42[34] = objc_opt_class();
  v4 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v41[35] = v4;
  v42[35] = objc_opt_class();
  v5 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3 error:0];
  v41[36] = v5;
  v42[36] = objc_opt_class();
  v6 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:4 error:0];
  v41[37] = v6;
  v42[37] = objc_opt_class();
  v7 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:5 error:0];
  v41[38] = v7;
  v42[38] = objc_opt_class();
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:39];
  v9 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision;
  +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision = v8;
}

+ (id)requestPropertiesFromRequestKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];

  return v4;
}

+ (id)requestClassNameFromRequestKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)requestKeyFromRequest:(id)request
{
  requestCopy = request;
  v5 = NSStringFromClass([requestCopy frameworkClass]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = requestCopy;
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "upperBodyOnly")}];
    v9 = [v7 initWithFormat:@"%@%@%@", v5, @"_", v8];

    v5 = v9;
    v10 = v5;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___VNANFDMultiDetectorOriginalRequestInfo;
    v10 = objc_msgSendSuper2(&v12, sel_requestKeyFromRequest_, requestCopy);
  }

  return v10;
}

@end