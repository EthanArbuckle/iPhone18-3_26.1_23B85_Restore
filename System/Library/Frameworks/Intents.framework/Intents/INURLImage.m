@interface INURLImage
@end

@implementation INURLImage

void __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a3;
    v6 = [INImage imageWithImageData:a2];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_2;
    v13[3] = &unk_1E72835F8;
    v14 = *(a1 + 32);
    [v6 _retrieveImageDataWithReply:v13];

    v7 = v14;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = a3;
    v10 = MEMORY[0x1E695DF20];
    v11 = a3;
    v5 = [v10 dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v9 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v5];
    (*(v8 + 16))(v8, 0, 0, v7, 0.0, 0.0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_120(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

void __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v11 = [v6 _imageData];
  [v6 _imageSize];
  v8 = v7;
  v10 = v9;

  (*(v4 + 16))(v4, v11, 0, v5, v8, v10);
}

void __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_126(uint64_t a1, void *a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (!v10)
  {
    v13 = 0;
    if (v7)
    {
      goto LABEL_19;
    }

LABEL_15:
    v20 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      *buf = 136315906;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]_block_invoke";
      v52 = 2112;
      v53 = v21;
      v54 = 2112;
      v55 = v10;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_18E991000, v20, OS_LOG_TYPE_INFO, "%s Image %@ failed to load with response %@, error %@", buf, 0x2Au);
    }

    v22 = *(a1 + 56);
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:0];
    (*(v22 + 16))(v22, 0, 0, v23, 0.0, 0.0);
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v7)
  {
    v13 = v12;
    goto LABEL_15;
  }

  if (v12)
  {
    if ([v12 statusCode] < 200 || (v13 = v10, objc_msgSend(v12, "statusCode") >= 300))
    {
      v14 = v7;
      v15 = v12;
      v16 = [MEMORY[0x1E696AEC0] if_stringWithData:v14];
      v17 = 0x1E695D000;
      if (!v16)
      {
        v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:0];
        v19 = [v18 objectForKeyedSubscript:@"error"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v18;
          v16 = [MEMORY[0x1E696AEC0] if_stringWithData:v19];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v17 = 0x1E695D000;
LABEL_40:
            v38 = MEMORY[0x1E696AC68];
            v39 = [v15 statusCode];
            if (v39)
            {
              v40 = v39;
            }

            else
            {
              v40 = 400;
            }

            v16 = [v38 localizedStringForStatusCode:v40];
            goto LABEL_44;
          }

          v47 = v18;
          v46 = v19;
          v16 = [v46 objectForKeyedSubscript:@"message"];
          if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

            v35 = [v46 objectForKeyedSubscript:@"description"];
            if (v35)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
            }

            v37 = v35;
            v16 = v36;
          }
        }

        v17 = 0x1E695D000uLL;
        if (!v16)
        {
          goto LABEL_40;
        }
      }

LABEL_44:

      v41 = *(a1 + 56);
      v42 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v49 = v16;
      v43 = [*(v17 + 3872) dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v44 = [v42 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v43];
      (*(v41 + 16))(v41, 0, 0, v44, 0.0, 0.0);

      v13 = v10;
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  [*(a1 + 32) _imageSize];
  if (v25 <= 0.0 || (v26 = v24, v24 <= 0.0))
  {
    v23 = [INImage imageWithImageData:v7];
    v34 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]_block_invoke";
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&dword_18E991000, v34, OS_LOG_TYPE_INFO, "%s Loading image size for image %@", buf, 0x16u);
    }

    [v23 _loadImageDataAndSizeWithHelper:*(a1 + 40) accessSpecifier:*(a1 + 48) completion:*(a1 + 56)];
LABEL_27:

    goto LABEL_45;
  }

  v27 = v25;
  v28 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 32);
    v30 = MEMORY[0x1E696AD98];
    v31 = v28;
    v32 = [v30 numberWithDouble:v26];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
    *buf = 136315906;
    v51 = "[_INURLImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]_block_invoke";
    v52 = 2112;
    v53 = v29;
    v54 = 2112;
    v55 = v32;
    v56 = 2112;
    v57 = v33;
    _os_log_impl(&dword_18E991000, v31, OS_LOG_TYPE_INFO, "%s Image %@ came with size {%@, %@}, preserving that", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))(v26, v27);
LABEL_45:

  v45 = *MEMORY[0x1E69E9840];
}

void __97___INURLImage_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v11 = [v6 _imageData];
  [v6 _imageSize];
  v8 = v7;
  v10 = v9;

  (*(v4 + 16))(v4, v11, 0, v5, v8, v10);
}

@end