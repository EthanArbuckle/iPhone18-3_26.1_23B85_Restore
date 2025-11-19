@interface BSXPCEncodeIvarsForObject
@end

@implementation BSXPCEncodeIvarsForObject

void ___BSXPCEncodeIvarsForObject_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  cls = objc_opt_class();
  if (cls)
  {
    v41 = *MEMORY[0x1E696A4B8];
    do
    {
      if (cls == objc_opt_class())
      {
        return;
      }

      context = objc_autoreleasePoolPush();
      v2 = BSXPCAutoCodingGetIvars(*(a1 + 32), cls);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v2;
      v3 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (!v3)
      {
        goto LABEL_77;
      }

      v42 = *v44;
      do
      {
        v4 = 0;
        do
        {
          if (*v44 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v43 + 1) + 8 * v4);
          if (v5)
          {
            v6 = *(v5 + 16);
            v7 = *(v5 + 40);
          }

          else
          {
            v6 = 0;
            v7 = 0;
          }

          v8 = v7;
          v9 = [v8 firstObject];
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v6;
          }

          v12 = v11;

          if ([*(a1 + 40) containsObject:v6])
          {
            [MEMORY[0x1E695DF30] raise:v41 format:{@"Already encoded an ivar named: %@", v6}];
          }

          if (v5)
          {
            v13 = *(v5 + 24);
            v14 = *(v5 + 32);
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          v15 = *(a1 + 32);
          v16 = [v13 type];
          if (v16 == 35)
          {
            if (v5)
            {
              v20 = *(v5 + 8);
            }

            else
            {
              v20 = 0;
            }

            v21 = object_getIvar(*(a1 + 32), v20);
            if (v21)
            {
              v22 = *(a1 + 48);
              v23 = NSStringFromClass(v21);
              [v22 encodeObject:v23 forKey:v12];

              [*(a1 + 40) addObject:v12];
            }

            goto LABEL_58;
          }

          v17 = (v15 + v14);
          if (v16 == 66)
          {
            if (*v17 == 1)
            {
              [*(a1 + 48) encodeBool:1 forKey:v12];
              [*(a1 + 40) addObject:v12];
            }

            goto LABEL_58;
          }

          if (v16 == 64)
          {
            if (v5)
            {
              v18 = *(v5 + 8);
            }

            else
            {
              v18 = 0;
            }

            v19 = object_getIvar(*(a1 + 32), v18);
            if (v19)
            {
              BSXPCObjectBaseClass();
              if (objc_opt_isKindOfClass())
              {
                if (*(a1 + 56) == 1)
                {
                  [*(a1 + 48) encodeXPCObject:v19 forKey:v12];
                }

                else
                {
                  v26 = MEMORY[0x1E695DF30];
                  v27 = objc_opt_class();
                  v28 = NSStringFromClass(v27);
                  [v26 raise:v41 format:{@"%@ does not support encoding XPC objects (ivar: %@)", v28, v5}];
                }
              }

              else
              {
                [*(a1 + 48) encodeObject:v19 forKey:v12];
              }

              [*(a1 + 40) addObject:v12];
            }

            goto LABEL_57;
          }

          v24 = v16 & 0xDF;
          if (v24 <= 0x4B)
          {
            if (v24 == 67)
            {
              if (*v17)
              {
                goto LABEL_38;
              }

              goto LABEL_58;
            }

            if (v24 == 73)
            {
              *&v25 = *v17;
              if (!LODWORD(v25))
              {
                goto LABEL_58;
              }

LABEL_47:
              [*(a1 + 48) encodeUInt64:*&v25 forKey:v12];
              [*(a1 + 40) addObject:v12];
              goto LABEL_58;
            }
          }

          else
          {
            switch(v24)
            {
              case 'L':
                v25 = *v17;
                if (!*v17)
                {
                  goto LABEL_58;
                }

                goto LABEL_47;
              case 'Q':
                v25 = *v17;
                if (!*v17)
                {
                  goto LABEL_58;
                }

                goto LABEL_47;
              case 'S':
                if (!*v17)
                {
                  goto LABEL_58;
                }

LABEL_38:
                [*(a1 + 48) encodeUInt64:? forKey:?];
                [*(a1 + 40) addObject:v12];
                goto LABEL_58;
            }
          }

          if (v16 > 0x65u)
          {
            if (v16 == 123)
            {
              v30 = [v13 size];
              if (!v15 || !v30)
              {
                v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"(ptr != ((void*)0)) && (size > 0)"];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSMemoryIsZeroed(uint8_t * _Nonnull, size_t)"}];
                  *buf = 138544130;
                  v49 = v36;
                  v50 = 2114;
                  v51 = @"BSXPCCoder.m";
                  v52 = 1024;
                  v53 = 398;
                  v54 = 2114;
                  v55 = v35;
                  _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                }

                v37 = v35;
                qword_1EAD33B00 = [v35 UTF8String];
                __break(0);
                JUMPOUT(0x18FF00CE8);
              }

              if (*v17 || memcmp(v17, v17 + 1, v30 - 1))
              {
                v31 = *(a1 + 48);
                v32 = [v13 encoding];
                v33 = v32;
                [v31 encodeStruct:v17 withObjCType:objc_msgSend(v32 forKey:{"UTF8String"), v12}];

                [*(a1 + 40) addObject:v12];
              }
            }

            else
            {
              if (v16 != 102)
              {
                goto LABEL_64;
              }

              if (fabs(*v17) >= 2.22044605e-16)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            if (v16 != 42)
            {
              if (v16 == 100)
              {
                if (fabs(*v17) < 2.22044605e-16)
                {
                  goto LABEL_58;
                }

LABEL_54:
                [*(a1 + 48) encodeDouble:v12 forKey:?];
                [*(a1 + 40) addObject:v12];
                goto LABEL_58;
              }

LABEL_64:
              v29 = MEMORY[0x1E695DF30];
              v19 = [v13 encoding];
              [v29 raise:v41 format:{@"Unsupported ivar: %@ (%@)", v5, v19}];
LABEL_57:

              goto LABEL_58;
            }

            if (*v17)
            {
              v19 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:?];
              [*(a1 + 48) encodeObject:v19 forKey:v12];
              [*(a1 + 40) addObject:v12];
              goto LABEL_57;
            }
          }

LABEL_58:

          ++v4;
        }

        while (v3 != v4);
        v34 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        v3 = v34;
      }

      while (v34);
LABEL_77:

      cls = class_getSuperclass(cls);
      objc_autoreleasePoolPop(context);
    }

    while (cls);
  }
}

@end