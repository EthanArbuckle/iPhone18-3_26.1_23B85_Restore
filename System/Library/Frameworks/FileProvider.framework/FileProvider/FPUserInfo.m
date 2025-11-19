@interface FPUserInfo
+ (id)mergeWithUserInfo:(id)a3 intoParentUserInfo:(id)a4;
+ (id)unzipKeysWithZippedArray:(id)a3;
+ (id)unzipValuesWithZippedArray:(id)a3;
+ (id)zipWithArray1:(id)a3 array2:(id)a4;
- (FPUserInfo)initWithKeys:(id)a3 values:(id)a4;
- (FPUserInfo)initWithUserInfo:(id)a3;
- (NSDictionary)userInfo;
@end

@implementation FPUserInfo

- (NSDictionary)userInfo
{
  v3 = [(FPUserInfo *)self keys];
  v4 = [(FPUserInfo *)self values];
  v5 = FPDecodeUserInfo(v3, v4);

  return v5;
}

- (FPUserInfo)initWithUserInfo:(id)a3
{
  v16 = 0;
  v17 = 0;
  v5 = FPEncodeUserInfo(a3, &v17, &v16);
  v6 = v17;
  v7 = v16;
  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"FPUserInfo.m" lineNumber:37 description:@"cannot pack user info"];
  }

  v9 = [FPUserInfo zipWithArray1:v6 array2:v7];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_51];
  v11 = [FPUserInfo unzipKeysWithZippedArray:v10];
  keys = self->_keys;
  self->_keys = v11;

  v13 = [FPUserInfo unzipValuesWithZippedArray:v10];
  values = self->_values;
  self->_values = v13;

  return self;
}

uint64_t __31__FPUserInfo_initWithUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 a];
  v6 = [v4 a];

  v7 = [v5 compare:v6];
  return v7;
}

- (FPUserInfo)initWithKeys:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSArray *)v6 count];
  if (v8 != [(NSArray *)v7 count])
  {
    v9 = [(NSArray *)v6 count];
    if (v9 != [(NSArray *)v7 count])
    {
      [FPUserInfo initWithKeys:values:];
    }
  }

  keys = self->_keys;
  self->_keys = v6;
  v11 = v6;

  values = self->_values;
  self->_values = v7;

  return self;
}

+ (id)zipWithArray1:(id)a3 array2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    v8 = [v5 count];
    if (v8 != [v6 count])
    {
      +[FPUserInfo zipWithArray1:array2:];
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v10 = 0;
    do
    {
      v11 = [FPUserInfoPair alloc];
      v12 = [v5 objectAtIndex:v10];
      v13 = [v6 objectAtIndex:v10];
      v14 = [(FPUserInfoPair *)v11 initWithA:v12 b:v13];

      [v9 addObject:v14];
      ++v10;
    }

    while (v10 < [v5 count]);
  }

  return v9;
}

+ (id)unzipKeysWithZippedArray:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 a];

        if (!v11)
        {
          v12 = [v10 a];

          if (!v12)
          {
            +[FPUserInfo unzipKeysWithZippedArray:];
          }
        }

        v13 = [v10 a];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)unzipValuesWithZippedArray:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 b];

        if (!v11)
        {
          v12 = [v10 b];

          if (!v12)
          {
            +[FPUserInfo unzipValuesWithZippedArray:];
          }
        }

        v13 = [v10 b];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)mergeWithUserInfo:(id)a3 intoParentUserInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    if (v5)
    {
LABEL_3:
      v64 = v7;
      v9 = [v5 keys];
      v10 = [v5 values];
      v11 = [FPUserInfo zipWithArray1:v9 array2:v10];

      v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_40];
      v62 = v11;
      v13 = [v11 filteredArrayUsingPredicate:v12];

      v61 = v13;
      v14 = [v13 objectEnumerator];
      v15 = [(FPUserInfo *)v8 keys];
      v63 = v8;
      v16 = [(FPUserInfo *)v8 values];
      v17 = [FPUserInfo zipWithArray1:v15 array2:v16];

      v60 = v17;
      v18 = [v17 objectEnumerator];
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = [v14 nextObject];
      v22 = [v18 nextObject];
      v23 = v21 == 0;
      v24 = v22 == 0;
      if (!(v21 | v22))
      {
LABEL_4:
        v25 = [[FPUserInfo alloc] initWithKeys:v19 values:v20];

        v8 = v63;
        v7 = v64;
        goto LABEL_7;
      }

      v29 = v22;
      while (1)
      {
        if (v21 && v24)
        {
          v30 = [v21 a];

          if (!v30)
          {
            v31 = [v21 a];

            if (!v31)
            {
              +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
            }
          }

          v32 = [v21 b];

          if (!v32)
          {
            v33 = [v21 b];

            if (!v33)
            {
              +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
            }
          }

          v34 = [v21 a];
          [v19 addObject:v34];

          v35 = [v21 b];
          [v20 addObject:v35];

          v36 = [v14 nextObject];
          v37 = 0;
        }

        else
        {
          if (v23 && v29 != 0)
          {
            v38 = [v29 a];

            if (!v38)
            {
              v39 = [v29 a];

              if (!v39)
              {
                +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
              }
            }

            v40 = [v29 b];

            if (!v40)
            {
              v41 = [v29 b];

              if (!v41)
              {
                +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
              }
            }

            v42 = [v29 a];
            [v19 addObject:v42];

            v43 = [v29 b];
            [v20 addObject:v43];

            v37 = [v18 nextObject];
            v21 = 0;
            goto LABEL_46;
          }

          v44 = [v21 a];
          v45 = [v29 a];
          v46 = [v44 compare:v45];

          if ((v46 + 1) > 1)
          {
            v54 = [v29 a];

            if (!v54)
            {
              v55 = [v29 a];

              if (!v55)
              {
                +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
              }
            }

            v56 = [v29 b];

            if (!v56)
            {
              v57 = [v29 b];

              if (!v57)
              {
                +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
              }
            }

            v58 = [v29 a];
            [v19 addObject:v58];

            v59 = [v29 b];
            [v20 addObject:v59];

            v37 = [v18 nextObject];
            goto LABEL_46;
          }

          v47 = [v21 a];

          if (!v47)
          {
            v48 = [v21 a];

            if (!v48)
            {
              +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
            }
          }

          v49 = [v21 b];

          if (!v49)
          {
            v50 = [v21 b];

            if (!v50)
            {
              +[FPUserInfo mergeWithUserInfo:intoParentUserInfo:];
            }
          }

          v51 = [v21 a];
          [v19 addObject:v51];

          v52 = [v21 b];
          [v20 addObject:v52];

          if (!v46)
          {
            v53 = [v18 nextObject];

            v29 = v53;
          }

          v37 = v29;
          v36 = [v14 nextObject];
        }

        v29 = v21;
        v21 = v36;
LABEL_46:

        v23 = v21 == 0;
        v24 = v37 == 0;
        v29 = v37;
        if (!(v21 | v37))
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v26 = [FPUserInfo alloc];
    v27 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v8 = [(FPUserInfo *)v26 initWithUserInfo:v27];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v25 = v8;
LABEL_7:

  return v25;
}

uint64_t __51__FPUserInfo_mergeWithUserInfo_intoParentUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 a];
  v3 = FPDecodeUserInfoItem(v2);

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 hasSuffix:@".inherited"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithKeys:values:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)zipWithArray1:array2:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)unzipKeysWithZippedArray:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)unzipValuesWithZippedArray:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.5()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.6()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.7()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mergeWithUserInfo:intoParentUserInfo:.cold.8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end