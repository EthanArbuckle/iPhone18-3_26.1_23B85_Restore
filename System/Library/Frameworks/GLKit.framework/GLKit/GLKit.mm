uint64_t _modelviewMatrixMask(uint64_t result)
{
  v27 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = *(*(result + 144) + 152);
    if (!v2 || (result = [v2 enabled], result != 1))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v1[7];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
LABEL_9:
        v10 = 0;
        while (1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          result = _reflectionMappingEnabled(*(*(&v21 + 1) + 8 * v10));
          if (result)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
            if (v8)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = v1[19];
        result = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (!result)
        {
LABEL_25:
          v3 = v1[26];
          v4 = vbicq_s8(*v3, xmmword_27DF40450);
          goto LABEL_5;
        }

        v12 = result;
        v13 = *v18;
LABEL_17:
        v14 = 0;
        while (1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if ([v15 enabled])
          {
            result = [v15 position];
            if (v16 != 0.0)
            {
              break;
            }

            result = [v15 isAttenuated];
            if (result)
            {
              break;
            }
          }

          if (v12 == ++v14)
          {
            result = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            v12 = result;
            if (result)
            {
              goto LABEL_17;
            }

            goto LABEL_25;
          }
        }
      }
    }

    v3 = v1[26];
    v4 = vorrq_s8(*v3, xmmword_27DF40450);
LABEL_5:
    *v3 = v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _useTexCoordAttribMask(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(result + 56);
    result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v10;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          result = [*(*(&v9 + 1) + 8 * v5) useTexCoordAttribMask];
          if (result)
          {
            v6 = *(v1 + 200);
            **(v1 + 208) = vorrq_s8(**(v1 + 208), xmmword_27DF40400);
            v7 = vorrq_s8(*v6, xmmword_27DF404D0);
            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v3 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }

    v6 = *(v1 + 200);
    **(v1 + 208) = vbicq_s8(**(v1 + 208), xmmword_27DF40400);
    v7 = vbicq_s8(*v6, xmmword_27DF404D0);
LABEL_12:
    *v6 = v7;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _texturingEnabledMask(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    *(result + 48) = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(result + 56);
    result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v10;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          result = [*(*(&v9 + 1) + 8 * v5) enabled];
          if (result)
          {
            *(v1 + 48) = 1;
            goto LABEL_13;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v3 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }

    if (*(v1 + 48))
    {
LABEL_13:
      v6 = *(v1 + 200);
      **(v1 + 208) = vorrq_s8(**(v1 + 208), xmmword_27DF40410);
      v7 = vorrq_s8(*v6, xmmword_27DF404E0);
    }

    else
    {
      v6 = *(v1 + 200);
      **(v1 + 208) = vbicq_s8(**(v1 + 208), xmmword_27DF40410);
      v7 = vbicq_s8(*v6, xmmword_27DF404E0);
    }

    *v6 = v7;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _normalizedNormalsMask(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (!*(result + 72) && !*(result + 73))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = *(result + 56);
      result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (!result)
      {
LABEL_15:
        v2 = *(v1 + 208);
        v3 = vbicq_s8(*v2, xmmword_27DF40420);
        goto LABEL_5;
      }

      v6 = result;
      v7 = *v10;
LABEL_9:
      v8 = 0;
      while (1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        result = [*(*(&v9 + 1) + 8 * v8) normalizedNormalsMask];
        if (result)
        {
          break;
        }

        if (v6 == ++v8)
        {
          result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v6 = result;
          if (result)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    v2 = *(v1 + 208);
    v3 = vorrq_s8(*v2, xmmword_27DF40420);
LABEL_5:
    *v2 = v3;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _vNormalEyeMask(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (!*(result + 73))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = *(result + 56);
      result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (!result)
      {
LABEL_14:
        v2 = *(v1 + 200);
        **(v1 + 208) = vbicq_s8(**(v1 + 208), xmmword_27DF40440);
        v3 = vbicq_s8(*v2, xmmword_27DF40500);
        goto LABEL_4;
      }

      v6 = result;
      v7 = *v10;
LABEL_8:
      v8 = 0;
      while (1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        result = [*(*(&v9 + 1) + 8 * v8) vNormalEyeMask];
        if (result)
        {
          break;
        }

        if (v6 == ++v8)
        {
          result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v6 = result;
          if (result)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    v2 = *(v1 + 200);
    **(v1 + 208) = vorrq_s8(**(v1 + 208), xmmword_27DF40440);
    v3 = vorrq_s8(*v2, xmmword_27DF40500);
LABEL_4:
    *v2 = v3;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _vPositionEyeMask(uint64_t result)
{
  v27 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = *(result + 56);
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v21 + 1) + 8 * v6) vPositionEyeMask])
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (!*(v1 + 73) || (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, v7 = *(v1 + 152), (v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16]) == 0))
      {
LABEL_20:
        v14 = *(v1 + 200);
        **(v1 + 208) = vbicq_s8(**(v1 + 208), xmmword_27DF40430);
        v15 = vbicq_s8(*v14, xmmword_27DF404F0);
LABEL_22:
        *v14 = v15;
        result = _modelviewMatrixMask(v1);
        goto LABEL_23;
      }

      v9 = v8;
      v10 = *v18;
LABEL_13:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 enabled])
        {
          [v12 position];
          if (v13 != 0.0)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            goto LABEL_13;
          }

          goto LABEL_20;
        }
      }
    }

    v14 = *(v1 + 200);
    **(v1 + 208) = vorrq_s8(**(v1 + 208), xmmword_27DF40430);
    v15 = vorrq_s8(*v14, xmmword_27DF404F0);
    goto LABEL_22;
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _lightStateChanged(uint64_t result)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_21;
  }

  v1 = result;
  *(result + 72) = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(result + 152);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v4 = &xmmword_27DF404C0;
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      if ([v8 enabled])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    if ([v8 lightingType])
    {
      *(v1 + 73) = 1;
      goto LABEL_13;
    }

    *(v1 + 72) = 1;
    goto LABEL_16;
  }

LABEL_13:
  if (*(v1 + 72))
  {
LABEL_16:
    v10 = *(v1 + 200);
    v12 = *(v1 + 208);
    *v12 = vorrq_s8(*v12, xmmword_27DF403F0);
    v9 = &xmmword_27DF404C0 + 8;
    v11 = &xmmword_27DF404C0;
    goto LABEL_17;
  }

  v9 = &xmmword_27DF403F0 + 8;
  v10 = *(v1 + 208);
  v11 = &xmmword_27DF403F0;
  v12 = v10;
LABEL_17:
  v13 = v10->i64[1] & ~*v9;
  v10->i64[0] &= ~*v11;
  v10->i64[1] = v13;
  v14 = *(v1 + 200);
  if (*(v1 + 73))
  {
    *v14 = vorrq_s8(*v14, xmmword_27DF404C0);
    v15 = &xmmword_27DF403F0 + 8;
    v4 = &xmmword_27DF403F0;
    v14 = v12;
  }

  else
  {
    v15 = &xmmword_27DF404C0 + 8;
  }

  v16 = v14->i64[1] & ~*v15;
  v14->i64[0] &= ~*v4;
  v14->i64[1] = v16;
  _lightModelTwoSidedMask(v1);
  _normalizedNormalsMask(v1);
  result = _vNormalEyeMask(v1);
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _lightModelTwoSidedMask(uint64_t result)
{
  if (*(result + 17) && *(result + 72))
  {
    v1 = *(result + 200);
    **(result + 208) = vorrq_s8(**(result + 208), xmmword_27DF403E0);
    v2 = vorrq_s8(*v1, xmmword_27DF40480);
    *v1 = v2;
    v3 = vbicq_s8(v2, xmmword_27DF40490);
  }

  else
  {
    v1 = *(result + 200);
    v4 = *(result + 208);
    *v1 = vorrq_s8(*v1, xmmword_27DF40490);
    *v4 = vbicq_s8(*v4, xmmword_27DF403E0);
    v3 = vbicq_s8(*v1, xmmword_27DF40480);
  }

  *v1 = v3;
  v5 = &xmmword_27DF404A0;
  if (*(result + 17) && *(result + 73))
  {
    v6 = &qword_27DF404B8;
    v7 = &xmmword_27DF404A0 + 1;
    v8 = &xmmword_27DF404A0;
    v5 = &qword_27DF404B0;
  }

  else
  {
    v6 = &xmmword_27DF404A0 + 1;
    v7 = &qword_27DF404B8;
    v8 = &qword_27DF404B0;
  }

  v9 = v3.i64[0] | *v8;
  v10 = v3.i64[1] | *v7;
  v1->i64[0] = v9;
  v1->i64[1] = v10;
  v11 = v10 & ~*v6;
  v1->i64[0] = v9 & ~*v5;
  v1->i64[1] = v11;
  return result;
}

GLKVertexAttributeParameters GLKVertexAttributeParametersFromModelIO(MDLVertexFormat vertexFormat)
{
  if (vertexFormat > MDLVertexFormatUShortNormalized)
  {
    if (vertexFormat > MDLVertexFormatIntBits)
    {
      if (vertexFormat <= MDLVertexFormatHalf)
      {
        if (vertexFormat > MDLVertexFormatInt3)
        {
          v19 = 655364;
          v20 = 0x400000000;
          v21 = 5124;
          v23 = 0x400000000;
          v24 = 36255;
          v39 = 0x100000000;
          v40 = 5131;
          if (vertexFormat != MDLVertexFormatHalf)
          {
            v39 = 0;
            v40 = 0;
          }

          v41 = vertexFormat == MDLVertexFormatInt1010102Normalized;
          if (vertexFormat != MDLVertexFormatInt1010102Normalized)
          {
            v23 = v39;
            v24 = v40;
          }

          goto LABEL_87;
        }

        v19 = 655361;
        v20 = 0x100000000;
        v21 = 5124;
        v22 = 655362;
        v23 = 0x200000000;
        v24 = 5124;
        v25 = vertexFormat == MDLVertexFormatInt3;
        v26 = 0x300000000;
        v27 = 5124;
      }

      else
      {
        if (vertexFormat > MDLVertexFormatFloatBits)
        {
          v1 = 786434;
          v2 = 0x300000000;
          v3 = 5126;
          v13 = 0x400000000;
          v14 = 5126;
          if (vertexFormat != MDLVertexFormatFloat4)
          {
            v13 = 0;
            v14 = 0;
          }

          v6 = 0;
          if (vertexFormat != MDLVertexFormatFloat3)
          {
            v2 = v13;
            v3 = v14;
          }

          v7 = 786433;
          v8 = 0x100000000;
          v9 = 5126;
          v10 = vertexFormat == MDLVertexFormatFloat2;
          v11 = 0x200000000;
          v12 = 5126;
          goto LABEL_21;
        }

        v19 = 720898;
        v20 = 0x200000000;
        v21 = 5131;
        v22 = 720899;
        v23 = 0x300000000;
        v24 = 5131;
        v25 = vertexFormat == MDLVertexFormatHalf4;
        v26 = 0x400000000;
        v27 = 5131;
      }

      goto LABEL_68;
    }

    if (vertexFormat <= MDLVertexFormatShort3Normalized)
    {
      if (vertexFormat > MDLVertexFormatShortNormalizedBits)
      {
        if (vertexFormat != MDLVertexFormatShortNormalized)
        {
          v28 = 524290;
          v20 = 0x200000000;
          v21 = 5122;
          v29 = vertexFormat == MDLVertexFormatShort3Normalized;
          v23 = 0x300000000;
          v24 = 5122;
          goto LABEL_73;
        }

        v17 = 0x100000000;
        v18 = 5122;
      }

      else
      {
        if (vertexFormat != MDLVertexFormatUShort2Normalized)
        {
          v28 = 458755;
          v20 = 0x300000000;
          v21 = 5123;
          v29 = vertexFormat == MDLVertexFormatUShort4Normalized;
          v23 = 0x400000000;
          v24 = 5123;
LABEL_73:
          v43 = v29;
          if (!v29)
          {
            v23 = 0;
            v24 = 0;
          }

          v44 = vertexFormat == v28;
          v16 = vertexFormat == v28 || v43;
          goto LABEL_90;
        }

        v17 = 0x200000000;
        v18 = 5123;
      }

LABEL_101:
      v16 = 1;
      goto LABEL_96;
    }

    if (vertexFormat <= MDLVertexFormatUInt2)
    {
      v30 = 524292;
      v31 = 5122;
      v32 = 589825;
      v33 = 0x100000000;
      v34 = 5125;
      v35 = vertexFormat == MDLVertexFormatUInt2;
      v36 = 0x200000000;
      v37 = 5125;
      goto LABEL_53;
    }

    v19 = 589827;
    v20 = 0x300000000;
    v21 = 5125;
    v22 = 589828;
    v23 = 0x400000000;
    v24 = 5125;
    v25 = vertexFormat == MDLVertexFormatUInt1010102Normalized;
    v26 = 0x400000000;
    v27 = 33640;
LABEL_79:
    v42 = v25;
    goto LABEL_80;
  }

  if (vertexFormat <= MDLVertexFormatCharNormalizedBits)
  {
    if (vertexFormat <= MDLVertexFormatChar2)
    {
      if (vertexFormat > MDLVertexFormatUChar3)
      {
        v19 = 65540;
        v20 = 0x400000000;
        v21 = 5121;
        v22 = 131073;
        v23 = 0x100000000;
        v24 = 5120;
        v25 = vertexFormat == MDLVertexFormatChar2;
        v26 = 0x200000000;
        v27 = 5120;
      }

      else
      {
        v19 = 65537;
        v20 = 0x100000000;
        v21 = 5121;
        v22 = 65538;
        v23 = 0x200000000;
        v24 = 5121;
        v25 = vertexFormat == MDLVertexFormatUChar3;
        v26 = 0x300000000;
        v27 = 5121;
      }

LABEL_68:
      v42 = 0;
LABEL_80:
      if (!v25)
      {
        v26 = 0;
        v27 = 0;
      }

      v45 = vertexFormat == v22;
      v41 = vertexFormat != v22 && v42;
      if (!v45)
      {
        v23 = v26;
        v24 = v27;
      }

LABEL_87:
      v44 = vertexFormat == v19;
      v16 = vertexFormat != v19 && v41;
LABEL_90:
      if (v44)
      {
        v17 = v20;
      }

      else
      {
        v17 = v23;
      }

      if (v44)
      {
        v18 = v21;
      }

      else
      {
        v18 = v24;
      }

      goto LABEL_96;
    }

    if (vertexFormat > MDLVertexFormatUCharNormalized)
    {
      if (vertexFormat != MDLVertexFormatUChar2Normalized)
      {
        v28 = 196611;
        v20 = 0x300000000;
        v21 = 5121;
        v29 = vertexFormat == MDLVertexFormatUChar4Normalized;
        v23 = 0x400000000;
        v24 = 5121;
        goto LABEL_73;
      }

      v17 = 0x200000000;
      v18 = 5121;
      goto LABEL_101;
    }

    v19 = 131075;
    v20 = 0x300000000;
    v21 = 5120;
    v22 = 131076;
    v23 = 0x400000000;
    v24 = 5120;
    v25 = vertexFormat == MDLVertexFormatUCharNormalized;
    v26 = 0x100000000;
    v27 = 5121;
    goto LABEL_79;
  }

  if (vertexFormat > MDLVertexFormatUShort2)
  {
    if (vertexFormat > MDLVertexFormatShort)
    {
      v1 = 393219;
      v2 = 0x400000000;
      v3 = 5122;
      v4 = 0x100000000;
      v5 = 5123;
      if (vertexFormat != MDLVertexFormatUShortNormalized)
      {
        v4 = 0;
        v5 = 0;
      }

      v6 = vertexFormat != MDLVertexFormatShort4 && vertexFormat == MDLVertexFormatUShortNormalized;
      if (vertexFormat != MDLVertexFormatShort4)
      {
        v2 = v4;
        v3 = v5;
      }

      v7 = 393218;
      v8 = 0x200000000;
      v9 = 5122;
      v10 = vertexFormat == MDLVertexFormatShort3;
      v11 = 0x300000000;
      v12 = 5122;
LABEL_21:
      if (!v10)
      {
        v11 = 0;
        v12 = 0;
      }

      if (vertexFormat != v7)
      {
        v8 = v11;
        v9 = v12;
      }

      v15 = vertexFormat <= v1;
      v16 = vertexFormat > v1 && v6;
      if (vertexFormat <= v1)
      {
        v17 = v8;
      }

      else
      {
        v17 = v2;
      }

      if (v15)
      {
        v18 = v9;
      }

      else
      {
        v18 = v3;
      }

      goto LABEL_96;
    }

    v19 = 327683;
    v20 = 0x300000000;
    v21 = 5123;
    v22 = 327684;
    v23 = 0x400000000;
    v24 = 5123;
    v25 = vertexFormat == MDLVertexFormatShort;
    v26 = 0x100000000;
    v27 = 5122;
    goto LABEL_68;
  }

  if (vertexFormat <= MDLVertexFormatChar3Normalized)
  {
    if (vertexFormat != MDLVertexFormatCharNormalized)
    {
      v28 = 262146;
      v20 = 0x200000000;
      v21 = 5120;
      v29 = vertexFormat == MDLVertexFormatChar3Normalized;
      v23 = 0x300000000;
      v24 = 5120;
      goto LABEL_73;
    }

    v17 = 0x100000000;
    v18 = 5120;
    goto LABEL_101;
  }

  v30 = 262148;
  v31 = 5120;
  v32 = 327681;
  v33 = 0x100000000;
  v34 = 5123;
  v35 = vertexFormat == MDLVertexFormatUShort2;
  v36 = 0x200000000;
  v37 = 5123;
LABEL_53:
  if (!v35)
  {
    v36 = 0;
    v37 = 0;
  }

  if (vertexFormat != v32)
  {
    v33 = v36;
    v34 = v37;
  }

  v38 = vertexFormat == v30;
  v16 = vertexFormat == v30;
  if (vertexFormat == v30)
  {
    v17 = 0x400000000;
  }

  else
  {
    v17 = v33;
  }

  if (v38)
  {
    v18 = v31;
  }

  else
  {
    v18 = v34;
  }

LABEL_96:
  v46 = v18 | v17;
  result.type = v46;
  result.size = HIDWORD(v46);
  result.normalized = v16;
  return result;
}

Class initMDLMeshBufferMap()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLMeshBufferMap_cold_1();
  }

  result = objc_getClass("MDLMeshBufferMap");
  classMDLMeshBufferMap = result;
  getMDLMeshBufferMapClass = MDLMeshBufferMapFunction;
  return result;
}

void *__ModelIOLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ModelIO.framework/ModelIO", 2);
  ModelIOLibrary_sLib = result;
  return result;
}

Class initMDLSubmesh()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLMeshBufferMap_cold_1();
  }

  result = objc_getClass("MDLSubmesh");
  classMDLSubmesh = result;
  getMDLSubmeshClass = MDLSubmeshFunction;
  return result;
}

Class initMDLMesh()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLMeshBufferMap_cold_1();
  }

  result = objc_getClass("MDLMesh");
  classMDLMesh = result;
  getMDLMeshClass = MDLMeshFunction;
  return result;
}

int8x16_t _setMasks(uint64_t a1)
{
  v2 = [a1 isSpot];
  v3 = *(a1 + 256);
  v4 = &qword_27DF405E0;
  if (v2)
  {
    v5 = &qword_27DF405E0;
  }

  else
  {
    v5 = &unk_27DF40610;
  }

  if (v2)
  {
    v6 = &qword_27DF40730;
  }

  else
  {
    v6 = &unk_27DF40760;
  }

  if (v2)
  {
    v4 = &unk_27DF40610;
    v7 = &unk_27DF40760;
  }

  else
  {
    v7 = &qword_27DF40730;
  }

  ***(a1 + 24) = vorrq_s8(***(a1 + 24), *&v5[2 * v3]);
  **(*(a1 + 24) + 16) = vorrq_s8(**(*(a1 + 24) + 16), *&v6[2 * v3]);
  ***(a1 + 24) = vbicq_s8(***(a1 + 24), *&v4[2 * v3]);
  **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), *&v7[2 * v3]);
  _attenuateMask(a1);
  if (!*(a1 + 80))
  {
    v9 = *(a1 + 256);
    ***(a1 + 24) = vbicq_s8(***(a1 + 24), *&_staticVshMasks_0[2 * v9]);
    v10 = (*(a1 + 24) + 16);
    v11 = _staticFshMasks;
    goto LABEL_14;
  }

  v8 = *(a1 + 24);
  if (*(a1 + 260))
  {
    v9 = *(a1 + 256);
    *v8[2] = vorrq_s8(*v8[2], *&_staticFshMasks[2 * v9]);
    v10 = *(a1 + 24);
    v11 = _staticVshMasks_0;
LABEL_14:
    v12 = &v11[2 * v9];
    LODWORD(v11) = v9;
    goto LABEL_16;
  }

  v13 = *v8;
  v11 = *(a1 + 256);
  *v13 = vorrq_s8(*v13, *&_staticVshMasks_0[2 * v11]);
  v10 = (*(a1 + 24) + 16);
  v12 = &_staticFshMasks[2 * v11];
LABEL_16:
  **v10 = vbicq_s8(**v10, *v12);
  if (*(a1 + 108) == 0.0)
  {
    v17 = **(a1 + 24);
    v18 = vbicq_s8(*v17, *&_staticVshMasks_0[2 * v11 + 30]);
  }

  else
  {
    v14 = *(a1 + 24);
    if (*(a1 + 260))
    {
      *v14[2] = vorrq_s8(*v14[2], *&_staticFshMasks[2 * v11 + 30]);
      v15 = *(a1 + 24);
      v16 = _staticVshMasks_0;
      goto LABEL_22;
    }

    v17 = *v14;
    v18 = vorrq_s8(*v17, *&_staticVshMasks_0[2 * v11 + 30]);
  }

  *v17 = v18;
  v15 = (*(a1 + 24) + 16);
  v16 = _staticFshMasks;
LABEL_22:
  **v15 = vbicq_s8(**v15, *&v16[2 * v11 + 30]);
  if (*(a1 + 108) != 0.0)
  {
    v22 = **(a1 + 24);
    v23 = vbicq_s8(*v22, *&_staticVshMasks_0[2 * v11 + 36]);
LABEL_27:
    *v22 = v23;
    v20 = (*(a1 + 24) + 16);
    v21 = _staticFshMasks;
    goto LABEL_28;
  }

  v19 = *(a1 + 24);
  if (!*(a1 + 260))
  {
    v22 = *v19;
    v23 = vorrq_s8(*v22, *&_staticVshMasks_0[2 * v11 + 36]);
    goto LABEL_27;
  }

  *v19[2] = vorrq_s8(*v19[2], *&_staticFshMasks[2 * v11 + 36]);
  v20 = *(a1 + 24);
  v21 = _staticVshMasks_0;
LABEL_28:
  v24 = *v20;
  result = vbicq_s8(*v24, *&v21[2 * v11 + 36]);
  *v24 = result;
  return result;
}

int8x16_t _attenuateMask(uint64_t a1)
{
  if (![a1 isAttenuated])
  {
    v7 = *(a1 + 256);
    v8 = &_staticVshMasks_0[2 * v7];
    ***(a1 + 24) = vorrq_s8(***(a1 + 24), *(v8 + 12));
    v9 = **(a1 + 24);
    v10 = *(v8 + 9);
LABEL_6:
    *v9 = vbicq_s8(*v9, v10);
    v5 = &_staticFshMasks[2 * v7];
    **(*(a1 + 24) + 16) = vorrq_s8(**(*(a1 + 24) + 16), v5[12]);
    v6 = (*(a1 + 24) + 16);
    goto LABEL_7;
  }

  v2 = *(a1 + 24);
  if (!*(a1 + 260))
  {
    v7 = *(a1 + 256);
    v11 = &_staticVshMasks_0[2 * v7];
    **v2 = vorrq_s8(**v2, *(v11 + 9));
    v9 = **(a1 + 24);
    v10 = *(v11 + 12);
    goto LABEL_6;
  }

  v3 = *(a1 + 256);
  v4 = &_staticFshMasks[2 * v3];
  *v2[2] = vorrq_s8(*v2[2], v4[9]);
  **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), v4[12]);
  v5 = &_staticVshMasks_0[2 * v3];
  ***(a1 + 24) = vorrq_s8(***(a1 + 24), v5[12]);
  v6 = *(a1 + 24);
LABEL_7:
  v12 = *v6;
  result = vbicq_s8(*v12, v5[9]);
  *v12 = result;
  return result;
}

uint64_t _texGenSMask(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 24) + 16);
  v3 = *(result + 92);
  v4 = *v2;
  if (*(result + 136))
  {
    v5 = &_staticFshMasks_1[2 * v3];
    v6 = v4 | v5[18];
    v7 = v2[1] | v5[19];
    *v2 = v6;
    v2[1] = v7;
    v8 = [*(result + 136) mode];
    v9 = *(*(v1 + 24) + 16);
    v10 = _staticFshMasks_1[2 * *(v1 + 92) + 90];
    if (v8)
    {
      v11 = *v9 & ~v10;
      v12 = v9[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 91];
    }

    else
    {
      v11 = *v9 | v10;
      v12 = v9[1] | _staticFshMasks_1[2 * *(v1 + 92) + 91];
    }

    *v9 = v11;
    v9[1] = v12;
    v15 = [*(v1 + 136) mode];
    v16 = *(*(v1 + 24) + 16);
    v17 = _staticFshMasks_1[2 * *(v1 + 92) + 108];
    if (v15 == 1)
    {
      v18 = *v16 | v17;
      v19 = v16[1] | _staticFshMasks_1[2 * *(v1 + 92) + 109];
    }

    else
    {
      v18 = *v16 & ~v17;
      v19 = v16[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 109];
    }

    *v16 = v18;
    v16[1] = v19;
    result = [*(v1 + 136) mode];
    v20 = *(*(v1 + 24) + 16);
    v21 = _staticFshMasks_1[2 * *(v1 + 92) + 126];
    if (result == 2)
    {
      v22 = *v20 | v21;
      v23 = v20[1] | _staticFshMasks_1[2 * *(v1 + 92) + 127];
    }

    else
    {
      v22 = *v20 & ~v21;
      v23 = v20[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 127];
    }

    *v20 = v22;
    v20[1] = v23;
  }

  else
  {
    v13 = &_staticFshMasks_1[2 * v3];
    v14 = v2[1] | v13[18].i64[1];
    *v2 = v4 | v13[18].i64[0];
    v2[1] = v14;
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[9]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[45]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[54]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[63]);
  }

  return result;
}

uint64_t _texGenTMask(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 24) + 16);
  v3 = *(result + 92);
  v4 = *v2;
  if (*(result + 144))
  {
    v5 = &_staticFshMasks_1[2 * v3];
    v6 = v4 | v5[24];
    v7 = v2[1] | v5[25];
    *v2 = v6;
    v2[1] = v7;
    v8 = [*(result + 144) mode];
    v9 = *(*(v1 + 24) + 16);
    v10 = _staticFshMasks_1[2 * *(v1 + 92) + 96];
    if (v8)
    {
      v11 = *v9 & ~v10;
      v12 = v9[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 97];
    }

    else
    {
      v11 = *v9 | v10;
      v12 = v9[1] | _staticFshMasks_1[2 * *(v1 + 92) + 97];
    }

    *v9 = v11;
    v9[1] = v12;
    v15 = [*(v1 + 144) mode];
    v16 = *(*(v1 + 24) + 16);
    v17 = _staticFshMasks_1[2 * *(v1 + 92) + 114];
    if (v15 == 1)
    {
      v18 = *v16 | v17;
      v19 = v16[1] | _staticFshMasks_1[2 * *(v1 + 92) + 115];
    }

    else
    {
      v18 = *v16 & ~v17;
      v19 = v16[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 115];
    }

    *v16 = v18;
    v16[1] = v19;
    result = [*(v1 + 144) mode];
    v20 = *(*(v1 + 24) + 16);
    v21 = _staticFshMasks_1[2 * *(v1 + 92) + 132];
    if (result == 2)
    {
      v22 = *v20 | v21;
      v23 = v20[1] | _staticFshMasks_1[2 * *(v1 + 92) + 133];
    }

    else
    {
      v22 = *v20 & ~v21;
      v23 = v20[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 133];
    }

    *v20 = v22;
    v20[1] = v23;
  }

  else
  {
    v13 = &_staticFshMasks_1[2 * v3];
    v14 = v2[1] | v13[21].i64[1];
    *v2 = v4 | v13[21].i64[0];
    v2[1] = v14;
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[12]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[48]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[57]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[66]);
  }

  return result;
}

uint64_t _texGenRMask(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 24) + 16);
  v3 = *(result + 92);
  v4 = *v2;
  if (*(result + 152))
  {
    v5 = &_staticFshMasks_1[2 * v3];
    v6 = v4 | v5[30];
    v7 = v2[1] | v5[31];
    *v2 = v6;
    v2[1] = v7;
    v8 = [*(result + 152) mode];
    v9 = *(*(v1 + 24) + 16);
    v10 = _staticFshMasks_1[2 * *(v1 + 92) + 102];
    if (v8)
    {
      v11 = *v9 & ~v10;
      v12 = v9[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 103];
    }

    else
    {
      v11 = *v9 | v10;
      v12 = v9[1] | _staticFshMasks_1[2 * *(v1 + 92) + 103];
    }

    *v9 = v11;
    v9[1] = v12;
    v15 = [*(v1 + 152) mode];
    v16 = *(*(v1 + 24) + 16);
    v17 = _staticFshMasks_1[2 * *(v1 + 92) + 120];
    if (v15 == 1)
    {
      v18 = *v16 | v17;
      v19 = v16[1] | _staticFshMasks_1[2 * *(v1 + 92) + 121];
    }

    else
    {
      v18 = *v16 & ~v17;
      v19 = v16[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 121];
    }

    *v16 = v18;
    v16[1] = v19;
    result = [*(v1 + 152) mode];
    v20 = *(*(v1 + 24) + 16);
    v21 = _staticFshMasks_1[2 * *(v1 + 92) + 138];
    if (result == 2)
    {
      v22 = *v20 | v21;
      v23 = v20[1] | _staticFshMasks_1[2 * *(v1 + 92) + 139];
    }

    else
    {
      v22 = *v20 & ~v21;
      v23 = v20[1] & ~_staticFshMasks_1[2 * *(v1 + 92) + 139];
    }

    *v20 = v22;
    v20[1] = v23;
  }

  else
  {
    v13 = &_staticFshMasks_1[2 * v3];
    v14 = v2[1] | v13[24].i64[1];
    *v2 = v4 | v13[24].i64[0];
    v2[1] = v14;
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[15]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[51]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[60]);
    **(*(result + 24) + 16) = vbicq_s8(**(*(result + 24) + 16), v13[69]);
  }

  return result;
}

uint64_t _setMasks_0(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 16);
  v3 = *(a1 + 92);
  v4 = &_staticFshMasks_1[2 * v3];
  v5 = *v4;
  if (*(a1 + 72))
  {
    v6 = *v2 | v5;
    v7 = v2[1] | v4[1];
  }

  else
  {
    v6 = *v2 & ~v5;
    v7 = v2[1] & ~v4[1];
  }

  *v2 = v6;
  v2[1] = v7;
  v8 = *(*(a1 + 24) + 16);
  v9 = v4 + 84;
  v10 = v4[84];
  if (*(a1 + 88))
  {
    v11 = *v8 | v10;
    v12 = v8[1] | v9[1];
  }

  else
  {
    v11 = *v8 & ~v10;
    v12 = v8[1] & ~v9[1];
  }

  *v8 = v11;
  v8[1] = v12;
  v13 = *(a1 + 80);
  v14 = &unk_27DF40A70;
  if (v13 == 3553)
  {
    v15 = &unk_27DF40AA0;
  }

  else
  {
    if (v13 != 34067)
    {
      goto LABEL_12;
    }

    v15 = &unk_27DF40A70;
    v14 = &unk_27DF40AA0;
  }

  **(*(a1 + 24) + 16) = vorrq_s8(**(*(a1 + 24) + 16), v14[v3]);
  **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), v15[v3]);
LABEL_12:
  v16 = *(a1 + 84);
  if (v16 <= 2)
  {
    v17 = *(&off_278A57FD8 + v16);
    v18 = *(&off_278A57FF0 + v16);
    v19 = *(&off_278A58008 + v16);
    **(*(a1 + 24) + 16) = vorrq_s8(**(*(a1 + 24) + 16), *(v17 + 16 * v3));
    **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), *(v18 + 16 * v3));
    **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), *(v19 + 16 * v3));
  }

  v20 = *(a1 + 136);
  if (v20 && ![v20 mode] || (v21 = *(a1 + 144)) != 0 && !objc_msgSend(v21, "mode") || (v22 = *(a1 + 152)) != 0 && !objc_msgSend(v22, "mode"))
  {
    v29 = **(a1 + 24);
    v30 = v29[1] | _staticVshVPositionMask_1;
    *v29 |= _staticVshVPositionMask_0;
    v31 = *(a1 + 24);
    v29[1] = v30;
    v26 = *(v31 + 16);
    v27 = *v26 | _staticFshVPositionMask_0;
    v28 = v26[1] | _staticFshVPositionMask_1;
  }

  else
  {
    v23 = **(a1 + 24);
    v24 = v23[1] & ~_staticVshVPositionMask_1;
    *v23 &= ~_staticVshVPositionMask_0;
    v25 = *(a1 + 24);
    v23[1] = v24;
    v26 = *(v25 + 16);
    v27 = *v26 & ~_staticFshVPositionMask_0;
    v28 = v26[1] & ~_staticFshVPositionMask_1;
  }

  *v26 = v27;
  v26[1] = v28;
  _texGenSMask(a1);
  _texGenTMask(a1);
  _texGenRMask(a1);
  v32 = &qword_27DF408F0;
  if (*(a1 + 72) && (v33 = *(a1 + 152)) != 0 && *(a1 + 136) && *(a1 + 144) && [v33 mode] == 3 && *(a1 + 80) == 34067)
  {
    v34 = &qword_27DF408F0;
    v32 = &unk_27DF40920;
  }

  else
  {
    v34 = &unk_27DF40920;
  }

  v35 = *(a1 + 92);
  **(*(a1 + 24) + 16) = vorrq_s8(**(*(a1 + 24) + 16), *&v34[2 * v35]);
  **(*(a1 + 24) + 16) = vbicq_s8(**(*(a1 + 24) + 16), *&v32[2 * v35]);
  v36 = *(*(a1 + 24) + 32);

  return _modelviewMatrixMask(v36);
}

BOOL _reflectionMappingEnabled(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 16);
  v2 = &_staticFshMasks_1[2 * *(a1 + 92)];
  v4 = v2[6];
  v3 = v2 + 6;
  return (v4 & *v1) != 0 || (v3[1] & v1[1]) != 0;
}

uint64_t glkLinkedOSVersion()
{
  if (glkLinkedOSVersion_once != -1)
  {
    glkLinkedOSVersion_cold_1();
  }

  return glkLinkedOSVersion_version;
}

uint64_t __glkLinkedOSVersion_block_invoke()
{
  result = dyld_get_program_sdk_version();
  glkLinkedOSVersion_version = result;
  return result;
}

GLKMatrix4 *__cdecl GLKMatrix4Invert(GLKMatrix4 *__return_ptr retstr, GLKMatrix4 *matrix, BOOL *isInvertible)
{
  v3 = 0;
  v67 = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  v62 = 0u;
  v61 = -1;
  LODWORD(v63) = -1;
  DWORD1(v64) = -1;
  v66 = -1;
  v5 = *&matrix->m[4];
  v6 = *&matrix->m[8];
  v7 = *&matrix->m[12];
  v8 = vzip1q_s32(*&matrix->m00, v6);
  v9 = vzip2q_s32(*&matrix->m00, v6);
  v10 = vzip1q_s32(v5, v7);
  v11 = vzip2q_s32(v5, v7);
  v12 = vzip1q_s32(v8, v10);
  v13 = vzip2q_s32(v8, v10);
  v14 = vzip1q_s32(v9, v11);
  v15 = vzip2q_s32(v9, v11);
  v16 = -1;
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = 50462976;
  __asm { FMOV            V19.4S, #1.0 }

  v24 = 0uLL;
  do
  {
    v25 = vbicq_s8(v12, v17);
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
    v27 = vcgt_u32(v26, *v25.i8);
    *v25.i8 = vmax_u32(*v25.i8, v26);
    v28 = vbsl_s8(v27, 0xF0E0D0C0B0A0908, 0x706050403020100);
    v29 = vdupq_lane_s32(vbsl_s8(vcgt_u32(vrev64_s32(*v25.i8), *v25.i8), vdup_lane_s32(v28, 1), v28), 0);
    v16 = vmin_u32(v16, vpmax_u32(*v25.i8, *v25.i8));
    v4 = vbslq_s8(*(&v61 + v3), v29, v4);
    v30 = vceqq_s32(v29, xmmword_238915130);
    v24 = vbslq_s8(v30, vdupq_n_s32(v18), v24);
    v18 += 67372036;
    v31 = vrecpeq_f32(v12);
    v32 = vmulq_f32(v31, vrecpsq_f32(v12, v31));
    v33 = vmulq_f32(vrecpsq_f32(v12, v32), v32);
    v34 = vbslq_s8(v30, v33, _Q19);
    v35 = vmulq_f32(v13, v34);
    v36 = vmulq_f32(v14, v34);
    v37 = vmulq_f32(v15, v34);
    v38 = vandq_s8(v33, v30);
    *v33.i8 = vqtbl1_s8(v35, *v29.i8);
    *v39.i8 = vqtbl1_s8(v36, *v29.i8);
    *v40.i8 = vqtbl1_s8(v37, *v29.i8);
    *v29.i8 = vqtbl1_s8(v38, *v29.i8);
    v33.i64[1] = v33.i64[0];
    v39.i64[1] = v39.i64[0];
    v40.i64[1] = v40.i64[0];
    v29.i64[1] = v29.i64[0];
    v41 = vmulq_f32(vnegq_f32(v12), v34);
    v12 = vmlaq_f32(v35, vbicq_s8(v33, v30), v41);
    v13 = vmlaq_f32(v36, vbicq_s8(v39, v30), v41);
    v14 = vmlaq_f32(v37, vbicq_s8(v40, v30), v41);
    v15 = vmlaq_f32(v38, vbicq_s8(v29, v30), v41);
    v17 = vorrq_s8(v17, v30);
    v3 += 16;
  }

  while (v3 != 64);
  if (v16.i32[0])
  {
    v42 = vextq_s8(v4, v4, 8uLL).u64[0];
    *v43.i8 = vqtbl1_s8(v12, *v4.i8);
    v43.u64[1] = vqtbl1_s8(v12, v42);
    *v44.i8 = vqtbl1_s8(v13, *v4.i8);
    v44.u64[1] = vqtbl1_s8(v13, v42);
    *v45.i8 = vqtbl1_s8(v14, *v4.i8);
    v45.u64[1] = vqtbl1_s8(v14, v42);
    *v46.i8 = vqtbl1_s8(v15, *v4.i8);
    v46.u64[1] = vqtbl1_s8(v15, v42);
    v47 = vzip1q_s32(v43, v45);
    v48 = vzip2q_s32(v43, v45);
    v49 = vzip1q_s32(v44, v46);
    v50 = vzip2q_s32(v44, v46);
    v51 = vzip1q_s32(v47, v49);
    v52 = vzip2q_s32(v47, v49);
    v53 = vzip1q_s32(v48, v50);
    v54 = vzip2q_s32(v48, v50);
    v55 = vextq_s8(v24, v24, 8uLL).u64[0];
    *&v56 = vqtbl1_s8(v51, *v24.i8);
    *(&v56 + 1) = vqtbl1_s8(v51, v55);
    *&v57 = vqtbl1_s8(v52, *v24.i8);
    *(&v57 + 1) = vqtbl1_s8(v52, v55);
    *&v58 = vqtbl1_s8(v53, *v24.i8);
    *(&v58 + 1) = vqtbl1_s8(v53, v55);
    *&v59 = vqtbl1_s8(v54, *v24.i8);
    *(&v59 + 1) = vqtbl1_s8(v54, v55);
    if (isInvertible)
    {
      *isInvertible = 1;
    }

    *&retstr->m00 = v56;
    *&retstr->m[4] = v57;
    *&retstr->m[8] = v58;
  }

  else
  {
    if (isInvertible)
    {
      *isInvertible = 0;
    }

    *&retstr->m00 = *&GLKMatrix4Identity.m00;
    *&retstr->m[4] = *&GLKMatrix4Identity.m[4];
    v59 = *&GLKMatrix4Identity.m[12];
    *&retstr->m[8] = *&GLKMatrix4Identity.m[8];
  }

  *&retstr->m[12] = v59;
  v60 = *MEMORY[0x277D85DE8];
  return matrix;
}

GLKMatrix4 *__cdecl GLKMatrix4InvertAndTranspose(GLKMatrix4 *__return_ptr retstr, GLKMatrix4 *matrix, BOOL *isInvertible)
{
  v3 = *&matrix->m[4];
  v7.val[0] = *&matrix->m00;
  v7.val[1] = v3;
  v4 = *&matrix->m[12];
  v7.val[2] = *&matrix->m[8];
  v7.val[3] = v4;
  v5 = &v7;
  v8 = vld4q_f32(v5);
  v7 = v8;
  return GLKMatrix4Invert(retstr, &v7, isInvertible);
}

GLKQuaternion GLKQuaternionMakeWithMatrix3(GLKMatrix3 *matrix)
{
  m00 = matrix->m00;
  m11 = matrix->m11;
  v3 = matrix->m00 + m11;
  m22 = matrix->m22;
  if ((v3 + m22) >= 0.0)
  {
    v14 = 0.5 / sqrt((v3 + m22) + 1.0);
    v15.i32[0] = LODWORD(matrix->m21);
    v15.i32[1] = LODWORD(matrix->m02);
    v16 = vmulq_n_f64(vcvtq_f64_f32(vsub_f32(*&matrix->m[5], v15)), v14);
    v17 = v14 * (matrix->m01 - matrix->m10);
  }

  else
  {
    v5 = m11 > m00;
    if (m22 > *(&matrix->m00 + 4 * (m11 > m00)))
    {
      v5 = 2;
    }

    if (v5 == 2)
    {
      v18 = 0.5 / sqrt(((m22 - v3) + 1.0));
      v19.i32[0] = LODWORD(matrix->m02);
      v19.i32[1] = LODWORD(matrix->m12);
      v20 = vmulq_n_f64(vcvtq_f64_f32(vadd_f32(*&matrix->m[6], v19)), v18);
      v19.f32[0] = matrix->m01 - matrix->m10;
    }

    else if (v5 == 1)
    {
      v6 = sqrt(((m11 - (m00 + m22)) + 1.0));
      v7 = 0.5 / v6 * (matrix->m21 + matrix->m12);
      v8 = 0.5 / v6 * (matrix->m20 - matrix->m02);
      __asm { FMOV            V0.2D, #0.5 }

      *&_Q0 = (matrix->m10 + matrix->m01);
    }

    else
    {
      __asm { FMOV            V3.2D, #0.5 }

      *(&_Q3 + 1) = (matrix->m10 + matrix->m01);
      v22 = 0.5 / sqrt(((m00 - (m11 + m22)) + 1.0)) * (matrix->m02 + matrix->m20);
      *&_Q3 = matrix->m12 - matrix->m21;
    }
  }

  *&result.x = matrix;
  return result;
}

GLKQuaternion GLKQuaternionMakeWithMatrix4(GLKMatrix4 *matrix)
{
  m00 = matrix->m00;
  m11 = matrix->m11;
  v3 = matrix->m00 + m11;
  m22 = matrix->m22;
  if ((v3 + m22) >= 0.0)
  {
    v11 = 0.5 / sqrt((v3 + m22) + 1.0);
    v12 = v11 * (matrix->m12 - matrix->m21);
    v13 = v11 * (matrix->m20 - matrix->m02);
    v14 = v11 * (matrix->m01 - matrix->m10);
  }

  else
  {
    v5 = m11 > m00;
    v6 = 20;
    if (m11 <= m00)
    {
      v6 = 0;
    }

    if (m22 > *(&matrix->m00 + v6))
    {
      v5 = 2;
    }

    if (v5 == 2)
    {
      v15 = 0.5 / sqrt(((m22 - v3) + 1.0));
      v16 = v15 * (matrix->m02 + matrix->m20);
      v17 = v15 * (matrix->m21 + matrix->m12);
      v18 = matrix->m01 - matrix->m10;
    }

    else if (v5 == 1)
    {
      v7 = 0.5 / sqrt(((m11 - (m00 + m22)) + 1.0));
      v8 = v7 * (matrix->m21 + matrix->m12);
      v9 = v7 * (matrix->m10 + matrix->m01);
      v10 = matrix->m20 - matrix->m02;
    }

    else
    {
      v19 = 0.5 / sqrt(((m00 - (m11 + m22)) + 1.0));
      v20 = v19 * (matrix->m10 + matrix->m01);
      v21 = v19 * (matrix->m02 + matrix->m20);
      v22 = matrix->m12 - matrix->m21;
    }
  }

  *&result.x = matrix;
  return result;
}

float GLKQuaternionAngle(GLKQuaternion quaternion)
{
  if (fabsf(v4) > 1.0)
  {
    v1.i32[1] = v2;
    v1.i64[1] = __PAIR64__(LODWORD(v4), v3);
    v5 = vmulq_f32(v1, v1);
    v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
    v4 = v4 * (1.0 / sqrtf(vpadd_f32(*v5.f32, *v5.f32).f32[0]));
  }

  v6 = acosf(v4);
  return v6 + v6;
}

GLKVector3 GLKQuaternionAxis(GLKQuaternion quaternion)
{
  v1.i32[1] = v2;
  v1.i64[1] = __PAIR64__(v4, v3);
  v5 = vmulq_f32(v1, v1);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  _S0 = vmulq_n_f32(v1, 1.0 / sqrtf(COERCE_FLOAT(vpadd_f32(*&v5, *&v5)))).i32[3];
  __asm { FMLS            S3, S0, V1.S[3] }

  *&result.x = *&quaternion.x;
  result.z = quaternion.z;
  return result;
}

GLKQuaternion GLKQuaternionSlerp(GLKQuaternion quaternionStart, GLKQuaternion quaternionEnd, float t)
{
  v10 = (((v3 * v7) + (t * v6)) + (v4 * v8)) + (v5 * v9);
  v11 = v10;
  if (v10 < 0.0)
  {
    v11 = -v11;
  }

  if (1.0 - v11 > 0.00100000005)
  {
    v12 = acos(v11);
    sin(v12);
    sin((1.0 - v13) * v12);
    sin(v12 * v13);
  }

  return quaternionStart;
}

void GLKQuaternionRotateVector3Array(GLKQuaternion quaternion, GLKVector3 *vectors, size_t vectorCount)
{
  if (*&quaternion.q[2])
  {
    v7 = -v5;
    v8 = -v3;
    v9.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
    v10 = -v4;
    v9.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
    v11 = vmulq_f32(v9, v9);
    v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
    v12 = veorq_s8(vmulq_n_f32(v9, 1.0 / vpadd_f32(*v11.f32, *v11.f32).f32[0]), xmmword_238915190);
    v13 = (*&quaternion.x + 8);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = (((v3 * 0.0) + (v6 * v14)) + (v4 * *v13)) + (v7 * v15);
      v17 = (((v4 * 0.0) + (v6 * v15)) + (v5 * v14)) + (v8 * *v13);
      v18 = (((v5 * 0.0) + (v6 * *v13)) + (v3 * v15)) + (v10 * v14);
      v19 = (((v14 * v8) + (v6 * 0.0)) + (v10 * v15)) + (v7 * *v13);
      *(v13 - 2) = (((v16 * *&v12.i32[3]) + (v19 * *v12.i32)) + (v17 * *&v12.i32[2])) - (v18 * *&v12.i32[1]);
      *(v13 - 1) = (((v17 * *&v12.i32[3]) + (v19 * *&v12.i32[1])) + (v18 * *v12.i32)) - (v16 * *&v12.i32[2]);
      *v13 = (((v18 * *&v12.i32[3]) + (v19 * *&v12.i32[2])) + (v16 * *&v12.i32[1])) - (v17 * *v12.i32);
      v13 += 3;
      --*&quaternion.q[2];
    }

    while (*&quaternion.q[2]);
  }
}

void GLKQuaternionRotateVector4Array(GLKQuaternion quaternion, GLKVector4 *vectors, size_t vectorCount)
{
  if (*&quaternion.q[2])
  {
    v7 = -v5;
    v8 = -v3;
    v9.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
    v10 = -v4;
    v9.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
    v11 = vmulq_f32(v9, v9);
    v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
    v12 = veorq_s8(vmulq_n_f32(v9, 1.0 / vpadd_f32(*v11.f32, *v11.f32).f32[0]), xmmword_238915190);
    v13 = (*&quaternion.x + 8);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = (((v3 * 0.0) + (v6 * v14)) + (v4 * *v13)) + (v7 * v15);
      v17 = (((v4 * 0.0) + (v6 * v15)) + (v5 * v14)) + (v8 * *v13);
      v18 = (((v5 * 0.0) + (v6 * *v13)) + (v3 * v15)) + (v10 * v14);
      v19 = (((v14 * v8) + (v6 * 0.0)) + (v10 * v15)) + (v7 * *v13);
      *(v13 - 2) = (((v16 * *&v12.i32[3]) + (v19 * *v12.i32)) + (v17 * *&v12.i32[2])) - (v18 * *&v12.i32[1]);
      *(v13 - 1) = (((v17 * *&v12.i32[3]) + (v19 * *&v12.i32[1])) + (v18 * *v12.i32)) - (v16 * *&v12.i32[2]);
      *v13 = (((v18 * *&v12.i32[3]) + (v19 * *&v12.i32[2])) + (v16 * *&v12.i32[1])) - (v17 * *v12.i32);
      v13 += 4;
      --*&quaternion.q[2];
    }

    while (*&quaternion.q[2]);
  }
}

GLKMatrixStackRef GLKMatrixStackCreate(CFAllocatorRef alloc)
{
  if (GLKMatrixStackGetTypeID_pred != -1)
  {
    GLKMatrixStackCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    v3 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A0040736D76D4uLL);
    *v3 = 1;
    v3[1] = 80;
    *(v3 + 4) = 16;
    v4 = malloc_type_calloc(0x50uLL, 0x10uLL, 0xAD525B14uLL);
    v3[3] = v4;
    *(v2 + 2) = v3;
    if (*v3 >= 2)
    {
      v5 = *v3 - 1;
      v6 = v3;
      do
      {
        v6 = v6[4];
        --v5;
      }

      while (v5);
      v4 = v6[3];
    }

    v7 = &v4[v3[1] * *(v3 + 1)];
    *v7 = GLKMatrix4Identity;
    *(v7 + 8) = 0x3F80000000000005;
  }

  return v2;
}

CFTypeID GLKMatrixStackGetTypeID(void)
{
  if (GLKMatrixStackGetTypeID_pred != -1)
  {
    GLKMatrixStackCreate_cold_1();
  }

  return _GLKMatrixStackTypeID;
}

uint64_t _GLKMatrixStackRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  _GLKMatrixStackTypeID = result;
  return result;
}

uint64_t GLKMatrixStackGetModifyCount(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  if (*v1 >= 2)
  {
    v3 = *v1 - 1;
    v2 = *(a1 + 16);
    do
    {
      v2 = *(v2 + 32);
      --v3;
    }

    while (v3);
  }

  return *(*(v2 + 24) + *(v1 + 8) * *(v1 + 4) + 72);
}

void GLKMatrixStackPush(GLKMatrixStackRef stack)
{
  v1 = *(stack + 2);
  v2 = *v1;
  if (*v1 < 2)
  {
    v8 = (v1 + 4);
    v7 = *(v1 + 4);
    v10 = (v1 + 8);
    v9 = *(v1 + 8);
    v12 = (*(v1 + 24) + v9 * v7);
    v11 = *(stack + 2);
  }

  else
  {
    v3 = v2 - 1;
    v4 = v2 - 1;
    v5 = *(stack + 2);
    do
    {
      v5 = *(v5 + 32);
      --v4;
    }

    while (v4);
    v6 = *(v5 + 24);
    v8 = (v1 + 4);
    v7 = *(v1 + 4);
    v10 = (v1 + 8);
    v9 = *(v1 + 8);
    v11 = *(stack + 2);
    do
    {
      v11 = v11[4];
      --v3;
    }

    while (v3);
    v12 = (v6 + v9 * v7);
  }

  v13 = v7 + 1;
  *(v1 + 4) = v7 + 1;
  v14 = *(v1 + 16);
  if (v7 >= v14 - 1)
  {
    *v1 = (v2 + 1);
    if (v11[4])
    {
      v13 = 0;
      v11 = v11[4];
    }

    else
    {
      v15 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A0040736D76D4uLL);
      *v15 = 1;
      v15[1] = v9;
      *(v15 + 4) = v14;
      v15[3] = malloc_type_calloc(v9, v14, 0xAD525B14uLL);
      v11[4] = v15;
      v13 = *v8;
      v9 = *v10;
      v11 = v15;
    }
  }

  v16 = (v11[3] + v9 * v13);

  memcpy(v16, v12, v9);
}

void GLKMatrixStackPop(GLKMatrixStackRef stack)
{
  v1 = *(stack + 2);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 < 2)
  {
    if (v3 <= 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 - 1;
    }

    goto LABEL_8;
  }

  v1[1] = v3 - 1;
  if (v3 < 1)
  {
    *v1 = v2 - 1;
    v4 = v1[4] - 1;
LABEL_8:
    v1[1] = v4;
  }
}

void GLKMatrixStackLoadMatrix4(GLKMatrixStackRef stack, GLKMatrix4 *matrix)
{
  v2 = *(stack + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stack + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = *(v3 + 24) + *(v2 + 8) * *(v2 + 4);
  v7 = *&matrix->m[8];
  v6 = *&matrix->m[12];
  v8 = *&matrix->m[4];
  *v5 = *&matrix->m00;
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  if (((*(v5 + 28) | *(v5 + 12) | *(v5 + 44)) & 0x7FFFFFFF) != 0 || *(v5 + 60) != 1065353216)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(v5 + 64) = v9;
  ++*(v5 + 72);
}

GLKMatrix4 *__cdecl GLKMatrixStackGetMatrix4(GLKMatrix4 *__return_ptr retstr, GLKMatrix4 *stack)
{
  v2 = *&stack->m[4];
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *&stack->m[4];
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = (*(v3 + 24) + *(v2 + 8) * *(v2 + 4));
  v6 = v5[1];
  *&retstr->m00 = *v5;
  *&retstr->m[4] = v6;
  v7 = v5[3];
  *&retstr->m[8] = v5[2];
  *&retstr->m[12] = v7;
  return stack;
}

GLKMatrix3 *__cdecl GLKMatrixStackGetMatrix3(GLKMatrix3 *__return_ptr retstr, GLKMatrix3 *stack)
{
  v2 = *&stack->m[4];
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *&stack->m[4];
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = *(v3 + 24) + *(v2 + 8) * *(v2 + 4);
  *&v6 = *v5;
  *&v7 = *(v5 + 20);
  DWORD2(v6) = *(v5 + 8);
  HIDWORD(v6) = *(v5 + 16);
  v8 = *(v5 + 40);
  *(&v7 + 1) = *(v5 + 32);
  *&retstr->m00 = v6;
  *&retstr->m[4] = v7;
  retstr->m22 = v8;
  return stack;
}

GLKMatrix2 GLKMatrixStackGetMatrix2(GLKMatrixStackRef stack)
{
  v1 = *(stack + 2);
  v2 = v1;
  if (*v1 >= 2)
  {
    v3 = *v1 - 1;
    v2 = *(stack + 2);
    do
    {
      v2 = *(v2 + 32);
      --v3;
    }

    while (v3);
  }

  v4 = (*(v2 + 24) + *(v1 + 8) * *(v1 + 4));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[4];
  v8 = v4[5];
  *&result.m00 = stack;
  return result;
}

GLKMatrix4 *__cdecl GLKMatrixStackGetMatrix4Inverse(GLKMatrix4 *__return_ptr retstr, GLKMatrixStackRef stack)
{
  v3 = *(stack + 2);
  v4 = v3;
  if (*v3 >= 2)
  {
    v5 = *v3 - 1;
    v4 = *(stack + 2);
    do
    {
      v4 = *(v4 + 32);
      --v5;
    }

    while (v5);
  }

  v6 = *(v3 + 4);
  v7 = *(v3 + 8);
  v8 = (*(v4 + 24) + v7 * v6);
  result = *(v8 + 16);
  if (result == 2)
  {
    result = _GLKMatrix4Classify(*(v4 + 24) + v7 * v6, v8 + 17);
    *(v8 + 16) = result;
  }

  if (result >= 3)
  {
    v10 = v8[17];
    m00 = v10 * *v8;
    m10 = v10 * v8[1];
    m20 = v10 * v8[2];
    m01 = v10 * v8[4];
    m11 = v10 * v8[5];
    m21 = v10 * v8[6];
    v17 = v10 * v8[8];
    *&v18 = v10 * v8[9];
    *&v19 = v10 * v8[10];
    v20 = v8[12];
    v21 = v8[13];
    v22 = v8[14];
    m30 = -(((m10 * v21) + (m00 * v20)) + (m20 * v22));
    m31 = -(((m11 * v21) + (m01 * v20)) + (m21 * v22));
    v25 = -(((*&v18 * v21) + (v17 * v20)) + (*&v19 * v22));
    v26 = LODWORD(v20);
    *&v26 = v17;
    v27 = v18;
    v28 = v19;
    __asm { FMOV            V19.2S, #1.0 }

    *&_D19 = v25;
LABEL_12:
    retstr->m00 = m00;
    retstr->m01 = m01;
    *&retstr->m[2] = v26;
    retstr->m10 = m10;
    retstr->m11 = m11;
    *&retstr->m[6] = v27;
    retstr->m20 = m20;
    retstr->m21 = m21;
    *&retstr->m[10] = v28;
    retstr->m30 = m30;
    retstr->m31 = m31;
    *&retstr->m[14] = _D19;
    return result;
  }

  if (!result)
  {
    v61 = *v8;
    v62 = *(v8 + 1);
    v63 = *(v8 + 3);
    *&v64.m[8] = *(v8 + 2);
    *&v64.m[12] = v63;
    *&v64.m00 = v61;
    *&v64.m[4] = v62;
    result = GLKMatrix4Invert(&v65, &v64, 0);
    m01 = v65.m01;
    m00 = v65.m00;
    v26 = *&v65.m[2];
    m11 = v65.m11;
    m10 = v65.m10;
    v27 = *&v65.m[6];
    m21 = v65.m21;
    m20 = v65.m20;
    v28 = *&v65.m[10];
    m31 = v65.m31;
    m30 = v65.m30;
    _D19 = *&v65.m[14];
    goto LABEL_12;
  }

  v34 = *v8;
  v35 = v8[1];
  v36 = v8[2];
  v37 = v8[4];
  v38 = v8[5];
  v39 = v8[6];
  v40 = v8[8];
  v41 = v8[9];
  v42 = v8[10];
  v43 = (v35 * v39) - (v38 * v36);
  v44 = (v41 * v36) - (v35 * v42);
  v45 = (v38 * v42) - (v39 * v41);
  v46 = ((v37 * v44) + (v40 * v43)) + (*v8 * v45);
  if (v46 != 0.0)
  {
    v47 = 1.0 / v46;
    v48 = (v40 * v39) - (v37 * v42);
    v49 = (v37 * v41) - (v40 * v38);
    v50 = (v34 * v42) - (v40 * v36);
    v51 = (v40 * v35) - (v34 * v41);
    v52 = (v37 * v36) - (v34 * v39);
    v53 = (v34 * v38) - (v37 * v35);
    m00 = v45 * v47;
    m10 = v48 * v47;
    m20 = v49 * v47;
    m01 = v44 * v47;
    m11 = v50 * v47;
    m21 = v51 * v47;
    v54 = v43 * v47;
    v55 = v52 * v47;
    *&v56 = v53 * v47;
    v57 = v8[12];
    v58 = v8[13];
    v59 = v8[14];
    m30 = (-(v58 * m10) - (m00 * v57)) - (m20 * v59);
    m31 = (-(v58 * m11) - (m01 * v57)) - (m21 * v59);
    v60 = (-(v58 * v55) - (v54 * v57)) - (*&v56 * v59);
    v26 = LODWORD(v57);
    *&v26 = v54;
    v27 = LODWORD(v58);
    *&v27 = v55;
    v28 = v56;
    __asm { FMOV            V19.2S, #1.0 }

    *&_D19 = v60;
    goto LABEL_12;
  }

  *retstr = GLKMatrix4Identity;
  return result;
}

GLKMatrix4 *__cdecl GLKMatrixStackGetMatrix4InverseTranspose(GLKMatrix4 *__return_ptr retstr, GLKMatrixStackRef stack)
{
  v3 = *(stack + 2);
  v4 = v3;
  if (*v3 >= 2)
  {
    v5 = *v3 - 1;
    v4 = *(stack + 2);
    do
    {
      v4 = *(v4 + 32);
      --v5;
    }

    while (v5);
  }

  v6 = *(v3 + 4);
  v7 = *(v3 + 8);
  v8 = (*(v4 + 24) + v7 * v6);
  result = *(v8 + 16);
  if (result == 2)
  {
    result = _GLKMatrix4Classify(*(v4 + 24) + v7 * v6, v8 + 17);
    *(v8 + 16) = result;
  }

  if (result < 3)
  {
    if (result)
    {
      v34 = *v8;
      v35 = v8[1];
      v36 = v8[2];
      v37 = v8[4];
      v38 = v8[5];
      v39 = v8[6];
      v40 = v8[8];
      v41 = v8[9];
      v42 = v8[10];
      v43 = (v35 * v39) - (v38 * v36);
      v44 = (v41 * v36) - (v35 * v42);
      v45 = (v38 * v42) - (v39 * v41);
      v46 = ((v37 * v44) + (v40 * v43)) + (*v8 * v45);
      if (v46 == 0.0)
      {
        *retstr = GLKMatrix4Identity;
        goto LABEL_13;
      }

      v47 = 1.0 / v46;
      v48 = (v40 * v39) - (v37 * v42);
      v49 = (v37 * v41) - (v40 * v38);
      v50 = (v34 * v42) - (v40 * v36);
      v51 = (v40 * v35) - (v34 * v41);
      v52 = (v37 * v36) - (v34 * v39);
      v53 = (v34 * v38) - (v37 * v35);
      m00 = v45 * v47;
      m10 = v48 * v47;
      m20 = v49 * v47;
      m01 = v44 * v47;
      m11 = v50 * v47;
      m21 = v51 * v47;
      v54 = v43 * v47;
      v55 = v52 * v47;
      *&v56 = v53 * v47;
      v57 = v8[12];
      v58 = v8[13];
      v59 = v8[14];
      m30 = (-(v58 * m10) - (m00 * v57)) - (m20 * v59);
      m31 = (-(v58 * m11) - (m01 * v57)) - (m21 * v59);
      v60 = (-(v58 * v55) - (v54 * v57)) - (*&v56 * v59);
      v26 = LODWORD(v57);
      *&v26 = v54;
      v27 = LODWORD(v58);
      *&v27 = v55;
      v28 = v56;
      __asm { FMOV            V19.2S, #1.0 }

      *&_D19 = v60;
    }

    else
    {
      v61 = *v8;
      v62 = *(v8 + 1);
      v63 = *(v8 + 3);
      *&v67.m[8] = *(v8 + 2);
      *&v67.m[12] = v63;
      *&v67.m00 = v61;
      *&v67.m[4] = v62;
      result = GLKMatrix4Invert(&v68, &v67, 0);
      m01 = v68.m01;
      m00 = v68.m00;
      v26 = *&v68.m[2];
      m11 = v68.m11;
      m10 = v68.m10;
      v27 = *&v68.m[6];
      m21 = v68.m21;
      m20 = v68.m20;
      v28 = *&v68.m[10];
      m31 = v68.m31;
      m30 = v68.m30;
      _D19 = *&v68.m[14];
    }
  }

  else
  {
    v10 = v8[17];
    m00 = v10 * *v8;
    m10 = v10 * v8[1];
    m20 = v10 * v8[2];
    m01 = v10 * v8[4];
    m11 = v10 * v8[5];
    m21 = v10 * v8[6];
    v17 = v10 * v8[8];
    *&v18 = v10 * v8[9];
    *&v19 = v10 * v8[10];
    v20 = v8[12];
    v21 = v8[13];
    v22 = v8[14];
    m30 = -(((m10 * v21) + (m00 * v20)) + (m20 * v22));
    m31 = -(((m11 * v21) + (m01 * v20)) + (m21 * v22));
    v25 = -(((*&v18 * v21) + (v17 * v20)) + (*&v19 * v22));
    v26 = LODWORD(v20);
    *&v26 = v17;
    v27 = v18;
    v28 = v19;
    __asm { FMOV            V19.2S, #1.0 }

    *&_D19 = v25;
  }

  retstr->m00 = m00;
  retstr->m01 = m01;
  *&retstr->m[2] = v26;
  retstr->m10 = m10;
  retstr->m11 = m11;
  *&retstr->m[6] = v27;
  retstr->m20 = m20;
  retstr->m21 = m21;
  *&retstr->m[10] = v28;
  retstr->m30 = m30;
  retstr->m31 = m31;
  *&retstr->m[14] = _D19;
LABEL_13:
  v64 = *&retstr->m[4];
  *&v68.m00 = *&retstr->m00;
  *&v68.m[4] = v64;
  v65 = *&retstr->m[12];
  *&v68.m[8] = *&retstr->m[8];
  *&v68.m[12] = v65;
  v66 = &v68;
  v69 = vld4q_f32(&v66->m00);
  *retstr = v69;
  return result;
}

GLKMatrix3 *__cdecl GLKMatrixStackGetMatrix3Inverse(GLKMatrix3 *__return_ptr retstr, GLKMatrixStackRef stack)
{
  v4 = *(stack + 2);
  v5 = v4;
  if (*v4 >= 2)
  {
    v6 = *v4 - 1;
    v5 = *(stack + 2);
    do
    {
      v5 = *(v5 + 32);
      --v6;
    }

    while (v6);
  }

  v7 = *(v4 + 4);
  v8 = *(v4 + 8);
  v9 = (*(v5 + 24) + v8 * v7);
  result = *(v9 + 16);
  if (result == 2)
  {
    result = _GLKMatrix4Classify(*(v5 + 24) + v8 * v7, v9 + 17);
    *(v9 + 16) = result;
  }

  if (result < 3)
  {
    if (result)
    {
      v18 = *v9;
      v19 = v9[1];
      v20 = v9[2];
      v21 = v9[4];
      v22 = v9[5];
      v23 = v9[6];
      v24 = v9[8];
      v25 = v9[9];
      v26 = v9[10];
      v27 = (v19 * v23) - (v22 * v20);
      v28.f32[0] = (v25 * v20) - (v19 * v26);
      v29 = (v22 * v26) - (v23 * v25);
      v30 = ((v21 * v28.f32[0]) + (v24 * v27)) + (*v9 * v29);
      if (v30 != 0.0)
      {
        v31 = 1.0 / v30;
        *&v32 = (v24 * v23) - (v21 * v26);
        v33 = (v21 * v25) - (v24 * v22);
        *&v34 = (v18 * v26) - (v24 * v20);
        v35 = (v24 * v19) - (v18 * v25);
        v36 = (v21 * v20) - (v18 * v23);
        v37 = (v18 * v22) - (v21 * v19);
        m00 = v29 * v31;
        m20 = v33 * v31;
        v28.f32[1] = v27;
        v28.i64[1] = __PAIR64__(v34, v32);
        m21 = v35 * v31;
        v17 = vmulq_n_f32(v28, v31);
        m12 = v36 * v31;
        *&v2 = v37 * v31;
        goto LABEL_14;
      }

      m00 = 1.0;
      m12 = 0.0;
      m20 = 0.0;
      m21 = 0.0;
      LODWORD(v2) = 1065353216;
      v41 = 0x3F80000000000000;
      v17.i64[0] = 0;
    }

    else
    {
      v38 = *v9;
      v39 = *(v9 + 1);
      v40 = *(v9 + 3);
      *&v42.m[8] = *(v9 + 2);
      *&v42.m[12] = v40;
      *&v42.m00 = v38;
      *&v42.m[4] = v39;
      result = GLKMatrix4Invert(&v43, &v42, 0);
      m00 = v43.m00;
      v17.i64[0] = *&v43.m[1];
      v41 = *&v43.m[4];
      m12 = v43.m12;
      m21 = v43.m21;
      m20 = v43.m20;
      *&v2 = v43.m22;
    }

    v17.i64[1] = v41;
    goto LABEL_14;
  }

  *&v2 = v9[17];
  m00 = *&v2 * *v9;
  m20 = *&v2 * v9[2];
  v13.f32[0] = v9[4];
  m21 = *&v2 * v9[6];
  v13.f32[1] = v9[8];
  v13.i32[2] = v2;
  m12 = *&v2 * v9[9];
  v16 = v2;
  v16.i32[1] = v9[1];
  *&v2 = *&v2 * v9[10];
  v13.f32[3] = v9[5];
  v17 = vmulq_f32(vzip1q_s32(v16, vdupq_lane_s32(*v16.i8, 0)), v13);
LABEL_14:
  retstr->m00 = m00;
  *&retstr->m[1] = v17;
  retstr->m12 = m12;
  retstr->m20 = m20;
  retstr->m21 = m21;
  LODWORD(retstr->m22) = v2;
  return result;
}

GLKMatrix3 *__cdecl GLKMatrixStackGetMatrix3InverseTranspose(GLKMatrix3 *__return_ptr retstr, GLKMatrixStackRef stack)
{
  v3 = *(stack + 2);
  v4 = v3;
  if (*v3 >= 2)
  {
    v5 = *v3 - 1;
    v4 = *(stack + 2);
    do
    {
      v4 = *(v4 + 32);
      --v5;
    }

    while (v5);
  }

  v6 = *(v3 + 4);
  v7 = *(v3 + 8);
  v8 = (*(v4 + 24) + v7 * v6);
  result = *(v8 + 16);
  if (result == 2)
  {
    result = _GLKMatrix4Classify(*(v4 + 24) + v7 * v6, v8 + 17);
    *(v8 + 16) = result;
  }

  if (result < 3)
  {
    if (result)
    {
      v34 = *v8;
      v35 = v8[1];
      v36 = v8[2];
      v37 = v8[4];
      v38 = v8[5];
      v39 = v8[6];
      v40 = v8[8];
      v41 = v8[9];
      v42 = v8[10];
      v43 = (v35 * v39) - (v38 * v36);
      v44 = (v41 * v36) - (v35 * v42);
      v45 = (v38 * v42) - (v39 * v41);
      v46 = ((v37 * v44) + (v40 * v43)) + (*v8 * v45);
      if (v46 == 0.0)
      {
        v33 = *&GLKMatrix4Identity.m00;
        v32 = *&GLKMatrix4Identity.m[4];
        v31 = *&GLKMatrix4Identity.m[8];
        _Q0 = *&GLKMatrix4Identity.m[12];
      }

      else
      {
        v47 = 1.0 / v46;
        v48 = (v40 * v39) - (v37 * v42);
        v49 = (v37 * v41) - (v40 * v38);
        v50 = (v34 * v42) - (v40 * v36);
        v51 = (v40 * v35) - (v34 * v41);
        v52 = (v37 * v36) - (v34 * v39);
        v53 = (v34 * v38) - (v37 * v35);
        *&v54 = v45 * v47;
        *&v55 = v48 * v47;
        *&v56 = v49 * v47;
        *&v57 = v44 * v47;
        *&v58 = v50 * v47;
        *&v59 = v51 * v47;
        *&v60 = v43 * v47;
        *&v61 = v52 * v47;
        *&v62 = v53 * v47;
        v63 = v8[12];
        v64 = v8[13];
        v65 = v8[14];
        *&v66 = (-(v64 * (v48 * v47)) - (*&v54 * v63)) - ((v49 * v47) * v65);
        *&v67 = (-(v64 * *&v58) - (*&v57 * v63)) - (*&v59 * v65);
        v68 = -(v64 * *&v61) - (*&v60 * v63);
        __asm { FMOV            V0.4S, #1.0 }

        *&_Q0 = __PAIR64__(v67, v66);
        *(&_Q0 + 2) = v68 - (*&v62 * v65);
        *&v31 = __PAIR64__(v59, v56);
        *(&v31 + 1) = v62;
        *&v32 = __PAIR64__(v58, v55);
        *(&v32 + 1) = v61;
        *&v33 = __PAIR64__(v57, v54);
        *(&v33 + 1) = v60;
      }
    }

    else
    {
      v69 = *v8;
      v70 = *(v8 + 1);
      v71 = *(v8 + 3);
      *&v73.m[8] = *(v8 + 2);
      *&v73.m[12] = v71;
      *&v73.m00 = v69;
      *&v73.m[4] = v70;
      result = GLKMatrix4Invert(&v74, &v73, 0);
      v33 = *&v74.m00;
      v32 = *&v74.m[4];
      v31 = *&v74.m[8];
      _Q0 = *&v74.m[12];
    }
  }

  else
  {
    v10 = v8[17];
    *&v11 = v10 * *v8;
    *&v12 = v10 * v8[1];
    *&v13 = v10 * v8[2];
    *&v14 = v10 * v8[4];
    *&v15 = v10 * v8[5];
    *&v16 = v10 * v8[6];
    *&v17 = v10 * v8[8];
    *&v18 = v10 * v8[9];
    *&v19 = v10 * v8[10];
    v20 = v8[12];
    v21 = v8[13];
    v22 = v8[14];
    *&v23 = -(((*&v12 * v21) + (*&v11 * v20)) + (*&v13 * v22));
    *&v24 = -(((*&v15 * v21) + (*&v14 * v20)) + (*&v16 * v22));
    v25 = (*&v18 * v21) + (*&v17 * v20);
    __asm { FMOV            V0.4S, #1.0 }

    *&_Q0 = __PAIR64__(v24, v23);
    *(&_Q0 + 2) = -(v25 + (*&v19 * v22));
    *&v31 = __PAIR64__(v16, v13);
    *(&v31 + 1) = v19;
    *&v32 = __PAIR64__(v15, v12);
    *(&v32 + 1) = v18;
    *&v33 = __PAIR64__(v14, v11);
    *(&v33 + 1) = v17;
  }

  *&v74.m00 = v33;
  *&v74.m[4] = v32;
  *&v74.m[8] = v31;
  *&v74.m[12] = _Q0;
  v72 = &v74;
  v75 = vld4q_f32(&v72->m00);
  v75.val[0].i32[3] = v75.val[1].i32[0];
  *&retstr->m00 = v75.val[0];
  *&retstr->m[4] = vextq_s8(vextq_s8(v75.val[1], v75.val[1], 0xCuLL), v75.val[2], 8uLL);
  LODWORD(retstr->m22) = v75.val[2].i32[2];
  return result;
}

void GLKMatrixStackMultiplyMatrix4(GLKMatrixStackRef stack, GLKMatrix4 *matrix)
{
  v2 = *(stack + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stack + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = (*(v3 + 24) + *(v2 + 8) * *(v2 + 4));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v5, COERCE_FLOAT(*&matrix->m[4])), v6, *&matrix->m[4], 1), v7, *&matrix->m[4], 2), v8, *&matrix->m[4], 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v5, COERCE_FLOAT(*&matrix->m[8])), v6, *&matrix->m[8], 1), v7, *&matrix->m[8], 2), v8, *&matrix->m[8], 3);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v5, COERCE_FLOAT(*&matrix->m[12])), v6, *&matrix->m[12], 1), v7, *&matrix->m[12], 2), v8, *&matrix->m[12], 3);
  *v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v5, COERCE_FLOAT(*&matrix->m00)), v6, *&matrix->m00, 1), v7, *&matrix->m00, 2), v8, *&matrix->m00, 3);
  v5[1] = v9;
  v5[2] = v10;
  v5[3] = v11;
  if (((LODWORD(matrix->m13) | LODWORD(matrix->m03) | LODWORD(matrix->m23)) & 0x7FFFFFFF) != 0 || LODWORD(matrix->m33) != 1065353216)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if (v5[4].i32[0] < v12)
  {
    v12 = v5[4].u32[0];
  }

  v5[4].i32[0] = v12;
  ++v5[4].i32[2];
}

void GLKMatrixStackMultiplyMatrixStack(GLKMatrixStackRef stackLeft, GLKMatrixStackRef stackRight)
{
  v2 = *(stackLeft + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stackLeft + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = *(v3 + 24);
  v6 = *(v2 + 4);
  v7 = *(v2 + 8);
  v8 = *(stackRight + 2);
  v9 = v8;
  if (*v8 >= 2)
  {
    v10 = *v8 - 1;
    v9 = *(stackRight + 2);
    do
    {
      v9 = *(v9 + 32);
      --v10;
    }

    while (v10);
  }

  v11 = (v5 + v7 * v6);
  v12 = (*(v9 + 24) + *(v8 + 8) * *(v8 + 4));
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v12[2].f32)), v13, v12[2], 1), v14, *v12[2].f32, 2), v15, *v12[2].f32, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v12[4].f32)), v13, v12[4], 1), v14, *v12[4].f32, 2), v15, *v12[4].f32, 3);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v12[6].f32)), v13, v12[6], 1), v14, *v12[6].f32, 2), v15, *v12[6].f32, 3);
  *v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v12->f32)), v13, *v12, 1), v14, *v12->f32, 2), v15, *v12->f32, 3);
  v11[1] = v16;
  v11[2] = v17;
  v11[3] = v18;
  v19 = v12[8].u32[0];
  if (v11[4].i32[0] < v19)
  {
    v19 = v11[4].u32[0];
  }

  v11[4].i32[0] = v19;
  ++v11[4].i32[2];
}

void GLKMatrixStackTranslate(GLKMatrixStackRef stack, float tx, float ty, float tz)
{
  v4 = *(stack + 2);
  v5 = v4;
  if (*v4 >= 2)
  {
    v6 = *v4 - 1;
    v5 = *(stack + 2);
    do
    {
      v5 = *(v5 + 32);
      --v6;
    }

    while (v6);
  }

  v7 = (*(v5 + 24) + *(v4 + 8) * *(v4 + 4));
  v7[3] = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7[1], ty), *v7, tx), v7[2], tz), v7[3]);
  v8 = v7[4].u32[0];
  if (v8 >= 4)
  {
    v8 = 4;
  }

  v7[4].i32[0] = v8;
  ++v7[4].i32[2];
}

void GLKMatrixStackTranslateWithVector3(GLKMatrixStackRef stack, GLKVector3 translationVector)
{
  v5 = *(stack + 2);
  v6 = v5;
  if (*v5 >= 2)
  {
    v7 = *v5 - 1;
    v6 = *(stack + 2);
    do
    {
      v6 = *(v6 + 32);
      --v7;
    }

    while (v7);
  }

  v8 = (*(v6 + 24) + *(v5 + 8) * *(v5 + 4));
  v8[3] = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8[1], v3), *v8, v2), v8[2], v4), v8[3]);
  v9 = v8[4].u32[0];
  if (v9 >= 4)
  {
    v9 = 4;
  }

  v8[4].i32[0] = v9;
  ++v8[4].i32[2];
}

void GLKMatrixStackTranslateWithVector4(GLKMatrixStackRef stack, GLKVector4 translationVector)
{
  v5 = *(stack + 2);
  v6 = v5;
  if (*v5 >= 2)
  {
    v7 = *v5 - 1;
    v6 = *(stack + 2);
    do
    {
      v6 = *(v6 + 32);
      --v7;
    }

    while (v7);
  }

  v8 = (*(v6 + 24) + *(v5 + 8) * *(v5 + 4));
  v8[3] = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8[1], v3), *v8, v2), v8[2], v4), v8[3]);
  v9 = v8[4].u32[0];
  if (v9 >= 4)
  {
    v9 = 4;
  }

  v8[4].i32[0] = v9;
  ++v8[4].i32[2];
}

void GLKMatrixStackScale(GLKMatrixStackRef stack, float sx, float sy, float sz)
{
  v4 = *(stack + 2);
  v5 = v4;
  if (*v4 >= 2)
  {
    v6 = *v4 - 1;
    v5 = *(stack + 2);
    do
    {
      v5 = *(v5 + 32);
      --v6;
    }

    while (v6);
  }

  v7 = (*(v5 + 24) + *(v4 + 8) * *(v4 + 4));
  v8 = vmulq_n_f32(v7[1], sy);
  v9 = vmulq_n_f32(v7[2], sz);
  *v7 = vmulq_n_f32(*v7, sx);
  v7[1] = v8;
  v7[2] = v9;
  v10 = SLODWORD(sx) == SLODWORD(sy);
  v11 = SLODWORD(sy) == SLODWORD(sz);
  v12 = 1.0 / sx;
  v13 = !v10 || !v11;
  if (v10 && v11)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    v12 = 0.0;
  }

  if (v7[4].i32[0] < v14)
  {
    v14 = v7[4].u32[0];
  }

  v7[4].i32[0] = v14;
  v7[4].f32[1] = (v12 * v12) * v7[4].f32[1];
  ++v7[4].i32[2];
}

void GLKMatrixStackRotate(GLKMatrixStackRef stack, float radians, float x, float y, float z)
{
  v5 = *(stack + 2);
  v6 = v5;
  if (*v5 >= 2)
  {
    v7 = *v5 - 1;
    v6 = *(stack + 2);
    do
    {
      v6 = *(v6 + 32);
      --v7;
    }

    while (v7);
  }

  v8 = (*(v6 + 24) + *(v5 + 8) * *(v5 + 4));
  v17 = *v8;
  v18 = v8[1];
  v19 = v8[2];
  v20 = v8[3];
  v9 = 1.0 / sqrtf(((y * y) + (x * x)) + (z * z));
  v10 = v9 * x;
  v11 = v9 * y;
  v12 = v9 * z;
  v13 = __sincosf_stret(radians);
  v14 = (1.0 - v13.__cosval) * v10;
  v15 = (1.0 - v13.__cosval) * v11;
  *v8 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v17, v13.__cosval + (v14 * v10)), v18, (v13.__sinval * v12) + (v14 * v11)), v19, -((v13.__sinval * v11) - (v14 * v12))), 0, v20);
  v8[1] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v17, -((v13.__sinval * v12) - (v14 * v11))), v18, v13.__cosval + (v15 * v11)), v19, (v13.__sinval * v10) + (v15 * v12)), 0, v20);
  v8[2] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v17, (v13.__sinval * v11) + (v14 * v12)), v18, -((v13.__sinval * v10) - (v15 * v12))), v19, v13.__cosval + (((1.0 - v13.__cosval) * v12) * v12)), 0, v20);
  v8[3] = vaddq_f32(v20, vmlaq_f32(vmlaq_f32(vmulq_f32(v17, 0), 0, v18), 0, v19));
  v16 = v8[4].u32[0];
  if (v16 >= 4)
  {
    v16 = 4;
  }

  v8[4].i32[0] = v16;
  ++v8[4].i32[2];
}

void GLKMatrixStackRotateX(GLKMatrixStackRef stack, float radians)
{
  v2 = *(stack + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stack + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = (*(v3 + 24) + *(v2 + 8) * *(v2 + 4));
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = v5[3];
  v7 = __sincosf_stret(radians);
  v6.f32[0] = v7.__sinval;
  v8 = vmulq_f32(v10, 0);
  *v5 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v10, 0, v11), 0, v12), 0, v13);
  v5[1] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(v8, v11, v7.__cosval), v12, v7.__sinval), 0, v13);
  v5[2] = vmlaq_f32(vmlaq_n_f32(vmlsq_lane_f32(v8, v11, v6, 0), v12, v7.__cosval), 0, v13);
  v5[3] = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(v8, 0, v11), 0, v12));
  v9 = v5[4].u32[0];
  if (v9 >= 4)
  {
    v9 = 4;
  }

  v5[4].i32[0] = v9;
  ++v5[4].i32[2];
}

void GLKMatrixStackRotateY(GLKMatrixStackRef stack, float radians)
{
  v2 = *(stack + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stack + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = (*(v3 + 24) + *(v2 + 8) * *(v2 + 4));
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = v5[3];
  v7 = __sincosf_stret(radians);
  v6.f32[0] = v7.__sinval;
  v8 = vmulq_f32(v10, 0);
  *v5 = vmlaq_f32(vmlsq_lane_f32(vmlaq_f32(vmulq_n_f32(v10, v7.__cosval), 0, v11), v12, v6, 0), 0, v13);
  v5[1] = vmlaq_f32(vmlaq_f32(vaddq_f32(v11, v8), 0, v12), 0, v13);
  v5[2] = vmlaq_f32(vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(v10, v7.__sinval), 0, v11), v12, v7.__cosval), 0, v13);
  v5[3] = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(v8, 0, v11), 0, v12));
  v9 = v5[4].u32[0];
  if (v9 >= 4)
  {
    v9 = 4;
  }

  v5[4].i32[0] = v9;
  ++v5[4].i32[2];
}

void GLKMatrixStackRotateZ(GLKMatrixStackRef stack, float radians)
{
  v2 = *(stack + 2);
  v3 = v2;
  if (*v2 >= 2)
  {
    v4 = *v2 - 1;
    v3 = *(stack + 2);
    do
    {
      v3 = *(v3 + 32);
      --v4;
    }

    while (v4);
  }

  v5 = (*(v3 + 24) + *(v2 + 8) * *(v2 + 4));
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v6 = __sincosf_stret(radians);
  v7 = vmlaq_f32(vmulq_f32(v9, 0), 0, v10);
  *v5 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v9, v6.__cosval), v10, v6.__sinval), 0, v11), 0, v12);
  v5[1] = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v9, -v6.__sinval), v10, v6.__cosval), 0, v11), 0, v12);
  v5[2] = vmlaq_f32(vaddq_f32(v11, v7), 0, v12);
  v5[3] = vaddq_f32(v12, vmlaq_f32(v7, 0, v11));
  v8 = v5[4].u32[0];
  if (v8 >= 4)
  {
    v8 = 4;
  }

  v5[4].i32[0] = v8;
  ++v5[4].i32[2];
}

void _GLKMatrixDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      free(*(v1 + 24));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

CFStringRef _GLKMatrixFormatDescription(void *cf, const __CFDictionary *a2)
{
  if (!cf)
  {
    return 0;
  }

  v4 = cf[2];
  v5 = v4;
  if (*v4 >= 2)
  {
    v6 = *v4 - 1;
    v5 = cf[2];
    do
    {
      v5 = *(v5 + 32);
      --v6;
    }

    while (v6);
  }

  v7 = *(v5 + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = (v7 + *(v4 + 8) * *(v4 + 4));
  v9 = CFGetAllocator(cf);
  return CFStringCreateWithFormat(v9, a2, @"<GLKMatrixStack %p [%p]>\nstack size: %d\ncurrent matrix:\n%f %f %f %f\n%f %f %f %f\n%f %f %f %f\n%f %f %f %f", cf, v9, (*(cf[2] + 4) + (*cf[2] - 1) * *(cf[2] + 16) + 1), *v8, v8[1], v8[2], v8[3], v8[4], v8[5], v8[6], v8[7], v8[8], v8[9], v8[10], v8[11], v8[12], v8[13], v8[14], v8[15]);
}

uint64_t _GLKMatrix4Classify(uint64_t a1, float *a2)
{
  if (((*(a1 + 28) | *(a1 + 12) | *(a1 + 44)) & 0x7FFFFFFF) != 0 || *(a1 + 60) != 1065353216)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = ((v3 * v3) + (v2 * v2)) + (v4 * v4);
  v9 = v8 * 0.0078125;
  if (fabsf(((v3 * v6) + (*a1 * v5)) + (v4 * v7)) > (v8 * 0.0078125))
  {
    return 1;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  v12 = *(a1 + 40);
  v13 = fabsf(((v6 * v11) + (v5 * v10)) + (v7 * v12));
  v14 = fabsf(((v3 * v11) + (v2 * v10)) + (v4 * v12)) <= v9 && v13 <= v9;
  if (!v14 || vabds_f32(v8, ((v6 * v6) + (v5 * v5)) + (v7 * v7)) > v9 || vabds_f32(v8, ((v11 * v11) + (v10 * v10)) + (v12 * v12)) > v9)
  {
    return 1;
  }

  *a2 = 1.0 / v8;
  if (fabsf(v8 + -1.0) <= v9)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t _GLKTextureErrorWithCodeAndErrorString(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a2 forKey:@"GLKTextureLoaderErrorKey"];
  v4 = MEMORY[0x277CCA9B8];

  return [v4 errorWithDomain:@"GLKTextureLoaderErrorDomain" code:a1 userInfo:v3];
}

GLKMatrix3 *__cdecl GLKMatrix3Invert(GLKMatrix3 *__return_ptr retstr, GLKMatrix3 *matrix, BOOL *isInvertible)
{
  v3 = 0;
  v57 = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  memset(v56, 0, sizeof(v56));
  v55 = 0u;
  v54 = -1;
  *v56 = -1;
  *&v56[20] = -1;
  v5 = *&matrix->m[3];
  v6 = *&matrix->m[5];
  *v7.f32 = vzip1_s32(*&matrix->m00, v5);
  *v10.f32 = vzip2_s32(*&matrix->m00, v5);
  *v13.f32 = vzip1_s32(*&matrix->m[2], v6);
  *&v7.u32[2] = vdup_lane_s32(v6, 1);
  p_m21 = &matrix->m21;
  v9 = vld1_dup_f32(p_m21);
  *&v10.u32[2] = v9;
  p_m22 = &matrix->m22;
  v12 = vld1_dup_f32(p_m22);
  *&v13.u32[2] = v12;
  v14 = -1;
  v15 = xmmword_2389151C0;
  v16 = 50462976;
  __asm { FMOV            V18.4S, #1.0 }

  v22 = 0uLL;
  do
  {
    v23 = vbicq_s8(v7, v15);
    v24 = vextq_s8(v23, v23, 8uLL).u64[0];
    v25 = vcgt_u32(v24, *v23.i8);
    *v23.i8 = vmax_u32(*v23.i8, v24);
    v26 = vbsl_s8(v25, 0xF0E0D0C0B0A0908, 0x706050403020100);
    v27 = vdupq_lane_s32(vbsl_s8(vcgt_u32(vrev64_s32(*v23.i8), *v23.i8), vdup_lane_s32(v26, 1), v26), 0);
    v14 = vmin_u32(v14, vpmax_u32(*v23.i8, *v23.i8));
    v4 = vbslq_s8(*(&v54 + v3), v27, v4);
    v28 = vceqq_s32(v27, xmmword_238915130);
    v22 = vbslq_s8(v28, vdupq_n_s32(v16), v22);
    v16 += 67372036;
    v29 = vrecpeq_f32(v7);
    v30 = vmulq_f32(v29, vrecpsq_f32(v7, v29));
    v31 = vmulq_f32(vrecpsq_f32(v7, v30), v30);
    v32 = vbslq_s8(v28, v31, _Q18);
    v33 = vmulq_f32(v10, v32);
    v34 = vmulq_f32(v13, v32);
    v35 = vandq_s8(v31, v28);
    *v31.i8 = vqtbl1_s8(v33, *v27.i8);
    *v36.i8 = vqtbl1_s8(v34, *v27.i8);
    *v27.i8 = vqtbl1_s8(v35, *v27.i8);
    v31.i64[1] = v31.i64[0];
    v36.i64[1] = v36.i64[0];
    v27.i64[1] = v27.i64[0];
    v37 = vmulq_f32(vnegq_f32(v7), v32);
    v7 = vmlaq_f32(v33, vbicq_s8(v31, v28), v37);
    v10 = vmlaq_f32(v34, vbicq_s8(v36, v28), v37);
    v13 = vmlaq_f32(v35, vbicq_s8(v27, v28), v37);
    v15 = vorrq_s8(v15, v28);
    v3 += 16;
  }

  while (v3 != 48);
  if (v14.i32[0])
  {
    v38 = vextq_s8(v4, v4, 8uLL).u64[0];
    *v39.i8 = vqtbl1_s8(v7, *v4.i8);
    v39.u64[1] = vqtbl1_s8(v7, v38);
    *v40.i8 = vqtbl1_s8(v10, *v4.i8);
    v40.u64[1] = vqtbl1_s8(v10, v38);
    *v41.i8 = vqtbl1_s8(v13, *v4.i8);
    v41.u64[1] = vqtbl1_s8(v13, v38);
    v42 = vzip1q_s32(v39, v41);
    v43 = vzip1q_s32(v40, v40);
    v44 = vzip1q_s32(v42, v43);
    v45 = vzip2q_s32(v42, v43);
    v46 = vzip1q_s32(vzip2q_s32(v39, v41), vdupq_laneq_s32(v40, 2));
    v39.i64[0] = vextq_s8(v22, v22, 8uLL).u64[0];
    LODWORD(v47) = vqtbl1_s8(v44, *v39.i8).u32[0];
    v48 = vqtbl1_s8(v44, *v22.i8);
    v49 = vqtbl1_s8(v45, *v22.i8);
    LODWORD(v50) = vqtbl1_s8(v45, *v39.i8).u32[0];
    v51 = vqtbl1_s8(v46, *v22.i8);
    LODWORD(v52) = vqtbl1_s8(v46, *v39.i8).u32[0];
    if (isInvertible)
    {
      *isInvertible = 1;
    }

    *&retstr->m00 = v48;
    retstr->m02 = v47;
    *&retstr->m[3] = v49;
    retstr->m12 = v50;
    *&retstr->m[6] = v51;
    retstr->m22 = v52;
  }

  else
  {
    if (isInvertible)
    {
      *isInvertible = 0;
    }

    retstr->m22 = 1.0;
    *&retstr->m00 = *&GLKMatrix3Identity.m00;
    *&retstr->m[4] = *&GLKMatrix3Identity.m[4];
  }

  v53 = *MEMORY[0x277D85DE8];
  return matrix;
}

GLKMatrix3 *__cdecl GLKMatrix3InvertAndTranspose(GLKMatrix3 *__return_ptr retstr, GLKMatrix3 *matrix, BOOL *isInvertible)
{
  m22 = matrix->m22;
  v4 = *&matrix->m[4];
  v5 = vtrn2q_s32(vextq_s8(v4, *&matrix->m00, 4uLL), *&matrix->m00);
  v6 = vtrn2q_s32(vextq_s8(*&matrix->m00, v4, 4uLL), v4);
  *&matrixa.m[4] = vextq_s8(v6, v6, 8uLL);
  *&matrixa.m00 = vextq_s8(v5, v5, 8uLL);
  matrixa.m22 = m22;
  return GLKMatrix3Invert(retstr, &matrixa, isInvertible);
}

void sub_23890E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23890E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _GLKModelErrorWithCodeAndErrorString(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"GLKModelErrorKey";
  v5[0] = a2;
  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"GLKModelErrorDomain" code:a1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}