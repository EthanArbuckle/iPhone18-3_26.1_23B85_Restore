@interface HKLineEnumerator
+ (BOOL)enumerateUTF8LinesWithError:(id *)error dataProvider:(id)provider lineHandler:(id)handler;
- (HKLineEnumerator)init;
@end

@implementation HKLineEnumerator

- (HKLineEnumerator)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)enumerateUTF8LinesWithError:(id *)error dataProvider:(id)provider lineHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__9;
  v61 = __Block_byref_object_dispose__9;
  v62 = 0;
  do
  {
    if (v64[3] != 1)
    {
      v11 = v8;
      goto LABEL_36;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = v58;
    v56 = v58[5];
    v11 = providerCopy[2](providerCopy, &v56);
    objc_storeStrong(v10 + 5, v56);

    if (v11 && [v11 length])
    {
      if ([v7 length])
      {
        [v7 appendData:v11];
      }

      if ([v7 length])
      {
        bytes = [v7 bytes];
      }

      else
      {
        bytes = [v11 bytes];
      }

      v14 = bytes;
      if ([v7 length])
      {
        v15 = [v7 length];
      }

      else
      {
        v15 = [v11 length];
      }

      v16 = v15;
      v17 = -1;
      v18 = v15;
      do
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v14 length:v18 encoding:4];
        v20 = v19;
        v21 = ++v17;
        --v18;
        if (v19)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21 >= 3;
        }
      }

      while (!v22);
      if (v19)
      {
        if (v17)
        {
          [v7 replaceBytesInRange:0 withBytes:objc_msgSend(v7 length:{"length"), v14 + v16 - v17, v17}];
        }

        else
        {
          [v7 setLength:0];
        }

        [v39 appendString:v20];
        v50 = 0;
        v51 = &v50;
        v52 = 0x3010000000;
        v53 = &unk_191E0EA3D;
        v54 = 0;
        v55 = 0;
        v25 = [v39 length];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __73__HKLineEnumerator_enumerateUTF8LinesWithError_dataProvider_lineHandler___block_invoke;
        v44[3] = &unk_1E737A9A0;
        v26 = v39;
        v45 = v26;
        v47 = &v63;
        v46 = handlerCopy;
        v48 = &v57;
        v49 = &v50;
        [v26 enumerateSubstringsInRange:0 options:v25 usingBlock:{0, v44}];
        v27 = v64[3];
        v13 = v27 == 1;
        if (v27 == 1 && v51[5])
        {
          [v26 deleteCharactersInRange:v51[4]];
        }

        _Block_object_dispose(&v50, 8);
      }

      else
      {
        v23 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Unable to create valid utf-8 string from data"];
        v24 = v58[5];
        v58[5] = v23;

        v13 = 0;
        v64[3] = 0;
      }
    }

    else
    {
      v13 = 0;
      v64[3] = v11 != 0;
    }

    objc_autoreleasePoolPop(v9);
    v8 = v11;
  }

  while (v13);
  if (v64[3] == 1)
  {
    v28 = [v39 length];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __73__HKLineEnumerator_enumerateUTF8LinesWithError_dataProvider_lineHandler___block_invoke_2;
    v40[3] = &unk_1E737A9C8;
    v42 = &v63;
    v41 = handlerCopy;
    v43 = &v57;
    [v39 enumerateSubstringsInRange:0 options:v28 usingBlock:{0, v40}];
    v29 = v58[5];
    v30 = v29;
    if (v29)
    {
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      else
      {
        _HKLogDroppedError(v29);
      }
    }

    v35 = v64[3];
    goto LABEL_43;
  }

LABEL_36:
  v32 = v58[5];
  v33 = v32;
  if (v32)
  {
    if (error)
    {
      v34 = v32;
      *error = v33;
    }

    else
    {
      _HKLogDroppedError(v32);
    }
  }

  v35 = v64[3];
LABEL_43:

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v35 != 0;
}

void __73__HKLineEnumerator_enumerateUTF8LinesWithError_dataProvider_lineHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSUInteger a5, NSUInteger a6, BOOL *a7)
{
  v11 = a2;
  if (a5 + a6 >= [*(a1 + 32) length])
  {
    *a7 = 1;
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    v14 = (*(v12 + 16))();
    objc_storeStrong((v13 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v14;
    *a7 = *(*(*(a1 + 48) + 8) + 24) != 1;
    v16.location = a5;
    v16.length = a6;
    *(*(*(a1 + 64) + 8) + 32) = NSUnionRange(*(*(*(a1 + 64) + 8) + 32), v16);
  }
}

void __73__HKLineEnumerator_enumerateUTF8LinesWithError_dataProvider_lineHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7)
{
  v9 = a1[4];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = (*(v9 + 16))();
  objc_storeStrong((v10 + 40), obj);
  *(*(a1[5] + 8) + 24) = v11;
  *a7 = *(*(a1[5] + 8) + 24) != 1;
}

@end