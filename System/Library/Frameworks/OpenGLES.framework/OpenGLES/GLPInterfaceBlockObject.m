@interface GLPInterfaceBlockObject
@end

@implementation GLPInterfaceBlockObject

uint64_t __deserialize_GLPInterfaceBlockObject_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 88, "Deserialized");
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = deserialize_GLPString(*(a1 + 32));
  *(v2 + 8) = v3;
  v4 = *(a1 + 32);
  v5 = *(v4 + 260);
  if (v5 >= *(v4 + 256))
  {
    goto LABEL_43;
  }

  v6 = *(*(v4 + 248) + v5);
  *(v4 + 260) = v5 + 1;
  *(v2 + 32) = v6;
  if (v6)
  {
    v7 = deserialize_GLPString(v4);
  }

  else
  {
    v8 = 0xDFA3F2CD0000004BLL;
    v7 = "<<BUG: printing instance name of interface block without an instance name>>";
  }

  *(v2 + 16) = v7;
  *(v2 + 24) = v8;
  v4 = *(a1 + 32);
  v9 = *(v4 + 260);
  v10 = *(v4 + 256);
  if (v9 >= v10)
  {
    goto LABEL_43;
  }

  v11 = *(v4 + 248);
  v12 = *(v11 + v9);
  v13 = *(v11 + v9);
  v14 = v9 + 1;
  *(v4 + 260) = v9 + 1;
  if (v12 < 0)
  {
    v15 = (v13 >> 1) & 7;
    if (v15 <= 3)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v17 = v9 + 4;
          if (v17 <= v10)
          {
            v16 = *(v11 + v14) | (*(v11 + v14 + 2) << 16);
            goto LABEL_34;
          }
        }

        else if (v9 + 5 <= v10)
        {
          v16 = *(v11 + v14);
          v17 = v9 + 5;
          goto LABEL_34;
        }
      }

      else if (v15)
      {
        if (v9 + 3 <= v10)
        {
          v16 = *(v11 + v14);
          v17 = v9 + 3;
          goto LABEL_34;
        }
      }

      else if (v14 < v10)
      {
        v16 = *(v11 + v14);
        v17 = v9 + 2;
LABEL_34:
        *(v4 + 260) = v17;
        goto LABEL_35;
      }

LABEL_43:
      glpDeserialError(v4, 1u);
    }

    if (v15 > 5)
    {
      if (v15 != 6)
      {
        if (v9 + 9 <= v10)
        {
          v16 = *(v11 + v14);
          v17 = v9 + 9;
          goto LABEL_34;
        }

        goto LABEL_43;
      }

      if (v9 + 5 > v10)
      {
        goto LABEL_43;
      }

      v19 = *(v11 + v14);
      v22 = v9 + 5;
      *(v4 + 260) = v9 + 5;
      v21 = v9 + 8;
      if (v21 > v10)
      {
        goto LABEL_43;
      }

      v20 = *(v11 + v22) | (*(v11 + v22 + 2) << 16);
    }

    else
    {
      v18 = v9 + 5;
      if (v15 == 4)
      {
        if (v18 > v10)
        {
          goto LABEL_43;
        }

        v19 = *(v11 + v14);
        *(v4 + 260) = v9 + 5;
        if (v9 + 5 >= v10)
        {
          goto LABEL_43;
        }

        v20 = *(v11 + (v9 + 5));
        v21 = v9 + 6;
      }

      else
      {
        if (v18 > v10)
        {
          goto LABEL_43;
        }

        v19 = *(v11 + v14);
        v23 = (v9 + 5);
        *(v4 + 260) = v23;
        if (v23 + 2 > v10)
        {
          goto LABEL_43;
        }

        v20 = *(v11 + v23);
        v21 = v9 + 7;
      }
    }

    *(v4 + 260) = v21;
    v16 = v19 | (v20 << 32);
LABEL_35:
    v24 = -256 << (8 * v15);
    if (v12)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v13 = v16 | v25;
  }

  *(v2 + 40) = v13;
  v36 = MEMORY[0x277D85DD0];
  v37 = 0x40000000;
  v38 = __deserialize_GLPLayoutObject_block_invoke;
  v39 = &__block_descriptor_tmp_3;
  v40 = v4;
  deserialize_pointer(v4, &v36, (v2 + 56));
  v26 = *(a1 + 32);
  v36 = MEMORY[0x277D85DD0];
  v37 = 0x40000000;
  v38 = __deserialize_GLPType_block_invoke;
  v39 = &__block_descriptor_tmp_12;
  v40 = v26;
  deserialize_pointer(v26, &v36, (v2 + 64));
  IBVariableObjectCount = glpGetIBVariableObjectCount(*(v2 + 40), *(v2 + 64));
  *(v2 + 72) = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * IBVariableObjectCount, "Deserialized");
  if (IBVariableObjectCount)
  {
    v28 = 0;
    v29 = IBVariableObjectCount;
    v30 = MEMORY[0x277D85DD0];
    v31 = 8 * v29;
    do
    {
      v32 = *(a1 + 32);
      v33 = *(v2 + 72);
      v36 = v30;
      v37 = 0x40000000;
      v38 = __deserialize_GLPVariableObject_block_invoke;
      v39 = &__block_descriptor_tmp_6;
      v40 = v32;
      deserialize_pointer(v32, &v36, (v33 + v28));
      v28 += 8;
    }

    while (v31 != v28);
  }

  v34 = *(a1 + 32);
  v36 = MEMORY[0x277D85DD0];
  v37 = 0x40000000;
  v38 = __deserialize_GLPBufferObject_block_invoke;
  v39 = &__block_descriptor_tmp_7;
  v40 = v34;
  deserialize_pointer(v34, &v36, (v2 + 80));
  return v2;
}

@end