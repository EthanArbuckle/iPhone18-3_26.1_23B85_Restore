@interface AVTImageValidator
+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)a3 withSize:(CGImage *)a4;
+ (BOOL)isImageValid:(id)a3 error:(id *)a4;
+ (id)sharedValidator;
- (AVTImageValidator)init;
- (AVTImageValidator)initWithConfiguration:(id)a3 environment:(id)a4;
- (BOOL)validateImageDataIsNotDuplicate:(id)a3 forFileName:(id)a4 avatarDataHash:(id)a5;
- (BOOL)validateImageIsNotTransparent:(id)a3 error:(id *)a4;
- (void)nts_addHash:(id)a3 forKey:(id)a4 avatarDataHash:(id)a5;
@end

@implementation AVTImageValidator

+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)a3 withSize:(CGImage *)a4
{
  height = a5.height;
  width = a5.width;
  v9 = a5.width;
  v10 = a5.height;
  v11 = 4 * a5.width;
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v12 = malloc_type_malloc(v11 * a5.height, 0x6167AB89uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = CGBitmapContextCreate(v12, v9, v10, 8uLL, v11, DeviceRGB, 0x4001u);
  v56.size.width = width;
  v56.size.height = height;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  CGContextDrawImage(v14, v56, a4);
  CGContextRelease(v14);
  CGColorSpaceRelease(DeviceRGB);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = qword_1BB416510[v23];
    if (v26 < v10)
    {
      v27 = v12 + (v11 + 4) * v26 + 1;
      v28 = v26;
      do
      {
        v29 = v27;
        for (i = v26; i < v9; v29 += 4 * v26)
        {
          v31 = *(v29 - 1);
          v15 += v31;
          v32 = *v29;
          v16 += v32;
          v33 = v29[1];
          v17 += v33;
          v18 += v29[2];
          v19 += (v31 * v31);
          v20 += (v32 * v32);
          v21 += (v33 * v33);
          ++v22;
          i += v26;
        }

        v28 += v26;
        v27 += v11 * v26;
      }

      while (v28 < v10);
    }

    v24 = 0;
    v23 = 1;
  }

  while ((v25 & 1) != 0);
  v34 = 1.0 / v22;
  v35 = (v34 * v15);
  v36 = (v34 * v16);
  v37 = (v34 * v17);
  v38 = fmax(-((v35 * v35) - v19 * v34), 0.0);
  v39 = sqrtf(v38);
  v40 = fmax(-((v36 * v36) - v20 * v34), 0.0);
  v41 = sqrtf(v40);
  v42 = fmax(-((v37 * v37) - v21 * v34), 0.0);
  v43 = sqrtf(v42);
  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v44 = v35 * 0.00392156863;
  v45 = v36 * 0.00392156863;
  v46 = v37 * 0.00392156863;
  __AVT_RGBtoHSV(&v55, &v54, &v53, v44, v45, v46);
  result = __AVT_RGBtoHSV(&v52, &v51, &v50, v39 * 0.00392156863, v41 * 0.00392156863, v43 * 0.00392156863);
  if (a4)
  {
    free(v12);
  }

  retstr->var0 = v44;
  retstr->var1 = v45;
  retstr->var2 = v46;
  retstr->var3 = v55;
  v48 = v53;
  retstr->var4 = v54;
  retstr->var5 = v48;
  v49 = v51;
  retstr->var7 = v50;
  retstr->var8 = v49;
  retstr->var6 = (v34 * v18) * 0.00392156863;
  return result;
}

+ (BOOL)isImageValid:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    if (!a4)
    {
      LOBYTE(v6) = 0;
      goto LABEL_12;
    }

    v8 = [MEMORY[0x1E698E338] errorWithCode:606 userInfo:0];
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = [v5 CGImage];
  [v5 size];
  if (v6)
  {
    [v6 _calculateStatistics:v7 withSize:?];
    LOBYTE(v6) = 0.0 > 2.22044605e-16;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x1E698E338] errorWithCode:605 userInfo:{0, 0.0}];
LABEL_10:
    *a4 = v8;
  }

LABEL_12:

  return v6;
}

+ (id)sharedValidator
{
  if (sharedValidator_onceToken != -1)
  {
    +[AVTImageValidator sharedValidator];
  }

  v3 = sharedValidator__validator;

  return v3;
}

uint64_t __36__AVTImageValidator_sharedValidator__block_invoke()
{
  v0 = objc_alloc_init(AVTImageValidator);
  v1 = sharedValidator__validator;
  sharedValidator__validator = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (AVTImageValidator)init
{
  v3 = objc_alloc_init(AVTImageValidatorConfiguration);
  [(AVTImageValidatorConfiguration *)v3 setShouldCheckForDuplicateImages:1];
  [(AVTImageValidatorConfiguration *)v3 setShouldCheckForTransparentImages:1];
  v4 = +[AVTUIEnvironment defaultEnvironment];
  v5 = [(AVTImageValidator *)self initWithConfiguration:v3 environment:v4];

  return v5;
}

- (AVTImageValidator)initWithConfiguration:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = AVTImageValidator;
  v9 = [(AVTImageValidator *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    fileNameToImageHashesMap = v10->_fileNameToImageHashesMap;
    v10->_fileNameToImageHashesMap = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    imageHashesToFileNameMap = v10->_imageHashesToFileNameMap;
    v10->_imageHashesToFileNameMap = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    imageHashesToAvatarDataHashesMap = v10->_imageHashesToAvatarDataHashesMap;
    v10->_imageHashesToAvatarDataHashesMap = v15;

    v17 = [v8 serialQueueProvider];
    v18 = (v17)[2](v17, "com.apple.AvatarUI.AVTImageValidator");
    duplicateValidationQueue = v10->_duplicateValidationQueue;
    v10->_duplicateValidationQueue = v18;
  }

  return v10;
}

- (BOOL)validateImageIsNotTransparent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTImageValidator *)self configuration];
  v8 = [v7 shouldCheckForTransparentImages];

  if (v8)
  {
    v9 = [objc_opt_class() isImageValid:v6 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)validateImageDataIsNotDuplicate:(id)a3 forFileName:(id)a4 avatarDataHash:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AVTImageValidator *)self configuration];
  v12 = [v11 shouldCheckForDuplicateImages];

  if (v12)
  {
    if (!v8)
    {
      v16 = 0;
      goto LABEL_5;
    }

    v13 = [v8 avt_SHA256];
    v14 = [(AVTImageValidator *)self duplicateValidationQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__AVTImageValidator_validateImageDataIsNotDuplicate_forFileName_avatarDataHash___block_invoke;
    v18[3] = &unk_1E7F3C078;
    v18[4] = self;
    v19 = v13;
    v20 = v9;
    v21 = v10;
    v15 = v13;
    dispatch_sync(v14, v18);
  }

  v16 = 1;
LABEL_5:

  return v16;
}

void __80__AVTImageValidator_validateImageDataIsNotDuplicate_forFileName_avatarDataHash___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageHashesToFileNameMap];
  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v6 isEqualToString:*(a1 + 48)];
  if (!v6 || (v3 & 1) != 0 || *(a1 + 56) && ([*(a1 + 32) imageHashesToAvatarDataHashesMap], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", *(a1 + 40)), v5 = objc_claimAutoreleasedReturnValue(), v4, LODWORD(v4) = objc_msgSend(*(a1 + 56), "isEqualToString:", v5), v5, v4))
  {
    [*(a1 + 32) nts_addHash:*(a1 + 40) forKey:*(a1 + 48) avatarDataHash:*(a1 + 56)];
  }
}

- (void)nts_addHash:(id)a3 forKey:(id)a4 avatarDataHash:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(AVTImageValidator *)self fileNameToImageHashesMap];
  v11 = [v10 objectForKeyedSubscript:v16];

  if (v11)
  {
    v12 = [(AVTImageValidator *)self imageHashesToFileNameMap];
    [v12 setObject:0 forKeyedSubscript:v11];

    v13 = [(AVTImageValidator *)self imageHashesToAvatarDataHashesMap];
    [v13 setObject:0 forKeyedSubscript:v11];
  }

  v14 = [(AVTImageValidator *)self imageHashesToFileNameMap];
  [v14 setObject:v16 forKeyedSubscript:v9];

  v15 = [(AVTImageValidator *)self imageHashesToAvatarDataHashesMap];
  [v15 setObject:v8 forKeyedSubscript:v9];
}

@end