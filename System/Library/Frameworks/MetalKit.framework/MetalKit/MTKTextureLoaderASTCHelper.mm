@interface MTKTextureLoaderASTCHelper
+ (int64_t)isASTCHDRData:(id)a3 is3DBlocks:(BOOL)a4 error:(id *)a5;
@end

@implementation MTKTextureLoaderASTCHelper

+ (int64_t)isASTCHDRData:(id)a3 is3DBlocks:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MTKTextureLoaderASTCHelper_isASTCHDRData_is3DBlocks_error___block_invoke;
  v11[3] = &unk_1E8580DB0;
  v11[4] = &v13;
  v12 = a4;
  [v7 enumerateByteRangesUsingBlock:v11];
  v8 = v14;
  if (a5 && v14[3] == -1)
  {
    *a5 = _newMTKTextureErrorWithCodeAndErrorString(-1, @"Could not load ASTC texture, data is malformed");
    v8 = v14;
  }

  v9 = v8[3];
  _Block_object_dispose(&v13, 8);

  return v9;
}

uint64_t __61__MTKTextureLoaderASTCHelper_isASTCHDRData_is3DBlocks_error___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v6 = result;
  v61 = *MEMORY[0x1E69E9840];
  if ((a4 & 0xF) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = -1;
    *a5 = 1;
  }

  if (a4 >= 0x10)
  {
    v7 = 0;
    v8 = 16;
    v50 = a2;
    v51 = a4;
    while (1)
    {
      v9 = *(a2 + v7);
      v7 = v8;
      v60 = v9;
      v10 = v9 | ((BYTE1(v9) & 7) << 8);
      if ((v9 | ((BYTE1(v9) & 7) << 8) & 0x1FF) == 0x1FC)
      {
        if ((BYTE1(v9) & 2) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (BYTE1(v9) >> 3) & 3;
        if (!v11)
        {
          v22 = ((BYTE1(v9) | (BYTE2(v60) << 8)) >> 5) & 0xF;
          v24 = v22 == 15;
          v23 = (1 << v22) & 0xC88C;
          v24 = !v24 && (((BYTE1(v9) | (BYTE2(v60) << 8)) >> 5) & 0xF) == 15 || v23 == 0;
          if (v24)
          {
            goto LABEL_80;
          }

LABEL_20:
          *(*(*(v6 + 32) + 8) + 24) = 1;
          *a5 = 1;
          goto LABEL_80;
        }

        v12 = BYTE3(v60);
        if ((((BYTE2(v60) | (BYTE3(v60) << 8)) >> 7) & 3) == 0)
        {
          if (((1 << ((BYTE3(v60) >> 1) & 0xF)) & 0xC88C) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_20;
        }

        v52 = ((BYTE2(v60) | (BYTE3(v60) << 8)) >> 7) & 3;
        v13 = (BYTE1(v9) & 7) << 8;
        v14 = v13 >> 9;
        v15 = (v13 >> 9) & 1;
        v16 = v13 >> 10;
        v17 = (v9 >> 5) & 3;
        v18 = v9 & 3;
        if (*(v6 + 40) == 1)
        {
          if ((v9 & 3) != 0)
          {
            v19 = v17 + 2;
            v20 = ((v10 >> 7) & 3) + 2;
            v21 = ((v9 >> 2) & 3) + 2;
          }

          else
          {
            v18 = (v9 >> 2) & 3;
            if (!v18)
            {
              goto LABEL_83;
            }

            v37 = (v10 >> 7) & 3;
            if (v37 != 3)
            {
              v15 = 0;
              v16 = 0;
            }

            if (v37 > 1)
            {
              if (v37 == 2)
              {
                v19 = v17 + 2;
                v20 = v14 + 2;
                v21 = 6;
              }

              else
              {
                if (v17 == 3)
                {
                  goto LABEL_83;
                }

                v20 = 2;
                v19 = 6;
                v21 = 2;
              }
            }

            else
            {
              v38 = v14 + 2;
              v39 = v17 + 2;
              if (v37)
              {
                v19 = v17 + 2;
              }

              else
              {
                v19 = 6;
              }

              if (v37)
              {
                v20 = 6;
              }

              else
              {
                v20 = v14 + 2;
              }

              if (v37)
              {
                v21 = v38;
              }

              else
              {
                v21 = v39;
              }
            }
          }

          v41 = (v19 + v19 * v16) * v20 * v21;
          v42 = 8;
        }

        else
        {
          if ((v9 & 3) != 0)
          {
            v25 = (v10 >> 7) & 3;
            v26 = (v9 >> 2) & 3;
            v27 = v17 + 2;
            v28 = v25 | 8;
            v29 = (v10 >> 7) & 1;
            v30 = v29 | 6;
            v31 = v29 | 2;
            if (BYTE1(v9))
            {
              v32 = v27;
            }

            else
            {
              v31 = v27;
              v32 = v30;
            }

            if (v26 == 2)
            {
              v31 = v27;
              v32 = v25 | 8;
            }

            v33 = v25 | 4;
            if (v26)
            {
              v33 = v28;
            }

            v34 = v27;
            if (((v9 >> 2) & 3u) <= 1)
            {
              v35 = v33;
            }

            else
            {
              v35 = v31;
            }

            if (((v9 >> 2) & 3u) <= 1)
            {
              v36 = v34;
            }

            else
            {
              v36 = v32;
            }
          }

          else
          {
            v18 = (v9 >> 2) & 3;
            if (!v18)
            {
              goto LABEL_83;
            }

            v40 = (v10 >> 7) & 3;
            if (v40 > 1)
            {
              if (v40 == 2)
              {
                v15 = 0;
                v16 = 0;
                v35 = v17 + 6;
                v36 = v14 + 6;
              }

              else
              {
                if ((v9 & 0x40) != 0)
                {
                  goto LABEL_83;
                }

                v36 = 10;
                v35 = 6;
              }
            }

            else
            {
              v36 = v17 + 2;
              if (v40)
              {
                v35 = v17 + 2;
              }

              else
              {
                v35 = 12;
              }

              if (v40)
              {
                v36 = 12;
              }
            }
          }

          v41 = (v35 + v35 * v16) * v36;
          v42 = 4;
        }

        result = ComputeSequenceLengthInBits(v41, ((v9 >> 4) | 0xFFFFFFFE) + 2 * v18 + 6 * v15);
        if (result < v42 || result > 105)
        {
LABEL_83:
          *(*(*(v6 + 32) + 8) + 24) = -1;
          *a5 = 1;
          break;
        }

        v53[0] = (v12 & 2) != 0;
        v53[1] = (v12 & 4) != 0;
        if (v11 == 3)
        {
          v54 = (v12 & 8) != 0;
          v55 = (v12 & 0x10) != 0;
          v56 = (*(&v60 | ((120 - result) >> 3)) >> ((120 - result) & 7)) & 3;
          v57 = (*(&v60 | ((122 - result) >> 3)) >> ((122 - result) & 7)) & 3;
          v58 = (*(&v60 | ((124 - result) >> 3)) >> ((124 - result) & 7)) & 3;
          v43 = &v59;
        }

        else if (v11 == 2)
        {
          v54 = (v12 & 8) != 0;
          v56 = (v12 >> 4) & 1 | (2 * ((*(&v60 | ((123 - result) >> 3)) >> ((123 - result) & 7)) & 1));
          v57 = (*(&v60 | ((124 - result) >> 3)) >> ((124 - result) & 7)) & 3;
          v43 = &v58;
        }

        else
        {
          v56 = (v12 >> 3) & 3;
          v43 = &v57;
        }

        v44 = 0;
        *v43 = (*(&v60 | ((126 - result) >> 3)) >> ((126 - result) & 7)) & 3;
        do
        {
          v45 = (*(&v56 + v44) + 4 * (v52 + 63 + v53[v44]));
          v46 = v45 > 0xF;
          v47 = (1 << v45) & 0xC88C;
          if (!v46 && v47 != 0)
          {
            *(*(*(v6 + 32) + 8) + 24) = 1;
            *a5 = 1;
          }

          ++v44;
        }

        while (v11 + 1 != v44);
        a2 = v50;
        a4 = v51;
      }

LABEL_80:
      if (*a5 != 1)
      {
        v8 = v7 + 16;
        if (v7 + 16 <= a4)
        {
          continue;
        }
      }

      break;
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

@end