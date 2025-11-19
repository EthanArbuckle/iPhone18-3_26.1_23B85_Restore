@interface GLPFunctionObject
@end

@implementation GLPFunctionObject

uint64_t __deserialize_GLPFunctionObject_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 168, "Deserialized");
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  v3 = *(a1 + 32);
  v69 = MEMORY[0x277D85DD0];
  v70 = 0x40000000;
  v71 = __deserialize_GLPType_block_invoke;
  v72 = &__block_descriptor_tmp_12;
  v73 = v3;
  deserialize_pointer(v3, &v69, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 260);
  v6 = *(v4 + 256);
  if (v5 >= v6)
  {
    goto LABEL_141;
  }

  v7 = *(v4 + 248);
  v8 = *(v7 + v5);
  v9 = *(v7 + v5);
  v10 = v5 + 1;
  *(v4 + 260) = v5 + 1;
  if (v8 < 0)
  {
    v11 = (v9 >> 1) & 7;
    if (v11 > 3)
    {
      if (v11 <= 5)
      {
        v13 = v5 + 5;
        if (v11 == 4)
        {
          if (v13 > v6)
          {
            goto LABEL_141;
          }

          v14 = *(v7 + v10);
          *(v4 + 260) = v5 + 5;
          if (v5 + 5 >= v6)
          {
            goto LABEL_141;
          }

          v15 = *(v7 + (v5 + 5));
          LODWORD(v10) = v5 + 6;
        }

        else
        {
          if (v13 > v6)
          {
            goto LABEL_141;
          }

          v14 = *(v7 + v10);
          v10 = (v5 + 5);
          *(v4 + 260) = v10;
          if (v10 + 2 > v6)
          {
            goto LABEL_141;
          }

          v15 = *(v7 + v10);
          LODWORD(v10) = v5 + 7;
        }

        *(v4 + 260) = v10;
        v12 = v14 | (v15 << 32);
        goto LABEL_31;
      }

      if (v11 == 6)
      {
        if (v5 + 5 > v6)
        {
          goto LABEL_141;
        }

        v17 = *(v7 + v10);
        *(v4 + 260) = v5 + 5;
        LODWORD(v10) = v5 + 8;
        if (v5 + 8 > v6)
        {
          goto LABEL_141;
        }

        v18 = *(v7 + (v5 + 5)) | (*(v7 + (v5 + 5) + 2) << 16);
        *(v4 + 260) = v10;
        v12 = v17 | (v18 << 32);
        goto LABEL_31;
      }

      if (v5 + 9 > v6)
      {
        goto LABEL_141;
      }

      v12 = *(v7 + v10);
      LODWORD(v10) = v5 + 9;
    }

    else if (v11 > 1)
    {
      if (v11 == 2)
      {
        v16 = v5 + 4;
        if (v16 > v6)
        {
          goto LABEL_141;
        }

        v12 = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
        *(v4 + 260) = v16;
        LODWORD(v10) = v16;
        goto LABEL_31;
      }

      if (v5 + 5 > v6)
      {
        goto LABEL_141;
      }

      v12 = *(v7 + v10);
      LODWORD(v10) = v5 + 5;
    }

    else if (v11)
    {
      if (v5 + 3 > v6)
      {
        goto LABEL_141;
      }

      v12 = *(v7 + v10);
      LODWORD(v10) = v5 + 3;
    }

    else
    {
      if (v10 >= v6)
      {
        goto LABEL_141;
      }

      v12 = *(v7 + v10);
      LODWORD(v10) = v5 + 2;
    }

    *(v4 + 260) = v10;
LABEL_31:
    v19 = -256 << (8 * v11);
    if (v8)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v9 = v12 | v20;
  }

  *(v2 + 8) = v9;
  if ((v9 & 0x4000) == 0)
  {
    goto LABEL_70;
  }

  if (v10 >= v6)
  {
    goto LABEL_141;
  }

  v21 = *(v7 + v10);
  v22 = *(v7 + v10);
  v23 = v10 + 1;
  *(v4 + 260) = v23;
  if (v21 < 0)
  {
    v24 = (v22 >> 1) & 7;
    if (v24 > 3)
    {
      if (v24 <= 5)
      {
        v26 = v10 + 5;
        if (v24 == 4)
        {
          if (v26 > v6)
          {
            goto LABEL_141;
          }

          LODWORD(v7) = *(v7 + v23);
          *(v4 + 260) = v10 + 5;
          if (v10 + 5 >= v6)
          {
            goto LABEL_141;
          }

          v25 = v10 + 6;
        }

        else
        {
          if (v26 > v6)
          {
            goto LABEL_141;
          }

          LODWORD(v7) = *(v7 + v23);
          v28 = (v10 + 5);
          *(v4 + 260) = v28;
          if (v28 + 2 > v6)
          {
            goto LABEL_141;
          }

          v25 = v10 + 7;
        }

        goto LABEL_64;
      }

      if (v24 != 6)
      {
        if (v10 + 9 > v6)
        {
          goto LABEL_141;
        }

        v7 = *(v7 + v23);
        v25 = v10 + 9;
        goto LABEL_64;
      }

      if (v10 + 5 > v6)
      {
        goto LABEL_141;
      }

      LODWORD(v7) = *(v7 + v23);
      *(v4 + 260) = v10 + 5;
      v27 = v10 + 8;
      if (v27 > v6)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v24 <= 1)
      {
        if (v24)
        {
          if (v10 + 3 > v6)
          {
            goto LABEL_141;
          }

          LODWORD(v7) = *(v7 + v23);
          v25 = v10 + 3;
        }

        else
        {
          if (v23 >= v6)
          {
            goto LABEL_141;
          }

          LODWORD(v7) = *(v7 + v23);
          v25 = v10 + 2;
        }

LABEL_64:
        *(v4 + 260) = v25;
        goto LABEL_65;
      }

      if (v24 != 2)
      {
        if (v10 + 5 > v6)
        {
          goto LABEL_141;
        }

        LODWORD(v7) = *(v7 + v23);
        v25 = v10 + 5;
        goto LABEL_64;
      }

      v27 = v10 + 4;
      if (v27 > v6)
      {
        goto LABEL_141;
      }

      LODWORD(v7) = *(v7 + v23) | (*(v7 + v23 + 2) << 16);
    }

    *(v4 + 260) = v27;
LABEL_65:
    if (v21)
    {
      v29 = -256 << (8 * v24);
    }

    else
    {
      LODWORD(v29) = 0;
    }

    LODWORD(v22) = v7 | v29;
  }

  *(v2 + 92) = v22;
LABEL_70:
  *(v2 + 24) = deserialize_GLPString(v4);
  *(v2 + 32) = v30;
  *(v2 + 40) = deserialize_GLPString(*(a1 + 32));
  *(v2 + 48) = v31;
  v32 = *(a1 + 32);
  v69 = MEMORY[0x277D85DD0];
  v70 = 0x40000000;
  v71 = __deserialize_GLPASTNode_block_invoke;
  v72 = &__block_descriptor_tmp_16_0;
  v73 = v32;
  deserialize_pointer(v32, &v69, (v2 + 56));
  v33 = *(a1 + 32);
  v69 = MEMORY[0x277D85DD0];
  v70 = 0x40000000;
  v71 = __deserialize_GLPASTNode_block_invoke;
  v72 = &__block_descriptor_tmp_16_0;
  v73 = v33;
  deserialize_pointer(v33, &v69, (v2 + 64));
  v4 = *(a1 + 32);
  v34 = *(v4 + 260);
  v35 = *(v4 + 256);
  if (v34 >= v35)
  {
    goto LABEL_141;
  }

  v36 = *(v4 + 248);
  v37 = *(v36 + v34);
  v38 = *(v36 + v34);
  v39 = v34 + 1;
  *(v4 + 260) = v34 + 1;
  if (v37 < 0)
  {
    v40 = (v38 >> 1) & 7;
    if (((v38 >> 1) & 7) > 3)
    {
      if (((v38 >> 1) & 7) > 5)
      {
        if (v40 == 6)
        {
          if (v34 + 5 > v35)
          {
            goto LABEL_141;
          }

          LODWORD(v36) = *(v36 + v39);
          *(v4 + 260) = v34 + 5;
          v41 = v34 + 8;
          if (v41 > v35)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (v34 + 9 > v35)
          {
            goto LABEL_141;
          }

          v36 = *(v36 + v39);
          v41 = v34 + 9;
        }
      }

      else
      {
        v42 = v34 + 5;
        if (v40 == 4)
        {
          if (v42 > v35)
          {
            goto LABEL_141;
          }

          LODWORD(v36) = *(v36 + v39);
          *(v4 + 260) = v34 + 5;
          if (v34 + 5 >= v35)
          {
            goto LABEL_141;
          }

          v41 = v34 + 6;
        }

        else
        {
          if (v42 > v35)
          {
            goto LABEL_141;
          }

          LODWORD(v36) = *(v36 + v39);
          v43 = (v34 + 5);
          *(v4 + 260) = v43;
          if (v43 + 2 > v35)
          {
            goto LABEL_141;
          }

          v41 = v34 + 7;
        }
      }
    }

    else if (((v38 >> 1) & 7) > 1)
    {
      if (v40 == 2)
      {
        v41 = v34 + 4;
        if (v41 > v35)
        {
          goto LABEL_141;
        }

        LODWORD(v36) = *(v36 + v39) | (*(v36 + v39 + 2) << 16);
      }

      else
      {
        if (v34 + 5 > v35)
        {
          goto LABEL_141;
        }

        LODWORD(v36) = *(v36 + v39);
        v41 = v34 + 5;
      }
    }

    else if (v40)
    {
      if (v34 + 3 > v35)
      {
        goto LABEL_141;
      }

      LODWORD(v36) = *(v36 + v39);
      v41 = v34 + 3;
    }

    else
    {
      if (v39 >= v35)
      {
        goto LABEL_141;
      }

      LODWORD(v36) = *(v36 + v39);
      v41 = v34 + 2;
    }

    *(v4 + 260) = v41;
    v44 = -256 << (8 * v40);
    if (v37)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    LODWORD(v38) = v36 | v45;
  }

  *(v2 + 88) = v38;
  v69 = MEMORY[0x277D85DD0];
  v70 = 0x40000000;
  v71 = __deserialize_GLPVariableObject_block_invoke;
  v72 = &__block_descriptor_tmp_6;
  v73 = v4;
  deserialize_pointer(v4, &v69, (v2 + 72));
  *(v2 + 80) = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v38, "Deserialized");
  if (v38)
  {
    v46 = 0;
    v47 = MEMORY[0x277D85DD0];
    v48 = 8 * v38;
    do
    {
      v49 = *(a1 + 32);
      v50 = *(v2 + 80);
      v69 = v47;
      v70 = 0x40000000;
      v71 = __deserialize_GLPVariableObject_block_invoke;
      v72 = &__block_descriptor_tmp_6;
      v73 = v49;
      deserialize_pointer(v49, &v69, (v50 + v46));
      v46 += 8;
    }

    while (v48 != v46);
  }

  v4 = *(a1 + 32);
  v51 = *(v4 + 260);
  v52 = *(v4 + 256);
  if (v51 >= v52)
  {
LABEL_141:
    glpDeserialError(v4, 1u);
  }

  v53 = *(v4 + 248);
  v54 = *(v53 + v51);
  v55 = *(v53 + v51);
  v56 = v51 + 1;
  *(v4 + 260) = v51 + 1;
  if (v54 < 0)
  {
    v57 = (v55 >> 1) & 7;
    if (((v55 >> 1) & 7) > 3)
    {
      if (((v55 >> 1) & 7) > 5)
      {
        if (v57 == 6)
        {
          if (v51 + 5 <= v52)
          {
            LODWORD(v53) = *(v53 + v56);
            *(v4 + 260) = v51 + 5;
            v58 = v51 + 8;
            if (v58 <= v52)
            {
LABEL_133:
              *(v4 + 260) = v58;
              v61 = -256 << (8 * v57);
              if (v54)
              {
                v62 = v61;
              }

              else
              {
                v62 = 0;
              }

              LODWORD(v55) = v53 | v62;
              goto LABEL_137;
            }
          }
        }

        else if (v51 + 9 <= v52)
        {
          v53 = *(v53 + v56);
          v58 = v51 + 9;
          goto LABEL_133;
        }
      }

      else
      {
        v59 = v51 + 5;
        if (v57 == 4)
        {
          if (v59 <= v52)
          {
            LODWORD(v53) = *(v53 + v56);
            *(v4 + 260) = v51 + 5;
            if (v51 + 5 < v52)
            {
              v58 = v51 + 6;
              goto LABEL_133;
            }
          }
        }

        else if (v59 <= v52)
        {
          LODWORD(v53) = *(v53 + v56);
          v60 = (v51 + 5);
          *(v4 + 260) = v60;
          if (v60 + 2 <= v52)
          {
            v58 = v51 + 7;
            goto LABEL_133;
          }
        }
      }
    }

    else if (((v55 >> 1) & 7) > 1)
    {
      if (v57 == 2)
      {
        v58 = v51 + 4;
        if (v58 <= v52)
        {
          LODWORD(v53) = *(v53 + v56) | (*(v53 + v56 + 2) << 16);
          goto LABEL_133;
        }
      }

      else if (v51 + 5 <= v52)
      {
        LODWORD(v53) = *(v53 + v56);
        v58 = v51 + 5;
        goto LABEL_133;
      }
    }

    else if (v57)
    {
      if (v51 + 3 <= v52)
      {
        LODWORD(v53) = *(v53 + v56);
        v58 = v51 + 3;
        goto LABEL_133;
      }
    }

    else if (v56 < v52)
    {
      LODWORD(v53) = *(v53 + v56);
      v58 = v51 + 2;
      goto LABEL_133;
    }

    goto LABEL_141;
  }

LABEL_137:
  *(v2 + 96) = v55;
  *(v2 + 104) = (*(*(v4 + 240) + 8))(**(v4 + 240), 8 * v55, "Deserialized");
  if (v55)
  {
    v63 = 0;
    v64 = MEMORY[0x277D85DD0];
    v65 = 8 * v55;
    do
    {
      v66 = *(a1 + 32);
      v67 = *(v2 + 104);
      v69 = v64;
      v70 = 0x40000000;
      v71 = __deserialize_GLPType_block_invoke;
      v72 = &__block_descriptor_tmp_12;
      v73 = v66;
      deserialize_pointer(v66, &v69, (v67 + v63));
      v63 += 8;
    }

    while (v65 != v63);
  }

  return v2;
}

@end