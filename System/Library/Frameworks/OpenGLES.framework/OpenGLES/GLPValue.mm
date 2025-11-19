@interface GLPValue
@end

@implementation GLPValue

char *__deserialize_GLPValue_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61[1] = *MEMORY[0x277D85DE8];
  MutableValue = glpMakeMutableValue(*(*(a1 + 32) + 240), *(a1 + 40), 0, a4, a5, a6, a7, a8, v61[0]);
  v10 = glpABIGetTypeSize(0, *(a1 + 40), 0);
  Size = glpTypeSizeGetSize(v10);
  v12 = Size;
  MEMORY[0x28223BE20](Size);
  v14 = (v61 - v13);
  bzero(v61 - v13, v15);
  glpTypeGetAppleVec4Types(*(a1 + 40), v14, 1, 0, 0, 0, 0, 0, 0);
  if (v12)
  {
    v16 = 0;
    v17 = MutableValue;
    v18 = v12;
    do
    {
      ScalarType = glpPrimitiveTypeGetScalarType(v14[v16]);
      ScalarCount = glpPrimitiveTypeGetScalarCount(v14[v16]);
      v21 = ScalarCount;
      if (ScalarType <= 8)
      {
        if (ScalarType == 1)
        {
          if (ScalarCount)
          {
            v57 = 0;
            v58 = 4 * ScalarCount;
            do
            {
              *&v17[v57] = deserialize_float(*(a1 + 32));
              v57 += 4;
            }

            while (v58 != v57);
          }
        }

        else
        {
          if (ScalarType != 5)
          {
LABEL_96:
            abort();
          }

          if (ScalarCount)
          {
            v27 = 0;
            v23 = *(a1 + 32);
            v28 = 4 * v21;
            while (1)
            {
              v29 = *(v23 + 260);
              v30 = *(v23 + 256);
              if (v29 >= v30)
              {
                break;
              }

              v31 = *(v23 + 248);
              v32 = *(v31 + v29);
              v33 = *(v31 + v29);
              v34 = v29 + 1;
              *(v23 + 260) = v29 + 1;
              if (v32 < 0)
              {
                v35 = (v33 >> 1) & 7;
                if (v35 > 3)
                {
                  if (v35 > 5)
                  {
                    if (v35 == 6)
                    {
                      if (v29 + 5 > v30)
                      {
                        break;
                      }

                      LODWORD(v31) = *(v31 + v34);
                      *(v23 + 260) = v29 + 5;
                      v36 = v29 + 8;
                      if (v36 > v30)
                      {
                        break;
                      }
                    }

                    else
                    {
                      if (v29 + 9 > v30)
                      {
                        break;
                      }

                      v31 = *(v31 + v34);
                      v36 = v29 + 9;
                    }
                  }

                  else
                  {
                    v37 = v29 + 5;
                    if (v35 == 4)
                    {
                      if (v37 > v30)
                      {
                        break;
                      }

                      LODWORD(v31) = *(v31 + v34);
                      *(v23 + 260) = v29 + 5;
                      if (v29 + 5 >= v30)
                      {
                        break;
                      }

                      v36 = v29 + 6;
                    }

                    else
                    {
                      if (v37 > v30)
                      {
                        break;
                      }

                      LODWORD(v31) = *(v31 + v34);
                      v38 = (v29 + 5);
                      *(v23 + 260) = v38;
                      if (v38 + 2 > v30)
                      {
                        break;
                      }

                      v36 = v29 + 7;
                    }
                  }
                }

                else if (v35 > 1)
                {
                  if (v35 == 2)
                  {
                    v36 = v29 + 4;
                    if (v36 > v30)
                    {
                      break;
                    }

                    LODWORD(v31) = *(v31 + v34) | (*(v31 + v34 + 2) << 16);
                  }

                  else
                  {
                    if (v29 + 5 > v30)
                    {
                      break;
                    }

                    LODWORD(v31) = *(v31 + v34);
                    v36 = v29 + 5;
                  }
                }

                else if (v35)
                {
                  if (v29 + 3 > v30)
                  {
                    break;
                  }

                  LODWORD(v31) = *(v31 + v34);
                  v36 = v29 + 3;
                }

                else
                {
                  if (v34 >= v30)
                  {
                    break;
                  }

                  LODWORD(v31) = *(v31 + v34);
                  v36 = v29 + 2;
                }

                *(v23 + 260) = v36;
                v39 = -256 << (8 * v35);
                if (v32)
                {
                  v40 = v39;
                }

                else
                {
                  v40 = 0;
                }

                LODWORD(v33) = v31 | v40;
              }

              *&v17[v27] = v33;
              v27 += 4;
              if (v28 == v27)
              {
                goto LABEL_93;
              }
            }

LABEL_95:
            glpDeserialError(v23, 1u);
          }
        }
      }

      else
      {
        switch(ScalarType)
        {
          case 62:
            if (ScalarCount)
            {
              v41 = 0;
              v42 = 8 * ScalarCount;
              do
              {
                *&v17[v41] = deserialize_double(*(a1 + 32));
                v41 += 8;
              }

              while (v42 != v41);
            }

            break;
          case 36:
            if (ScalarCount)
            {
              v43 = 0;
              v23 = *(a1 + 32);
              v44 = 4 * v21;
              while (1)
              {
                v45 = *(v23 + 260);
                v46 = *(v23 + 256);
                if (v45 >= v46)
                {
                  goto LABEL_95;
                }

                v47 = *(v23 + 248);
                v48 = *(v47 + v45);
                v49 = *(v47 + v45);
                v50 = v45 + 1;
                *(v23 + 260) = v45 + 1;
                if (v48 < 0)
                {
                  v51 = (v49 >> 1) & 7;
                  if (v51 > 3)
                  {
                    if (v51 > 5)
                    {
                      if (v51 == 6)
                      {
                        if (v45 + 5 > v46)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v47) = *(v47 + v50);
                        *(v23 + 260) = v45 + 5;
                        v52 = v45 + 8;
                        if (v52 > v46)
                        {
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        if (v45 + 9 > v46)
                        {
                          goto LABEL_95;
                        }

                        v47 = *(v47 + v50);
                        v52 = v45 + 9;
                      }
                    }

                    else
                    {
                      v53 = v45 + 5;
                      if (v51 == 4)
                      {
                        if (v53 > v46)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v47) = *(v47 + v50);
                        *(v23 + 260) = v45 + 5;
                        if (v45 + 5 >= v46)
                        {
                          goto LABEL_95;
                        }

                        v52 = v45 + 6;
                      }

                      else
                      {
                        if (v53 > v46)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v47) = *(v47 + v50);
                        v54 = (v45 + 5);
                        *(v23 + 260) = v54;
                        if (v54 + 2 > v46)
                        {
                          goto LABEL_95;
                        }

                        v52 = v45 + 7;
                      }
                    }
                  }

                  else if (v51 > 1)
                  {
                    if (v51 == 2)
                    {
                      v52 = v45 + 4;
                      if (v52 > v46)
                      {
                        goto LABEL_95;
                      }

                      LODWORD(v47) = *(v47 + v50) | (*(v47 + v50 + 2) << 16);
                    }

                    else
                    {
                      if (v45 + 5 > v46)
                      {
                        goto LABEL_95;
                      }

                      LODWORD(v47) = *(v47 + v50);
                      v52 = v45 + 5;
                    }
                  }

                  else if (v51)
                  {
                    if (v45 + 3 > v46)
                    {
                      goto LABEL_95;
                    }

                    LODWORD(v47) = *(v47 + v50);
                    v52 = v45 + 3;
                  }

                  else
                  {
                    if (v50 >= v46)
                    {
                      goto LABEL_95;
                    }

                    LODWORD(v47) = *(v47 + v50);
                    v52 = v45 + 2;
                  }

                  *(v23 + 260) = v52;
                  v55 = -256 << (8 * v51);
                  if (v48)
                  {
                    v56 = v55;
                  }

                  else
                  {
                    v56 = 0;
                  }

                  LODWORD(v49) = v47 | v56;
                }

                *&v17[v43] = v49;
                v43 += 4;
                if (v44 == v43)
                {
                  goto LABEL_93;
                }
              }
            }

            break;
          case 9:
            if (ScalarCount)
            {
              v22 = 0;
              v23 = *(a1 + 32);
              v24 = 4 * v21;
              while (1)
              {
                v25 = *(v23 + 260);
                if (v25 >= *(v23 + 256))
                {
                  goto LABEL_95;
                }

                v26 = *(*(v23 + 248) + v25);
                *(v23 + 260) = v25 + 1;
                *&v17[v22] = v26 != 0;
                v22 += 4;
                if (v24 == v22)
                {
                  goto LABEL_93;
                }
              }
            }

            break;
          default:
            goto LABEL_96;
        }
      }

LABEL_93:
      ++v16;
      v17 += 16;
    }

    while (v16 != v18);
  }

  v59 = *MEMORY[0x277D85DE8];
  return MutableValue;
}

@end