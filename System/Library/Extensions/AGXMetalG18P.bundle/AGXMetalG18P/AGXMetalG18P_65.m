uint64_t AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfigGen3(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v4 = *a2;
    v5 = a2 - v4;
    v6 = *(a2 - v4);
    if (v6 < 5)
    {
      goto LABEL_92;
    }

    v7 = -v4;
    v8 = *(v5 + 2);
    if (*(v5 + 2))
    {
      v9 = a2 + v8;
      v10 = *(a2 + v8);
      v11 = *(a2 + v8 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = v8 + v10;
        v14 = 176;
        while (1)
        {
          v15 = *(a2 + v13 + 4);
          v16 = a2 + v13 + v15;
          v17 = a2 + v13 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_59;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_59;
          }

          v19 = *(a2 + v13 + v15 + v18 + 4);
          if (!v19)
          {
            goto LABEL_59;
          }

          v20 = &texFormatUnsupported;
          if (v19 <= 0x28A)
          {
            v20 = *(&off_29F342380 + v19 - 1);
          }

          *(a1 + 8 * v12 + 112) = v20;
          v21 = 1 << v12;
          *(a1 + 40) |= 1 << v12;
          *(a1 + 79) |= 1 << v12;
          v22 = v15 - *(v16 + 1);
          v23 = a2 + v13 + v22;
          v24 = *(v23 + 2);
          if (v24 < 0x19)
          {
            v26 = 0;
            LODWORD(v25) = 0;
            if (v24 < 0xF)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v25 = *(v23 + 14);
            if (v25)
            {
              LODWORD(v25) = *(a2 + v13 + v15 + v25 + 4);
            }

            if (v24 >= 0x1B && *(a2 + v13 + v22 + 30))
            {
              v26 = *(a2 + v13 + v15 + *(a2 + v13 + v22 + 30) + 4);
            }

            else
            {
              v26 = 0;
            }
          }

          v27 = *(a2 + v13 + v22 + 18);
          if (v27 && *(a2 + v13 + v15 + v27 + 4))
          {
            *(a1 + 48) |= v21;
            if ((v26 & 0xFE) == 2)
            {
              v28 = 1 << v12;
            }

            else
            {
              v28 = 0;
            }

            *(a1 + 68) |= v28;
            v29 = a2 + v13 + v15 - *(v16 + 1);
            if (*(v29 + 2) >= 0x11u && (v30 = *(v29 + 10), *(v29 + 10)))
            {
              v31 = 0;
              v32 = *(a2 + v13 + v15 + v30 + 4);
              v33 = 2;
              if (v32 > 4)
              {
                if (v32 > 6)
                {
                  if (v32 == 7)
                  {
                    v31 = 0;
                    v33 = 3;
                  }

                  else if (v32 == 8)
                  {
                    v31 = 3;
                  }
                }

                else
                {
                  v31 = v32 != 5;
                  v33 = 4;
                }
              }

              else if (v32 < 2)
              {
                v33 = 1;
                v31 = v32;
              }

              else if (v32 == 3)
              {
                v31 = 1;
              }

              else if (v32 == 4)
              {
                v31 = 2;
              }
            }

            else
            {
              v31 = 0;
              v33 = 2;
            }

            v34 = a1 + v14;
            *(v34 + 16) = v33;
            *(v34 + 17) = v31;
          }

          v35 = 0;
          if (v25 == 2)
          {
            v36 = 1 << v12;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 56) |= v36;
          if (!v26)
          {
LABEL_38:
            v26 = 0;
            v35 = 1 << v12;
          }

          *(a1 + 52) |= v35;
          if (v25 == 1)
          {
            v37 = 1 << v12;
          }

          else
          {
            v37 = 0;
          }

          v38 = *(a1 + 64);
          v39 = *(a1 + 60) | v37;
          if ((v26 & 0xFFFFFFFD) == 1)
          {
            v40 = 1 << v12;
          }

          else
          {
            v40 = 0;
          }

          *(a1 + 60) = v39;
          *(a1 + 64) = v40 | v38;
          if (v26 == 4)
          {
            v41 = 1 << v12;
          }

          else
          {
            v41 = 0;
          }

          *(a1 + 72) |= v41;
          v42 = a2 + v13 + v15 - *(v16 + 1);
          if (*(v42 + 2) < 7u || (v43 = *(v42 + 5), !*(v42 + 5)))
          {
            v48 = 0;
            v47 = (a1 + 176 + 2 * v12);
            goto LABEL_56;
          }

          v44 = 0;
          v45 = *(a2 + v13 + v15 + v43 + 4);
          v46 = 2;
          if (v45 > 4)
          {
            if (v45 > 6)
            {
              if (v45 == 7)
              {
                *(a1 + v14) = 3;
                v49 = 3;
                goto LABEL_58;
              }

              if (v45 == 8)
              {
                v50 = 3;
LABEL_77:
                v52 = (a1 + v14);
                *v52 = 2;
                v52[1] = v50;
LABEL_78:
                *(a1 + 78) |= v21;
                goto LABEL_57;
              }
            }

            else
            {
              v44 = v45 != 5;
              v46 = 4;
            }
          }

          else if (v45 < 2)
          {
            v46 = 1;
            v44 = v45;
          }

          else
          {
            if (v45 == 3)
            {
              v50 = 1;
              goto LABEL_77;
            }

            if (v45 == 4)
            {
              v47 = (a1 + v14);
              v48 = 2;
LABEL_56:
              *v47 = 2;
              *(a1 + v14 + 1) = v48;
              goto LABEL_57;
            }
          }

          v51 = (a1 + v14);
          *v51 = v46;
          v51[1] = v44;
          if (v45 <= 8)
          {
            if (((1 << v45) & 0x168) != 0)
            {
              goto LABEL_78;
            }

            if (v45 == 1)
            {
              *(a1 + 78) |= v21;
              v49 = 1;
              goto LABEL_58;
            }
          }

          if (!v45)
          {
            v49 = 1;
            goto LABEL_58;
          }

LABEL_57:
          v49 = 2;
LABEL_58:
          *(a1 + 76) |= v49 << (v14 + 80);
          v11 = *&v9[v10];
LABEL_59:
          if (v12 <= 6)
          {
            ++v12;
            v14 += 2;
            v13 += 4;
            if (v12 < v11)
            {
              continue;
            }
          }

          v53 = *a2;
          v7 = -v53;
          v6 = *(a2 - v53);
          break;
        }
      }
    }

    if (v6 >= 7 && *(a2 + v7 + 6) && (v54 = *(a2 + *(a2 + v7 + 6)), (v54 & 0xFFFFFFFE) != 0))
    {
      if (v54 > 0x7FF)
      {
        LODWORD(v54) = 2048;
      }
    }

    else
    {
LABEL_92:
      LODWORD(v54) = 1;
    }

    *(a1 + 92) = v54;
    v55 = (a2 - *a2);
    v56 = *v55;
    if (v56 < 0xB)
    {
      v58 = 1;
      *(a1 + 96) = 1;
      if (v56 < 9)
      {
LABEL_102:
        *(a1 + 97) = v58;
        goto LABEL_103;
      }

      v59 = v55[4];
      if (!v59)
      {
LABEL_101:
        v58 = 1;
        goto LABEL_102;
      }
    }

    else
    {
      if (v55[5])
      {
        v57 = *(a2 + v55[5]);
      }

      else
      {
        v57 = 1;
      }

      *(a1 + 96) = v57;
      v59 = v55[4];
      if (!v59)
      {
        goto LABEL_101;
      }
    }

    v58 = *(a2 + v59);
    goto LABEL_102;
  }

LABEL_103:
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(a1, 0);
  return a1;
}

void sub_29CDB558C(_Unwind_Exception *a1)
{
  if ((*v2 & 1) == 0)
  {
    MEMORY[0x29ED520C0](*(v2 + 8), 8);
  }

  MEMORY[0x29ED520D0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t AGX::IndirectArgumentLayoutGen2::parseStruct(unsigned int *a1, void *a2, uint64_t a3)
{
  result = [objc_msgSend(a2 "members")];
  v7 = result;
  if (result)
  {
    v8 = 0;
    v9 = *a3;
    v10 = *(a3 + 8);
    do
    {
      v11 = [objc_msgSend(a2 "members")];
      v12 = v9 + [v11 indirectArgumentIndex];
      v13 = [v11 offset];
      *a3 = v12;
      *(a3 + 8) = v13 + v10;
      v14 = [v11 dataType];
      if ((v14 - 78) > 0x3D || ((1 << (v14 - 78)) & 0x2000000000000003) == 0)
      {
        if (v14 == 1)
        {
          result = AGX::IndirectArgumentLayoutGen2::parseStruct(a1, [v11 structType], a3);
        }

        else if (v14 == 2)
        {
          result = AGX::IndirectArgumentLayoutGen2::parseArray(a1, [v11 arrayType], a3);
        }

        else
        {
          result = AGX::IndirectArgumentLayoutGen2::parseIndirectArgument(a1, [v11 indirectArgumentType], a3);
        }
      }

      else
      {
        result = AGX::IndirectArgumentLayoutGen2::addToMap(a1, [v11 dataType], a3, 8, 8uLL);
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

unsigned int *AGX::IndirectArgumentLayoutGen2::addToMap(unsigned int *result, unsigned __int8 a2, int *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a3 + 1);
  v6 = result + 2;
  v7 = *result;
  v8 = *result & 1;
  if (v8)
  {
    v9 = 16;
  }

  else
  {
    v9 = result[4];
    if (!v9)
    {
      v12 = 0;
      v15 = 0;
      v25 = 0;
      goto LABEL_10;
    }

    v6 = *(result + 1);
  }

  v10 = v9 - 1;
  v11 = (37 * *a3) & (v9 - 1);
  v12 = &v6[4 * v11];
  v13 = *v12;
  if (*a3 == *v12)
  {
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 1;
  while (v13 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13 == -2;
    }

    if (v18)
    {
      v16 = v12;
    }

    v19 = v11 + v17++;
    v11 = v19 & v10;
    v12 = &v6[4 * (v19 & v10)];
    v13 = *v12;
    if (*a3 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v12 = v16;
  }

  v25 = v12;
  if (v8)
  {
    v15 = 16;
  }

  else
  {
    v15 = result[4];
  }

LABEL_10:
  if (4 * (v7 >> 1) + 4 >= 3 * v15)
  {
    v15 *= 2;
    goto LABEL_30;
  }

  if (v15 + ~(v7 >> 1) - result[1] <= v15 >> 3)
  {
LABEL_30:
    v23 = a3;
    v24 = result;
    v21 = a5;
    v22 = a2;
    v20 = a4;
    agx::SmallDenseMap<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,16u,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>::grow(result, v15);
    agx::DenseMapBase<agx::SmallDenseMap<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,16u,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>,unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>::LookupBucketFor<unsigned int>(v24, *v23, &v25);
    a3 = v23;
    result = v24;
    a5 = v21;
    a2 = v22;
    a4 = v20;
    v7 = *v24;
    v12 = v25;
    v8 = *v24 & 1;
  }

  *result = (v7 & 0xFFFFFFFE | v8) + 2;
  if (*v12 != -1)
  {
    --result[1];
  }

  *v12 = *a3;
  *(v12 + 1) = 0;
LABEL_6:
  *(v12 + 1) = v5 & 0xFFFFFFFFFFFFFFLL | (a2 << 56);
  v14 = *(a3 + 2);
  if (v14 <= a5)
  {
    v14 = a5;
  }

  *(a3 + 1) += a4;
  *(a3 + 2) = v14;
  ++*a3;
  return result;
}

uint64_t AGX::IndirectArgumentLayoutGen2::parseArray(unsigned int *a1, void *a2, uint64_t a3)
{
  result = [a2 arrayLength];
  v7 = result;
  if (result)
  {
    v8 = 0;
    v9 = *(a3 + 8);
    while (1)
    {
      *(a3 + 8) = v9 + [a2 stride] * v8;
      v10 = [a2 elementType];
      if (v10 > 77)
      {
        break;
      }

      if ((v10 - 58) < 3)
      {
        goto LABEL_4;
      }

      if (v10 == 1)
      {
        result = AGX::IndirectArgumentLayoutGen2::parseStruct(a1, [a2 elementStructType], a3);
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_14;
        }

        result = AGX::IndirectArgumentLayoutGen2::parseArray(a1, [a2 elementArrayType], a3);
      }

LABEL_5:
      if (v7 == ++v8)
      {
        return result;
      }
    }

    if ((v10 - 78) > 0x3E || ((1 << (v10 - 78)) & 0x600001E000000007) == 0)
    {
LABEL_14:
      result = AGX::IndirectArgumentLayoutGen2::parseIndirectArgument(a1, [a2 elementIndirectArgumentType], a3);
      goto LABEL_5;
    }

LABEL_4:
    result = AGX::IndirectArgumentLayoutGen2::addToMap(a1, [a2 elementType], a3, 8, 8uLL);
    goto LABEL_5;
  }

  return result;
}

uint64_t AGX::IndirectArgumentLayoutGen2::parseIndirectArgument(unsigned int *a1, void *a2, int *a3)
{
  result = [a2 type];
  if (result > 22)
  {
    if (result > 24 && (result - 25) >= 3)
    {
      if (result != 37)
      {
        return result;
      }

      v7 = a1;
      v8 = -116;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (result <= 2)
  {
    if (result)
    {
      if (result != 2)
      {
        return result;
      }

      v7 = a1;
      v8 = 58;
      goto LABEL_15;
    }

LABEL_14:
    v7 = a1;
    v8 = 60;
    goto LABEL_15;
  }

  switch(result)
  {
    case 3:
      v7 = a1;
      v8 = 59;
      break;
    case 4:
      v12 = [a2 indirectConstantDataType];
      v13 = [a2 indirectConstantDataSize];
      v11 = [a2 indirectConstantAlignment];
      v7 = a1;
      v8 = v12;
      v9 = a3;
      v10 = v13;
      goto LABEL_16;
    case 21:
      v7 = a1;
      v8 = 80;
      break;
    default:
      return result;
  }

LABEL_15:
  v9 = a3;
  v10 = 8;
  v11 = 8;
LABEL_16:

  return AGX::IndirectArgumentLayoutGen2::addToMap(v7, v8, v9, v10, v11);
}

unsigned int *agx::SmallDenseMap<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,16u,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>::grow(unsigned int *result, unsigned int a2)
{
  v2 = result;
  v66[30] = *MEMORY[0x29EDCA608];
  if (a2 >= 0x11)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v6 = *(result + 1);
    v7 = result[4];
    if (a2 > 0x10)
    {
      v30 = a2;
      v31 = operator new(16 * a2, 8uLL);
      *(v2 + 1) = v31;
      *(v2 + 2) = v30;
      v32 = *v2;
      v8 = &v6[4 * v7];
      *v2 = *v2 & 1;
      if ((v32 & 1) == 0)
      {
        v33 = &v31[16 * v30];
        goto LABEL_48;
      }
    }

    else
    {
      v8 = &v6[4 * v7];
      *result = 1;
    }

    v33 = (v2 + 66);
    v31 = (v2 + 2);
LABEL_48:
    v34 = v33 - v31 - 16;
    if (v34 >= 0x10)
    {
      v35 = (v34 >> 4) + 1;
      v36 = v31 + 16;
      v37 = v35 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v36 - 4) = -1;
        *v36 = -1;
        v36 += 8;
        v37 -= 2;
      }

      while (v37);
      if (v35 == (v35 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_54:
        if (v7)
        {
          v38 = v6;
          do
          {
            v44 = *v38;
            if (*v38 <= 0xFFFFFFFD)
            {
              if (*v2)
              {
                v40 = 15;
                v39 = v2 + 2;
              }

              else
              {
                v39 = *(v2 + 1);
                v40 = v2[4] - 1;
              }

              v41 = v40 & (37 * v44);
              v42 = &v39[4 * v41];
              v43 = *v42;
              if (v44 != *v42)
              {
                v45 = 0;
                v46 = 1;
                while (v43 != -1)
                {
                  if (v45)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v43 == -2;
                  }

                  if (v47)
                  {
                    v45 = v42;
                  }

                  v48 = v41 + v46++;
                  v41 = v48 & v40;
                  v42 = &v39[4 * (v48 & v40)];
                  v43 = *v42;
                  if (v44 == *v42)
                  {
                    goto LABEL_58;
                  }
                }

                if (v45)
                {
                  v42 = v45;
                }
              }

LABEL_58:
              *v42 = v44;
              *(v42 + 1) = *(v38 + 1);
              *v2 += 2;
            }

            v38 += 4;
          }

          while (v38 != v8);
        }

        JUMPOUT(0x29ED520C0);
      }

      v31 += 16 * (v35 & 0x1FFFFFFFFFFFFFFELL);
    }

    do
    {
      *v31 = -1;
      v31 += 16;
    }

    while (v31 != v33);
    goto LABEL_54;
  }

  v9 = &v64;
  if (result[2] <= 0xFFFFFFFD)
  {
    v64 = result[2];
    v65 = *(result + 2);
    v9 = v66;
  }

  v10 = result[6];
  if (v10 <= 0xFFFFFFFD)
  {
    *v9 = v10;
    *(v9 + 1) = *(result + 4);
    v9 += 4;
  }

  v11 = result[10];
  if (v11 <= 0xFFFFFFFD)
  {
    *v9 = v11;
    *(v9 + 1) = *(result + 6);
    v9 += 4;
  }

  v12 = result[14];
  if (v12 <= 0xFFFFFFFD)
  {
    *v9 = v12;
    *(v9 + 1) = *(result + 8);
    v9 += 4;
  }

  v13 = result[18];
  if (v13 <= 0xFFFFFFFD)
  {
    *v9 = v13;
    *(v9 + 1) = *(result + 10);
    v9 += 4;
  }

  v14 = result[22];
  if (v14 <= 0xFFFFFFFD)
  {
    *v9 = v14;
    *(v9 + 1) = *(result + 12);
    v9 += 4;
  }

  v15 = result[26];
  if (v15 <= 0xFFFFFFFD)
  {
    *v9 = v15;
    *(v9 + 1) = *(result + 14);
    v9 += 4;
  }

  v16 = result[30];
  if (v16 <= 0xFFFFFFFD)
  {
    *v9 = v16;
    *(v9 + 1) = *(result + 16);
    v9 += 4;
  }

  v17 = result[34];
  if (v17 <= 0xFFFFFFFD)
  {
    *v9 = v17;
    *(v9 + 1) = *(result + 18);
    v9 += 4;
  }

  v18 = result[38];
  if (v18 <= 0xFFFFFFFD)
  {
    *v9 = v18;
    *(v9 + 1) = *(result + 20);
    v9 += 4;
  }

  v19 = result[42];
  if (v19 <= 0xFFFFFFFD)
  {
    *v9 = v19;
    *(v9 + 1) = *(result + 22);
    v9 += 4;
  }

  v20 = result[46];
  if (v20 <= 0xFFFFFFFD)
  {
    *v9 = v20;
    *(v9 + 1) = *(result + 24);
    v9 += 4;
  }

  v21 = result[50];
  if (v21 <= 0xFFFFFFFD)
  {
    *v9 = v21;
    *(v9 + 1) = *(result + 26);
    v9 += 4;
  }

  v22 = result[54];
  if (v22 <= 0xFFFFFFFD)
  {
    *v9 = v22;
    *(v9 + 1) = *(result + 28);
    v9 += 4;
  }

  v23 = result[58];
  if (v23 <= 0xFFFFFFFD)
  {
    *v9 = v23;
    *(v9 + 1) = *(result + 30);
    v9 += 4;
  }

  v24 = result[62];
  if (v24 <= 0xFFFFFFFD)
  {
    *v9 = v24;
    *(v9 + 1) = *(result + 32);
    v9 += 4;
  }

  v25 = *result;
  if (a2 >= 0x11)
  {
    *result = v25 & 0xFFFFFFFE;
    v26 = a2;
    result = operator new(16 * a2, 8uLL);
    *(v2 + 1) = result;
    *(v2 + 2) = v26;
    v25 = *v2;
  }

  *v2 = v25 & 1;
  if (v25)
  {
    v29 = (v2 + 66);
    v28 = (v2 + 2);
  }

  else
  {
    v27 = v2[4];
    if (!v27)
    {
      goto LABEL_85;
    }

    v28 = *(v2 + 1);
    v29 = &v28[16 * v27];
  }

  v49 = v29 - v28 - 16;
  if (v49 < 0x10)
  {
    goto LABEL_84;
  }

  v50 = (v49 >> 4) + 1;
  v51 = v28 + 16;
  v52 = v50 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v51 - 4) = -1;
    *v51 = -1;
    v51 += 8;
    v52 -= 2;
  }

  while (v52);
  if (v50 != (v50 & 0x1FFFFFFFFFFFFFFELL))
  {
    v28 += 16 * (v50 & 0x1FFFFFFFFFFFFFFELL);
    do
    {
LABEL_84:
      *v28 = -1;
      v28 += 16;
    }

    while (v28 != v29);
  }

LABEL_85:
  if (&v64 != v9)
  {
    v53 = &v64;
    do
    {
      v59 = *v53;
      if (*v53 <= 0xFFFFFFFD)
      {
        if (*v2)
        {
          v55 = 15;
          v54 = v2 + 2;
        }

        else
        {
          v54 = *(v2 + 1);
          v55 = v2[4] - 1;
        }

        v56 = v55 & (37 * v59);
        v57 = &v54[4 * v56];
        v58 = *v57;
        if (v59 != *v57)
        {
          v60 = 0;
          v61 = 1;
          while (v58 != -1)
          {
            if (v60)
            {
              v62 = 0;
            }

            else
            {
              v62 = v58 == -2;
            }

            if (v62)
            {
              v60 = v57;
            }

            v63 = v56 + v61++;
            v56 = v63 & v55;
            v57 = &v54[4 * (v63 & v55)];
            v58 = *v57;
            if (v59 == *v57)
            {
              goto LABEL_89;
            }
          }

          if (v60)
          {
            v57 = v60;
          }
        }

LABEL_89:
        *v57 = v59;
        *(v57 + 1) = *(v53 + 1);
        *v2 += 2;
      }

      v53 += 4;
    }

    while (v53 != v9);
  }

  return result;
}

uint64_t agx::DenseMapBase<agx::SmallDenseMap<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,16u,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>,unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo,agx::DenseMapInfo<unsigned int,void>,agx::detail::DenseMapPair<unsigned int,AGX::IndirectArgumentLayoutGen2::PackedFieldInfo>>::LookupBucketFor<unsigned int>(uint64_t result, int a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = (37 * a2) & (v4 - 1);
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -2;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (v3 + 16 * (v12 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

void ___ZN3AGX25IndirectCommandBufferGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13resetCommandsEP19AGXG18PFamilyBufferjj_block_invoke(uint64_t a1, unsigned int *a2)
{
  v4 = a2[1];
  v5 = (*(a1 + 32) + *a2);
  v6 = a2[2];
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v14 = *(a2 + 16);

      memset(v5, v14, v4);
    }

    else if (v6 == 2)
    {
      v16 = v2;
      v17 = v3;
      v8 = v4 & 0xFFFFFFFC;
      v9 = v4 & 3;
      v10 = *(a2 + 8);
      __pattern4 = v10 | (v10 << 16);
      v11 = v5;
      memset_pattern4(v5, &__pattern4, v8);
      if (v9)
      {
        *&v11[v8] = v10;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 4:
        v12 = a2 + 4;

        memset_pattern4(v5, v12, v4);
        break;
      case 8:
        v13 = a2 + 4;

        memset_pattern8(v5, v13, v4);
        break;
      case 16:
        v7 = a2 + 4;

        memset_pattern16(v5, v7, v4);
        break;
    }
  }
}

uint64_t AGX::IndirectComputeCommandBufferGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetCommands(uint64_t a1, char *a2, unsigned int a3, unsigned int a4)
{
  {
  }

  if (*(a1 + 25) != 1)
  {
    bzero(([a2 contents] + *(a1 + 60) + *(a1 + 64) * a3), *(a1 + 64) * a4);
  }

  bzero(([a2 contents] + *(a1 + 68) + *(a1 + 72) * a3 + *(a1 + 4)), a4 * *(a1 + 72));
  if ((*(a1 + 24) & 1) == 0)
  {
    bzero(([a2 contents] + *(a1 + 76) + *(a1 + 80) * a3), a4 * *(a1 + 80));
  }

  bzero(([a2 contents] + *(a1 + 92) + *(a1 + 96) * a3), a4 * *(a1 + 96));
  bzero(([a2 contents] + *(a1 + 100) + *(a1 + 104) * a3), a4 * *(a1 + 104));
  if (a4 + a3 > a3)
  {
    v8 = a2 + 8;
    v9 = MEMORY[0x29EDC5638];
    do
    {
      v10 = [a2 contents];
      v11 = *(a1 + 68) + *(a1 + 72) * a3;
      v12 = (v10 + v11);
      v13 = *&v8[*v9];
      v14 = v13 + v11;
      v15 = v13 + *(a1 + 108) + *(a1 + 112) * a3;
      v12[1] = v15;
      v12[2] = v15 + 12;
      v12[3] = v14 + 48;
      v12[4] = v14;
      if ((*(a1 + 24) & 1) == 0)
      {
        v16 = ([a2 contents] + *(a1 + 76) + *(a1 + 80) * a3);
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
      }

      v17 = [a2 contents] + *(a1 + 52) + *(a1 + 56) * a3;
      *v17 = 1610612736;
      {
        AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
      }

      if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
      {
        v18 = 0x80000;
      }

      else
      {
        v18 = 0;
      }

      *(v17 + 4) = *(v17 + 4) & 0xFF71FFFF | v18;
      *(v17 + 8) = 4;
      *(v17 + 16) = 0x40000000;
      *(v17 + 20) = 0;
      *(v17 + 36) = 0;
      *(v17 + 28) = 0;
      v19 = *&v8[*v9] + *(a1 + 84) + *(a1 + 88) * a3;
      *(v17 + 8) = (v19 >> 16) & 0xFFC00000 | 4;
      *(v17 + 12) = v19 >> 6;
      *(v17 + 44) = 1610612736;
      ++a3;
      --a4;
    }

    while (a4);
  }

  result = [a2 contents];
  *(result + (*(a1 + 52) + *(a1 + 56) * *a1)) = 0x80000000;
  return result;
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 36) = 1;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 60) = 1;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 84) = 1;
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
  }

  if ((*(a1 + 132) & 1) == 0)
  {
    *(a1 + 132) = 1;
  }

  if ((*(a1 + 156) & 1) == 0)
  {
    *(a1 + 156) = 1;
  }

  if ((*(a1 + 180) & 1) == 0)
  {
    *(a1 + 180) = 1;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    *(a1 + 204) = 1;
  }

  if ((*(a1 + 228) & 1) == 0)
  {
    *(a1 + 228) = 1;
  }

  if ((*(a1 + 252) & 1) == 0)
  {
    *(a1 + 252) = 1;
  }

  if ((*(a1 + 276) & 1) == 0)
  {
    *(a1 + 276) = 1;
  }

  if ((*(a1 + 300) & 1) == 0)
  {
    *(a1 + 300) = 1;
  }

  if ((*(a1 + 324) & 1) == 0)
  {
    *(a1 + 324) = 1;
  }

  if ((*(a1 + 348) & 1) == 0)
  {
    *(a1 + 348) = 1;
  }

  if ((*(a1 + 372) & 1) == 0)
  {
    *(a1 + 372) = 1;
  }

  if ((*(a1 + 396) & 1) == 0)
  {
    *(a1 + 396) = 1;
  }

  if ((*(a1 + 420) & 1) == 0)
  {
    *(a1 + 420) = 1;
  }

  if ((*(a1 + 444) & 1) == 0)
  {
    *(a1 + 444) = 1;
  }

  if ((*(a1 + 468) & 1) == 0)
  {
    *(a1 + 468) = 1;
  }

  if ((*(a1 + 492) & 1) == 0)
  {
    *(a1 + 492) = 1;
  }

  if ((*(a1 + 516) & 1) == 0)
  {
    *(a1 + 516) = 1;
  }

  if ((*(a1 + 540) & 1) == 0)
  {
    *(a1 + 540) = 1;
  }

  if ((*(a1 + 564) & 1) == 0)
  {
    *(a1 + 564) = 1;
  }

  if ((*(a1 + 588) & 1) == 0)
  {
    *(a1 + 588) = 1;
  }

  if ((*(a1 + 612) & 1) == 0)
  {
    *(a1 + 612) = 1;
  }

  if ((*(a1 + 636) & 1) == 0)
  {
    *(a1 + 636) = 1;
  }

  if ((*(a1 + 660) & 1) == 0)
  {
    *(a1 + 660) = 1;
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 736));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 712));
  return a1;
}

void AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(uint64_t a1, unsigned int a2, int a3)
{
  add = atomic_fetch_add((a1 + 680), 1u);
  v7 = add + 1;
  if (add == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 24 * add + 16);
  }

  v9 = a1 + 8;
  v10 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:8 * a2 options:0];
  *(a1 + 8 + 24 * v7 + 8) = v10;
  if (v8)
  {
    memcpy(*&v10[*MEMORY[0x29EDC5638] + 24], *(v8 + *MEMORY[0x29EDC5638] + 24), 8 * *(a1 + 692));
  }

  if (*(a1 + 692) <= 1u)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 692);
  }

  *(a1 + 692) = a2;
  atomic_fetch_add((v9 + 24 * v7), 0x80000000);
  if ((add & 0x80000000) == 0)
  {
    v12 = v9 + 24 * add;
    if (atomic_fetch_add(v12, 0x80000000) == 0x80000000)
    {
      os_unfair_lock_assert_owner((a1 + 752));
      if ((*(v12 + 4) & 1) == 0)
      {
        *(v12 + 4) = 1;
      }
    }
  }

  if (a3)
  {
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(a1 + 696, v11, a2 - 1);
  }

  v13 = *(a1 + 768);
  v14 = *v13;
  if ((*v13 + 1) > 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = *v13;
  atomic_compare_exchange_strong(v13, &v16, v15);
  if (v16 != v14)
  {
    v17 = v16;
    do
    {
      if ((v16 + 1) > 1)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      atomic_compare_exchange_strong(v13, &v17, v18);
      v19 = v17 == v16;
      v16 = v17;
    }

    while (!v19);
  }
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(uint64_t a1, os_unfair_lock_s *a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3 != 0;
  os_unfair_lock_lock(a2 + 188);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::pop((*(a1 + 8) + 696));
    *a1 = v5;
    if (!v5)
    {
      v8 = *(a1 + 8);
      v9 = *(v8 + 692);
      if (v9)
      {
        v10 = v9 + 1;
        do
        {
          if (v9)
          {
            v9 *= 2;
          }

          else
          {
            v9 = 32;
          }
        }

        while (v9 <= v10);
        AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v8, v9, 1);
      }

      else
      {
        AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v8, 0x20u, 1);
      }

      *a1 = AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::pop((*(a1 + 8) + 696));
    }
  }

  explicit = atomic_load_explicit((*(a1 + 8) + 756), memory_order_acquire);
  if (explicit <= *a1)
  {
    explicit = *a1;
  }

  atomic_store(explicit, (*(a1 + 8) + 756));
  atomic_fetch_add((*(a1 + 8) + 760), 1u);
  os_unfair_lock_unlock(a2 + 188);
  return a1;
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::~RangeAllocation(uint64_t result)
{
  if (*result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v1 = *(result + 8);
      v2 = result;
      os_unfair_lock_lock(v1 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v2 + 8) + 696, *v2, *v2 + *(v2 + 4) - 1);
      os_unfair_lock_unlock(v1 + 188);
      return v2;
    }
  }

  return result;
}

void sub_29CDB9F44(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 188);
  _Unwind_Resume(a1);
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 188);
  os_unfair_lock_assert_owner(a1 + 188);
  v4 = &a1[6 * a1[170]._os_unfair_lock_opaque];
  v6 = *&v4[4]._os_unfair_lock_opaque;
  v5 = v4 + 4;
  v7 = *(a2 + 8);
  v8 = MEMORY[0x29EDC5638];
  v9 = v6 + *MEMORY[0x29EDC5638];
  v10 = *(v9 + 8);
  if (**a2 == v10 && ((*(v9 + 40) ^ *(*v7 + 40)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v11 = 0;
  }

  else
  {
    **a2 = v10;
    *v7 = *&v5->_os_unfair_lock_opaque + *v8;
    MTLResourceListAddResource();
    v11 = 1;
  }

  os_unfair_lock_unlock(a1 + 188);
  return v11;
}

void AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::reserve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 752));
  v5 = *(a1 + 696);
  if (*(v5 + 760) || atomic_load_explicit((v5 + 756), memory_order_acquire) + 1 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v7 = "agxa_mempool_template.hpp";
      v8 = 1024;
      v9 = 792;
      v10 = 2080;
      v11 = "reserve";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v7 = "agxa_mempool_template.hpp";
      v8 = 1024;
      v9 = 792;
      v10 = 2080;
      v11 = "reserve";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
    }
  }

  else if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  os_unfair_lock_unlock((a1 + 752));
}

void sub_29CDBA2E4(_Unwind_Exception *a1)
{
  operator delete(v2);
  os_unfair_lock_unlock(v1 + 188);
  _Unwind_Resume(a1);
}

uint64_t AGX::IndirectComputeCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::recalculateThreadgroupOffsets(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = MEMORY[0x29EDC5638];
  v4 = *(a1 + *MEMORY[0x29EDC5638] + 24);
  v5 = (v4 + (a2[23] + a2[24] * a3));
  v6 = (v4 + (a2[17] + a2[18] * a3));
  v7 = v5[36];
  v6[34] = v7;
  v8 = *v5 + v7;
  v6[35] = v8;
  v9 = v5[1] + v8;
  v6[36] = v9;
  v10 = v5[2] + v9;
  v6[37] = v10;
  v11 = v5[3] + v10;
  v6[38] = v11;
  v12 = v5[4] + v11;
  v6[39] = v12;
  v13 = v5[5] + v12;
  v6[40] = v13;
  v14 = v5[6] + v13;
  v6[41] = v14;
  v15 = v5[7] + v14;
  v6[42] = v15;
  v16 = v5[8] + v15;
  v6[43] = v16;
  v17 = v5[9] + v16;
  v6[44] = v17;
  v18 = v5[10] + v17;
  v6[45] = v18;
  v19 = v5[11] + v18;
  v6[46] = v19;
  v20 = v5[12] + v19;
  v6[47] = v20;
  v21 = v5[13] + v20;
  v6[48] = v21;
  v22 = v5[14] + v21;
  v6[49] = v22;
  v23 = v5[15] + v22;
  v6[50] = v23;
  v24 = v5[16] + v23;
  v6[51] = v24;
  v25 = v5[17] + v24;
  v6[52] = v25;
  v26 = v5[18] + v25;
  v6[53] = v26;
  v27 = v5[19] + v26;
  v6[54] = v27;
  v28 = v5[20] + v27;
  v6[55] = v28;
  v29 = v5[21] + v28;
  v6[56] = v29;
  v30 = v5[22] + v29;
  v6[57] = v30;
  v31 = v5[23] + v30;
  v6[58] = v31;
  v32 = v5[24] + v31;
  v6[59] = v32;
  v33 = v5[25] + v32;
  v6[60] = v33;
  v34 = v5[26] + v33;
  v6[61] = v34;
  v35 = v5[27] + v34;
  v6[62] = v35;
  v36 = v5[28] + v35;
  v6[63] = v36;
  v37 = v5[29] + v36;
  v6[64] = v37;
  v38 = v5[30] + v37;
  v6[65] = v38;
  v39 = v5[31] + v38;
  v6[66] = v39;
  v40 = v5[32] + v39;
  v6[67] = v40;
  v284 = v5[33] + v40;
  v6[68] = v284;
  v41 = (*(a1 + *v3 + 24) + (a2[21] + a2[22] * a3));
  v42 = v41[3];
  v43 = v42 >> 3;
  v44 = v42 >> 8;
  v283 = v41[3];
  v45 = v42 >> 6;
  v46 = v41[2];
  v47 = (v41[1] >> 12) & 0xFFFFFF8F | (16 * (v43 & 7));
  if (v47 > 0x41)
  {
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v48 = dword_29D2F4E40[v47];
    v49 = dword_29D2F4F48[v47] << 32;
  }

  v282 = v5[34];
  v288 = v45 | (v44 << 32);
  v285 = v46;
  v50 = 0uLL;
  switch((v46 >> 2))
  {
    case 1u:
      v51 = 0;
      v50 = xmmword_29D2F1F00;
      goto LABEL_251;
    case 2u:
      v51 = 0;
      v50 = xmmword_29D2F1B10;
      goto LABEL_251;
    case 3u:
      v51 = 0;
      v50 = xmmword_29D2F1B30;
      goto LABEL_251;
    case 4u:
      v51 = 0;
      v50 = xmmword_29D2F1F10;
      goto LABEL_251;
    case 5u:
      v51 = 0;
      v50 = xmmword_29D2F1B20;
      goto LABEL_251;
    case 6u:
      v51 = 0;
      v50 = xmmword_29D2F1B00;
      goto LABEL_251;
    case 7u:
      v51 = 0;
      v50 = xmmword_29D2F1AF0;
      goto LABEL_251;
    case 8u:
      v51 = 0;
      v50 = xmmword_29D2F1AE0;
      goto LABEL_251;
    case 9u:
      v51 = 0;
      v50 = xmmword_29D2F1AD0;
      goto LABEL_251;
    case 0xAu:
      v51 = 0;
      v50 = xmmword_29D2F1AC0;
      goto LABEL_251;
    case 0xBu:
      v51 = 0;
      v50 = xmmword_29D2F1AB0;
      goto LABEL_251;
    case 0xCu:
      v51 = 0;
      v50 = xmmword_29D2F1AA0;
      goto LABEL_251;
    case 0xDu:
      v51 = 0;
      v50 = xmmword_29D2F1A90;
      goto LABEL_251;
    case 0xEu:
      v51 = 0;
      v50 = xmmword_29D2F1A80;
      goto LABEL_251;
    case 0xFu:
      v51 = 0;
      v50 = xmmword_29D2F1A70;
      goto LABEL_251;
    case 0x10u:
      v51 = 0;
      v50 = xmmword_29D2F1A60;
      goto LABEL_251;
    case 0x11u:
      v51 = 0;
      v50 = xmmword_29D2F1A50;
      goto LABEL_251;
    case 0x12u:
      v51 = 0;
      v50 = xmmword_29D2F1A40;
      goto LABEL_251;
    case 0x13u:
      v51 = 0;
      v50 = xmmword_29D2F1A30;
      goto LABEL_251;
    case 0x14u:
      v51 = 0;
      v50 = xmmword_29D2F1A20;
      goto LABEL_251;
    case 0x15u:
      v51 = 0;
      v50 = xmmword_29D2F1A10;
      goto LABEL_251;
    case 0x16u:
      v51 = 0;
      v50 = xmmword_29D2F1A00;
      goto LABEL_251;
    case 0x17u:
      v51 = 0;
      v50 = xmmword_29D2F19F0;
      goto LABEL_251;
    case 0x18u:
      v51 = 0;
      v50 = xmmword_29D2F19E0;
      goto LABEL_251;
    case 0x19u:
      v51 = 0;
      v50 = xmmword_29D2F19D0;
      goto LABEL_251;
    case 0x1Au:
      v51 = 0;
      v50 = xmmword_29D2F19C0;
      goto LABEL_251;
    case 0x1Bu:
      v51 = 0;
      v50 = xmmword_29D2F17E0;
      goto LABEL_251;
    case 0x1Cu:
      v51 = 0;
      v50 = xmmword_29D2F19B0;
      goto LABEL_251;
    case 0x1Du:
      v51 = 0;
      v50 = xmmword_29D2F19A0;
      goto LABEL_251;
    case 0x1Eu:
      v51 = 0;
      v50 = xmmword_29D2F1990;
      goto LABEL_251;
    case 0x1Fu:
      v51 = 0;
      v50 = xmmword_29D2F1980;
      goto LABEL_251;
    case 0x20u:
      v51 = 0;
      v50 = xmmword_29D2F1EF0;
      goto LABEL_251;
    case 0x21u:
      v51 = 0;
      v50 = xmmword_29D2F1EE0;
      goto LABEL_251;
    case 0x22u:
      v51 = 0;
      v50 = xmmword_29D2F1ED0;
      goto LABEL_251;
    case 0x23u:
      v51 = 0;
      v50 = xmmword_29D2F1EC0;
      goto LABEL_251;
    case 0x24u:
      v51 = 0;
      v50 = xmmword_29D2F1EB0;
      goto LABEL_251;
    case 0x25u:
      v51 = 0;
      v50 = xmmword_29D2F1EA0;
      goto LABEL_251;
    case 0x26u:
      v51 = 0;
      v50 = xmmword_29D2F1E90;
      goto LABEL_251;
    case 0x27u:
      v51 = 0;
      v50 = xmmword_29D2F1E80;
      goto LABEL_251;
    case 0x28u:
      v51 = 0;
      *&v50 = 0x100000001;
      *(&v50 + 1) = 0x100000001;
      goto LABEL_251;
    case 0x29u:
      v51 = 0;
      v50 = xmmword_29D2F1C40;
      goto LABEL_251;
    case 0x2Au:
      v51 = 0;
      v50 = xmmword_29D2F1E70;
      goto LABEL_251;
    case 0x2Bu:
      v51 = 0;
      v50 = xmmword_29D2F1C30;
      goto LABEL_251;
    case 0x2Cu:
      v51 = 0;
      v50 = xmmword_29D2F1C20;
      goto LABEL_251;
    case 0x2Du:
      v51 = 0;
      v50 = xmmword_29D2F1E60;
      goto LABEL_251;
    case 0x2Eu:
      v51 = 0;
      v50 = xmmword_29D2F1E50;
      goto LABEL_251;
    case 0x2Fu:
      v51 = 0;
      v50 = xmmword_29D2F1E40;
      goto LABEL_251;
    case 0x30u:
      v51 = 0;
      v50 = xmmword_29D2F1E30;
      goto LABEL_251;
    case 0x31u:
      v51 = 0;
      v50 = xmmword_29D2F1C10;
      goto LABEL_251;
    case 0x32u:
      v51 = 0;
      v50 = xmmword_29D2F1C00;
      goto LABEL_251;
    case 0x33u:
      v51 = 0;
      v50 = xmmword_29D2F1E20;
      goto LABEL_251;
    case 0x34u:
      v51 = 0;
      v50 = xmmword_29D2F1BF0;
      goto LABEL_251;
    case 0x35u:
      v51 = 0;
      v50 = xmmword_29D2F1BE0;
      goto LABEL_251;
    case 0x36u:
      v51 = 0;
      v50 = xmmword_29D2F1E10;
      goto LABEL_251;
    case 0x37u:
      v51 = 0;
      v50 = xmmword_29D2F1E00;
      goto LABEL_251;
    case 0x38u:
      v51 = 0;
      v50 = xmmword_29D2F1DF0;
      goto LABEL_251;
    case 0x39u:
      v51 = 0;
      v50 = xmmword_29D2F1DE0;
      goto LABEL_251;
    case 0x3Au:
      v51 = 0;
      v50 = xmmword_29D2F1DD0;
      goto LABEL_251;
    case 0x3Bu:
      v51 = 0;
      v50 = xmmword_29D2F1DC0;
      goto LABEL_251;
    case 0x3Cu:
      v51 = 0;
      v50 = xmmword_29D2F1DB0;
      goto LABEL_251;
    case 0x3Du:
      v51 = 0;
      v50 = xmmword_29D2F1DA0;
      goto LABEL_251;
    case 0x3Eu:
      v51 = 0;
      v50 = xmmword_29D2F1D90;
      goto LABEL_251;
    case 0x3Fu:
      v51 = 0;
      v50 = xmmword_29D2F1D80;
      goto LABEL_251;
    case 0x40u:
      v51 = 0;
      v50 = xmmword_29D2F1D70;
      goto LABEL_251;
    case 0x41u:
      v51 = 0;
      v50 = xmmword_29D2F1D60;
      goto LABEL_251;
    case 0x42u:
      v51 = 0;
      v50 = xmmword_29D2F1D50;
      goto LABEL_251;
    case 0x43u:
      v51 = 0;
      v50 = xmmword_29D2F1BD0;
      goto LABEL_251;
    case 0x44u:
      v51 = 0;
      v50 = xmmword_29D2F1BC0;
      goto LABEL_251;
    case 0x45u:
      v51 = 0;
      v50 = xmmword_29D2F1D40;
      goto LABEL_251;
    case 0x46u:
      v51 = 0;
      v50 = xmmword_29D2F1BB0;
      goto LABEL_251;
    case 0x47u:
      v51 = 0;
      v50 = xmmword_29D2F1BA0;
      goto LABEL_251;
    case 0x48u:
      v51 = 0;
      v50 = xmmword_29D2F1D30;
      goto LABEL_251;
    case 0x49u:
      v51 = 0;
      v50 = xmmword_29D2F1D20;
      goto LABEL_251;
    case 0x4Au:
      v51 = 0;
      v50 = xmmword_29D2F1D10;
      goto LABEL_251;
    case 0x4Bu:
      v51 = 0;
      v50 = xmmword_29D2F1D00;
      goto LABEL_251;
    case 0x4Cu:
      v51 = 0;
      v50 = xmmword_29D2F1B90;
      goto LABEL_251;
    case 0x4Du:
      v51 = 0;
      v50 = xmmword_29D2F1B80;
      goto LABEL_251;
    case 0x4Eu:
      v51 = 0;
      v50 = xmmword_29D2F1CF0;
      goto LABEL_251;
    case 0x4Fu:
      v51 = 0;
      v50 = xmmword_29D2F1B70;
      goto LABEL_251;
    case 0x50u:
      v51 = 0;
      *&v50 = 0x200000002;
      *(&v50 + 1) = 0x200000002;
      goto LABEL_251;
    case 0x51u:
      v52 = 0;
      goto LABEL_242;
    case 0x52u:
      v52 = 0;
      v50 = xmmword_29D2F1F10;
      goto LABEL_242;
    case 0x53u:
      v52 = 0;
      v50 = xmmword_29D2F1F00;
      goto LABEL_242;
    case 0x54u:
      v52 = 0;
      v50 = xmmword_29D2F1B30;
      goto LABEL_242;
    case 0x55u:
      v52 = 0;
      v50 = xmmword_29D2F1B20;
      goto LABEL_242;
    case 0x56u:
      v52 = 0;
      v50 = xmmword_29D2F1B10;
      goto LABEL_242;
    case 0x57u:
      v52 = 0;
      v50 = xmmword_29D2F1B00;
      goto LABEL_242;
    case 0x58u:
      v52 = 0;
      v50 = xmmword_29D2F1AF0;
      goto LABEL_242;
    case 0x59u:
      v52 = 0;
      v50 = xmmword_29D2F1AE0;
      goto LABEL_242;
    case 0x5Au:
      v52 = 0;
      v50 = xmmword_29D2F1AD0;
      goto LABEL_242;
    case 0x5Bu:
      v52 = 0;
      v50 = xmmword_29D2F1AC0;
      goto LABEL_242;
    case 0x5Cu:
      v52 = 0;
      v50 = xmmword_29D2F1AB0;
      goto LABEL_242;
    case 0x5Du:
      v52 = 0;
      v50 = xmmword_29D2F1AA0;
      goto LABEL_242;
    case 0x5Eu:
      v52 = 0;
      v50 = xmmword_29D2F1A90;
      goto LABEL_242;
    case 0x5Fu:
      v52 = 0;
      v50 = xmmword_29D2F1A80;
      goto LABEL_242;
    case 0x60u:
      v52 = 0;
      v50 = xmmword_29D2F1A70;
      goto LABEL_242;
    case 0x61u:
      v52 = 0;
      v50 = xmmword_29D2F1A60;
      goto LABEL_242;
    case 0x62u:
      v52 = 0;
      v50 = xmmword_29D2F1A50;
      goto LABEL_242;
    case 0x63u:
      v52 = 0;
      v50 = xmmword_29D2F1A40;
      goto LABEL_242;
    case 0x64u:
      v52 = 0;
      v50 = xmmword_29D2F1A30;
      goto LABEL_242;
    case 0x65u:
      v52 = 0;
      v50 = xmmword_29D2F1A20;
      goto LABEL_242;
    case 0x66u:
      v52 = 0;
      v50 = xmmword_29D2F1A10;
      goto LABEL_242;
    case 0x67u:
      v52 = 0;
      v50 = xmmword_29D2F1A00;
      goto LABEL_242;
    case 0x68u:
      v52 = 0;
      v50 = xmmword_29D2F19F0;
      goto LABEL_242;
    case 0x69u:
      v52 = 0;
      v50 = xmmword_29D2F19E0;
      goto LABEL_242;
    case 0x6Au:
      v52 = 0;
      v50 = xmmword_29D2F19D0;
      goto LABEL_242;
    case 0x6Bu:
      v52 = 0;
      v50 = xmmword_29D2F19C0;
      goto LABEL_242;
    case 0x6Cu:
      v52 = 0;
      v50 = xmmword_29D2F17E0;
      goto LABEL_242;
    case 0x6Du:
      v52 = 0;
      v50 = xmmword_29D2F19B0;
      goto LABEL_242;
    case 0x6Eu:
      v52 = 0;
      v50 = xmmword_29D2F19A0;
      goto LABEL_242;
    case 0x6Fu:
      v52 = 0;
      v50 = xmmword_29D2F1990;
      goto LABEL_242;
    case 0x70u:
      v52 = 0;
      v50 = xmmword_29D2F1980;
      goto LABEL_242;
    case 0x71u:
      v52 = 0;
      v50 = xmmword_29D2F1EF0;
      goto LABEL_242;
    case 0x72u:
      v52 = 0;
      v50 = xmmword_29D2F1EE0;
      goto LABEL_242;
    case 0x73u:
      v52 = 0;
      v50 = xmmword_29D2F1ED0;
      goto LABEL_242;
    case 0x74u:
      v52 = 0;
      v50 = xmmword_29D2F1EC0;
      goto LABEL_242;
    case 0x75u:
      v52 = 0;
      v50 = xmmword_29D2F1EB0;
      goto LABEL_242;
    case 0x76u:
      v52 = 0;
      v50 = xmmword_29D2F1EA0;
      goto LABEL_242;
    case 0x77u:
      v52 = 0;
      v50 = xmmword_29D2F1E90;
      goto LABEL_242;
    case 0x78u:
      v52 = 0;
      v50 = xmmword_29D2F1E80;
      goto LABEL_242;
    case 0x79u:
      v52 = 0;
      *&v50 = 0x100000001;
      *(&v50 + 1) = 0x100000001;
      goto LABEL_242;
    case 0x7Au:
      v52 = 0;
      v50 = xmmword_29D2F1C40;
      goto LABEL_242;
    case 0x7Bu:
      v52 = 0;
      v50 = xmmword_29D2F1E70;
      goto LABEL_242;
    case 0x7Cu:
      v52 = 0;
      v50 = xmmword_29D2F1C30;
      goto LABEL_242;
    case 0x7Du:
      v52 = 0;
      v50 = xmmword_29D2F1C20;
      goto LABEL_242;
    case 0x7Eu:
      v52 = 0;
      v50 = xmmword_29D2F1E60;
      goto LABEL_242;
    case 0x7Fu:
      v52 = 0;
      v50 = xmmword_29D2F1E50;
      goto LABEL_242;
    case 0x80u:
      v52 = 0;
      v50 = xmmword_29D2F1E40;
      goto LABEL_242;
    case 0x81u:
      v52 = 0;
      v50 = xmmword_29D2F1E30;
      goto LABEL_242;
    case 0x82u:
      v52 = 0;
      v50 = xmmword_29D2F1C10;
      goto LABEL_242;
    case 0x83u:
      v52 = 0;
      v50 = xmmword_29D2F1C00;
      goto LABEL_242;
    case 0x84u:
      v52 = 0;
      v50 = xmmword_29D2F1E20;
      goto LABEL_242;
    case 0x85u:
      v52 = 0;
      v50 = xmmword_29D2F1BF0;
      goto LABEL_242;
    case 0x86u:
      v52 = 0;
      v50 = xmmword_29D2F1BE0;
      goto LABEL_242;
    case 0x87u:
      v52 = 0;
      v50 = xmmword_29D2F1E10;
      goto LABEL_242;
    case 0x88u:
      v52 = 0;
      v50 = xmmword_29D2F1E00;
      goto LABEL_242;
    case 0x89u:
      v52 = 0;
      v50 = xmmword_29D2F1DF0;
      goto LABEL_242;
    case 0x8Au:
      v52 = 0;
      v50 = xmmword_29D2F1DE0;
      goto LABEL_242;
    case 0x8Bu:
      v52 = 0;
      v50 = xmmword_29D2F1DD0;
      goto LABEL_242;
    case 0x8Cu:
      v52 = 0;
      v50 = xmmword_29D2F1DC0;
      goto LABEL_242;
    case 0x8Du:
      v52 = 0;
      v50 = xmmword_29D2F1DB0;
      goto LABEL_242;
    case 0x8Eu:
      v52 = 0;
      v50 = xmmword_29D2F1DA0;
      goto LABEL_242;
    case 0x8Fu:
      v52 = 0;
      v50 = xmmword_29D2F1D90;
      goto LABEL_242;
    case 0x90u:
      v52 = 0;
      v50 = xmmword_29D2F1D80;
      goto LABEL_242;
    case 0x91u:
      v52 = 0;
      v50 = xmmword_29D2F1D70;
      goto LABEL_242;
    case 0x92u:
      v52 = 0;
      v50 = xmmword_29D2F1D60;
      goto LABEL_242;
    case 0x93u:
      v52 = 0;
      v50 = xmmword_29D2F1D50;
      goto LABEL_242;
    case 0x94u:
      v52 = 0;
      v50 = xmmword_29D2F1BD0;
      goto LABEL_242;
    case 0x95u:
      v52 = 0;
      v50 = xmmword_29D2F1BC0;
      goto LABEL_242;
    case 0x96u:
      v52 = 0;
      v50 = xmmword_29D2F1D40;
      goto LABEL_242;
    case 0x97u:
      v52 = 0;
      v50 = xmmword_29D2F1BB0;
      goto LABEL_242;
    case 0x98u:
      v52 = 0;
      v50 = xmmword_29D2F1BA0;
      goto LABEL_242;
    case 0x99u:
      v52 = 0;
      v50 = xmmword_29D2F1D30;
      goto LABEL_242;
    case 0x9Au:
      v52 = 0;
      v50 = xmmword_29D2F1D20;
      goto LABEL_242;
    case 0x9Bu:
      v52 = 0;
      v50 = xmmword_29D2F1D10;
      goto LABEL_242;
    case 0x9Cu:
      v52 = 0;
      v50 = xmmword_29D2F1D00;
      goto LABEL_242;
    case 0x9Du:
      v52 = 0;
      v50 = xmmword_29D2F1B90;
      goto LABEL_242;
    case 0x9Eu:
      v52 = 0;
      v50 = xmmword_29D2F1B80;
      goto LABEL_242;
    case 0x9Fu:
      v52 = 0;
      v50 = xmmword_29D2F1CF0;
      goto LABEL_242;
    case 0xA0u:
      v52 = 0;
      v50 = xmmword_29D2F1B70;
      goto LABEL_242;
    case 0xA1u:
      v52 = 0;
      *&v50 = 0x200000002;
      *(&v50 + 1) = 0x200000002;
LABEL_242:
      v51 = 1;
      goto LABEL_252;
    case 0xA2u:
      v53 = 0;
      goto LABEL_208;
    case 0xA3u:
      v53 = 0;
      v50 = xmmword_29D2F1F10;
      goto LABEL_208;
    case 0xA4u:
      v53 = 0;
      v50 = xmmword_29D2F1F00;
      goto LABEL_208;
    case 0xA5u:
      v53 = 0;
      v50 = xmmword_29D2F1B30;
      goto LABEL_208;
    case 0xA6u:
      v53 = 0;
      v50 = xmmword_29D2F1B20;
      goto LABEL_208;
    case 0xA7u:
      v53 = 0;
      v50 = xmmword_29D2F1B10;
      goto LABEL_208;
    case 0xA8u:
      v53 = 0;
      v50 = xmmword_29D2F1B00;
      goto LABEL_208;
    case 0xA9u:
      v53 = 0;
      v50 = xmmword_29D2F1AF0;
      goto LABEL_208;
    case 0xAAu:
      v53 = 0;
      v50 = xmmword_29D2F1AE0;
      goto LABEL_208;
    case 0xABu:
      v53 = 0;
      v50 = xmmword_29D2F1AD0;
      goto LABEL_208;
    case 0xACu:
      v53 = 0;
      v50 = xmmword_29D2F1AC0;
      goto LABEL_208;
    case 0xADu:
      v53 = 0;
      v50 = xmmword_29D2F1AB0;
      goto LABEL_208;
    case 0xAEu:
      v53 = 0;
      v50 = xmmword_29D2F1AA0;
      goto LABEL_208;
    case 0xAFu:
      v53 = 0;
      v50 = xmmword_29D2F1A90;
      goto LABEL_208;
    case 0xB0u:
      v53 = 0;
      v50 = xmmword_29D2F1A80;
      goto LABEL_208;
    case 0xB1u:
      v53 = 0;
      v50 = xmmword_29D2F1A70;
      goto LABEL_208;
    case 0xB2u:
      v53 = 0;
      v50 = xmmword_29D2F1A60;
      goto LABEL_208;
    case 0xB3u:
      v53 = 0;
      v50 = xmmword_29D2F1A50;
      goto LABEL_208;
    case 0xB4u:
      v53 = 0;
      v50 = xmmword_29D2F1A40;
      goto LABEL_208;
    case 0xB5u:
      v53 = 0;
      v50 = xmmword_29D2F1A30;
      goto LABEL_208;
    case 0xB6u:
      v53 = 0;
      v50 = xmmword_29D2F1A20;
      goto LABEL_208;
    case 0xB7u:
      v53 = 0;
      v50 = xmmword_29D2F1A10;
      goto LABEL_208;
    case 0xB8u:
      v53 = 0;
      v50 = xmmword_29D2F1A00;
      goto LABEL_208;
    case 0xB9u:
      v53 = 0;
      v50 = xmmword_29D2F19F0;
      goto LABEL_208;
    case 0xBAu:
      v53 = 0;
      v50 = xmmword_29D2F19E0;
      goto LABEL_208;
    case 0xBBu:
      v53 = 0;
      v50 = xmmword_29D2F19D0;
      goto LABEL_208;
    case 0xBCu:
      v53 = 0;
      v50 = xmmword_29D2F19C0;
      goto LABEL_208;
    case 0xBDu:
      v53 = 0;
      v50 = xmmword_29D2F17E0;
      goto LABEL_208;
    case 0xBEu:
      v53 = 0;
      v50 = xmmword_29D2F19B0;
      goto LABEL_208;
    case 0xBFu:
      v53 = 0;
      v50 = xmmword_29D2F19A0;
      goto LABEL_208;
    case 0xC0u:
      v53 = 0;
      v50 = xmmword_29D2F1990;
      goto LABEL_208;
    case 0xC1u:
      v53 = 0;
      v50 = xmmword_29D2F1980;
      goto LABEL_208;
    case 0xC2u:
      v53 = 0;
      v50 = xmmword_29D2F1EF0;
      goto LABEL_208;
    case 0xC3u:
      v53 = 0;
      v50 = xmmword_29D2F1EE0;
      goto LABEL_208;
    case 0xC4u:
      v53 = 0;
      v50 = xmmword_29D2F1ED0;
      goto LABEL_208;
    case 0xC5u:
      v53 = 0;
      v50 = xmmword_29D2F1EC0;
      goto LABEL_208;
    case 0xC6u:
      v53 = 0;
      v50 = xmmword_29D2F1EB0;
      goto LABEL_208;
    case 0xC7u:
      v53 = 0;
      v50 = xmmword_29D2F1EA0;
      goto LABEL_208;
    case 0xC8u:
      v53 = 0;
      v50 = xmmword_29D2F1E90;
      goto LABEL_208;
    case 0xC9u:
      v53 = 0;
      v50 = xmmword_29D2F1E80;
      goto LABEL_208;
    case 0xCAu:
      v53 = 0;
      *&v50 = 0x100000001;
      *(&v50 + 1) = 0x100000001;
      goto LABEL_208;
    case 0xCBu:
      v53 = 0;
      v50 = xmmword_29D2F1C40;
      goto LABEL_208;
    case 0xCCu:
      v53 = 0;
      v50 = xmmword_29D2F1E70;
      goto LABEL_208;
    case 0xCDu:
      v53 = 0;
      v50 = xmmword_29D2F1C30;
      goto LABEL_208;
    case 0xCEu:
      v53 = 0;
      v50 = xmmword_29D2F1C20;
      goto LABEL_208;
    case 0xCFu:
      v53 = 0;
      v50 = xmmword_29D2F1E60;
      goto LABEL_208;
    case 0xD0u:
      v53 = 0;
      v50 = xmmword_29D2F1E50;
LABEL_208:
      v51 = 1;
      v52 = 1;
      break;
    case 0xD1u:
      v53 = 0;
      v50 = xmmword_29D2F1E40;
      goto LABEL_185;
    case 0xD2u:
      v53 = 0;
      v50 = xmmword_29D2F1E30;
      goto LABEL_185;
    case 0xD3u:
      v53 = 0;
      v50 = xmmword_29D2F1C10;
      goto LABEL_185;
    case 0xD4u:
      v53 = 0;
      v50 = xmmword_29D2F1C00;
      goto LABEL_185;
    case 0xD5u:
      v53 = 0;
      v50 = xmmword_29D2F1E20;
      goto LABEL_185;
    case 0xD6u:
      v53 = 0;
      v50 = xmmword_29D2F1BF0;
      goto LABEL_185;
    case 0xD7u:
      v53 = 0;
      v50 = xmmword_29D2F1BE0;
      goto LABEL_185;
    case 0xD8u:
      v53 = 0;
      v50 = xmmword_29D2F1E10;
      goto LABEL_185;
    case 0xD9u:
      v53 = 0;
      v50 = xmmword_29D2F1E00;
      goto LABEL_185;
    case 0xDAu:
      v53 = 0;
      v50 = xmmword_29D2F1DF0;
      goto LABEL_185;
    case 0xDBu:
      v53 = 0;
      v50 = xmmword_29D2F1DE0;
      goto LABEL_185;
    case 0xDCu:
      v53 = 0;
      v50 = xmmword_29D2F1DD0;
      goto LABEL_185;
    case 0xDDu:
      v53 = 0;
      v50 = xmmword_29D2F1DC0;
      goto LABEL_185;
    case 0xDEu:
      v53 = 0;
      v50 = xmmword_29D2F1DB0;
      goto LABEL_185;
    case 0xDFu:
      v53 = 0;
      v50 = xmmword_29D2F1DA0;
      goto LABEL_185;
    case 0xE0u:
      v53 = 0;
      v50 = xmmword_29D2F1D90;
      goto LABEL_185;
    case 0xE1u:
      v53 = 0;
      v50 = xmmword_29D2F1D80;
      goto LABEL_185;
    case 0xE2u:
      v53 = 0;
      v50 = xmmword_29D2F1D70;
      goto LABEL_185;
    case 0xE3u:
      v53 = 0;
      v50 = xmmword_29D2F1D60;
      goto LABEL_185;
    case 0xE4u:
      v53 = 0;
      v50 = xmmword_29D2F1D50;
      goto LABEL_185;
    case 0xE5u:
      v53 = 0;
      v50 = xmmword_29D2F1BD0;
      goto LABEL_185;
    case 0xE6u:
      v53 = 0;
      v50 = xmmword_29D2F1BC0;
      goto LABEL_185;
    case 0xE7u:
      v53 = 0;
      v50 = xmmword_29D2F1D40;
      goto LABEL_185;
    case 0xE8u:
      v53 = 0;
      v50 = xmmword_29D2F1BB0;
      goto LABEL_185;
    case 0xE9u:
      v53 = 0;
      v50 = xmmword_29D2F1BA0;
      goto LABEL_185;
    case 0xEAu:
      v53 = 0;
      v50 = xmmword_29D2F1D30;
      goto LABEL_185;
    case 0xEBu:
      v53 = 0;
      v50 = xmmword_29D2F1D20;
      goto LABEL_185;
    case 0xECu:
      v53 = 0;
      v50 = xmmword_29D2F1D10;
      goto LABEL_185;
    case 0xEDu:
      v53 = 0;
      v50 = xmmword_29D2F1D00;
      goto LABEL_185;
    case 0xEEu:
      v53 = 0;
      v50 = xmmword_29D2F1B90;
      goto LABEL_185;
    case 0xEFu:
      v53 = 0;
      v50 = xmmword_29D2F1B80;
      goto LABEL_185;
    case 0xF0u:
      v53 = 0;
      v50 = xmmword_29D2F1CF0;
      goto LABEL_185;
    case 0xF1u:
      v53 = 0;
      v50 = xmmword_29D2F1B70;
      goto LABEL_185;
    case 0xF2u:
      v53 = 0;
      *&v50 = 0x200000002;
      *(&v50 + 1) = 0x200000002;
LABEL_185:
      v52 = 1;
      v51 = 1;
      break;
    default:
      v51 = 0;
LABEL_251:
      v52 = 1;
LABEL_252:
      v53 = 1;
      break;
  }

  v54 = v50;
  v55 = DWORD1(v50);
  v56 = DWORD2(v50);
  v57 = HIDWORD(v50);
  v58 = v49 | v48;
  v59 = v5[37];
  v357 = *(a1 + *v3 + 24);
  v60 = v357 + (a2[27] + a2[28] * a3);
  v62 = *(v60 + 24);
  v61 = *(v60 + 28);
  if (v62 * 4 * v59 * v61 && (v63 = 1 << -__clz(v62 - 1), v64 = -__clz(v61 - 1), (v63 << v64) * 4 * v59))
  {
    v65 = DWORD2(v50);
    v66 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v59, 1, v63, 1 << (v64 & 0x1F));
    v56 = v65;
    v58 = v66;
    v288 = v67;
    v281 = 16;
  }

  else
  {
    v281 = 0;
  }

  v68 = HIDWORD(v58);
  v69 = v58 == 9;
  v70 = HIDWORD(v58) == 1 && v58 == 2;
  v352 = v70;
  v71 = v68 == 1 && v58 == 3;
  v353 = v71;
  v72 = v68 == 1 && v58 == 4;
  v313 = v72;
  v73 = v68 == 1 && v58 == 5;
  v306 = v73;
  v74 = v68 == 1 && v58 == 6;
  v300 = v74;
  v75 = v68 == 1 && v58 == 7;
  v295 = v75;
  v76 = v68 == 1 && v58 == 8;
  v291 = v76;
  if (v68 != 1)
  {
    v69 = 0;
  }

  v287 = v69;
  v77 = v68 == 1 && v58 == 1;
  v343 = v77;
  v78 = v68 == 1 && v58 == 0;
  v279 = v78;
  if (!v68)
  {
    LOBYTE(v78) = v58 == 0;
  }

  v341 = v78;
  v79 = v58 == 9 && v68 == 0;
  v289 = v79;
  v80 = v58 == 8 && v68 == 0;
  v292 = v80;
  v81 = v58 == 7 && v68 == 0;
  v296 = v81;
  v82 = v58 == 6 && v68 == 0;
  v301 = v82;
  v83 = v58 == 5 && v68 == 0;
  v307 = v83;
  v84 = v58 == 4 && v68 == 0;
  v314 = v84;
  v85 = v58 == 3 && v68 == 0;
  v351 = v85;
  v86 = v58 == 2 && v68 == 0;
  v358 = v86;
  v87 = v58 == 1 && v68 == 0;
  v340 = v87;
  v88 = v68 == 10 && v58 == 0;
  v339 = v88;
  v89 = v68 == 9 && v58 == 0;
  v368 = v89;
  v90 = v68 == 9 && v58 == 1;
  v359 = v90;
  v91 = v68 == 8 && v58 == 0;
  v369 = v91;
  v92 = v68 == 8 && v58 == 1;
  v360 = v92;
  v93 = v68 == 8 && v58 == 2;
  v350 = v93;
  v94 = v68 == 7 && v58 == 0;
  v370 = v94;
  v95 = v68 == 7 && v58 == 1;
  v361 = v95;
  v96 = v68 == 7 && v58 == 2;
  v349 = v96;
  v97 = v68 == 7 && v58 == 3;
  v315 = v97;
  v98 = v68 == 6 && v58 == 0;
  v371 = v98;
  v99 = v68 == 6 && v58 == 1;
  v362 = v99;
  v100 = v68 == 6 && v58 == 2;
  v348 = v100;
  v101 = v68 == 6 && v58 == 3;
  v316 = v101;
  v102 = v68 == 6 && v58 == 4;
  v308 = v102;
  v103 = v68 == 5 && v58 == 0;
  v372 = v103;
  v104 = v68 == 5 && v58 == 1;
  v363 = v104;
  v105 = v68 == 5 && v58 == 2;
  v347 = v105;
  v106 = v68 == 5 && v58 == 3;
  v318 = v106;
  v107 = v68 == 5 && v58 == 4;
  v309 = v107;
  v108 = v68 == 5 && v58 == 5;
  v302 = v108;
  v109 = v68 == 4 && v58 == 0;
  v373 = v109;
  v110 = v68 == 4 && v58 == 1;
  v364 = v110;
  v111 = v68 == 4 && v58 == 2;
  v346 = v111;
  v112 = v68 == 4 && v58 == 3;
  v317 = v112;
  v113 = v68 == 4 && v58 == 4;
  v310 = v113;
  v114 = v68 == 4 && v58 == 5;
  v303 = v114;
  v115 = v68 == 4 && v58 == 6;
  v297 = v115;
  v116 = v68 == 3 && v58 == 0;
  v374 = v116;
  v117 = v68 == 3 && v58 == 1;
  v365 = v117;
  v118 = v68 == 3 && v58 == 2;
  v345 = v118;
  v119 = v68 == 3 && v58 == 3;
  v320 = v119;
  v120 = v68 == 3 && v58 == 4;
  v311 = v120;
  v121 = v68 == 3 && v58 == 5;
  v304 = v121;
  v122 = v68 == 3 && v58 == 6;
  v298 = v122;
  v123 = v68 == 3 && v58 == 7;
  v293 = v123;
  v124 = v68 == 2 && v58 == 0;
  v375 = v124;
  v125 = v68 == 2 && v58 == 1;
  v366 = v125;
  v126 = v68 == 2 && v58 == 2;
  v344 = v126;
  v127 = v68 == 2 && v58 == 3;
  v319 = v127;
  v128 = v68 == 2 && v58 == 4;
  v312 = v128;
  v129 = v68 == 2 && v58 == 5;
  v305 = v129;
  v130 = v68 == 2 && v58 == 6;
  v299 = v130;
  v131 = v68 == 2 && v58 == 7;
  v294 = v131;
  v132 = v68 == 2 && v58 == 8;
  v290 = v132;
  v133 = v58 == 10 && v68 == 0;
  v286 = v133;
  if (v54)
  {
    v134 = 0;
  }

  else
  {
    v134 = v55 == 1;
  }

  if (v54)
  {
    v135 = 0;
  }

  else
  {
    v135 = v55 == 2;
  }

  v136 = v54 == 1 && v55 == 0;
  v276 = v136;
  v277 = v134;
  v137 = v54 == 1 && v55 == 1;
  v274 = v135;
  v275 = v137;
  v138 = v54 == 1 && v55 == 2;
  v139 = v54 == 2 && v55 == 0;
  v280 = v139;
  v140 = v54 == 2 && v55 == 1;
  v278 = v140;
  v141 = v54 == 2 && v55 == 2;
  v272 = v141;
  v273 = v138;
  if (v57)
  {
    v142 = 1;
  }

  else
  {
    v142 = v51;
  }

  if (v57)
  {
    v143 = 1;
  }

  else
  {
    v143 = v52;
  }

  if (v57)
  {
    v144 = 1;
  }

  else
  {
    v144 = v53;
  }

  if (v57 == 1)
  {
    v145 = v51;
  }

  else
  {
    v145 = 1;
  }

  if (v57 == 1)
  {
    v146 = v52;
  }

  else
  {
    v146 = 1;
  }

  if (v57 == 1)
  {
    v147 = v53;
  }

  else
  {
    v147 = 1;
  }

  v148 = v57 == 2;
  v149 = v55 | v54;
  if (v148)
  {
    v150 = v51;
  }

  else
  {
    v150 = 1;
  }

  if (v148)
  {
    v151 = v52;
  }

  else
  {
    v151 = 1;
  }

  if (v148)
  {
    v152 = v53;
  }

  else
  {
    v152 = 1;
  }

  v153 = v56 == 0;
  v154 = v56;
  if (v56)
  {
    v155 = 1;
  }

  else
  {
    v155 = v142;
  }

  if (v153)
  {
    v156 = v145;
  }

  else
  {
    v156 = 1;
  }

  if (v153)
  {
    v157 = v150;
  }

  else
  {
    v157 = 1;
  }

  if (v153)
  {
    v158 = v143;
  }

  else
  {
    v158 = 1;
  }

  if (v153)
  {
    v159 = v146;
  }

  else
  {
    v159 = 1;
  }

  v323 = v159;
  if (v153)
  {
    v160 = v151;
  }

  else
  {
    v160 = 1;
  }

  v327 = v160;
  if (v153)
  {
    v161 = v144;
  }

  else
  {
    v161 = 1;
  }

  v331 = v161;
  if (v153)
  {
    v162 = v147;
  }

  else
  {
    v162 = 1;
  }

  v335 = v162;
  if (v153)
  {
    v163 = v152;
  }

  else
  {
    v163 = 1;
  }

  v337 = v163;
  if (v154 == 1)
  {
    v164 = v142;
  }

  else
  {
    v164 = 1;
  }

  if (v154 == 1)
  {
    v165 = v145;
  }

  else
  {
    v165 = 1;
  }

  if (v154 == 1)
  {
    v166 = v150;
  }

  else
  {
    v166 = 1;
  }

  if (v154 == 1)
  {
    v167 = v143;
  }

  else
  {
    v167 = 1;
  }

  if (v154 == 1)
  {
    v168 = v146;
  }

  else
  {
    v168 = 1;
  }

  if (v154 == 1)
  {
    v169 = v151;
  }

  else
  {
    v169 = 1;
  }

  if (v154 == 1)
  {
    v170 = v144;
  }

  else
  {
    v170 = 1;
  }

  v325 = v170;
  if (v154 == 1)
  {
    v171 = v147;
  }

  else
  {
    v171 = 1;
  }

  v329 = v171;
  if (v154 == 1)
  {
    v172 = v152;
  }

  else
  {
    v172 = 1;
  }

  v333 = v172;
  v173 = v154 == 2;
  if (v154 == 2)
  {
    v174 = v151;
  }

  else
  {
    v142 = 1;
    v145 = 1;
    v150 = 1;
    v143 = 1;
    v146 = 1;
    v174 = 1;
  }

  if (v173)
  {
    v175 = v147;
  }

  else
  {
    v144 = 1;
    v175 = 1;
  }

  v321 = v175;
  if (!v173)
  {
    v152 = 1;
  }

  v176 = v149 == 0;
  v354 = a2[21];
  v356 = a2[22];
  v177 = v155 ^ 1;
  v178 = v164 ^ 1;
  v179 = v142 ^ 1;
  v180 = v156 ^ 1;
  v181 = v165 ^ 1;
  v182 = v145 ^ 1;
  v183 = v166 ^ 1;
  v184 = v150 ^ 1;
  v185 = v158 ^ 1;
  v186 = v167 ^ 1;
  v187 = v143 ^ 1;
  v188 = v168 ^ 1;
  v189 = v146 ^ 1;
  v190 = v169 ^ 1;
  v191 = v174 ^ 1;
  v192 = v331 ^ 1;
  v193 = v325 ^ 1;
  v194 = v144 ^ 1;
  v195 = v335 ^ 1;
  v196 = v329 ^ 1;
  v197 = v321 ^ 1;
  v198 = v337 ^ 1;
  v199 = v333 ^ 1;
  v200 = v152 ^ 1;
  if (v176)
  {
    v201 = v177;
  }

  else
  {
    v201 = 0;
  }

  v334 = v201;
  v336 = v177;
  v338 = v178;
  if (v176)
  {
    v202 = v178;
  }

  else
  {
    v202 = 0;
  }

  v330 = v179;
  v332 = v202;
  if (v176)
  {
    result = v179;
  }

  else
  {
    result = 0;
  }

  v257 = v180;
  if (v176)
  {
    v204 = v180;
  }

  else
  {
    v204 = 0;
  }

  v260 = v181;
  v261 = v182;
  if (v176)
  {
    v205 = v181;
  }

  else
  {
    v205 = 0;
  }

  if (v176)
  {
    v206 = v182;
  }

  else
  {
    v206 = 0;
  }

  v255 = v204;
  v256 = v206;
  v262 = v157 ^ 1;
  if (v176)
  {
    v207 = v157 ^ 1;
  }

  else
  {
    v207 = 0;
  }

  if (v176)
  {
    v208 = v183;
  }

  else
  {
    v208 = 0;
  }

  if (v176)
  {
    v209 = v184;
  }

  else
  {
    v209 = 0;
  }

  v263 = v209;
  if (v176)
  {
    v210 = v185;
  }

  else
  {
    v210 = 0;
  }

  v265 = v210;
  if (v176)
  {
    v211 = v167 ^ 1;
  }

  else
  {
    v211 = 0;
  }

  v267 = v211;
  if (v176)
  {
    v212 = v187;
  }

  else
  {
    v212 = 0;
  }

  v269 = v212;
  v253 = v323 ^ 1;
  v254 = v188;
  if (v176)
  {
    v213 = v323 ^ 1;
  }

  else
  {
    v213 = 0;
  }

  v214 = v327 ^ 1;
  v215 = v190;
  v271 = v213;
  if (v176)
  {
    v216 = v188;
  }

  else
  {
    v216 = 0;
  }

  v324 = v216;
  if (v176)
  {
    v217 = v189;
  }

  else
  {
    v217 = 0;
  }

  v328 = v217;
  if (v176)
  {
    v218 = v214;
  }

  else
  {
    v218 = 0;
  }

  if (v176)
  {
    v219 = v190;
  }

  else
  {
    v219 = 0;
  }

  if (v176)
  {
    v220 = v191;
  }

  else
  {
    v220 = 0;
  }

  if (v176)
  {
    v221 = v192;
  }

  else
  {
    v221 = 0;
  }

  if (v176)
  {
    v222 = v325 ^ 1;
  }

  else
  {
    v222 = 0;
  }

  v264 = v222;
  v258 = v194;
  if (v176)
  {
    v223 = v194;
  }

  else
  {
    v223 = 0;
  }

  v268 = v223;
  v224 = v195;
  if (v176)
  {
    v225 = v195;
  }

  else
  {
    v225 = 0;
  }

  v270 = v225;
  if (v176)
  {
    v226 = v196;
  }

  else
  {
    v226 = 0;
  }

  v322 = v226;
  v227 = v197;
  if (v176)
  {
    v228 = v197;
  }

  else
  {
    v228 = 0;
  }

  v326 = v228;
  v229 = v198;
  if (v176)
  {
    v230 = v198;
  }

  else
  {
    v230 = 0;
  }

  v266 = v230;
  v259 = v199;
  if (v176)
  {
    v231 = v200;
  }

  else
  {
    v199 = 0;
    v231 = 0;
  }

  if (!v341 && !v375 && !v374 && !v373 && !v372 && !v371 && !v370 && !v369 && !v368 && !v339 && !v340 && !v343 && !v366 && !v365 && !v364 && !v363 && !v362 && !v361 && !v360 && !v359 && !v358 && !v352 && !v344 && !v345 && !v346 && !v347 && !v348 && !v349 && !v350 && !v351 && !v353 && !v319 && !v320 && !v317 && !v318 && !v316 && !v315 && !v314 && !v313 && !v312 && !v311 && !v310 && !v309 && !v308 && !v307 && !v306 && !v305 && !v304 && !v303 && !v302 && !v301 && !v300 && !v299 && !v298 && !v297 && !v296 && !v295 && !v294 && !v293 && !v292 && !v291 && !v290 && !v289 && !v287 && !v286)
  {
    v232 = 0;
    v233 = 0;
    v234 = 7;
    v235 = 3072;
    goto LABEL_710;
  }

  v237 = v207;
  v247 = v218;
  v248 = v219;
  v249 = v214;
  v250 = v220;
  v251 = v215;
  v252 = v221;
  v342 = v191;
  v238 = v282 + v284 + 63;
  v239 = (v238 >> 8) & 0xF8;
  v235 = v239 | 0xC00;
  v234 = (32 * v238) & 0xF800 | (8 * (v282 + v284 != 0)) | v281 | 7;
  v240 = ((v285 >> 10) & 0x3F | ((v283 >> 1) << 6)) >> 5;
  v232 = (v288 >> 24) & 0xFFFFFF00 | v240 & 6 | v283 & 1u | ((v288 & 3) << 6);
  v241 = v285 & 0x4000 | (v240 << 15);
  v236 = a3;
  if (!HIDWORD(v58) && !v58)
  {
    goto LABEL_713;
  }

  v243 = v336;
  v242 = v338;
  if (v279)
  {
    v235 = v239 | 0x1C00;
    goto LABEL_721;
  }

  if (v375)
  {
    v244 = 11264;
LABEL_718:
    v235 = v239 | v244;
    goto LABEL_721;
  }

  if (v374)
  {
    v235 = v239 | 0x3C00;
    goto LABEL_721;
  }

  if (v373)
  {
    v244 = 19456;
    goto LABEL_718;
  }

  if (v372)
  {
    v244 = 23552;
    goto LABEL_718;
  }

  if (v371)
  {
    v244 = 27648;
    goto LABEL_718;
  }

  if (v370)
  {
    v235 = v239 | 0x7C00;
    goto LABEL_721;
  }

  if (v369)
  {
    v244 = -29696;
    goto LABEL_718;
  }

  if (v368)
  {
    v244 = -25600;
    goto LABEL_718;
  }

  if (v339)
  {
    v244 = -21504;
    goto LABEL_718;
  }

  if (v340)
  {
    v244 = -17408;
    goto LABEL_718;
  }

  if (v343)
  {
    v244 = -13312;
    goto LABEL_718;
  }

  if (v366)
  {
    v245 = -9216;
LABEL_773:
    v235 = v239 | v245;
    v236 = a3;
    goto LABEL_713;
  }

  if (v365)
  {
    v245 = -5120;
    goto LABEL_773;
  }

  if (v364)
  {
    v235 = v239 | 0xFC00;
    v236 = a3;
    goto LABEL_713;
  }

  if (v363)
  {
LABEL_841:
    v232 = v232 | 8;
    v236 = a3;
    goto LABEL_713;
  }

  if (v362)
  {
    v235 = v239 | 0x1C00;
    goto LABEL_841;
  }

  if (v361)
  {
    v235 = v239 | 0x2C00;
    goto LABEL_841;
  }

  if (v360)
  {
    v235 = v239 | 0x3C00;
    goto LABEL_841;
  }

  if (v359)
  {
    v235 = v239 | 0x4C00;
    goto LABEL_841;
  }

  if (v358)
  {
    v235 = v239 | 0x5C00;
    goto LABEL_841;
  }

  if (v352)
  {
    v235 = v239 | 0x6C00;
    goto LABEL_841;
  }

  if (v344)
  {
    v235 = v239 | 0x7C00;
    goto LABEL_841;
  }

  if (v345)
  {
    v235 = v239 | 0x8C00;
    goto LABEL_841;
  }

  if (v346)
  {
    v235 = v239 | 0x9C00;
    goto LABEL_841;
  }

  if (v347)
  {
    v235 = v239 | 0xAC00;
    goto LABEL_841;
  }

  if (v348)
  {
    v235 = v239 | 0xBC00;
    goto LABEL_841;
  }

  if (v349)
  {
    v235 = v239 | 0xCC00;
    goto LABEL_841;
  }

  if (v350)
  {
    v235 = v239 | 0xDC00;
    goto LABEL_841;
  }

  if (v351)
  {
    v235 = v239 | 0xEC00;
    goto LABEL_841;
  }

  if (v353)
  {
    v235 = v239 | 0xFC00;
    goto LABEL_841;
  }

  if (v319)
  {
LABEL_905:
    v232 = v232 | 0x10;
    v236 = a3;
    goto LABEL_713;
  }

  if (v320)
  {
    v235 = v239 | 0x1C00;
    goto LABEL_905;
  }

  if (v317)
  {
    v235 = v239 | 0x2C00;
    goto LABEL_905;
  }

  if (v318)
  {
    v235 = v239 | 0x3C00;
    goto LABEL_905;
  }

  if (v316)
  {
    v235 = v239 | 0x4C00;
    goto LABEL_905;
  }

  if (v315)
  {
    v235 = v239 | 0x5C00;
    goto LABEL_905;
  }

  if (v314)
  {
    v235 = v239 | 0x6C00;
    goto LABEL_905;
  }

  if (v313)
  {
    v235 = v239 | 0x7C00;
    goto LABEL_905;
  }

  if (v312)
  {
    v235 = v239 | 0x8C00;
    goto LABEL_905;
  }

  if (v311)
  {
    v235 = v239 | 0x9C00;
    goto LABEL_905;
  }

  if (v310)
  {
    v235 = v239 | 0xAC00;
    goto LABEL_905;
  }

  if (v309)
  {
    v235 = v239 | 0xBC00;
    goto LABEL_905;
  }

  if (v308)
  {
    v235 = v239 | 0xCC00;
    goto LABEL_905;
  }

  if (v307)
  {
    v235 = v239 | 0xDC00;
    goto LABEL_905;
  }

  if (v306)
  {
    v235 = v239 | 0xEC00;
    goto LABEL_905;
  }

  if (v305)
  {
    v235 = v239 | 0xFC00;
    goto LABEL_905;
  }

  if (!v304)
  {
    if (v303)
    {
      v235 = v239 | 0x1C00;
    }

    else if (v302)
    {
      v235 = v239 | 0x2C00;
    }

    else if (v301)
    {
      v235 = v239 | 0x3C00;
    }

    else if (v300)
    {
      v235 = v239 | 0x4C00;
    }

    else if (v299)
    {
      v235 = v239 | 0x5C00;
    }

    else if (v298)
    {
      v235 = v239 | 0x6C00;
    }

    else if (v297)
    {
      v235 = v239 | 0x7C00;
    }

    else if (v296)
    {
      v235 = v239 | 0x8C00;
    }

    else if (v295)
    {
      v235 = v239 | 0x9C00;
    }

    else if (v294)
    {
      v235 = v239 | 0xAC00;
    }

    else if (v293)
    {
      v235 = v239 | 0xBC00;
    }

    else if (v292)
    {
      v235 = v239 | 0xCC00;
    }

    else if (v291)
    {
      v235 = v239 | 0xDC00;
    }

    else if (v290)
    {
      v235 = v239 | 0xEC00;
    }

    else
    {
      if (!v289)
      {
        if (!v287)
        {
          v236 = a3;
          v243 = v336;
          v242 = v338;
          if (v286)
          {
            v235 = v239 | 0x1C00;
            v232 = v232 | 0x20;
          }

          goto LABEL_721;
        }

        v232 = v232 | 0x20;
        v236 = a3;
        goto LABEL_713;
      }

      v235 = v239 | 0xFC00;
    }
  }

  v232 = v232 | 0x18;
  v236 = a3;
LABEL_713:
  v243 = v336;
  v242 = v338;
LABEL_721:
  v233 = v241 | v285 & 0x3C00;
  if (v334)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00;
    goto LABEL_765;
  }

  if ((v280 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 4;
    goto LABEL_765;
  }

  if ((v278 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 8;
    goto LABEL_765;
  }

  if ((v277 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xC;
    goto LABEL_765;
  }

  if ((v276 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x10;
    goto LABEL_765;
  }

  if ((v275 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x14;
    goto LABEL_765;
  }

  if ((v274 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x18;
    goto LABEL_765;
  }

  if ((v273 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1C;
    goto LABEL_765;
  }

  if ((v272 & v243) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x20;
    goto LABEL_765;
  }

  if (v332)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x24;
    goto LABEL_765;
  }

  if ((v276 & v242) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x28;
    goto LABEL_765;
  }

  if ((v280 & v242) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x2C;
    goto LABEL_765;
  }

  if ((v277 & v242) != 0)
  {
    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x30;
    goto LABEL_765;
  }

  if ((v275 & v242) != 0)
  {
    v246 = 13;
  }

  else
  {
    if ((v278 & v338) != 0)
    {
      v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x38;
      goto LABEL_710;
    }

    if ((v274 & v338) != 0)
    {
      v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x3C;
      goto LABEL_710;
    }

    if ((v273 & v338) != 0)
    {
      v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x40;
      goto LABEL_710;
    }

    if ((v272 & v338) != 0)
    {
      v246 = 17;
    }

    else if (result)
    {
      v246 = 18;
    }

    else if ((v276 & v330) != 0)
    {
      v246 = 19;
    }

    else if ((v280 & v330) != 0)
    {
      v246 = 20;
    }

    else if ((v277 & v330) != 0)
    {
      v246 = 21;
    }

    else if ((v275 & v330) != 0)
    {
      v246 = 22;
    }

    else if ((v278 & v330) != 0)
    {
      v246 = 23;
    }

    else
    {
      if ((v274 & v330) != 0)
      {
        v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x60;
        goto LABEL_710;
      }

      if ((v273 & v330) != 0)
      {
        v246 = 25;
      }

      else if ((v272 & v330) != 0)
      {
        v246 = 26;
      }

      else if (v255)
      {
        v246 = 27;
      }

      else
      {
        if ((v276 & v257) != 0)
        {
          v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x70;
          goto LABEL_710;
        }

        if ((v280 & v257) != 0)
        {
          v246 = 29;
        }

        else
        {
          if ((v277 & v257) != 0)
          {
            v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x78;
            goto LABEL_710;
          }

          if ((v275 & v257) != 0)
          {
            v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x7C;
            goto LABEL_710;
          }

          if ((v278 & v257) != 0)
          {
            v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x80;
            goto LABEL_710;
          }

          if ((v274 & v257) != 0)
          {
            v246 = 33;
          }

          else if ((v273 & v257) != 0)
          {
            v246 = 34;
          }

          else if ((v272 & v257) != 0)
          {
            v246 = 35;
          }

          else if (v205)
          {
            v246 = 36;
          }

          else if ((v276 & v260) != 0)
          {
            v246 = 37;
          }

          else if ((v280 & v260) != 0)
          {
            v246 = 38;
          }

          else if ((v277 & v260) != 0)
          {
            v246 = 39;
          }

          else if ((v275 & v260) != 0)
          {
            v246 = 40;
          }

          else if ((v278 & v260) != 0)
          {
            v246 = 41;
          }

          else if ((v274 & v260) != 0)
          {
            v246 = 42;
          }

          else if ((v273 & v260) != 0)
          {
            v246 = 43;
          }

          else if ((v272 & v260) != 0)
          {
            v246 = 44;
          }

          else if (v256)
          {
            v246 = 45;
          }

          else if ((v276 & v261) != 0)
          {
            v246 = 46;
          }

          else if ((v280 & v261) != 0)
          {
            v246 = 47;
          }

          else
          {
            if ((v277 & v261) != 0)
            {
              v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xC0;
              goto LABEL_710;
            }

            if ((v275 & v261) != 0)
            {
              v246 = 49;
            }

            else if ((v278 & v261) != 0)
            {
              v246 = 50;
            }

            else if ((v274 & v261) != 0)
            {
              v246 = 51;
            }

            else if ((v273 & v261) != 0)
            {
              v246 = 52;
            }

            else if ((v272 & v261) != 0)
            {
              v246 = 53;
            }

            else if (v237)
            {
              v246 = 54;
            }

            else if ((v276 & v262) != 0)
            {
              v246 = 55;
            }

            else
            {
              if ((v280 & v262) != 0)
              {
                v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xE0;
                goto LABEL_710;
              }

              if ((v277 & v262) != 0)
              {
                v246 = 57;
              }

              else if ((v275 & v262) != 0)
              {
                v246 = 58;
              }

              else if ((v278 & v262) != 0)
              {
                v246 = 59;
              }

              else
              {
                if ((v274 & v262) != 0)
                {
                  v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xF0;
                  goto LABEL_710;
                }

                if ((v273 & v262) != 0)
                {
                  v246 = 61;
                }

                else
                {
                  if ((v272 & v262) != 0)
                  {
                    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xF8;
                    goto LABEL_710;
                  }

                  if (v208)
                  {
                    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0xFC;
                    goto LABEL_710;
                  }

                  if ((v276 & v183) != 0)
                  {
                    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x100;
                    goto LABEL_710;
                  }

                  if ((v280 & v183) != 0)
                  {
                    v246 = 65;
                  }

                  else if ((v277 & v183) != 0)
                  {
                    v246 = 66;
                  }

                  else if ((v275 & v183) != 0)
                  {
                    v246 = 67;
                  }

                  else if ((v278 & v183) != 0)
                  {
                    v246 = 68;
                  }

                  else if ((v274 & v183) != 0)
                  {
                    v246 = 69;
                  }

                  else if ((v273 & v183) != 0)
                  {
                    v246 = 70;
                  }

                  else if ((v272 & v183) != 0)
                  {
                    v246 = 71;
                  }

                  else if (v263)
                  {
                    v246 = 72;
                  }

                  else if ((v276 & v184) != 0)
                  {
                    v246 = 73;
                  }

                  else if ((v280 & v184) != 0)
                  {
                    v246 = 74;
                  }

                  else if ((v277 & v184) != 0)
                  {
                    v246 = 75;
                  }

                  else if ((v275 & v184) != 0)
                  {
                    v246 = 76;
                  }

                  else if ((v278 & v184) != 0)
                  {
                    v246 = 77;
                  }

                  else if ((v274 & v184) != 0)
                  {
                    v246 = 78;
                  }

                  else if ((v273 & v184) != 0)
                  {
                    v246 = 79;
                  }

                  else if ((v272 & v184) != 0)
                  {
                    v246 = 80;
                  }

                  else if (v265)
                  {
                    v246 = 81;
                  }

                  else if ((v276 & v185) != 0)
                  {
                    v246 = 82;
                  }

                  else if ((v280 & v185) != 0)
                  {
                    v246 = 83;
                  }

                  else if ((v277 & v185) != 0)
                  {
                    v246 = 84;
                  }

                  else if ((v275 & v185) != 0)
                  {
                    v246 = 85;
                  }

                  else if ((v278 & v185) != 0)
                  {
                    v246 = 86;
                  }

                  else if ((v274 & v185) != 0)
                  {
                    v246 = 87;
                  }

                  else if ((v273 & v185) != 0)
                  {
                    v246 = 88;
                  }

                  else if ((v272 & v185) != 0)
                  {
                    v246 = 89;
                  }

                  else if (v267)
                  {
                    v246 = 90;
                  }

                  else if ((v276 & v186) != 0)
                  {
                    v246 = 91;
                  }

                  else if ((v280 & v186) != 0)
                  {
                    v246 = 92;
                  }

                  else if ((v277 & v186) != 0)
                  {
                    v246 = 93;
                  }

                  else if ((v275 & v186) != 0)
                  {
                    v246 = 94;
                  }

                  else if ((v278 & v186) != 0)
                  {
                    v246 = 95;
                  }

                  else
                  {
                    if ((v274 & v186) != 0)
                    {
                      v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x180;
                      goto LABEL_710;
                    }

                    if ((v273 & v186) != 0)
                    {
                      v246 = 97;
                    }

                    else if ((v272 & v186) != 0)
                    {
                      v246 = 98;
                    }

                    else if (v269)
                    {
                      v246 = 99;
                    }

                    else if ((v276 & v187) != 0)
                    {
                      v246 = 100;
                    }

                    else if ((v280 & v187) != 0)
                    {
                      v246 = 101;
                    }

                    else if ((v277 & v187) != 0)
                    {
                      v246 = 102;
                    }

                    else if ((v275 & v187) != 0)
                    {
                      v246 = 103;
                    }

                    else if ((v278 & v187) != 0)
                    {
                      v246 = 104;
                    }

                    else if ((v274 & v187) != 0)
                    {
                      v246 = 105;
                    }

                    else if ((v273 & v187) != 0)
                    {
                      v246 = 106;
                    }

                    else if ((v272 & v187) != 0)
                    {
                      v246 = 107;
                    }

                    else if (v271)
                    {
                      v246 = 108;
                    }

                    else if ((v276 & v253) != 0)
                    {
                      v246 = 109;
                    }

                    else if ((v280 & v253) != 0)
                    {
                      v246 = 110;
                    }

                    else if ((v277 & v253) != 0)
                    {
                      v246 = 111;
                    }

                    else
                    {
                      if ((v275 & v253) != 0)
                      {
                        v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1C0;
                        goto LABEL_710;
                      }

                      if ((v278 & v253) != 0)
                      {
                        v246 = 113;
                      }

                      else if ((v274 & v253) != 0)
                      {
                        v246 = 114;
                      }

                      else if ((v273 & v253) != 0)
                      {
                        v246 = 115;
                      }

                      else if ((v272 & v253) != 0)
                      {
                        v246 = 116;
                      }

                      else if (v324)
                      {
                        v246 = 117;
                      }

                      else if ((v276 & v254) != 0)
                      {
                        v246 = 118;
                      }

                      else if ((v280 & v254) != 0)
                      {
                        v246 = 119;
                      }

                      else
                      {
                        if ((v277 & v254) != 0)
                        {
                          v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1E0;
                          goto LABEL_710;
                        }

                        if ((v275 & v254) != 0)
                        {
                          v246 = 121;
                        }

                        else if ((v278 & v254) != 0)
                        {
                          v246 = 122;
                        }

                        else if ((v274 & v254) != 0)
                        {
                          v246 = 123;
                        }

                        else
                        {
                          if ((v273 & v254) != 0)
                          {
                            v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1F0;
                            goto LABEL_710;
                          }

                          if ((v272 & v254) != 0)
                          {
                            v246 = 125;
                          }

                          else
                          {
                            if (v328)
                            {
                              v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1F8;
                              goto LABEL_710;
                            }

                            if ((v276 & v189) != 0)
                            {
                              v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x1FC;
                              goto LABEL_710;
                            }

                            if ((v280 & v189) != 0)
                            {
                              v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x200;
                              goto LABEL_710;
                            }

                            if ((v277 & v189) != 0)
                            {
                              v246 = -127;
                            }

                            else if ((v275 & v189) != 0)
                            {
                              v246 = -126;
                            }

                            else if ((v278 & v189) != 0)
                            {
                              v246 = -125;
                            }

                            else if ((v274 & v189) != 0)
                            {
                              v246 = -124;
                            }

                            else if ((v273 & v189) != 0)
                            {
                              v246 = -123;
                            }

                            else if ((v272 & v189) != 0)
                            {
                              v246 = -122;
                            }

                            else if (v247)
                            {
                              v246 = -121;
                            }

                            else if ((v276 & v249) != 0)
                            {
                              v246 = -120;
                            }

                            else if ((v280 & v249) != 0)
                            {
                              v246 = -119;
                            }

                            else if ((v277 & v249) != 0)
                            {
                              v246 = -118;
                            }

                            else if ((v275 & v249) != 0)
                            {
                              v246 = -117;
                            }

                            else if ((v278 & v249) != 0)
                            {
                              v246 = -116;
                            }

                            else if ((v274 & v249) != 0)
                            {
                              v246 = -115;
                            }

                            else if ((v273 & v249) != 0)
                            {
                              v246 = -114;
                            }

                            else if ((v272 & v249) != 0)
                            {
                              v246 = -113;
                            }

                            else if (v248)
                            {
                              v246 = -112;
                            }

                            else if ((v276 & v251) != 0)
                            {
                              v246 = -111;
                            }

                            else if ((v280 & v251) != 0)
                            {
                              v246 = -110;
                            }

                            else if ((v277 & v251) != 0)
                            {
                              v246 = -109;
                            }

                            else if ((v275 & v251) != 0)
                            {
                              v246 = -108;
                            }

                            else if ((v278 & v251) != 0)
                            {
                              v246 = -107;
                            }

                            else if ((v274 & v251) != 0)
                            {
                              v246 = -106;
                            }

                            else if ((v273 & v251) != 0)
                            {
                              v246 = -105;
                            }

                            else if ((v272 & v251) != 0)
                            {
                              v246 = -104;
                            }

                            else if (v250)
                            {
                              v246 = -103;
                            }

                            else if ((v276 & v342) != 0)
                            {
                              v246 = -102;
                            }

                            else if ((v280 & v342) != 0)
                            {
                              v246 = -101;
                            }

                            else if ((v277 & v342) != 0)
                            {
                              v246 = -100;
                            }

                            else if ((v275 & v342) != 0)
                            {
                              v246 = -99;
                            }

                            else if ((v278 & v342) != 0)
                            {
                              v246 = -98;
                            }

                            else if ((v274 & v342) != 0)
                            {
                              v246 = -97;
                            }

                            else if ((v273 & v342) != 0)
                            {
                              v246 = -96;
                            }

                            else if ((v272 & v342) != 0)
                            {
                              v246 = -95;
                            }

                            else if (v252)
                            {
                              v246 = -94;
                            }

                            else if ((v276 & v192) != 0)
                            {
                              v246 = -93;
                            }

                            else if ((v280 & v192) != 0)
                            {
                              v246 = -92;
                            }

                            else if ((v277 & v192) != 0)
                            {
                              v246 = -91;
                            }

                            else if ((v275 & v192) != 0)
                            {
                              v246 = -90;
                            }

                            else if ((v278 & v192) != 0)
                            {
                              v246 = -89;
                            }

                            else if ((v274 & v192) != 0)
                            {
                              v246 = -88;
                            }

                            else if ((v273 & v192) != 0)
                            {
                              v246 = -87;
                            }

                            else if ((v272 & v192) != 0)
                            {
                              v246 = -86;
                            }

                            else if (v264)
                            {
                              v246 = -85;
                            }

                            else if ((v276 & v193) != 0)
                            {
                              v246 = -84;
                            }

                            else if ((v280 & v193) != 0)
                            {
                              v246 = -83;
                            }

                            else if ((v277 & v193) != 0)
                            {
                              v246 = -82;
                            }

                            else if ((v275 & v193) != 0)
                            {
                              v246 = -81;
                            }

                            else if ((v278 & v193) != 0)
                            {
                              v246 = -80;
                            }

                            else if ((v274 & v193) != 0)
                            {
                              v246 = -79;
                            }

                            else if ((v273 & v193) != 0)
                            {
                              v246 = -78;
                            }

                            else if ((v272 & v193) != 0)
                            {
                              v246 = -77;
                            }

                            else if (v268)
                            {
                              v246 = -76;
                            }

                            else if ((v276 & v258) != 0)
                            {
                              v246 = -75;
                            }

                            else if ((v280 & v258) != 0)
                            {
                              v246 = -74;
                            }

                            else if ((v277 & v258) != 0)
                            {
                              v246 = -73;
                            }

                            else if ((v275 & v258) != 0)
                            {
                              v246 = -72;
                            }

                            else if ((v278 & v258) != 0)
                            {
                              v246 = -71;
                            }

                            else if ((v274 & v258) != 0)
                            {
                              v246 = -70;
                            }

                            else if ((v273 & v258) != 0)
                            {
                              v246 = -69;
                            }

                            else if ((v272 & v258) != 0)
                            {
                              v246 = -68;
                            }

                            else if (v270)
                            {
                              v246 = -67;
                            }

                            else if ((v276 & v224) != 0)
                            {
                              v246 = -66;
                            }

                            else if ((v280 & v224) != 0)
                            {
                              v246 = -65;
                            }

                            else
                            {
                              if ((v277 & v224) != 0)
                              {
                                v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x300;
                                goto LABEL_710;
                              }

                              if ((v275 & v224) != 0)
                              {
                                v246 = -63;
                              }

                              else if ((v278 & v224) != 0)
                              {
                                v246 = -62;
                              }

                              else if ((v274 & v224) != 0)
                              {
                                v246 = -61;
                              }

                              else if ((v273 & v224) != 0)
                              {
                                v246 = -60;
                              }

                              else if ((v272 & v224) != 0)
                              {
                                v246 = -59;
                              }

                              else if (v322)
                              {
                                v246 = -58;
                              }

                              else if ((v276 & v196) != 0)
                              {
                                v246 = -57;
                              }

                              else if ((v280 & v196) != 0)
                              {
                                v246 = -56;
                              }

                              else if ((v277 & v196) != 0)
                              {
                                v246 = -55;
                              }

                              else if ((v275 & v196) != 0)
                              {
                                v246 = -54;
                              }

                              else if ((v278 & v196) != 0)
                              {
                                v246 = -53;
                              }

                              else if ((v274 & v196) != 0)
                              {
                                v246 = -52;
                              }

                              else if ((v273 & v196) != 0)
                              {
                                v246 = -51;
                              }

                              else if ((v272 & v196) != 0)
                              {
                                v246 = -50;
                              }

                              else if (v326)
                              {
                                v246 = -49;
                              }

                              else if ((v276 & v227) != 0)
                              {
                                v246 = -48;
                              }

                              else if ((v280 & v227) != 0)
                              {
                                v246 = -47;
                              }

                              else if ((v277 & v227) != 0)
                              {
                                v246 = -46;
                              }

                              else if ((v275 & v227) != 0)
                              {
                                v246 = -45;
                              }

                              else if ((v278 & v227) != 0)
                              {
                                v246 = -44;
                              }

                              else if ((v274 & v227) != 0)
                              {
                                v246 = -43;
                              }

                              else if ((v273 & v227) != 0)
                              {
                                v246 = -42;
                              }

                              else if ((v272 & v227) != 0)
                              {
                                v246 = -41;
                              }

                              else if (v266)
                              {
                                v246 = -40;
                              }

                              else if ((v276 & v229) != 0)
                              {
                                v246 = -39;
                              }

                              else if ((v280 & v229) != 0)
                              {
                                v246 = -38;
                              }

                              else if ((v277 & v229) != 0)
                              {
                                v246 = -37;
                              }

                              else if ((v275 & v229) != 0)
                              {
                                v246 = -36;
                              }

                              else if ((v278 & v229) != 0)
                              {
                                v246 = -35;
                              }

                              else if ((v274 & v229) != 0)
                              {
                                v246 = -34;
                              }

                              else if ((v273 & v229) != 0)
                              {
                                v246 = -33;
                              }

                              else
                              {
                                if ((v272 & v229) != 0)
                                {
                                  v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x380;
                                  goto LABEL_710;
                                }

                                if (v199)
                                {
                                  v246 = -31;
                                }

                                else if ((v276 & v259) != 0)
                                {
                                  v246 = -30;
                                }

                                else if ((v280 & v259) != 0)
                                {
                                  v246 = -29;
                                }

                                else if ((v277 & v259) != 0)
                                {
                                  v246 = -28;
                                }

                                else if ((v275 & v259) != 0)
                                {
                                  v246 = -27;
                                }

                                else if ((v278 & v259) != 0)
                                {
                                  v246 = -26;
                                }

                                else if ((v274 & v259) != 0)
                                {
                                  v246 = -25;
                                }

                                else if ((v273 & v259) != 0)
                                {
                                  v246 = -24;
                                }

                                else if ((v272 & v259) != 0)
                                {
                                  v246 = -23;
                                }

                                else if (v231)
                                {
                                  v246 = -22;
                                }

                                else if ((v276 & v200) != 0)
                                {
                                  v246 = -21;
                                }

                                else if ((v280 & v200) != 0)
                                {
                                  v246 = -20;
                                }

                                else if ((v277 & v200) != 0)
                                {
                                  v246 = -19;
                                }

                                else if ((v275 & v200) != 0)
                                {
                                  v246 = -18;
                                }

                                else if ((v278 & v200) != 0)
                                {
                                  v246 = -17;
                                }

                                else
                                {
                                  if ((v274 & v200) != 0)
                                  {
                                    v233 = v241 & 0xFC03 | v285 & 0x3C00 | 0x3C0;
                                    goto LABEL_710;
                                  }

                                  if ((v273 & v200) != 0)
                                  {
                                    v246 = -15;
                                  }

                                  else
                                  {
                                    if ((v272 & v200) == 0)
                                    {
                                      goto LABEL_710;
                                    }

                                    v246 = -14;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v233 = v233 & 0xFC03 | (4 * v246);
LABEL_710:
  v236 = a3;
LABEL_765:
  *(v357 + (v354 + v356 * v236)) = (v232 << 48) | (v233 << 32) | (v235 << 16) | v234;
  return result;
}

double AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawMeshInherited(void *a1, int a2)
{
  v2 = MEMORY[0x29EDC5638];
  v3 = a1[1];
  v4 = *a1 + *MEMORY[0x29EDC5638];
  v5 = *(v4 + 8) + v3[37] + v3[38] * a2;
  v6.i64[0] = v5 - 0x1000000000;
  v6.i64[1] = v5 - 0xFFFFFFFF4;
  *(*(v4 + 24) + v3[35] + v3[36] * a2 + v3[31]) = vorrq_s8(vandq_s8(vsraq_n_u64(vshlq_n_s64(v6, 0x20uLL), v6, 0x20uLL), vdupq_n_s64(0xFFFFFFFC000000FFLL)), xmmword_29D2F1FC0);
  v7 = a1[1];
  v8 = *a1 + *v2;
  v9 = *(v8 + 8);
  v10 = v9 + v7[47] + v7[48] * a2;
  v11 = v9 + v7[51] + v7[52] * a2;
  v12 = *(v8 + 24) + v7[35] + v7[36] * a2 + v7[32];
  *v12 = 1073744384;
  *(v12 + 4) = (v10 >> 16) & 0xFFC00000;
  *(v12 + 8) = v10 >> 6;
  *(v12 + 12) = (v11 >> 16) & 0xFFC00000;
  *(v12 + 16) = v11 >> 6;
  *(v12 + 28) = 0;
  *(v12 + 20) = 0;
  v13 = a1[1];
  v14 = *a1 + *v2;
  v15 = *(v14 + 24) + (v13[37] + v13[38] * a2);
  v16 = *(v14 + 8) + (v13[39] + v13[40] * a2);
  *v15 = 0x400000;
  *(v15 + 4) = (v16 >> 16) & 0xFFC00000;
  *(v15 + 8) = v16 >> 6;
  *&result = 98;
  *(v15 + 12) = xmmword_29D2F1FD0;
  *(v15 + 20) = 0;
  *(v15 + 24) = 0;
  return result;
}

__n64 AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawInherited(void *a1, int a2, unsigned int a3)
{
  v3 = MEMORY[0x29EDC5638];
  v4 = a1[1];
  v5 = *a1 + *MEMORY[0x29EDC5638];
  v6 = *(v5 + 8) + v4[37] + v4[38] * a2;
  v7 = (*(v5 + 24) + v4[35] + v4[36] * a2 + v4[31]);
  v8 = v6 - 0x1000000000;
  v9.i64[0] = v6 - 0x1000000000;
  v9.i64[1] = v6 - 0xFFFFFFFF4;
  *v7 = vorrq_s8(vandq_s8(vsraq_n_u64(vshlq_n_s64(v9, 0x20uLL), v9, 0x20uLL), vdupq_n_s64(0xFFFFFFFC000000FFLL)), xmmword_29D2F1FC0);
  v10 = a1[1];
  v11 = *(v10 + 332);
  if (v11)
  {
    v12 = v8 + 28;
    v13 = (v8 + 28) >> 2;
    v14 = (v11 >> 9) & 1 | ((v11 & 0x400) >> 10);
    v15 = HIDWORD(v11);
    if ((v11 & 0x400) != 0)
    {
      LOWORD(v15) = HIDWORD(v11) >> 8;
    }

    v16 = 8 * v15;
    v17 = ((((2 * v11) & 8) + ((4 * v11) & 8) + 8 * (v11 & 1)) | (4 * ((v11 & 0x58) != 0))) + (((24 * BYTE5(v11)) | 4) & ((v11 << 21) >> 31)) + 8 * v14;
    if (v14)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v7[1].i64[0] = (((v17 + v18) << 6) + 256) & 0xFF00 | BYTE4(v12) | (v13 << 34);
    v10 = a1[1];
  }

  v19 = *a1 + *v3;
  v20 = (*(v19 + 24) + (*(v10 + 140) + *(v10 + 144) * a2) + *(v10 + 128));
  v21 = *(v19 + 8) + (*(v10 + 172) + *(v10 + 176) * a2);
  *v20 = 1073741888;
  v20[1] = (v21 >> 16) & 0xFFC00000;
  v20[2] = v21 >> 6;
  v22 = a1[1];
  v23 = *a1 + *v3;
  v24 = *(v23 + 24) + (v22[37] + v22[38] * a2);
  v25 = *(v23 + 8) + (v22[39] + v22[40] * a2);
  *v24 = 0x400000;
  *(v24 + 4) = (v25 >> 16) & 0xFFC00000;
  *(v24 + 8) = v25 >> 6;
  *(v24 + 12) = xmmword_29D2F1FD0;
  v26 = a1[1];
  if (v26[83] && (v27 = (*(*a1 + *v3 + 24) + (v26[81] + v26[82] * a2)), *(v24 + 20) = v27[4] & 0xF3FFFFF, *(v24 + 24) = v27[5] & 0xF3FFFFF, *(v24 + 16) = v27[3] & 0x1D1FFFFF, (*(a1[1] + 332) & 0x80) != 0))
  {
    v28 = (v27[4] >> 18) & 3;
    if (a3 > 8)
    {
LABEL_22:
      v32 = *(v24 + 20);
      result.n64_u32[0] = v32 & 0xFFFFFFF | 0x40000000;
      result.n64_u32[1] = HIDWORD(v32) & 0xFFFFFFF | 0x40000000;
      *(v24 + 20) = result;
      return result;
    }
  }

  else
  {
    v28 = 0;
    if (a3 > 8)
    {
      goto LABEL_22;
    }
  }

  if (((1 << a3) & 0x1D8) == 0)
  {
    if (((1 << a3) & 0x26) != 0)
    {
      v31 = *(v24 + 20);
      result.n64_u32[0] = v31 & 0xFFFFFFF | 0x10000000;
      result.n64_u32[1] = HIDWORD(v31) & 0xFFFFFFF | 0x10000000;
      *(v24 + 20) = result;
      return result;
    }

    goto LABEL_22;
  }

  if (v28 == 2)
  {
    v29 = 1610612736;
  }

  else
  {
    v29 = 0;
  }

  if (v28 == 1)
  {
    v29 = 1342177280;
  }

  result.n64_u64[0] = vorr_s8(vdup_n_s32(v29 | (v28 << 18)), vand_s8(*(v24 + 20), vdup_n_s32(0xFF3FFFFu)));
  *(v24 + 20) = result;
  return result;
}

void AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::drawIndexedPatches(uint64_t *a1, int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, float a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13, unsigned int a14, unsigned int a15)
{
  v21 = 0x1EEEE1111;
  v22 = MEMORY[0x29EDC5638];
  v23 = *MEMORY[0x29EDC5638];
  v24 = *a1;
  v25 = a1[1];
  v26 = (*(v25 + 220) + *(v25 + 224) * a2);
  v27 = 0x1EEEE1111;
  if (a8)
  {
    v27 = *(a8 + v23 + 8) + a10;
  }

  *(*(*a1 + v23 + 24) + v26 + 40) = v27;
  v28 = *v22;
  if (a6)
  {
    v21 = *(a6 + v28 + 8) + a7;
  }

  *(*(v24 + v28 + 24) + v26 + 32) = v21;
  if (*(v25 + 396) == 1)
  {
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawInherited(a1, a2, 3u);
  }

  else
  {
    v29 = *(v24 + *v22 + 24);
    v30 = v29 + (*(v25 + 148) + *(v25 + 152) * a2);
    if ((*(v25 + 332) & 0x80) != 0)
    {
      v31 = (*(v29 + (*(v25 + 324) + *(v25 + 328) * a2) + 16) >> 18) & 3;
      v33 = *(v30 + 32) & 0xFF7FFFFF;
      *(v30 + 32) = v33;
      if (v31 == 2)
      {
        v32 = 1610612736;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = *(v30 + 32) & 0xFF7FFFFF;
      *(v30 + 32) = v33;
    }

    if (v31 == 1)
    {
      v32 = 1342177280;
    }

    *(v30 + 36) = vorr_s8(vdup_n_s32(v32 | (v31 << 18)), vand_s8(*(v30 + 36), vdup_n_s32(0xFF3FFFFu)));
    if (v31 == 1)
    {
      *(v30 + 32) = v33 | 0x4000000;
    }
  }

  v35 = *a1;
  v34 = a1[1];
  v36 = *a1 + *v22;
  v37 = *(v36 + 24);
  v38 = (*(v34 + 220) + *(v34 + 224) * a2);
  v39 = (v37 + v38);
  v40 = (*(v34 + 284) + *(v34 + 288) * a2);
  v41 = *(v36 + 8) + v40;
  v42 = (v37 + v40);
  v39[1] = v41;
  v39[2] = v41 + 8;
  v39[3] = a12;
  *v42 = 0;
  v42[1] = a12;
  v43 = *(v35 + *v22 + 24);
  v44 = v43 + v38;
  *(v44 + 120) = a6 != 0;
  *(v44 + 124) = a3;
  v45 = v43 + (*(v34 + 348) + *(v34 + 352) * a2);
  v46 = HIWORD(LODWORD(a9)) & 0x8000;
  v47 = fabsf(a9);
  if (v47 >= 65520.0)
  {
    LOWORD(v48) = v46 | 0x7C00;
  }

  else if (v47 <= 0.000000029802)
  {
    v48 = HIWORD(LODWORD(a9)) & 0x8000;
  }

  else if (v47 >= 0.000000089407)
  {
    if (v47 >= 2.351e-38)
    {
      v48 = v46 | (COERCE_UNSIGNED_INT(((v47 + COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13);
    }

    else
    {
      v48 = v46 | vcvts_n_u32_f32(v47, 0x18uLL);
    }
  }

  else
  {
    LOWORD(v48) = v46 | 1;
  }

  *(v45 + 4) = v48;
  v49 = *(v34 + 396);
  v50 = *(v35 + *v22 + 24) + (*(v34 + 140) + *(v34 + 144) * a2) + *(v34 + 128);
  v51 = 36;
  if (v49)
  {
    v51 = 12;
  }

  if (v47 >= 65520.0)
  {
    LOWORD(v46) = v46 | 0x7C00;
  }

  else if (v47 > 0.000000029802)
  {
    if (v47 >= 0.000000089407)
    {
      if (v47 >= 2.351e-38)
      {
        v46 |= COERCE_UNSIGNED_INT(((v47 + COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13;
      }

      else
      {
        v46 |= vcvts_n_u32_f32(v47, 0x18uLL);
      }
    }

    else
    {
      LOWORD(v46) = v46 | 1;
    }
  }

  LODWORD(v52) = vdup_n_s32(0x40000080u).u32[0];
  HIDWORD(v52) = v46;
  *(v50 + v51) = v52;
  v53 = a1[1];
  v54 = *v22;
  v55 = *(*a1 + v54 + 24) + (*(v53 + 140) + *(v53 + 144) * a2);
  v56 = 44;
  if (*(v53 + 396))
  {
    v56 = 20;
  }

  v58 = *(v53 + 128);
  v57 = *(v53 + 132);
  v59 = v58 + v56;
  v60 = (v55 + v57);
  if (v57 != v59 && v55 + v57 >= (v55 + v59))
  {
    __pattern4 = 0x20000000;
    memset_pattern4((v55 + v59), &__pattern4, v57 - v59);
    v54 = *v22;
  }

  v61 = (a13 + v54 + 8);
  v62 = *v61 + a14;
  v63 = ((v61[1] + 3) >> 2) - 1;
  *v60 = BYTE4(v62) | 0xB2F00C00;
  v60[1] = v62;
  v60[2] = a5;
  v60[3] = a11;
  v60[4] = a4;
  v60[5] = a12;
  v60[6] = (a15 >> 2) & 0x7FFFF;
  v60[7] = v63;
  v60[8] = BYTE5(v62);
  v64 = *(*a1 + *v22 + 24) + (*(a1[1] + 140) + *(a1[1] + 144) * a2) + *(a1[1] + 136);
  if (v64 > (v60 + 9))
  {
    v67 = 0x20000000;
    memset_pattern4(v60 + 9, &v67, v64 - (v60 + 9));
  }
}

void AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::drawPatches(uint64_t *a1, int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8, float a9, unsigned int a10, uint64_t a11, unsigned int a12, unsigned int a13)
{
  v20 = 0x1EEEE1111;
  v21 = MEMORY[0x29EDC5638];
  v22 = *a1;
  v23 = a1[1];
  v24 = (*(v23 + 220) + *(v23 + 224) * a2);
  *(*(*a1 + *MEMORY[0x29EDC5638] + 24) + v24 + 40) = 0x1EEEE1111;
  v25 = *v21;
  if (a6)
  {
    v20 = *(a6 + v25 + 8) + a7;
  }

  *(*(v22 + v25 + 24) + v24 + 32) = v20;
  if (*(v23 + 396) == 1)
  {
    AGX::IndirectRenderCommandEncoderGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeCommonDrawInherited(a1, a2, 3u);
  }

  else
  {
    v26 = *(v22 + *v21 + 24);
    v27 = v26 + (*(v23 + 148) + *(v23 + 152) * a2);
    if ((*(v23 + 332) & 0x80) != 0)
    {
      v28 = (*(v26 + (*(v23 + 324) + *(v23 + 328) * a2) + 16) >> 18) & 3;
      v30 = *(v27 + 32) & 0xFF7FFFFF;
      *(v27 + 32) = v30;
      if (v28 == 2)
      {
        v29 = 1610612736;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = *(v27 + 32) & 0xFF7FFFFF;
      *(v27 + 32) = v30;
    }

    if (v28 == 1)
    {
      v29 = 1342177280;
    }

    *(v27 + 36) = vorr_s8(vdup_n_s32(v29 | (v28 << 18)), vand_s8(*(v27 + 36), vdup_n_s32(0xFF3FFFFu)));
    if (v28 == 1)
    {
      *(v27 + 32) = v30 | 0x4000000;
    }
  }

  v32 = *a1;
  v31 = a1[1];
  v33 = *a1 + *v21;
  v34 = *(v33 + 24);
  v35 = (*(v31 + 220) + *(v31 + 224) * a2);
  v36 = (v34 + v35);
  v37 = (*(v31 + 284) + *(v31 + 288) * a2);
  v38 = *(v33 + 8) + v37;
  v39 = (v34 + v37);
  v36[1] = v38;
  v36[2] = v38 + 8;
  v36[3] = a10;
  *v39 = 0;
  v39[1] = a10;
  v40 = *(v32 + *v21 + 24) + v35;
  *(v40 + 120) = a6 != 0;
  *(v40 + 124) = a3;
  v41 = HIWORD(LODWORD(a9)) & 0x8000;
  v42 = fabsf(a9);
  if (v42 >= 65520.0)
  {
    LOWORD(v43) = v41 | 0x7C00;
  }

  else if (v42 <= 0.000000029802)
  {
    v43 = HIWORD(LODWORD(a9)) & 0x8000;
  }

  else if (v42 >= 0.000000089407)
  {
    if (v42 >= 2.351e-38)
    {
      v43 = v41 | (COERCE_UNSIGNED_INT(((v42 + COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13);
    }

    else
    {
      v43 = v41 | vcvts_n_u32_f32(v42, 0x18uLL);
    }
  }

  else
  {
    LOWORD(v43) = v41 | 1;
  }

  *(*(v32 + *v21 + 24) + (*(v31 + 348) + *(v31 + 352) * a2) + 4) = v43;
  v44 = *(v31 + 396);
  v45 = *(v32 + *v21 + 24) + (*(v31 + 140) + *(v31 + 144) * a2) + *(v31 + 128);
  v46 = 36;
  if (v44)
  {
    v46 = 12;
  }

  if (v42 >= 65520.0)
  {
    LOWORD(v41) = v41 | 0x7C00;
  }

  else if (v42 > 0.000000029802)
  {
    if (v42 >= 0.000000089407)
    {
      if (v42 >= 2.351e-38)
      {
        v41 |= COERCE_UNSIGNED_INT(((v42 + COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(a9 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13;
      }

      else
      {
        v41 |= vcvts_n_u32_f32(v42, 0x18uLL);
      }
    }

    else
    {
      LOWORD(v41) = v41 | 1;
    }
  }

  LODWORD(v47) = vdup_n_s32(0x40000080u).u32[0];
  HIDWORD(v47) = v41;
  *(v45 + v46) = v47;
  v48 = a1[1];
  v49 = *v21;
  v50 = *(*a1 + v49 + 24) + (*(v48 + 140) + *(v48 + 144) * a2);
  v51 = 44;
  if (*(v48 + 396))
  {
    v51 = 20;
  }

  v53 = *(v48 + 128);
  v52 = *(v48 + 132);
  v54 = v53 + v51;
  v55 = (v50 + v52);
  if (v52 != v54 && v50 + v52 >= (v50 + v54))
  {
    __pattern4 = 0x20000000;
    memset_pattern4((v50 + v54), &__pattern4, v52 - v54);
    v49 = *v21;
  }

  v56 = (a11 + v49 + 8);
  v57 = *v56 + a12;
  v58 = ((v56[1] + 3) >> 2) - 1;
  *v55 = BYTE4(v57) | 0xB2F00C00;
  v55[1] = v57;
  v55[2] = a5;
  v55[3] = a8;
  v55[4] = a4;
  v55[5] = a10;
  v55[6] = (a13 >> 2) & 0x7FFFF;
  v55[7] = v58;
  v55[8] = BYTE5(v57);
  v59 = *(*a1 + *v21 + 24) + (*(a1[1] + 140) + *(a1[1] + 144) * a2) + *(a1[1] + 136);
  if (v59 > (v55 + 9))
  {
    v62 = 0x20000000;
    memset_pattern4(v55 + 9, &v62, v59 - (v55 + 9));
  }
}

uint64_t AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::handleScissorUpdate(uint64_t a1, int a2, uint64_t a3)
{
  v4 = (*(*(a1 + 24) + 316) + *(*(a1 + 24) + 320) * a2);
  v5 = (a3 + 60);
  v6 = *(a3 + 4);
  v7 = 16 * v6;
  v8 = 24 * *(a3 + 5);
  if ((*a3 & 0x400) != 0)
  {
    v9 = *(a3 + 5);
  }

  else
  {
    v9 = *(a3 + 4);
  }

  v10 = 4 * (v9 + v6);
  v11 = MEMORY[0x29EDC5638];
  if ((*a3 & 8) == 0)
  {
    if (!*(a3 + 5))
    {
      goto LABEL_58;
    }

    v12 = (a1 + 16);
LABEL_34:
    v29 = 0;
    v30 = a3 + v7 + v8 + 60;
    v31 = &v5[v8 / 4];
    v32 = &v5[v8 / 4 + v10];
    v33 = &v31[8 * v9 + v7 / 4];
    do
    {
      v34 = 4 * v29;
      v35 = &v5[4 * v29];
      v36 = (v30 + 16 * v29);
      LODWORD(v37) = *v36;
      LODWORD(v38) = v36[1];
      v39 = v35[1];
      if (*v35 >= v38)
      {
        v40 = v36[1];
      }

      else
      {
        v40 = *v35;
      }

      if (*v35 >= v37)
      {
        v37 = v40;
      }

      else
      {
        v37 = v37;
      }

      if (v39 < v38)
      {
        LODWORD(v38) = v35[1];
      }

      if (v39 >= v37)
      {
        v38 = v38;
      }

      else
      {
        v38 = v37;
      }

      LODWORD(v42) = v36[2];
      v41 = v36[3];
      v43 = v35[2];
      v44 = v35[3];
      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      if (v43 >= v42)
      {
        v42 = v45;
      }

      else
      {
        v42 = v42;
      }

      if (v44 < v41)
      {
        v41 = v44;
      }

      if (v44 >= v42)
      {
        v46 = v41;
      }

      else
      {
        v46 = v42;
      }

      v47 = &v32[v34];
      *v47 = v37 | (v38 << 32);
      v47[1] = v42 | (v46 << 32);
      v48 = *(v33 + 8 * v29);
      v49 = *(*v12 + *v11 + 24) + v4 + v34 * 4;
      *v49 = v38 | (v37 << 16);
      *(v49 + 4) = v46 | (v42 << 16);
      *(v49 + 8) = v48;
      ++v29;
    }

    while (v29 < *(a3 + 5));
    goto LABEL_58;
  }

  if (!*(a3 + 5))
  {
    goto LABEL_58;
  }

  v12 = (a1 + 16);
  if ((*(a3 + 56) & 0xC00) != 0x800)
  {
    goto LABEL_34;
  }

  v13 = 0;
  v14 = (v8 + v7 + a3 + 72);
  v15 = v8 + v10 * 4;
  v16 = (*(*(a1 + 24) + 316) + *(*(a1 + 24) + 320) * a2);
  do
  {
    LODWORD(v17) = *(v14 - 3);
    LODWORD(v18) = *(v14 - 2);
    v19 = v5[1];
    if (*v5 >= v18)
    {
      v20 = *(v14 - 2);
    }

    else
    {
      v20 = *v5;
    }

    if (*v5 >= v17)
    {
      v17 = v20;
    }

    else
    {
      v17 = v17;
    }

    if (v19 < v18)
    {
      LODWORD(v18) = v5[1];
    }

    if (v19 >= v17)
    {
      v18 = v18;
    }

    else
    {
      v18 = v17;
    }

    LODWORD(v21) = *(v14 - 1);
    LODWORD(v22) = *v14;
    v23 = v5[2];
    v24 = v5[3];
    if (v23 >= *v14)
    {
      v25 = *v14;
    }

    else
    {
      v25 = v5[2];
    }

    if (v23 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v21 = v21;
    }

    if (v24 < v22)
    {
      LODWORD(v22) = v5[3];
    }

    if (v24 >= v21)
    {
      v22 = v22;
    }

    else
    {
      v22 = v21;
    }

    v26 = (v5 + v15);
    *v26 = v17 | (v18 << 32);
    v26[1] = v21 | (v22 << 32);
    v27 = v18 | (v17 << 16);
    v28 = *(*v12 + *v11 + 24) + v16;
    *v28 = v27;
    *(v28 + 4) = v22 | (v21 << 16);
    *(v28 + 8) = 0x3F80000000000000;
    ++v13;
    v16 += 16;
    v5 += 4;
    v14 += 4;
  }

  while (v13 < *(a3 + 5));
LABEL_58:
  v50 = 488636415;
  v51 = *v11;
  v52 = *(*(a1 + 16) + v51 + 8) + v4;
  v53 = (a3 + 12);
  *(a3 + 12) |= 0x10000u;
  *(a3 + 40) = (v52 >> 16) & 0xFFFF0000;
  *(a3 + 44) = v52 & 0xFFFFFFFC;
  v54 = *(a1 + 24);
  v55 = (*(*(a1 + 16) + v51 + 24) + (*(v54 + 148) + *(v54 + 152) * a2));
  v56 = *(a3 + 16) & 0xF3FFFFF;
  if (*(v54 + 396) == 1)
  {
    v58 = v55[4];
    v59 = v55[5];
    v57 = v55 + 4;
    v60 = v57[2];
    v57[1] = v56 | v59 & 0xF0C00000;
    v57[2] = *(a3 + 20) & 0xF3FFFFF | v60 & 0xF0C00000;
    v61 = v58 & 0xE2E00000;
  }

  else
  {
    v62 = v55[16];
    v57 = v55 + 16;
    v63 = *(v57 - 8);
    *(v57 - 7) = v56 | *(v57 - 7) & 0xF0C00000;
    *(v57 - 6) = *(a3 + 20) & 0xF3FFFFF | *(v57 - 6) & 0xF0C00000;
    *(v57 - 8) = *(a3 + 12) & 0x1D1FFFFF | v63 & 0xE2E00000;
    v61 = v62 & 0x23020;
    v53 = (a3 + 56);
    v50 = -143393;
  }

  *v57 = *v53 & v50 | v61;
  v64 = *(a1 + 24);
  v65 = *(*(a1 + 16) + *v11 + 24) + (*(v64 + 148) + *(v64 + 152) * a2);
  v66 = 84;
  if (*(v64 + 396))
  {
    v66 = 28;
  }

  return AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(a3, (v65 + v66));
}

uint64_t AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v5 = *(*(a1 + 16) + *MEMORY[0x29EDC5638] + 24);
  v6 = (*(*(a1 + 24) + 324) + *(*(a1 + 24) + 328) * a2);
  v7 = v5 + v6;
  if ((*(v5 + v6) & 0x400) != 0)
  {
    v8 = *(v5 + v6 + 5);
  }

  else
  {
    v8 = *(v5 + v6 + 4);
  }

  if (a4)
  {
    v9 = a4;
    v10 = (a3 + 24);
    v11 = 24 * *(v5 + v6 + 5) + 16 * *(v5 + v6 + 4) + v6 + v5;
    v12 = (v11 + 32 * v8 + 64);
    v13 = (v11 + 72);
    v14 = a4;
    do
    {
      v17 = *(v10 - 3);
      v20 = *(v10 - 2);
      v33 = *(v10 - 1);
      v32 = *v10;
      v34 = v17 + v33;
      v15 = v33 < 0.0;
      if (v33 >= 0.0)
      {
        v16 = *(v10 - 3);
      }

      else
      {
        v16 = v17 + v33;
      }

      if (!v15)
      {
        v17 = v34;
      }

      v18 = v32 < 0.0;
      if (v32 >= 0.0)
      {
        v19 = *(v10 - 2);
      }

      else
      {
        v19 = v20 + *v10;
      }

      if (!v18)
      {
        v20 = v20 + *v10;
      }

      if (v16 <= 4294967300.0)
      {
        v21 = v16;
      }

      else
      {
        v21 = 4294967300.0;
      }

      if (v16 >= 0.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = v22;
      if (v17 <= 4294967300.0)
      {
        v24 = v17;
      }

      else
      {
        v24 = 4294967300.0;
      }

      if (v17 >= 0.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = vcvtpd_u64_f64(v25);
      if (v19 <= 4294967300.0)
      {
        v27 = v19;
      }

      else
      {
        v27 = 4294967300.0;
      }

      if (v19 < 0.0)
      {
        v27 = 0.0;
      }

      v28 = v27;
      if (v20 <= 4294967300.0)
      {
        v29 = v20;
      }

      else
      {
        v29 = 4294967300.0;
      }

      if (v20 < 0.0)
      {
        v29 = 0.0;
      }

      *(v13 - 3) = v23;
      *(v13 - 2) = v26;
      *(v13 - 1) = v28;
      *v13 = vcvtpd_u64_f64(v29);
      v30 = v10[1];
      v31 = v10[2];
      *(v12 - 1) = v30;
      *v12 = v31;
      v10 += 6;
      v12 += 2;
      v13 += 4;
      --v14;
    }

    while (v14);
    v35 = (a3 + 24);
    v36 = (v6 + 16 * *(v7 + 4) + v5 + 80);
    do
    {
      v39 = *(v35 - 3);
      v40 = *(v35 - 2);
      v41 = v39;
      if (v39 > 3.40282347e38)
      {
        v41 = 3.4028e38;
      }

      if (v39 >= -3.40282347e38)
      {
        v42 = v41;
      }

      else
      {
        v42 = -3.4028e38;
      }

      v43 = v40;
      if (v40 > 3.40282347e38)
      {
        v43 = 3.4028e38;
      }

      if (v40 >= -3.40282347e38)
      {
        v44 = v43;
      }

      else
      {
        v44 = -3.4028e38;
      }

      *(v36 - 5) = v42;
      *(v36 - 4) = v44;
      v45 = *(v35 - 1);
      v46 = *v35;
      v47 = v45;
      if (v45 > 3.40282347e38)
      {
        v47 = 3.4028e38;
      }

      if (v45 >= -3.40282347e38)
      {
        v48 = v47;
      }

      else
      {
        v48 = -3.4028e38;
      }

      v49 = v46;
      if (v46 > 3.40282347e38)
      {
        v49 = 3.4028e38;
      }

      if (v46 >= -3.40282347e38)
      {
        v50 = v49;
      }

      else
      {
        v50 = -3.4028e38;
      }

      *(v36 - 3) = v48;
      *(v36 - 2) = v50;
      v52 = v35[1];
      v51 = v35[2];
      v53 = v52;
      if (v52 > 3.40282347e38)
      {
        v53 = 3.4028e38;
      }

      if (v52 >= -3.40282347e38)
      {
        v54 = v53;
      }

      else
      {
        v54 = -3.4028e38;
      }

      *(v36 - 1) = v54;
      if (v51 < -3.40282347e38)
      {
        v37 = -8388609;
      }

      else
      {
        if (v51 <= 3.40282347e38)
        {
          v38 = v51;
          goto LABEL_43;
        }

        v37 = 2139095039;
      }

      v38 = *&v37;
LABEL_43:
      *v36 = v38;
      v36 += 6;
      v35 += 6;
      --v9;
    }

    while (v9);
  }

  return AGX::IndirectRenderCommandEncoderGen4_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::handleScissorUpdate(a1, a2, v7);
}

uint64_t AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a1 + 38);
  v4 = *(a1 + 39);
  v475 = *(a1 + 19) == 0;
  v5 = v4 == 10 && v3 == 0;
  v595 = v5;
  v6 = v3 == 1;
  v7 = v4 == 9 && v3 == 0;
  v598 = v7;
  v8 = v4 == 9 && v3 == 1;
  v565 = v8;
  v9 = v3 == 2;
  v10 = v4 == 8 && v3 == 0;
  v601 = v10;
  v11 = v4 == 8 && v3 == 1;
  v568 = v11;
  v12 = v4 == 8 && v3 == 2;
  v491 = v12;
  v13 = v3 == 3;
  v14 = v4 == 7 && v3 == 0;
  v604 = v14;
  v15 = v4 == 7 && v3 == 1;
  v571 = v15;
  v16 = v4 == 7 && v3 == 2;
  v489 = v16;
  v17 = v4 == 7 && v3 == 3;
  v503 = v17;
  v18 = v3 == 4;
  v19 = v4 == 6 && v3 == 0;
  v607 = v19;
  v20 = v4 == 6 && v3 == 1;
  v574 = v20;
  v21 = v4 == 6 && v3 == 2;
  v486 = v21;
  v22 = v4 == 6 && v3 == 3;
  v496 = v22;
  v23 = v4 == 6 && v3 == 4;
  v524 = v23;
  v24 = v3 == 5;
  v25 = v4 == 5 && v3 == 0;
  v610 = v25;
  v26 = v4 == 5 && v3 == 1;
  v577 = v26;
  v27 = v4 == 5 && v3 == 2;
  v483 = v27;
  v28 = v4 == 5 && v3 == 3;
  v493 = v28;
  v29 = v4 == 5 && v3 == 4;
  v512 = v29;
  v30 = v4 == 5 && v3 == 5;
  v542 = v30;
  v31 = v3 == 6;
  v32 = v4 == 4 && v3 == 0;
  v613 = v32;
  v33 = v4 == 4 && v3 == 1;
  v580 = v33;
  v34 = v4 == 4 && v3 == 2;
  v480 = v34;
  v35 = v4 == 4 && v3 == 3;
  v488 = v35;
  v36 = v4 == 4 && v3 == 4;
  v498 = v36;
  v37 = v4 == 4 && v3 == 5;
  v527 = v37;
  v38 = v4 == 4 && v3 == 6;
  v551 = v38;
  v39 = v3 == 7;
  v40 = v4 == 3 && v3 == 0;
  v616 = v40;
  v41 = v4 == 3 && v3 == 1;
  v583 = v41;
  v42 = v4 == 3 && v3 == 2;
  v478 = v42;
  v43 = v4 == 3 && v3 == 3;
  v485 = v43;
  v44 = v4 == 3 && v3 == 4;
  v494 = v44;
  v45 = v4 == 3 && v3 == 5;
  v509 = v45;
  v46 = v4 == 3 && v3 == 6;
  v533 = v46;
  v47 = v4 == 3 && v3 == 7;
  v556 = v47;
  v48 = v3 == 8;
  v49 = v4 == 2 && v3 == 0;
  v619 = v49;
  v50 = v4 == 2 && v3 == 1;
  v586 = v50;
  v51 = v4 == 2 && v3 == 2;
  v476 = v51;
  v52 = v4 == 2 && v3 == 3;
  v482 = v52;
  v53 = v4 == 2 && v3 == 4;
  v490 = v53;
  v54 = v4 == 2 && v3 == 5;
  v497 = v54;
  v55 = v4 == 2 && v3 == 6;
  v515 = v55;
  v56 = v4 == 2 && v3 == 7;
  v539 = v56;
  v57 = v4 == 2 && v3 == 8;
  v553 = v57;
  v58 = v3 == 9;
  v59 = v4 == 1 && v3 == 0;
  v651 = v59;
  v60 = v4 == 1 && v3 == 1;
  v589 = v60;
  v61 = v4 == 1 && v3 == 2;
  v559 = v61;
  v62 = v4 == 1 && v3 == 3;
  v479 = v62;
  v63 = v4 == 1 && v3 == 4;
  v484 = v63;
  v64 = v4 == 1 && v3 == 5;
  v492 = v64;
  v65 = v4 == 1 && v3 == 6;
  v500 = v65;
  v66 = v4 == 1 && v3 == 7;
  v521 = v66;
  v67 = v4 == 1 && v3 == 8;
  v536 = v67;
  v68 = v4 == 1 && v3 == 9;
  v548 = v68;
  v69 = v3 == 10;
  if (v4)
  {
    v70 = 0;
  }

  else
  {
    v70 = v6;
  }

  v592 = v70;
  if (v4)
  {
    v71 = 0;
  }

  else
  {
    v71 = v9;
  }

  v562 = v71;
  if (v4)
  {
    v72 = 0;
  }

  else
  {
    v72 = v13;
  }

  v477 = v72;
  if (v4)
  {
    v73 = 0;
  }

  else
  {
    v73 = v18;
  }

  v481 = v73;
  if (v4)
  {
    v74 = 0;
  }

  else
  {
    v74 = v24;
  }

  v487 = v74;
  if (v4)
  {
    v31 = 0;
  }

  v495 = v31;
  if (v4)
  {
    v75 = 0;
  }

  else
  {
    v75 = v39;
  }

  v506 = v75;
  if (v4)
  {
    v76 = 0;
  }

  else
  {
    v76 = v48;
  }

  v518 = v76;
  if (v4)
  {
    v77 = 0;
  }

  else
  {
    v77 = v58;
  }

  v530 = v77;
  if (v4)
  {
    v78 = 0;
  }

  else
  {
    v78 = v69;
  }

  v545 = v78;
  v80 = *(a1 + 31);
  v79 = *(a1 + 32);
  v81 = v79 != 0;
  v83 = *(a1 + 28);
  v82 = *(a1 + 29);
  v84 = *(a1 + 30);
  v85 = v82 == 0;
  v86 = v79 | v80 | v84;
  v87 = v82 | v83;
  v88 = *(a1 + 124) != 0;
  v474 = (v86 | v82 | v83) == 0;
  v89 = v82 == 1;
  v90 = v82 == 2;
  if (v83)
  {
    v91 = 0;
  }

  else
  {
    v91 = v89;
  }

  if (v83)
  {
    v92 = 0;
  }

  else
  {
    v92 = v90;
  }

  v93 = v83 == 1 && v85;
  v94 = v83 == 1 && v89;
  v95 = v83 == 1 && v90;
  v96 = v83 == 2 && v85;
  v97 = v83 == 2 && v89;
  v98 = v83 == 2 && v90;
  v99 = v86 == 0;
  v463 = v91;
  v464 = v96;
  if (v86)
  {
    v100 = 0;
  }

  else
  {
    v100 = v96;
  }

  v473 = v100;
  v461 = v97;
  v462 = v94;
  v101 = v99 && v97;
  v472 = v101;
  v102 = v99 && v91;
  v103 = v99 && v93;
  v470 = v103;
  v471 = v102;
  v104 = v99 && v94;
  v459 = v95;
  v460 = v92;
  if (!v99)
  {
    v92 = 0;
  }

  v468 = v92;
  v469 = v104;
  v105 = v99 && v95;
  v467 = v105;
  v458 = v98;
  v106 = v99 && v98;
  v465 = v93;
  v466 = v106;
  v107 = v79 != 1;
  v108 = v79 != 2;
  if (v80)
  {
    v109 = 1;
  }

  else
  {
    v109 = v107;
  }

  if (v80)
  {
    v110 = 1;
  }

  else
  {
    v110 = v108;
  }

  v111 = v80 != 1 || v81;
  v112 = v80 != 1 || v107;
  v113 = v80 != 1 || v108;
  if (v80 == 2)
  {
    v114 = v108;
  }

  else
  {
    v81 = 1;
    v107 = 1;
    v114 = 1;
  }

  if (v84)
  {
    v115 = 1;
  }

  else
  {
    v115 = v111;
  }

  if (v84)
  {
    v116 = 1;
  }

  else
  {
    v116 = v81;
  }

  if (v84)
  {
    v117 = 1;
  }

  else
  {
    v117 = v109;
  }

  if (v84)
  {
    v118 = 1;
  }

  else
  {
    v118 = v112;
  }

  if (v84)
  {
    v119 = 1;
  }

  else
  {
    v119 = v107;
  }

  v629 = v119;
  if (v84)
  {
    v120 = 1;
  }

  else
  {
    v120 = v110;
  }

  v640 = v120;
  if (v84)
  {
    v121 = 1;
  }

  else
  {
    v121 = v113;
  }

  v659 = v121;
  if (v84)
  {
    v122 = 1;
  }

  else
  {
    v122 = v114;
  }

  v664 = v122;
  v123 = v84 != 1 || *(a1 + 124) != 0;
  if (v84 == 1)
  {
    v124 = v111;
  }

  else
  {
    v124 = 1;
  }

  v125 = v84 != 1 || v81;
  if (v84 == 1)
  {
    v126 = v109;
  }

  else
  {
    v126 = 1;
  }

  if (v84 == 1)
  {
    v127 = v112;
  }

  else
  {
    v127 = 1;
  }

  v128 = v84 != 1 || v107;
  if (v84 == 1)
  {
    v129 = v110;
  }

  else
  {
    v129 = 1;
  }

  v622 = v129;
  if (v84 == 1)
  {
    v130 = v113;
  }

  else
  {
    v130 = 1;
  }

  v634 = v130;
  if (v84 == 1)
  {
    v131 = v114;
  }

  else
  {
    v131 = 1;
  }

  v646 = v131;
  if (v84 == 2)
  {
    v132 = v107;
  }

  else
  {
    v88 = 1;
    v111 = 1;
    v81 = 1;
    v109 = 1;
    v112 = 1;
    v132 = 1;
  }

  if (v84 == 2)
  {
    v133 = v113;
  }

  else
  {
    v110 = 1;
    v133 = 1;
  }

  if (v84 == 2)
  {
    v134 = v114;
  }

  else
  {
    v134 = 1;
  }

  v625 = v134;
  v135 = v87 == 0;
  v136 = !v123;
  v137 = !v88;
  v138 = v115 ^ 1;
  v139 = v124 ^ 1;
  v140 = v111 ^ 1;
  v141 = v116 ^ 1;
  v142 = v125 ^ 1;
  v143 = !v81;
  v144 = v117 ^ 1;
  v145 = v126 ^ 1;
  v146 = v109 ^ 1;
  v147 = v118 ^ 1;
  v148 = v127 ^ 1;
  v149 = v112 ^ 1;
  v150 = v629 ^ 1;
  v151 = v128 ^ 1;
  v152 = v132 ^ 1;
  v153 = v640 ^ 1;
  v154 = v110 ^ 1;
  v155 = v659 ^ 1;
  v156 = v634 ^ 1;
  v157 = v133 ^ 1;
  v158 = v664 ^ 1;
  v159 = v646 ^ 1;
  v160 = v625 ^ 1;
  v641 = v136;
  if (v135)
  {
    v161 = v136;
  }

  else
  {
    v161 = 0;
  }

  v647 = v161;
  v635 = v137;
  if (v135)
  {
    v162 = v137;
  }

  else
  {
    v162 = 0;
  }

  v630 = v162;
  v163 = v138;
  if (v135)
  {
    v164 = v138;
  }

  else
  {
    v164 = 0;
  }

  v165 = v139;
  if (v135)
  {
    v166 = v139;
  }

  else
  {
    v166 = 0;
  }

  v437 = v166;
  v167 = v140;
  if (v135)
  {
    v168 = v140;
  }

  else
  {
    v168 = 0;
  }

  v438 = v147;
  v439 = v168;
  v169 = v141;
  if (v135)
  {
    v170 = v141;
  }

  else
  {
    v170 = 0;
  }

  v440 = v170;
  v171 = v142;
  if (v135)
  {
    v172 = v142;
  }

  else
  {
    v172 = 0;
  }

  v443 = v172;
  v173 = v143;
  if (v135)
  {
    v174 = v143;
  }

  else
  {
    v174 = 0;
  }

  v445 = v174;
  v175 = v144;
  if (v135)
  {
    v176 = v144;
  }

  else
  {
    v176 = 0;
  }

  v447 = v176;
  v177 = v145;
  if (v135)
  {
    v178 = v145;
  }

  else
  {
    v178 = 0;
  }

  v449 = v178;
  v179 = v146;
  if (v135)
  {
    v180 = v146;
  }

  else
  {
    v180 = 0;
  }

  v451 = v180;
  if (v135)
  {
    v181 = v147;
  }

  else
  {
    v181 = 0;
  }

  v453 = v181;
  if (v135)
  {
    v182 = v148;
  }

  else
  {
    v182 = 0;
  }

  v455 = v182;
  if (v135)
  {
    v183 = v149;
  }

  else
  {
    v183 = 0;
  }

  v457 = v183;
  if (v135)
  {
    v184 = v150;
  }

  else
  {
    v184 = 0;
  }

  v626 = v184;
  v441 = v151;
  v442 = v622 ^ 1;
  if (v135)
  {
    v185 = v151;
  }

  else
  {
    v185 = 0;
  }

  if (v135)
  {
    v186 = v132 ^ 1;
  }

  else
  {
    v186 = 0;
  }

  if (v135)
  {
    v187 = v153;
  }

  else
  {
    v187 = 0;
  }

  v446 = v187;
  if (v135)
  {
    v188 = v622 ^ 1;
  }

  else
  {
    v188 = 0;
  }

  v448 = v188;
  if (v135)
  {
    v189 = v154;
  }

  else
  {
    v189 = 0;
  }

  v444 = v189;
  if (v135)
  {
    v190 = v659 ^ 1;
  }

  else
  {
    v190 = 0;
  }

  v450 = v190;
  if (v135)
  {
    v191 = v156;
  }

  else
  {
    v191 = 0;
  }

  if (v135)
  {
    v192 = v157;
  }

  else
  {
    v192 = 0;
  }

  v452 = v192;
  if (v135)
  {
    v193 = v664 ^ 1;
  }

  else
  {
    v193 = 0;
  }

  v454 = v193;
  if (v135)
  {
    v194 = v159;
  }

  else
  {
    v194 = 0;
  }

  v456 = v194;
  if (v135)
  {
    v195 = v160;
  }

  else
  {
    v195 = 0;
  }

  LOWORD(v660) = 7;
  v665 = a1;
  v196 = 3072;
  if (*(a1 + 35) != 3 || *(a1 + 34) != 165)
  {
    v197 = 0;
    v198 = 0;
    goto LABEL_472;
  }

  v435 = v148;
  v436 = v185;
  v197 = 0;
  v198 = 0;
  if (!v475 && !v651 && !v619 && !v616 && !v613 && !v610 && !v607 && !v604 && !v601 && !v598 && !v595 && !v592 && !v589 && !v586 && !v583 && !v580 && !v577 && !v574 && !v571 && !v568 && !v565 && !v562 && !v559 && !v476 && !v478 && !v480 && !v483 && !v486 && !v489 && !v491 && !v477 && !v479 && !v482 && !v485 && !v488 && !v493 && !v496 && !v503 && !v481 && !v484 && !v490 && !v494 && !v498 && !v512 && !v524 && !v487 && !v492 && !v497 && !v509 && !v527 && !v542 && !v495 && !v500 && !v515 && !v533 && !v551 && !v506 && !v521 && !v539 && !v556 && !v518 && !v536 && !v553 && !v530 && !v548 && !v545)
  {
    goto LABEL_472;
  }

  v433 = v191;
  v434 = v149;
  v199 = *(a1 + 18);
  v200 = ((v199 >> 16) >> 8) & 0xF8;
  v196 = v200 | 0xC00;
  v660 = (8 * (v199 & 1)) | (32 * (v199 >> 16)) | (v199 >> 28) & 0x10 | 7;
  v201 = a1[132];
  v197 = (a1[164] << 8) | ((*(a1 + 80) & 3) << 6) | a1[108] & 1 | (v201 >> 5) & 6;
  if (!v475)
  {
    if (v651)
    {
      v196 = v200 | 0x1C00;
      goto LABEL_432;
    }

    if (v619)
    {
      v196 = v200 | 0x2C00;
      goto LABEL_432;
    }

    if (v616)
    {
      v196 = v200 | 0x3C00;
      goto LABEL_432;
    }

    if (v613)
    {
      v196 = v200 | 0x4C00;
      goto LABEL_432;
    }

    if (v610)
    {
      v196 = v200 | 0x5C00;
      goto LABEL_432;
    }

    if (v607)
    {
      v196 = v200 | 0x6C00;
      goto LABEL_432;
    }

    if (v604)
    {
      v196 = v200 | 0x7C00;
      goto LABEL_432;
    }

    if (v601)
    {
      v196 = v200 | 0x8C00;
      goto LABEL_432;
    }

    if (v598)
    {
      v196 = v200 | 0x9C00;
      goto LABEL_432;
    }

    if (v595)
    {
      v196 = v200 | 0xAC00;
      goto LABEL_432;
    }

    if (v592)
    {
      v196 = v200 | 0xBC00;
      goto LABEL_432;
    }

    if (v589)
    {
      v196 = v200 | 0xCC00;
      goto LABEL_432;
    }

    if (v586)
    {
      v202 = -9216;
LABEL_431:
      v196 = v200 | v202;
      goto LABEL_432;
    }

    if (v583)
    {
      v202 = -5120;
      goto LABEL_431;
    }

    if (v580)
    {
      v196 = v200 | 0xFC00;
      goto LABEL_432;
    }

    if (v577)
    {
      goto LABEL_1062;
    }

    if (v574)
    {
      v196 = v200 | 0x1C00;
LABEL_1062:
      v197 = v197 | 8;
      goto LABEL_432;
    }

    if (v571)
    {
      v196 = v200 | 0x2C00;
      goto LABEL_1062;
    }

    if (v568)
    {
      v196 = v200 | 0x3C00;
      goto LABEL_1062;
    }

    if (v565)
    {
      v196 = v200 | 0x4C00;
      goto LABEL_1062;
    }

    if (v562)
    {
      v196 = v200 | 0x5C00;
      goto LABEL_1062;
    }

    if (v559)
    {
      v196 = v200 | 0x6C00;
      goto LABEL_1062;
    }

    if (v476)
    {
      v196 = v200 | 0x7C00;
      goto LABEL_1062;
    }

    if (v478)
    {
      v196 = v200 | 0x8C00;
      goto LABEL_1062;
    }

    if (v480)
    {
      v196 = v200 | 0x9C00;
      goto LABEL_1062;
    }

    if (v483)
    {
      v196 = v200 | 0xAC00;
      goto LABEL_1062;
    }

    if (v486)
    {
      v196 = v200 | 0xBC00;
      goto LABEL_1062;
    }

    if (v489)
    {
      v196 = v200 | 0xCC00;
      goto LABEL_1062;
    }

    if (v491)
    {
      v196 = v200 | 0xDC00;
      goto LABEL_1062;
    }

    if (v477)
    {
      v196 = v200 | 0xEC00;
      goto LABEL_1062;
    }

    if (v479)
    {
      v196 = v200 | 0xFC00;
      goto LABEL_1062;
    }

    if (v482)
    {
      goto LABEL_1190;
    }

    if (v485)
    {
      v196 = v200 | 0x1C00;
LABEL_1190:
      v197 = v197 | 0x10;
      goto LABEL_432;
    }

    if (v488)
    {
      v196 = v200 | 0x2C00;
      goto LABEL_1190;
    }

    if (v493)
    {
      v196 = v200 | 0x3C00;
      goto LABEL_1190;
    }

    if (v496)
    {
      v196 = v200 | 0x4C00;
      goto LABEL_1190;
    }

    if (v503)
    {
      v196 = v200 | 0x5C00;
      goto LABEL_1190;
    }

    if (v481)
    {
      v196 = v200 | 0x6C00;
      goto LABEL_1190;
    }

    if (v484)
    {
      v196 = v200 | 0x7C00;
      goto LABEL_1190;
    }

    if (v490)
    {
      v196 = v200 | 0x8C00;
      goto LABEL_1190;
    }

    if (v494)
    {
      v196 = v200 | 0x9C00;
      goto LABEL_1190;
    }

    if (v498)
    {
      v196 = v200 | 0xAC00;
      goto LABEL_1190;
    }

    if (v512)
    {
      v196 = v200 | 0xBC00;
      goto LABEL_1190;
    }

    if (v524)
    {
      v196 = v200 | 0xCC00;
      goto LABEL_1190;
    }

    if (v487)
    {
      v196 = v200 | 0xDC00;
      goto LABEL_1190;
    }

    if (v492)
    {
      v196 = v200 | 0xEC00;
      goto LABEL_1190;
    }

    if (v497)
    {
      v196 = v200 | 0xFC00;
      goto LABEL_1190;
    }

    if (v509)
    {
      goto LABEL_1318;
    }

    if (v527)
    {
      v196 = v200 | 0x1C00;
LABEL_1318:
      v197 = v197 | 0x18;
      goto LABEL_432;
    }

    if (v542)
    {
      v196 = v200 | 0x2C00;
      goto LABEL_1318;
    }

    if (v495)
    {
      v196 = v200 | 0x3C00;
      goto LABEL_1318;
    }

    if (v500)
    {
      v196 = v200 | 0x4C00;
      goto LABEL_1318;
    }

    if (v515)
    {
      v196 = v200 | 0x5C00;
      goto LABEL_1318;
    }

    if (v533)
    {
      v196 = v200 | 0x6C00;
      goto LABEL_1318;
    }

    if (v551)
    {
      v196 = v200 | 0x7C00;
      goto LABEL_1318;
    }

    if (v506)
    {
      v196 = v200 | 0x8C00;
      goto LABEL_1318;
    }

    if (v521)
    {
      v196 = v200 | 0x9C00;
      goto LABEL_1318;
    }

    if (v539)
    {
      v196 = v200 | 0xAC00;
      goto LABEL_1318;
    }

    if (v556)
    {
      v196 = v200 | 0xBC00;
      goto LABEL_1318;
    }

    if (v518)
    {
      v196 = v200 | 0xCC00;
      goto LABEL_1318;
    }

    if (v536)
    {
      v196 = v200 | 0xDC00;
      goto LABEL_1318;
    }

    if (v553)
    {
      v196 = v200 | 0xEC00;
      goto LABEL_1318;
    }

    if (v530)
    {
      v196 = v200 | 0xFC00;
      goto LABEL_1318;
    }

    if (v548)
    {
      v197 = v197 | 0x20;
    }

    else if (v545)
    {
      v196 = v200 | 0x1C00;
      v197 = v197 | 0x20;
    }
  }

LABEL_432:
  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10);
  if (v474)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10);
    goto LABEL_472;
  }

  if (v473)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 4;
    goto LABEL_472;
  }

  if (v472)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 8;
    goto LABEL_472;
  }

  if (v471)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xC;
    goto LABEL_472;
  }

  if (v470)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x10;
    goto LABEL_472;
  }

  if (v469)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x14;
    goto LABEL_472;
  }

  if (v468)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x18;
    goto LABEL_472;
  }

  if (v467)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1C;
    goto LABEL_472;
  }

  if (v466)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x20;
    goto LABEL_472;
  }

  if (v647)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x24;
    goto LABEL_472;
  }

  if ((v641 & v465) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x28;
    goto LABEL_472;
  }

  if ((v641 & v464) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x2C;
    goto LABEL_472;
  }

  if ((v641 & v463) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x30;
    goto LABEL_472;
  }

  if ((v641 & v462) != 0)
  {
    v203 = 13;
LABEL_460:
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | (4 * v203);
    goto LABEL_472;
  }

  if ((v641 & v461) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x38;
  }

  else if ((v641 & v460) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x3C;
  }

  else if ((v641 & v459) != 0)
  {
    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x40;
  }

  else
  {
    if ((v641 & v458) != 0)
    {
      v203 = 17;
      goto LABEL_460;
    }

    if (v630)
    {
      v203 = 18;
      goto LABEL_460;
    }

    if ((v635 & v465) != 0)
    {
      v203 = 19;
      goto LABEL_460;
    }

    if ((v635 & v464) != 0)
    {
      v203 = 20;
      goto LABEL_460;
    }

    if ((v635 & v463) != 0)
    {
      v203 = 21;
      goto LABEL_460;
    }

    if ((v635 & v462) != 0)
    {
      v203 = 22;
      goto LABEL_460;
    }

    if ((v635 & v461) != 0)
    {
      v203 = 23;
      goto LABEL_460;
    }

    if ((v635 & v460) != 0)
    {
      v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x60;
    }

    else
    {
      if ((v635 & v459) != 0)
      {
        v203 = 25;
        goto LABEL_460;
      }

      if ((v635 & v458) != 0)
      {
        v203 = 26;
        goto LABEL_460;
      }

      if (v164)
      {
        v203 = 27;
        goto LABEL_460;
      }

      if ((v163 & v465) != 0)
      {
        v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x70;
      }

      else
      {
        if ((v163 & v464) != 0)
        {
          v203 = 29;
          goto LABEL_460;
        }

        if ((v163 & v463) != 0)
        {
          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x78;
        }

        else if ((v163 & v462) != 0)
        {
          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x7C;
        }

        else if ((v163 & v461) != 0)
        {
          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x80;
        }

        else
        {
          if ((v163 & v460) != 0)
          {
            v203 = 33;
            goto LABEL_460;
          }

          if ((v163 & v459) != 0)
          {
            v203 = 34;
            goto LABEL_460;
          }

          if ((v163 & v458) != 0)
          {
            v203 = 35;
            goto LABEL_460;
          }

          if (v437)
          {
            v203 = 36;
            goto LABEL_460;
          }

          if ((v165 & v465) != 0)
          {
            v203 = 37;
            goto LABEL_460;
          }

          if ((v165 & v464) != 0)
          {
            v203 = 38;
            goto LABEL_460;
          }

          if ((v165 & v463) != 0)
          {
            v203 = 39;
            goto LABEL_460;
          }

          if ((v165 & v462) != 0)
          {
            v203 = 40;
            goto LABEL_460;
          }

          if ((v165 & v461) != 0)
          {
            v203 = 41;
            goto LABEL_460;
          }

          if ((v165 & v460) != 0)
          {
            v203 = 42;
            goto LABEL_460;
          }

          if ((v165 & v459) != 0)
          {
            v203 = 43;
            goto LABEL_460;
          }

          if ((v165 & v458) != 0)
          {
            v203 = 44;
            goto LABEL_460;
          }

          if (v439)
          {
            v203 = 45;
            goto LABEL_460;
          }

          if ((v167 & v465) != 0)
          {
            v203 = 46;
            goto LABEL_460;
          }

          if ((v167 & v464) != 0)
          {
            v203 = 47;
            goto LABEL_460;
          }

          if ((v167 & v463) != 0)
          {
            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xC0;
          }

          else
          {
            if ((v167 & v462) != 0)
            {
              v203 = 49;
              goto LABEL_460;
            }

            if ((v167 & v461) != 0)
            {
              v203 = 50;
              goto LABEL_460;
            }

            if ((v167 & v460) != 0)
            {
              v203 = 51;
              goto LABEL_460;
            }

            if ((v167 & v459) != 0)
            {
              v203 = 52;
              goto LABEL_460;
            }

            if ((v167 & v458) != 0)
            {
              v203 = 53;
              goto LABEL_460;
            }

            if (v440)
            {
              v203 = 54;
              goto LABEL_460;
            }

            if ((v169 & v465) != 0)
            {
              v203 = 55;
              goto LABEL_460;
            }

            if ((v169 & v464) != 0)
            {
              v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xE0;
            }

            else
            {
              if ((v169 & v463) != 0)
              {
                v203 = 57;
                goto LABEL_460;
              }

              if ((v169 & v462) != 0)
              {
                v203 = 58;
                goto LABEL_460;
              }

              if ((v169 & v461) != 0)
              {
                v203 = 59;
                goto LABEL_460;
              }

              if ((v169 & v460) != 0)
              {
                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xF0;
              }

              else
              {
                if ((v169 & v459) != 0)
                {
                  v203 = 61;
                  goto LABEL_460;
                }

                if ((v169 & v458) != 0)
                {
                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xF8;
                }

                else if (v443)
                {
                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xFC;
                }

                else if ((v171 & v465) != 0)
                {
                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x100;
                }

                else
                {
                  if ((v171 & v464) != 0)
                  {
                    v203 = 65;
                    goto LABEL_460;
                  }

                  if ((v171 & v463) != 0)
                  {
                    v203 = 66;
                    goto LABEL_460;
                  }

                  if ((v171 & v462) != 0)
                  {
                    v203 = 67;
                    goto LABEL_460;
                  }

                  if ((v171 & v461) != 0)
                  {
                    v203 = 68;
                    goto LABEL_460;
                  }

                  if ((v171 & v460) != 0)
                  {
                    v203 = 69;
                    goto LABEL_460;
                  }

                  if ((v171 & v459) != 0)
                  {
                    v203 = 70;
                    goto LABEL_460;
                  }

                  if ((v171 & v458) != 0)
                  {
                    v203 = 71;
                    goto LABEL_460;
                  }

                  if (v445)
                  {
                    v203 = 72;
                    goto LABEL_460;
                  }

                  if ((v173 & v465) != 0)
                  {
                    v203 = 73;
                    goto LABEL_460;
                  }

                  if ((v173 & v464) != 0)
                  {
                    v203 = 74;
                    goto LABEL_460;
                  }

                  if ((v173 & v463) != 0)
                  {
                    v203 = 75;
                    goto LABEL_460;
                  }

                  if ((v173 & v462) != 0)
                  {
                    v203 = 76;
                    goto LABEL_460;
                  }

                  if ((v173 & v461) != 0)
                  {
                    v203 = 77;
                    goto LABEL_460;
                  }

                  if ((v173 & v460) != 0)
                  {
                    v203 = 78;
                    goto LABEL_460;
                  }

                  if ((v173 & v459) != 0)
                  {
                    v203 = 79;
                    goto LABEL_460;
                  }

                  if ((v173 & v458) != 0)
                  {
                    v203 = 80;
                    goto LABEL_460;
                  }

                  if (v447)
                  {
                    v203 = 81;
                    goto LABEL_460;
                  }

                  if ((v175 & v465) != 0)
                  {
                    v203 = 82;
                    goto LABEL_460;
                  }

                  if ((v175 & v464) != 0)
                  {
                    v203 = 83;
                    goto LABEL_460;
                  }

                  if ((v175 & v463) != 0)
                  {
                    v203 = 84;
                    goto LABEL_460;
                  }

                  if ((v175 & v462) != 0)
                  {
                    v203 = 85;
                    goto LABEL_460;
                  }

                  if ((v175 & v461) != 0)
                  {
                    v203 = 86;
                    goto LABEL_460;
                  }

                  if ((v175 & v460) != 0)
                  {
                    v203 = 87;
                    goto LABEL_460;
                  }

                  if ((v175 & v459) != 0)
                  {
                    v203 = 88;
                    goto LABEL_460;
                  }

                  if ((v175 & v458) != 0)
                  {
                    v203 = 89;
                    goto LABEL_460;
                  }

                  if (v449)
                  {
                    v203 = 90;
                    goto LABEL_460;
                  }

                  if ((v177 & v465) != 0)
                  {
                    v203 = 91;
                    goto LABEL_460;
                  }

                  if ((v177 & v464) != 0)
                  {
                    v203 = 92;
                    goto LABEL_460;
                  }

                  if ((v177 & v463) != 0)
                  {
                    v203 = 93;
                    goto LABEL_460;
                  }

                  if ((v177 & v462) != 0)
                  {
                    v203 = 94;
                    goto LABEL_460;
                  }

                  if ((v177 & v461) != 0)
                  {
                    v203 = 95;
                    goto LABEL_460;
                  }

                  if ((v177 & v460) != 0)
                  {
                    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x180;
                  }

                  else
                  {
                    if ((v177 & v459) != 0)
                    {
                      v203 = 97;
                      goto LABEL_460;
                    }

                    if ((v177 & v458) != 0)
                    {
                      v203 = 98;
                      goto LABEL_460;
                    }

                    if (v451)
                    {
                      v203 = 99;
                      goto LABEL_460;
                    }

                    if ((v179 & v465) != 0)
                    {
                      v203 = 100;
                      goto LABEL_460;
                    }

                    if ((v179 & v464) != 0)
                    {
                      v203 = 101;
                      goto LABEL_460;
                    }

                    if ((v179 & v463) != 0)
                    {
                      v203 = 102;
                      goto LABEL_460;
                    }

                    if ((v179 & v462) != 0)
                    {
                      v203 = 103;
                      goto LABEL_460;
                    }

                    if ((v179 & v461) != 0)
                    {
                      v203 = 104;
                      goto LABEL_460;
                    }

                    if ((v179 & v460) != 0)
                    {
                      v203 = 105;
                      goto LABEL_460;
                    }

                    if ((v179 & v459) != 0)
                    {
                      v203 = 106;
                      goto LABEL_460;
                    }

                    if ((v179 & v458) != 0)
                    {
                      v203 = 107;
                      goto LABEL_460;
                    }

                    if (v453)
                    {
                      v203 = 108;
                      goto LABEL_460;
                    }

                    if ((v438 & v465) != 0)
                    {
                      v203 = 109;
                      goto LABEL_460;
                    }

                    if ((v438 & v464) != 0)
                    {
                      v203 = 110;
                      goto LABEL_460;
                    }

                    if ((v438 & v463) != 0)
                    {
                      v203 = 111;
                      goto LABEL_460;
                    }

                    if ((v438 & v462) != 0)
                    {
                      v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1C0;
                    }

                    else
                    {
                      if ((v438 & v461) != 0)
                      {
                        v203 = 113;
                        goto LABEL_460;
                      }

                      if ((v438 & v460) != 0)
                      {
                        v203 = 114;
                        goto LABEL_460;
                      }

                      if ((v438 & v459) != 0)
                      {
                        v203 = 115;
                        goto LABEL_460;
                      }

                      if ((v438 & v458) != 0)
                      {
                        v203 = 116;
                        goto LABEL_460;
                      }

                      if (v455)
                      {
                        v203 = 117;
                        goto LABEL_460;
                      }

                      if ((v435 & v465) != 0)
                      {
                        v203 = 118;
                        goto LABEL_460;
                      }

                      if ((v435 & v464) != 0)
                      {
                        v203 = 119;
                        goto LABEL_460;
                      }

                      if ((v435 & v463) != 0)
                      {
                        v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1E0;
                      }

                      else
                      {
                        if ((v435 & v462) != 0)
                        {
                          v203 = 121;
                          goto LABEL_460;
                        }

                        if ((v435 & v461) != 0)
                        {
                          v203 = 122;
                          goto LABEL_460;
                        }

                        if ((v435 & v460) != 0)
                        {
                          v203 = 123;
                          goto LABEL_460;
                        }

                        if ((v435 & v459) != 0)
                        {
                          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1F0;
                        }

                        else
                        {
                          if ((v435 & v458) != 0)
                          {
                            v203 = 125;
                            goto LABEL_460;
                          }

                          if (v457)
                          {
                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1F8;
                          }

                          else if ((v434 & v465) != 0)
                          {
                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1FC;
                          }

                          else if ((v434 & v464) != 0)
                          {
                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x200;
                          }

                          else
                          {
                            if ((v434 & v463) != 0)
                            {
                              v203 = -127;
                              goto LABEL_460;
                            }

                            if ((v434 & v462) != 0)
                            {
                              v203 = -126;
                              goto LABEL_460;
                            }

                            if ((v434 & v461) != 0)
                            {
                              v203 = -125;
                              goto LABEL_460;
                            }

                            if ((v434 & v460) != 0)
                            {
                              v203 = -124;
                              goto LABEL_460;
                            }

                            if ((v434 & v459) != 0)
                            {
                              v203 = -123;
                              goto LABEL_460;
                            }

                            if ((v434 & v458) != 0)
                            {
                              v203 = -122;
                              goto LABEL_460;
                            }

                            if (v626)
                            {
                              v203 = -121;
                              goto LABEL_460;
                            }

                            if ((v150 & v465) != 0)
                            {
                              v203 = -120;
                              goto LABEL_460;
                            }

                            if ((v150 & v464) != 0)
                            {
                              v203 = -119;
                              goto LABEL_460;
                            }

                            if ((v150 & v463) != 0)
                            {
                              v203 = -118;
                              goto LABEL_460;
                            }

                            if ((v150 & v462) != 0)
                            {
                              v203 = -117;
                              goto LABEL_460;
                            }

                            if ((v150 & v461) != 0)
                            {
                              v203 = -116;
                              goto LABEL_460;
                            }

                            if ((v150 & v460) != 0)
                            {
                              v203 = -115;
                              goto LABEL_460;
                            }

                            if ((v150 & v459) != 0)
                            {
                              v203 = -114;
                              goto LABEL_460;
                            }

                            if ((v150 & v458) != 0)
                            {
                              v203 = -113;
                              goto LABEL_460;
                            }

                            if (v436)
                            {
                              v203 = -112;
                              goto LABEL_460;
                            }

                            if ((v441 & v465) != 0)
                            {
                              v203 = -111;
                              goto LABEL_460;
                            }

                            if ((v441 & v464) != 0)
                            {
                              v203 = -110;
                              goto LABEL_460;
                            }

                            if ((v441 & v463) != 0)
                            {
                              v203 = -109;
                              goto LABEL_460;
                            }

                            if ((v441 & v462) != 0)
                            {
                              v203 = -108;
                              goto LABEL_460;
                            }

                            if ((v441 & v461) != 0)
                            {
                              v203 = -107;
                              goto LABEL_460;
                            }

                            if ((v441 & v460) != 0)
                            {
                              v203 = -106;
                              goto LABEL_460;
                            }

                            if ((v441 & v459) != 0)
                            {
                              v203 = -105;
                              goto LABEL_460;
                            }

                            if ((v441 & v458) != 0)
                            {
                              v203 = -104;
                              goto LABEL_460;
                            }

                            if (v186)
                            {
                              v203 = -103;
                              goto LABEL_460;
                            }

                            if ((v152 & v465) != 0)
                            {
                              v203 = -102;
                              goto LABEL_460;
                            }

                            if ((v152 & v464) != 0)
                            {
                              v203 = -101;
                              goto LABEL_460;
                            }

                            if ((v152 & v463) != 0)
                            {
                              v203 = -100;
                              goto LABEL_460;
                            }

                            if ((v152 & v462) != 0)
                            {
                              v203 = -99;
                              goto LABEL_460;
                            }

                            if ((v152 & v461) != 0)
                            {
                              v203 = -98;
                              goto LABEL_460;
                            }

                            if ((v152 & v460) != 0)
                            {
                              v203 = -97;
                              goto LABEL_460;
                            }

                            if ((v152 & v459) != 0)
                            {
                              v203 = -96;
                              goto LABEL_460;
                            }

                            if ((v152 & v458) != 0)
                            {
                              v203 = -95;
                              goto LABEL_460;
                            }

                            if (v446)
                            {
                              v203 = -94;
                              goto LABEL_460;
                            }

                            if ((v153 & v465) != 0)
                            {
                              v203 = -93;
                              goto LABEL_460;
                            }

                            if ((v153 & v464) != 0)
                            {
                              v203 = -92;
                              goto LABEL_460;
                            }

                            if ((v153 & v463) != 0)
                            {
                              v203 = -91;
                              goto LABEL_460;
                            }

                            if ((v153 & v462) != 0)
                            {
                              v203 = -90;
                              goto LABEL_460;
                            }

                            if ((v153 & v461) != 0)
                            {
                              v203 = -89;
                              goto LABEL_460;
                            }

                            if ((v153 & v460) != 0)
                            {
                              v203 = -88;
                              goto LABEL_460;
                            }

                            if ((v153 & v459) != 0)
                            {
                              v203 = -87;
                              goto LABEL_460;
                            }

                            if ((v153 & v458) != 0)
                            {
                              v203 = -86;
                              goto LABEL_460;
                            }

                            if (v448)
                            {
                              v203 = -85;
                              goto LABEL_460;
                            }

                            if ((v442 & v465) != 0)
                            {
                              v203 = -84;
                              goto LABEL_460;
                            }

                            if ((v442 & v464) != 0)
                            {
                              v203 = -83;
                              goto LABEL_460;
                            }

                            if ((v442 & v463) != 0)
                            {
                              v203 = -82;
                              goto LABEL_460;
                            }

                            if ((v442 & v462) != 0)
                            {
                              v203 = -81;
                              goto LABEL_460;
                            }

                            if ((v442 & v461) != 0)
                            {
                              v203 = -80;
                              goto LABEL_460;
                            }

                            if ((v442 & v460) != 0)
                            {
                              v203 = -79;
                              goto LABEL_460;
                            }

                            if ((v442 & v459) != 0)
                            {
                              v203 = -78;
                              goto LABEL_460;
                            }

                            if ((v442 & v458) != 0)
                            {
                              v203 = -77;
                              goto LABEL_460;
                            }

                            if (v444)
                            {
                              v203 = -76;
                              goto LABEL_460;
                            }

                            if ((v154 & v465) != 0)
                            {
                              v203 = -75;
                              goto LABEL_460;
                            }

                            if ((v154 & v464) != 0)
                            {
                              v203 = -74;
                              goto LABEL_460;
                            }

                            if ((v154 & v463) != 0)
                            {
                              v203 = -73;
                              goto LABEL_460;
                            }

                            if ((v154 & v462) != 0)
                            {
                              v203 = -72;
                              goto LABEL_460;
                            }

                            if ((v154 & v461) != 0)
                            {
                              v203 = -71;
                              goto LABEL_460;
                            }

                            if ((v154 & v460) != 0)
                            {
                              v203 = -70;
                              goto LABEL_460;
                            }

                            if ((v154 & v459) != 0)
                            {
                              v203 = -69;
                              goto LABEL_460;
                            }

                            if ((v154 & v458) != 0)
                            {
                              v203 = -68;
                              goto LABEL_460;
                            }

                            if (v450)
                            {
                              v203 = -67;
                              goto LABEL_460;
                            }

                            if ((v155 & v465) != 0)
                            {
                              v203 = -66;
                              goto LABEL_460;
                            }

                            if ((v155 & v464) != 0)
                            {
                              v203 = -65;
                              goto LABEL_460;
                            }

                            if ((v155 & v463) != 0)
                            {
                              v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x300;
                            }

                            else
                            {
                              if ((v155 & v462) != 0)
                              {
                                v203 = -63;
                                goto LABEL_460;
                              }

                              if ((v155 & v461) != 0)
                              {
                                v203 = -62;
                                goto LABEL_460;
                              }

                              if ((v155 & v460) != 0)
                              {
                                v203 = -61;
                                goto LABEL_460;
                              }

                              if ((v155 & v459) != 0)
                              {
                                v203 = -60;
                                goto LABEL_460;
                              }

                              if ((v155 & v458) != 0)
                              {
                                v203 = -59;
                                goto LABEL_460;
                              }

                              if (v433)
                              {
                                v203 = -58;
                                goto LABEL_460;
                              }

                              if ((v156 & v465) != 0)
                              {
                                v203 = -57;
                                goto LABEL_460;
                              }

                              if ((v156 & v464) != 0)
                              {
                                v203 = -56;
                                goto LABEL_460;
                              }

                              if ((v156 & v463) != 0)
                              {
                                v203 = -55;
                                goto LABEL_460;
                              }

                              if ((v156 & v462) != 0)
                              {
                                v203 = -54;
                                goto LABEL_460;
                              }

                              if ((v156 & v461) != 0)
                              {
                                v203 = -53;
                                goto LABEL_460;
                              }

                              if ((v156 & v460) != 0)
                              {
                                v203 = -52;
                                goto LABEL_460;
                              }

                              if ((v156 & v459) != 0)
                              {
                                v203 = -51;
                                goto LABEL_460;
                              }

                              if ((v156 & v458) != 0)
                              {
                                v203 = -50;
                                goto LABEL_460;
                              }

                              if (v452)
                              {
                                v203 = -49;
                                goto LABEL_460;
                              }

                              if ((v157 & v465) != 0)
                              {
                                v203 = -48;
                                goto LABEL_460;
                              }

                              if ((v157 & v464) != 0)
                              {
                                v203 = -47;
                                goto LABEL_460;
                              }

                              if ((v157 & v463) != 0)
                              {
                                v203 = -46;
                                goto LABEL_460;
                              }

                              if ((v157 & v462) != 0)
                              {
                                v203 = -45;
                                goto LABEL_460;
                              }

                              if ((v157 & v461) != 0)
                              {
                                v203 = -44;
                                goto LABEL_460;
                              }

                              if ((v157 & v460) != 0)
                              {
                                v203 = -43;
                                goto LABEL_460;
                              }

                              if ((v157 & v459) != 0)
                              {
                                v203 = -42;
                                goto LABEL_460;
                              }

                              if ((v157 & v458) != 0)
                              {
                                v203 = -41;
                                goto LABEL_460;
                              }

                              if (v454)
                              {
                                v203 = -40;
                                goto LABEL_460;
                              }

                              if ((v158 & v465) != 0)
                              {
                                v203 = -39;
                                goto LABEL_460;
                              }

                              if ((v158 & v464) != 0)
                              {
                                v203 = -38;
                                goto LABEL_460;
                              }

                              if ((v158 & v463) != 0)
                              {
                                v203 = -37;
                                goto LABEL_460;
                              }

                              if ((v158 & v462) != 0)
                              {
                                v203 = -36;
                                goto LABEL_460;
                              }

                              if ((v158 & v461) != 0)
                              {
                                v203 = -35;
                                goto LABEL_460;
                              }

                              if ((v158 & v460) != 0)
                              {
                                v203 = -34;
                                goto LABEL_460;
                              }

                              if ((v158 & v459) != 0)
                              {
                                v203 = -33;
                                goto LABEL_460;
                              }

                              if ((v158 & v458) != 0)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x380;
                              }

                              else
                              {
                                if (v456)
                                {
                                  v203 = -31;
                                  goto LABEL_460;
                                }

                                if ((v159 & v465) != 0)
                                {
                                  v203 = -30;
                                  goto LABEL_460;
                                }

                                if ((v159 & v464) != 0)
                                {
                                  v203 = -29;
                                  goto LABEL_460;
                                }

                                if ((v159 & v463) != 0)
                                {
                                  v203 = -28;
                                  goto LABEL_460;
                                }

                                if ((v159 & v462) != 0)
                                {
                                  v203 = -27;
                                  goto LABEL_460;
                                }

                                if ((v159 & v461) != 0)
                                {
                                  v203 = -26;
                                  goto LABEL_460;
                                }

                                if ((v159 & v460) != 0)
                                {
                                  v203 = -25;
                                  goto LABEL_460;
                                }

                                if ((v159 & v459) != 0)
                                {
                                  v203 = -24;
                                  goto LABEL_460;
                                }

                                if ((v159 & v458) != 0)
                                {
                                  v203 = -23;
                                  goto LABEL_460;
                                }

                                if (v195)
                                {
                                  v203 = -22;
                                  goto LABEL_460;
                                }

                                if ((v160 & v465) != 0)
                                {
                                  v203 = -21;
                                  goto LABEL_460;
                                }

                                if ((v160 & v464) != 0)
                                {
                                  v203 = -20;
                                  goto LABEL_460;
                                }

                                if ((v160 & v463) != 0)
                                {
                                  v203 = -19;
                                  goto LABEL_460;
                                }

                                if ((v160 & v462) != 0)
                                {
                                  v203 = -18;
                                  goto LABEL_460;
                                }

                                if ((v160 & v461) != 0)
                                {
                                  v203 = -17;
                                  goto LABEL_460;
                                }

                                if ((v160 & v460) != 0)
                                {
                                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x3C0;
                                }

                                else
                                {
                                  if ((v160 & v459) != 0)
                                  {
                                    v203 = -15;
                                    goto LABEL_460;
                                  }

                                  if ((v160 & v458) != 0)
                                  {
                                    v203 = -14;
                                    goto LABEL_460;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_472:
  *a2 = (v197 << 48) | (v198 << 32) | (v196 << 16) | v660;
  v205 = *(a1 + 4);
  v204 = *(a1 + 5);
  v207 = *(a1 + 2);
  v206 = *(a1 + 3);
  v208 = v204 != 0;
  v209 = *(a1 + 1);
  v210 = *(a1 + 2) != 0;
  v211 = v207 == 1;
  v212 = v204 | v205 | v206;
  if (v209)
  {
    v213 = 0;
  }

  else
  {
    v213 = v207 == 1;
  }

  if (v209)
  {
    v214 = 0;
  }

  else
  {
    v214 = v207 == 2;
  }

  v215 = v209 == 1 && v207 == 0;
  v216 = v209 == 1 && v207 == 1;
  v217 = v209 == 1 && v207 == 2;
  v218 = v209 == 2 && v207 == 0;
  if (v209 == 2)
  {
    v219 = v207 == 2;
  }

  else
  {
    v211 = 0;
    v219 = 0;
  }

  v220 = v212 == 0;
  v627 = v212 == 0;
  v596 = v218;
  if (v212)
  {
    v221 = 0;
  }

  else
  {
    v221 = v218;
  }

  v623 = v221;
  v587 = v211;
  v222 = v220 && v211;
  v620 = v222;
  v593 = v213;
  v223 = v220 && v213;
  v617 = v223;
  v599 = v215;
  v224 = v220 && v215;
  v614 = v224;
  v590 = v216;
  v225 = v220 && v216;
  v611 = v225;
  v584 = v214;
  v226 = v220 && v214;
  v608 = v226;
  v581 = v217;
  v227 = v220 && v217;
  v605 = v227;
  v578 = v219;
  v228 = v220 && v219;
  v602 = v228;
  v229 = v204 != 1;
  v230 = v204 != 2;
  if (v205)
  {
    v231 = 1;
  }

  else
  {
    v231 = v229;
  }

  if (v205)
  {
    v232 = 1;
  }

  else
  {
    v232 = v230;
  }

  v233 = v205 != 1 || v208;
  v234 = v205 != 1 || v229;
  v235 = v205 != 1 || v230;
  if (v205 != 2)
  {
    v208 = 1;
    v229 = 1;
    v230 = 1;
  }

  v236 = v207 | v209;
  if (v206)
  {
    v237 = 1;
  }

  else
  {
    v237 = v233;
  }

  if (v206)
  {
    v238 = 1;
  }

  else
  {
    v238 = v208;
  }

  if (v206)
  {
    v239 = 1;
  }

  else
  {
    v239 = v231;
  }

  if (v206)
  {
    v240 = 1;
  }

  else
  {
    v240 = v234;
  }

  if (v206)
  {
    v241 = 1;
  }

  else
  {
    v241 = v229;
  }

  v631 = v241;
  if (v206)
  {
    v242 = 1;
  }

  else
  {
    v242 = v232;
  }

  v642 = v242;
  if (v206)
  {
    v243 = 1;
  }

  else
  {
    v243 = v235;
  }

  v652 = v243;
  if (v206)
  {
    v244 = 1;
  }

  else
  {
    v244 = v230;
  }

  v661 = v244;
  v245 = v206 != 1 || v210;
  if (v206 == 1)
  {
    v246 = v233;
  }

  else
  {
    v246 = 1;
  }

  v247 = v206 != 1 || v208;
  if (v206 == 1)
  {
    v248 = v231;
  }

  else
  {
    v248 = 1;
  }

  if (v206 == 1)
  {
    v249 = v234;
  }

  else
  {
    v249 = 1;
  }

  v250 = v206 != 1 || v229;
  if (v206 == 1)
  {
    v251 = v232;
  }

  else
  {
    v251 = 1;
  }

  if (v206 == 1)
  {
    v252 = v235;
  }

  else
  {
    v252 = 1;
  }

  v636 = v252;
  v253 = v206 != 1 || v230;
  v648 = v253;
  v254 = v206 == 2;
  v255 = v206 != 2 || v210;
  if (v254)
  {
    v256 = v229;
  }

  else
  {
    v233 = 1;
    v208 = 1;
    v231 = 1;
    v234 = 1;
    v256 = 1;
  }

  if (v254)
  {
    v257 = v230;
  }

  else
  {
    v232 = 1;
    v235 = 1;
    v257 = 1;
  }

  v258 = v236 == 0;
  v259 = v245 ^ 1;
  v260 = v255 ^ 1;
  v261 = v237 ^ 1;
  v262 = v246 ^ 1;
  v263 = v233 ^ 1;
  v264 = v238 ^ 1;
  v265 = v247 ^ 1;
  v266 = v239 ^ 1;
  v267 = v248 ^ 1;
  v268 = v231 ^ 1;
  v269 = v240 ^ 1;
  v270 = v249 ^ 1;
  v271 = v234 ^ 1;
  v272 = v250 ^ 1;
  v273 = v256 ^ 1;
  v274 = v642 ^ 1;
  v275 = v251 ^ 1;
  v276 = v232 ^ 1;
  v277 = v652 ^ 1;
  v278 = v636 ^ 1;
  v279 = v235 ^ 1;
  v280 = v661 ^ 1;
  v281 = v648 ^ 1;
  v282 = v257 ^ 1;
  v283 = v258;
  v662 = v283;
  v649 = v259;
  if (!v258)
  {
    v259 = 0;
  }

  v653 = v259;
  v643 = v255 ^ 1;
  if (!v258)
  {
    v260 = 0;
  }

  v637 = v260;
  v513 = v261;
  if (v258)
  {
    v284 = v261;
  }

  else
  {
    v284 = 0;
  }

  v519 = v262;
  if (v258)
  {
    v285 = v262;
  }

  else
  {
    v285 = 0;
  }

  v522 = v263;
  if (v258)
  {
    v286 = v263;
  }

  else
  {
    v286 = 0;
  }

  v525 = v264;
  if (v258)
  {
    v287 = v264;
  }

  else
  {
    v287 = 0;
  }

  v516 = v287;
  v528 = v265;
  if (v258)
  {
    v288 = v265;
  }

  else
  {
    v288 = 0;
  }

  v531 = !v208;
  v289 = v258 && !v208;
  v534 = v266;
  if (v258)
  {
    v290 = v266;
  }

  else
  {
    v290 = 0;
  }

  v537 = v267;
  if (v258)
  {
    v291 = v267;
  }

  else
  {
    v291 = 0;
  }

  v540 = v268;
  if (v258)
  {
    v292 = v268;
  }

  else
  {
    v292 = 0;
  }

  v543 = v269;
  if (v258)
  {
    v293 = v269;
  }

  else
  {
    v293 = 0;
  }

  v546 = v270;
  if (v258)
  {
    v294 = v270;
  }

  else
  {
    v294 = 0;
  }

  v549 = v271;
  if (v258)
  {
    v295 = v271;
  }

  else
  {
    v295 = 0;
  }

  v552 = v631 ^ 1;
  if (v258)
  {
    v296 = v631 ^ 1;
  }

  else
  {
    v296 = 0;
  }

  v554 = v272;
  if (v258)
  {
    v297 = v272;
  }

  else
  {
    v297 = 0;
  }

  v557 = v273;
  if (v258)
  {
    v298 = v273;
  }

  else
  {
    v298 = 0;
  }

  v560 = v274;
  if (v258)
  {
    v299 = v274;
  }

  else
  {
    v299 = 0;
  }

  v563 = v275;
  if (v258)
  {
    v300 = v275;
  }

  else
  {
    v300 = 0;
  }

  v566 = v276;
  if (v258)
  {
    v301 = v276;
  }

  else
  {
    v301 = 0;
  }

  v572 = v277;
  if (v258)
  {
    v302 = v277;
  }

  else
  {
    v302 = 0;
  }

  v632 = v278;
  if (v258)
  {
    v303 = v278;
  }

  else
  {
    v303 = 0;
  }

  v569 = v303;
  if (v258)
  {
    v304 = v279;
  }

  else
  {
    v304 = 0;
  }

  v575 = v304;
  if (v258)
  {
    v305 = v280;
  }

  else
  {
    v305 = 0;
  }

  if (v258)
  {
    v306 = v281;
  }

  else
  {
    v306 = 0;
  }

  if (v258)
  {
    v307 = v257 ^ 1;
  }

  else
  {
    v307 = 0;
  }

  v308 = 7;
  if (*(v665 + 8) != 3)
  {
    LOWORD(v305) = 3584;
    goto LABEL_682;
  }

  v309 = v284;
  v310 = v288;
  v510 = v305;
  LOWORD(v305) = 3584;
  if (*(v665 + 7) != 107)
  {
LABEL_682:
    LOWORD(v280) = 0;
    v312 = 0;
    v313 = 0;
    goto LABEL_706;
  }

  v499 = v279;
  v501 = v306;
  v504 = v280;
  v507 = v282;
  v311 = *(v665 + 5);
  LOWORD(v280) = 0;
  v312 = 0;
  v313 = 0;
  if ((v311 & 0x3F) != 0)
  {
    goto LABEL_706;
  }

  v314 = v285;
  v315 = v290;
  v316 = v627 & v662;
  v317 = v311 | 7;
  v663 = v311 >> 16;
  v318 = HIDWORD(v311);
  v319 = v665[24];
  v305 = ((*(v665 + 24) & 1) << 6) | (8 * (*(v665 + 18) & 3)) | ((*(v665 + 26) & 1) << 12) & 0x9FFF | (*v665 << 15) | (((v319 >> 7) & 1) << 14) | (((v319 >> 6) & 1) << 13) | 0xE00;
  v280 = (v319 << 10) & 0x38000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10);
  if (v316 == 1)
  {
    LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10);
  }

  else
  {
    v308 = v317;
    if (v623)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 4;
      goto LABEL_705;
    }

    if (v620)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 8;
      goto LABEL_705;
    }

    if (v617)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xC;
      goto LABEL_705;
    }

    if (v614)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x10;
      goto LABEL_705;
    }

    if (v611)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x14;
      goto LABEL_705;
    }

    if (v608)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x18;
      goto LABEL_705;
    }

    if (v605)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1C;
      goto LABEL_705;
    }

    if (v602)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x20;
      goto LABEL_705;
    }

    if (v653)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x24;
      goto LABEL_705;
    }

    if ((v649 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x28;
      goto LABEL_705;
    }

    if ((v649 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x2C;
      goto LABEL_705;
    }

    if ((v649 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x30;
      goto LABEL_705;
    }

    if ((v649 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x34;
    }

    else if ((v649 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x38;
    }

    else if ((v649 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x3C;
    }

    else if ((v649 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x40;
    }

    else if ((v649 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x44;
    }

    else if (v637)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x48;
    }

    else if ((v643 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x4C;
    }

    else if ((v643 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x50;
    }

    else if ((v643 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x54;
    }

    else if ((v643 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x58;
    }

    else if ((v643 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x5C;
    }

    else if ((v643 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x60;
    }

    else if ((v643 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x64;
    }

    else if ((v643 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x68;
    }

    else if (v309)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x6C;
    }

    else if ((v513 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x70;
    }

    else if ((v513 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x74;
    }

    else if ((v513 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x78;
    }

    else if ((v513 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x7C;
    }

    else if ((v513 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x80;
    }

    else if ((v513 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x84;
    }

    else if ((v513 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x88;
    }

    else if ((v513 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x8C;
    }

    else if (v314)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x90;
    }

    else if ((v519 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x94;
    }

    else if ((v519 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x98;
    }

    else if ((v519 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x9C;
    }

    else if ((v519 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xA0;
    }

    else if ((v519 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xA4;
    }

    else if ((v519 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xA8;
    }

    else if ((v519 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xAC;
    }

    else if ((v519 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xB0;
    }

    else if (v286)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xB4;
    }

    else if ((v522 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xB8;
    }

    else if ((v522 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xBC;
    }

    else if ((v522 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xC0;
    }

    else if ((v522 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xC4;
    }

    else if ((v522 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xC8;
    }

    else if ((v522 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xCC;
    }

    else if ((v522 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xD0;
    }

    else if ((v522 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xD4;
    }

    else if (v516)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xD8;
    }

    else if ((v525 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xDC;
    }

    else if ((v525 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xE0;
    }

    else if ((v525 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xE4;
    }

    else if ((v525 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xE8;
    }

    else if ((v525 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xEC;
    }

    else if ((v525 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xF0;
    }

    else if ((v525 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xF4;
    }

    else if ((v525 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xF8;
    }

    else if (v310)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0xFC;
    }

    else if ((v528 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x100;
    }

    else if ((v528 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x104;
    }

    else if ((v528 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x108;
    }

    else if ((v528 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x10C;
    }

    else if ((v528 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x110;
    }

    else if ((v528 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x114;
    }

    else if ((v528 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x118;
    }

    else if ((v528 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x11C;
    }

    else if (v289)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x120;
    }

    else if ((v531 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x124;
    }

    else if ((v531 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x128;
    }

    else if ((v531 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x12C;
    }

    else if ((v531 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x130;
    }

    else if ((v531 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x134;
    }

    else if ((v531 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x138;
    }

    else if ((v531 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x13C;
    }

    else if ((v531 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x140;
    }

    else if (v315)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x144;
    }

    else if ((v534 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x148;
    }

    else if ((v534 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x14C;
    }

    else if ((v534 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x150;
    }

    else if ((v534 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x154;
    }

    else if ((v534 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x158;
    }

    else if ((v534 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x15C;
    }

    else if ((v534 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x160;
    }

    else if ((v534 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x164;
    }

    else if (v291)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x168;
    }

    else if ((v537 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x16C;
    }

    else if ((v537 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x170;
    }

    else if ((v537 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x174;
    }

    else if ((v537 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x178;
    }

    else if ((v537 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x17C;
    }

    else if ((v537 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x180;
    }

    else if ((v537 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x184;
    }

    else if ((v537 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x188;
    }

    else if (v292)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x18C;
    }

    else if ((v540 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x190;
    }

    else if ((v540 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x194;
    }

    else if ((v540 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x198;
    }

    else if ((v540 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x19C;
    }

    else if ((v540 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1A0;
    }

    else if ((v540 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1A4;
    }

    else if ((v540 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1A8;
    }

    else if ((v540 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1AC;
    }

    else if (v293)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1B0;
    }

    else if ((v543 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1B4;
    }

    else if ((v543 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1B8;
    }

    else if ((v543 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1BC;
    }

    else if ((v543 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1C0;
    }

    else if ((v543 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1C4;
    }

    else if ((v543 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1C8;
    }

    else if ((v543 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1CC;
    }

    else if ((v543 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1D0;
    }

    else if (v294)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1D4;
    }

    else if ((v546 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1D8;
    }

    else if ((v546 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1DC;
    }

    else if ((v546 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1E0;
    }

    else if ((v546 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1E4;
    }

    else if ((v546 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1E8;
    }

    else if ((v546 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1EC;
    }

    else if ((v546 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1F0;
    }

    else if ((v546 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1F4;
    }

    else if (v295)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1F8;
    }

    else if ((v549 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x1FC;
    }

    else if ((v549 & v596) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x200;
    }

    else if ((v549 & v593) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x204;
    }

    else if ((v549 & v590) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x208;
    }

    else if ((v549 & v587) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x20C;
    }

    else if ((v549 & v584) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x210;
    }

    else if ((v549 & v581) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x214;
    }

    else if ((v549 & v578) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x218;
    }

    else if (v296)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x21C;
    }

    else if ((v552 & v599) != 0)
    {
      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x220;
    }

    else
    {
      if ((v552 & v596) == 0)
      {
        if ((v552 & v593) != 0)
        {
          v431 = -118;
        }

        else if ((v552 & v590) != 0)
        {
          v431 = -117;
        }

        else if ((v552 & v587) != 0)
        {
          v431 = -116;
        }

        else if ((v552 & v584) != 0)
        {
          v431 = -115;
        }

        else if ((v552 & v581) != 0)
        {
          v431 = -114;
        }

        else if ((v552 & v578) != 0)
        {
          v431 = -113;
        }

        else if (v297)
        {
          v431 = -112;
        }

        else if ((v554 & v599) != 0)
        {
          v431 = -111;
        }

        else if ((v554 & v596) != 0)
        {
          v431 = -110;
        }

        else if ((v554 & v593) != 0)
        {
          v431 = -109;
        }

        else if ((v554 & v590) != 0)
        {
          v431 = -108;
        }

        else if ((v554 & v587) != 0)
        {
          v431 = -107;
        }

        else if ((v554 & v584) != 0)
        {
          v431 = -106;
        }

        else if ((v554 & v581) != 0)
        {
          v431 = -105;
        }

        else if ((v554 & v578) != 0)
        {
          v431 = -104;
        }

        else if (v298)
        {
          v431 = -103;
        }

        else if ((v557 & v599) != 0)
        {
          v431 = -102;
        }

        else if ((v557 & v596) != 0)
        {
          v431 = -101;
        }

        else if ((v557 & v593) != 0)
        {
          v431 = -100;
        }

        else if ((v557 & v590) != 0)
        {
          v431 = -99;
        }

        else if ((v557 & v587) != 0)
        {
          v431 = -98;
        }

        else if ((v557 & v584) != 0)
        {
          v431 = -97;
        }

        else if ((v557 & v581) != 0)
        {
          v431 = -96;
        }

        else if ((v557 & v578) != 0)
        {
          v431 = -95;
        }

        else if (v299)
        {
          v431 = -94;
        }

        else if ((v560 & v599) != 0)
        {
          v431 = -93;
        }

        else if ((v560 & v596) != 0)
        {
          v431 = -92;
        }

        else if ((v560 & v593) != 0)
        {
          v431 = -91;
        }

        else if ((v560 & v590) != 0)
        {
          v431 = -90;
        }

        else if ((v560 & v587) != 0)
        {
          v431 = -89;
        }

        else if ((v560 & v584) != 0)
        {
          v431 = -88;
        }

        else if ((v560 & v581) != 0)
        {
          v431 = -87;
        }

        else if ((v560 & v578) != 0)
        {
          v431 = -86;
        }

        else if (v300)
        {
          v431 = -85;
        }

        else if ((v563 & v599) != 0)
        {
          v431 = -84;
        }

        else if ((v563 & v596) != 0)
        {
          v431 = -83;
        }

        else if ((v563 & v593) != 0)
        {
          v431 = -82;
        }

        else if ((v563 & v590) != 0)
        {
          v431 = -81;
        }

        else if ((v563 & v587) != 0)
        {
          v431 = -80;
        }

        else if ((v563 & v584) != 0)
        {
          v431 = -79;
        }

        else if ((v563 & v581) != 0)
        {
          v431 = -78;
        }

        else if ((v563 & v578) != 0)
        {
          v431 = -77;
        }

        else if (v301)
        {
          v431 = -76;
        }

        else if ((v566 & v599) != 0)
        {
          v431 = -75;
        }

        else if ((v566 & v596) != 0)
        {
          v431 = -74;
        }

        else if ((v566 & v593) != 0)
        {
          v431 = -73;
        }

        else if ((v566 & v590) != 0)
        {
          v431 = -72;
        }

        else if ((v566 & v587) != 0)
        {
          v431 = -71;
        }

        else if ((v566 & v584) != 0)
        {
          v431 = -70;
        }

        else if ((v566 & v581) != 0)
        {
          v431 = -69;
        }

        else if ((v566 & v578) != 0)
        {
          v431 = -68;
        }

        else if (v302)
        {
          v431 = -67;
        }

        else if ((v572 & v599) != 0)
        {
          v431 = -66;
        }

        else if ((v572 & v596) != 0)
        {
          v431 = -65;
        }

        else
        {
          if ((v572 & v593) != 0)
          {
            LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x300;
            goto LABEL_678;
          }

          if ((v572 & v590) != 0)
          {
            v431 = -63;
          }

          else if ((v572 & v587) != 0)
          {
            v431 = -62;
          }

          else if ((v572 & v584) != 0)
          {
            v431 = -61;
          }

          else if ((v572 & v581) != 0)
          {
            v431 = -60;
          }

          else if ((v572 & v578) != 0)
          {
            v431 = -59;
          }

          else if (v569)
          {
            v431 = -58;
          }

          else if ((v632 & v599) != 0)
          {
            v431 = -57;
          }

          else if ((v632 & v596) != 0)
          {
            v431 = -56;
          }

          else if ((v632 & v593) != 0)
          {
            v431 = -55;
          }

          else if ((v632 & v590) != 0)
          {
            v431 = -54;
          }

          else if ((v632 & v587) != 0)
          {
            v431 = -53;
          }

          else if ((v632 & v584) != 0)
          {
            v431 = -52;
          }

          else if ((v632 & v581) != 0)
          {
            v431 = -51;
          }

          else if ((v632 & v578) != 0)
          {
            v431 = -50;
          }

          else if (v575)
          {
            v431 = -49;
          }

          else if ((v499 & v599) != 0)
          {
            v431 = -48;
          }

          else if ((v499 & v596) != 0)
          {
            v431 = -47;
          }

          else if ((v499 & v593) != 0)
          {
            v431 = -46;
          }

          else if ((v499 & v590) != 0)
          {
            v431 = -45;
          }

          else if ((v499 & v587) != 0)
          {
            v431 = -44;
          }

          else if ((v499 & v584) != 0)
          {
            v431 = -43;
          }

          else if ((v499 & v581) != 0)
          {
            v431 = -42;
          }

          else if ((v499 & v578) != 0)
          {
            v431 = -41;
          }

          else if (v510)
          {
            v431 = -40;
          }

          else if ((v504 & v599) != 0)
          {
            v431 = -39;
          }

          else if ((v504 & v596) != 0)
          {
            v431 = -38;
          }

          else if ((v504 & v593) != 0)
          {
            v431 = -37;
          }

          else if ((v504 & v590) != 0)
          {
            v431 = -36;
          }

          else if ((v504 & v587) != 0)
          {
            v431 = -35;
          }

          else if ((v504 & v584) != 0)
          {
            v431 = -34;
          }

          else if ((v504 & v581) != 0)
          {
            v431 = -33;
          }

          else
          {
            if ((v504 & v578) != 0)
            {
              LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x380;
              goto LABEL_678;
            }

            if (v501)
            {
              v431 = -31;
            }

            else if ((v281 & v599) != 0)
            {
              v431 = -30;
            }

            else if ((v281 & v596) != 0)
            {
              v431 = -29;
            }

            else if ((v281 & v593) != 0)
            {
              v431 = -28;
            }

            else if ((v281 & v590) != 0)
            {
              v431 = -27;
            }

            else if ((v281 & v587) != 0)
            {
              v431 = -26;
            }

            else if ((v281 & v584) != 0)
            {
              v431 = -25;
            }

            else if ((v281 & v581) != 0)
            {
              v431 = -24;
            }

            else if ((v281 & v578) != 0)
            {
              v431 = -23;
            }

            else if (v307)
            {
              v431 = -22;
            }

            else if ((v507 & v599) != 0)
            {
              v431 = -21;
            }

            else if ((v507 & v596) != 0)
            {
              v431 = -20;
            }

            else if ((v507 & v593) != 0)
            {
              v431 = -19;
            }

            else if ((v507 & v590) != 0)
            {
              v431 = -18;
            }

            else if ((v507 & v587) != 0)
            {
              v431 = -17;
            }

            else
            {
              if ((v507 & v584) != 0)
              {
                LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x3C0;
                goto LABEL_678;
              }

              if ((v507 & v581) != 0)
              {
                v431 = -15;
              }

              else
              {
                if ((v507 & v578) == 0)
                {
                  goto LABEL_678;
                }

                v431 = -14;
              }
            }
          }
        }

        LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | (4 * v431);
        goto LABEL_678;
      }

      LOWORD(v280) = (v319 << 10) & 0x8000 | (((v319 >> 4) & 1) << 14) | (((v319 >> 3) & 1) << 13) | (((v319 >> 2) & 1) << 12) | (((v319 >> 1) & 1) << 11) | ((v319 & 1) << 10) | 0x224;
    }
  }

LABEL_678:
  v308 = v317;
LABEL_705:
  v312 = v663;
  v313 = v318;
LABEL_706:
  *(a2 + 8) = v308;
  *(a2 + 10) = v305;
  *(a2 + 12) = v280;
  *(a2 + 14) = v312;
  *(a2 + 16) = v313;
  v321 = *(v665 + 18);
  v320 = *(v665 + 19);
  v323 = *(v665 + 16);
  v322 = *(v665 + 17);
  v324 = v320 != 0;
  v325 = *(v665 + 15);
  v326 = *(v665 + 9) != 0;
  v327 = v323 == 1;
  v328 = v320 | v321 | v322;
  if (v325)
  {
    v329 = 0;
  }

  else
  {
    v329 = v323 == 1;
  }

  if (v325)
  {
    v330 = 0;
  }

  else
  {
    v330 = v323 == 2;
  }

  v331 = v325 == 1 && v323 == 0;
  v332 = v325 == 1 && v323 == 1;
  v333 = v325 == 1 && v323 == 2;
  v334 = v325 == 2 && v323 == 0;
  if (v325 == 2)
  {
    v335 = v323 == 2;
  }

  else
  {
    v327 = 0;
    v335 = 0;
  }

  v336 = v328 == 0;
  v633 = v328 == 0;
  v600 = v334;
  if (v328)
  {
    v337 = 0;
  }

  else
  {
    v337 = v334;
  }

  v628 = v337;
  v591 = v327;
  v338 = v336 && v327;
  v624 = v338;
  v597 = v329;
  v339 = v336 && v329;
  v621 = v339;
  v603 = v331;
  v340 = v336 && v331;
  v618 = v340;
  v594 = v332;
  v341 = v336 && v332;
  v615 = v341;
  v588 = v330;
  v342 = v336 && v330;
  v612 = v342;
  v585 = v333;
  v343 = v336 && v333;
  v609 = v343;
  v582 = v335;
  v344 = v336 && v335;
  v606 = v344;
  v345 = v320 != 1;
  v346 = v320 != 2;
  if (v321)
  {
    v347 = 1;
  }

  else
  {
    v347 = v345;
  }

  if (v321)
  {
    v348 = 1;
  }

  else
  {
    v348 = v346;
  }

  v349 = v321 != 1 || v324;
  v350 = v321 != 1 || v345;
  v351 = v321 != 1 || v346;
  if (v321 != 2)
  {
    v324 = 1;
    v345 = 1;
    v346 = 1;
  }

  v352 = v323 | v325;
  if (v322)
  {
    v353 = 1;
  }

  else
  {
    v353 = v349;
  }

  if (v322)
  {
    v354 = 1;
  }

  else
  {
    v354 = v324;
  }

  if (v322)
  {
    v355 = 1;
  }

  else
  {
    v355 = v347;
  }

  if (v322)
  {
    v356 = 1;
  }

  else
  {
    v356 = v350;
  }

  if (v322)
  {
    v357 = 1;
  }

  else
  {
    v357 = v345;
  }

  if (v322)
  {
    v358 = 1;
  }

  else
  {
    v358 = v348;
  }

  v644 = v358;
  if (v322)
  {
    v359 = 1;
  }

  else
  {
    v359 = v351;
  }

  v654 = v359;
  if (v322)
  {
    v360 = 1;
  }

  else
  {
    v360 = v346;
  }

  v656 = v360;
  v361 = v322 != 1 || *(v665 + 9) != 0;
  if (v322 == 1)
  {
    v362 = v349;
  }

  else
  {
    v362 = 1;
  }

  v363 = v322 != 1 || v324;
  if (v322 == 1)
  {
    v364 = v347;
  }

  else
  {
    v364 = 1;
  }

  if (v322 == 1)
  {
    v365 = v350;
  }

  else
  {
    v365 = 1;
  }

  v366 = v322 != 1 || v345;
  if (v322 == 1)
  {
    v367 = v348;
  }

  else
  {
    v367 = 1;
  }

  if (v322 == 1)
  {
    v368 = v351;
  }

  else
  {
    v368 = 1;
  }

  v638 = v368;
  v369 = v322 != 1 || v346;
  if (v322 == 2)
  {
    v370 = v346;
  }

  else
  {
    v326 = 1;
    v349 = 1;
    v324 = 1;
    v347 = 1;
    v350 = 1;
    v345 = 1;
    v348 = 1;
    v351 = 1;
    v370 = 1;
  }

  v371 = v352 == 0;
  v372 = !v361;
  v373 = !v326;
  v374 = v353 ^ 1;
  v375 = v362 ^ 1;
  v376 = v354 ^ 1;
  v377 = v363 ^ 1;
  v378 = v355 ^ 1;
  v379 = v364 ^ 1;
  v380 = v347 ^ 1;
  v381 = v356 ^ 1;
  v382 = v350 ^ 1;
  v383 = v366 ^ 1;
  v384 = !v345;
  v385 = v644 ^ 1;
  v386 = v367 ^ 1;
  v387 = v348 ^ 1;
  v388 = v654 ^ 1;
  v389 = v638 ^ 1;
  v390 = v351 ^ 1;
  v391 = v656 ^ 1;
  v392 = v369 ^ 1;
  v393 = v371;
  v657 = v393;
  v650 = v372;
  if (!v371)
  {
    v372 = 0;
  }

  v655 = v372;
  v645 = !v326;
  if (!v371)
  {
    v373 = 0;
  }

  v639 = v373;
  v508 = v374;
  if (v371)
  {
    v394 = v374;
  }

  else
  {
    v394 = 0;
  }

  v514 = v375;
  if (v371)
  {
    result = v375;
  }

  else
  {
    result = 0;
  }

  v517 = v349 ^ 1;
  if (v371)
  {
    v396 = v349 ^ 1;
  }

  else
  {
    v396 = 0;
  }

  v520 = v376;
  if (v371)
  {
    v397 = v376;
  }

  else
  {
    v397 = 0;
  }

  v511 = v397;
  v523 = v377;
  if (v371)
  {
    v398 = v377;
  }

  else
  {
    v398 = 0;
  }

  v526 = !v324;
  v399 = v371 && !v324;
  v529 = v378;
  if (v371)
  {
    v400 = v378;
  }

  else
  {
    v400 = 0;
  }

  v532 = v379;
  if (v371)
  {
    v401 = v379;
  }

  else
  {
    v401 = 0;
  }

  v535 = v380;
  if (v371)
  {
    v402 = v380;
  }

  else
  {
    v402 = 0;
  }

  v538 = v381;
  if (v371)
  {
    v403 = v381;
  }

  else
  {
    v403 = 0;
  }

  v541 = v365 ^ 1;
  if (v371)
  {
    v404 = v365 ^ 1;
  }

  else
  {
    v404 = 0;
  }

  v544 = v382;
  if (v371)
  {
    v405 = v382;
  }

  else
  {
    v405 = 0;
  }

  v547 = v357 ^ 1;
  if (v371)
  {
    v406 = v357 ^ 1;
  }

  else
  {
    v406 = 0;
  }

  v550 = v383;
  if (v371)
  {
    v407 = v383;
  }

  else
  {
    v407 = 0;
  }

  if (v371)
  {
    v408 = v384;
  }

  else
  {
    v408 = 0;
  }

  v555 = v385;
  if (v371)
  {
    v409 = v385;
  }

  else
  {
    v409 = 0;
  }

  v558 = v386;
  if (v371)
  {
    v410 = v386;
  }

  else
  {
    v410 = 0;
  }

  v564 = v387;
  if (v371)
  {
    v411 = v387;
  }

  else
  {
    v411 = 0;
  }

  v570 = v388;
  if (v371)
  {
    v412 = v388;
  }

  else
  {
    v412 = 0;
  }

  v576 = v389;
  if (v371)
  {
    v413 = v389;
  }

  else
  {
    v413 = 0;
  }

  v567 = v413;
  if (v371)
  {
    v414 = v390;
  }

  else
  {
    v414 = 0;
  }

  v573 = v414;
  if (v371)
  {
    v415 = v391;
  }

  else
  {
    v415 = 0;
  }

  v579 = v415;
  if (v371)
  {
    v416 = v392;
  }

  else
  {
    v416 = 0;
  }

  v561 = v370 ^ 1;
  if (v371)
  {
    v417 = v370 ^ 1;
  }

  else
  {
    v417 = 0;
  }

  LOWORD(v418) = 3328;
  v419 = 7;
  if (*(v665 + 22) == 3 && (v420 = v394, v421 = v398, *(v665 + 21) == 166))
  {
    v422 = v399;
    v502 = v390;
    v505 = v416;
    v423 = *(v665 + 92);
    LOWORD(v416) = 0;
    v424 = 0;
    v425 = 0;
    if ((v423 & 0x100000000) == 0)
    {
      v426 = result;
      v427 = v633 & v657;
      v658 = v423 >> 16;
      v428 = v665[100];
      v429 = (v423 >> 28) & 0xFFFFFFE0 | (8 * (v428 & 3)) | 7;
      v430 = ((2 * v428) | (*(v665 + 52) << 12)) & 0x10F8 | (v665[56] << 15);
      result = v665[80];
      v418 = v430 & 0xFFFF9FFF | (((result >> 7) & 1) << 14) | (((result >> 6) & 1) << 13) | 0xD00;
      v416 = (result << 10) & 0x38000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10);
      if (v427 == 1)
      {
        LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10);
      }

      else
      {
        v419 = v429;
        if (v628)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 4;
          goto LABEL_932;
        }

        if (v624)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 8;
          goto LABEL_932;
        }

        if (v621)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0xC;
          goto LABEL_932;
        }

        if (v618)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x10;
          goto LABEL_932;
        }

        if (v615)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x14;
          goto LABEL_932;
        }

        if (v612)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x18;
          goto LABEL_932;
        }

        if (v609)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x1C;
          goto LABEL_932;
        }

        if (v606)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x20;
          goto LABEL_932;
        }

        if (v655)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x24;
          goto LABEL_932;
        }

        if ((v650 & v603) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x28;
          goto LABEL_932;
        }

        if ((v650 & v600) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x2C;
          goto LABEL_932;
        }

        if ((v650 & v597) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x30;
          goto LABEL_932;
        }

        if ((v650 & v594) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x34;
        }

        else if ((v650 & v591) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x38;
        }

        else if ((v650 & v588) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x3C;
        }

        else if ((v650 & v585) != 0)
        {
          LOWORD(v416) = (result << 10) & 0x8000 | (((result >> 4) & 1) << 14) | (((result >> 3) & 1) << 13) | (((result >> 2) & 1) << 12) | (((result >> 1) & 1) << 11) | ((result & 1) << 10) | 0x40;
        }

        else
        {
          result = v400;
          if ((v650 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x44;
          }

          else if (v639)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x48;
          }

          else if ((v645 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x4C;
          }

          else if ((v645 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x50;
          }

          else if ((v645 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x54;
          }

          else if ((v645 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x58;
          }

          else if ((v645 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x5C;
          }

          else if ((v645 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x60;
          }

          else if ((v645 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x64;
          }

          else if ((v645 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x68;
          }

          else if (v420)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x6C;
          }

          else if ((v508 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x70;
          }

          else if ((v508 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x74;
          }

          else if ((v508 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x78;
          }

          else if ((v508 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x7C;
          }

          else if ((v508 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x80;
          }

          else if ((v508 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x84;
          }

          else if ((v508 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x88;
          }

          else if ((v508 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x8C;
          }

          else if (v426)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x90;
          }

          else if ((v514 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x94;
          }

          else if ((v514 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x98;
          }

          else if ((v514 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x9C;
          }

          else if ((v514 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xA0;
          }

          else if ((v514 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xA4;
          }

          else if ((v514 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xA8;
          }

          else if ((v514 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xAC;
          }

          else if ((v514 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xB0;
          }

          else if (v396)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xB4;
          }

          else if ((v517 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xB8;
          }

          else if ((v517 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xBC;
          }

          else if ((v517 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xC0;
          }

          else if ((v517 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xC4;
          }

          else if ((v517 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xC8;
          }

          else if ((v517 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xCC;
          }

          else if ((v517 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xD0;
          }

          else if ((v517 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xD4;
          }

          else if (v511)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xD8;
          }

          else if ((v520 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xDC;
          }

          else if ((v520 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xE0;
          }

          else if ((v520 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xE4;
          }

          else if ((v520 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xE8;
          }

          else if ((v520 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xEC;
          }

          else if ((v520 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xF0;
          }

          else if ((v520 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xF4;
          }

          else if ((v520 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xF8;
          }

          else if (v421)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0xFC;
          }

          else if ((v523 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x100;
          }

          else if ((v523 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x104;
          }

          else if ((v523 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x108;
          }

          else if ((v523 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x10C;
          }

          else if ((v523 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x110;
          }

          else if ((v523 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x114;
          }

          else if ((v523 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x118;
          }

          else if ((v523 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x11C;
          }

          else if (v422)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x120;
          }

          else if ((v526 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x124;
          }

          else if ((v526 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x128;
          }

          else if ((v526 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x12C;
          }

          else if ((v526 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x130;
          }

          else if ((v526 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x134;
          }

          else if ((v526 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x138;
          }

          else if ((v526 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x13C;
          }

          else if ((v526 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x140;
          }

          else if (v400)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x144;
          }

          else if ((v529 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x148;
          }

          else if ((v529 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x14C;
          }

          else if ((v529 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x150;
          }

          else if ((v529 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x154;
          }

          else if ((v529 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x158;
          }

          else if ((v529 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x15C;
          }

          else if ((v529 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x160;
          }

          else if ((v529 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x164;
          }

          else if (v401)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x168;
          }

          else if ((v532 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x16C;
          }

          else if ((v532 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x170;
          }

          else if ((v532 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x174;
          }

          else if ((v532 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x178;
          }

          else if ((v532 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x17C;
          }

          else if ((v532 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x180;
          }

          else if ((v532 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x184;
          }

          else if ((v532 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x188;
          }

          else if (v402)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x18C;
          }

          else if ((v535 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x190;
          }

          else if ((v535 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x194;
          }

          else if ((v535 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x198;
          }

          else if ((v535 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x19C;
          }

          else if ((v535 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1A0;
          }

          else if ((v535 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1A4;
          }

          else if ((v535 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1A8;
          }

          else if ((v535 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1AC;
          }

          else if (v403)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1B0;
          }

          else if ((v538 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1B4;
          }

          else if ((v538 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1B8;
          }

          else if ((v538 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1BC;
          }

          else if ((v538 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1C0;
          }

          else if ((v538 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1C4;
          }

          else if ((v538 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1C8;
          }

          else if ((v538 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1CC;
          }

          else if ((v538 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1D0;
          }

          else if (v404)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1D4;
          }

          else if ((v541 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1D8;
          }

          else if ((v541 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1DC;
          }

          else if ((v541 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1E0;
          }

          else if ((v541 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1E4;
          }

          else if ((v541 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1E8;
          }

          else if ((v541 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1EC;
          }

          else if ((v541 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1F0;
          }

          else if ((v541 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1F4;
          }

          else if (v405)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1F8;
          }

          else if ((v544 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x1FC;
          }

          else if ((v544 & v600) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x200;
          }

          else if ((v544 & v597) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x204;
          }

          else if ((v544 & v594) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x208;
          }

          else if ((v544 & v591) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x20C;
          }

          else if ((v544 & v588) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x210;
          }

          else if ((v544 & v585) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x214;
          }

          else if ((v544 & v582) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x218;
          }

          else if (v406)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x21C;
          }

          else if ((v547 & v603) != 0)
          {
            LOWORD(v416) = v416 & 0xFC03 | 0x220;
          }

          else
          {
            if ((v547 & v600) == 0)
            {
              if ((v547 & v597) != 0)
              {
                v432 = -118;
              }

              else if ((v547 & v594) != 0)
              {
                v432 = -117;
              }

              else if ((v547 & v591) != 0)
              {
                v432 = -116;
              }

              else if ((v547 & v588) != 0)
              {
                v432 = -115;
              }

              else if ((v547 & v585) != 0)
              {
                v432 = -114;
              }

              else if ((v547 & v582) != 0)
              {
                v432 = -113;
              }

              else if (v407)
              {
                v432 = -112;
              }

              else if ((v550 & v603) != 0)
              {
                v432 = -111;
              }

              else if ((v550 & v600) != 0)
              {
                v432 = -110;
              }

              else if ((v550 & v597) != 0)
              {
                v432 = -109;
              }

              else if ((v550 & v594) != 0)
              {
                v432 = -108;
              }

              else if ((v550 & v591) != 0)
              {
                v432 = -107;
              }

              else if ((v550 & v588) != 0)
              {
                v432 = -106;
              }

              else if ((v550 & v585) != 0)
              {
                v432 = -105;
              }

              else if ((v550 & v582) != 0)
              {
                v432 = -104;
              }

              else if (v408)
              {
                v432 = -103;
              }

              else if ((v384 & v603) != 0)
              {
                v432 = -102;
              }

              else if ((v384 & v600) != 0)
              {
                v432 = -101;
              }

              else if ((v384 & v597) != 0)
              {
                v432 = -100;
              }

              else if ((v384 & v594) != 0)
              {
                v432 = -99;
              }

              else if ((v384 & v591) != 0)
              {
                v432 = -98;
              }

              else if ((v384 & v588) != 0)
              {
                v432 = -97;
              }

              else if ((v384 & v585) != 0)
              {
                v432 = -96;
              }

              else if ((v384 & v582) != 0)
              {
                v432 = -95;
              }

              else if (v409)
              {
                v432 = -94;
              }

              else if ((v555 & v603) != 0)
              {
                v432 = -93;
              }

              else if ((v555 & v600) != 0)
              {
                v432 = -92;
              }

              else if ((v555 & v597) != 0)
              {
                v432 = -91;
              }

              else if ((v555 & v594) != 0)
              {
                v432 = -90;
              }

              else if ((v555 & v591) != 0)
              {
                v432 = -89;
              }

              else if ((v555 & v588) != 0)
              {
                v432 = -88;
              }

              else if ((v555 & v585) != 0)
              {
                v432 = -87;
              }

              else if ((v555 & v582) != 0)
              {
                v432 = -86;
              }

              else if (v410)
              {
                v432 = -85;
              }

              else if ((v558 & v603) != 0)
              {
                v432 = -84;
              }

              else if ((v558 & v600) != 0)
              {
                v432 = -83;
              }

              else if ((v558 & v597) != 0)
              {
                v432 = -82;
              }

              else if ((v558 & v594) != 0)
              {
                v432 = -81;
              }

              else if ((v558 & v591) != 0)
              {
                v432 = -80;
              }

              else if ((v558 & v588) != 0)
              {
                v432 = -79;
              }

              else if ((v558 & v585) != 0)
              {
                v432 = -78;
              }

              else if ((v558 & v582) != 0)
              {
                v432 = -77;
              }

              else if (v411)
              {
                v432 = -76;
              }

              else if ((v564 & v603) != 0)
              {
                v432 = -75;
              }

              else if ((v564 & v600) != 0)
              {
                v432 = -74;
              }

              else if ((v564 & v597) != 0)
              {
                v432 = -73;
              }

              else if ((v564 & v594) != 0)
              {
                v432 = -72;
              }

              else if ((v564 & v591) != 0)
              {
                v432 = -71;
              }

              else if ((v564 & v588) != 0)
              {
                v432 = -70;
              }

              else if ((v564 & v585) != 0)
              {
                v432 = -69;
              }

              else if ((v564 & v582) != 0)
              {
                v432 = -68;
              }

              else if (v412)
              {
                v432 = -67;
              }

              else if ((v570 & v603) != 0)
              {
                v432 = -66;
              }

              else if ((v570 & v600) != 0)
              {
                v432 = -65;
              }

              else
              {
                if ((v570 & v597) != 0)
                {
                  LOWORD(v416) = v416 & 0xFC03 | 0x300;
                  goto LABEL_906;
                }

                if ((v570 & v594) != 0)
                {
                  v432 = -63;
                }

                else if ((v570 & v591) != 0)
                {
                  v432 = -62;
                }

                else if ((v570 & v588) != 0)
                {
                  v432 = -61;
                }

                else if ((v570 & v585) != 0)
                {
                  v432 = -60;
                }

                else if ((v570 & v582) != 0)
                {
                  v432 = -59;
                }

                else if (v567)
                {
                  v432 = -58;
                }

                else if ((v576 & v603) != 0)
                {
                  v432 = -57;
                }

                else if ((v576 & v600) != 0)
                {
                  v432 = -56;
                }

                else if ((v576 & v597) != 0)
                {
                  v432 = -55;
                }

                else if ((v576 & v594) != 0)
                {
                  v432 = -54;
                }

                else if ((v576 & v591) != 0)
                {
                  v432 = -53;
                }

                else if ((v576 & v588) != 0)
                {
                  v432 = -52;
                }

                else if ((v576 & v585) != 0)
                {
                  v432 = -51;
                }

                else if ((v576 & v582) != 0)
                {
                  v432 = -50;
                }

                else if (v573)
                {
                  v432 = -49;
                }

                else if ((v502 & v603) != 0)
                {
                  v432 = -48;
                }

                else if ((v502 & v600) != 0)
                {
                  v432 = -47;
                }

                else if ((v502 & v597) != 0)
                {
                  v432 = -46;
                }

                else if ((v502 & v594) != 0)
                {
                  v432 = -45;
                }

                else if ((v502 & v591) != 0)
                {
                  v432 = -44;
                }

                else if ((v502 & v588) != 0)
                {
                  v432 = -43;
                }

                else if ((v502 & v585) != 0)
                {
                  v432 = -42;
                }

                else if ((v502 & v582) != 0)
                {
                  v432 = -41;
                }

                else if (v579)
                {
                  v432 = -40;
                }

                else if ((v391 & v603) != 0)
                {
                  v432 = -39;
                }

                else if ((v391 & v600) != 0)
                {
                  v432 = -38;
                }

                else if ((v391 & v597) != 0)
                {
                  v432 = -37;
                }

                else if ((v391 & v594) != 0)
                {
                  v432 = -36;
                }

                else if ((v391 & v591) != 0)
                {
                  v432 = -35;
                }

                else if ((v391 & v588) != 0)
                {
                  v432 = -34;
                }

                else if ((v391 & v585) != 0)
                {
                  v432 = -33;
                }

                else
                {
                  if ((v391 & v582) != 0)
                  {
                    LOWORD(v416) = v416 & 0xFC03 | 0x380;
                    goto LABEL_906;
                  }

                  if (v505)
                  {
                    v432 = -31;
                  }

                  else if ((v392 & v603) != 0)
                  {
                    v432 = -30;
                  }

                  else if ((v392 & v600) != 0)
                  {
                    v432 = -29;
                  }

                  else if ((v392 & v597) != 0)
                  {
                    v432 = -28;
                  }

                  else if ((v392 & v594) != 0)
                  {
                    v432 = -27;
                  }

                  else if ((v392 & v591) != 0)
                  {
                    v432 = -26;
                  }

                  else if ((v392 & v588) != 0)
                  {
                    v432 = -25;
                  }

                  else if ((v392 & v585) != 0)
                  {
                    v432 = -24;
                  }

                  else if ((v392 & v582) != 0)
                  {
                    v432 = -23;
                  }

                  else if (v417)
                  {
                    v432 = -22;
                  }

                  else if ((v561 & v603) != 0)
                  {
                    v432 = -21;
                  }

                  else if ((v561 & v600) != 0)
                  {
                    v432 = -20;
                  }

                  else if ((v561 & v597) != 0)
                  {
                    v432 = -19;
                  }

                  else if ((v561 & v594) != 0)
                  {
                    v432 = -18;
                  }

                  else if ((v561 & v591) != 0)
                  {
                    v432 = -17;
                  }

                  else
                  {
                    if ((v561 & v588) != 0)
                    {
                      LOWORD(v416) = v416 & 0xFC03 | 0x3C0;
                      goto LABEL_906;
                    }

                    if ((v561 & v585) != 0)
                    {
                      v432 = -15;
                    }

                    else
                    {
                      if ((v561 & v582) == 0)
                      {
                        goto LABEL_906;
                      }

                      v432 = -14;
                    }
                  }
                }
              }

              LOWORD(v416) = v416 & 0xFC03 | (4 * v432);
              goto LABEL_906;
            }

            LOWORD(v416) = v416 & 0xFC03 | 0x224;
          }
        }
      }

LABEL_906:
      v419 = v429;
LABEL_932:
      v425 = v658;
      v424 = *(v665 + 92);
    }
  }

  else
  {
    LOWORD(v416) = 0;
    v424 = 0;
    v425 = 0;
  }

  *(a2 + 18) = v419;
  *(a2 + 20) = v418;
  *(a2 + 22) = v416;
  *(a2 + 24) = v424;
  *(a2 + 26) = v425;
  return result;
}