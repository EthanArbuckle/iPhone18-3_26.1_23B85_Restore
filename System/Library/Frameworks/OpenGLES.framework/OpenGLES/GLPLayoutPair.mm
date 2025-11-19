@interface GLPLayoutPair
@end

@implementation GLPLayoutPair

uint64_t __deserialize_GLPLayoutPair_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 24, "Deserialized");
  v3 = *(a1 + 32);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 0x40000000;
  v37[2] = __deserialize_GLPLayoutPair_block_invoke;
  v37[3] = &__block_descriptor_tmp_4_0;
  v37[4] = v3;
  deserialize_pointer(v3, v37, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 260);
  v6 = *(v4 + 256);
  if (v5 >= v6)
  {
    goto LABEL_103;
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
            goto LABEL_103;
          }

          LODWORD(v12) = *(v7 + v10);
          *(v4 + 260) = v5 + 5;
          LODWORD(v10) = v5 + 8;
          if (v5 + 8 > v6)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v5 + 9 > v6)
          {
            goto LABEL_103;
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
            goto LABEL_103;
          }

          LODWORD(v12) = *(v7 + v10);
          *(v4 + 260) = v5 + 5;
          if (v5 + 5 >= v6)
          {
            goto LABEL_103;
          }

          LODWORD(v10) = v5 + 6;
        }

        else
        {
          if (v13 > v6)
          {
            goto LABEL_103;
          }

          LODWORD(v12) = *(v7 + v10);
          v15 = (v5 + 5);
          *(v4 + 260) = v15;
          if (v15 + 2 > v6)
          {
            goto LABEL_103;
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
          goto LABEL_103;
        }

        LODWORD(v12) = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
        *(v4 + 260) = v14;
        LODWORD(v10) = v14;
        goto LABEL_30;
      }

      if (v5 + 5 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v12) = *(v7 + v10);
      LODWORD(v10) = v5 + 5;
    }

    else if (v11)
    {
      if (v5 + 3 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v12) = *(v7 + v10);
      LODWORD(v10) = v5 + 3;
    }

    else
    {
      if (v10 >= v6)
      {
        goto LABEL_103;
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
    goto LABEL_103;
  }

  v18 = *(v7 + v10);
  v19 = *(v7 + v10);
  v20 = v10 + 1;
  *(v4 + 260) = v20;
  if (v18 < 0)
  {
    v21 = (v19 >> 1) & 7;
    if (v21 > 3)
    {
      if (v21 > 5)
      {
        if (v21 == 6)
        {
          if (v10 + 5 > v6)
          {
            goto LABEL_103;
          }

          LODWORD(v22) = *(v7 + v20);
          *(v4 + 260) = v10 + 5;
          LODWORD(v20) = v10 + 8;
          if (v10 + 8 > v6)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v10 + 9 > v6)
          {
            goto LABEL_103;
          }

          v22 = *(v7 + v20);
          LODWORD(v20) = v10 + 9;
        }
      }

      else
      {
        v23 = v10 + 5;
        if (v21 == 4)
        {
          if (v23 > v6)
          {
            goto LABEL_103;
          }

          LODWORD(v22) = *(v7 + v20);
          *(v4 + 260) = v10 + 5;
          if (v10 + 5 >= v6)
          {
            goto LABEL_103;
          }

          LODWORD(v20) = v10 + 6;
        }

        else
        {
          if (v23 > v6)
          {
            goto LABEL_103;
          }

          LODWORD(v22) = *(v7 + v20);
          v25 = (v10 + 5);
          *(v4 + 260) = v25;
          if (v25 + 2 > v6)
          {
            goto LABEL_103;
          }

          LODWORD(v20) = v10 + 7;
        }
      }
    }

    else if (v21 > 1)
    {
      if (v21 == 2)
      {
        v24 = v10 + 4;
        if (v24 > v6)
        {
          goto LABEL_103;
        }

        LODWORD(v22) = *(v7 + v20) | (*(v7 + v20 + 2) << 16);
        *(v4 + 260) = v24;
        LODWORD(v20) = v24;
        goto LABEL_63;
      }

      if (v10 + 5 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v22) = *(v7 + v20);
      LODWORD(v20) = v10 + 5;
    }

    else if (v21)
    {
      if (v10 + 3 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v22) = *(v7 + v20);
      LODWORD(v20) = v10 + 3;
    }

    else
    {
      if (v20 >= v6)
      {
        goto LABEL_103;
      }

      LODWORD(v22) = *(v7 + v20);
      LODWORD(v20) = v10 + 2;
    }

    *(v4 + 260) = v20;
LABEL_63:
    if (v18)
    {
      v26 = -256 << (8 * v21);
    }

    else
    {
      LODWORD(v26) = 0;
    }

    LODWORD(v19) = v22 | v26;
  }

  *(v2 + 12) = v19;
  if (v19 == 1)
  {
    if (v20 >= v6)
    {
      goto LABEL_103;
    }

    v27 = *(v7 + v20);
    v28 = *(v7 + v20);
    v29 = v20 + 1;
    *(v4 + 260) = v29;
    if ((v27 & 0x80000000) == 0)
    {
LABEL_101:
      *(v2 + 16) = v28;
      return v2;
    }

    v30 = (v28 >> 1) & 7;
    if (v30 > 3)
    {
      if (v30 <= 5)
      {
        v32 = v20 + 5;
        if (v30 == 4)
        {
          if (v32 <= v6)
          {
            LODWORD(v7) = *(v7 + v29);
            *(v4 + 260) = v20 + 5;
            if (v20 + 5 < v6)
            {
              v31 = v20 + 6;
              goto LABEL_96;
            }
          }
        }

        else if (v32 <= v6)
        {
          LODWORD(v7) = *(v7 + v29);
          v34 = (v20 + 5);
          *(v4 + 260) = v34;
          if (v34 + 2 <= v6)
          {
            v31 = v20 + 7;
            goto LABEL_96;
          }
        }

LABEL_103:
        glpDeserialError(v4, 1u);
      }

      if (v30 != 6)
      {
        if (v20 + 9 <= v6)
        {
          v7 = *(v7 + v29);
          v31 = v20 + 9;
          goto LABEL_96;
        }

        goto LABEL_103;
      }

      if (v20 + 5 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v7) = *(v7 + v29);
      *(v4 + 260) = v20 + 5;
      v33 = v20 + 8;
      if (v33 > v6)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v30 <= 1)
      {
        if (v30)
        {
          if (v20 + 3 <= v6)
          {
            LODWORD(v7) = *(v7 + v29);
            v31 = v20 + 3;
            goto LABEL_96;
          }
        }

        else if (v29 < v6)
        {
          LODWORD(v7) = *(v7 + v29);
          v31 = v20 + 2;
LABEL_96:
          *(v4 + 260) = v31;
          goto LABEL_97;
        }

        goto LABEL_103;
      }

      if (v30 != 2)
      {
        if (v20 + 5 <= v6)
        {
          LODWORD(v7) = *(v7 + v29);
          v31 = v20 + 5;
          goto LABEL_96;
        }

        goto LABEL_103;
      }

      v33 = v20 + 4;
      if (v33 > v6)
      {
        goto LABEL_103;
      }

      LODWORD(v7) = *(v7 + v29) | (*(v7 + v29 + 2) << 16);
    }

    *(v4 + 260) = v33;
LABEL_97:
    if (v27)
    {
      v35 = -256 << (8 * v30);
    }

    else
    {
      LODWORD(v35) = 0;
    }

    LODWORD(v28) = v7 | v35;
    goto LABEL_101;
  }

  return v2;
}

@end