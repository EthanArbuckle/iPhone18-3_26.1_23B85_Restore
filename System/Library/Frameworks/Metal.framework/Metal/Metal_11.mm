uint64_t EqualColorAttachments(unint64_t a1, unsigned int *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if (a1)
  {
    LODWORD(v2) = *a1;
    if (a2)
    {
LABEL_4:
      v3 = *a2;
      goto LABEL_7;
    }
  }

  else
  {
    LODWORD(v2) = 0;
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v3 = 0;
LABEL_7:
  if (v2 <= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2)
  {
    v4 = (a1 + 4);
    v5 = a2 + 1;
    v6 = v2 - 1;
    while (1)
    {
      if (a1)
      {
        v7 = (v4 + *v4);
        if (a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = 0;
        if (a2)
        {
LABEL_14:
          v8 = (v5 + *v5);
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      v8 = 0;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_18:
      v9 = (v7 - *v7);
      v10 = *v9;
      if (v10 < 5)
      {
        LODWORD(v7) = 0;
LABEL_25:
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
        LODWORD(v16) = 0;
        LODWORD(v11) = 0;
LABEL_26:
        v12 = 15;
LABEL_27:
        v17 = 1;
LABEL_28:
        v18 = 1;
        goto LABEL_29;
      }

      v11 = v9[2];
      if (v9[2])
      {
        LODWORD(v11) = *(v7 + v11);
      }

      if (v10 < 7)
      {
        LODWORD(v7) = 0;
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
        LODWORD(v16) = 0;
        goto LABEL_26;
      }

      if (v9[3])
      {
        v12 = *(v7 + v9[3]);
      }

      else
      {
        v12 = 15;
      }

      if (v10 < 9)
      {
        LODWORD(v7) = 0;
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
        LODWORD(v16) = 0;
        goto LABEL_27;
      }

      v16 = v9[4];
      if (v9[4])
      {
        LODWORD(v16) = *(v7 + v16);
      }

      if (v10 < 0xB)
      {
        LODWORD(v7) = 0;
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
        goto LABEL_27;
      }

      v15 = v9[5];
      if (v9[5])
      {
        LODWORD(v15) = *(v7 + v15);
      }

      if (v10 < 0xD)
      {
        LODWORD(v7) = 0;
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        goto LABEL_27;
      }

      v14 = v9[6];
      if (v9[6])
      {
        LODWORD(v14) = *(v7 + v14);
      }

      if (v10 >= 0x15)
      {
        if (v9[10])
        {
          v18 = *(v7 + v9[10]);
        }

        else
        {
LABEL_109:
          v18 = 1;
        }

        if (v9[9])
        {
          v17 = *(v7 + v9[9]);
        }

        else
        {
          v17 = 1;
        }

        goto LABEL_120;
      }

      if (v10 >= 0x13)
      {
        goto LABEL_109;
      }

      v17 = 1;
      if (v10 < 0xF)
      {
        LODWORD(v7) = 0;
        LODWORD(v13) = 0;
        goto LABEL_28;
      }

      v18 = 1;
LABEL_120:
      v13 = v9[7];
      if (v9[7])
      {
        LODWORD(v13) = *(v7 + v13);
      }

      if (v10 >= 0x11 && (v40 = v9[8]) != 0)
      {
        LODWORD(v7) = *(v7 + v40);
      }

      else
      {
        LODWORD(v7) = 0;
      }

LABEL_29:
      if (!v8)
      {
        goto LABEL_37;
      }

      v19 = (v8 - *v8);
      v20 = *v19;
      if (v20 < 5)
      {
        LODWORD(v8) = 0;
LABEL_37:
        LODWORD(v23) = 0;
        LODWORD(v24) = 0;
        LODWORD(v25) = 0;
        LODWORD(v26) = 0;
        LODWORD(v21) = 0;
LABEL_38:
        v22 = 15;
LABEL_39:
        v27 = 1;
        goto LABEL_40;
      }

      v21 = v19[2];
      if (v19[2])
      {
        LODWORD(v21) = *(v8 + v21);
      }

      if (v20 < 7)
      {
        LODWORD(v8) = 0;
        LODWORD(v23) = 0;
        LODWORD(v24) = 0;
        LODWORD(v25) = 0;
        LODWORD(v26) = 0;
        goto LABEL_38;
      }

      if (v19[3])
      {
        v22 = *(v8 + v19[3]);
      }

      else
      {
        v22 = 15;
      }

      if (v20 < 9)
      {
        LODWORD(v8) = 0;
        LODWORD(v23) = 0;
        LODWORD(v24) = 0;
        LODWORD(v25) = 0;
        LODWORD(v26) = 0;
        goto LABEL_39;
      }

      v26 = v19[4];
      if (v19[4])
      {
        LODWORD(v26) = *(v8 + v26);
      }

      if (v20 < 0xB)
      {
        LODWORD(v8) = 0;
        LODWORD(v23) = 0;
        LODWORD(v24) = 0;
        LODWORD(v25) = 0;
        goto LABEL_39;
      }

      v25 = v19[5];
      if (v19[5])
      {
        LODWORD(v25) = *(v8 + v25);
      }

      if (v20 < 0xD)
      {
        LODWORD(v8) = 0;
        LODWORD(v23) = 0;
        LODWORD(v24) = 0;
        goto LABEL_39;
      }

      v24 = v19[6];
      if (v19[6])
      {
        LODWORD(v24) = *(v8 + v24);
      }

      if (v20 >= 0x15)
      {
        if (v19[10])
        {
          v28 = *(v8 + v19[10]);
        }

        else
        {
LABEL_113:
          v28 = 1;
        }

        if (v19[9])
        {
          v27 = *(v8 + v19[9]);
        }

        else
        {
          v27 = 1;
        }

LABEL_128:
        v23 = v19[7];
        if (v19[7])
        {
          LODWORD(v23) = *(v8 + v23);
        }

        if (v20 >= 0x11 && (v41 = v19[8]) != 0)
        {
          LODWORD(v8) = *(v8 + v41);
        }

        else
        {
          LODWORD(v8) = 0;
        }

        goto LABEL_41;
      }

      if (v20 >= 0x13)
      {
        goto LABEL_113;
      }

      v27 = 1;
      if (v20 >= 0xF)
      {
        v28 = 1;
        goto LABEL_128;
      }

      LODWORD(v8) = 0;
      LODWORD(v23) = 0;
LABEL_40:
      v28 = 1;
LABEL_41:
      v37 = v11 == v21 && v12 == v22 && v16 == v26 && v15 == v25 && v14 == v24 && v18 == v28 && v17 == v27 && v13 == v23 && v7 == v8;
      v39 = v6-- != 0;
      if (v37)
      {
        ++v4;
        ++v5;
        if (v39)
        {
          continue;
        }
      }

      return v37;
    }
  }

  return 1;
}

uint64_t MTLMetalScriptSerializer::EqualVertexShaderDescriptor(int *a1, int *a2)
{
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 >= 5 && v4[2])
  {
    v6 = *(a1 + v4[2]);
  }

  else
  {
    v6 = 1;
  }

  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = *(a2 + v7[2]);
  }

  else
  {
    v9 = 1;
  }

  if (v6 != v9)
  {
    return 0;
  }

  if (v5 < 0xB)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = v4[5];
    if (v4[5])
    {
      LODWORD(v10) = *(a1 + v10);
    }
  }

  if (v8 < 0xB)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = v7[5];
    if (v7[5])
    {
      LODWORD(v11) = *(a2 + v11);
    }
  }

  if (v10 != v11)
  {
    return 0;
  }

  v12 = v5 >= 0xD && v4[6] ? *(a1 + v4[6]) : 16;
  v13 = v8 >= 0xD && v7[6] ? *(a2 + v7[6]) : 16;
  if (v12 != v13)
  {
    return 0;
  }

  if (v5 < 0xF)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = v4[7];
    if (v4[7])
    {
      LOBYTE(v14) = *(a1 + v14) != 0;
    }
  }

  if (v8 >= 0xF && v7[7])
  {
    LOBYTE(v14) = v14 ^ (*(a2 + v7[7]) != 0);
  }

  if (v14)
  {
    return 0;
  }

  if (v5 < 0x11)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = v4[8];
    if (v4[8])
    {
      LODWORD(v15) = *(a1 + v15);
    }
  }

  if (v8 < 0x11)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v7[8];
    if (v7[8])
    {
      LODWORD(v16) = *(a2 + v16);
    }
  }

  if (v15 != v16)
  {
    return 0;
  }

  if (v5 < 0x13)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v4[9];
    if (v4[9])
    {
      LODWORD(v17) = *(a1 + v17);
    }
  }

  if (v8 < 0x13)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v7[9];
    if (v7[9])
    {
      LODWORD(v18) = *(a2 + v18);
    }
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (v5 < 0x15)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v4[10];
    if (v4[10])
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  if (v8 < 0x15)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = v7[10];
    if (v7[10])
    {
      LODWORD(v20) = *(a2 + v20);
    }
  }

  if (v19 != v20)
  {
    return 0;
  }

  if (v5 < 0x17)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v4[11];
    if (v4[11])
    {
      LODWORD(v21) = *(a1 + v21);
    }
  }

  if (v8 < 0x17)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v7[11];
    if (v7[11])
    {
      LODWORD(v22) = *(a2 + v22);
    }
  }

  if (v21 != v22)
  {
    return 0;
  }

  if (v5 < 0x19)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = v4[12];
    if (v4[12])
    {
      LODWORD(v23) = *(a1 + v23);
    }
  }

  if (v8 < 0x19)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v7[12];
    if (v7[12])
    {
      LODWORD(v24) = *(a2 + v24);
    }
  }

  if (v23 != v24)
  {
    return 0;
  }

  v25 = v5 >= 0x1B && v4[13] ? *(a1 + v4[13]) : 1;
  v26 = v8 >= 0x1B && v7[13] ? *(a2 + v7[13]) : 1;
  if (v25 != v26)
  {
    return 0;
  }

  if (v5 < 0x1D)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = v4[14];
    if (v4[14])
    {
      LODWORD(v27) = *(a1 + v27);
    }
  }

  if (v8 < 0x1D)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v7[14];
    if (v7[14])
    {
      LODWORD(v28) = *(a2 + v28);
    }
  }

  if (v27 != v28)
  {
    return 0;
  }

  if (v5 < 0x23)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v4[17];
    if (v4[17])
    {
      LOBYTE(v29) = *(a1 + v29) != 0;
    }
  }

  if (v8 >= 0x23 && v7[17])
  {
    LOBYTE(v29) = v29 ^ (*(a2 + v7[17]) != 0);
  }

  if (v29)
  {
    return 0;
  }

  v30 = v5 >= 0x27 && v4[19] ? *(a1 + v4[19]) : 255;
  v31 = v8 >= 0x27 && v7[19] ? *(a2 + v7[19]) : 255;
  if (v30 != v31)
  {
    return 0;
  }

  if (v5 < 0x29)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v32 = v4[20];
    if (v4[20])
    {
      LODWORD(v32) = *(a1 + v32);
    }
  }

  if (v8 < 0x29)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v33 = v7[20];
    if (v7[20])
    {
      LODWORD(v33) = *(a2 + v33);
    }
  }

  if (v32 != v33)
  {
    return 0;
  }

  v42 = (a2 - *a2);
  if (v5 >= 7 && v4[3])
  {
    v34 = (a1 + v4[3] + *(a1 + v4[3]));
  }

  else
  {
    v34 = 0;
  }

  v35 = v8 >= 7 && v42[3] ? (a2 + v42[3] + *(a2 + v42[3])) : 0;
  if (!EqualStageInputOutputDescriptor(v34, v35))
  {
    return 0;
  }

  v36 = v5 >= 0x1F && v4[15] ? a1 + v4[15] + *(a1 + v4[15]) : 0;
  v37 = v8 >= 0x1F && v42[15] ? (a2 + v42[15] + *(a2 + v42[15])) : 0;
  if (!EqualPipelineBuffers(v36, v37))
  {
    return 0;
  }

  if (v5 >= 0x2D && v4[22])
  {
    v39 = a1 + v4[22] + *(a1 + v4[22]);
  }

  else
  {
    v39 = 0;
  }

  if (v8 >= 0x2D && v42[22])
  {
    v41 = a2 + v42[22] + *(a2 + v42[22]);
  }

  else
  {
    v41 = 0;
  }

  return MTLMetalScriptSerializer::EqualLinkedFunctions(v39, v41, v38);
}

uint64_t MTLMetalScriptSerializer::EqualRenderDescriptor(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (v3 >= 9 && v2[4])
  {
    v4 = (a1 + v2[4] + *(a1 + v2[4]));
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - *a2);
  v6 = *v5;
  if (v6 >= 9 && v5[4])
  {
    v7 = (a2 + v5[4] + *(a2 + v5[4]));
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 0xB && (v8 = v2[5]) != 0)
  {
    v9 = (a1 + v8 + *(a1 + v8));
  }

  else
  {
    v9 = 0;
  }

  if (v6 >= 0xB && v5[5])
  {
    v10 = (a2 + v5[5] + *(a2 + v5[5]));
  }

  else
  {
    v10 = 0;
  }

  result = MTLMetalScriptSerializer::EqualFragmentDescriptor(v9, v10);
  if (result)
  {

    return MTLMetalScriptSerializer::EqualVertexShaderDescriptor(v4, v7);
  }

  return result;
}

uint64_t MTLMetalScriptSerializer::EqualMeshRenderDescriptor(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (v3 >= 0xB && v2[5])
  {
    v4 = (a1 + v2[5] + *(a1 + v2[5]));
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - *a2);
  v6 = *v5;
  if (v6 >= 0xB && v5[5])
  {
    v7 = (a2 + v5[5] + *(a2 + v5[5]));
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 0xD && v2[6])
  {
    v8 = (a1 + v2[6] + *(a1 + v2[6]));
  }

  else
  {
    v8 = 0;
  }

  if (v6 >= 0xD && v5[6])
  {
    v9 = (a2 + v5[6] + *(a2 + v5[6]));
  }

  else
  {
    v9 = 0;
  }

  if (v3 >= 0xF && (v10 = v2[7]) != 0)
  {
    v11 = (a1 + v10 + *(a1 + v10));
  }

  else
  {
    v11 = 0;
  }

  if (v6 >= 0xF && v5[7])
  {
    v12 = (a2 + v5[7] + *(a2 + v5[7]));
  }

  else
  {
    v12 = 0;
  }

  if (!MTLMetalScriptSerializer::EqualFragmentDescriptor(v11, v12))
  {
    return 0;
  }

  v13 = (v4 - *v4);
  v14 = *v13;
  if (v14 >= 0xD && v13[6])
  {
    v15 = *(v4 + v13[6]);
  }

  else
  {
    v15 = 1;
  }

  v16 = (v7 - *v7);
  v17 = *v16;
  if (v17 >= 0xD && v16[6])
  {
    v18 = *(v7 + v16[6]);
  }

  else
  {
    v18 = 1;
  }

  if (v15 != v18)
  {
    return 0;
  }

  if (v14 < 0xB)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13[5];
    if (v13[5])
    {
      v19 = *(v4 + v19);
    }
  }

  if (v17 < 0xB)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16[5];
    if (v16[5])
    {
      v20 = *(v7 + v20);
    }
  }

  if (v19 != v20)
  {
    return 0;
  }

  if (v14 < 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = v13[3];
    if (v13[3])
    {
      v21 = *(v4 + v21);
    }
  }

  if (v17 < 7)
  {
    v22 = 0;
  }

  else
  {
    v22 = v16[3];
    if (v16[3])
    {
      v22 = *(v7 + v22);
    }
  }

  if (v21 != v22)
  {
    return 0;
  }

  v23 = v14 >= 0xF && v13[7] ? *(v4 + v13[7]) : 1;
  v24 = v17 >= 0xF && v16[7] ? *(v7 + v16[7]) : 1;
  if (v23 != v24)
  {
    return 0;
  }

  if (v14 < 0x1B)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = v13[13];
    if (v13[13])
    {
      LOBYTE(v25) = *(v4 + v25) != 0;
    }
  }

  if (v17 >= 0x1B && v16[13])
  {
    LOBYTE(v25) = v25 ^ (*(v7 + v16[13]) != 0);
  }

  if (v25)
  {
    return 0;
  }

  if (v14 < 9)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13[4];
    if (v13[4])
    {
      v26 = *(v4 + v26);
    }
  }

  if (v17 < 9)
  {
    v27 = 0;
  }

  else
  {
    v27 = v16[4];
    if (v16[4])
    {
      v27 = *(v7 + v27);
    }
  }

  if (v26 != v27)
  {
    return 0;
  }

  if (v14 < 0x17)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v13[11];
    if (v13[11])
    {
      LOBYTE(v28) = *(v4 + v28) != 0;
    }
  }

  if (v17 >= 0x17 && v16[11])
  {
    LOBYTE(v28) = v28 ^ (*(v7 + v16[11]) != 0);
  }

  if (v28)
  {
    return 0;
  }

  if (v14 < 0x15)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = v13[10];
    if (v13[10])
    {
      LODWORD(v29) = *(v4 + v29);
    }
  }

  if (v17 < 0x15)
  {
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = v16[10];
    if (v16[10])
    {
      LODWORD(v30) = *(v7 + v30);
    }
  }

  if (v29 != v30)
  {
    return 0;
  }

  if (v14 < 0x19)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v31 = v13[12];
    if (v13[12])
    {
      LODWORD(v31) = *(v4 + v31);
    }
  }

  if (v17 < 0x19)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v32 = v16[12];
    if (v16[12])
    {
      LODWORD(v32) = *(v7 + v32);
    }
  }

  if (v31 != v32)
  {
    return 0;
  }

  if (v14 < 5)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = v13[2];
    if (v13[2])
    {
      LOBYTE(v33) = *(v4 + v33) != 0;
    }
  }

  if (v17 >= 5 && v16[2])
  {
    LOBYTE(v33) = v33 ^ (*(v7 + v16[2]) != 0);
  }

  if (v33)
  {
    return 0;
  }

  if (v14 < 0x11)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = v13[8];
    if (v13[8])
    {
      LODWORD(v34) = *(v4 + v34);
    }
  }

  if (v17 < 0x11)
  {
    LODWORD(v35) = 0;
  }

  else
  {
    v35 = v16[8];
    if (v16[8])
    {
      LODWORD(v35) = *(v7 + v35);
    }
  }

  if (v34 != v35)
  {
    return 0;
  }

  v36 = v14 >= 0x13 && v13[9] ? v4 + v13[9] + *(v4 + v13[9]) : 0;
  v37 = v17 >= 0x13 && v16[9] ? (v7 + v16[9] + *(v7 + v16[9])) : 0;
  if (!EqualPipelineBuffers(v36, v37))
  {
    return 0;
  }

  v39 = v14 >= 0x1D && v13[14] ? v4 + v13[14] + *(v4 + v13[14]) : 0;
  v40 = v17 >= 0x1D && v16[14] ? v7 + v16[14] + *(v7 + v16[14]) : 0;
  if (!MTLMetalScriptSerializer::EqualLinkedFunctions(v39, v40, v38))
  {
    return 0;
  }

  v41 = (v8 - *v8);
  v42 = *v41;
  if (v42 >= 0x1B && v41[13])
  {
    v43 = *(v8 + v41[13]);
  }

  else
  {
    v43 = 255;
  }

  v44 = (v9 - *v9);
  v45 = *v44;
  if (v45 >= 0x1B && v44[13])
  {
    v46 = *(v9 + v44[13]);
  }

  else
  {
    v46 = 255;
  }

  if (v43 != v46)
  {
    return 0;
  }

  v47 = v42 >= 0xB && v41[5] ? *(v8 + v41[5]) : 1;
  v48 = v45 >= 0xB && v44[5] ? *(v9 + v44[5]) : 1;
  if (v47 != v48)
  {
    return 0;
  }

  if (v42 < 7)
  {
    v49 = 0;
  }

  else
  {
    v49 = v41[3];
    if (v41[3])
    {
      v49 = *(v8 + v49);
    }
  }

  if (v45 < 7)
  {
    v50 = 0;
  }

  else
  {
    v50 = v44[3];
    if (v44[3])
    {
      v50 = *(v9 + v50);
    }
  }

  if (v49 != v50)
  {
    return 0;
  }

  v51 = v42 >= 0xF && v41[7] ? *(v8 + v41[7]) : 1;
  v52 = v45 >= 0xF && v44[7] ? *(v9 + v44[7]) : 1;
  if (v51 != v52)
  {
    return 0;
  }

  if (v42 < 0x1D)
  {
    LOBYTE(v53) = 0;
  }

  else
  {
    v53 = v41[14];
    if (v41[14])
    {
      LOBYTE(v53) = *(v8 + v53) != 0;
    }
  }

  if (v45 >= 0x1D && v44[14])
  {
    LOBYTE(v53) = v53 ^ (*(v9 + v44[14]) != 0);
  }

  if (v53)
  {
    return 0;
  }

  if (v42 < 9)
  {
    v54 = 0;
  }

  else
  {
    v54 = v41[4];
    if (v41[4])
    {
      v54 = *(v8 + v54);
    }
  }

  if (v45 < 9)
  {
    v55 = 0;
  }

  else
  {
    v55 = v44[4];
    if (v44[4])
    {
      v55 = *(v9 + v55);
    }
  }

  if (v54 != v55)
  {
    return 0;
  }

  v56 = v42 < 0xD || !v41[6] || *(v8 + v41[6]) != 0;
  if (v45 >= 0xD && v44[6])
  {
    if ((v56 ^ (*(v9 + v44[6]) != 0)))
    {
      return 0;
    }
  }

  else if (!v56)
  {
    return 0;
  }

  if (v42 < 0x17)
  {
    LOBYTE(v57) = 0;
  }

  else
  {
    v57 = v41[11];
    if (v41[11])
    {
      LOBYTE(v57) = *(v8 + v57) != 0;
    }
  }

  if (v45 >= 0x17 && v44[11])
  {
    LOBYTE(v57) = v57 ^ (*(v9 + v44[11]) != 0);
  }

  if (v57)
  {
    return 0;
  }

  if (v42 < 0x15)
  {
    LODWORD(v58) = 0;
  }

  else
  {
    v58 = v41[10];
    if (v41[10])
    {
      LODWORD(v58) = *(v8 + v58);
    }
  }

  if (v45 < 0x15)
  {
    LODWORD(v59) = 0;
  }

  else
  {
    v59 = v44[10];
    if (v44[10])
    {
      LODWORD(v59) = *(v9 + v59);
    }
  }

  if (v58 != v59)
  {
    return 0;
  }

  if (v42 < 0x19)
  {
    LODWORD(v60) = 0;
  }

  else
  {
    v60 = v41[12];
    if (v41[12])
    {
      LODWORD(v60) = *(v8 + v60);
    }
  }

  if (v45 < 0x19)
  {
    LODWORD(v61) = 0;
  }

  else
  {
    v61 = v44[12];
    if (v44[12])
    {
      LODWORD(v61) = *(v9 + v61);
    }
  }

  if (v60 != v61)
  {
    return 0;
  }

  if (v42 < 5)
  {
    LOBYTE(v62) = 0;
  }

  else
  {
    v62 = v41[2];
    if (v41[2])
    {
      LOBYTE(v62) = *(v8 + v62) != 0;
    }
  }

  if (v45 >= 5 && v44[2])
  {
    LOBYTE(v62) = v62 ^ (*(v9 + v44[2]) != 0);
  }

  if (v62)
  {
    return 0;
  }

  if (v42 < 0x11)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    v63 = v41[8];
    if (v41[8])
    {
      LODWORD(v63) = *(v8 + v63);
    }
  }

  if (v45 < 0x11)
  {
    LODWORD(v64) = 0;
  }

  else
  {
    v64 = v44[8];
    if (v44[8])
    {
      LODWORD(v64) = *(v9 + v64);
    }
  }

  if (v63 != v64)
  {
    return 0;
  }

  v65 = v42 >= 0x13 && v41[9] ? v8 + v41[9] + *(v8 + v41[9]) : 0;
  v66 = v45 >= 0x13 && v44[9] ? (v9 + v44[9] + *(v9 + v44[9])) : 0;
  if (!EqualPipelineBuffers(v65, v66))
  {
    return 0;
  }

  if (v42 >= 0x1F && v41[15])
  {
    v68 = v8 + v41[15] + *(v8 + v41[15]);
  }

  else
  {
    v68 = 0;
  }

  if (v45 >= 0x1F && v44[15])
  {
    v70 = v9 + v44[15] + *(v9 + v44[15]);
  }

  else
  {
    v70 = 0;
  }

  return MTLMetalScriptSerializer::EqualLinkedFunctions(v68, v70, v67);
}

uint64_t MTLMetalScriptSerializer::EqualTileRenderDescriptor(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0)
  {
    v4 = (a1 + v3 + *(a1 + v3));
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - *a2);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = (a2 + v6 + *(a2 + v6));
  }

  else
  {
    v7 = 0;
  }

  v8 = (v4 - *v4);
  v9 = *v8;
  if (v9 >= 9 && v8[4])
  {
    v10 = *(v4 + v8[4]);
  }

  else
  {
    v10 = 1;
  }

  v11 = (v7 - *v7);
  v12 = *v11;
  if (v12 >= 9 && v11[4])
  {
    v13 = *(v7 + v11[4]);
  }

  else
  {
    v13 = 1;
  }

  if (v10 != v13)
  {
    return 0;
  }

  if (v9 < 0x13)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = v8[9];
    if (v8[9])
    {
      LOBYTE(v14) = *(v4 + v14) != 0;
    }
  }

  if (v12 >= 0x13 && v11[9])
  {
    LOBYTE(v14) = v14 ^ (*(v7 + v11[9]) != 0);
  }

  if (v14)
  {
    return 0;
  }

  v15 = v9 >= 0xB && v8[5] ? *(v4 + v8[5]) : 1;
  v16 = v12 >= 0xB && v11[5] ? *(v7 + v11[5]) : 1;
  if (v15 != v16)
  {
    return 0;
  }

  if (v9 < 0xD)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8[6];
    if (v8[6])
    {
      v17 = *(v4 + v17);
    }
  }

  if (v12 < 0xD)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11[6];
    if (v11[6])
    {
      v18 = *(v7 + v18);
    }
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (v9 < 7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v8[3];
    if (v8[3])
    {
      v19 = *(v4 + v19);
    }
  }

  if (v12 < 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = v11[3];
    if (v11[3])
    {
      v20 = *(v7 + v20);
    }
  }

  if (v19 != v20)
  {
    return 0;
  }

  if (v9 < 5)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v8[2];
    if (v8[2])
    {
      LOBYTE(v21) = *(v4 + v21) != 0;
    }
  }

  if (v12 >= 5 && v11[2])
  {
    LOBYTE(v21) = v21 ^ (*(v7 + v11[2]) != 0);
  }

  if (v21)
  {
    return 0;
  }

  if (v9 < 0x15)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v8[10];
    if (v8[10])
    {
      LODWORD(v22) = *(v4 + v22);
    }
  }

  if (v12 < 0x15)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = v11[10];
    if (v11[10])
    {
      LODWORD(v23) = *(v7 + v23);
    }
  }

  if (v22 != v23)
  {
    return 0;
  }

  v24 = v9 >= 0xF && v8[7] ? v4 + v8[7] + *(v4 + v8[7]) : 0;
  v25 = v12 >= 0xF && v11[7] ? (v7 + v11[7] + *(v7 + v11[7])) : 0;
  if (!EqualTileAttachments(v24, v25))
  {
    return 0;
  }

  v26 = v9 >= 0x11 && v8[8] ? v4 + v8[8] + *(v4 + v8[8]) : 0;
  v27 = v12 >= 0x11 && v11[8] ? (v7 + v11[8] + *(v7 + v11[8])) : 0;
  if (!EqualPipelineBuffers(v26, v27))
  {
    return 0;
  }

  if (v9 >= 0x17 && v8[11])
  {
    v29 = v4 + v8[11] + *(v4 + v8[11]);
  }

  else
  {
    v29 = 0;
  }

  if (v12 >= 0x17 && v11[11])
  {
    v31 = v7 + v11[11] + *(v7 + v11[11]);
  }

  else
  {
    v31 = 0;
  }

  return MTLMetalScriptSerializer::EqualLinkedFunctions(v29, v31, v28);
}

uint64_t EqualTileAttachments(unint64_t a1, unsigned int *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if (a1)
  {
    LODWORD(v2) = *a1;
    if (a2)
    {
LABEL_4:
      v3 = *a2;
      goto LABEL_7;
    }
  }

  else
  {
    LODWORD(v2) = 0;
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v3 = 0;
LABEL_7:
  if (v2 <= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2)
  {
    v4 = (a1 + 4);
    v5 = a2 + 1;
    v6 = v2 - 1;
    while (1)
    {
      if (a1)
      {
        v7 = (v4 + *v4);
        if (a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = 0;
        if (a2)
        {
LABEL_14:
          v8 = (v5 + *v5);
          if (v7)
          {
            goto LABEL_18;
          }

          goto LABEL_22;
        }
      }

      v8 = 0;
      if (v7)
      {
LABEL_18:
        v9 = (v7 - *v7);
        if (*v9 >= 5u && (v10 = v9[2]) != 0)
        {
          LODWORD(v7) = *(v7 + v10);
        }

        else
        {
          LODWORD(v7) = 0;
        }
      }

LABEL_22:
      if (v8)
      {
        v11 = (v8 - *v8);
        if (*v11 >= 5u && (v12 = v11[2]) != 0)
        {
          LODWORD(v8) = *(v8 + v12);
        }

        else
        {
          LODWORD(v8) = 0;
        }
      }

      v14 = v6-- != 0;
      v15 = v7 == v8;
      v16 = v7 == v8;
      if (v15)
      {
        ++v4;
        ++v5;
        if (v14)
        {
          continue;
        }
      }

      return v16;
    }
  }

  return 1;
}

uint64_t MTLMetalScriptSerializer::addVertexDescriptor(MTLMetalScriptSerializer *this, flatbuffers::FlatBufferBuilder *a2, MTLVertexDescriptor *a3, BOOL *a4)
{
  LOBYTE(a3->super.isa) = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  for (i = 0; i != 248; i += 8)
  {
    v10 = *(*(a2 + 1) + 8 + i);
    if (!v10)
    {
      ++v8;
LABEL_13:
      v13 = v7;
      goto LABEL_14;
    }

    if (v10[1])
    {
      v11 = 0;
    }

    else
    {
      v11 = v10[3] == 1;
    }

    v12 = v11 && v10[2] == 1;
    v13 = ++v8;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    v7 = v13;
  }

  v14 = 0;
  v15 = 0;
  for (j = 0; j != 248; j += 8)
  {
    v17 = *(*(a2 + 2) + 8 + j);
    if (v17)
    {
      v18 = ++v15;
      if (v17[2] | v17[1] | v17[3])
      {
        goto LABEL_21;
      }
    }

    else
    {
      ++v15;
    }

    v18 = v14;
LABEL_21:
    v14 = v18;
  }

  if (!(v13 | v18))
  {
    return 0;
  }

  if (!v13)
  {
    v41 = 0;
    if (v18)
    {
      goto LABEL_47;
    }

    goto LABEL_70;
  }

  __src = 0;
  v66 = 0;
  v67 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v13);
  for (k = 0; k != v13; ++k)
  {
    v21 = *(*(v5 + 1) + 8 + 8 * k);
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
    }

    else
    {
      v23 = 0;
      v22 = 1;
      v24 = 1;
    }

    LOBYTE(a3->super.isa) |= (v23 & 3) != 0;
    *(this + 70) = 1;
    v25 = *(this + 8);
    v26 = *(this + 12);
    v27 = *(this + 10);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, v24, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, v22, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 8, v23, 0);
    v28 = flatbuffers::FlatBufferBuilder::EndTable(this, v25 - v26 + v27);
    v5 = a2;
    v29 = v66;
    if (v66 >= v67)
    {
      v31 = __src;
      v32 = v66 - __src;
      v33 = (v66 - __src) >> 2;
      v34 = v33 + 1;
      if ((v33 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v35 = v67 - __src;
      if ((v67 - __src) >> 1 > v34)
      {
        v34 = v35 >> 1;
      }

      v36 = v35 >= 0x7FFFFFFFFFFFFFFCLL;
      v37 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v36)
      {
        v37 = v34;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v37);
      }

      *(4 * v33) = v28;
      v30 = (4 * v33 + 4);
      memcpy(0, v31, v32);
      v38 = __src;
      __src = 0;
      v66 = v30;
      v67 = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v66 = v28;
      v30 = v29 + 4;
    }

    v66 = v30;
  }

  if (v30 == __src)
  {
    v39 = &flatbuffers::data<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v39 = __src;
  }

  v40 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v39, (v30 - __src) >> 2);
  if (__src)
  {
    v66 = __src;
    operator delete(__src);
  }

  v41 = v40;
  if (!v18)
  {
LABEL_70:
    v60 = 0;
    goto LABEL_71;
  }

LABEL_47:
  v63 = v41;
  __src = 0;
  v66 = 0;
  v67 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v18);
  for (m = 0; m != v18; ++m)
  {
    v43 = *(*(v5 + 2) + 8 + 8 * m);
    if (v43)
    {
      v44 = *(v43 + 16);
      v45 = *(v43 + 24);
      LOBYTE(v43) = *(v43 + 8);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    *(this + 70) = 1;
    v46 = *(this + 8);
    v47 = *(this + 12);
    v48 = *(this + 10);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, v43, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, v44, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 8, v45, 0);
    v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v46 - v47 + v48);
    v5 = a2;
    v50 = v66;
    if (v66 >= v67)
    {
      v52 = __src;
      v53 = v66 - __src;
      v54 = (v66 - __src) >> 2;
      v55 = v54 + 1;
      if ((v54 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v56 = v67 - __src;
      if ((v67 - __src) >> 1 > v55)
      {
        v55 = v56 >> 1;
      }

      v36 = v56 >= 0x7FFFFFFFFFFFFFFCLL;
      v57 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v36)
      {
        v57 = v55;
      }

      if (v57)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v57);
      }

      *(4 * v54) = v49;
      v51 = (4 * v54 + 4);
      memcpy(0, v52, v53);
      v58 = __src;
      __src = 0;
      v66 = v51;
      v67 = 0;
      if (v58)
      {
        operator delete(v58);
      }
    }

    else
    {
      *v66 = v49;
      v51 = v50 + 4;
    }

    v66 = v51;
  }

  if (v51 == __src)
  {
    v59 = &flatbuffers::data<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>> const&)::t;
  }

  else
  {
    v59 = __src;
  }

  v60 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v59, (v51 - __src) >> 2);
  if (__src)
  {
    v66 = __src;
    operator delete(__src);
  }

  v41 = v63;
LABEL_71:
  *(this + 70) = 1;
  v61 = *(this + 10);
  v62 = *(this + 8) - *(this + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v60);
  return flatbuffers::FlatBufferBuilder::EndTable(this, v62 + v61);
}

void sub_185C7E1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::addColorAttachmentsDescriptor(MTLMetalScriptSerializer *this, flatbuffers::FlatBufferBuilder *a2, MTLRenderPipelineColorAttachmentDescriptorArray *a3, unsigned int *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  for (i = 0; i != 64; i += 8)
  {
    v10 = *(a2 + i + 8);
    if (!v10)
    {
      ++v8;
LABEL_7:
      v11 = v7;
      goto LABEL_8;
    }

    v11 = ++v8;
    if ((*(v10 + 8) & 0xFFFFFC1F0FFFFFFFLL) == 0xF00002100)
    {
      goto LABEL_7;
    }

LABEL_8:
    v7 = v11;
  }

  if (!v11)
  {
    return 0;
  }

  __src = 0;
  v39 = 0;
  v40 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v11);
  do
  {
    v12 = *(v5 + 1);
    if (v12)
    {
      v13 = (v12 + 8);
    }

    else
    {
      v13 = &_MTLDefaultRenderPipelineAttachmentPrivate;
    }

    *(this + 70) = 1;
    v14 = *(this + 8);
    v15 = *(this + 12);
    v16 = *(this + 10);
    v17 = *v13;
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this, 4, (*v13 >> 42), 0);
    v18 = v17 >> 42;
    if ((v17 >> 42) > 115)
    {
      switch(v18)
      {
        case 500:
        case 501:
        case 502:
        case 503:
        case 504:
        case 505:
        case 506:
        case 507:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 550:
        case 551:
        case 562:
          goto LABEL_31;
        case 508:
        case 509:
        case 510:
        case 528:
        case 529:
        case 530:
        case 546:
        case 547:
        case 548:
        case 567:
        case 568:
        case 569:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 600:
        case 601:
        case 602:
        case 628:
        case 629:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 7;
          v21 = (a3->super.isa & 0x1FFFFFFF) >= 7;
          goto LABEL_32;
        case 511:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 549:
        case 556:
        case 557:
        case 558:
        case 559:
        case 561:
        case 614:
          goto LABEL_36;
        case 552:
        case 553:
        case 554:
        case 555:
          isa = a3->super.isa;
          v22 = a3->super.isa & 0x60000000 | 2;
          v23 = (a3->super.isa & 0x1FFFFFFE) == 0;
          goto LABEL_54;
        case 560:
          isa = a3->super.isa;
          v22 = a3->super.isa & 0x60000000 | 4;
          v23 = (a3->super.isa & 0x1FFFFFFC) == 0;
          goto LABEL_54;
        case 563:
        case 564:
        case 565:
        case 566:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 603:
        case 604:
        case 605:
        case 606:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 6;
          v21 = (a3->super.isa & 0x1FFFFFFE) >= 6;
          goto LABEL_32;
        case 576:
        case 577:
        case 578:
        case 579:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 5;
          v21 = (a3->super.isa & 0x1FFFFFFF) >= 5;
          goto LABEL_32;
        case 607:
        case 608:
        case 609:
        case 610:
        case 611:
        case 612:
        case 613:
        case 615:
        case 616:
        case 617:
        case 618:
        case 619:
        case 620:
        case 621:
        case 622:
        case 623:
        case 624:
        case 625:
        case 626:
        case 627:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 9;
          v21 = (a3->super.isa & 0x1FFFFFFF) >= 9;
          goto LABEL_32;
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
        case 642:
        case 643:
        case 644:
        case 645:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 0xA;
          v21 = (a3->super.isa & 0x1FFFFFFE) >= 0xA;
          goto LABEL_32;
        case 646:
        case 647:
        case 648:
        case 649:
        case 650:
          isa = a3->super.isa;
          v20 = a3->super.isa & 0x60000000 | 0xB;
          v21 = (a3->super.isa & 0x1FFFFFFF) >= 0xB;
          goto LABEL_32;
        default:
          if (v18 == 116)
          {
            goto LABEL_52;
          }

          if (v18 != 302)
          {
            goto LABEL_36;
          }

          v24 = LODWORD(a3->super.isa) | 0x60000000;
          break;
      }

      goto LABEL_35;
    }

    if (v18 <= 0x2C)
    {
      if (((1 << v18) & 0x1F0080000800) != 0)
      {
        goto LABEL_22;
      }

      if (v18 == 1)
      {
LABEL_31:
        isa = a3->super.isa;
        v20 = a3->super.isa & 0x60000000 | 3;
        v21 = (a3->super.isa & 0x1FFFFFFF) >= 3;
LABEL_32:
        if (!v21)
        {
          isa = v20;
        }

        goto LABEL_34;
      }

      if (v18 == 26)
      {
        goto LABEL_52;
      }
    }

    if (v18 == 66)
    {
LABEL_52:
      isa = a3->super.isa;
      v22 = a3->super.isa & 0x60000000 | 8;
      v23 = (a3->super.isa & 0x1FFFFFF8) == 0;
LABEL_54:
      if (v23)
      {
        isa = v22;
      }

LABEL_34:
      v24 = isa | 0x80000000;
LABEL_35:
      LODWORD(a3->super.isa) = v24;
      goto LABEL_36;
    }

    if (v18 == 93)
    {
LABEL_22:
      isa = LODWORD(a3->super.isa) | ((a3->super.isa & 0x1FFFFFFF) == 0);
      goto LABEL_34;
    }

LABEL_36:
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 6, *(v13 + 1) & 0x1F, 15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 8, (*v13 & 3) != 0, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 10, *v13 >> 5, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 12, (*v13 >> 2) & 7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 14, (*v13 >> 23) & 0x1F, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 16, (*v13 >> 18) & 0x1F, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 18, (*v13 >> 13) & 0x1F, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 20, (*v13 >> 8) & 0x1F, 1);
    v25 = flatbuffers::FlatBufferBuilder::EndTable(this, v14 - v15 + v16);
    v26 = v39;
    if (v39 >= v40)
    {
      v28 = __src;
      v29 = v39 - __src;
      v30 = (v39 - __src) >> 2;
      v31 = v30 + 1;
      if ((v30 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v32 = v40 - __src;
      if ((v40 - __src) >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      v21 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
      v33 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v33 = v31;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v33);
      }

      *(4 * v30) = v25;
      v27 = (4 * v30 + 4);
      memcpy(0, v28, v29);
      v34 = __src;
      __src = 0;
      v39 = v27;
      v40 = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v39 = v25;
      v27 = v26 + 4;
    }

    v39 = v27;
    v5 = (v5 + 8);
    --v11;
  }

  while (v11);
  if (v27 == __src)
  {
    v36 = &flatbuffers::data<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v36 = __src;
  }

  v35 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v36, (v27 - __src) >> 2);
  if (__src)
  {
    v39 = __src;
    operator delete(__src);
  }

  return v35;
}

void sub_185C7E6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::addTileColorAttachmentsDescriptor(MTLMetalScriptSerializer *this, flatbuffers::FlatBufferBuilder *a2, MTLTileRenderPipelineColorAttachmentDescriptorArray *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v5 = 0;
  v6 = 0;
  for (i = 0; i != 64; i += 8)
  {
    v8 = *(a2 + i + 8);
    if (v8)
    {
      v9 = ++v6;
      if (*(v8 + 8))
      {
        goto LABEL_8;
      }
    }

    else
    {
      ++v6;
    }

    v9 = v5;
LABEL_8:
    v5 = v9;
  }

  if (!v9)
  {
    return 0;
  }

  __src = 0;
  v29 = 0;
  v30 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v9);
  do
  {
    v10 = *(v3 + 1);
    if (v10)
    {
      LODWORD(v10) = *(v10 + 8);
    }

    *(this + 70) = 1;
    v11 = *(this + 5);
    v12 = *(this + 6);
    v13 = *(this + 4);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this, 4, v10, 0);
    v14 = flatbuffers::FlatBufferBuilder::EndTable(this, v13 - v12 + v11);
    v15 = v29;
    if (v29 >= v30)
    {
      v17 = __src;
      v18 = v29 - __src;
      v19 = (v29 - __src) >> 2;
      v20 = v19 + 1;
      if ((v19 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v21 = v30 - __src;
      if ((v30 - __src) >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
      v23 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v20;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v23);
      }

      *(4 * v19) = v14;
      v16 = (4 * v19 + 4);
      memcpy(0, v17, v18);
      v24 = __src;
      __src = 0;
      v29 = v16;
      v30 = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v29 = v14;
      v16 = v15 + 4;
    }

    v29 = v16;
    v3 = (v3 + 8);
    --v9;
  }

  while (v9);
  if (v16 == __src)
  {
    v25 = &flatbuffers::data<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v25 = __src;
  }

  v26 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v25, (v16 - __src) >> 2);
  if (__src)
  {
    v29 = __src;
    operator delete(__src);
  }

  return v26;
}

void sub_185C7E924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *MTLMetalScriptSerializer::generateEnableString@<X0>(MTLMetalScriptSerializer *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  result = std::string::basic_string[abi:ne200100]<0>(a2, "");
  v5 = v2 & 0x1FFFFFFF;
  if ((v2 & 0x1FFFFFFF) != 0 && v5 < 0xD)
  {
    result = std::string::append(a2, off_1E6EEB328[v5 - 1]);
  }

  if ((v2 & 0x20000000) != 0 && (v2 & 0xC0000000) != 0x80000000)
  {
    v6 = " supportsFamily(mac2)";
    if (v2 >= 0)
    {
      v6 = " || supportsFamily(mac2)";
    }

    if (((v5 != 0) & ((v2 & 0x40000000u) >> 30)) != 0)
    {
      v7 = " && supportsFamily(mac2)";
    }

    else
    {
      v7 = v6;
    }

    return std::string::append(a2, v7);
  }

  return result;
}

void sub_185C7EA00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::buildStitchingGraphFromDescriptor(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [a3 functions];
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v40, a4);
  FunctionArray = MTLMetalScriptSerializer::createFunctionArray(a1, v8, v40);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v40);
  __p = 0;
  v37 = 0;
  v38 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [a3 functionGraphs];
  v12 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        Graph = MTLMetalScriptSerializer::createGraph(a1, *(*(&v32 + 1) + 8 * i), v11);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &Graph);
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v12);
    v15 = __p;
    v16 = v37;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = v16 - v15;
  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Graph>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Graph>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Graph>> const&)::t;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v18, v17 >> 2);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v21, v22);
  v24 = v19;
  *(a1 + 70) = 1;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v27 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v24);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, FunctionArray);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  v28 = flatbuffers::FlatBufferBuilder::EndTable(a1, v25 - v26 + v27);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_185C7EC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::createFunctionArray(flatbuffers::FlatBufferBuilder *a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(a2);
        }

        std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, *(*(&v21 + 1) + 8 * i));
        if ((v19 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = __p[1];
        }

        String = flatbuffers::FlatBufferBuilder::CreateString(a1, v9, v10);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&v25, &String);
      }

      v6 = [a2 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v6);
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = v12 - v11;
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  v15 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v14, v13 >> 2);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_185C7EE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::createGraph(MTLMetalScriptSerializer *this, MTLFunctionStitchingGraph *a2, MTLFunctionStitchingGraph *a3)
{
  v192 = *MEMORY[0x1E69E9840];
  reorderStitchingGraphNodes(a2, &v185);
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v4 = v185;
  v152 = v186;
  if (v185 != v186)
  {
    while (1)
    {
      v5 = *v4;
      if ([*v4 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (![v5 isMemberOfClass:objc_opt_class()])
      {
        if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v45 = [v5 argumentIndex];
          *(this + 70) = 1;
          v46 = *(this + 5);
          v47 = *(this + 6);
          v48 = *(this + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v45, 0);
          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v48 - v47 + v46);
          *(this + 70) = 1;
          LODWORD(v47) = *(this + 8);
          LODWORD(v48) = *(this + 12);
          LODWORD(v46) = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v49);
          v50 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v50);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v47 - v48 + v46);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v154 = v4;
          v51 = [v5 bindIndex];
          *(this + 70) = 1;
          v52 = *(this + 8);
          v53 = *(this + 12);
          v54 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 6, v51, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, 0, 0);
          v55 = flatbuffers::FlatBufferBuilder::EndTable(this, v52 - v53 + v54);
          v56 = [v5 byteOffset];
          *(this + 70) = 1;
          v57 = *(this + 8);
          v58 = *(this + 12);
          v59 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, v56, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v55);
          v60 = flatbuffers::FlatBufferBuilder::EndTable(this, v57 - v58 + v59);
          v61 = [v5 dereference];
          v62 = v60;
          *(this + 70) = 1;
          if (v61)
          {
            v63 = *(this + 5);
            v64 = *(this + 6);
            v65 = *(this + 4);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v62);
            v4 = v154;
            v66 = flatbuffers::FlatBufferBuilder::EndTable(this, v65 - v64 + v63);
            *(this + 70) = 1;
            v67 = *(this + 8);
            v68 = *(this + 12);
            v69 = *(this + 10);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v66);
            v70 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 5);
          }

          else
          {
            v67 = *(this + 8);
            v68 = *(this + 12);
            v69 = *(this + 10);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v62);
            v4 = v154;
            v70 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 4);
          }

          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v70);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v67 - v68 + v69);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v71 = [v5 bindIndex];
          *(this + 70) = 1;
          v72 = *(this + 8);
          v73 = *(this + 12);
          v74 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 6, v71, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, 0, 0);
          v75 = flatbuffers::FlatBufferBuilder::EndTable(this, v72 - v73 + v74);
          *(this + 70) = 1;
          v76 = *(this + 8);
          v77 = *(this + 12);
          v78 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v75);
          v79 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 3);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v79);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v76 - v77 + v78);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v80 = [v5 bindIndex];
          *(this + 70) = 1;
          v81 = *(this + 5);
          v82 = *(this + 6);
          v83 = *(this + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v80, 0);
          v84 = flatbuffers::FlatBufferBuilder::EndTable(this, v83 - v82 + v81);
          *(this + 70) = 1;
          LODWORD(v82) = *(this + 8);
          LODWORD(v83) = *(this + 12);
          LODWORD(v81) = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v84);
          v85 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 6);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v85);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v82 - v83 + v81);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v86 = [v5 bindIndex];
          *(this + 70) = 1;
          v87 = *(this + 5);
          v88 = *(this + 6);
          v89 = *(this + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v86, 0);
          v90 = flatbuffers::FlatBufferBuilder::EndTable(this, v89 - v88 + v87);
          *(this + 70) = 1;
          LODWORD(v88) = *(this + 8);
          LODWORD(v89) = *(this + 12);
          LODWORD(v87) = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v90);
          v91 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 7);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v91);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v88 - v89 + v87);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          v92 = [v5 bindIndex];
          *(this + 70) = 1;
          v93 = *(this + 5);
          v94 = *(this + 6);
          v95 = *(this + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v92, 0);
          v96 = flatbuffers::FlatBufferBuilder::EndTable(this, v95 - v94 + v93);
          *(this + 70) = 1;
          LODWORD(v94) = *(this + 8);
          LODWORD(v95) = *(this + 12);
          LODWORD(v93) = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v96);
          v97 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 8);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v97);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v94 - v95 + v93);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          *(this + 70) = 1;
          v98 = flatbuffers::FlatBufferBuilder::EndTable(this, *(this + 16) - *(this + 24) + *(this + 10));
          *(this + 70) = 1;
          v99 = *(this + 8);
          v100 = *(this + 12);
          v101 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v98);
          v102 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 9);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v102);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v99 - v100 + v101);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          *(this + 70) = 1;
          v103 = *(this + 8);
          v104 = *(this + 12);
          v105 = *(this + 10);
          v106 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v106);
          v107 = flatbuffers::FlatBufferBuilder::EndTable(this, v103 - v104 + v105);
          *(this + 70) = 1;
          v108 = *(this + 8);
          v109 = *(this + 12);
          v110 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v107);
          v111 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 10);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v111);
          LODWORD(v179) = flatbuffers::FlatBufferBuilder::EndTable(this, v108 - v109 + v110);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        else if ([v5 isMemberOfClass:objc_opt_class()])
        {
          BuiltinNode = Mtl4::FunctionStitching::CreateBuiltinNode(this, 0);
          LODWORD(v179) = Mtl4::FunctionStitching::CreateNode(this, 10, BuiltinNode);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v179);
        }

        goto LABEL_50;
      }

      v179 = 0;
      v180 = 0;
      v181 = 0;
      __p[0] = [v5 condition];
      v176 = __p;
      LODWORD(v170) = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v187, __p) + 6);
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v31 = [v5 controlDependencies];
      v32 = [v31 countByEnumeratingWithState:&v160 objects:v189 count:16];
      if (v32)
      {
        v33 = *v161;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v161 != v33)
            {
              objc_enumerationMutation(v31);
            }

            __p[0] = *(*(&v160 + 1) + 8 * i);
            v176 = __p;
            v171 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v187, __p) + 6);
            std::vector<unsigned int>::push_back[abi:ne200100](&v179, &v171);
          }

          v32 = [v31 countByEnumeratingWithState:&v160 objects:v189 count:16];
        }

        while (v32);
      }

      if (v180 == v179)
      {
        v35 = &flatbuffers::data<Mtl::FunctionStitching::NodeId,std::allocator<Mtl::FunctionStitching::NodeId>>(std::vector<Mtl::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v35 = v179;
      }

      v36 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(this, v35, (v180 - v179) >> 2);
      *(this + 70) = 1;
      v37 = *(this + 8);
      v38 = *(this + 12);
      v39 = *(this + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v36);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(this, 4, &v170);
      v40 = flatbuffers::FlatBufferBuilder::EndTable(this, v37 - v38 + v39);
      *(this + 70) = 1;
      v41 = *(this + 8);
      v42 = *(this + 12);
      v43 = *(this + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v40);
      v44 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 11);
      flatbuffers::FlatBufferBuilder::TrackField(this, 4, v44);
      LODWORD(v176) = flatbuffers::FlatBufferBuilder::EndTable(this, v41 - v42 + v43);
      std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v176);
      v30 = v179;
      if (v179)
      {
        goto LABEL_47;
      }

LABEL_50:
      if (++v4 == v152)
      {
        goto LABEL_71;
      }
    }

    v153 = v4;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v6 = [v5 arguments];
    v7 = [v6 countByEnumeratingWithState:&v172 objects:v191 count:16];
    if (v7)
    {
      v8 = *v173;
      do
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v173 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v170 = *(*(&v172 + 1) + 8 * j);
          __p[0] = &v170;
          v171 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v187, &v170) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v179, &v171);
        }

        v7 = [v6 countByEnumeratingWithState:&v172 objects:v191 count:16];
      }

      while (v7);
    }

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v10 = [v5 controlDependencies];
    v11 = [v10 countByEnumeratingWithState:&v166 objects:v190 count:16];
    if (v11)
    {
      v12 = *v167;
      do
      {
        for (k = 0; k != v11; ++k)
        {
          if (*v167 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v170 = *(*(&v166 + 1) + 8 * k);
          __p[0] = &v170;
          v171 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v187, &v170) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v176, &v171);
        }

        v11 = [v10 countByEnumeratingWithState:&v166 objects:v190 count:16];
      }

      while (v11);
    }

    if (v180 == v179)
    {
      v14 = &flatbuffers::data<Mtl::FunctionStitching::NodeId,std::allocator<Mtl::FunctionStitching::NodeId>>(std::vector<Mtl::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v14 = v179;
    }

    v15 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(this, v14, (v180 - v179) >> 2);
    if (v177 == v176)
    {
      v16 = &flatbuffers::data<Mtl::FunctionStitching::NodeId,std::allocator<Mtl::FunctionStitching::NodeId>>(std::vector<Mtl::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v16 = v176;
    }

    v17 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(this, v16, (v177 - v176) >> 2);
    std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(v5 "name")]);
    if ((v165 & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if ((v165 & 0x80u) == 0)
    {
      v19 = v165;
    }

    else
    {
      v19 = __p[1];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString(this, v18, v19);
    if (v165 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = v17;
    *(this + 70) = 1;
    v22 = *(this + 8);
    v23 = *(this + 12);
    v24 = *(this + 10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 8, v21);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v15);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, String);
    v25 = flatbuffers::FlatBufferBuilder::EndTable(this, v22 - v23 + v24);
    *(this + 70) = 1;
    v26 = *(this + 8);
    v27 = *(this + 12);
    v28 = *(this + 10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v25);
    v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 2);
    flatbuffers::FlatBufferBuilder::TrackField(this, 4, v29);
    LODWORD(__p[0]) = flatbuffers::FlatBufferBuilder::EndTable(this, v26 - v27 + v28);
    std::vector<unsigned int>::push_back[abi:ne200100](&v182, __p);
    if (v176)
    {
      v177 = v176;
      operator delete(v176);
    }

    v30 = v179;
    v4 = v153;
    if (!v179)
    {
      goto LABEL_50;
    }

LABEL_47:
    v180 = v30;
    operator delete(v30);
    goto LABEL_50;
  }

LABEL_71:
  v113 = a2;
  v114 = [(NSString *)[(MTLFunctionStitchingGraph *)a2 functionName] UTF8String];
  v115 = strlen(v114);
  v116 = flatbuffers::FlatBufferBuilder::CreateString(this, v114, v115);
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v117 = [(MTLFunctionStitchingGraph *)a2 attributes];
  v118 = [(NSArray *)v117 countByEnumeratingWithState:&v156 objects:v188 count:16];
  if (!v118)
  {
    goto LABEL_83;
  }

  v155 = 0;
  v119 = *v157;
  do
  {
    for (m = 0; m != v118; ++m)
    {
      if (*v157 != v119)
      {
        objc_enumerationMutation(v117);
      }

      v121 = *(*(&v156 + 1) + 8 * m);
      if ([v121 isMemberOfClass:objc_opt_class()])
      {
        *(this + 70) = 1;
        v122 = flatbuffers::FlatBufferBuilder::EndTable(this, *(this + 16) - *(this + 24) + *(this + 20));
        *(this + 70) = 1;
        v123 = *(this + 8);
        v124 = *(this + 12);
        v125 = *(this + 10);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v122);
        v126 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 1);
        flatbuffers::FlatBufferBuilder::TrackField(this, 4, v126);
        LODWORD(v176) = flatbuffers::FlatBufferBuilder::EndTable(this, v123 - v124 + v125);
        std::vector<unsigned int>::push_back[abi:ne200100](&v179, &v176);
      }

      else if ([v121 isMemberOfClass:objc_opt_class()])
      {
        *(this + 70) = 1;
        v127 = flatbuffers::FlatBufferBuilder::EndTable(this, *(this + 16) - *(this + 24) + *(this + 20));
        *(this + 70) = 1;
        v128 = *(this + 8);
        v129 = *(this + 12);
        v130 = *(this + 10);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v127);
        v131 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 2);
        flatbuffers::FlatBufferBuilder::TrackField(this, 4, v131);
        LODWORD(v176) = flatbuffers::FlatBufferBuilder::EndTable(this, v128 - v129 + v130);
        std::vector<unsigned int>::push_back[abi:ne200100](&v179, &v176);
        v155 = 1;
      }
    }

    v118 = [(NSArray *)v117 countByEnumeratingWithState:&v156 objects:v188 count:16];
  }

  while (v118);
  v113 = a2;
  if ((v155 & 1) == 0)
  {
LABEL_83:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(this + 70) = 1;
      v132 = flatbuffers::FlatBufferBuilder::EndTable(this, *(this + 16) - *(this + 24) + *(this + 10));
      *(this + 70) = 1;
      v133 = *(this + 8);
      v134 = *(this + 12);
      v135 = *(this + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v132);
      v136 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 2);
      flatbuffers::FlatBufferBuilder::TrackField(this, 4, v136);
      LODWORD(v176) = flatbuffers::FlatBufferBuilder::EndTable(this, v133 - v134 + v135);
      std::vector<unsigned int>::push_back[abi:ne200100](&v179, &v176);
      v113 = a2;
    }
  }

  if (v180 == v179)
  {
    v137 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v137 = v179;
  }

  v138 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v137, (v180 - v179) >> 2);
  if (v183 == v182)
  {
    v139 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v139 = v182;
  }

  v140 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v139, (v183 - v182) >> 2);
  if ([(MTLFunctionStitchingGraph *)v113 outputNode])
  {
    __p[0] = [(MTLFunctionStitchingGraph *)v113 outputNode];
    v176 = __p;
    v141 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v187, __p) + 6);
  }

  else
  {
    v141 = 0;
  }

  LODWORD(v170) = v141;
  v142 = [(MTLFunctionStitchingGraph *)v113 outputNode];
  v143 = v138;
  *(this + 70) = 1;
  v144 = *(this + 8);
  v145 = *(this + 12);
  v146 = *(this + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 10, v143);
  if (v142)
  {
    v147 = &v170;
  }

  else
  {
    v147 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(this, 8, v147);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v140);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v116);
  v148 = flatbuffers::FlatBufferBuilder::EndTable(this, v144 - v145 + v146);
  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v187);
  if (v185)
  {
    v186 = v185;
    operator delete(v185);
  }

  v149 = *MEMORY[0x1E69E9840];
  return v148;
}

void sub_185C7FEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::pair<std::vector<objc_object  {objcproto24MTLFunctionStitchingNode}*>,std::unordered_map<objc_object  {objcproto24MTLFunctionStitchingNode},unsigned int,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,objc_object  {objcproto24MTLFunctionStitchingNode}*<std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>>>::~pair(&a63);
  _Unwind_Resume(a1);
}

uint64_t MTLMetalScriptSerializer::buildComputePipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, *(a2 + 8));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      String = 0;
LABEL_10:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_11;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      String = 0;
      goto LABEL_11;
    }

    p_p = &__p;
  }

  String = flatbuffers::FlatBufferBuilder::CreateString(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7 = *(a2 + 24);
  v89 = String;
  if (!v7)
  {
LABEL_64:
    v93 = 0;
    v45 = 0;
    goto LABEL_89;
  }

  v8 = 0;
  v9 = 0;
  for (i = 0; i != 248; i += 8)
  {
    v11 = *(*(v7 + 8) + 8 + i);
    if (!v11)
    {
      ++v9;
LABEL_23:
      v14 = v8;
      goto LABEL_24;
    }

    if (v11[1])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11[3] == 1;
    }

    v13 = v12 && v11[2] == 1;
    v14 = ++v9;
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    v8 = v14;
  }

  v15 = 0;
  v16 = 0;
  for (j = 0; j != 248; j += 8)
  {
    v18 = *(*(v7 + 16) + 8 + j);
    if (v18)
    {
      v19 = ++v16;
      if (v18[2] | v18[1] | v18[3])
      {
        goto LABEL_31;
      }
    }

    else
    {
      ++v16;
    }

    v19 = v15;
LABEL_31:
    v15 = v19;
  }

  if (!*(v7 + 32))
  {
    v20 = !*(v7 + 24) && v14 == 0;
    if (v20 && v19 == 0)
    {
      goto LABEL_64;
    }
  }

  v92 = *(a2 + 24);
  if (!v14)
  {
    v93 = 0;
    v44 = 0;
    if (!v19)
    {
      goto LABEL_88;
    }

    goto LABEL_66;
  }

  memset(&__p, 0, sizeof(__p));
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__p, v14);
  v93 = 0;
  for (k = 0; k != v14; ++k)
  {
    v23 = *(*(v7 + 8) + 8 + 8 * k);
    if (v23)
    {
      v24 = *(v23 + 24);
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
    }

    else
    {
      v25 = 0;
      v24 = 1;
      v26 = 1;
    }

    v27 = (v25 & 3) != 0;
    *(a1 + 70) = 1;
    v28 = *(a1 + 32);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v26, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v24, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v25, 0);
    v31 = flatbuffers::FlatBufferBuilder::EndTable(a1, v28 - v29 + v30);
    v32 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
    {
      v34 = __p.__r_.__value_.__r.__words[0];
      v35 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
      v36 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
      v37 = v36 + 1;
      if ((v36 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v38 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v37)
      {
        v37 = v38 >> 1;
      }

      v39 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
      v40 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v39)
      {
        v40 = v37;
      }

      if (v40)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__p, v40);
      }

      *(4 * v36) = v31;
      v33 = 4 * v36 + 4;
      memcpy(0, v34, v35);
      v41 = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = 0;
      *&__p.__r_.__value_.__r.__words[1] = v33;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *__p.__r_.__value_.__l.__size_ = v31;
      v33 = v32 + 4;
    }

    v7 = v92;
    v93 |= v27;
    __p.__r_.__value_.__l.__size_ = v33;
  }

  if (v33 == __p.__r_.__value_.__r.__words[0])
  {
    v42 = &flatbuffers::data<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v42 = __p.__r_.__value_.__r.__words[0];
  }

  v43 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v42, (v33 - __p.__r_.__value_.__r.__words[0]) >> 2);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v44 = v43;
  if (v19)
  {
LABEL_66:
    v88 = v44;
    memset(&__p, 0, sizeof(__p));
    std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__p, v19);
    for (m = 0; m != v19; ++m)
    {
      v47 = *(*(v7 + 16) + 8 + 8 * m);
      if (v47)
      {
        v48 = *(v47 + 16);
        v49 = *(v47 + 24);
        LOBYTE(v47) = *(v47 + 8);
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      *(a1 + 70) = 1;
      v50 = *(a1 + 32);
      v51 = *(a1 + 48);
      v52 = *(a1 + 40);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v47, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v48, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v49, 0);
      v53 = flatbuffers::FlatBufferBuilder::EndTable(a1, v50 - v51 + v52);
      v54 = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
      {
        v56 = __p.__r_.__value_.__r.__words[0];
        v57 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
        v58 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
        v59 = v58 + 1;
        if ((v58 + 1) >> 62)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v60 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v59)
        {
          v59 = v60 >> 1;
        }

        v39 = v60 >= 0x7FFFFFFFFFFFFFFCLL;
        v61 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v39)
        {
          v61 = v59;
        }

        if (v61)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__p, v61);
        }

        *(4 * v58) = v53;
        v55 = 4 * v58 + 4;
        memcpy(0, v56, v57);
        v62 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = 0;
        *&__p.__r_.__value_.__r.__words[1] = v55;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *__p.__r_.__value_.__l.__size_ = v53;
        v55 = v54 + 4;
      }

      v7 = v92;
      __p.__r_.__value_.__l.__size_ = v55;
    }

    if (v55 == __p.__r_.__value_.__r.__words[0])
    {
      v63 = &flatbuffers::data<flatbuffers::Offset<Mtl::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::AttributeDescriptor>> const&)::t;
    }

    else
    {
      v63 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v19) = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v63, (v55 - __p.__r_.__value_.__r.__words[0]) >> 2);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    LODWORD(v44) = v88;
  }

LABEL_88:
  *(a1 + 70) = 1;
  v64 = *(a1 + 32);
  v65 = *(a1 + 48);
  v66 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v44);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v19);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, *(v7 + 32), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, *(v7 + 24), 0);
  v45 = flatbuffers::FlatBufferBuilder::EndTable(a1, v64 - v65 + v66);
LABEL_89:
  v67 = addPipelineBufferDescriptor(a1, *(a2 + 48));
  v68 = *(a2 + 152);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v95, a3);
  LinkedFunctions = MTLMetalScriptSerializer::createLinkedFunctions(a1, v68, v95);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v95);
  if ([objc_msgSend(*(a2 + 152) "binaryFunctions")])
  {
    v70 = 536870918;
  }

  else
  {
    v70 = 0;
  }

  v71 = [objc_msgSend(*(a2 + 152) privateFunctions];
  if ((v70 & 6) != 0)
  {
    v72 = v70;
  }

  else
  {
    v72 = (v70 & 0x20000000) + 1;
  }

  v73 = v72 | 0x80000000;
  if (v71)
  {
    v70 = v73;
  }

  if ([objc_msgSend(*(a2 + 152) "functions")] || objc_msgSend(objc_msgSend(*(a2 + 152), "groups"), "count"))
  {
    if ((v70 & 0x1FFFFFFE) >= 6)
    {
      v74 = v70;
    }

    else
    {
      v74 = v70 & 0x60000000 | 6;
    }

    v70 = v74 | 0x80000000;
  }

  if ((v70 & 0x1FFFFFFF) >= 5)
  {
    v75 = v70;
  }

  else
  {
    v75 = v70 & 0x60000000 | 5;
  }

  v76 = v75 | 0x80000000;
  if (v93)
  {
    v77 = v76;
  }

  else
  {
    v77 = v70;
  }

  if (*(a2 + 80) == 1)
  {
    if ((v77 & 0x1FFFFFFF) >= 3)
    {
      v78 = v77;
    }

    else
    {
      v78 = v77 & 0xC0000000 | 3;
    }

    v77 = (v78 | 0x20000000);
LABEL_115:
    MTLMetalScriptSerializer::generateEnableString(v77, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &__p;
    }

    else
    {
      v79 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = __p.__r_.__value_.__l.__size_;
    }

    v81 = flatbuffers::FlatBufferBuilder::CreateString(a1, v79, v80);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v82 = v81;
  }

  else
  {
    if (v77)
    {
      goto LABEL_115;
    }

    v82 = 0;
  }

  *(a1 + 70) = 1;
  v83 = *(a1 + 32);
  v84 = *(a1 + 48);
  v85 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v82);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v89);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 16, v67);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, *(a2 + 16), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, *(a2 + 18), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, LinkedFunctions);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 160), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, *(a2 + 80), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, *(a2 + 168), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, *(a2 + 104), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, *(a2 + 136), 0);
  result = flatbuffers::FlatBufferBuilder::EndTable(a1, v83 - v84 + v85);
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185C80980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t addPipelineBufferDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLPipelineBufferDescriptorArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = 0;
  for (i = 0; i != 31; ++i)
  {
    isa = a2[i + 1].super.isa;
    if (isa)
    {
      v8 = ++v5;
      if ((*(isa + 8) & 3) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      ++v5;
    }

    v8 = v4;
LABEL_8:
    v4 = v8;
  }

  if (!v8)
  {
    return 0;
  }

  __src = 0;
  v29 = 0;
  v30 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v8);
  do
  {
    v9 = v2[1].super.isa;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    else
    {
      v10 = &_MTLDefaultPipelineBufferPrivate;
    }

    *(a1 + 70) = 1;
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v13 = *(a1 + 4);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, *v10 & 3, 0);
    v14 = flatbuffers::FlatBufferBuilder::EndTable(a1, v13 - v12 + v11);
    v15 = v29;
    if (v29 >= v30)
    {
      v17 = __src;
      v18 = v29 - __src;
      v19 = (v29 - __src) >> 2;
      v20 = v19 + 1;
      if ((v19 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v21 = v30 - __src;
      if ((v30 - __src) >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
      v23 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v20;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v23);
      }

      *(4 * v19) = v14;
      v16 = (4 * v19 + 4);
      memcpy(0, v17, v18);
      v24 = __src;
      __src = 0;
      v29 = v16;
      v30 = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v29 = v14;
      v16 = v15 + 4;
    }

    v29 = v16;
    ++v2;
    --v8;
  }

  while (v8);
  if (v16 == __src)
  {
    v25 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v25 = __src;
  }

  v26 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v25, (v16 - __src) >> 2);
  if (__src)
  {
    v29 = __src;
    operator delete(__src);
  }

  return v26;
}

void sub_185C80C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::createLinkedFunctions(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a2 "functions")])
  {
    v6 = [a2 functions];
    std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v40, a3);
    FunctionArray = MTLMetalScriptSerializer::createFunctionArray(a1, v6, v40);
    std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v40);
  }

  else
  {
    FunctionArray = 0;
  }

  if ([objc_msgSend(a2 "privateFunctions")])
  {
    v8 = [a2 privateFunctions];
    std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v39, a3);
    v9 = MTLMetalScriptSerializer::createFunctionArray(a1, v8, v39);
    std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v39);
  }

  else
  {
    v9 = 0;
  }

  if ([objc_msgSend(a2 "groups")])
  {
    v10 = [a2 groups];
    v41 = 0;
    v42 = &v41;
    v43 = 0x4812000000;
    v44 = __Block_byref_object_copy__50;
    v45 = __Block_byref_object_dispose__51;
    v46 = &unk_185DF1D43;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    *&v32 = MEMORY[0x1E69E9820];
    *(&v32 + 1) = 3221225472;
    *&v33 = ___ZN24MTLMetalScriptSerializerL12createGroupsERN11flatbuffers17FlatBufferBuilderEP12NSDictionaryIP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_block_invoke;
    *(&v33 + 1) = &unk_1E6EEB308;
    *&v34 = &v41;
    *(&v34 + 1) = a1;
    [v10 enumerateKeysAndObjectsUsingBlock:&v32];
    v11 = v42[7] - v42[6];
    if (v11)
    {
      v12 = v42[6];
    }

    else
    {
      v12 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionGroup>,std::allocator<flatbuffers::Offset<Mtl::FunctionGroup>>>(std::vector<flatbuffers::Offset<Mtl::FunctionGroup>> const&)::t;
    }

    v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, v11 >> 2);
    _Block_object_dispose(&v41, 8);
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [a2 binaryFunctions];
  __p = 0;
  v37 = 0;
  v38 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:&v41 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [objc_msgSend(*(*(&v32 + 1) + 8 * i) "name")];
        v19 = strlen(v18);
        String = flatbuffers::FlatBufferBuilder::CreateString(a1, v18, v19);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &String);
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:&v41 count:16];
    }

    while (v15);
    v20 = __p;
    v21 = v37;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = v21 - v20;
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  v25 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v23, v22 >> 2);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(a2, v24) || (result = [objc_msgSend(a2 "privateFunctions")]) != 0)
  {
    *(a1 + 70) = 1;
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    v29 = *(a1 + 40);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, FunctionArray);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v9);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v13);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v25);
    result = flatbuffers::FlatBufferBuilder::EndTable(a1, v27 - v28 + v29);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLMetalScriptSerializer::buildRenderPipeline(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0;
  v6 = *(a2 + 256);
  if (!v6)
  {
    goto LABEL_5;
  }

  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, v6);
  size = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
    if (!v46.__r_.__value_.__l.__size_)
    {
      String = 0;
LABEL_11:
      operator delete(v46.__r_.__value_.__l.__data_);
      goto LABEL_12;
    }

    v8 = v46.__r_.__value_.__r.__words[0];
    goto LABEL_8;
  }

  if (!*(&v46.__r_.__value_.__s + 23))
  {
LABEL_5:
    String = 0;
    goto LABEL_12;
  }

  v8 = &v46;
LABEL_8:
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v8, size);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = *(a2 + 264);
  if (!v10)
  {
    goto LABEL_16;
  }

  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, v10);
  v11 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v11 = v46.__r_.__value_.__l.__size_;
    if (!v46.__r_.__value_.__l.__size_)
    {
      v13 = 0;
LABEL_22:
      operator delete(v46.__r_.__value_.__l.__data_);
      goto LABEL_23;
    }

    v12 = v46.__r_.__value_.__r.__words[0];
    goto LABEL_19;
  }

  if (!*(&v46.__r_.__value_.__s + 23))
  {
LABEL_16:
    v13 = 0;
    goto LABEL_23;
  }

  v12 = &v46;
LABEL_19:
  v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, v12, v11);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  v43 = addPipelineBufferDescriptor(a1, *(a2 + 408));
  v42 = addPipelineBufferDescriptor(a1, *(a2 + 416));
  v15 = MTLMetalScriptSerializer::addColorAttachmentsDescriptor(a1, *a2, &v45, v14);
  v17 = MTLMetalScriptSerializer::addVertexDescriptor(a1, *(a2 + 272), &v44, v16);
  v18 = *(a2 + 496);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v48, a3);
  LinkedFunctions = MTLMetalScriptSerializer::createLinkedFunctions(a1, v18, v48);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v48);
  v19 = *(a2 + 488);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v47, a3);
  v20 = MTLMetalScriptSerializer::createLinkedFunctions(a1, v19, v47);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v47);
  if (MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 496), v21) || MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 488), v22))
  {
    v23 = v45;
    if ((v45 & 0x1FFFFFFE) < 6)
    {
      v23 = v45 & 0x60000000 | 6;
    }

    v45 = v23 | 0x80000000;
  }

  if ([objc_msgSend(*(a2 + 496) "privateFunctions")])
  {
    LODWORD(v24) = v45;
  }

  else
  {
    v25 = [objc_msgSend(*(a2 + 488) "privateFunctions")];
    v24 = v45;
    if (!v25)
    {
      goto LABEL_35;
    }
  }

  if ((v24 & 0x1FFFFFFF) != 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = (v24 & 0x60000000) + 1;
  }

  v24 = (v26 | 0x80000000);
LABEL_35:
  if (v44 == 1)
  {
    if ((v24 & 0x1FFFFFFF) >= 5)
    {
      v27 = v24;
    }

    else
    {
      v27 = v24 & 0x60000000 | 5;
    }

    v24 = (v27 | 0x80000000);
  }

  if ((*(a2 + 152) & 1) != 0 || (v28 = *(a2 + 256)) != 0 && [v28 patchType])
  {
    if ((v24 & 0x1FFFFFFF) >= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = v24 & 0xC0000000 | 3;
    }

    v24 = (v29 | 0x20000000);
  }

  if (*(a2 + 96) >= 0x11uLL)
  {
    if ((v24 & 0x1FFFFFFF) >= 5)
    {
      v30 = v24;
    }

    else
    {
      v30 = v24 & 0xC0000000 | 5;
    }

    v24 = (v30 | 0x20000000);
  }

  if (*(a2 + 476) < 2u)
  {
    if (!v24)
    {
      v35 = 0;
      goto LABEL_67;
    }
  }

  else
  {
    if ((v24 & 0x1FFFFFFE) >= 6)
    {
      v31 = v24;
    }

    else
    {
      v31 = v24 & 0xC0000000 | 6;
    }

    v24 = (v31 | 0x20000000);
  }

  MTLMetalScriptSerializer::generateEnableString(v24, &v46);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v46;
  }

  else
  {
    v32 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v46.__r_.__value_.__l.__size_;
  }

  v34 = flatbuffers::FlatBufferBuilder::CreateString(a1, v32, v33);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v35 = v34;
LABEL_67:
  *(a1 + 70) = 1;
  v36 = *(a1 + 8);
  v37 = *(a1 + 12);
  v38 = *(a1 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v35);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v13);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, *(a2 + 552), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 560), 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v17);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, (*(a2 + 224) >> 5) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, *(a2 + 96), 16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, *(a2 + 104), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, *(a2 + 112), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, *(a2 + 120), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, *(a2 + 128), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, *(a2 + 136), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, *(a2 + 88), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 32, *(a2 + 476), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, (*(a2 + 224) >> 12) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, (*(a2 + 224) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, (*(a2 + 224) & 3) != 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, (*(a2 + 224) & 0xCLL) != 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 42, *(a2 + 184), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 44, *(a2 + 216), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 46, *(a2 + 192), -1);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 48, *(a2 + 200), 1.0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, (*(a2 + 224) >> 10) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 52, v15);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 54, *(a2 + 72), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 56, *(a2 + 80), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v43);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 60, v42);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 62, *(a2 + 152), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, *(a2 + 568), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 66, *(a2 + 569), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 94, LinkedFunctions);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 92, v20);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 68, *(a2 + 176), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 70, (*(a2 + 224) >> 36) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 72, *(a2 + 228) & 0xF, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 74, (*(a2 + 224) >> 28) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 76, (*(a2 + 224) >> 25) & 7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 78, (*(a2 + 224) >> 17), 255);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 80, HIWORD(*(a2 + 224)) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 82, (*(a2 + 224) >> 8) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 84, (*(a2 + 224) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 86, *(a2 + 232), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 88, *(a2 + 236), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 90, *(a2 + 472), 0);
  result = flatbuffers::FlatBufferBuilder::EndTable(a1, v36 - v37 + v38);
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185C817D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::buildMeshPipeline(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  LODWORD(v44.super.isa) = 0;
  v6 = *(a2 + 96);
  if (!v6)
  {
    goto LABEL_5;
  }

  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, v6);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      String = 0;
LABEL_11:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_12;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    goto LABEL_8;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
LABEL_5:
    String = 0;
    goto LABEL_12;
  }

  p_p = &__p;
LABEL_8:
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v9 = *(a2 + 104);
  if (!v9)
  {
    goto LABEL_16;
  }

  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, v9);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      v12 = 0;
LABEL_22:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_23;
    }

    v11 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_19;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
LABEL_16:
    v12 = 0;
    goto LABEL_23;
  }

  v11 = &__p;
LABEL_19:
  v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, v11, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  v13 = *(a2 + 88);
  if (!v13)
  {
    goto LABEL_27;
  }

  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, v13);
  v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v14 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      v16 = 0;
LABEL_33:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_34;
    }

    v15 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_30;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_34;
  }

  v15 = &__p;
LABEL_30:
  v16 = flatbuffers::FlatBufferBuilder::CreateString(a1, v15, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v17 = addPipelineBufferDescriptor(a1, *(a2 + 152));
  v18 = addPipelineBufferDescriptor(a1, *(a2 + 160));
  v19 = addPipelineBufferDescriptor(a1, *(a2 + 144));
  v21 = MTLMetalScriptSerializer::addColorAttachmentsDescriptor(a1, *a2, &v44, v20);
  v22 = *(a2 + 224);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v46, a3);
  LinkedFunctions = MTLMetalScriptSerializer::createLinkedFunctions(a1, v22, v46);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v46);
  v23 = *(a2 + 216);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v45, a3);
  v40 = MTLMetalScriptSerializer::createLinkedFunctions(a1, v23, v45);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v45);
  v24 = *(a2 + 208);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](&v44.super.isa + 4, a3);
  v39 = MTLMetalScriptSerializer::createLinkedFunctions(a1, v24, &v44.super.isa + 4);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](&v44.super.isa + 4);
  if (MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 224), v25) || MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 216), v26) || MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 208), v27))
  {
    isa = v44.super.isa;
    if ((v44.super.isa & 0x1FFFFFFF) < 9)
    {
      isa = v44.super.isa & 0x60000000 | 9;
    }

    v29 = isa | 0x80000000;
  }

  else
  {
    v29 = v44.super.isa;
  }

  if ((v29 & 0x1FFFFFFF) >= 7)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 & 0x60000000 | 7;
  }

  MTLMetalScriptSerializer::generateEnableString((v30 | 0x80000000), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = __p.__r_.__value_.__l.__size_;
  }

  v33 = flatbuffers::FlatBufferBuilder::CreateString(a1, v31, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 70) = 1;
  v34 = *(a1 + 12);
  v37 = *(a1 + 8);
  v38 = *(a1 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v33);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v16);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v17);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 60, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 56, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 50, v21);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 40, *(a2 + 32), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 86, (*(a2 + 60) >> 6) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 44, *(a2 + 48), -1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 72, (*(a2 + 60) >> 30) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 74, (*(a2 + 60) >> 26) & 0xF, 0);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 46, *(a2 + 56), 1.0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, (*(a2 + 60) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 76, (*(a2 + 60) >> 25) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 42, *(a2 + 40), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 78, (*(a2 + 60) >> 22) & 7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 82, (*(a2 + 60) >> 13) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, *(a2 + 136), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, (*(a2 + 60) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, (*(a2 + 60) & 0xCLL) != 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, (*(a2 + 60) & 3) != 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 80, (*(a2 + 60) >> 14), 255);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 70, *(a2 + 24), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 84, (*(a2 + 60) >> 5) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 52, *(a2 + 8), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 30, (*(a2 + 60) >> 37) & 0xFLL, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 54, *(a2 + 16), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, *(a2 + 264), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 62, (*(a2 + 60) >> 33) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 24, *(a2 + 256), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 28, *(a2 + 272), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 88, *(a2 + 68), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 90, *(a2 + 64) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 66, (*(a2 + 60) >> 35) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, (*(a2 + 60) >> 34) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 68, (*(a2 + 60) >> 36) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 22, *(a2 + 128), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, *(a2 + 120), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, *(a2 + 112), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, (*(a2 + 60) >> 42) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, (*(a2 + 60) >> 41) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 96, LinkedFunctions);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 92, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 94, v40);
  result = flatbuffers::FlatBufferBuilder::EndTable(a1, v37 - v34 + v38);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185C81F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::buildTileRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  std::function<std::string ()(objc_object  {objcproto11MTLFunction}*)>::operator()(a3, *(a2 + 24));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      String = 0;
      goto LABEL_11;
    }

    p_p = &__p;
    goto LABEL_6;
  }

  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
LABEL_6:
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, p_p, size);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  String = 0;
LABEL_10:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  v9 = addPipelineBufferDescriptor(a1, *(a2 + 56));
  v11 = MTLMetalScriptSerializer::addTileColorAttachmentsDescriptor(a1, *a2, v10);
  v12 = *(a2 + 96);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](v26, a3);
  LinkedFunctions = MTLMetalScriptSerializer::createLinkedFunctions(a1, v12, v26);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v26);
  if (MTLMetalScriptSerializer::linkedFunctionHasEntryExcludingPrivate(*(a2 + 96), v14))
  {
    v15 = -2147483642;
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 4) != 0)
  {
    v16 = v15 | 0x80000000;
  }

  else
  {
    v16 = 2147483652;
  }

  MTLMetalScriptSerializer::generateEnableString(v16, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateString(a1, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 70) = 1;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 20, v9);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 112), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, *(a2 + 120), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, LinkedFunctions);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, *(a2 + 8), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, *(a2 + 48), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, *(a2 + 64), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, *(a2 + 32), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, *(a2 + 72), 0);
  result = flatbuffers::FlatBufferBuilder::EndTable(a1, v20 - v21 + v22);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185C82268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::addFunctionConstants(MTLMetalScriptSerializer *this, flatbuffers::FlatBufferBuilder *a2, MTLFunctionConstantValuesInternal *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    v5 = [(flatbuffers::FlatBufferBuilder *)a2 newNamedConstantArray];
    v33 = a2;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v6)
    {
      v7 = *v42;
      obj = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          v10 = [v9 name];
          v12 = MTLMetalScriptSerializer::addString(this, v10, v11);
          v13 = [v9 dataType];
          LODWORD(v9) = makeValue(this, v13, [v9 data]);
          *(this + 70) = 1;
          v14 = *(this + 8);
          v15 = *(this + 12);
          v16 = *(this + 10);
          v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 2);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v17);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v12);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 8, v13, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 10, v9);
          v40 = flatbuffers::FlatBufferBuilder::EndTable(this, v14 - v15 + v16);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v40);
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v6);
    }

    v18 = [(flatbuffers::FlatBufferBuilder *)v33 newIndexedConstantArray];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v19)
    {
      v20 = *v37;
      obja = v18;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(obja);
          }

          v22 = *(*(&v36 + 1) + 8 * j);
          v48 = [v22 index];
          v23 = [v22 dataType];
          LODWORD(v22) = makeValue(this, v23, [v22 data]);
          v24 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(this, &v48);
          *(this + 70) = 1;
          v25 = *(this + 8);
          v26 = *(this + 12);
          v27 = *(this + 10);
          v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v28);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v24);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 8, v23, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 10, v22);
          v40 = flatbuffers::FlatBufferBuilder::EndTable(this, v25 - v26 + v27);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v40);
        }

        v18 = obja;
        v19 = [obja countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v19);
    }

    v29 = __p;
    if (__p != v46)
    {
      v30 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, __p, (v46 - __p) >> 2);
      v29 = __p;
      if (!__p)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v30 = 0;
    if (__p)
    {
LABEL_21:
      v46 = v29;
      operator delete(v29);
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_22:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_185C82620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::initFromScript(NSObject **a1, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    if (v3)
    {
      v4 = v3;
      if (buffer_ptr)
      {
        v5 = *a1;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZN25MTLMetalScriptBuilderImpl14initFromScriptEPU27objcproto16OS_dispatch_data8NSObject_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = a1;
        block[5] = buffer_ptr;
        block[6] = size_ptr;
        dispatch_sync(v5, block);
      }

      dispatch_release(v4);
    }
  }
}

void ___ZN25MTLMetalScriptBuilderImpl14initFromScriptEPU27objcproto16OS_dispatch_data8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  MTLMetalScriptBuilderImpl::resetInternal(v2, 1);
  v3 = *(a1 + 40);

  MTLMetalScriptBuilderImpl::initFromData(v2, v3);
}

void MTLMetalScriptBuilderImpl::initFromData(MTLMetalScriptBuilderImpl *this, char *a2)
{
  v125 = *a2;
  v3 = &a2[v125];
  v4 = *&a2[v125];
  v5 = -v4;
  v6 = &a2[v125 - v4];
  if (*v6 >= 9u)
  {
    v7 = *(v6 + 4);
    if (v7)
    {
      v8 = *&v3[v7];
      v9 = *&v3[v7 + v8];
      if (v9)
      {
        v10 = 0;
        v11 = 4 * v9;
        v12 = (this + 536);
        v13 = &a2[v7 + v125 + v8];
        do
        {
          v14 = *&v13[v10 + 4];
          v15 = &v13[v10 + v14];
          v16 = v14 + *&v13[v10 + 8 + v14 - *(v15 + 1)];
          v17 = &v13[v10 + v16 + *&v13[v10 + 4 + v16]];
          std::string::basic_string[abi:ne200100](__p, v17 + 8, *(v17 + 1));
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 16, __p);
          if (SHIBYTE(v130) < 0)
          {
            operator delete(__p[0]);
          }

          v18 = Mtl4::CloneLibrary<Mtl4::Library>((this + 248), v15 + 4);
          v19 = *(this + 68);
          v20 = *(this + 69);
          if (v19 >= v20)
          {
            v22 = *v12;
            v23 = v19 - *v12;
            v24 = v23 >> 2;
            v25 = (v23 >> 2) + 1;
            if (v25 >> 62)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v26 = v20 - v22;
            if (v26 >> 1 > v25)
            {
              v25 = v26 >> 1;
            }

            v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
            v28 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v27)
            {
              v28 = v25;
            }

            if (v28)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this + 536, v28);
            }

            *(4 * v24) = v18;
            v21 = 4 * v24 + 4;
            memcpy(0, v22, v23);
            v29 = *(this + 67);
            *(this + 67) = 0;
            *(this + 68) = v21;
            *(this + 69) = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v19 = v18;
            v21 = (v19 + 4);
          }

          *(this + 68) = v21;
          v10 += 4;
        }

        while (v11 != v10);
        v5 = -*v3;
      }
    }
  }

  v30 = &v3[v5];
  if (*v30 >= 0xDu)
  {
    v31 = *(v30 + 6);
    if (*(v30 + 6))
    {
      v123 = *&v3[v31];
      v124 = *(v30 + 6);
      v32 = &v3[v31 + v123];
      v33 = *v32;
      v34 = -v33;
      v35 = &v32[-v33];
      if (*v35 >= 5u)
      {
        v36 = *(v35 + 2);
        if (v36)
        {
          v37 = *&v32[v36];
          v38 = *&v32[v36 + v37];
          if (v38)
          {
            v39 = 0;
            v40 = 4 * v38;
            v41 = &a2[v36 + v123 + v124 + v125 + v37];
            do
            {
              v42 = &v41[v39];
              v43 = *&v41[v39 + 4];
              v44 = &v41[v39 + v43];
              v45 = &v41[v39 + v43 - *(v44 + 1)];
              if (*(v45 + 4))
              {
                v46 = &v41[v39 + 4 + v43 + *(v45 + 4) + *&v42[v43 + 4 + *(v45 + 4)]];
              }

              else
              {
                v46 = 0;
              }

              v47 = &v42[v43 + *(v45 + 5) + *&v42[v43 + 4 + *(v45 + 5)]];
              std::string::basic_string[abi:ne200100](__p, v47 + 8, *(v47 + 1));
              std::string::basic_string[abi:ne200100](__dst, v46 + 4, *v46);
              v131 = __dst;
              v48 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 6, __dst);
              v49 = v48;
              if (*(v48 + 63) < 0)
              {
                operator delete(v48[5]);
              }

              *(v49 + 5) = *__p;
              v49[7] = v130;
              HIBYTE(v130) = 0;
              LOBYTE(__p[0]) = 0;
              if (v128 < 0)
              {
                operator delete(__dst[0]);
                if (SHIBYTE(v130) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v50 = Mtl4::CloneLibrary<Mtl4::Library>((this + 248), v44 + 4);
              v52 = *(this + 44);
              v51 = *(this + 45);
              if (v52 >= v51)
              {
                v54 = *(this + 43);
                v55 = v52 - v54;
                v56 = (v52 - v54) >> 2;
                v57 = v56 + 1;
                if ((v56 + 1) >> 62)
                {
                  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
                }

                v58 = v51 - v54;
                if (v58 >> 1 > v57)
                {
                  v57 = v58 >> 1;
                }

                v27 = v58 >= 0x7FFFFFFFFFFFFFFCLL;
                v59 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v27)
                {
                  v59 = v57;
                }

                if (v59)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this + 344, v59);
                }

                v60 = (v52 - v54) >> 2;
                v61 = (4 * v56);
                v62 = (4 * v56 - 4 * v60);
                *v61 = v50;
                v53 = v61 + 1;
                memcpy(v62, v54, v55);
                v63 = *(this + 43);
                *(this + 43) = v62;
                *(this + 44) = v53;
                *(this + 45) = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                *v52 = v50;
                v53 = v52 + 4;
              }

              *(this + 44) = v53;
              v39 += 4;
            }

            while (v40 != v39);
            v34 = -*v32;
          }
        }
      }

      if (*&v32[v34] >= 7u)
      {
        v64 = *&v32[v34 + 6];
        if (*&v32[v34 + 6])
        {
          v65 = *&v32[v64];
          v66 = *&v32[v64 + v65];
          if (v66)
          {
            v67 = 0;
            v68 = 4 * v66;
            v69 = &a2[v64 + v123 + v124 + v125 + v65];
            do
            {
              v70 = *&v69[v67 + 4];
              v71 = &v69[v67 + v70];
              LODWORD(__p[0]) = Mtl::CloneSpecializedFunctionLibrary<Mtl::SpecializedFunctionLibrary>(this + 248, v71 + 4);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 46, __p);
              v72 = &v69[v67 + v70 - *(v71 + 1)];
              if (*(v72 + 2) >= 5u && (v73 = *(v72 + 4)) != 0)
              {
                v74 = &v69[v67 + v70 + v73 + *&v69[v67 + 4 + v70 + v73]];
                std::string::basic_string[abi:ne200100](__p, v74 + 8, *(v74 + 1));
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "");
              }

              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 21, __p);
              if (SHIBYTE(v130) < 0)
              {
                operator delete(__p[0]);
              }

              v67 += 4;
            }

            while (v68 != v67);
            v34 = -*v32;
          }
        }
      }

      v75 = &v32[v34];
      if (*v75 >= 9u)
      {
        v76 = *(v75 + 4);
        if (v76)
        {
          v77 = *&v32[v76];
          v78 = *&v32[v76 + v77];
          if (v78)
          {
            v79 = 0;
            v80 = 4 * v78;
            v81 = &a2[v76 + v123 + v124 + v125 + v77];
            do
            {
              v82 = *&v81[v79 + 4];
              v83 = &v81[v79 + v82];
              LODWORD(__p[0]) = Mtl::CloneStitchedLibrary<Mtl::StitchedLibrary>(this + 248, v83 + 4);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 49, __p);
              v84 = &v81[v79 + v82 - *(v83 + 1)];
              if (*(v84 + 2) >= 5u && (v85 = *(v84 + 4)) != 0)
              {
                v86 = &v81[v79 + v82 + v85 + *&v81[v79 + 4 + v82 + v85]];
                std::string::basic_string[abi:ne200100](__p, v86 + 8, *(v86 + 1));
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "");
              }

              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 26, __p);
              if (SHIBYTE(v130) < 0)
              {
                operator delete(__p[0]);
              }

              v79 += 4;
            }

            while (v80 != v79);
          }
        }
      }
    }
  }

  v87 = &v3[-*v3];
  if (*v87 >= 0xFu)
  {
    v88 = *(v87 + 7);
    if (*(v87 + 7))
    {
      v89 = *&v3[v88];
      v90 = &v3[v88 + v89];
      v91 = *v90;
      v92 = -v91;
      v93 = &v90[-v91];
      if (*v93 >= 5u)
      {
        v94 = *(v93 + 2);
        if (v94)
        {
          v95 = *&v90[v94];
          v96 = *&v90[v94 + v95];
          if (v96)
          {
            v97 = 4 * v96;
            v98 = &a2[v89 + 4 + v88 + v125 + v95 + v94];
            v99 = v98;
            do
            {
              v100 = *v99;
              v99 += 4;
              LODWORD(__p[0]) = Mtl::CloneComputePipelineDescriptor<Mtl::ComputePipelineDescriptor>(this + 248, &v98[v100]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 52, __p);
              v98 = v99;
              v97 -= 4;
            }

            while (v97);
            v92 = -*v90;
          }
        }
      }

      if (*&v90[v92] >= 7u)
      {
        v101 = *&v90[v92 + 6];
        if (*&v90[v92 + 6])
        {
          v102 = *&v90[v101];
          v103 = *&v90[v101 + v102];
          if (v103)
          {
            v104 = 4 * v103;
            v105 = &a2[v88 + 4 + v125 + v102 + v101 + v89];
            v106 = v105;
            do
            {
              v107 = *v106;
              v106 += 4;
              LODWORD(__p[0]) = Mtl::CloneRenderPipelineDescriptor<Mtl::RenderPipelineDescriptor>(this + 248, &v105[v107]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 55, __p);
              v105 = v106;
              v104 -= 4;
            }

            while (v104);
            v92 = -*v90;
          }
        }
      }

      if (*&v90[v92] >= 9u)
      {
        v108 = *&v90[v92 + 8];
        if (*&v90[v92 + 8])
        {
          v109 = *&v90[v108];
          v110 = *&v90[v108 + v109];
          if (v110)
          {
            v111 = 4 * v110;
            v112 = &a2[v88 + 4 + v125 + v109 + v108 + v89];
            v113 = v112;
            do
            {
              v114 = *v113;
              v113 += 4;
              LODWORD(__p[0]) = Mtl::CloneTileRenderPipelineDescriptor<Mtl::TileRenderPipelineDescriptor>(this + 248, &v112[v114]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 58, __p);
              v112 = v113;
              v111 -= 4;
            }

            while (v111);
            v92 = -*v90;
          }
        }
      }

      v115 = &v90[v92];
      if (*v115 >= 0xBu)
      {
        v116 = *(v115 + 5);
        if (v116)
        {
          v117 = *&v90[v116];
          v118 = *&v90[v116 + v117];
          if (v118)
          {
            v119 = 4 * v118;
            v120 = &a2[v88 + 4 + v125 + v117 + v116 + v89];
            v121 = v120;
            do
            {
              v122 = *v121;
              v121 += 4;
              LODWORD(__p[0]) = Mtl::CloneMeshRenderPipelineDescriptor<Mtl::MeshRenderPipelineDescriptor>(this + 248, &v120[v122]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 70, __p);
              v120 = v121;
              v119 -= 4;
            }

            while (v119);
          }
        }
      }
    }
  }
}

void sub_185C82FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneSpecializedFunctionLibrary<Mtl::SpecializedFunctionLibrary>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0xDu && (v7 = *(v6 + 6)) != 0)
  {
    v19 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl21FunctionConstantValueEEEZNS3_31CloneSpecializedFunctionLibraryINS3_26SpecializedFunctionLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41SpecializedFunctionLibraryCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0xBu && *&a2[v5 + 10])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 10] + 4 + *&a2[*&a2[v5 + 10]]], *&a2[*&a2[v5 + 10] + *&a2[*&a2[v5 + 10]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v11 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = &a2[v5];
  if (*v12 >= 5u && (v13 = *(v12 + 2)) != 0)
  {
    v14 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v13 + 4 + *&a2[v13]], *&a2[v13 + *&a2[v13]]);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 70) = 1;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, String);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v11);
  }

  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v14);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v15);
}

uint64_t Mtl::CloneStitchedLibrary<Mtl::StitchedLibrary>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v17 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching5GraphEEEZNS3_20CloneStitchedLibraryINS3_15StitchedLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30StitchedLibraryCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v17 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneStitchedLibraryINS5_15StitchedLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30StitchedLibraryCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t Mtl::CloneComputePipelineDescriptor<Mtl::ComputePipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x1Du && (v7 = *(v6 + 14)) != 0)
  {
    VectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[v7 + *&a2[v7]], &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0x1Bu && *&a2[v5 + 26])
  {
    v9 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 26] + *&a2[*&a2[v5 + 26]]]);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0x11u && *&a2[v5 + 16])
  {
    v39 = &a2[*&a2[v5 + 16] + *&a2[*&a2[v5 + 16]]];
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_30CloneComputePipelineDescriptorINS3_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v39, &v39, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 0xFu && *&a2[v5 + 14])
  {
    v11 = Mtl::CloneStageInputOutputDescriptor<Mtl::StageInputOutputDescriptor>(a1, &a2[*&a2[v5 + 14] + *&a2[*&a2[v5 + 14]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  *(a1 + 70) = 1;
  v15 = &a2[v5];
  if (*v15 >= 0xDu)
  {
    v16 = *(v15 + 6);
    if (v16)
    {
      v14 = *&a2[v16];
    }

    else
    {
      v14 = 1;
    }
  }

  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v38 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v14, 1);
  v19 = &a2[-*a2];
  if (*v19 >= 0xBu && (v20 = *(v19 + 5)) != 0)
  {
    v21 = *&a2[v20];
  }

  else
  {
    v21 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v21, 0);
  if (VectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, VectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v9);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 16, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v11);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v13);
  }

  v22 = &a2[-*a2];
  v24 = *v22 >= 0x19u && (v23 = *(v22 + 12)) != 0 && a2[v23] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v24, 0);
  v25 = &a2[-*a2];
  if (*v25 >= 0x17u && (v26 = *(v25 + 11)) != 0)
  {
    v27 = a2[v26];
    if (v27 >= 3)
    {
      abort();
    }
  }

  else
  {
    v27 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v27, 0);
  v28 = &a2[-*a2];
  v30 = *v28 >= 0x15u && (v29 = *(v28 + 10)) != 0 && a2[v29] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v30, 0);
  v31 = &a2[-*a2];
  v33 = *v31 >= 0x13u && (v32 = *(v31 + 9)) != 0 && a2[v32] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v33, 0);
  v34 = &a2[-*a2];
  v36 = *v34 >= 9u && (v35 = *(v34 + 4)) != 0 && a2[v35] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v36, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v38);
}

uint64_t Mtl::CloneRenderPipelineDescriptor<Mtl::RenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x5Fu && (v7 = *(v6 + 47)) != 0)
  {
    v134 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v134 = 0;
  }

  if (*&a2[v5] >= 0x5Du && *&a2[v5 + 92])
  {
    v8 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 92] + *&a2[*&a2[v5 + 92]]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0x3Du && *&a2[v5 + 60])
  {
    v135 = &a2[*&a2[v5 + 60] + *&a2[*&a2[v5 + 60]]];
    v133 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v135, &v135, a1);
    v5 = -*a2;
  }

  else
  {
    v133 = 0;
  }

  if (*&a2[v5] >= 0x3Bu && *&a2[v5 + 58])
  {
    v135 = &a2[*&a2[v5 + 58] + *&a2[*&a2[v5 + 58]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v135, &v135, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0x35u && *&a2[v5 + 52])
  {
    v135 = &a2[*&a2[v5 + 52] + *&a2[*&a2[v5 + 52]]];
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl39RenderPipelineColorAttachmentDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v135, &v135, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 0xFu && *&a2[v5 + 14])
  {
    v11 = Mtl::CloneVertexDescriptor<Mtl::VertexDescriptor>(a1, &a2[*&a2[v5 + 14] + *&a2[*&a2[v5 + 14]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v13 = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v14 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 70) = 1;
  v15 = *(a1 + 32);
  v130 = v15;
  v131 = *(a1 + 48);
  v132 = *(a1 + 40);
  v16 = &a2[v5];
  if (*v16 >= 0x2Fu && (v17 = *(v16 + 23)) != 0)
  {
    v18 = *&a2[v17];
  }

  else
  {
    v18 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 46, v18, -1);
  v19 = &a2[-*a2];
  if (*v19 >= 0x2Du && (v20 = *(v19 + 22)) != 0)
  {
    v21 = *&a2[v20];
  }

  else
  {
    v21 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 44, v21, 0);
  v22 = &a2[-*a2];
  if (*v22 >= 0x2Bu && (v23 = *(v22 + 21)) != 0)
  {
    v24 = *&a2[v23];
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 42, v24, 1);
  v26 = &a2[-*a2];
  if (*v26 >= 0x21u)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v25 = *&a2[v27];
    }

    else
    {
      v25 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 32, v25, 1);
  v28 = &a2[-*a2];
  if (*v28 >= 0x13u && (v29 = *(v28 + 9)) != 0)
  {
    v30 = *&a2[v29];
  }

  else
  {
    v30 = 16;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, v30, 16);
  v31 = &a2[-*a2];
  if (*v31 >= 0xDu && (v32 = *(v31 + 6)) != 0)
  {
    v33 = *&a2[v32];
  }

  else
  {
    v33 = 1;
  }

  v34 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v33, 1);
  v35 = &a2[-*a2];
  if (*v35 >= 0xBu)
  {
    v36 = *(v35 + 5);
    if (v36)
    {
      v34 = *&a2[v36];
    }

    else
    {
      v34 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v34, 1);
  if (v134)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 94, v134);
  }

  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 92, v8);
  }

  v37 = &a2[-*a2];
  if (*v37 >= 0x59u && (v38 = *(v37 + 44)) != 0)
  {
    v39 = *&a2[v38];
  }

  else
  {
    v39 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 88, v39, 0);
  v40 = &a2[-*a2];
  if (*v40 >= 0x57u && (v41 = *(v40 + 43)) != 0)
  {
    v42 = *&a2[v41];
  }

  else
  {
    v42 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 86, v42, 0);
  if (v133)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 60, v133);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v9);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 52, v10);
  }

  v43 = &a2[-*a2];
  v44 = 1.0;
  if (*v43 >= 0x31u)
  {
    v45 = *(v43 + 24);
    if (v45)
    {
      v44 = *&a2[v45];
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 48, v44, 1.0);
  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v11);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, String);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v13);
  }

  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v14);
  }

  v46 = &a2[-*a2];
  if (*v46 >= 0x39u && (v47 = *(v46 + 28)) != 0)
  {
    v48 = *&a2[v47];
  }

  else
  {
    v48 = 0;
  }

  v49 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 56, v49, 0);
  v50 = &a2[-*a2];
  if (*v50 >= 0x37u && (v51 = *(v50 + 27)) != 0)
  {
    v52 = *&a2[v51];
  }

  else
  {
    v52 = 0;
  }

  v53 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v52);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 54, v53, 0);
  v54 = &a2[-*a2];
  v56 = *v54 >= 0x5Bu && (v55 = *(v54 + 45)) != 0 && a2[v55] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 90, v56, 0);
  v57 = &a2[-*a2];
  v59 = *v57 >= 0x55u && (v58 = *(v57 + 42)) != 0 && a2[v58] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 84, v59, 0);
  v60 = &a2[-*a2];
  v62 = *v60 >= 0x53u && (v61 = *(v60 + 41)) != 0 && a2[v61] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 82, v62, 0);
  v63 = &a2[-*a2];
  v65 = *v63 >= 0x51u && (v64 = *(v63 + 40)) != 0 && a2[v64] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 80, v65, 0);
  v66 = &a2[-*a2];
  if (*v66 >= 0x4Fu && (v67 = *(v66 + 39)) != 0)
  {
    v68 = a2[v67];
  }

  else
  {
    v68 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 78, v68, 255);
  v69 = &a2[-*a2];
  if (*v69 >= 0x4Du && (v70 = *(v69 + 38)) != 0)
  {
    v71 = a2[v70];
    if (v71 >= 8)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v71 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 76, v71, 0);
  v72 = &a2[-*a2];
  v74 = *v72 >= 0x4Bu && (v73 = *(v72 + 37)) != 0 && a2[v73] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 74, v74, 0);
  v75 = &a2[-*a2];
  if (*v75 >= 0x49u && (v76 = *(v75 + 36)) != 0)
  {
    v77 = a2[v76];
    if (v77 >= 0x10)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v77 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 72, v77, 0);
  v78 = &a2[-*a2];
  v80 = *v78 >= 0x47u && (v79 = *(v78 + 35)) != 0 && a2[v79] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 70, v80, 0);
  v81 = &a2[-*a2];
  if (*v81 >= 0x45u && (v82 = *(v81 + 34)) != 0)
  {
    v83 = a2[v82];
    if (v83 >= 3)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v83 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 68, v83, 0);
  v84 = &a2[-*a2];
  v86 = *v84 >= 0x43u && (v85 = *(v84 + 33)) != 0 && a2[v85] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 66, v86, 0);
  v87 = &a2[-*a2];
  v89 = *v87 >= 0x41u && (v88 = *(v87 + 32)) != 0 && a2[v88] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, v89, 0);
  v90 = &a2[-*a2];
  v92 = *v90 >= 0x3Fu && (v91 = *(v90 + 31)) != 0 && a2[v91] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 62, v92, 0);
  v93 = &a2[-*a2];
  v95 = *v93 >= 0x33u && (v94 = *(v93 + 25)) != 0 && a2[v94] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, v95, 0);
  v96 = &a2[-*a2];
  v98 = *v96 >= 0x29u && (v97 = *(v96 + 20)) != 0 && a2[v97] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, v98, 0);
  v99 = &a2[-*a2];
  v101 = *v99 >= 0x27u && (v100 = *(v99 + 19)) != 0 && a2[v100] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v101, 0);
  v102 = &a2[-*a2];
  v104 = *v102 < 0x25u || (v103 = *(v102 + 18)) == 0 || a2[v103] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v104, 1);
  v105 = &a2[-*a2];
  if (*v105 >= 0x23u && (v106 = *(v105 + 17)) != 0)
  {
    v107 = a2[v106];
    if (v107 >= 2)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v107 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v107, 0);
  v108 = &a2[-*a2];
  if (*v108 >= 0x1Fu && (v109 = *(v108 + 15)) != 0)
  {
    v110 = a2[v109];
    if (v110 >= 4)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v110 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, v110, 0);
  v111 = &a2[-*a2];
  if (*v111 >= 0x1Du && (v112 = *(v111 + 14)) != 0)
  {
    v113 = a2[v112];
    if (v113 >= 2)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v113 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v113, 0);
  v114 = &a2[-*a2];
  if (*v114 >= 0x1Bu && (v115 = *(v114 + 13)) != 0)
  {
    v116 = a2[v115];
    if (v116 >= 4)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v116 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v116, 0);
  v117 = &a2[-*a2];
  if (*v117 >= 0x19u && (v118 = *(v117 + 12)) != 0)
  {
    v119 = a2[v118];
    if (v119 >= 3)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v119 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v119, 0);
  v120 = &a2[-*a2];
  if (*v120 >= 0x17u && (v121 = *(v120 + 11)) != 0)
  {
    v122 = a2[v121];
    if (v122 >= 2)
    {
LABEL_210:
      abort();
    }
  }

  else
  {
    v122 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v122, 0);
  v123 = &a2[-*a2];
  v125 = *v123 >= 0x15u && (v124 = *(v123 + 10)) != 0 && a2[v124] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v125, 0);
  v126 = &a2[-*a2];
  if (*v126 >= 0x11u && (v127 = *(v126 + 8)) != 0)
  {
    v128 = a2[v127];
    if (v128 >= 4)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v128 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v128, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v130 - v131 + v132);
}

uint64_t Mtl::CloneTileRenderPipelineDescriptor<Mtl::TileRenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x1Du && (v7 = *(v6 + 14)) != 0)
  {
    VectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[v7 + *&a2[v7]], &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0x1Bu && *&a2[v5 + 26])
  {
    v8 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 26] + *&a2[*&a2[v5 + 26]]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0x15u && *&a2[v5 + 20])
  {
    v39 = &a2[*&a2[v5 + 20] + *&a2[*&a2[v5 + 20]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneTileRenderPipelineDescriptorINS3_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v39, &v39, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0x13u && *&a2[v5 + 18])
  {
    v39 = &a2[*&a2[v5 + 18] + *&a2[*&a2[v5 + 18]]];
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl43TileRenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneTileRenderPipelineDescriptorINS3_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v39, &v39, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = &a2[v5];
  if (*v13 >= 0x11u && (v14 = *(v13 + 8)) != 0)
  {
    v15 = *&a2[v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v37 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v15, 0);
  v18 = &a2[-*a2];
  if (*v18 >= 0xFu && (v19 = *(v18 + 7)) != 0)
  {
    v20 = *&a2[v19];
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v20, 1);
  v22 = &a2[-*a2];
  if (*v22 >= 0xDu)
  {
    v23 = *(v22 + 6);
    if (v23)
    {
      v21 = *&a2[v23];
    }

    else
    {
      v21 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v21, 1);
  v24 = &a2[-*a2];
  if (*v24 >= 0xBu && (v25 = *(v24 + 5)) != 0)
  {
    v26 = *&a2[v25];
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v26, 0);
  if (VectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, VectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 20, v9);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v10);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  v27 = &a2[-*a2];
  if (*v27 >= 0x19u && (v28 = *(v27 + 12)) != 0)
  {
    v29 = a2[v28];
    if (v29 >= 3)
    {
      abort();
    }
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v29, 0);
  v30 = &a2[-*a2];
  v32 = *v30 >= 0x17u && (v31 = *(v30 + 11)) != 0 && a2[v31] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v32, 0);
  v33 = &a2[-*a2];
  v35 = *v33 >= 9u && (v34 = *(v33 + 4)) != 0 && a2[v34] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v35, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v37);
}

uint64_t Mtl::CloneMeshRenderPipelineDescriptor<Mtl::MeshRenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x65u && (v7 = *(v6 + 50)) != 0)
  {
    VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[v7 + *&a2[v7]], &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0x63u && *&a2[v5 + 98])
  {
    VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[*&a2[v5 + 98] + *&a2[*&a2[v5 + 98]]], &a2[*&a2[v5 + 98] + *&a2[*&a2[v5 + 98]]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0x61u && *&a2[v5 + 96])
  {
    v133 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 96] + *&a2[*&a2[v5 + 96]]]);
    v5 = -*a2;
  }

  else
  {
    v133 = 0;
  }

  if (*&a2[v5] >= 0x5Fu && *&a2[v5 + 94])
  {
    v132 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 94] + *&a2[*&a2[v5 + 94]]]);
    v5 = -*a2;
  }

  else
  {
    v132 = 0;
  }

  if (*&a2[v5] >= 0x5Du && *&a2[v5 + 92])
  {
    v131 = Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(a1, &a2[*&a2[v5 + 92] + *&a2[*&a2[v5 + 92]]]);
    v5 = -*a2;
  }

  else
  {
    v131 = 0;
  }

  if (*&a2[v5] >= 0x3Du && *&a2[v5 + 60])
  {
    v136 = &a2[*&a2[v5 + 60] + *&a2[*&a2[v5 + 60]]];
    v130 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v136, &v136, a1);
    v5 = -*a2;
  }

  else
  {
    v130 = 0;
  }

  if (*&a2[v5] >= 0x3Bu && *&a2[v5 + 58])
  {
    v136 = &a2[*&a2[v5 + 58] + *&a2[*&a2[v5 + 58]]];
    v129 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE2_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v136, &v136, a1);
    v5 = -*a2;
  }

  else
  {
    v129 = 0;
  }

  if (*&a2[v5] >= 0x39u && *&a2[v5 + 56])
  {
    v136 = &a2[*&a2[v5 + 56] + *&a2[*&a2[v5 + 56]]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE3_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v136, &v136, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0x33u && *&a2[v5 + 50])
  {
    v136 = &a2[*&a2[v5 + 50] + *&a2[*&a2[v5 + 50]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl39RenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE4_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v136, &v136, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0xBu && *&a2[v5 + 10])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 10] + 4 + *&a2[*&a2[v5 + 10]]], *&a2[*&a2[v5 + 10] + *&a2[*&a2[v5 + 10]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    v11 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 70) = 1;
  v14 = *(a1 + 32);
  v126 = v14;
  v127 = *(a1 + 48);
  v128 = *(a1 + 40);
  v15 = &a2[v5];
  if (*v15 >= 0x2Du && (v16 = *(v15 + 22)) != 0)
  {
    v17 = *&a2[v16];
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 44, v17, -1);
  v18 = &a2[-*a2];
  if (*v18 >= 0x2Bu && (v19 = *(v18 + 21)) != 0)
  {
    v20 = *&a2[v19];
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 42, v20, 0);
  v21 = &a2[-*a2];
  if (*v21 >= 0x29u && (v22 = *(v21 + 20)) != 0)
  {
    v23 = *&a2[v22];
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 40, v23, 1);
  v25 = &a2[-*a2];
  if (*v25 >= 0x1Fu)
  {
    v26 = *(v25 + 15);
    if (v26)
    {
      v24 = *&a2[v26];
    }

    else
    {
      v24 = 1;
    }
  }

  v27 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 30, v24, 1);
  v28 = &a2[-*a2];
  if (*v28 >= 0x1Du)
  {
    v29 = *(v28 + 14);
    if (v29)
    {
      v27 = *&a2[v29];
    }

    else
    {
      v27 = 1;
    }
  }

  v30 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 28, v27, 1);
  v31 = &a2[-*a2];
  if (*v31 >= 0x1Bu)
  {
    v32 = *(v31 + 13);
    if (v32)
    {
      v30 = *&a2[v32];
    }

    else
    {
      v30 = 1;
    }
  }

  v33 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, v30, 1);
  v34 = &a2[-*a2];
  if (*v34 >= 0x19u)
  {
    v35 = *(v34 + 12);
    if (v35)
    {
      v33 = *&a2[v35];
    }

    else
    {
      v33 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 24, v33, 1);
  v36 = &a2[-*a2];
  if (*v36 >= 0x17u && (v37 = *(v36 + 11)) != 0)
  {
    v38 = *&a2[v37];
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 22, v38, 0);
  v39 = &a2[-*a2];
  if (*v39 >= 0x15u && (v40 = *(v39 + 10)) != 0)
  {
    v41 = *&a2[v40];
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v41, 0);
  v42 = &a2[-*a2];
  if (*v42 >= 0x13u && (v43 = *(v42 + 9)) != 0)
  {
    v44 = *&a2[v43];
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, v44, 0);
  v45 = &a2[-*a2];
  if (*v45 >= 0x11u && (v46 = *(v45 + 8)) != 0)
  {
    v47 = *&a2[v46];
  }

  else
  {
    v47 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v47, 0);
  if (VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 100, VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 98, VectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v133)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 96, v133);
  }

  if (v132)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 94, v132);
  }

  if (v131)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 92, v131);
  }

  v48 = &a2[-*a2];
  if (*v48 >= 0x59u && (v49 = *(v48 + 44)) != 0)
  {
    v50 = *&a2[v49];
  }

  else
  {
    v50 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 88, v50, 0);
  if (v130)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 60, v130);
  }

  if (v129)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v129);
  }

  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 56, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 50, v9);
  }

  v51 = &a2[-*a2];
  v52 = 1.0;
  if (*v51 >= 0x2Fu)
  {
    v53 = *(v51 + 23);
    if (v53)
    {
      v52 = *&a2[v53];
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 46, v52, 1.0);
  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, String);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v12);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v13);
  }

  v54 = &a2[-*a2];
  if (*v54 >= 0x37u && (v55 = *(v54 + 27)) != 0)
  {
    v56 = *&a2[v55];
  }

  else
  {
    v56 = 0;
  }

  v57 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v56);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 54, v57, 0);
  v58 = &a2[-*a2];
  if (*v58 >= 0x35u && (v59 = *(v58 + 26)) != 0)
  {
    v60 = *&a2[v59];
  }

  else
  {
    v60 = 0;
  }

  v61 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v60);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 52, v61, 0);
  v62 = &a2[-*a2];
  v64 = *v62 >= 0x5Bu && (v63 = *(v62 + 45)) != 0 && a2[v63] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 90, v64, 0);
  v65 = &a2[-*a2];
  v67 = *v65 >= 0x57u && (v66 = *(v65 + 43)) != 0 && a2[v66] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 86, v67, 0);
  v68 = &a2[-*a2];
  v70 = *v68 >= 0x55u && (v69 = *(v68 + 42)) != 0 && a2[v69] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 84, v70, 0);
  v71 = &a2[-*a2];
  v73 = *v71 >= 0x53u && (v72 = *(v71 + 41)) != 0 && a2[v72] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 82, v73, 0);
  v74 = &a2[-*a2];
  if (*v74 >= 0x51u && (v75 = *(v74 + 40)) != 0)
  {
    v76 = a2[v75];
  }

  else
  {
    v76 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 80, v76, 255);
  v77 = &a2[-*a2];
  if (*v77 >= 0x4Fu && (v78 = *(v77 + 39)) != 0)
  {
    v79 = a2[v78];
    if (v79 >= 8)
    {
      goto LABEL_216;
    }
  }

  else
  {
    v79 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 78, v79, 0);
  v80 = &a2[-*a2];
  v82 = *v80 >= 0x4Du && (v81 = *(v80 + 38)) != 0 && a2[v81] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 76, v82, 0);
  v83 = &a2[-*a2];
  if (*v83 >= 0x4Bu && (v84 = *(v83 + 37)) != 0)
  {
    v85 = a2[v84];
    if (v85 >= 0x10)
    {
      goto LABEL_216;
    }
  }

  else
  {
    v85 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 74, v85, 0);
  v86 = &a2[-*a2];
  v88 = *v86 >= 0x49u && (v87 = *(v86 + 36)) != 0 && a2[v87] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 72, v88, 0);
  v89 = &a2[-*a2];
  if (*v89 >= 0x47u && (v90 = *(v89 + 35)) != 0)
  {
    v91 = a2[v90];
    if (v91 >= 3)
    {
LABEL_216:
      abort();
    }
  }

  else
  {
    v91 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 70, v91, 0);
  v92 = &a2[-*a2];
  v94 = *v92 >= 0x45u && (v93 = *(v92 + 34)) != 0 && a2[v93] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 68, v94, 0);
  v95 = &a2[-*a2];
  v97 = *v95 >= 0x43u && (v96 = *(v95 + 33)) != 0 && a2[v96] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 66, v97, 0);
  v98 = &a2[-*a2];
  v100 = *v98 >= 0x41u && (v99 = *(v98 + 32)) != 0 && a2[v99] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, v100, 0);
  v101 = &a2[-*a2];
  v103 = *v101 >= 0x3Fu && (v102 = *(v101 + 31)) != 0 && a2[v102] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 62, v103, 0);
  v104 = &a2[-*a2];
  v106 = *v104 >= 0x31u && (v105 = *(v104 + 24)) != 0 && a2[v105] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, v106, 0);
  v107 = &a2[-*a2];
  v109 = *v107 >= 0x27u && (v108 = *(v107 + 19)) != 0 && a2[v108] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v109, 0);
  v110 = &a2[-*a2];
  v112 = *v110 >= 0x25u && (v111 = *(v110 + 18)) != 0 && a2[v111] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v112, 0);
  v113 = &a2[-*a2];
  v115 = *v113 < 0x23u || (v114 = *(v113 + 17)) == 0 || a2[v114] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v115, 1);
  v116 = &a2[-*a2];
  if (*v116 >= 0x21u && (v117 = *(v116 + 16)) != 0)
  {
    v118 = a2[v117];
    if (v118 >= 2)
    {
      goto LABEL_216;
    }
  }

  else
  {
    v118 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v118, 0);
  v119 = &a2[-*a2];
  v121 = *v119 >= 0xFu && (v120 = *(v119 + 7)) != 0 && a2[v120] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v121, 0);
  v122 = &a2[-*a2];
  v124 = *v122 >= 0xDu && (v123 = *(v122 + 6)) != 0 && a2[v123] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v124, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v126 - v127 + v128);
}

void MTLMetalScriptBuilderImpl::makeFunctionString(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 bitCodeHash];
  v6 = *(v5 + 16);
  v10[0] = *v5;
  v10[1] = v6;
  HashToString(v10, &__p);
  v7 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>((a1 + 88), v5);
  MTLMetalScriptBuilderImpl::makeFunctionString((v7 + 9), a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void HashToString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 0x40uLL);
  for (i = 0; i != 32; ++i)
  {
    v5 = *(a1 + i);
    std::string::push_back(a2, HashToString(MTLUINT256_t)::hexChars[v5 >> 4]);
    std::string::push_back(a2, HashToString(MTLUINT256_t)::hexChars[v5 & 0xF]);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 0x40uLL);
  for (i = 0; i != 32; ++i)
  {
    v5 = *(a1 + i);
    std::string::push_back(a2, HashToString(MTLUINT256_t)::hexChars[v5 >> 4]);
    std::string::push_back(a2, HashToString(MTLUINT256_t)::hexChars[v5 & 0xF]);
  }
}

void sub_185C85868(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::makeFunctionString(uint64_t a1@<X2>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v10, "#");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v11, v7, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_185C85944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::makeFunctionString(unsigned int *a1@<X2>, std::string *a2@<X8>)
{
  if (a1)
  {
    std::operator+<char>();
    v4 = std::string::append(&v11, "#");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100](__p, a1 + 1, *a1);
    if ((v10 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = std::string::append(&v12, v6, v7);
    *a2 = *v8;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_185C85A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptBuilderImpl::addLinkedFunction(MTLMetalScriptBuilderImpl *this, MTLLinkedFunctions *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)[(MTLLinkedFunctions *)a2 functions] count]&& (v4 = [(MTLLinkedFunctions *)a2 functions], v16 = 0u, v17 = 0u, v18 = 0u, v19 = 0u, (v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v17;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      result = MTLMetalScriptBuilderImpl::addFunction(this, *(*(&v16 + 1) + 8 * v8));
      if (!result)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
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
    if ([(NSArray *)[(MTLLinkedFunctions *)a2 privateFunctions] count]&& (v10 = [(MTLLinkedFunctions *)a2 privateFunctions], v16 = 0u, v17 = 0u, v18 = 0u, v19 = 0u, (v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16]) != 0))
    {
      v12 = v11;
      v13 = *v17;
LABEL_13:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        result = MTLMetalScriptBuilderImpl::addFunction(this, *(*(&v16 + 1) + 8 * v14));
        if (!result)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v12)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      result = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLMetalScriptBuilderImpl::addComputePipelineWithDescriptor(NSObject **this, MTLComputePipelineDescriptor *a2)
{
  v2 = *this;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN25MTLMetalScriptBuilderImpl32addComputePipelineWithDescriptorEP28MTLComputePipelineDescriptor_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN25MTLMetalScriptBuilderImpl32addComputePipelineWithDescriptorEP28MTLComputePipelineDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) computeFunction] && MTLMetalScriptBuilderImpl::addLinkedFunction(v2, objc_msgSend(*(a1 + 32), "linkedFunctions")) && MTLMetalScriptBuilderImpl::addFunction(v2, objc_msgSend(*(a1 + 32), "computeFunction")))
  {
    MTLMetalScriptBuilderImpl::addComputePipeline(v2, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t MTLMetalScriptBuilderImpl::addFunction(MTLMetalScriptBuilderImpl *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a2 libraryData];
  if (![a2 airScript])
  {
    MTLMetalScriptBuilderImpl::addLibraryData(a1, v4);
  }

  v5 = [a2 bitCodeHash];
  if (std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 11, v5))
  {
    goto LABEL_4;
  }

  if ([a2 specializationAirScript])
  {
    v8 = *MEMORY[0x1E69E9840];

    return MTLMetalScriptBuilderImpl::addFunctionWithDescriptorInternal(a1, a2, 0, 0);
  }

  else
  {
    if (![a2 stitchingAirScript])
    {
      v10 = (*(*v4 + 344))(v4);
      *v16 = *v10;
      *&v16[16] = v10[1];
      HashToString(v16, &v14);
      std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(a2 "name")]);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v16, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
      }

      else
      {
        *v16 = v14;
      }

      *&v16[24] = *__p;
      v17 = v13;
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      v15 = v5;
      v11 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a1 + 11, v5);
      std::pair<std::string,std::string>::operator=[abi:ne200100]((v11 + 6), v16);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*&v16[24]);
      }

      if ((v16[23] & 0x80000000) != 0)
      {
        operator delete(*v16);
      }

      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

LABEL_4:
      v6 = *MEMORY[0x1E69E9840];
      return 1;
    }

    v9 = *MEMORY[0x1E69E9840];

    return MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(a1, a2, 0, 0);
  }
}

void sub_185C85FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::addComputePipeline(MTLMetalScriptBuilderImpl *this, MTLComputePipelineDescriptor *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  [(MTLComputePipelineDescriptor *)a2 _descriptorPrivate];
  operator new();
}

void sub_185C86200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MTLMetalScriptBuilderImpl::addRenderPipelineWithDescriptor(NSObject **this, MTLRenderPipelineDescriptor *a2)
{
  v2 = *this;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN25MTLMetalScriptBuilderImpl31addRenderPipelineWithDescriptorEP27MTLRenderPipelineDescriptor_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN25MTLMetalScriptBuilderImpl31addRenderPipelineWithDescriptorEP27MTLRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) vertexFunction];
  v5 = *(a1 + 32);
  if (v4)
  {
    if (!MTLMetalScriptBuilderImpl::addLinkedFunction(v2, [v5 vertexLinkedFunctions]))
    {
      goto LABEL_12;
    }

    v6 = MTLMetalScriptBuilderImpl::addFunction(v2, [*(a1 + 32) vertexFunction]);
    if (![*(a1 + 32) fragmentFunction])
    {
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_11:
      MTLMetalScriptBuilderImpl::addRenderPipeline(v2, *(a1 + 32));
    }
  }

  else
  {
    if (![v5 fragmentFunction])
    {
      goto LABEL_11;
    }

    v6 = 1;
  }

  v7 = MTLMetalScriptBuilderImpl::addLinkedFunction(v2, [*(a1 + 32) fragmentLinkedFunctions]);
  if (v6 && v7 && (MTLMetalScriptBuilderImpl::addFunction(v2, [*(a1 + 32) fragmentFunction]) & 1) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  objc_autoreleasePoolPop(v3);
}

void MTLMetalScriptBuilderImpl::addRenderPipeline(MTLMetalScriptBuilderImpl *this, MTLRenderPipelineDescriptor *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  [(MTLRenderPipelineDescriptor *)a2 _descriptorPrivate];
  operator new();
}

void sub_185C86630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::addMeshRenderPipelineWithDescriptor(NSObject **this, MTLMeshRenderPipelineDescriptor *a2)
{
  v2 = *this;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN25MTLMetalScriptBuilderImpl35addMeshRenderPipelineWithDescriptorEP31MTLMeshRenderPipelineDescriptor_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN25MTLMetalScriptBuilderImpl35addMeshRenderPipelineWithDescriptorEP31MTLMeshRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) meshFunction])
  {
    if (!MTLMetalScriptBuilderImpl::addLinkedFunction(v2, [*(a1 + 32) meshLinkedFunctions]))
    {
      goto LABEL_18;
    }

    v4 = MTLMetalScriptBuilderImpl::addFunction(v2, [*(a1 + 32) meshFunction]);
  }

  else
  {
    v4 = 1;
  }

  if ([*(a1 + 32) fragmentFunction])
  {
    if (!MTLMetalScriptBuilderImpl::addLinkedFunction(v2, [*(a1 + 32) fragmentLinkedFunctions]))
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 32);
    if (!v4)
    {
      if (![v5 objectFunction])
      {
        goto LABEL_18;
      }

      v4 = 0;
      goto LABEL_14;
    }

    v4 = MTLMetalScriptBuilderImpl::addFunction(v2, [v5 fragmentFunction]);
  }

  if (![*(a1 + 32) objectFunction])
  {
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    MTLMetalScriptBuilderImpl::addMeshRenderPipeline(v2, *(a1 + 32));
  }

LABEL_14:
  v6 = MTLMetalScriptBuilderImpl::addLinkedFunction(v2, [*(a1 + 32) objectLinkedFunctions]);
  if (v4 && v6 && (MTLMetalScriptBuilderImpl::addFunction(v2, [*(a1 + 32) objectFunction]) & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  objc_autoreleasePoolPop(v3);
}

void MTLMetalScriptBuilderImpl::addMeshRenderPipeline(MTLMetalScriptBuilderImpl *this, MTLMeshRenderPipelineDescriptor *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  [(MTLMeshRenderPipelineDescriptor *)a2 _descriptorPrivate];
  operator new();
}

void sub_185C86B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v17 < 0)
  {
    operator delete(v15);
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v16 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v14);
LABEL_7:
  _Unwind_Resume(a1);
}

void MTLMetalScriptBuilderImpl::addTileRenderPipelineWithDescriptor(NSObject **this, MTLTileRenderPipelineDescriptor *a2)
{
  v2 = *this;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN25MTLMetalScriptBuilderImpl35addTileRenderPipelineWithDescriptorEP31MTLTileRenderPipelineDescriptor_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN25MTLMetalScriptBuilderImpl35addTileRenderPipelineWithDescriptorEP31MTLTileRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) tileFunction] && MTLMetalScriptBuilderImpl::addLinkedFunction(v2, objc_msgSend(*(a1 + 32), "linkedFunctions")) && MTLMetalScriptBuilderImpl::addFunction(v2, objc_msgSend(*(a1 + 32), "tileFunction")))
  {
    MTLMetalScriptBuilderImpl::addTileRenderPipeline(v2, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v3);
}

void MTLMetalScriptBuilderImpl::addTileRenderPipeline(MTLMetalScriptBuilderImpl *this, MTLTileRenderPipelineDescriptor *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  [(MTLTileRenderPipelineDescriptor *)a2 _descriptorPrivate];
  operator new();
}

void sub_185C86ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MTLMetalScriptBuilderImpl::addFunctionWithDescriptor(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN25MTLMetalScriptBuilderImpl25addFunctionWithDescriptorEPU22objcproto11MTLFunction11objc_objectPU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke;
  v5[3] = &unk_1E6EEAEF8;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a1;
  dispatch_sync(v4, v5);
}

void ___ZN25MTLMetalScriptBuilderImpl25addFunctionWithDescriptorEPU22objcproto11MTLFunction11objc_objectPU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = objc_autoreleasePoolPush();
  MTLMetalScriptBuilderImpl::addFunctionWithDescriptorInternal(v2, *(a1 + 32), *(a1 + 40), *(a1 + 48));

  objc_autoreleasePoolPop(v3);
}

uint64_t MTLMetalScriptBuilderImpl::addFunctionWithDescriptorInternal(uint64_t a1, void *a2, void *a3, void *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v8 = [a2 specializationAirScript];
  v9 = [a4 options];
  v10 = v9;
  if (!v8 && (v9 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_168;
  }

  memset(__p, 0, 24);
  if (!v8)
  {
    MTLMetalScriptBuilderImpl::addFunction(a1, a2);
    MTLMetalScriptBuilderImpl::makeFunctionString(a1, a2, &c);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *c.count;
    __p[2] = *&c.hash[2];
    if ((v10 & 1) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_133;
  }

  if (a3)
  {
    v12 = 0;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_33;
    }

    v12 = [a2 specializedFunctionTrackingData];
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  if (a4)
  {
    v13 = [a4 constantValues];
    if (a3)
    {
LABEL_9:
      v14 = [a3 newFunctionWithName:{objc_msgSend(a4, "name")}];
      goto LABEL_19;
    }
  }

  else
  {
    v13 = *(v12 + 16);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v12 + 8);
LABEL_19:
  if (!MTLMetalScriptBuilderImpl::addFunction(a1, v14))
  {
LABEL_33:
    v11 = 0;
    goto LABEL_166;
  }

  *c.count = [v14 bitCodeHash];
  v15 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((a1 + 88), *c.count);
  if (*(v15 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v15[6], v15[7]);
  }

  else
  {
    v112 = *(v15 + 2);
  }

  if (a3)
  {
  }

  buffer_ptr = 0;
  size_ptr = 0;
  v16 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
  if (!v16 || !size_ptr)
  {
    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    goto LABEL_33;
  }

  v17 = v16;
  v18 = (buffer_ptr + *buffer_ptr);
  v19 = (v18 - *v18);
  if (*v19 < 9u || (v20 = v19[4]) == 0)
  {
    dispatch_release(v16);
    v24 = 1;
    goto LABEL_126;
  }

  v21 = (v18 + v20 + *(v18 + v20));
  v22 = (v21 - *v21);
  if (v22[2])
  {
    v23 = (v21 + v22[2] + *(v21 + v22[2]));
  }

  else
  {
    v23 = 0;
  }

  if (*v22 >= 7u && (v25 = v22[3]) != 0)
  {
    v26 = (v21 + v25 + *(v21 + v25));
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = v23 + 1;
    v28 = *v23;
    if (!v26)
    {
      if (v28)
      {
        goto LABEL_58;
      }

      v28 = 0;
      v29 = 0;
      v26 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
    if (!v26)
    {
      v23 = 0;
      v29 = 0;
LABEL_48:
      v31 = 1;
LABEL_49:
      if (!memcmp(v27, v29, v28) || (v31 & 1) != 0)
      {
        goto LABEL_58;
      }

      LODWORD(v30) = *v26;
      goto LABEL_52;
    }
  }

  v29 = v26 + 1;
  v30 = *v26;
  if (v28 == v30)
  {
    v31 = 0;
    goto LABEL_49;
  }

LABEL_52:
  if (v30)
  {
    std::string::basic_string[abi:ne200100](&c, v26 + 1, *v26);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *c.count;
    __p[2] = *&c.hash[2];
    std::string::basic_string[abi:ne200100](&c, v26 + 1, *v26);
    v32 = SHIBYTE(c.hash[3]);
    if ((SHIBYTE(c.hash[3]) & 0x8000000000000000) != 0)
    {
      v32 = *c.hash;
      if (!*c.hash)
      {
        String = 0;
LABEL_175:
        operator delete(*c.count);
        goto LABEL_61;
      }

      p_c = *c.count;
    }

    else
    {
      if (!HIBYTE(c.hash[3]))
      {
        String = 0;
        goto LABEL_61;
      }

      p_c = &c;
    }

    String = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), p_c, v32);
    if ((SHIBYTE(c.hash[3]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_175;
  }

LABEL_58:
  v26 = v23;
  std::string::basic_string[abi:ne200100](&c, v23 + 1, *v23);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  String = 0;
  *__p = *c.count;
  __p[2] = *&c.hash[2];
LABEL_61:
  MTLMetalScriptBuilderImpl::makeFunctionString(v23, &c);
  v35 = SHIBYTE(c.hash[3]);
  if ((SHIBYTE(c.hash[3]) & 0x8000000000000000) == 0)
  {
    if (!HIBYTE(c.hash[3]))
    {
      v37 = 0;
      goto LABEL_71;
    }

    v36 = &c;
    goto LABEL_66;
  }

  v35 = *c.hash;
  if (*c.hash)
  {
    v36 = *c.count;
LABEL_66:
    v37 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), v36, v35);
    if ((SHIBYTE(c.hash[3]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v37 = 0;
LABEL_70:
  operator delete(*c.count);
LABEL_71:
  v38 = MTLMetalScriptSerializer::addFunctionConstants((a1 + 248), v13, v35);
  CC_SHA256_Init(&c);
  if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v112;
  }

  else
  {
    v39 = v112.__r_.__value_.__r.__words[0];
  }

  CC_SHA256_Update(&c, v39, 0x40u);
  Air::ConstantsSpecializationDescriptor::HashImpl(v21, &c);
  flatbuffers::SignatureBuilder::Create(&c, v108);
  v106 = String;
  v116 = *v108[0];
  v117 = *(v108[0] + 1);
  v108[1] = v108[0];
  operator delete(v108[0]);
  std::string::basic_string[abi:ne200100]<0>(&__dst, "SpecializedLib_");
  *c.count = v116;
  *&c.hash[2] = v117;
  HashToString(&c, &v107);
  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v107;
  }

  else
  {
    v40 = v107.__r_.__value_.__r.__words[0];
  }

  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v107.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&__dst, v40, size);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v109 = v42->__r_.__value_.__r.__words[2];
  *v108 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v105 = v38;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v44 = v37;
  if (v109 >= 0)
  {
    v45 = HIBYTE(v109);
  }

  else
  {
    v45 = v108[1];
  }

  std::string::basic_string[abi:ne200100](&c, v45 + 1);
  if ((c.hash[3] & 0x80000000) == 0)
  {
    v46 = &c;
  }

  else
  {
    v46 = *c.count;
  }

  if (v45)
  {
    if (v109 >= 0)
    {
      v47 = v108;
    }

    else
    {
      v47 = v108[0];
    }

    memmove(v46, v47, v45);
  }

  *(v46->count + v45) = 35;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v49 = HIBYTE(__p[2]);
  }

  else
  {
    v49 = __p[1];
  }

  v50 = std::string::append(&c, v48, v49);
  v51 = v50->__r_.__value_.__r.__words[0];
  __dst.__r_.__value_.__r.__words[0] = v50->__r_.__value_.__l.__size_;
  *(__dst.__r_.__value_.__r.__words + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
  v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v51;
  __p[1] = __dst.__r_.__value_.__l.__data_;
  *(&__p[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
  HIBYTE(__p[2]) = v52;
  if (SHIBYTE(c.hash[3]) < 0)
  {
    operator delete(*c.count);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 168), v108);
  if ((v53 & 1) == 0)
  {
    goto LABEL_114;
  }

  v54 = SHIBYTE(v109);
  if ((SHIBYTE(v109) & 0x8000000000000000) != 0)
  {
    v54 = v108[1];
    if (v108[1])
    {
      v55 = v108[0];
      goto LABEL_111;
    }

LABEL_112:
    v56 = 0;
    goto LABEL_113;
  }

  if (!HIBYTE(v109))
  {
    goto LABEL_112;
  }

  v55 = v108;
LABEL_111:
  v56 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), v55, v54);
LABEL_113:
  *(a1 + 318) = 1;
  v57 = *(a1 + 280);
  v58 = *(a1 + 296);
  v59 = *(a1 + 288);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 4, v56);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 6, v44);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 8, v106);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 12, v105);
  c.count[0] = flatbuffers::FlatBufferBuilder::EndTable((a1 + 248), v57 - v58 + v59);
  std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 368), &c);
LABEL_114:
  v60 = [a2 bitCodeHash];
  std::string::basic_string[abi:ne200100](&__dst, v26 + 1, *v26);
  if (SHIBYTE(v109) < 0)
  {
    std::string::__init_copy_ctor_external(&c, v108[0], v108[1]);
  }

  else
  {
    *c.count = *v108;
    *&c.hash[2] = v109;
  }

  *&c.hash[4] = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v107.__r_.__value_.__r.__words[0] = v60;
  v61 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((a1 + 88), v60);
  std::pair<std::string,std::string>::operator=[abi:ne200100]((v61 + 6), &c);
  if (SHIBYTE(c.wbuf[1]) < 0)
  {
    operator delete(*&c.hash[4]);
  }

  if (SHIBYTE(c.hash[3]) < 0)
  {
    operator delete(*c.count);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  dispatch_release(v17);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108[0]);
  }

  v24 = 0;
LABEL_126:
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    v62 = v24;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v11 = v24 ^ 1u;
    goto LABEL_166;
  }

LABEL_133:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v63 = __p;
  }

  else
  {
    v63 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v64 = HIBYTE(__p[2]);
  }

  else
  {
    v64 = __p[1];
  }

  v65 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), v63, v64);
  if ([a2 functionType] == 5)
  {
    v66 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), "supportsFamily(apple6) || supportsFamily(mac2)", 0x2EuLL);
    *(a1 + 318) = 1;
    v67 = *(a1 + 280);
    v68 = *(a1 + 296);
    v69 = *(a1 + 288);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 6, v65);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 4, v66);
    v70 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 248), v67 - v68 + v69);
    v72 = *(a1 + 496);
    v71 = *(a1 + 504);
    if (v72 >= v71)
    {
      v82 = *(a1 + 488);
      v83 = v72 - v82;
      v84 = (v72 - v82) >> 2;
      v85 = v84 + 1;
      if ((v84 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v86 = v71 - v82;
      if (v86 >> 1 > v85)
      {
        v85 = v86 >> 1;
      }

      v87 = v86 >= 0x7FFFFFFFFFFFFFFCLL;
      v88 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v87)
      {
        v88 = v85;
      }

      if (v88)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 488, v88);
      }

      v95 = (v72 - v82) >> 2;
      v96 = (4 * v84);
      v97 = (4 * v84 - 4 * v95);
      *v96 = v70;
      v73 = v96 + 1;
      memcpy(v97, v82, v83);
      v98 = *(a1 + 488);
      *(a1 + 488) = v97;
      *(a1 + 496) = v73;
      *(a1 + 504) = 0;
      if (v98)
      {
        operator delete(v98);
      }
    }

    else
    {
      *v72 = v70;
      v73 = v72 + 4;
    }

    *(a1 + 496) = v73;
  }

  else if ([a2 functionType] == 6)
  {
    v74 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), "supportsFamily(apple6) || supportsFamily(mac2)", 0x2EuLL);
    *(a1 + 318) = 1;
    v75 = *(a1 + 280);
    v76 = *(a1 + 296);
    v77 = *(a1 + 288);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 6, v65);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 4, v74);
    v78 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 248), v75 - v76 + v77);
    v79 = *(a1 + 520);
    v80 = *(a1 + 528);
    if (v79 >= v80)
    {
      v89 = *(a1 + 512);
      v90 = v79 - v89;
      v91 = (v79 - v89) >> 2;
      v92 = v91 + 1;
      if ((v91 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v93 = v80 - v89;
      if (v93 >> 1 > v92)
      {
        v92 = v93 >> 1;
      }

      v87 = v93 >= 0x7FFFFFFFFFFFFFFCLL;
      v94 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v87)
      {
        v94 = v92;
      }

      if (v94)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 512, v94);
      }

      v99 = (v79 - v89) >> 2;
      v100 = (4 * v91);
      v101 = (4 * v91 - 4 * v99);
      *v100 = v78;
      v81 = v100 + 1;
      memcpy(v101, v89, v90);
      v102 = *(a1 + 512);
      *(a1 + 512) = v101;
      *(a1 + 520) = v81;
      *(a1 + 528) = 0;
      if (v102)
      {
        operator delete(v102);
      }
    }

    else
    {
      *v79 = v78;
      v81 = v79 + 4;
    }

    *(a1 + 520) = v81;
  }

LABEL_165:
  v11 = 1;
LABEL_166:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_168:
  v103 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_185C87A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::addLibraryWithDescriptor(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN25MTLMetalScriptBuilderImpl24addLibraryWithDescriptorEPU21objcproto10MTLLibrary11objc_objectP28MTLStitchedLibraryDescriptor_block_invoke;
  block[3] = &unk_1E6EEAD68;
  block[5] = a3;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v3, block);
}

void ___ZN25MTLMetalScriptBuilderImpl24addLibraryWithDescriptorEPU21objcproto10MTLLibrary11objc_objectP28MTLStitchedLibraryDescriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_autoreleasePoolPush();
  MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(v2, 0, *(a1 + 32), *(a1 + 40));

  objc_autoreleasePoolPop(v3);
}

void MTLMetalScriptBuilderImpl::addLibrary(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, const char *a3)
{
  v5 = MTLMetalScriptSerializer::addString((a1 + 248), a3);
  LODWORD(a2) = MTLMetalScriptSerializer::addString((a1 + 248), a2, v6);
  *(a1 + 318) = 1;
  v7 = *(a1 + 288);
  v8 = *(a1 + 280) - *(a1 + 296);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 4, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 6, a2);
  v9 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 248), v8 + v7);
  v11 = *(a1 + 352);
  v10 = *(a1 + 360);
  if (v11 >= v10)
  {
    v13 = *(a1 + 344);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 2;
    v16 = v15 + 1;
    if ((v15 + 1) >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 1 > v16)
    {
      v16 = v17 >> 1;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v19 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 344, v19);
    }

    v20 = (v11 - v13) >> 2;
    v21 = (4 * v15);
    v22 = (4 * v15 - 4 * v20);
    *v21 = v9;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = *(a1 + 344);
    *(a1 + 344) = v22;
    *(a1 + 352) = v12;
    *(a1 + 360) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 4;
  }

  *(a1 + 352) = v12;
}

void MTLMetalScriptBuilderImpl::addLibraryData(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, __int128 *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  HashToString(&v15, &__p);
  if (!a2)
  {
    v8 = "data";
    if (a4)
    {
      v8 = "source";
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    a2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_Path_not_available_for_lib_from_%s_with_UUID_%s", v8, p_p];
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 48), &__p.__r_.__value_.__l.__data_))
  {
    MTLMetalScriptBuilderImpl::addLibrary(a1, a2, &__p);
    std::string::basic_string[abi:ne200100]<0>(&v15, -[flatbuffers::FlatBufferBuilder cStringUsingEncoding:](a2, "cStringUsingEncoding:", 4));
    v14 = &__p;
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), &__p.__r_.__value_.__l.__data_);
    v11 = v10;
    if (*(v10 + 63) < 0)
    {
      operator delete(v10[5]);
    }

    *(v11 + 5) = v15;
    v11[7] = v16;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_185C87EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLMetalScriptBuilderImpl::addLibraryData(MTLMetalScriptBuilderImpl *this, MTLLibraryData *a2)
{
  v4 = (*(*a2 + 352))(a2);
  v5 = (*(*a2 + 344))(a2);
  v6 = (*(*a2 + 312))(a2);

  MTLMetalScriptBuilderImpl::addLibraryData(this, v4, v5, v6);
}

uint64_t MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(uint64_t a1, void *a2, void *a3, void *a4)
{
  v136 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v99 = a2;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    __src = 0;
    v125 = 0;
    v126 = 0;
    obj = [a4 functions];
    v97 = 0;
  }

  else
  {
    if (!a2 || (v99 = a2, (v38 = [a2 stitchedLibraryTrackingData]) == 0))
    {
      v37 = 0;
      goto LABEL_155;
    }

    v127 = 0;
    v128 = 0;
    v129 = 0;
    v125 = 0;
    v126 = 0;
    __src = 0;
    v97 = v38;
    obj = *(v38 + 8);
  }

  v100 = a4;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v7 = [obj countByEnumeratingWithState:&v120 objects:v135 count:{16, v97}];
  if (!v7)
  {
    goto LABEL_43;
  }

  v8 = *v121;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v121 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v120 + 1) + 8 * i);
      if ((MTLMetalScriptBuilderImpl::addFunction(a1, v10) & 1) == 0)
      {
        v37 = 0;
        goto LABEL_151;
      }

      MTLMetalScriptBuilderImpl::makeFunctionString(a1, v10, &__p);
      v11 = SHIBYTE(__p.hash[3]);
      if ((SHIBYTE(__p.hash[3]) & 0x8000000000000000) != 0)
      {
        v11 = *__p.hash;
        if (*__p.hash)
        {
          p_p = *__p.count;
          goto LABEL_14;
        }
      }

      else if (HIBYTE(__p.hash[3]))
      {
        p_p = &__p;
LABEL_14:
        String = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), p_p, v11);
        goto LABEL_16;
      }

      String = 0;
LABEL_16:
      v14 = v125;
      if (v125 >= v126)
      {
        v16 = __src;
        v17 = v125 - __src;
        v18 = (v125 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v126 - __src;
        if ((v126 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
        v22 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v22 = v19;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v22);
        }

        *(4 * v18) = String;
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v23 = __src;
        __src = 0;
        v125 = v15;
        v126 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v125 = String;
        v15 = (v14 + 4);
      }

      v125 = v15;
      if (SHIBYTE(__p.hash[3]) < 0)
      {
        operator delete(*__p.count);
      }

      v24 = [v10 bitCodeHash];
      v25 = v128;
      if (v128 >= v129)
      {
        v27 = (v128 - v127) >> 3;
        if ((v27 + 1) >> 61)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v28 = (v129 - v127) >> 2;
        if (v28 <= v27 + 1)
        {
          v28 = v27 + 1;
        }

        if (v129 - v127 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(&v127, v29);
        }

        *(8 * v27) = v24;
        v26 = (8 * v27 + 8);
        v30 = (8 * v27 - (v128 - v127));
        memcpy(v30, v127, v128 - v127);
        v31 = v127;
        v127 = v30;
        v128 = v26;
        v129 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v128 = v24;
        v26 = v25 + 1;
      }

      v128 = v26;
    }

    v7 = [obj countByEnumeratingWithState:&v120 objects:v135 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_43:
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  if (a3)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v32 = [v100 functionGraphs];
    v34 = [v32 countByEnumeratingWithState:&v110 objects:v134 count:16];
    if (v34)
    {
      v35 = *v111;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v111 != v35)
          {
            objc_enumerationMutation(v32);
          }

          __p.count[0] = MTLMetalScriptSerializer::createGraph((a1 + 248), *(*(&v110 + 1) + 8 * j), v33);
          std::vector<unsigned int>::push_back[abi:ne200100](&v117, &__p);
          *__p.count = (v115 - v114) >> 3;
          std::vector<MTLTagType>::push_back[abi:ne200100](&v114, &__p);
        }

        v34 = [v32 countByEnumeratingWithState:&v110 objects:v134 count:16];
      }

      while (v34);
    }

    goto LABEL_84;
  }

  memset(&__p, 0, 24);
  std::vector<NSObject  {objcproto16OS_dispatch_data}*>::__init_with_size[abi:ne200100]<NSObject  {objcproto16OS_dispatch_data}**,NSObject  {objcproto16OS_dispatch_data}**>(&__p, *(v98 + 16), *(v98 + 24), (*(v98 + 24) - *(v98 + 16)) >> 3);
  v39 = *__p.count;
  v40 = *__p.hash;
  if (*__p.count != *__p.hash)
  {
    while (1)
    {
      v41 = *v39;
      size_ptr[0] = 0;
      buffer_ptr[0] = 0;
      map = dispatch_data_create_map(v41, buffer_ptr, size_ptr);
      if (!map || size_ptr[0] == 0)
      {
        break;
      }

      v44 = (buffer_ptr[0] + *buffer_ptr[0]);
      v45 = (v44 - *v44);
      if (*v45 >= 9u && (v46 = v45[4]) != 0)
      {
        v47 = v44 + v46 + *(v44 + v46);
      }

      else
      {
        v47 = 0;
      }

      v48 = &v47[-*v47];
      if (*v48 < 7u || (v49 = *(v48 + 3)) == 0)
      {
        dispatch_release(map);
        break;
      }

      v50 = Mtl::FunctionStitching::CloneGraph<Air::FunctionStitching::Graph>(a1 + 248, &v47[v49 + *&v47[v49]]);
      v51 = v118;
      if (v118 >= v119)
      {
        v53 = v117;
        v54 = v118 - v117;
        v55 = (v118 - v117) >> 2;
        v56 = v55 + 1;
        if ((v55 + 1) >> 62)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v57 = v119 - v117;
        if ((v119 - v117) >> 1 > v56)
        {
          v56 = v57 >> 1;
        }

        if (v57 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v58 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v56;
        }

        if (v58)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v117, v58);
        }

        *(4 * v55) = v50;
        v52 = 4 * v55 + 4;
        memcpy(0, v53, v54);
        v59 = v117;
        v117 = 0;
        v118 = v52;
        v119 = 0;
        if (v59)
        {
          operator delete(v59);
        }
      }

      else
      {
        *v118 = v50;
        v52 = (v51 + 4);
      }

      v118 = v52;
      v107.__r_.__value_.__r.__words[0] = (v115 - v114) >> 3;
      std::vector<MTLTagType>::push_back[abi:ne200100](&v114, &v107);
      if (++v39 == v40)
      {
        v39 = *__p.count;
        goto LABEL_82;
      }
    }

    if (*__p.count)
    {
      *__p.hash = *__p.count;
      operator delete(*__p.count);
    }

    v37 = 0;
    goto LABEL_147;
  }

LABEL_82:
  if (v39)
  {
    *__p.hash = v39;
    operator delete(v39);
  }

LABEL_84:
  v60 = 126 - 2 * __clz((v128 - v127) >> 3);
  if (v128 == v127)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,false>(v127, v128, v61, 1);
  v62 = 126 - 2 * __clz((v115 - v114) >> 3);
  *__p.count = a1;
  *__p.hash = &v117;
  if (v115 == v114)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,false>(v114, v115, &__p, v63, 1);
  CC_SHA256_Init(&__p);
  v64 = v127;
  v65 = v128;
  while (v64 != v65)
  {
    CC_SHA256_Update(&__p, *v64++, 0x20u);
  }

  v66 = v114;
  v67 = v115;
  while (v66 != v67)
  {
    Mtl::FunctionStitching::Graph::HashImpl((*(a1 + 296) + *(a1 + 280) - *(a1 + 296) + *(a1 + 288) - *(v117 + *v66)), &__p);
    v66 += 8;
  }

  flatbuffers::SignatureBuilder::Create(&__p, buffer_ptr);
  *size_ptr = *buffer_ptr[0];
  v133 = *(buffer_ptr[0] + 1);
  buffer_ptr[1] = buffer_ptr[0];
  operator delete(buffer_ptr[0]);
  std::string::basic_string[abi:ne200100]<0>(&v107, "StitchedLib_");
  *__p.count = *size_ptr;
  *&__p.hash[2] = v133;
  HashToString(&__p, &v106);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = &v106;
  }

  else
  {
    v68 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v70 = std::string::append(&v107, v68, size);
  v71 = *&v70->__r_.__value_.__l.__data_;
  v109 = v70->__r_.__value_.__r.__words[2];
  *buffer_ptr = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  v72 = v100;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 208), buffer_ptr);
  if (v73)
  {
    v74 = SHIBYTE(v109);
    if ((SHIBYTE(v109) & 0x8000000000000000) != 0)
    {
      v74 = buffer_ptr[1];
      if (!buffer_ptr[1])
      {
        goto LABEL_113;
      }

      v75 = buffer_ptr[0];
LABEL_112:
      v76 = flatbuffers::FlatBufferBuilder::CreateString((a1 + 248), v75, v74);
    }

    else
    {
      if (HIBYTE(v109))
      {
        v75 = buffer_ptr;
        goto LABEL_112;
      }

LABEL_113:
      v76 = 0;
    }

    if (v125 == __src)
    {
      v77 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
    }

    else
    {
      v77 = __src;
    }

    v78 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((a1 + 248), v77, (v125 - __src) >> 2);
    if (v118 == v117)
    {
      v79 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Graph>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Graph>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Graph>> const&)::t;
    }

    else
    {
      v79 = v117;
    }

    v80 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((a1 + 248), v79, (v118 - v117) >> 2);
    *(a1 + 318) = 1;
    v81 = *(a1 + 280);
    v82 = *(a1 + 296);
    v83 = *(a1 + 288);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 4, v76);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 6, v78);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 248), 8, v80);
    __p.count[0] = flatbuffers::FlatBufferBuilder::EndTable((a1 + 248), v81 - v82 + v83);
    std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 392), &__p);
    v72 = v100;
  }

  if (a3)
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v84 = [v72 functionGraphs];
    v85 = [v84 countByEnumeratingWithState:&v102 objects:v130 count:16];
    if (v85)
    {
      v86 = *v103;
      do
      {
        for (k = 0; k != v85; ++k)
        {
          if (*v103 != v86)
          {
            objc_enumerationMutation(v84);
          }

          v88 = [a3 newFunctionWithName:{objc_msgSend(*(*(&v102 + 1) + 8 * k), "functionName")}];
          v89 = [v88 bitCodeHash];
          v90 = [objc_msgSend(v88 "name")];
          if (SHIBYTE(v109) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, buffer_ptr[0], buffer_ptr[1]);
          }

          else
          {
            *__p.count = *buffer_ptr;
            *&__p.hash[2] = v109;
          }

          *&__p.hash[4] = v90;
          v107.__r_.__value_.__r.__words[0] = v89;
          v91 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((a1 + 88), v89);
          std::pair<std::string,std::string>::operator=[abi:ne200100]<std::string,char const*,0>((v91 + 6), &__p);
          if (SHIBYTE(__p.hash[3]) < 0)
          {
            operator delete(*__p.count);
          }
        }

        v85 = [v84 countByEnumeratingWithState:&v102 objects:v130 count:16];
      }

      while (v85);
    }
  }

  else
  {
    v92 = [v99 bitCodeHash];
    v93 = [objc_msgSend(v99 "name")];
    if (SHIBYTE(v109) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buffer_ptr[0], buffer_ptr[1]);
    }

    else
    {
      *__p.count = *buffer_ptr;
      *&__p.hash[2] = v109;
    }

    *&__p.hash[4] = v93;
    v107.__r_.__value_.__r.__words[0] = v92;
    v94 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((a1 + 88), v92);
    std::pair<std::string,std::string>::operator=[abi:ne200100]<std::string,char const*,0>((v94 + 6), &__p);
    if (SHIBYTE(__p.hash[3]) < 0)
    {
      operator delete(*__p.count);
    }
  }

  if (SHIBYTE(v109) < 0)
  {
    operator delete(buffer_ptr[0]);
  }

  v37 = 1;
LABEL_147:
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

LABEL_151:
  if (__src)
  {
    v125 = __src;
    operator delete(__src);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

LABEL_155:
  v95 = *MEMORY[0x1E69E9840];
  return v37;
}

void sub_185C88A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a56)
  {
    operator delete(a56);
  }

  if (a59)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,std::string>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t Air::ConstantsSpecializationDescriptor::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantsSpecializationDescriptor", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    data = 0;
    v15 = &data;
    v17 = c;
    v16 = 4;
  }

  CC_SHA256_Update(v17, v15, v16);
  v18 = (a1 - *a1);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = (a1 + v19 + *(a1 + v19));
    data = *v20;
    result = CC_SHA256_Update(c, &data, 4u);
    v22 = *v20;
    if (v22)
    {
      v23 = v20 + 1;
      v24 = v20 + 1;
      do
      {
        v25 = *v24++;
        result = Air::FunctionConstantValue::HashImpl((v23 + v25), c);
        v23 = v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

void sub_185C88DA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::FunctionStitching::CloneGraph<Air::FunctionStitching::Graph>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0xBu && (v7 = *(v6 + 5)) != 0)
  {
    v19 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching9AttributeEEEZNS4_10CloneGraphIN3Air17FunctionStitching5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_INS4_5GraphEEEE4typeERS0_PKSE_EUlmPvE_vEENS2_INS_6VectorISE_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v19 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching4NodeEEEZNS4_10CloneGraphIN3Air17FunctionStitching5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_INS4_5GraphEEEE4typeERS0_PKSE_EUlmPvE0_vEENS2_INS_6VectorISE_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v8);
  }

  v16 = &a2[-*a2];
  if (*v16 >= 9u)
  {
    v17 = *(v16 + 4);
    if (v17)
    {
      LODWORD(v19) = *&a2[v17];
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 8, &v19);
    }
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t Mtl::FunctionStitching::Graph::HashImpl(Mtl::FunctionStitching::Graph *this, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.Graph", 0x1Bu);
  v4 = (this - *this);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (this + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (this - *this);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (this + v12 + *(this + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = v13 + 1;
      v16 = v13 + 1;
      do
      {
        v17 = *v16++;
        Mtl::FunctionStitching::Node::HashImpl((v15 + v17), c);
        v15 = v16;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v18 = (this - *this);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "Mtl.FunctionStitching.NodeId", 0x1Cu);
    data = *(this + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (this - *this);
  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
  {
    v23 = (this + v22 + *(this + v22));
    data = *v23;
    result = CC_SHA256_Update(c, &data, 4u);
    v25 = *v23;
    if (v25)
    {
      v26 = v23 + 1;
      v27 = v23 + 1;
      do
      {
        v28 = *v27++;
        result = Mtl::FunctionStitching::Attribute::HashImpl((v26 + v28), c);
        v26 = v27;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}