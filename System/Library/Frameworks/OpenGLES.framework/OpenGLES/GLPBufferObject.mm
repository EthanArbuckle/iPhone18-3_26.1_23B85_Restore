@interface GLPBufferObject
@end

@implementation GLPBufferObject

uint64_t __deserialize_GLPBufferObject_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 32, "Deserialized");
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 0x40000000;
  v28[2] = __deserialize_GLPType_block_invoke;
  v28[3] = &__block_descriptor_tmp_12;
  v28[4] = v3;
  deserialize_pointer(v3, v28, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 260);
  v6 = *(v4 + 256);
  if (v5 >= v6)
  {
    goto LABEL_68;
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
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          if (v5 + 5 > v6)
          {
            goto LABEL_68;
          }

          LODWORD(v12) = *(v7 + v10);
          *(v4 + 260) = v5 + 5;
          LODWORD(v10) = v5 + 8;
          if (v5 + 8 > v6)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v5 + 9 > v6)
          {
            goto LABEL_68;
          }

          v12 = *(v7 + v10);
          LODWORD(v10) = v5 + 9;
        }
      }

      else
      {
        v13 = v5 + 5;
        if (v11 == 4)
        {
          if (v13 > v6)
          {
            goto LABEL_68;
          }

          LODWORD(v12) = *(v7 + v10);
          *(v4 + 260) = v5 + 5;
          if (v5 + 5 >= v6)
          {
            goto LABEL_68;
          }

          LODWORD(v10) = v5 + 6;
        }

        else
        {
          if (v13 > v6)
          {
            goto LABEL_68;
          }

          LODWORD(v12) = *(v7 + v10);
          v15 = (v5 + 5);
          *(v4 + 260) = v15;
          if (v15 + 2 > v6)
          {
            goto LABEL_68;
          }

          LODWORD(v10) = v5 + 7;
        }
      }
    }

    else if (v11 > 1)
    {
      if (v11 == 2)
      {
        v14 = v5 + 4;
        if (v14 > v6)
        {
          goto LABEL_68;
        }

        LODWORD(v12) = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
        *(v4 + 260) = v14;
        LODWORD(v10) = v14;
        goto LABEL_30;
      }

      if (v5 + 5 > v6)
      {
        goto LABEL_68;
      }

      LODWORD(v12) = *(v7 + v10);
      LODWORD(v10) = v5 + 5;
    }

    else if (v11)
    {
      if (v5 + 3 > v6)
      {
        goto LABEL_68;
      }

      LODWORD(v12) = *(v7 + v10);
      LODWORD(v10) = v5 + 3;
    }

    else
    {
      if (v10 >= v6)
      {
        goto LABEL_68;
      }

      LODWORD(v12) = *(v7 + v10);
      LODWORD(v10) = v5 + 2;
    }

    *(v4 + 260) = v10;
LABEL_30:
    v16 = -256 << (8 * v11);
    if (v8)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    LODWORD(v9) = v12 | v17;
  }

  *(v2 + 8) = v9;
  if (v10 >= v6)
  {
    goto LABEL_68;
  }

  v18 = *(v7 + v10);
  v19 = *(v7 + v10);
  v20 = v10 + 1;
  *(v4 + 260) = v20;
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  v21 = (v19 >> 1) & 7;
  if (v21 > 3)
  {
    if (v21 <= 5)
    {
      v23 = v10 + 5;
      if (v21 == 4)
      {
        if (v23 <= v6)
        {
          LODWORD(v7) = *(v7 + v20);
          *(v4 + 260) = v10 + 5;
          if (v10 + 5 < v6)
          {
            v22 = v10 + 6;
            goto LABEL_62;
          }
        }
      }

      else if (v23 <= v6)
      {
        LODWORD(v7) = *(v7 + v20);
        v25 = (v10 + 5);
        *(v4 + 260) = v25;
        if (v25 + 2 <= v6)
        {
          v22 = v10 + 7;
          goto LABEL_62;
        }
      }

LABEL_68:
      glpDeserialError(v4, 1u);
    }

    if (v21 != 6)
    {
      if (v10 + 9 <= v6)
      {
        v7 = *(v7 + v20);
        v22 = v10 + 9;
        goto LABEL_62;
      }

      goto LABEL_68;
    }

    if (v10 + 5 > v6)
    {
      goto LABEL_68;
    }

    LODWORD(v7) = *(v7 + v20);
    *(v4 + 260) = v10 + 5;
    v24 = v10 + 8;
    if (v24 > v6)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if (v21 <= 1)
    {
      if (v21)
      {
        if (v10 + 3 <= v6)
        {
          LODWORD(v7) = *(v7 + v20);
          v22 = v10 + 3;
          goto LABEL_62;
        }
      }

      else if (v20 < v6)
      {
        LODWORD(v7) = *(v7 + v20);
        v22 = v10 + 2;
LABEL_62:
        *(v4 + 260) = v22;
        goto LABEL_63;
      }

      goto LABEL_68;
    }

    if (v21 != 2)
    {
      if (v10 + 5 <= v6)
      {
        LODWORD(v7) = *(v7 + v20);
        v22 = v10 + 5;
        goto LABEL_62;
      }

      goto LABEL_68;
    }

    v24 = v10 + 4;
    if (v24 > v6)
    {
      goto LABEL_68;
    }

    LODWORD(v7) = *(v7 + v20) | (*(v7 + v20 + 2) << 16);
  }

  *(v4 + 260) = v24;
LABEL_63:
  if (v18)
  {
    v26 = -256 << (8 * v21);
  }

  else
  {
    LODWORD(v26) = 0;
  }

  LODWORD(v19) = v7 | v26;
LABEL_67:
  *(v2 + 12) = v19;
  return v2;
}

@end