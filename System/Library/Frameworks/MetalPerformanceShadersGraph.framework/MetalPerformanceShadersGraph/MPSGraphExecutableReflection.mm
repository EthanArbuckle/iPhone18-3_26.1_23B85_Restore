@interface MPSGraphExecutableReflection
- (MPSGraphExecutableReflection)initWithMPSGraphPackage:(id)a3 error:(id *)a4;
- (id)functionNames;
- (id)inputNamesForFunction:(id)a3;
- (id)inputRanksForFunction:(id)a3;
- (id)inputShapesForFunction:(id)a3;
- (id)outputNamesForFunction:(id)a3;
- (id)outputRanksForFunction:(id)a3;
- (id)outputShapesForFunction:(id)a3;
@end

@implementation MPSGraphExecutableReflection

- (MPSGraphExecutableReflection)initWithMPSGraphPackage:(id)a3 error:(id *)a4
{
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v50.receiver = self;
  v50.super_class = MPSGraphExecutableReflection;
  v8 = [(MPSGraphExecutableReflection *)&v50 init];
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v8->_fileManager;
  v8->_fileManager = v9;

  objc_storeStrong(&v8->_mpsGraphPackageURL, a3);
  v49 = 0;
  v11 = v8->_fileManager;
  v12 = [(NSURL *)v8->_mpsGraphPackageURL path];
  LODWORD(v11) = [(NSFileManager *)v11 fileExistsAtPath:v12 isDirectory:&v49];

  if (!v11)
  {
LABEL_33:
    a4 = v8;
    goto LABEL_35;
  }

  if (v49)
  {
    v13 = v8->_mpsGraphPackageURL;
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [(NSURL *)v13 URLByAppendingPathComponent:@"/reflection.fb"];
    v16 = [v15 path];
    v17 = [v14 isReadableFileAtPath:v16];

    if (v17)
    {
      v18 = [(NSURL *)v8->_mpsGraphPackageURL URLByAppendingPathComponent:@"/reflection.fb"];
      v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v18 options:2 error:a4];
      reflectionFb = v8->_reflectionFb;
      v8->_reflectionFb = v19;

      v21 = v8->_reflectionFb;
      if (!v21)
      {
        if (a4)
        {
          v37 = MEMORY[0x1E696ABC0];
          v53 = *MEMORY[0x1E696A578];
          v38 = MEMORY[0x1E696AEC0];
          v39 = [v18 absoluteString];
          v40 = [v38 stringWithFormat:@"%@%@", @"Error: no file at url ", v39];
          v54 = v40;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          *a4 = [v37 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v41];
        }

        goto LABEL_34;
      }

      v22 = [(NSData *)v21 bytes];
      v23 = (v22 + *v22);
      v24 = (v23 - *v23);
      v25 = *v24;
      if (v25 >= 5 && v24[2] && *(v23 + v24[2]) == 1)
      {
        if (v25 >= 7 && (v26 = v24[3]) != 0)
        {
          v27 = (v23 + v26);
          v28 = *v27;
          v29 = *(v27 + v28);
          if (v29 >= 0x17)
          {
            operator new();
          }

          v48 = *(v27 + v28);
          if (v29)
          {
            memcpy(__dst, v27 + v28 + 4, v29);
          }

          v42 = (__dst + v29);
        }

        else
        {
          v48 = 0;
          v42 = __dst;
        }

        *v42 = 0;
        if (v48 < 0)
        {
          v43 = __dst[1] == 8 && *__dst[0] == 0x687061726773706DLL;
          operator delete(__dst[0]);
          if (!a4)
          {
LABEL_32:

            if (v43)
            {
              goto LABEL_33;
            }

LABEL_34:
            a4 = 0;
            goto LABEL_35;
          }

LABEL_30:
          if (!v43)
          {
            v44 = MEMORY[0x1E696ABC0];
            v51 = *MEMORY[0x1E696A578];
            v52 = @"Error: reflection information is corrupted.";
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            *a4 = [v44 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v45];
          }

          goto LABEL_32;
        }

        if (v48 == 8)
        {
          v43 = __dst[0] == 0x687061726773706DLL;
          if (!a4)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }
      }

      v43 = 0;
      if (!a4)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (a4)
    {
      v35 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v56 = @"Error: reflection information not found in the graph package.";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a4 = [v35 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v36];

      goto LABEL_34;
    }
  }

  else if (a4)
  {
    v30 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v31 = MEMORY[0x1E696AEC0];
    v32 = [(NSURL *)v8->_mpsGraphPackageURL absoluteString];
    v33 = [v31 stringWithFormat:@"%@%@%@", @"Error: file ", v32, @" is unexpectedly not a directory"];
    v58[0] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    *a4 = [v30 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v34];

    goto LABEL_34;
  }

LABEL_35:

  return a4;
}

- (id)functionNames
{
  v2 = [(NSData *)self->_reflectionFb bytes];
  v3 = (v2 + *v2);
  v4 = (v3 - *v3);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = (v3 + v5 + *(v3 + v5));
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v6];
  v8 = *v6;
  if (v8)
  {
    v9 = 4 * v8;
    v10 = v6 + 1;
    do
    {
      v11 = *v10;
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = v11 + *(v10 + v11 - *(v10 + v11) + 4);
      v14 = [v12 initWithUTF8String:v10 + v13 + *(v10 + v13) + 4];
      [v7 addObject:v14];

      ++v10;
      v9 -= 4;
    }

    while (v9);
  }

  return v7;
}

- (id)inputNamesForFunction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = 0;
    goto LABEL_50;
  }

  v5 = [(NSData *)self->_reflectionFb bytes];
  v6 = (v5 + *v5);
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v9];
  v11 = v10;
  v12 = *v9;
  if (v12)
  {
    v45 = v10;
    v13 = 0;
    v14 = 4 * v12;
    while (1)
    {
      v15 = v9[v13 / 4 + 1];
      v16 = [v4 UTF8String];
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v49 = v17;
      if (v17)
      {
        memmove(__dst, v16, v17);
      }

      *(__dst + v18) = 0;
      v19 = &v9[v13 / 4] + v15 - *(&v9[v13 / 4 + 1] + v15);
      if (*(v19 + 2) >= 5u && (v20 = *(v19 + 4)) != 0)
      {
        v21 = v9 + v15 + v20 + v13 + *(&v9[v13 / 4 + 1] + v15 + v20);
        v22 = *(v21 + 1);
        if (v22 >= 0x17)
        {
          operator new();
        }

        v47 = *(v21 + 1);
        if (v22)
        {
          memcpy(__p, v21 + 8, v22);
        }

        v23 = (__p + v22);
      }

      else
      {
        v47 = 0;
        v23 = __p;
      }

      *v23 = 0;
      v24 = v49;
      if ((v49 & 0x80u) == 0)
      {
        v25 = v49;
      }

      else
      {
        v25 = __dst[1];
      }

      v26 = v47;
      v27 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v26 = __p[1];
      }

      if (v25 == v26)
      {
        if ((v49 & 0x80u) == 0)
        {
          v28 = __dst;
        }

        else
        {
          v28 = __dst[0];
        }

        if ((v47 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        v30 = memcmp(v28, v29, v25) != 0;
        if ((v27 & 0x80000000) == 0)
        {
LABEL_38:
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v30 = 1;
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_39:
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(__dst[0]);
      if (!v30)
      {
LABEL_46:
        v31 = v9 + v15 + v13;
        v32 = &v9[v13 / 4];
        v33 = *(&v9[v13 / 4 + 2] + v15 - *(v31 + 1) + 2);
        v34 = *&v31[v33 + 4];
        v35 = *(v9 + v33 + v15 + v13 + v34 + 4);
        if (v35)
        {
          v36 = 0;
          v37 = 4 * v35;
          v38 = v33 + v34 + v15;
          v39 = v9 + v38;
          do
          {
            v40 = *&v39[v36 + 8 + v13];
            v41 = objc_alloc(MEMORY[0x1E696AEC0]);
            v42 = v38 + v40 + *(v32 + v38 + v40 - *(&v9[v13 / 4 + 2] + v38 + v40) + 12);
            v43 = [v41 initWithUTF8String:v32 + v42 + *(&v9[v13 / 4 + 2] + v42) + 12];
            [v45 addObject:v43];

            v36 += 4;
            v38 += 4;
          }

          while (v37 != v36);
        }

LABEL_49:
        v11 = v45;
        break;
      }

LABEL_43:
      v13 += 4;
      if (v14 == v13)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:

  return v11;
}

- (id)outputNamesForFunction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = 0;
    goto LABEL_50;
  }

  v5 = [(NSData *)self->_reflectionFb bytes];
  v6 = (v5 + *v5);
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v9];
  v11 = v10;
  v12 = *v9;
  if (v12)
  {
    v45 = v10;
    v13 = 0;
    v14 = 4 * v12;
    while (1)
    {
      v15 = v9[v13 / 4 + 1];
      v16 = [v4 UTF8String];
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v49 = v17;
      if (v17)
      {
        memmove(__dst, v16, v17);
      }

      *(__dst + v18) = 0;
      v19 = &v9[v13 / 4] + v15 - *(&v9[v13 / 4 + 1] + v15);
      if (*(v19 + 2) >= 5u && (v20 = *(v19 + 4)) != 0)
      {
        v21 = v9 + v15 + v20 + v13 + *(&v9[v13 / 4 + 1] + v15 + v20);
        v22 = *(v21 + 1);
        if (v22 >= 0x17)
        {
          operator new();
        }

        v47 = *(v21 + 1);
        if (v22)
        {
          memcpy(__p, v21 + 8, v22);
        }

        v23 = (__p + v22);
      }

      else
      {
        v47 = 0;
        v23 = __p;
      }

      *v23 = 0;
      v24 = v49;
      if ((v49 & 0x80u) == 0)
      {
        v25 = v49;
      }

      else
      {
        v25 = __dst[1];
      }

      v26 = v47;
      v27 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v26 = __p[1];
      }

      if (v25 == v26)
      {
        if ((v49 & 0x80u) == 0)
        {
          v28 = __dst;
        }

        else
        {
          v28 = __dst[0];
        }

        if ((v47 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        v30 = memcmp(v28, v29, v25) != 0;
        if ((v27 & 0x80000000) == 0)
        {
LABEL_38:
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v30 = 1;
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_39:
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(__dst[0]);
      if (!v30)
      {
LABEL_46:
        v31 = v9 + v15 + v13;
        v32 = &v9[v13 / 4];
        v33 = *(&v9[v13 / 4 + 3] + v15 - *(v31 + 1));
        v34 = *&v31[v33 + 4];
        v35 = *(v9 + v33 + v15 + v13 + v34 + 4);
        if (v35)
        {
          v36 = 0;
          v37 = 4 * v35;
          v38 = v33 + v34 + v15;
          v39 = v9 + v38;
          do
          {
            v40 = *&v39[v36 + 8 + v13];
            v41 = objc_alloc(MEMORY[0x1E696AEC0]);
            v42 = v38 + v40 + *(v32 + v38 + v40 - *(&v9[v13 / 4 + 2] + v38 + v40) + 12);
            v43 = [v41 initWithUTF8String:v32 + v42 + *(&v9[v13 / 4 + 2] + v42) + 12];
            [v45 addObject:v43];

            v36 += 4;
            v38 += 4;
          }

          while (v37 != v36);
        }

LABEL_49:
        v11 = v45;
        break;
      }

LABEL_43:
      v13 += 4;
      if (v14 == v13)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:

  return v11;
}

- (id)inputShapesForFunction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = 0;
    goto LABEL_64;
  }

  v5 = [(NSData *)self->_reflectionFb bytes];
  v6 = (v5 + *v5);
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v9];
  v11 = v10;
  v12 = *v9;
  if (v12)
  {
    v53 = v10;
    v13 = 0;
    v14 = 4 * v12;
    while (1)
    {
      v15 = v9[v13 / 4 + 1];
      v16 = [v4 UTF8String];
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v57 = v17;
      if (v17)
      {
        memmove(__dst, v16, v17);
      }

      *(__dst + v18) = 0;
      v19 = &v9[v13 / 4] + v15 - *(&v9[v13 / 4 + 1] + v15);
      if (*(v19 + 2) >= 5u && (v20 = *(v19 + 4)) != 0)
      {
        v21 = v9 + v15 + v20 + v13 + *(&v9[v13 / 4 + 1] + v15 + v20);
        v22 = *(v21 + 1);
        if (v22 >= 0x17)
        {
          operator new();
        }

        v55 = *(v21 + 1);
        if (v22)
        {
          memcpy(__p, v21 + 8, v22);
        }

        v23 = (__p + v22);
      }

      else
      {
        v55 = 0;
        v23 = __p;
      }

      *v23 = 0;
      v24 = v57;
      if ((v57 & 0x80u) == 0)
      {
        v25 = v57;
      }

      else
      {
        v25 = __dst[1];
      }

      v26 = v55;
      v27 = v55;
      if ((v55 & 0x80u) != 0)
      {
        v26 = __p[1];
      }

      if (v25 == v26)
      {
        if ((v57 & 0x80u) == 0)
        {
          v28 = __dst;
        }

        else
        {
          v28 = __dst[0];
        }

        if ((v55 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        v30 = memcmp(v28, v29, v25) != 0;
        if ((v27 & 0x80000000) == 0)
        {
LABEL_38:
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v30 = 1;
        if ((v55 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_39:
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(__dst[0]);
      if (!v30)
      {
LABEL_46:
        v31 = v9 + v15 + v13;
        v32 = *(&v9[v13 / 4 + 2] + v15 - *(v31 + 1) + 2);
        v33 = v32 + v15 + *&v31[v32 + 4];
        v34 = &v9[v13 / 4] + v33;
        v37 = *(v34 + 1);
        v36 = v34 + 4;
        v35 = v37;
        v11 = v53;
        if (v37)
        {
          v38 = &v9[v13 / 4 + 1 + v35] + v33;
          while (1)
          {
            v39 = *(v36 + 1);
            v36 += 4;
            v40 = &v36[v39];
            v41 = &v40[-*v40];
            v42 = *v41;
            if (v42 < 0xB)
            {
              if (v42 < 7)
              {
                goto LABEL_56;
              }
            }

            else if (*(v41 + 5) && (*&v40[*(v41 + 5)] & 0x80000000) != 0)
            {
              v43 = 0;
              v44 = &v40[-*v40];
              if (*v44 < 0xDu)
              {
                goto LABEL_62;
              }

              goto LABEL_60;
            }

            v45 = *(v41 + 3);
            if (v45)
            {
              v46 = &v40[v45 + *&v40[v45]];
              goto LABEL_57;
            }

LABEL_56:
            v46 = 0;
LABEL_57:
            v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v46];
            v47 = (v46 + 1);
            if (*v46)
            {
              do
              {
                v48 = [MEMORY[0x1E696AD98] numberWithLongLong:*v47];
                [v43 addObject:v48];

                ++v47;
              }

              while (v47 != &v46[*v46 + 1]);
            }

            v11 = v53;
            v44 = &v40[-*v40];
            if (*v44 < 0xDu)
            {
LABEL_62:
              v50 = 0;
              goto LABEL_63;
            }

LABEL_60:
            v49 = *(v44 + 6);
            if (!v49)
            {
              goto LABEL_62;
            }

            v50 = *&v40[v49];
LABEL_63:
            v51 = [[MPSGraphShapedType alloc] initWithShape:v43 dataType:v50];
            [v11 addObject:v51];

            if (v38 == v36)
            {
              goto LABEL_64;
            }
          }
        }

        break;
      }

LABEL_43:
      v13 += 4;
      if (v14 == v13)
      {
        v11 = v53;
        break;
      }
    }
  }

LABEL_64:

  return v11;
}

- (id)inputRanksForFunction:(id)a3
{
  v4 = a3;
  if (!v4 || (v5 = [(NSData *)self->_reflectionFb bytes], v6 = *v5, v7 = *(v5 + v6 - *(v5 + v6) + 8), v8 = (v5 + v6 + v7), v9 = *v8, v10 = *(v8 + v9), !v10))
  {
LABEL_40:
    v30 = 0;
    goto LABEL_41;
  }

  v11 = 0;
  v12 = 4 * v10;
  v45 = *v5;
  v46 = v5;
  v43 = v9;
  v44 = *(v5 + v6 - *(v5 + v6) + 8);
  v13 = v5 + v7 + v6 + v9;
  while (1)
  {
    v14 = *&v13[v11 + 4];
    v15 = [v4 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v50 = v16;
    if (v16)
    {
      memmove(__dst, v15, v16);
    }

    *(__dst + v17) = 0;
    v18 = &v13[v11 + v14 - *&v13[v11 + 4 + v14]];
    if (*(v18 + 2) >= 5u && (v19 = *(v18 + 4)) != 0)
    {
      v20 = &v13[v14 + v19 + v11 + *&v13[v11 + 4 + v14 + v19]];
      v21 = *(v20 + 1);
      if (v21 >= 0x17)
      {
        operator new();
      }

      v48 = *(v20 + 1);
      if (v21)
      {
        memcpy(__p, v20 + 8, v21);
      }

      v22 = (__p + v21);
    }

    else
    {
      v48 = 0;
      v22 = __p;
    }

    *v22 = 0;
    v23 = v50;
    if ((v50 & 0x80u) == 0)
    {
      v24 = v50;
    }

    else
    {
      v24 = __dst[1];
    }

    v25 = v48;
    v26 = v48;
    if ((v48 & 0x80u) != 0)
    {
      v25 = __p[1];
    }

    if (v24 == v25)
    {
      break;
    }

    v29 = 1;
    if (v48 < 0)
    {
      goto LABEL_37;
    }

LABEL_34:
    if (v23 < 0)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (!v29)
    {
      goto LABEL_44;
    }

LABEL_39:
    v11 += 4;
    if (v12 == v11)
    {
      goto LABEL_40;
    }
  }

  if ((v50 & 0x80u) == 0)
  {
    v27 = __dst;
  }

  else
  {
    v27 = __dst[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  v29 = memcmp(v27, v28, v24) != 0;
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  operator delete(__p[0]);
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_38:
  operator delete(__dst[0]);
  if (v29)
  {
    goto LABEL_39;
  }

LABEL_44:
  v32 = v46 + v45 + v43 + v44 + v11;
  v33 = *&v32[v14 + 4];
  if (*&v32[v14 - v33 + 4] >= 7u && (v34 = *&v32[v14 - v33 + 10]) != 0)
  {
    v35 = (v46 + v45 + v43 + v44 + v11 + v34 + v14 + *(v46 + v45 + v43 + v44 + v11 + v34 + v14 + 4) + 4);
  }

  else
  {
    v35 = 0;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{*v35, v43, v44, v45, v46}];
  v36 = *v35;
  if (v36)
  {
    v37 = 4 * v36;
    do
    {
      v38 = v35[1];
      v39 = v35 + v38 - *(v35 + v38 + 4);
      if (*(v39 + 2) >= 0xBu && (v40 = *(v39 + 7)) != 0)
      {
        v41 = *(v35 + v38 + v40 + 4);
      }

      else
      {
        v41 = 0;
      }

      v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v41];
      [v30 addObject:v42];

      ++v35;
      v37 -= 4;
    }

    while (v37);
  }

LABEL_41:

  return v30;
}

- (id)outputShapesForFunction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = 0;
    goto LABEL_64;
  }

  v5 = [(NSData *)self->_reflectionFb bytes];
  v6 = (v5 + *v5);
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*v9];
  v11 = v10;
  v12 = *v9;
  if (v12)
  {
    v55 = v10;
    v13 = 0;
    v14 = 4 * v12;
    while (1)
    {
      v15 = v9[v13 / 4 + 1];
      v16 = [v4 UTF8String];
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v59 = v17;
      if (v17)
      {
        memmove(__dst, v16, v17);
      }

      *(__dst + v18) = 0;
      v19 = &v9[v13 / 4] + v15 - *(&v9[v13 / 4 + 1] + v15);
      if (*(v19 + 2) >= 5u && (v20 = *(v19 + 4)) != 0)
      {
        v21 = v9 + v15 + v20 + v13 + *(&v9[v13 / 4 + 1] + v15 + v20);
        v22 = *(v21 + 1);
        if (v22 >= 0x17)
        {
          operator new();
        }

        v57 = *(v21 + 1);
        if (v22)
        {
          memcpy(__p, v21 + 8, v22);
        }

        v23 = (__p + v22);
      }

      else
      {
        v57 = 0;
        v23 = __p;
      }

      *v23 = 0;
      v24 = v59;
      if ((v59 & 0x80u) == 0)
      {
        v25 = v59;
      }

      else
      {
        v25 = __dst[1];
      }

      v26 = v57;
      v27 = v57;
      if ((v57 & 0x80u) != 0)
      {
        v26 = __p[1];
      }

      if (v25 == v26)
      {
        if ((v59 & 0x80u) == 0)
        {
          v28 = __dst;
        }

        else
        {
          v28 = __dst[0];
        }

        if ((v57 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        v30 = memcmp(v28, v29, v25) != 0;
        if ((v27 & 0x80000000) == 0)
        {
LABEL_38:
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v30 = 1;
        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_39:
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(__dst[0]);
      if (!v30)
      {
LABEL_46:
        v31 = v9 + v15 + v13;
        v32 = *(&v9[v13 / 4 + 3] + v15 - *(v31 + 1));
        v33 = v32 + v15 + *&v31[v32 + 4];
        v34 = &v9[v13 / 4] + v33;
        v37 = *(v34 + 1);
        v36 = v34 + 4;
        v35 = v37;
        if (v37)
        {
          v38 = &v9[v13 / 4 + 1 + v35] + v33;
          v11 = v55;
          while (1)
          {
            v39 = *(v36 + 1);
            v36 += 4;
            v40 = &v36[v39];
            v41 = &v40[-*v40];
            if (*v41 >= 0xBu && *(v41 + 5))
            {
              v42 = *&v40[*(v41 + 5)];
              v43 = &v40[*(v41 + 3)];
              v44 = *v43;
              v45 = &v43[v44];
              v46 = *&v43[v44];
              if (v42 < 0 && !*&v43[v44])
              {
                v47 = 0;
                v48 = &v40[-*v40];
                if (*v48 < 0xDu)
                {
                  goto LABEL_60;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v45 = &v40[*(v41 + 3) + *&v40[*(v41 + 3)]];
              v46 = *v45;
            }

            v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:v46];
            v49 = (v45 + 4);
            if (*v45)
            {
              do
              {
                v50 = [MEMORY[0x1E696AD98] numberWithLongLong:*v49];
                [v47 addObject:v50];

                ++v49;
              }

              while (v49 != &v45[4 * *v45 + 4]);
            }

            v11 = v55;
            v48 = &v40[-*v40];
            if (*v48 < 0xDu)
            {
LABEL_60:
              v52 = 0;
              goto LABEL_61;
            }

LABEL_58:
            v51 = *(v48 + 6);
            if (!v51)
            {
              goto LABEL_60;
            }

            v52 = *&v40[v51];
LABEL_61:
            v53 = [[MPSGraphShapedType alloc] initWithShape:v47 dataType:v52];
            [v11 addObject:v53];

            if (v38 == v36)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_63:
        v11 = v55;
        break;
      }

LABEL_43:
      v13 += 4;
      if (v14 == v13)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:

  return v11;
}

- (id)outputRanksForFunction:(id)a3
{
  v4 = a3;
  if (!v4 || (v5 = [(NSData *)self->_reflectionFb bytes], v6 = *v5, v7 = *(v5 + v6 - *(v5 + v6) + 8), v8 = (v5 + v6 + v7), v9 = *v8, v10 = *(v8 + v9), !v10))
  {
LABEL_40:
    v30 = 0;
    goto LABEL_41;
  }

  v11 = 0;
  v12 = 4 * v10;
  v45 = *v5;
  v46 = v5;
  v43 = v9;
  v44 = *(v5 + v6 - *(v5 + v6) + 8);
  v13 = v5 + v7 + v6 + v9;
  while (1)
  {
    v14 = *&v13[v11 + 4];
    v15 = [v4 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v50 = v16;
    if (v16)
    {
      memmove(__dst, v15, v16);
    }

    *(__dst + v17) = 0;
    v18 = &v13[v11 + v14 - *&v13[v11 + 4 + v14]];
    if (*(v18 + 2) >= 5u && (v19 = *(v18 + 4)) != 0)
    {
      v20 = &v13[v14 + v19 + v11 + *&v13[v11 + 4 + v14 + v19]];
      v21 = *(v20 + 1);
      if (v21 >= 0x17)
      {
        operator new();
      }

      v48 = *(v20 + 1);
      if (v21)
      {
        memcpy(__p, v20 + 8, v21);
      }

      v22 = (__p + v21);
    }

    else
    {
      v48 = 0;
      v22 = __p;
    }

    *v22 = 0;
    v23 = v50;
    if ((v50 & 0x80u) == 0)
    {
      v24 = v50;
    }

    else
    {
      v24 = __dst[1];
    }

    v25 = v48;
    v26 = v48;
    if ((v48 & 0x80u) != 0)
    {
      v25 = __p[1];
    }

    if (v24 == v25)
    {
      break;
    }

    v29 = 1;
    if (v48 < 0)
    {
      goto LABEL_37;
    }

LABEL_34:
    if (v23 < 0)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (!v29)
    {
      goto LABEL_44;
    }

LABEL_39:
    v11 += 4;
    if (v12 == v11)
    {
      goto LABEL_40;
    }
  }

  if ((v50 & 0x80u) == 0)
  {
    v27 = __dst;
  }

  else
  {
    v27 = __dst[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  v29 = memcmp(v27, v28, v24) != 0;
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  operator delete(__p[0]);
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_38:
  operator delete(__dst[0]);
  if (v29)
  {
    goto LABEL_39;
  }

LABEL_44:
  v32 = v46 + v45 + v43 + v44 + v11;
  v33 = *&v32[v14 + 4];
  if (*&v32[v14 - v33 + 4] >= 9u && (v34 = *&v32[v14 - v33 + 12]) != 0)
  {
    v35 = (v46 + v45 + v43 + v44 + v11 + v34 + v14 + *(v46 + v45 + v43 + v44 + v11 + v34 + v14 + 4) + 4);
  }

  else
  {
    v35 = 0;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{*v35, v43, v44, v45, v46}];
  v36 = *v35;
  if (v36)
  {
    v37 = 4 * v36;
    do
    {
      v38 = v35[1];
      v39 = v35 + v38 - *(v35 + v38 + 4);
      if (*(v39 + 2) >= 0xBu && (v40 = *(v39 + 7)) != 0)
      {
        v41 = *(v35 + v38 + v40 + 4);
      }

      else
      {
        v41 = 0;
      }

      v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v41];
      [v30 addObject:v42];

      ++v35;
      v37 -= 4;
    }

    while (v37);
  }

LABEL_41:

  return v30;
}

@end