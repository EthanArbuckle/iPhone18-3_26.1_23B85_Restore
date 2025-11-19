@interface GLPVariableObject
@end

@implementation GLPVariableObject

uint64_t __deserialize_GLPVariableObject_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 160, "Deserialized");
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
  v3 = *(a1 + 32);
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPType_block_invoke;
  v59 = &__block_descriptor_tmp_12;
  v60 = v3;
  deserialize_pointer(v3, &v56, v2);
  v4 = *(a1 + 32);
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPLayoutObject_block_invoke;
  v59 = &__block_descriptor_tmp_3;
  v60 = v4;
  deserialize_pointer(v4, &v56, (v2 + 8));
  v5 = *(a1 + 32);
  v6 = *(v5 + 260);
  v7 = *(v5 + 256);
  if (v6 >= v7)
  {
    goto LABEL_101;
  }

  v8 = *(v5 + 248);
  v9 = *(v8 + v6);
  v10 = *(v8 + v6);
  v11 = v6 + 1;
  *(v5 + 260) = v6 + 1;
  if (v9 < 0)
  {
    v12 = (v10 >> 1) & 7;
    if (v12 <= 3)
    {
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v14 = v6 + 4;
          if (v14 > v7)
          {
            goto LABEL_101;
          }

          v13 = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
        }

        else
        {
          if (v6 + 5 > v7)
          {
            goto LABEL_101;
          }

          v13 = *(v8 + v11);
          v14 = v6 + 5;
        }
      }

      else if (v12)
      {
        if (v6 + 3 > v7)
        {
          goto LABEL_101;
        }

        v13 = *(v8 + v11);
        v14 = v6 + 3;
      }

      else
      {
        if (v11 >= v7)
        {
          goto LABEL_101;
        }

        v13 = *(v8 + v11);
        v14 = v6 + 2;
      }

LABEL_30:
      *(v5 + 260) = v14;
      goto LABEL_31;
    }

    if (v12 > 5)
    {
      if (v12 != 6)
      {
        if (v6 + 9 > v7)
        {
          goto LABEL_101;
        }

        v13 = *(v8 + v11);
        v14 = v6 + 9;
        goto LABEL_30;
      }

      if (v6 + 5 > v7)
      {
        goto LABEL_101;
      }

      v16 = *(v8 + v11);
      v19 = v6 + 5;
      *(v5 + 260) = v6 + 5;
      v18 = v6 + 8;
      if (v18 > v7)
      {
        goto LABEL_101;
      }

      v17 = *(v8 + v19) | (*(v8 + v19 + 2) << 16);
    }

    else
    {
      v15 = v6 + 5;
      if (v12 == 4)
      {
        if (v15 > v7)
        {
          goto LABEL_101;
        }

        v16 = *(v8 + v11);
        *(v5 + 260) = v6 + 5;
        if (v6 + 5 >= v7)
        {
          goto LABEL_101;
        }

        v17 = *(v8 + (v6 + 5));
        v18 = v6 + 6;
      }

      else
      {
        if (v15 > v7)
        {
          goto LABEL_101;
        }

        v16 = *(v8 + v11);
        v20 = (v6 + 5);
        *(v5 + 260) = v20;
        if (v20 + 2 > v7)
        {
          goto LABEL_101;
        }

        v17 = *(v8 + v20);
        v18 = v6 + 7;
      }
    }

    *(v5 + 260) = v18;
    v13 = v16 | (v17 << 32);
LABEL_31:
    v21 = -256 << (8 * v12);
    if (v9)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v10 = v13 | v22;
  }

  *(v2 + 48) = v10;
  *(v2 + 16) = deserialize_GLPString(v5);
  *(v2 + 24) = v23;
  *(v2 + 32) = deserialize_GLPString(*(a1 + 32));
  *(v2 + 40) = v24;
  v5 = *(a1 + 32);
  v25 = *(v5 + 260);
  if (v25 >= *(v5 + 256))
  {
    goto LABEL_101;
  }

  v26 = *(*(v5 + 248) + v25);
  *(v5 + 260) = v25 + 1;
  *(v2 + 56) = v26;
  v27 = *v2;
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPValue_block_invoke;
  v59 = &__block_descriptor_tmp_2;
  v60 = v5;
  v61 = v27;
  deserialize_pointer(v5, &v56, (v2 + 64));
  v28 = *(a1 + 32);
  v29 = *v2;
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPValue_block_invoke;
  v59 = &__block_descriptor_tmp_2;
  v60 = v28;
  v61 = v29;
  deserialize_pointer(v28, &v56, (v2 + 72));
  v30 = *(a1 + 32);
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPInterfaceBlockObject_block_invoke;
  v59 = &__block_descriptor_tmp_9;
  v60 = v30;
  deserialize_pointer(v30, &v56, (v2 + 80));
  v31 = *(a1 + 32);
  v56 = MEMORY[0x277D85DD0];
  v57 = 0x40000000;
  v58 = __deserialize_GLPBufferObject_block_invoke;
  v59 = &__block_descriptor_tmp_7;
  v60 = v31;
  deserialize_pointer(v31, &v56, (v2 + 88));
  v5 = *(a1 + 32);
  v32 = *(v5 + 260);
  v33 = *(v5 + 256);
  if (v32 >= v33)
  {
    goto LABEL_101;
  }

  v34 = *(v5 + 248);
  v35 = *(v34 + v32);
  v36 = *(v34 + v32);
  v37 = v32 + 1;
  *(v5 + 260) = v32 + 1;
  if (v35 < 0)
  {
    v38 = (v36 >> 1) & 7;
    if (v38 > 3)
    {
      if (v38 > 5)
      {
        if (v38 == 6)
        {
          if (v32 + 5 > v33)
          {
            goto LABEL_101;
          }

          LODWORD(v37) = *(v34 + v37);
          *(v5 + 260) = v32 + 5;
          v39 = v32 + 8;
          if (v39 > v33)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v32 + 9 > v33)
          {
            goto LABEL_101;
          }

          v37 = *(v34 + v37);
          v39 = v32 + 9;
        }
      }

      else
      {
        v40 = v32 + 5;
        if (v38 == 4)
        {
          if (v40 > v33)
          {
            goto LABEL_101;
          }

          LODWORD(v37) = *(v34 + v37);
          *(v5 + 260) = v32 + 5;
          if (v32 + 5 >= v33)
          {
            goto LABEL_101;
          }

          v39 = v32 + 6;
        }

        else
        {
          if (v40 > v33)
          {
            goto LABEL_101;
          }

          LODWORD(v37) = *(v34 + v37);
          v41 = (v32 + 5);
          *(v5 + 260) = v41;
          if (v41 + 2 > v33)
          {
            goto LABEL_101;
          }

          v39 = v32 + 7;
        }
      }
    }

    else if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = v32 + 4;
        if (v39 > v33)
        {
          goto LABEL_101;
        }

        LODWORD(v37) = *(v34 + v37) | (*(v34 + v37 + 2) << 16);
      }

      else
      {
        if (v32 + 5 > v33)
        {
          goto LABEL_101;
        }

        LODWORD(v37) = *(v34 + v37);
        v39 = v32 + 5;
      }
    }

    else if (v38)
    {
      if (v32 + 3 > v33)
      {
        goto LABEL_101;
      }

      LODWORD(v37) = *(v34 + v37);
      v39 = v32 + 3;
    }

    else
    {
      if (v37 >= v33)
      {
        goto LABEL_101;
      }

      LODWORD(v37) = *(v34 + v37);
      v39 = v32 + 2;
    }

    *(v5 + 260) = v39;
    v42 = -256 << (8 * v38);
    if (v35)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    LODWORD(v36) = v37 | v43;
  }

  *(v2 + 96) = v36;
  v44 = *(v5 + 260);
  v45 = *(v5 + 256);
  if (v44 >= v45)
  {
    goto LABEL_101;
  }

  v46 = *(v34 + v44);
  v47 = *(v34 + v44);
  v48 = v44 + 1;
  *(v5 + 260) = v44 + 1;
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  v49 = (v47 >> 1) & 7;
  if (v49 <= 3)
  {
    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v50 = v44 + 4;
        if (v50 <= v45)
        {
          LODWORD(v34) = *(v34 + v48) | (*(v34 + v48 + 2) << 16);
          goto LABEL_96;
        }
      }

      else if (v44 + 5 <= v45)
      {
        LODWORD(v34) = *(v34 + v48);
        v50 = v44 + 5;
        goto LABEL_96;
      }
    }

    else if (v49)
    {
      if (v44 + 3 <= v45)
      {
        LODWORD(v34) = *(v34 + v48);
        v50 = v44 + 3;
        goto LABEL_96;
      }
    }

    else if (v48 < v45)
    {
      LODWORD(v34) = *(v34 + v48);
      v50 = v44 + 2;
      goto LABEL_96;
    }

LABEL_101:
    glpDeserialError(v5, 1u);
  }

  if (v49 <= 5)
  {
    v51 = v44 + 5;
    if (v49 == 4)
    {
      if (v51 <= v45)
      {
        LODWORD(v34) = *(v34 + v48);
        *(v5 + 260) = v44 + 5;
        if (v44 + 5 < v45)
        {
          v50 = v44 + 6;
          goto LABEL_96;
        }
      }
    }

    else if (v51 <= v45)
    {
      LODWORD(v34) = *(v34 + v48);
      v52 = (v44 + 5);
      *(v5 + 260) = v52;
      if (v52 + 2 <= v45)
      {
        v50 = v44 + 7;
        goto LABEL_96;
      }
    }

    goto LABEL_101;
  }

  if (v49 != 6)
  {
    if (v44 + 9 <= v45)
    {
      v34 = *(v34 + v48);
      v50 = v44 + 9;
      goto LABEL_96;
    }

    goto LABEL_101;
  }

  if (v44 + 5 > v45)
  {
    goto LABEL_101;
  }

  LODWORD(v34) = *(v34 + v48);
  *(v5 + 260) = v44 + 5;
  v50 = v44 + 8;
  if (v50 > v45)
  {
    goto LABEL_101;
  }

LABEL_96:
  *(v5 + 260) = v50;
  v53 = -256 << (8 * v49);
  if (v46)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  LODWORD(v47) = v34 | v54;
LABEL_100:
  *(v2 + 100) = v47;
  return v2;
}

@end