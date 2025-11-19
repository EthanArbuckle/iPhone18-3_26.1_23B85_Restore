uint64_t deserializeQualifiedDeclarationFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 64) = result;
  *(a2 + 72) = v5;
  return result;
}

void deserializeQualifiedDeclarationGroupFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializePrimitiveTypeFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

uint64_t deserializeFieldDeclarationFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 64) = result;
  *(a2 + 72) = v5;
  return result;
}

uint64_t deserializeStructTypeFields(uint64_t a1, uint64_t a2)
{
  deserializeStructureFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 72) = result;
  *(a2 + 80) = v5;
  return result;
}

void *deserializeInterfaceBlockFields(uint64_t a1, uint64_t a2)
{
  deserializeStructureFields(a1, a2);
  *(a2 + 72) = deserialize_GLPString(a1);
  *(a2 + 80) = v4;
  *(a2 + 88) = deserialize_GLPString(a1);
  *(a2 + 96) = v5;
  v6 = *(a1 + 260);
  if (v6 >= *(a1 + 256) || (v7 = *(*(a1 + 248) + v6), *(a1 + 260) = v6 + 1, *(a2 + 104) = v7, v8 = *(a1 + 260), v8 >= *(a1 + 256)))
  {
    glpDeserialError(a1, 1u);
  }

  v9 = *(*(a1 + 248) + v8);
  *(a1 + 260) = v8 + 1;
  *(a2 + 105) = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __deserialize_GLPInterfaceBlockObject_block_invoke;
  v11[3] = &__block_descriptor_tmp_9;
  v11[4] = a1;
  return deserialize_pointer(a1, v11, (a2 + 112));
}

void deserializeLayoutTypeFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializeKeywordQualifierFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializeLayoutQualifierFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializeSubroutineTypeListFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializeQualifierListFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

uint64_t deserializeLayoutPairFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  *(a2 + 64) = deserialize_GLPString(a1);
  *(a2 + 72) = v4;
  v5 = *(a1 + 260);
  v6 = *(a1 + 256);
  if (v5 >= v6)
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 248);
  v8 = *(v7 + v5);
  v9 = *(v7 + v5);
  v10 = v5 + 1;
  *(a1 + 260) = v5 + 1;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v11 = (v9 >> 1) & 7;
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = v5 + 4;
        if (v12 > v6)
        {
          goto LABEL_35;
        }

        LODWORD(v7) = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
      }

      else
      {
        if (v5 + 5 > v6)
        {
          goto LABEL_35;
        }

        LODWORD(v7) = *(v7 + v10);
        v12 = v5 + 5;
      }
    }

    else if (v11)
    {
      if (v5 + 3 > v6)
      {
        goto LABEL_35;
      }

      LODWORD(v7) = *(v7 + v10);
      v12 = v5 + 3;
    }

    else
    {
      if (v10 >= v6)
      {
        goto LABEL_35;
      }

      LODWORD(v7) = *(v7 + v10);
      v12 = v5 + 2;
    }

    goto LABEL_29;
  }

  if (v11 <= 5)
  {
    v13 = v5 + 5;
    if (v11 == 4)
    {
      if (v13 <= v6)
      {
        LODWORD(v7) = *(v7 + v10);
        *(a1 + 260) = v5 + 5;
        if (v5 + 5 < v6)
        {
          v12 = v5 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v13 <= v6)
    {
      LODWORD(v7) = *(v7 + v10);
      v14 = (v5 + 5);
      *(a1 + 260) = v14;
      if (v14 + 2 <= v6)
      {
        v12 = v5 + 7;
        goto LABEL_29;
      }
    }

LABEL_35:
    glpDeserialError(a1, 1u);
  }

  if (v11 != 6)
  {
    if (v5 + 9 > v6)
    {
      goto LABEL_35;
    }

    v7 = *(v7 + v10);
    v12 = v5 + 9;
    goto LABEL_29;
  }

  if (v5 + 5 > v6)
  {
    goto LABEL_35;
  }

  LODWORD(v7) = *(v7 + v10);
  *(a1 + 260) = v5 + 5;
  v12 = v5 + 8;
  if (v12 > v6)
  {
    goto LABEL_35;
  }

LABEL_29:
  *(a1 + 260) = v12;
  v15 = -256 << (8 * v11);
  if (v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v9) = v7 | v16;
LABEL_33:
  *(a2 + 80) = v9;
  v17 = *(a1 + 260);
  if (v17 + 4 > *(a1 + 256))
  {
    goto LABEL_35;
  }

  v18 = *(*(a1 + 248) + v17);
  *(a1 + 260) = v17 + 4;
  *(a2 + 84) = v18;
  result = deserialize_GLPString(a1);
  *(a2 + 88) = result;
  *(a2 + 96) = v20;
  return result;
}

void deserializeBlockFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    goto LABEL_35;
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
  v6 = *(a1 + 260);
  v7 = *(a1 + 256);
  if (v6 >= v7)
  {
    goto LABEL_35;
  }

  v8 = *(a1 + 248);
  v9 = *(v8 + v6);
  v10 = *(v8 + v6);
  v11 = v6 + 1;
  *(a1 + 260) = v6 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v6 + 4;
        if (v13 <= v7)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_30;
        }
      }

      else if (v6 + 5 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 5;
        goto LABEL_30;
      }
    }

    else if (v12)
    {
      if (v6 + 3 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 3;
        goto LABEL_30;
      }
    }

    else if (v11 < v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v6 + 2;
      goto LABEL_30;
    }

LABEL_35:
    glpDeserialError(a1, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v6 + 5;
    if (v12 == 4)
    {
      if (v14 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        *(a1 + 260) = v6 + 5;
        if (v6 + 5 < v7)
        {
          v13 = v6 + 6;
          goto LABEL_30;
        }
      }
    }

    else if (v14 <= v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v6 + 5);
      *(a1 + 260) = v15;
      if (v15 + 2 <= v7)
      {
        v13 = v6 + 7;
        goto LABEL_30;
      }
    }

    goto LABEL_35;
  }

  if (v12 != 6)
  {
    if (v6 + 9 <= v7)
    {
      v8 = *(v8 + v11);
      v13 = v6 + 9;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_35;
  }

  LODWORD(v8) = *(v8 + v11);
  *(a1 + 260) = v6 + 5;
  v13 = v6 + 8;
  if (v13 > v7)
  {
    goto LABEL_35;
  }

LABEL_30:
  *(a1 + 260) = v13;
  v16 = -256 << (8 * v12);
  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v10) = v8 | v17;
LABEL_34:
  *(a2 + 68) = v10;
}

void deserializeCaseStatementFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
}

void deserializeDefaultStatementFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
}

void deserializeTopLevelFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void *deserializeRawCallFields(void *a1, void *a2)
{
  deserializeASTFields(a1, a2);
  a2[8] = deserialize_GLPString(a1);
  a2[9] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __deserialize_GLPFunctionObject_block_invoke;
  v6[3] = &__block_descriptor_tmp_5;
  v6[4] = a1;
  return deserialize_pointer(a1, v6, a2 + 10);
}

void *deserializeOffsetFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 0x40000000;
  v41[2] = __deserialize_GLPOffsetObject_block_invoke;
  v41[3] = &__block_descriptor_tmp_17;
  v41[4] = a1;
  result = deserialize_pointer(a1, v41, (a2 + 64));
  v5 = *(a1 + 260);
  v6 = *(a1 + 256);
  if (v5 >= v6)
  {
    goto LABEL_98;
  }

  v7 = *(a1 + 248);
  v8 = *(v7 + v5);
  v9 = *(v7 + v5);
  v10 = v5 + 1;
  *(a1 + 260) = v5 + 1;
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
            goto LABEL_98;
          }

          LODWORD(v7) = *(v7 + v10);
          *(a1 + 260) = v5 + 5;
          v12 = v5 + 8;
          if (v12 > v6)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v5 + 9 > v6)
          {
            goto LABEL_98;
          }

          v7 = *(v7 + v10);
          v12 = v5 + 9;
        }
      }

      else
      {
        v13 = v5 + 5;
        if (v11 == 4)
        {
          if (v13 > v6)
          {
            goto LABEL_98;
          }

          LODWORD(v7) = *(v7 + v10);
          *(a1 + 260) = v5 + 5;
          if (v5 + 5 >= v6)
          {
            goto LABEL_98;
          }

          v12 = v5 + 6;
        }

        else
        {
          if (v13 > v6)
          {
            goto LABEL_98;
          }

          LODWORD(v7) = *(v7 + v10);
          v14 = (v5 + 5);
          *(a1 + 260) = v14;
          if (v14 + 2 > v6)
          {
            goto LABEL_98;
          }

          v12 = v5 + 7;
        }
      }
    }

    else if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = v5 + 4;
        if (v12 > v6)
        {
          goto LABEL_98;
        }

        LODWORD(v7) = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
      }

      else
      {
        if (v5 + 5 > v6)
        {
          goto LABEL_98;
        }

        LODWORD(v7) = *(v7 + v10);
        v12 = v5 + 5;
      }
    }

    else if (v11)
    {
      if (v5 + 3 > v6)
      {
        goto LABEL_98;
      }

      LODWORD(v7) = *(v7 + v10);
      v12 = v5 + 3;
    }

    else
    {
      if (v10 >= v6)
      {
        goto LABEL_98;
      }

      LODWORD(v7) = *(v7 + v10);
      v12 = v5 + 2;
    }

    *(a1 + 260) = v12;
    v15 = -256 << (8 * v11);
    if (v8)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    LODWORD(v9) = v7 | v16;
  }

  *(a2 + 72) = v9;
  v17 = *(a1 + 260);
  v18 = *(a1 + 256);
  if (v17 >= v18)
  {
    goto LABEL_98;
  }

  v19 = *(a1 + 248);
  v20 = *(v19 + v17);
  v21 = *(v19 + v17);
  v22 = v17 + 1;
  *(a1 + 260) = v17 + 1;
  if (v20 < 0)
  {
    v23 = (v21 >> 1) & 7;
    if (v23 > 3)
    {
      if (v23 > 5)
      {
        if (v23 == 6)
        {
          if (v17 + 5 > v18)
          {
            goto LABEL_98;
          }

          LODWORD(v19) = *(v19 + v22);
          *(a1 + 260) = v17 + 5;
          v24 = v17 + 8;
          if (v24 > v18)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v17 + 9 > v18)
          {
            goto LABEL_98;
          }

          v19 = *(v19 + v22);
          v24 = v17 + 9;
        }
      }

      else
      {
        v25 = v17 + 5;
        if (v23 == 4)
        {
          if (v25 > v18)
          {
            goto LABEL_98;
          }

          LODWORD(v19) = *(v19 + v22);
          *(a1 + 260) = v17 + 5;
          if (v17 + 5 >= v18)
          {
            goto LABEL_98;
          }

          v24 = v17 + 6;
        }

        else
        {
          if (v25 > v18)
          {
            goto LABEL_98;
          }

          LODWORD(v19) = *(v19 + v22);
          v26 = (v17 + 5);
          *(a1 + 260) = v26;
          if (v26 + 2 > v18)
          {
            goto LABEL_98;
          }

          v24 = v17 + 7;
        }
      }
    }

    else if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = v17 + 4;
        if (v24 > v18)
        {
          goto LABEL_98;
        }

        LODWORD(v19) = *(v19 + v22) | (*(v19 + v22 + 2) << 16);
      }

      else
      {
        if (v17 + 5 > v18)
        {
          goto LABEL_98;
        }

        LODWORD(v19) = *(v19 + v22);
        v24 = v17 + 5;
      }
    }

    else if (v23)
    {
      if (v17 + 3 > v18)
      {
        goto LABEL_98;
      }

      LODWORD(v19) = *(v19 + v22);
      v24 = v17 + 3;
    }

    else
    {
      if (v22 >= v18)
      {
        goto LABEL_98;
      }

      LODWORD(v19) = *(v19 + v22);
      v24 = v17 + 2;
    }

    *(a1 + 260) = v24;
    v27 = -256 << (8 * v23);
    if (v20)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    LODWORD(v21) = v19 | v28;
  }

  *(a2 + 76) = v21;
  v29 = *(a1 + 260);
  v30 = *(a1 + 256);
  if (v29 >= v30)
  {
    goto LABEL_98;
  }

  v31 = *(a1 + 248);
  v32 = *(v31 + v29);
  v33 = *(v31 + v29);
  v34 = v29 + 1;
  *(a1 + 260) = v29 + 1;
  if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

  v35 = (v33 >> 1) & 7;
  if (v35 <= 3)
  {
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = v29 + 4;
        if (v36 <= v30)
        {
          LODWORD(v31) = *(v31 + v34) | (*(v31 + v34 + 2) << 16);
          goto LABEL_93;
        }
      }

      else if (v29 + 5 <= v30)
      {
        LODWORD(v31) = *(v31 + v34);
        v36 = v29 + 5;
        goto LABEL_93;
      }
    }

    else if (v35)
    {
      if (v29 + 3 <= v30)
      {
        LODWORD(v31) = *(v31 + v34);
        v36 = v29 + 3;
        goto LABEL_93;
      }
    }

    else if (v34 < v30)
    {
      LODWORD(v31) = *(v31 + v34);
      v36 = v29 + 2;
      goto LABEL_93;
    }

LABEL_98:
    glpDeserialError(a1, 1u);
  }

  if (v35 <= 5)
  {
    v37 = v29 + 5;
    if (v35 == 4)
    {
      if (v37 <= v30)
      {
        LODWORD(v31) = *(v31 + v34);
        *(a1 + 260) = v29 + 5;
        if (v29 + 5 < v30)
        {
          v36 = v29 + 6;
          goto LABEL_93;
        }
      }
    }

    else if (v37 <= v30)
    {
      LODWORD(v31) = *(v31 + v34);
      v38 = (v29 + 5);
      *(a1 + 260) = v38;
      if (v38 + 2 <= v30)
      {
        v36 = v29 + 7;
        goto LABEL_93;
      }
    }

    goto LABEL_98;
  }

  if (v35 != 6)
  {
    if (v29 + 9 <= v30)
    {
      v31 = *(v31 + v34);
      v36 = v29 + 9;
      goto LABEL_93;
    }

    goto LABEL_98;
  }

  if (v29 + 5 > v30)
  {
    goto LABEL_98;
  }

  LODWORD(v31) = *(v31 + v34);
  *(a1 + 260) = v29 + 5;
  v36 = v29 + 8;
  if (v36 > v30)
  {
    goto LABEL_98;
  }

LABEL_93:
  *(a1 + 260) = v36;
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
LABEL_97:
  *(a2 + 80) = v33;
  return result;
}

void *deserializeLValueFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  *(a2 + 64) = deserialize_GLPString(a1);
  *(a2 + 72) = v4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = __deserialize_GLPVariableObject_block_invoke;
  v18[3] = &__block_descriptor_tmp_6;
  v18[4] = a1;
  result = deserialize_pointer(a1, v18, (a2 + 80));
  v6 = *(a1 + 260);
  v7 = *(a1 + 256);
  if (v6 >= v7)
  {
    goto LABEL_34;
  }

  v8 = *(a1 + 248);
  v9 = *(v8 + v6);
  v10 = *(v8 + v6);
  v11 = v6 + 1;
  *(a1 + 260) = v6 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v6 + 4;
        if (v13 <= v7)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v6 + 5 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 5;
        goto LABEL_29;
      }
    }

    else if (v12)
    {
      if (v6 + 3 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 3;
        goto LABEL_29;
      }
    }

    else if (v11 < v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v6 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v6 + 5;
    if (v12 == 4)
    {
      if (v14 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        *(a1 + 260) = v6 + 5;
        if (v6 + 5 < v7)
        {
          v13 = v6 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v14 <= v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v6 + 5);
      *(a1 + 260) = v15;
      if (v15 + 2 <= v7)
      {
        v13 = v6 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v12 != 6)
  {
    if (v6 + 9 <= v7)
    {
      v8 = *(v8 + v11);
      v13 = v6 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_34;
  }

  LODWORD(v8) = *(v8 + v11);
  *(a1 + 260) = v6 + 5;
  v13 = v6 + 8;
  if (v13 > v7)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v13;
  v16 = -256 << (8 * v12);
  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v10) = v8 | v17;
LABEL_33:
  *(a2 + 88) = v10;
  return result;
}

void deserializePPStreamOpFields(uint64_t a1, _DWORD *a2)
{
  deserializeCallFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_162;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if (v7 < 0)
  {
    v10 = (v8 >> 1) & 7;
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          if (v4 + 5 > v5)
          {
            goto LABEL_162;
          }

          LODWORD(v6) = *(v6 + v9);
          *(a1 + 260) = v4 + 5;
          v11 = v4 + 8;
          if (v11 > v5)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v4 + 9 > v5)
          {
            goto LABEL_162;
          }

          v6 = *(v6 + v9);
          v11 = v4 + 9;
        }
      }

      else
      {
        v12 = v4 + 5;
        if (v10 == 4)
        {
          if (v12 > v5)
          {
            goto LABEL_162;
          }

          LODWORD(v6) = *(v6 + v9);
          *(a1 + 260) = v4 + 5;
          if (v4 + 5 >= v5)
          {
            goto LABEL_162;
          }

          v11 = v4 + 6;
        }

        else
        {
          if (v12 > v5)
          {
            goto LABEL_162;
          }

          LODWORD(v6) = *(v6 + v9);
          v13 = (v4 + 5);
          *(a1 + 260) = v13;
          if (v13 + 2 > v5)
          {
            goto LABEL_162;
          }

          v11 = v4 + 7;
        }
      }
    }

    else if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 > v5)
        {
          goto LABEL_162;
        }

        LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
      }

      else
      {
        if (v4 + 5 > v5)
        {
          goto LABEL_162;
        }

        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
      }
    }

    else if (v10)
    {
      if (v4 + 3 > v5)
      {
        goto LABEL_162;
      }

      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 3;
    }

    else
    {
      if (v9 >= v5)
      {
        goto LABEL_162;
      }

      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
    }

    *(a1 + 260) = v11;
    v14 = -256 << (8 * v10);
    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v8) = v6 | v15;
  }

  a2[18] = v8;
  v16 = *(a1 + 260);
  v17 = *(a1 + 256);
  if (v16 >= v17)
  {
    goto LABEL_162;
  }

  v18 = *(a1 + 248);
  v19 = *(v18 + v16);
  v20 = *(v18 + v16);
  v21 = v16 + 1;
  *(a1 + 260) = v16 + 1;
  if (v19 < 0)
  {
    v22 = (v20 >> 1) & 7;
    if (v22 > 3)
    {
      if (v22 > 5)
      {
        if (v22 == 6)
        {
          if (v16 + 5 > v17)
          {
            goto LABEL_162;
          }

          LODWORD(v18) = *(v18 + v21);
          *(a1 + 260) = v16 + 5;
          v23 = v16 + 8;
          if (v23 > v17)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v16 + 9 > v17)
          {
            goto LABEL_162;
          }

          v18 = *(v18 + v21);
          v23 = v16 + 9;
        }
      }

      else
      {
        v24 = v16 + 5;
        if (v22 == 4)
        {
          if (v24 > v17)
          {
            goto LABEL_162;
          }

          LODWORD(v18) = *(v18 + v21);
          *(a1 + 260) = v16 + 5;
          if (v16 + 5 >= v17)
          {
            goto LABEL_162;
          }

          v23 = v16 + 6;
        }

        else
        {
          if (v24 > v17)
          {
            goto LABEL_162;
          }

          LODWORD(v18) = *(v18 + v21);
          v25 = (v16 + 5);
          *(a1 + 260) = v25;
          if (v25 + 2 > v17)
          {
            goto LABEL_162;
          }

          v23 = v16 + 7;
        }
      }
    }

    else if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = v16 + 4;
        if (v23 > v17)
        {
          goto LABEL_162;
        }

        LODWORD(v18) = *(v18 + v21) | (*(v18 + v21 + 2) << 16);
      }

      else
      {
        if (v16 + 5 > v17)
        {
          goto LABEL_162;
        }

        LODWORD(v18) = *(v18 + v21);
        v23 = v16 + 5;
      }
    }

    else if (v22)
    {
      if (v16 + 3 > v17)
      {
        goto LABEL_162;
      }

      LODWORD(v18) = *(v18 + v21);
      v23 = v16 + 3;
    }

    else
    {
      if (v21 >= v17)
      {
        goto LABEL_162;
      }

      LODWORD(v18) = *(v18 + v21);
      v23 = v16 + 2;
    }

    *(a1 + 260) = v23;
    v26 = -256 << (8 * v22);
    if (v19)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    LODWORD(v20) = v18 | v27;
  }

  a2[19] = v20;
  v28 = *(a1 + 260);
  v29 = *(a1 + 256);
  if (v28 >= v29)
  {
    goto LABEL_162;
  }

  v30 = *(a1 + 248);
  v31 = *(v30 + v28);
  v32 = *(v30 + v28);
  v33 = v28 + 1;
  *(a1 + 260) = v28 + 1;
  if (v31 < 0)
  {
    v34 = (v32 >> 1) & 7;
    if (v34 > 3)
    {
      if (v34 > 5)
      {
        if (v34 == 6)
        {
          if (v28 + 5 > v29)
          {
            goto LABEL_162;
          }

          LODWORD(v30) = *(v30 + v33);
          *(a1 + 260) = v28 + 5;
          v35 = v28 + 8;
          if (v35 > v29)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v28 + 9 > v29)
          {
            goto LABEL_162;
          }

          v30 = *(v30 + v33);
          v35 = v28 + 9;
        }
      }

      else
      {
        v36 = v28 + 5;
        if (v34 == 4)
        {
          if (v36 > v29)
          {
            goto LABEL_162;
          }

          LODWORD(v30) = *(v30 + v33);
          *(a1 + 260) = v28 + 5;
          if (v28 + 5 >= v29)
          {
            goto LABEL_162;
          }

          v35 = v28 + 6;
        }

        else
        {
          if (v36 > v29)
          {
            goto LABEL_162;
          }

          LODWORD(v30) = *(v30 + v33);
          v37 = (v28 + 5);
          *(a1 + 260) = v37;
          if (v37 + 2 > v29)
          {
            goto LABEL_162;
          }

          v35 = v28 + 7;
        }
      }
    }

    else if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = v28 + 4;
        if (v35 > v29)
        {
          goto LABEL_162;
        }

        LODWORD(v30) = *(v30 + v33) | (*(v30 + v33 + 2) << 16);
      }

      else
      {
        if (v28 + 5 > v29)
        {
          goto LABEL_162;
        }

        LODWORD(v30) = *(v30 + v33);
        v35 = v28 + 5;
      }
    }

    else if (v34)
    {
      if (v28 + 3 > v29)
      {
        goto LABEL_162;
      }

      LODWORD(v30) = *(v30 + v33);
      v35 = v28 + 3;
    }

    else
    {
      if (v33 >= v29)
      {
        goto LABEL_162;
      }

      LODWORD(v30) = *(v30 + v33);
      v35 = v28 + 2;
    }

    *(a1 + 260) = v35;
    v38 = -256 << (8 * v34);
    if (v31)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    LODWORD(v32) = v30 | v39;
  }

  a2[20] = v32;
  v40 = *(a1 + 260);
  v41 = *(a1 + 256);
  if (v40 >= v41)
  {
    goto LABEL_162;
  }

  v42 = *(a1 + 248);
  v43 = *(v42 + v40);
  v44 = *(v42 + v40);
  v45 = v40 + 1;
  *(a1 + 260) = v40 + 1;
  if (v43 < 0)
  {
    v46 = (v44 >> 1) & 7;
    if (v46 > 3)
    {
      if (v46 > 5)
      {
        if (v46 == 6)
        {
          if (v40 + 5 > v41)
          {
            goto LABEL_162;
          }

          LODWORD(v42) = *(v42 + v45);
          *(a1 + 260) = v40 + 5;
          v47 = v40 + 8;
          if (v47 > v41)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v40 + 9 > v41)
          {
            goto LABEL_162;
          }

          v42 = *(v42 + v45);
          v47 = v40 + 9;
        }
      }

      else
      {
        v48 = v40 + 5;
        if (v46 == 4)
        {
          if (v48 > v41)
          {
            goto LABEL_162;
          }

          LODWORD(v42) = *(v42 + v45);
          *(a1 + 260) = v40 + 5;
          if (v40 + 5 >= v41)
          {
            goto LABEL_162;
          }

          v47 = v40 + 6;
        }

        else
        {
          if (v48 > v41)
          {
            goto LABEL_162;
          }

          LODWORD(v42) = *(v42 + v45);
          v49 = (v40 + 5);
          *(a1 + 260) = v49;
          if (v49 + 2 > v41)
          {
            goto LABEL_162;
          }

          v47 = v40 + 7;
        }
      }
    }

    else if (v46 > 1)
    {
      if (v46 == 2)
      {
        v47 = v40 + 4;
        if (v47 > v41)
        {
          goto LABEL_162;
        }

        LODWORD(v42) = *(v42 + v45) | (*(v42 + v45 + 2) << 16);
      }

      else
      {
        if (v40 + 5 > v41)
        {
          goto LABEL_162;
        }

        LODWORD(v42) = *(v42 + v45);
        v47 = v40 + 5;
      }
    }

    else if (v46)
    {
      if (v40 + 3 > v41)
      {
        goto LABEL_162;
      }

      LODWORD(v42) = *(v42 + v45);
      v47 = v40 + 3;
    }

    else
    {
      if (v45 >= v41)
      {
        goto LABEL_162;
      }

      LODWORD(v42) = *(v42 + v45);
      v47 = v40 + 2;
    }

    *(a1 + 260) = v47;
    v50 = -256 << (8 * v46);
    if (v43)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    LODWORD(v44) = v42 | v51;
  }

  a2[21] = v44;
  v52 = *(a1 + 260);
  v53 = *(a1 + 256);
  if (v52 >= v53)
  {
    goto LABEL_162;
  }

  v54 = *(a1 + 248);
  v55 = *(v54 + v52);
  v56 = *(v54 + v52);
  v57 = v52 + 1;
  *(a1 + 260) = v52 + 1;
  if ((v55 & 0x80000000) == 0)
  {
    goto LABEL_161;
  }

  v58 = (v56 >> 1) & 7;
  if (v58 <= 3)
  {
    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v59 = v52 + 4;
        if (v59 <= v53)
        {
          LODWORD(v54) = *(v54 + v57) | (*(v54 + v57 + 2) << 16);
          goto LABEL_157;
        }
      }

      else if (v52 + 5 <= v53)
      {
        LODWORD(v54) = *(v54 + v57);
        v59 = v52 + 5;
        goto LABEL_157;
      }
    }

    else if (v58)
    {
      if (v52 + 3 <= v53)
      {
        LODWORD(v54) = *(v54 + v57);
        v59 = v52 + 3;
        goto LABEL_157;
      }
    }

    else if (v57 < v53)
    {
      LODWORD(v54) = *(v54 + v57);
      v59 = v52 + 2;
      goto LABEL_157;
    }

LABEL_162:
    glpDeserialError(a1, 1u);
  }

  if (v58 <= 5)
  {
    v60 = v52 + 5;
    if (v58 == 4)
    {
      if (v60 <= v53)
      {
        LODWORD(v54) = *(v54 + v57);
        *(a1 + 260) = v52 + 5;
        if (v52 + 5 < v53)
        {
          v59 = v52 + 6;
          goto LABEL_157;
        }
      }
    }

    else if (v60 <= v53)
    {
      LODWORD(v54) = *(v54 + v57);
      v61 = (v52 + 5);
      *(a1 + 260) = v61;
      if (v61 + 2 <= v53)
      {
        v59 = v52 + 7;
        goto LABEL_157;
      }
    }

    goto LABEL_162;
  }

  if (v58 != 6)
  {
    if (v52 + 9 <= v53)
    {
      v54 = *(v54 + v57);
      v59 = v52 + 9;
      goto LABEL_157;
    }

    goto LABEL_162;
  }

  if (v52 + 5 > v53)
  {
    goto LABEL_162;
  }

  LODWORD(v54) = *(v54 + v57);
  *(a1 + 260) = v52 + 5;
  v59 = v52 + 8;
  if (v59 > v53)
  {
    goto LABEL_162;
  }

LABEL_157:
  *(a1 + 260) = v59;
  v62 = -256 << (8 * v58);
  if (v55)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  LODWORD(v56) = v54 | v63;
LABEL_161:
  a2[22] = v56;
}

double deserializeASTFields(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 260);
  v4 = *(a1 + 256);
  if (v3 >= v4)
  {
    goto LABEL_100;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v3);
  v8 = *(v6 + v3);
  v9 = v3 + 1;
  *(a1 + 260) = v3 + 1;
  if (v7 < 0)
  {
    v10 = (v8 >> 1) & 7;
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_100;
          }

          LODWORD(v6) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          v11 = v3 + 8;
          if (v11 > v4)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_100;
          }

          v6 = *(v6 + v9);
          v11 = v3 + 9;
        }
      }

      else
      {
        v12 = v3 + 5;
        if (v10 == 4)
        {
          if (v12 > v4)
          {
            goto LABEL_100;
          }

          LODWORD(v6) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_100;
          }

          v11 = v3 + 6;
        }

        else
        {
          if (v12 > v4)
          {
            goto LABEL_100;
          }

          LODWORD(v6) = *(v6 + v9);
          v13 = (v3 + 5);
          *(a1 + 260) = v13;
          if (v13 + 2 > v4)
          {
            goto LABEL_100;
          }

          v11 = v3 + 7;
        }
      }
    }

    else if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v3 + 4;
        if (v11 > v4)
        {
          goto LABEL_100;
        }

        LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
      }

      else
      {
        if (v3 + 5 > v4)
        {
          goto LABEL_100;
        }

        LODWORD(v6) = *(v6 + v9);
        v11 = v3 + 5;
      }
    }

    else if (v10)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_100;
      }

      LODWORD(v6) = *(v6 + v9);
      v11 = v3 + 3;
    }

    else
    {
      if (v9 >= v4)
      {
        goto LABEL_100;
      }

      LODWORD(v6) = *(v6 + v9);
      v11 = v3 + 2;
    }

    *(a1 + 260) = v11;
    v14 = -256 << (8 * v10);
    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v8) = v6 | v15;
  }

  *(a2 + 16) = v8;
  v16 = *(a1 + 260);
  v17 = *(a1 + 256);
  if (v16 >= v17)
  {
    goto LABEL_100;
  }

  v18 = *(a1 + 248);
  v19 = *(v18 + v16);
  v20 = *(v18 + v16);
  v21 = v16 + 1;
  *(a1 + 260) = v16 + 1;
  if (v19 < 0)
  {
    v22 = (v20 >> 1) & 7;
    if (v22 <= 3)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v24 = v16 + 4;
          if (v24 > v17)
          {
            goto LABEL_100;
          }

          v23 = *(v18 + v21) | (*(v18 + v21 + 2) << 16);
        }

        else
        {
          if (v16 + 5 > v17)
          {
            goto LABEL_100;
          }

          v23 = *(v18 + v21);
          v24 = v16 + 5;
        }
      }

      else if (v22)
      {
        if (v16 + 3 > v17)
        {
          goto LABEL_100;
        }

        v23 = *(v18 + v21);
        v24 = v16 + 3;
      }

      else
      {
        if (v21 >= v17)
        {
          goto LABEL_100;
        }

        v23 = *(v18 + v21);
        v24 = v16 + 2;
      }

LABEL_62:
      *(a1 + 260) = v24;
      goto LABEL_63;
    }

    if (v22 > 5)
    {
      if (v22 != 6)
      {
        if (v16 + 9 > v17)
        {
          goto LABEL_100;
        }

        v23 = *(v18 + v21);
        v24 = v16 + 9;
        goto LABEL_62;
      }

      if (v16 + 5 > v17)
      {
        goto LABEL_100;
      }

      v26 = *(v18 + v21);
      v29 = v16 + 5;
      *(a1 + 260) = v16 + 5;
      v28 = v16 + 8;
      if (v28 > v17)
      {
        goto LABEL_100;
      }

      v27 = *(v18 + v29) | (*(v18 + v29 + 2) << 16);
    }

    else
    {
      v25 = v16 + 5;
      if (v22 == 4)
      {
        if (v25 > v17)
        {
          goto LABEL_100;
        }

        v26 = *(v18 + v21);
        *(a1 + 260) = v16 + 5;
        if (v16 + 5 >= v17)
        {
          goto LABEL_100;
        }

        v27 = *(v18 + (v16 + 5));
        v28 = v16 + 6;
      }

      else
      {
        if (v25 > v17)
        {
          goto LABEL_100;
        }

        v26 = *(v18 + v21);
        v30 = (v16 + 5);
        *(a1 + 260) = v30;
        if (v30 + 2 > v17)
        {
          goto LABEL_100;
        }

        v27 = *(v18 + v30);
        v28 = v16 + 7;
      }
    }

    *(a1 + 260) = v28;
    v23 = v26 | (v27 << 32);
LABEL_63:
    v31 = -256 << (8 * v22);
    if (v19)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v20 = v23 | v32;
  }

  *(a2 + 24) = v20;
  *&v48 = MEMORY[0x277D85DD0];
  *(&v48 + 1) = 0x40000000;
  v49 = __deserialize_GLPType_block_invoke;
  v50 = &__block_descriptor_tmp_12;
  v51 = a1;
  deserialize_pointer(a1, &v48, (a2 + 32));
  v33 = deserialize_GLPString(a1);
  v35 = *(a1 + 260);
  v36 = *(a1 + 256);
  if (v35 >= v36)
  {
    goto LABEL_100;
  }

  v37 = *(a1 + 248);
  v38 = *(v37 + v35);
  v39 = *(v37 + v35);
  v40 = v35 + 1;
  *(a1 + 260) = v35 + 1;
  if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  v41 = (v39 >> 1) & 7;
  if (((v39 >> 1) & 7) <= 3)
  {
    if (((v39 >> 1) & 7) > 1)
    {
      if (v41 == 2)
      {
        v42 = v35 + 4;
        if (v42 <= v36)
        {
          LODWORD(v37) = *(v37 + v40) | (*(v37 + v40 + 2) << 16);
          goto LABEL_95;
        }
      }

      else if (v35 + 5 <= v36)
      {
        LODWORD(v37) = *(v37 + v40);
        v42 = v35 + 5;
        goto LABEL_95;
      }
    }

    else if (v41)
    {
      if (v35 + 3 <= v36)
      {
        LODWORD(v37) = *(v37 + v40);
        v42 = v35 + 3;
        goto LABEL_95;
      }
    }

    else if (v40 < v36)
    {
      LODWORD(v37) = *(v37 + v40);
      v42 = v35 + 2;
      goto LABEL_95;
    }

LABEL_100:
    glpDeserialError(a1, 1u);
  }

  if (((v39 >> 1) & 7) <= 5)
  {
    v43 = v35 + 5;
    if (v41 == 4)
    {
      if (v43 <= v36)
      {
        LODWORD(v37) = *(v37 + v40);
        *(a1 + 260) = v35 + 5;
        if (v35 + 5 < v36)
        {
          v42 = v35 + 6;
          goto LABEL_95;
        }
      }
    }

    else if (v43 <= v36)
    {
      LODWORD(v37) = *(v37 + v40);
      v44 = (v35 + 5);
      *(a1 + 260) = v44;
      if (v44 + 2 <= v36)
      {
        v42 = v35 + 7;
        goto LABEL_95;
      }
    }

    goto LABEL_100;
  }

  if (v41 != 6)
  {
    if (v35 + 9 <= v36)
    {
      v37 = *(v37 + v40);
      v42 = v35 + 9;
      goto LABEL_95;
    }

    goto LABEL_100;
  }

  if (v35 + 5 > v36)
  {
    goto LABEL_100;
  }

  LODWORD(v37) = *(v37 + v40);
  *(a1 + 260) = v35 + 5;
  v42 = v35 + 8;
  if (v42 > v36)
  {
    goto LABEL_100;
  }

LABEL_95:
  *(a1 + 260) = v42;
  v45 = -256 << (8 * v41);
  if (v38)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  LODWORD(v39) = v37 | v46;
LABEL_99:
  glpMakeSourceLocation(v33, v34, v39, &v48);
  result = *&v48;
  *(a2 + 40) = v48;
  *(a2 + 56) = v49;
  return result;
}

void deserializeCallFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

void deserializeStructureFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}

uint64_t serialize_GLPType(void *a1, unint64_t a2)
{
  ReturnType = a2;
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  while (1)
  {
    Kind = glpTypeGetKind(ReturnType);
    v6 = Kind;
    v7 = glp_serialized_integer32_control(Kind);
    v8 = *(a1 + 8);
    v9 = *(a1 + 9);
    v10 = v9 + 1;
    if (v9 + 1 <= v8)
    {
      v13 = a1[5];
      v14 = *(a1 + 9);
    }

    else
    {
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v11 = 2 * v8;
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = (a1[1])(*a1, v12, "Vector Storage (uint8_t, growth)");
      memcpy(v13, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v12;
      a1[5] = v13;
      v14 = *(a1 + 9);
    }

    memmove(&v13[v9 + 1], &v13[v9], (v14 - v9));
    *(a1[5] + v9) = v7;
    v15 = *(a1 + 9);
    v16 = v15 + 1;
    *(a1 + 9) = v15 + 1;
    if (v7 < 0)
    {
      v17 = (v7 >> 1) & 7;
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v36 = v15 + 4;
          v37 = *(a1 + 8);
          if (v36 <= v37)
          {
            v40 = a1[5];
            v41 = v16;
          }

          else
          {
            if (v37 <= 1)
            {
              v37 = 1;
            }

            v38 = 2 * v37;
            if (v38 <= v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = v38;
            }

            v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
            memcpy(v40, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v39;
            a1[5] = v40;
            v41 = *(a1 + 9);
          }

          memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
          v43 = a1[5] + v16;
          *(v43 + 2) = BYTE2(v6);
          *v43 = v6;
          v42 = 3;
        }

        else
        {
          if (v17 != 3)
          {
            goto LABEL_52;
          }

          v24 = v15 + 5;
          v25 = *(a1 + 8);
          if (v24 <= v25)
          {
            v28 = a1[5];
            v29 = v16;
          }

          else
          {
            if (v25 <= 1)
            {
              v25 = 1;
            }

            v26 = 2 * v25;
            if (v26 <= v24)
            {
              v27 = v24;
            }

            else
            {
              v27 = v26;
            }

            v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
            memcpy(v28, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v27;
            a1[5] = v28;
            v29 = *(a1 + 9);
          }

          memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
          *(a1[5] + v16) = v6;
          v42 = 4;
        }
      }

      else if (v17)
      {
        v18 = v15 + 3;
        v19 = *(a1 + 8);
        if (v18 <= v19)
        {
          v22 = a1[5];
          v23 = v16;
        }

        else
        {
          if (v19 <= 1)
          {
            v19 = 1;
          }

          v20 = 2 * v19;
          if (v20 <= v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = v20;
          }

          v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
          memcpy(v22, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v21;
          a1[5] = v22;
          v23 = *(a1 + 9);
        }

        memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
        *(a1[5] + v16) = v6;
        v42 = 2;
      }

      else
      {
        v30 = v15 + 2;
        v31 = *(a1 + 8);
        if (v30 <= v31)
        {
          v34 = a1[5];
          v35 = v16;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v33;
          a1[5] = v34;
          v35 = *(a1 + 9);
        }

        memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
        *(a1[5] + v16) = v6;
        v42 = 1;
      }

      *(a1 + 9) += v42;
    }

LABEL_52:
    v44 = glpTypeGetKind(ReturnType);
    if (v44 != 4)
    {
      break;
    }

    ElementCount = glpAggregateTypeGetElementCount(ReturnType);
    v46 = ElementCount;
    v47 = glp_serialized_integer32_control(ElementCount);
    v48 = *(a1 + 8);
    v49 = *(a1 + 9);
    v50 = v49 + 1;
    if (v49 + 1 <= v48)
    {
      v53 = a1[5];
      v54 = *(a1 + 9);
    }

    else
    {
      if (v48 <= 1)
      {
        v48 = 1;
      }

      v51 = 2 * v48;
      if (v51 <= v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      v53 = (a1[1])(*a1, v52, "Vector Storage (uint8_t, growth)");
      memcpy(v53, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v52;
      a1[5] = v53;
      v54 = *(a1 + 9);
    }

    memmove(&v53[v49 + 1], &v53[v49], (v54 - v49));
    *(a1[5] + v49) = v47;
    v55 = *(a1 + 9);
    v56 = v55 + 1;
    *(a1 + 9) = v55 + 1;
    if (v47 < 0)
    {
      v57 = (v47 >> 1) & 7;
      if (v57 > 1)
      {
        if (v57 == 2)
        {
          v76 = v55 + 4;
          v77 = *(a1 + 8);
          if (v76 <= v77)
          {
            v80 = a1[5];
            v81 = v56;
          }

          else
          {
            if (v77 <= 1)
            {
              v77 = 1;
            }

            v78 = 2 * v77;
            if (v78 <= v76)
            {
              v79 = v76;
            }

            else
            {
              v79 = v78;
            }

            v80 = (a1[1])(*a1, v79, "Vector Storage (uint8_t, growth)");
            memcpy(v80, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v79;
            a1[5] = v80;
            v81 = *(a1 + 9);
          }

          memmove(&v80[v56 + 1], &v80[v56], v81 - v56);
          v83 = a1[5] + v56;
          *(v83 + 2) = BYTE2(v46);
          *v83 = v46;
          v82 = 3;
        }

        else
        {
          if (v57 != 3)
          {
            goto LABEL_103;
          }

          v64 = v55 + 5;
          v65 = *(a1 + 8);
          if (v64 <= v65)
          {
            v68 = a1[5];
            v69 = v56;
          }

          else
          {
            if (v65 <= 1)
            {
              v65 = 1;
            }

            v66 = 2 * v65;
            if (v66 <= v64)
            {
              v67 = v64;
            }

            else
            {
              v67 = v66;
            }

            v68 = (a1[1])(*a1, v67, "Vector Storage (uint8_t, growth)");
            memcpy(v68, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v67;
            a1[5] = v68;
            v69 = *(a1 + 9);
          }

          memmove(&v68[v56 + 1], &v68[v56], v69 - v56);
          *(a1[5] + v56) = v46;
          v82 = 4;
        }
      }

      else if (v57)
      {
        v58 = v55 + 3;
        v59 = *(a1 + 8);
        if (v58 <= v59)
        {
          v62 = a1[5];
          v63 = v56;
        }

        else
        {
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = 2 * v59;
          if (v60 <= v58)
          {
            v61 = v58;
          }

          else
          {
            v61 = v60;
          }

          v62 = (a1[1])(*a1, v61, "Vector Storage (uint8_t, growth)");
          memcpy(v62, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v61;
          a1[5] = v62;
          v63 = *(a1 + 9);
        }

        memmove(&v62[v56 + 1], &v62[v56], v63 - v56);
        *(a1[5] + v56) = v46;
        v82 = 2;
      }

      else
      {
        v70 = v55 + 2;
        v71 = *(a1 + 8);
        if (v70 <= v71)
        {
          v74 = a1[5];
          v75 = v56;
        }

        else
        {
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = 2 * v71;
          if (v72 <= v70)
          {
            v73 = v70;
          }

          else
          {
            v73 = v72;
          }

          v74 = (a1[1])(*a1, v73, "Vector Storage (uint8_t, growth)");
          memcpy(v74, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v73;
          a1[5] = v74;
          v75 = *(a1 + 9);
        }

        memmove(&v74[v56 + 1], &v74[v56], v75 - v56);
        *(a1[5] + v56) = v46;
        v82 = 1;
      }

      *(a1 + 9) += v82;
    }

LABEL_103:
    if (v46)
    {
      v84 = 0;
      while (2)
      {
        ElementType = glpAggregateTypeGetElementType(ReturnType, v84);
        serialize_GLPType(a1, ElementType);
        ElementFlags = glpAggregateTypeGetElementFlags(ReturnType, v84);
        v87 = glp_serialized_integer64_control(ElementFlags);
        v88 = *(a1 + 8);
        v89 = *(a1 + 9);
        v90 = v89 + 1;
        if (v89 + 1 <= v88)
        {
          v93 = a1[5];
          v94 = *(a1 + 9);
        }

        else
        {
          if (v88 <= 1)
          {
            v88 = 1;
          }

          v91 = 2 * v88;
          if (v91 <= v90)
          {
            v92 = v90;
          }

          else
          {
            v92 = v91;
          }

          v93 = (a1[1])(*a1, v92, "Vector Storage (uint8_t, growth)");
          memcpy(v93, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v92;
          a1[5] = v93;
          v94 = *(a1 + 9);
        }

        memmove(&v93[v89 + 1], &v93[v89], (v94 - v89));
        *(a1[5] + v89) = v87;
        v95 = *(a1 + 9);
        v96 = v95 + 1;
        *(a1 + 9) = v95 + 1;
        if ((v87 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        v97 = (v87 >> 1) & 7;
        if (v97 > 3)
        {
          if (((v87 >> 1) & 7) <= 5)
          {
            v104 = v95 + 5;
            if (v97 != 4)
            {
              v128 = *(a1 + 8);
              if (v104 <= v128)
              {
                v131 = a1[5];
                v132 = v96;
              }

              else
              {
                if (v128 <= 1)
                {
                  v128 = 1;
                }

                v129 = 2 * v128;
                if (v129 <= v104)
                {
                  v130 = v104;
                }

                else
                {
                  v130 = v129;
                }

                v131 = (a1[1])(*a1, v130, "Vector Storage (uint8_t, growth)");
                memcpy(v131, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v130;
                a1[5] = v131;
                v132 = *(a1 + 9);
              }

              memmove(&v131[v96 + 1], &v131[v96], v132 - v96);
              *(a1[5] + v96) = ElementFlags;
              v166 = *(a1 + 8);
              v165 = *(a1 + 9);
              v96 = v165 + 4;
              *(a1 + 9) = v165 + 4;
              v167 = v165 + 6;
              if (v167 <= v166)
              {
                v170 = a1[5];
                v171 = v96;
              }

              else
              {
                if (v166 <= 1)
                {
                  v166 = 1;
                }

                v168 = 2 * v166;
                if (v168 <= v167)
                {
                  v169 = v167;
                }

                else
                {
                  v169 = v168;
                }

                v170 = (a1[1])(*a1, v169, "Vector Storage (uint8_t, growth)");
                memcpy(v170, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v169;
                a1[5] = v170;
                v171 = *(a1 + 9);
              }

              ElementFlags >>= 32;
              v164 = v171 - v96;
              v163 = &v170[v96];
              goto LABEL_219;
            }

            v105 = *(a1 + 8);
            if (v104 <= v105)
            {
              v108 = a1[5];
              v109 = v96;
            }

            else
            {
              if (v105 <= 1)
              {
                v105 = 1;
              }

              v106 = 2 * v105;
              if (v106 <= v104)
              {
                v107 = v104;
              }

              else
              {
                v107 = v106;
              }

              v108 = (a1[1])(*a1, v107, "Vector Storage (uint8_t, growth)");
              memcpy(v108, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v107;
              a1[5] = v108;
              v109 = *(a1 + 9);
            }

            memmove(&v108[v96 + 1], &v108[v96], v109 - v96);
            *(a1[5] + v96) = ElementFlags;
            v148 = *(a1 + 8);
            v147 = *(a1 + 9);
            v96 = v147 + 4;
            *(a1 + 9) = v147 + 4;
            v149 = v147 + 5;
            if (v149 <= v148)
            {
              v152 = a1[5];
              v153 = v96;
            }

            else
            {
              if (v148 <= 1)
              {
                v148 = 1;
              }

              v150 = 2 * v148;
              if (v150 <= v149)
              {
                v151 = v149;
              }

              else
              {
                v151 = v150;
              }

              v152 = (a1[1])(*a1, v151, "Vector Storage (uint8_t, growth)");
              memcpy(v152, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v151;
              a1[5] = v152;
              v153 = *(a1 + 9);
            }

            ElementFlags >>= 32;
            v146 = v153 - v96;
            v145 = &v152[v96];
LABEL_213:
            memmove(v145 + 1, v145, v146);
            *(a1[5] + v96) = ElementFlags;
            v172 = 1;
LABEL_220:
            *(a1 + 9) += v172;
LABEL_221:
            ElementLayout = glpAggregateTypeGetElementLayout(ReturnType, v84);
            serialize_GLPLayoutObject(a1, ElementLayout);
            if (v46 == ++v84)
            {
              goto LABEL_222;
            }

            continue;
          }

          if (v97 != 6)
          {
            v139 = v95 + 9;
            v140 = *(a1 + 8);
            if (v139 <= v140)
            {
              v143 = a1[5];
              v144 = v96;
            }

            else
            {
              if (v140 <= 1)
              {
                v140 = 1;
              }

              v141 = 2 * v140;
              if (v141 <= v139)
              {
                v142 = v139;
              }

              else
              {
                v142 = v141;
              }

              v143 = (a1[1])(*a1, v142, "Vector Storage (uint8_t, growth)");
              memcpy(v143, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v142;
              a1[5] = v143;
              v144 = *(a1 + 9);
            }

            memmove(&v143[v96 + 1], &v143[v96], v144 - v96);
            *(a1[5] + v96) = ElementFlags;
            v172 = 8;
            goto LABEL_220;
          }

          v116 = v95 + 5;
          v117 = *(a1 + 8);
          if (v116 <= v117)
          {
            v120 = a1[5];
            v121 = v96;
          }

          else
          {
            if (v117 <= 1)
            {
              v117 = 1;
            }

            v118 = 2 * v117;
            if (v118 <= v116)
            {
              v119 = v116;
            }

            else
            {
              v119 = v118;
            }

            v120 = (a1[1])(*a1, v119, "Vector Storage (uint8_t, growth)");
            memcpy(v120, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v119;
            a1[5] = v120;
            v121 = *(a1 + 9);
          }

          memmove(&v120[v96 + 1], &v120[v96], v121 - v96);
          *(a1[5] + v96) = ElementFlags;
          v156 = *(a1 + 8);
          v155 = *(a1 + 9);
          v157 = v155 + 4;
          *(a1 + 9) = v155 + 4;
          v158 = v155 + 7;
          if (v158 <= v156)
          {
            v161 = a1[5];
            v162 = v157;
          }

          else
          {
            if (v156 <= 1)
            {
              v156 = 1;
            }

            v159 = 2 * v156;
            if (v159 <= v158)
            {
              v160 = v158;
            }

            else
            {
              v160 = v159;
            }

            v161 = (a1[1])(*a1, v160, "Vector Storage (uint8_t, growth)");
            memcpy(v161, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v160;
            a1[5] = v161;
            v162 = *(a1 + 9);
          }

          memmove(&v161[v157 + 1], &v161[v157], v162 - v157);
          v173 = a1[5] + v157;
          *(v173 + 2) = BYTE6(ElementFlags);
          *v173 = WORD2(ElementFlags);
        }

        else
        {
          if (((v87 >> 1) & 7) <= 1)
          {
            if (!v97)
            {
              v98 = v95 + 2;
              v99 = *(a1 + 8);
              if (v98 <= v99)
              {
                v102 = a1[5];
                v103 = v96;
              }

              else
              {
                if (v99 <= 1)
                {
                  v99 = 1;
                }

                v100 = 2 * v99;
                if (v100 <= v98)
                {
                  v101 = v98;
                }

                else
                {
                  v101 = v100;
                }

                v102 = (a1[1])(*a1, v101, "Vector Storage (uint8_t, growth)");
                memcpy(v102, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v101;
                a1[5] = v102;
                v103 = *(a1 + 9);
              }

              v145 = &v102[v96];
              v146 = v103 - v96;
              goto LABEL_213;
            }

            v122 = v95 + 3;
            v123 = *(a1 + 8);
            if (v122 <= v123)
            {
              v126 = a1[5];
              v127 = v96;
            }

            else
            {
              if (v123 <= 1)
              {
                v123 = 1;
              }

              v124 = 2 * v123;
              if (v124 <= v122)
              {
                v125 = v122;
              }

              else
              {
                v125 = v124;
              }

              v126 = (a1[1])(*a1, v125, "Vector Storage (uint8_t, growth)");
              memcpy(v126, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v125;
              a1[5] = v126;
              v127 = *(a1 + 9);
            }

            v163 = &v126[v96];
            v164 = v127 - v96;
LABEL_219:
            memmove(v163 + 1, v163, v164);
            *(a1[5] + v96) = ElementFlags;
            v172 = 2;
            goto LABEL_220;
          }

          if (v97 != 2)
          {
            v133 = v95 + 5;
            v134 = *(a1 + 8);
            if (v133 <= v134)
            {
              v137 = a1[5];
              v138 = v96;
            }

            else
            {
              if (v134 <= 1)
              {
                v134 = 1;
              }

              v135 = 2 * v134;
              if (v135 <= v133)
              {
                v136 = v133;
              }

              else
              {
                v136 = v135;
              }

              v137 = (a1[1])(*a1, v136, "Vector Storage (uint8_t, growth)");
              memcpy(v137, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v136;
              a1[5] = v137;
              v138 = *(a1 + 9);
            }

            memmove(&v137[v96 + 1], &v137[v96], v138 - v96);
            *(a1[5] + v96) = ElementFlags;
            v172 = 4;
            goto LABEL_220;
          }

          v110 = v95 + 4;
          v111 = *(a1 + 8);
          if (v110 <= v111)
          {
            v114 = a1[5];
            v115 = v96;
          }

          else
          {
            if (v111 <= 1)
            {
              v111 = 1;
            }

            v112 = 2 * v111;
            if (v112 <= v110)
            {
              v113 = v110;
            }

            else
            {
              v113 = v112;
            }

            v114 = (a1[1])(*a1, v113, "Vector Storage (uint8_t, growth)");
            memcpy(v114, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v113;
            a1[5] = v114;
            v115 = *(a1 + 9);
          }

          memmove(&v114[v96 + 1], &v114[v96], v115 - v96);
          v154 = a1[5] + v96;
          *(v154 + 2) = BYTE2(ElementFlags);
          *v154 = ElementFlags;
        }

        break;
      }

      v172 = 3;
      goto LABEL_220;
    }

LABEL_222:
    ReturnType = glpFunctionTypeGetReturnType(ReturnType);
    result = serialize_pointer(a1, ReturnType);
    if (!result)
    {
      return result;
    }
  }

  if (v44 <= 1)
  {
    if (!v44)
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(ReturnType);
      goto LABEL_377;
    }

    if (v44 != 1)
    {
      goto LABEL_559;
    }

    v178 = glpAggregateTypeGetElementCount(ReturnType);
    v179 = v178;
    v180 = glp_serialized_integer32_control(v178);
    v181 = *(a1 + 8);
    v182 = *(a1 + 9);
    v183 = v182 + 1;
    if (v182 + 1 <= v181)
    {
      v186 = a1[5];
      v187 = *(a1 + 9);
    }

    else
    {
      if (v181 <= 1)
      {
        v181 = 1;
      }

      v184 = 2 * v181;
      if (v184 <= v183)
      {
        v185 = v183;
      }

      else
      {
        v185 = v184;
      }

      v186 = (a1[1])(*a1, v185, "Vector Storage (uint8_t, growth)");
      memcpy(v186, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v185;
      a1[5] = v186;
      v187 = *(a1 + 9);
    }

    memmove(&v186[v182 + 1], &v186[v182], (v187 - v182));
    *(a1[5] + v182) = v180;
    v229 = *(a1 + 9);
    v230 = v229 + 1;
    *(a1 + 9) = v229 + 1;
    if ((v180 & 0x80000000) == 0)
    {
      goto LABEL_437;
    }

    v231 = (v180 >> 1) & 7;
    if (v231 > 1)
    {
      if (v231 == 2)
      {
        v286 = v229 + 4;
        v287 = *(a1 + 8);
        if (v286 <= v287)
        {
          v290 = a1[5];
          v291 = v230;
        }

        else
        {
          if (v287 <= 1)
          {
            v287 = 1;
          }

          v288 = 2 * v287;
          if (v288 <= v286)
          {
            v289 = v286;
          }

          else
          {
            v289 = v288;
          }

          v290 = (a1[1])(*a1, v289, "Vector Storage (uint8_t, growth)");
          memcpy(v290, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v289;
          a1[5] = v290;
          v291 = *(a1 + 9);
        }

        memmove(&v290[v230 + 1], &v290[v230], v291 - v230);
        v335 = a1[5] + v230;
        *(v335 + 2) = BYTE2(v179);
        *v335 = v179;
        v334 = 3;
      }

      else
      {
        if (v231 != 3)
        {
LABEL_437:
          if (!v179)
          {
LABEL_556:
            Name = glpStructTypeGetName(ReturnType);

            return serialize_GLPString(a1, Name, v429);
          }

          v336 = 0;
          while (1)
          {
            v337 = glpAggregateTypeGetElementType(ReturnType, v336);
            serialize_GLPType(a1, v337);
            v338 = glpAggregateTypeGetElementFlags(ReturnType, v336);
            v339 = glp_serialized_integer64_control(v338);
            v340 = *(a1 + 8);
            v341 = *(a1 + 9);
            v342 = v341 + 1;
            if (v341 + 1 <= v340)
            {
              v345 = a1[5];
              v346 = *(a1 + 9);
            }

            else
            {
              if (v340 <= 1)
              {
                v340 = 1;
              }

              v343 = 2 * v340;
              if (v343 <= v342)
              {
                v344 = v342;
              }

              else
              {
                v344 = v343;
              }

              v345 = (a1[1])(*a1, v344, "Vector Storage (uint8_t, growth)");
              memcpy(v345, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v344;
              a1[5] = v345;
              v346 = *(a1 + 9);
            }

            memmove(&v345[v341 + 1], &v345[v341], (v346 - v341));
            *(a1[5] + v341) = v339;
            v347 = *(a1 + 9);
            v348 = v347 + 1;
            *(a1 + 9) = v347 + 1;
            if ((v339 & 0x80000000) == 0)
            {
              goto LABEL_555;
            }

            v349 = (v339 >> 1) & 7;
            if (v349 > 3)
            {
              if (((v339 >> 1) & 7) > 5)
              {
                if (v349 != 6)
                {
                  v391 = v347 + 9;
                  v392 = *(a1 + 8);
                  if (v391 <= v392)
                  {
                    v395 = a1[5];
                    v396 = v348;
                  }

                  else
                  {
                    if (v392 <= 1)
                    {
                      v392 = 1;
                    }

                    v393 = 2 * v392;
                    if (v393 <= v391)
                    {
                      v394 = v391;
                    }

                    else
                    {
                      v394 = v393;
                    }

                    v395 = (a1[1])(*a1, v394, "Vector Storage (uint8_t, growth)");
                    memcpy(v395, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v394;
                    a1[5] = v395;
                    v396 = *(a1 + 9);
                  }

                  memmove(&v395[v348 + 1], &v395[v348], v396 - v348);
                  *(a1[5] + v348) = v338;
                  v424 = 8;
                  goto LABEL_554;
                }

                v368 = v347 + 5;
                v369 = *(a1 + 8);
                if (v368 <= v369)
                {
                  v372 = a1[5];
                  v373 = v348;
                }

                else
                {
                  if (v369 <= 1)
                  {
                    v369 = 1;
                  }

                  v370 = 2 * v369;
                  if (v370 <= v368)
                  {
                    v371 = v368;
                  }

                  else
                  {
                    v371 = v370;
                  }

                  v372 = (a1[1])(*a1, v371, "Vector Storage (uint8_t, growth)");
                  memcpy(v372, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v371;
                  a1[5] = v372;
                  v373 = *(a1 + 9);
                }

                memmove(&v372[v348 + 1], &v372[v348], v373 - v348);
                *(a1[5] + v348) = v338;
                v408 = *(a1 + 8);
                v407 = *(a1 + 9);
                v409 = v407 + 4;
                *(a1 + 9) = v407 + 4;
                v410 = v407 + 7;
                if (v410 <= v408)
                {
                  v413 = a1[5];
                  v414 = v409;
                }

                else
                {
                  if (v408 <= 1)
                  {
                    v408 = 1;
                  }

                  v411 = 2 * v408;
                  if (v411 <= v410)
                  {
                    v412 = v410;
                  }

                  else
                  {
                    v412 = v411;
                  }

                  v413 = (a1[1])(*a1, v412, "Vector Storage (uint8_t, growth)");
                  memcpy(v413, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v412;
                  a1[5] = v413;
                  v414 = *(a1 + 9);
                }

                memmove(&v413[v409 + 1], &v413[v409], v414 - v409);
                v425 = a1[5] + v409;
                *(v425 + 2) = BYTE6(v338);
                *v425 = WORD2(v338);
LABEL_550:
                v424 = 3;
                goto LABEL_554;
              }

              v356 = v347 + 5;
              if (v349 != 4)
              {
                v380 = *(a1 + 8);
                if (v356 <= v380)
                {
                  v383 = a1[5];
                  v384 = v348;
                }

                else
                {
                  if (v380 <= 1)
                  {
                    v380 = 1;
                  }

                  v381 = 2 * v380;
                  if (v381 <= v356)
                  {
                    v382 = v356;
                  }

                  else
                  {
                    v382 = v381;
                  }

                  v383 = (a1[1])(*a1, v382, "Vector Storage (uint8_t, growth)");
                  memcpy(v383, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v382;
                  a1[5] = v383;
                  v384 = *(a1 + 9);
                }

                memmove(&v383[v348 + 1], &v383[v348], v384 - v348);
                *(a1[5] + v348) = v338;
                v418 = *(a1 + 8);
                v417 = *(a1 + 9);
                v348 = v417 + 4;
                *(a1 + 9) = v417 + 4;
                v419 = v417 + 6;
                if (v419 <= v418)
                {
                  v422 = a1[5];
                  v423 = v348;
                }

                else
                {
                  if (v418 <= 1)
                  {
                    v418 = 1;
                  }

                  v420 = 2 * v418;
                  if (v420 <= v419)
                  {
                    v421 = v419;
                  }

                  else
                  {
                    v421 = v420;
                  }

                  v422 = (a1[1])(*a1, v421, "Vector Storage (uint8_t, growth)");
                  memcpy(v422, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v421;
                  a1[5] = v422;
                  v423 = *(a1 + 9);
                }

                v338 >>= 32;
                v416 = v423 - v348;
                v415 = &v422[v348];
                goto LABEL_553;
              }

              v357 = *(a1 + 8);
              if (v356 <= v357)
              {
                v360 = a1[5];
                v361 = v348;
              }

              else
              {
                if (v357 <= 1)
                {
                  v357 = 1;
                }

                v358 = 2 * v357;
                if (v358 <= v356)
                {
                  v359 = v356;
                }

                else
                {
                  v359 = v358;
                }

                v360 = (a1[1])(*a1, v359, "Vector Storage (uint8_t, growth)");
                memcpy(v360, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v359;
                a1[5] = v360;
                v361 = *(a1 + 9);
              }

              memmove(&v360[v348 + 1], &v360[v348], v361 - v348);
              *(a1[5] + v348) = v338;
              v400 = *(a1 + 8);
              v399 = *(a1 + 9);
              v348 = v399 + 4;
              *(a1 + 9) = v399 + 4;
              v401 = v399 + 5;
              if (v401 <= v400)
              {
                v404 = a1[5];
                v405 = v348;
              }

              else
              {
                if (v400 <= 1)
                {
                  v400 = 1;
                }

                v402 = 2 * v400;
                if (v402 <= v401)
                {
                  v403 = v401;
                }

                else
                {
                  v403 = v402;
                }

                v404 = (a1[1])(*a1, v403, "Vector Storage (uint8_t, growth)");
                memcpy(v404, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v403;
                a1[5] = v404;
                v405 = *(a1 + 9);
              }

              v338 >>= 32;
              v398 = v405 - v348;
              v397 = &v404[v348];
            }

            else
            {
              if (((v339 >> 1) & 7) > 1)
              {
                if (v349 != 2)
                {
                  v385 = v347 + 5;
                  v386 = *(a1 + 8);
                  if (v385 <= v386)
                  {
                    v389 = a1[5];
                    v390 = v348;
                  }

                  else
                  {
                    if (v386 <= 1)
                    {
                      v386 = 1;
                    }

                    v387 = 2 * v386;
                    if (v387 <= v385)
                    {
                      v388 = v385;
                    }

                    else
                    {
                      v388 = v387;
                    }

                    v389 = (a1[1])(*a1, v388, "Vector Storage (uint8_t, growth)");
                    memcpy(v389, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v388;
                    a1[5] = v389;
                    v390 = *(a1 + 9);
                  }

                  memmove(&v389[v348 + 1], &v389[v348], v390 - v348);
                  *(a1[5] + v348) = v338;
                  v424 = 4;
                  goto LABEL_554;
                }

                v362 = v347 + 4;
                v363 = *(a1 + 8);
                if (v362 <= v363)
                {
                  v366 = a1[5];
                  v367 = v348;
                }

                else
                {
                  if (v363 <= 1)
                  {
                    v363 = 1;
                  }

                  v364 = 2 * v363;
                  if (v364 <= v362)
                  {
                    v365 = v362;
                  }

                  else
                  {
                    v365 = v364;
                  }

                  v366 = (a1[1])(*a1, v365, "Vector Storage (uint8_t, growth)");
                  memcpy(v366, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v365;
                  a1[5] = v366;
                  v367 = *(a1 + 9);
                }

                memmove(&v366[v348 + 1], &v366[v348], v367 - v348);
                v406 = a1[5] + v348;
                *(v406 + 2) = BYTE2(v338);
                *v406 = v338;
                goto LABEL_550;
              }

              if (v349)
              {
                v374 = v347 + 3;
                v375 = *(a1 + 8);
                if (v374 <= v375)
                {
                  v378 = a1[5];
                  v379 = v348;
                }

                else
                {
                  if (v375 <= 1)
                  {
                    v375 = 1;
                  }

                  v376 = 2 * v375;
                  if (v376 <= v374)
                  {
                    v377 = v374;
                  }

                  else
                  {
                    v377 = v376;
                  }

                  v378 = (a1[1])(*a1, v377, "Vector Storage (uint8_t, growth)");
                  memcpy(v378, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v377;
                  a1[5] = v378;
                  v379 = *(a1 + 9);
                }

                v415 = &v378[v348];
                v416 = v379 - v348;
LABEL_553:
                memmove(v415 + 1, v415, v416);
                *(a1[5] + v348) = v338;
                v424 = 2;
                goto LABEL_554;
              }

              v350 = v347 + 2;
              v351 = *(a1 + 8);
              if (v350 <= v351)
              {
                v354 = a1[5];
                v355 = v348;
              }

              else
              {
                if (v351 <= 1)
                {
                  v351 = 1;
                }

                v352 = 2 * v351;
                if (v352 <= v350)
                {
                  v353 = v350;
                }

                else
                {
                  v353 = v352;
                }

                v354 = (a1[1])(*a1, v353, "Vector Storage (uint8_t, growth)");
                memcpy(v354, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v353;
                a1[5] = v354;
                v355 = *(a1 + 9);
              }

              v397 = &v354[v348];
              v398 = v355 - v348;
            }

            memmove(v397 + 1, v397, v398);
            *(a1[5] + v348) = v338;
            v424 = 1;
LABEL_554:
            *(a1 + 9) += v424;
LABEL_555:
            v426 = glpAggregateTypeGetElementLayout(ReturnType, v336);
            serialize_GLPLayoutObject(a1, v426);
            FieldName = glpStructTypeGetFieldName(ReturnType, v336);
            serialize_GLPString(a1, FieldName, v428);
            if (v179 == ++v336)
            {
              goto LABEL_556;
            }
          }
        }

        v250 = v229 + 5;
        v251 = *(a1 + 8);
        if (v250 <= v251)
        {
          v254 = a1[5];
          v255 = v230;
        }

        else
        {
          if (v251 <= 1)
          {
            v251 = 1;
          }

          v252 = 2 * v251;
          if (v252 <= v250)
          {
            v253 = v250;
          }

          else
          {
            v253 = v252;
          }

          v254 = (a1[1])(*a1, v253, "Vector Storage (uint8_t, growth)");
          memcpy(v254, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v253;
          a1[5] = v254;
          v255 = *(a1 + 9);
        }

        memmove(&v254[v230 + 1], &v254[v230], v255 - v230);
        *(a1[5] + v230) = v179;
        v334 = 4;
      }
    }

    else if (v231)
    {
      v232 = v229 + 3;
      v233 = *(a1 + 8);
      if (v232 <= v233)
      {
        v236 = a1[5];
        v237 = v230;
      }

      else
      {
        if (v233 <= 1)
        {
          v233 = 1;
        }

        v234 = 2 * v233;
        if (v234 <= v232)
        {
          v235 = v232;
        }

        else
        {
          v235 = v234;
        }

        v236 = (a1[1])(*a1, v235, "Vector Storage (uint8_t, growth)");
        memcpy(v236, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v235;
        a1[5] = v236;
        v237 = *(a1 + 9);
      }

      memmove(&v236[v230 + 1], &v236[v230], v237 - v230);
      *(a1[5] + v230) = v179;
      v334 = 2;
    }

    else
    {
      v280 = v229 + 2;
      v281 = *(a1 + 8);
      if (v280 <= v281)
      {
        v284 = a1[5];
        v285 = v230;
      }

      else
      {
        if (v281 <= 1)
        {
          v281 = 1;
        }

        v282 = 2 * v281;
        if (v282 <= v280)
        {
          v283 = v280;
        }

        else
        {
          v283 = v282;
        }

        v284 = (a1[1])(*a1, v283, "Vector Storage (uint8_t, growth)");
        memcpy(v284, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v283;
        a1[5] = v284;
        v285 = *(a1 + 9);
      }

      memmove(&v284[v230 + 1], &v284[v230], v285 - v230);
      *(a1[5] + v230) = v179;
      v334 = 1;
    }

    *(a1 + 9) += v334;
    goto LABEL_437;
  }

  if (v44 == 2)
  {
    v199 = glpArrayTypeGetElementType(ReturnType);
    serialize_GLPType(a1, v199);
    v200 = glpArrayTypeGetElementCount(ReturnType);
    v201 = v200;
    v202 = glp_serialized_integer32_control(v200);
    v203 = *(a1 + 8);
    v204 = *(a1 + 9);
    v205 = v204 + 1;
    if (v204 + 1 <= v203)
    {
      v208 = a1[5];
      v209 = *(a1 + 9);
    }

    else
    {
      if (v203 <= 1)
      {
        v203 = 1;
      }

      v206 = 2 * v203;
      if (v206 <= v205)
      {
        v207 = v205;
      }

      else
      {
        v207 = v206;
      }

      v208 = (a1[1])(*a1, v207, "Vector Storage (uint8_t, growth)");
      memcpy(v208, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v207;
      a1[5] = v208;
      v209 = *(a1 + 9);
    }

    memmove(&v208[v204 + 1], &v208[v204], (v209 - v204));
    *(a1[5] + v204) = v202;
    v220 = *(a1 + 9);
    v221 = v220 + 1;
    *(a1 + 9) = v220 + 1;
    if ((v202 & 0x80000000) == 0)
    {
      goto LABEL_376;
    }

    v222 = (v202 >> 1) & 7;
    if (v222 > 1)
    {
      if (v222 == 2)
      {
        v274 = v220 + 4;
        v275 = *(a1 + 8);
        if (v274 <= v275)
        {
          v278 = a1[5];
          v279 = v221;
        }

        else
        {
          if (v275 <= 1)
          {
            v275 = 1;
          }

          v276 = 2 * v275;
          if (v276 <= v274)
          {
            v277 = v274;
          }

          else
          {
            v277 = v276;
          }

          v278 = (a1[1])(*a1, v277, "Vector Storage (uint8_t, growth)");
          memcpy(v278, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v277;
          a1[5] = v278;
          v279 = *(a1 + 9);
        }

        memmove(&v278[v221 + 1], &v278[v221], v279 - v221);
        v295 = a1[5] + v221;
        *(v295 + 2) = BYTE2(v201);
        *v295 = v201;
        v294 = 3;
      }

      else
      {
        if (v222 != 3)
        {
LABEL_376:
          PrimitiveType = glpArrayTypeGetMaxElementCount(ReturnType);
          goto LABEL_377;
        }

        v244 = v220 + 5;
        v245 = *(a1 + 8);
        if (v244 <= v245)
        {
          v248 = a1[5];
          v249 = v221;
        }

        else
        {
          if (v245 <= 1)
          {
            v245 = 1;
          }

          v246 = 2 * v245;
          if (v246 <= v244)
          {
            v247 = v244;
          }

          else
          {
            v247 = v246;
          }

          v248 = (a1[1])(*a1, v247, "Vector Storage (uint8_t, growth)");
          memcpy(v248, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v247;
          a1[5] = v248;
          v249 = *(a1 + 9);
        }

        memmove(&v248[v221 + 1], &v248[v221], v249 - v221);
        *(a1[5] + v221) = v201;
        v294 = 4;
      }
    }

    else if (v222)
    {
      v223 = v220 + 3;
      v224 = *(a1 + 8);
      if (v223 <= v224)
      {
        v227 = a1[5];
        v228 = v221;
      }

      else
      {
        if (v224 <= 1)
        {
          v224 = 1;
        }

        v225 = 2 * v224;
        if (v225 <= v223)
        {
          v226 = v223;
        }

        else
        {
          v226 = v225;
        }

        v227 = (a1[1])(*a1, v226, "Vector Storage (uint8_t, growth)");
        memcpy(v227, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v226;
        a1[5] = v227;
        v228 = *(a1 + 9);
      }

      memmove(&v227[v221 + 1], &v227[v221], v228 - v221);
      *(a1[5] + v221) = v201;
      v294 = 2;
    }

    else
    {
      v268 = v220 + 2;
      v269 = *(a1 + 8);
      if (v268 <= v269)
      {
        v272 = a1[5];
        v273 = v221;
      }

      else
      {
        if (v269 <= 1)
        {
          v269 = 1;
        }

        v270 = 2 * v269;
        if (v270 <= v268)
        {
          v271 = v268;
        }

        else
        {
          v271 = v270;
        }

        v272 = (a1[1])(*a1, v271, "Vector Storage (uint8_t, growth)");
        memcpy(v272, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v271;
        a1[5] = v272;
        v273 = *(a1 + 9);
      }

      memmove(&v272[v221 + 1], &v272[v221], v273 - v221);
      *(a1[5] + v221) = v201;
      v294 = 1;
    }

    *(a1 + 9) += v294;
    goto LABEL_376;
  }

  if (v44 != 3)
  {
    if (v44 == 5)
    {
      v175 = glpSubroutineTypeGetName(ReturnType);
      serialize_GLPString(a1, v175, v176);
      FunctionObject = glpSubroutineTypeGetFunctionObject(ReturnType);

      return serialize_GLPFunctionObject(a1, FunctionObject);
    }

LABEL_559:
    abort();
  }

  v188 = glpBankTypeGetElementType(ReturnType);
  serialize_GLPType(a1, v188);
  v189 = glpBankTypeGetElementCount(ReturnType);
  v190 = v189;
  v191 = glp_serialized_integer32_control(v189);
  v192 = *(a1 + 8);
  v193 = *(a1 + 9);
  v194 = v193 + 1;
  if (v193 + 1 <= v192)
  {
    v197 = a1[5];
    v198 = *(a1 + 9);
  }

  else
  {
    if (v192 <= 1)
    {
      v192 = 1;
    }

    v195 = 2 * v192;
    if (v195 <= v194)
    {
      v196 = v194;
    }

    else
    {
      v196 = v195;
    }

    v197 = (a1[1])(*a1, v196, "Vector Storage (uint8_t, growth)");
    memcpy(v197, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v196;
    a1[5] = v197;
    v198 = *(a1 + 9);
  }

  memmove(&v197[v193 + 1], &v197[v193], (v198 - v193));
  *(a1[5] + v193) = v191;
  v211 = *(a1 + 9);
  v212 = v211 + 1;
  *(a1 + 9) = v211 + 1;
  if ((v191 & 0x80000000) != 0)
  {
    v213 = (v191 >> 1) & 7;
    if (v213 <= 1)
    {
      if (v213)
      {
        v214 = v211 + 3;
        v215 = *(a1 + 8);
        if (v214 <= v215)
        {
          v218 = a1[5];
          v219 = v212;
        }

        else
        {
          if (v215 <= 1)
          {
            v215 = 1;
          }

          v216 = 2 * v215;
          if (v216 <= v214)
          {
            v217 = v214;
          }

          else
          {
            v217 = v216;
          }

          v218 = (a1[1])(*a1, v217, "Vector Storage (uint8_t, growth)");
          memcpy(v218, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v217;
          a1[5] = v218;
          v219 = *(a1 + 9);
        }

        memmove(&v218[v212 + 1], &v218[v212], v219 - v212);
        *(a1[5] + v212) = v190;
        v292 = 2;
      }

      else
      {
        v256 = v211 + 2;
        v257 = *(a1 + 8);
        if (v256 <= v257)
        {
          v260 = a1[5];
          v261 = v212;
        }

        else
        {
          if (v257 <= 1)
          {
            v257 = 1;
          }

          v258 = 2 * v257;
          if (v258 <= v256)
          {
            v259 = v256;
          }

          else
          {
            v259 = v258;
          }

          v260 = (a1[1])(*a1, v259, "Vector Storage (uint8_t, growth)");
          memcpy(v260, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v259;
          a1[5] = v260;
          v261 = *(a1 + 9);
        }

        memmove(&v260[v212 + 1], &v260[v212], v261 - v212);
        *(a1[5] + v212) = v190;
        v292 = 1;
      }

      goto LABEL_365;
    }

    if (v213 == 2)
    {
      v262 = v211 + 4;
      v263 = *(a1 + 8);
      if (v262 <= v263)
      {
        v266 = a1[5];
        v267 = v212;
      }

      else
      {
        if (v263 <= 1)
        {
          v263 = 1;
        }

        v264 = 2 * v263;
        if (v264 <= v262)
        {
          v265 = v262;
        }

        else
        {
          v265 = v264;
        }

        v266 = (a1[1])(*a1, v265, "Vector Storage (uint8_t, growth)");
        memcpy(v266, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v265;
        a1[5] = v266;
        v267 = *(a1 + 9);
      }

      memmove(&v266[v212 + 1], &v266[v212], v267 - v212);
      v293 = a1[5] + v212;
      *(v293 + 2) = BYTE2(v190);
      *v293 = v190;
      v292 = 3;
LABEL_365:
      *(a1 + 9) += v292;
    }

    else if (v213 == 3)
    {
      v238 = v211 + 5;
      v239 = *(a1 + 8);
      if (v238 <= v239)
      {
        v242 = a1[5];
        v243 = v212;
      }

      else
      {
        if (v239 <= 1)
        {
          v239 = 1;
        }

        v240 = 2 * v239;
        if (v240 <= v238)
        {
          v241 = v238;
        }

        else
        {
          v241 = v240;
        }

        v242 = (a1[1])(*a1, v241, "Vector Storage (uint8_t, growth)");
        memcpy(v242, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v241;
        a1[5] = v242;
        v243 = *(a1 + 9);
      }

      memmove(&v242[v212 + 1], &v242[v212], v243 - v212);
      *(a1[5] + v212) = v190;
      v292 = 4;
      goto LABEL_365;
    }
  }

  PrimitiveType = glpBankTypeGetBank(ReturnType);
LABEL_377:
  v296 = PrimitiveType;
  v297 = glp_serialized_integer32_control(PrimitiveType);
  v298 = *(a1 + 8);
  v299 = *(a1 + 9);
  v300 = v299 + 1;
  if (v299 + 1 <= v298)
  {
    v303 = a1[5];
    v304 = *(a1 + 9);
  }

  else
  {
    if (v298 <= 1)
    {
      v298 = 1;
    }

    v301 = 2 * v298;
    if (v301 <= v300)
    {
      v302 = v300;
    }

    else
    {
      v302 = v301;
    }

    v303 = (a1[1])(*a1, v302, "Vector Storage (uint8_t, growth)");
    memcpy(v303, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v302;
    a1[5] = v303;
    v304 = *(a1 + 9);
  }

  result = memmove(&v303[v299 + 1], &v303[v299], (v304 - v299));
  *(a1[5] + v299) = v297;
  v305 = *(a1 + 9);
  v306 = v305 + 1;
  *(a1 + 9) = v305 + 1;
  if ((v297 & 0x80000000) != 0)
  {
    v307 = (v297 >> 1) & 7;
    if (v307 > 1)
    {
      if (v307 == 2)
      {
        v326 = v305 + 4;
        v327 = *(a1 + 8);
        if (v326 <= v327)
        {
          v330 = a1[5];
          v331 = v306;
        }

        else
        {
          if (v327 <= 1)
          {
            v327 = 1;
          }

          v328 = 2 * v327;
          if (v328 <= v326)
          {
            v329 = v326;
          }

          else
          {
            v329 = v328;
          }

          v330 = (a1[1])(*a1, v329, "Vector Storage (uint8_t, growth)");
          memcpy(v330, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v329;
          a1[5] = v330;
          v331 = *(a1 + 9);
        }

        result = memmove(&v330[v306 + 1], &v330[v306], v331 - v306);
        v333 = a1[5] + v306;
        *(v333 + 2) = BYTE2(v296);
        *v333 = v296;
        v332 = *(a1 + 9) + 3;
      }

      else
      {
        if (v307 != 3)
        {
          return result;
        }

        v314 = v305 + 5;
        v315 = *(a1 + 8);
        if (v314 <= v315)
        {
          v318 = a1[5];
          v319 = v306;
        }

        else
        {
          if (v315 <= 1)
          {
            v315 = 1;
          }

          v316 = 2 * v315;
          if (v316 <= v314)
          {
            v317 = v314;
          }

          else
          {
            v317 = v316;
          }

          v318 = (a1[1])(*a1, v317, "Vector Storage (uint8_t, growth)");
          memcpy(v318, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v317;
          a1[5] = v318;
          v319 = *(a1 + 9);
        }

        result = memmove(&v318[v306 + 1], &v318[v306], v319 - v306);
        *(a1[5] + v306) = v296;
        v332 = *(a1 + 9) + 4;
      }
    }

    else if (v307)
    {
      v308 = v305 + 3;
      v309 = *(a1 + 8);
      if (v308 <= v309)
      {
        v312 = a1[5];
        v313 = v306;
      }

      else
      {
        if (v309 <= 1)
        {
          v309 = 1;
        }

        v310 = 2 * v309;
        if (v310 <= v308)
        {
          v311 = v308;
        }

        else
        {
          v311 = v310;
        }

        v312 = (a1[1])(*a1, v311, "Vector Storage (uint8_t, growth)");
        memcpy(v312, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v311;
        a1[5] = v312;
        v313 = *(a1 + 9);
      }

      result = memmove(&v312[v306 + 1], &v312[v306], v313 - v306);
      *(a1[5] + v306) = v296;
      v332 = *(a1 + 9) + 2;
    }

    else
    {
      v320 = v305 + 2;
      v321 = *(a1 + 8);
      if (v320 <= v321)
      {
        v324 = a1[5];
        v325 = v306;
      }

      else
      {
        if (v321 <= 1)
        {
          v321 = 1;
        }

        v322 = 2 * v321;
        if (v322 <= v320)
        {
          v323 = v320;
        }

        else
        {
          v323 = v322;
        }

        v324 = (a1[1])(*a1, v323, "Vector Storage (uint8_t, growth)");
        memcpy(v324, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v323;
        a1[5] = v324;
        v325 = *(a1 + 9);
      }

      result = memmove(&v324[v306 + 1], &v324[v306], v325 - v306);
      *(a1[5] + v306) = v296;
      v332 = *(a1 + 9) + 1;
    }

    *(a1 + 9) = v332;
  }

  return result;
}

uint64_t serialize_GLPLayoutObject(void *a1, unint64_t *a2)
{
  result = serialize_pointer(a1, a2);
  if (result)
  {
    serialize_GLPLayoutPair(a1, *a2);
    v5 = a2[1];

    return serialize_GLPLayoutPair(a1, v5);
  }

  return result;
}

uint64_t serialize_GLPFunctionObject(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  serialize_GLPType(a1, *a2);
  v5 = *(a2 + 8);
  v6 = glp_serialized_integer64_control(v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 3)
    {
      if (((v6 >> 1) & 7) <= 5)
      {
        v23 = v14 + 5;
        if (v16 == 4)
        {
          v24 = *(a1 + 8);
          if (v23 <= v24)
          {
            v27 = a1[5];
            v28 = v15;
          }

          else
          {
            if (v24 <= 1)
            {
              v24 = 1;
            }

            v25 = 2 * v24;
            if (v25 <= v23)
            {
              v26 = v23;
            }

            else
            {
              v26 = v25;
            }

            v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
            memcpy(v27, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v26;
            a1[5] = v27;
            v28 = *(a1 + 9);
          }

          memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
          *(a1[5] + v15) = v5;
          v67 = *(a1 + 8);
          v66 = *(a1 + 9);
          v15 = v66 + 4;
          *(a1 + 9) = v66 + 4;
          v68 = v66 + 5;
          if (v68 <= v67)
          {
            v71 = a1[5];
            v72 = v15;
          }

          else
          {
            if (v67 <= 1)
            {
              v67 = 1;
            }

            v69 = 2 * v67;
            if (v69 <= v68)
            {
              v70 = v68;
            }

            else
            {
              v70 = v69;
            }

            v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
            memcpy(v71, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v70;
            a1[5] = v71;
            v72 = *(a1 + 9);
          }

          v5 >>= 32;
          v65 = v72 - v15;
          v64 = &v71[v15];
          goto LABEL_110;
        }

        v47 = *(a1 + 8);
        if (v23 <= v47)
        {
          v50 = a1[5];
          v51 = v15;
        }

        else
        {
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = 2 * v47;
          if (v48 <= v23)
          {
            v49 = v23;
          }

          else
          {
            v49 = v48;
          }

          v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
          memcpy(v50, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v49;
          a1[5] = v50;
          v51 = *(a1 + 9);
        }

        memmove(&v50[v15 + 1], &v50[v15], v51 - v15);
        *(a1[5] + v15) = v5;
        v85 = *(a1 + 8);
        v84 = *(a1 + 9);
        v15 = v84 + 4;
        *(a1 + 9) = v84 + 4;
        v86 = v84 + 6;
        if (v86 <= v85)
        {
          v89 = a1[5];
          v90 = v15;
        }

        else
        {
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v87 = 2 * v85;
          if (v87 <= v86)
          {
            v88 = v86;
          }

          else
          {
            v88 = v87;
          }

          v89 = (a1[1])(*a1, v88, "Vector Storage (uint8_t, growth)");
          memcpy(v89, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v88;
          a1[5] = v89;
          v90 = *(a1 + 9);
        }

        v5 >>= 32;
        v83 = v90 - v15;
        v82 = &v89[v15];
LABEL_116:
        memmove(v82 + 1, v82, v83);
        *(a1[5] + v15) = v5;
        v91 = 2;
        goto LABEL_117;
      }

      if (v16 != 6)
      {
        v58 = v14 + 9;
        v59 = *(a1 + 8);
        if (v58 <= v59)
        {
          v62 = a1[5];
          v63 = v15;
        }

        else
        {
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = 2 * v59;
          if (v60 <= v58)
          {
            v61 = v58;
          }

          else
          {
            v61 = v60;
          }

          v62 = (a1[1])(*a1, v61, "Vector Storage (uint8_t, growth)");
          memcpy(v62, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v61;
          a1[5] = v62;
          v63 = *(a1 + 9);
        }

        memmove(&v62[v15 + 1], &v62[v15], v63 - v15);
        *(a1[5] + v15) = v5;
        v91 = 8;
        goto LABEL_117;
      }

      v35 = v14 + 5;
      v36 = *(a1 + 8);
      if (v35 <= v36)
      {
        v39 = a1[5];
        v40 = v15;
      }

      else
      {
        if (v36 <= 1)
        {
          v36 = 1;
        }

        v37 = 2 * v36;
        if (v37 <= v35)
        {
          v38 = v35;
        }

        else
        {
          v38 = v37;
        }

        v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
        memcpy(v39, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v38;
        a1[5] = v39;
        v40 = *(a1 + 9);
      }

      memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
      *(a1[5] + v15) = v5;
      v75 = *(a1 + 8);
      v74 = *(a1 + 9);
      v76 = v74 + 4;
      *(a1 + 9) = v74 + 4;
      v77 = v74 + 7;
      if (v77 <= v75)
      {
        v80 = a1[5];
        v81 = v76;
      }

      else
      {
        if (v75 <= 1)
        {
          v75 = 1;
        }

        v78 = 2 * v75;
        if (v78 <= v77)
        {
          v79 = v77;
        }

        else
        {
          v79 = v78;
        }

        v80 = (a1[1])(*a1, v79, "Vector Storage (uint8_t, growth)");
        memcpy(v80, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v79;
        a1[5] = v80;
        v81 = *(a1 + 9);
      }

      memmove(&v80[v76 + 1], &v80[v76], v81 - v76);
      v92 = a1[5] + v76;
      *(v92 + 2) = BYTE6(v5);
      *v92 = WORD2(v5);
    }

    else
    {
      if (((v6 >> 1) & 7) <= 1)
      {
        if (!v16)
        {
          v17 = v14 + 2;
          v18 = *(a1 + 8);
          if (v17 <= v18)
          {
            v21 = a1[5];
            v22 = v15;
          }

          else
          {
            if (v18 <= 1)
            {
              v18 = 1;
            }

            v19 = 2 * v18;
            if (v19 <= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = v19;
            }

            v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
            memcpy(v21, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v20;
            a1[5] = v21;
            v22 = *(a1 + 9);
          }

          v64 = &v21[v15];
          v65 = v22 - v15;
LABEL_110:
          memmove(v64 + 1, v64, v65);
          *(a1[5] + v15) = v5;
          v91 = 1;
LABEL_117:
          *(a1 + 9) += v91;
          goto LABEL_118;
        }

        v41 = v14 + 3;
        v42 = *(a1 + 8);
        if (v41 <= v42)
        {
          v45 = a1[5];
          v46 = v15;
        }

        else
        {
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = 2 * v42;
          if (v43 <= v41)
          {
            v44 = v41;
          }

          else
          {
            v44 = v43;
          }

          v45 = (a1[1])(*a1, v44, "Vector Storage (uint8_t, growth)");
          memcpy(v45, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v44;
          a1[5] = v45;
          v46 = *(a1 + 9);
        }

        v82 = &v45[v15];
        v83 = v46 - v15;
        goto LABEL_116;
      }

      if (v16 != 2)
      {
        v52 = v14 + 5;
        v53 = *(a1 + 8);
        if (v52 <= v53)
        {
          v56 = a1[5];
          v57 = v15;
        }

        else
        {
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = 2 * v53;
          if (v54 <= v52)
          {
            v55 = v52;
          }

          else
          {
            v55 = v54;
          }

          v56 = (a1[1])(*a1, v55, "Vector Storage (uint8_t, growth)");
          memcpy(v56, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v55;
          a1[5] = v56;
          v57 = *(a1 + 9);
        }

        memmove(&v56[v15 + 1], &v56[v15], v57 - v15);
        *(a1[5] + v15) = v5;
        v91 = 4;
        goto LABEL_117;
      }

      v29 = v14 + 4;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      v73 = a1[5] + v15;
      *(v73 + 2) = BYTE2(v5);
      *v73 = v5;
    }

    v91 = 3;
    goto LABEL_117;
  }

LABEL_118:
  if ((*(a2 + 9) & 0x40) != 0)
  {
    v93 = *(a2 + 92);
    v94 = glp_serialized_integer32_control(v93);
    v95 = *(a1 + 8);
    v96 = *(a1 + 9);
    v97 = v96 + 1;
    if (v96 + 1 <= v95)
    {
      v100 = a1[5];
      v101 = *(a1 + 9);
    }

    else
    {
      if (v95 <= 1)
      {
        v95 = 1;
      }

      v98 = 2 * v95;
      v99 = v98 <= v97 ? v97 : v98;
      v100 = (a1[1])(*a1, v99, "Vector Storage (uint8_t, growth)");
      memcpy(v100, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v99;
      a1[5] = v100;
      v101 = *(a1 + 9);
    }

    memmove(&v100[v96 + 1], &v100[v96], (v101 - v96));
    *(a1[5] + v96) = v94;
    v102 = *(a1 + 9);
    v103 = v102 + 1;
    *(a1 + 9) = v102 + 1;
    if ((v94 & 0x80000000) != 0)
    {
      v104 = (v94 >> 1) & 7;
      if (v104 > 1)
      {
        if (v104 == 2)
        {
          v123 = v102 + 4;
          v124 = *(a1 + 8);
          if (v123 <= v124)
          {
            v127 = a1[5];
            v128 = v103;
          }

          else
          {
            if (v124 <= 1)
            {
              v124 = 1;
            }

            v125 = 2 * v124;
            if (v125 <= v123)
            {
              v126 = v123;
            }

            else
            {
              v126 = v125;
            }

            v127 = (a1[1])(*a1, v126, "Vector Storage (uint8_t, growth)");
            memcpy(v127, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v126;
            a1[5] = v127;
            v128 = *(a1 + 9);
          }

          memmove(&v127[v103 + 1], &v127[v103], v128 - v103);
          v130 = a1[5] + v103;
          *(v130 + 2) = BYTE2(v93);
          *v130 = v93;
          v129 = 3;
        }

        else
        {
          if (v104 != 3)
          {
            goto LABEL_170;
          }

          v111 = v102 + 5;
          v112 = *(a1 + 8);
          if (v111 <= v112)
          {
            v115 = a1[5];
            v116 = v103;
          }

          else
          {
            if (v112 <= 1)
            {
              v112 = 1;
            }

            v113 = 2 * v112;
            if (v113 <= v111)
            {
              v114 = v111;
            }

            else
            {
              v114 = v113;
            }

            v115 = (a1[1])(*a1, v114, "Vector Storage (uint8_t, growth)");
            memcpy(v115, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v114;
            a1[5] = v115;
            v116 = *(a1 + 9);
          }

          memmove(&v115[v103 + 1], &v115[v103], v116 - v103);
          *(a1[5] + v103) = v93;
          v129 = 4;
        }
      }

      else if (v104)
      {
        if (v104 != 1)
        {
          goto LABEL_170;
        }

        v105 = v102 + 3;
        v106 = *(a1 + 8);
        if (v105 <= v106)
        {
          v109 = a1[5];
          v110 = v103;
        }

        else
        {
          if (v106 <= 1)
          {
            v106 = 1;
          }

          v107 = 2 * v106;
          if (v107 <= v105)
          {
            v108 = v105;
          }

          else
          {
            v108 = v107;
          }

          v109 = (a1[1])(*a1, v108, "Vector Storage (uint8_t, growth)");
          memcpy(v109, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v108;
          a1[5] = v109;
          v110 = *(a1 + 9);
        }

        memmove(&v109[v103 + 1], &v109[v103], v110 - v103);
        *(a1[5] + v103) = v93;
        v129 = 2;
      }

      else
      {
        v117 = v102 + 2;
        v118 = *(a1 + 8);
        if (v117 <= v118)
        {
          v121 = a1[5];
          v122 = v103;
        }

        else
        {
          if (v118 <= 1)
          {
            v118 = 1;
          }

          v119 = 2 * v118;
          if (v119 <= v117)
          {
            v120 = v117;
          }

          else
          {
            v120 = v119;
          }

          v121 = (a1[1])(*a1, v120, "Vector Storage (uint8_t, growth)");
          memcpy(v121, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v120;
          a1[5] = v121;
          v122 = *(a1 + 9);
        }

        memmove(&v121[v103 + 1], &v121[v103], v122 - v103);
        *(a1[5] + v103) = v93;
        v129 = 1;
      }

      *(a1 + 9) += v129;
    }
  }

LABEL_170:
  serialize_GLPString(a1, *(a2 + 24), *(a2 + 32));
  serialize_GLPString(a1, *(a2 + 40), *(a2 + 48));
  serialize_GLPASTNode(a1, *(a2 + 56));
  serialize_GLPASTNode(a1, *(a2 + 64));
  v131 = *(a2 + 88);
  v132 = glp_serialized_integer32_control(v131);
  v133 = *(a1 + 8);
  v134 = *(a1 + 9);
  v135 = v134 + 1;
  if (v134 + 1 <= v133)
  {
    v138 = a1[5];
    v139 = *(a1 + 9);
  }

  else
  {
    if (v133 <= 1)
    {
      v133 = 1;
    }

    v136 = 2 * v133;
    if (v136 <= v135)
    {
      v137 = v135;
    }

    else
    {
      v137 = v136;
    }

    v138 = (a1[1])(*a1, v137, "Vector Storage (uint8_t, growth)");
    memcpy(v138, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v137;
    a1[5] = v138;
    v139 = *(a1 + 9);
  }

  memmove(&v138[v134 + 1], &v138[v134], (v139 - v134));
  *(a1[5] + v134) = v132;
  v140 = *(a1 + 9);
  v141 = v140 + 1;
  *(a1 + 9) = v140 + 1;
  if ((v132 & 0x80000000) != 0)
  {
    v142 = (v132 >> 1) & 7;
    if (v142 > 1)
    {
      if (v142 == 2)
      {
        v161 = v140 + 4;
        v162 = *(a1 + 8);
        if (v161 <= v162)
        {
          v165 = a1[5];
          v166 = v141;
        }

        else
        {
          if (v162 <= 1)
          {
            v162 = 1;
          }

          v163 = 2 * v162;
          if (v163 <= v161)
          {
            v164 = v161;
          }

          else
          {
            v164 = v163;
          }

          v165 = (a1[1])(*a1, v164, "Vector Storage (uint8_t, growth)");
          memcpy(v165, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v164;
          a1[5] = v165;
          v166 = *(a1 + 9);
        }

        memmove(&v165[v141 + 1], &v165[v141], v166 - v141);
        v168 = a1[5] + v141;
        *(v168 + 2) = BYTE2(v131);
        *v168 = v131;
        v167 = 3;
      }

      else
      {
        if (v142 != 3)
        {
          goto LABEL_221;
        }

        v149 = v140 + 5;
        v150 = *(a1 + 8);
        if (v149 <= v150)
        {
          v153 = a1[5];
          v154 = v141;
        }

        else
        {
          if (v150 <= 1)
          {
            v150 = 1;
          }

          v151 = 2 * v150;
          if (v151 <= v149)
          {
            v152 = v149;
          }

          else
          {
            v152 = v151;
          }

          v153 = (a1[1])(*a1, v152, "Vector Storage (uint8_t, growth)");
          memcpy(v153, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v152;
          a1[5] = v153;
          v154 = *(a1 + 9);
        }

        memmove(&v153[v141 + 1], &v153[v141], v154 - v141);
        *(a1[5] + v141) = v131;
        v167 = 4;
      }
    }

    else if (v142)
    {
      if (v142 != 1)
      {
        goto LABEL_221;
      }

      v143 = v140 + 3;
      v144 = *(a1 + 8);
      if (v143 <= v144)
      {
        v147 = a1[5];
        v148 = v141;
      }

      else
      {
        if (v144 <= 1)
        {
          v144 = 1;
        }

        v145 = 2 * v144;
        if (v145 <= v143)
        {
          v146 = v143;
        }

        else
        {
          v146 = v145;
        }

        v147 = (a1[1])(*a1, v146, "Vector Storage (uint8_t, growth)");
        memcpy(v147, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v146;
        a1[5] = v147;
        v148 = *(a1 + 9);
      }

      memmove(&v147[v141 + 1], &v147[v141], v148 - v141);
      *(a1[5] + v141) = v131;
      v167 = 2;
    }

    else
    {
      v155 = v140 + 2;
      v156 = *(a1 + 8);
      if (v155 <= v156)
      {
        v159 = a1[5];
        v160 = v141;
      }

      else
      {
        if (v156 <= 1)
        {
          v156 = 1;
        }

        v157 = 2 * v156;
        if (v157 <= v155)
        {
          v158 = v155;
        }

        else
        {
          v158 = v157;
        }

        v159 = (a1[1])(*a1, v158, "Vector Storage (uint8_t, growth)");
        memcpy(v159, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v158;
        a1[5] = v159;
        v160 = *(a1 + 9);
      }

      memmove(&v159[v141 + 1], &v159[v141], v160 - v141);
      *(a1[5] + v141) = v131;
      v167 = 1;
    }

    *(a1 + 9) += v167;
  }

LABEL_221:
  serialize_GLPVariableObject(a1, *(a2 + 72));
  if (v131)
  {
    v169 = 0;
    v170 = 8 * v131;
    do
    {
      serialize_GLPVariableObject(a1, *(*(a2 + 80) + v169));
      v169 += 8;
    }

    while (v170 != v169);
  }

  v171 = *(a2 + 96);
  v172 = glp_serialized_integer32_control(v171);
  v173 = *(a1 + 8);
  v174 = *(a1 + 9);
  v175 = v174 + 1;
  if (v174 + 1 <= v173)
  {
    v178 = a1[5];
    v179 = *(a1 + 9);
  }

  else
  {
    if (v173 <= 1)
    {
      v173 = 1;
    }

    v176 = 2 * v173;
    if (v176 <= v175)
    {
      v177 = v175;
    }

    else
    {
      v177 = v176;
    }

    v178 = (a1[1])(*a1, v177, "Vector Storage (uint8_t, growth)");
    memcpy(v178, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v177;
    a1[5] = v178;
    v179 = *(a1 + 9);
  }

  result = memmove(&v178[v174 + 1], &v178[v174], (v179 - v174));
  *(a1[5] + v174) = v172;
  v180 = *(a1 + 9);
  v181 = v180 + 1;
  *(a1 + 9) = v180 + 1;
  if ((v172 & 0x80000000) == 0)
  {
    goto LABEL_275;
  }

  v182 = (v172 >> 1) & 7;
  if (v182 > 1)
  {
    if (v182 == 2)
    {
      v201 = v180 + 4;
      v202 = *(a1 + 8);
      if (v201 <= v202)
      {
        v205 = a1[5];
        v206 = v181;
      }

      else
      {
        if (v202 <= 1)
        {
          v202 = 1;
        }

        v203 = 2 * v202;
        if (v203 <= v201)
        {
          v204 = v201;
        }

        else
        {
          v204 = v203;
        }

        v205 = (a1[1])(*a1, v204, "Vector Storage (uint8_t, growth)");
        memcpy(v205, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v204;
        a1[5] = v205;
        v206 = *(a1 + 9);
      }

      result = memmove(&v205[v181 + 1], &v205[v181], v206 - v181);
      v208 = a1[5] + v181;
      *(v208 + 2) = BYTE2(v171);
      *v208 = v171;
      v207 = 3;
    }

    else
    {
      if (v182 != 3)
      {
        goto LABEL_275;
      }

      v189 = v180 + 5;
      v190 = *(a1 + 8);
      if (v189 <= v190)
      {
        v193 = a1[5];
        v194 = v181;
      }

      else
      {
        if (v190 <= 1)
        {
          v190 = 1;
        }

        v191 = 2 * v190;
        if (v191 <= v189)
        {
          v192 = v189;
        }

        else
        {
          v192 = v191;
        }

        v193 = (a1[1])(*a1, v192, "Vector Storage (uint8_t, growth)");
        memcpy(v193, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v192;
        a1[5] = v193;
        v194 = *(a1 + 9);
      }

      result = memmove(&v193[v181 + 1], &v193[v181], v194 - v181);
      *(a1[5] + v181) = v171;
      v207 = 4;
    }
  }

  else if (v182)
  {
    if (v182 != 1)
    {
      goto LABEL_275;
    }

    v183 = v180 + 3;
    v184 = *(a1 + 8);
    if (v183 <= v184)
    {
      v187 = a1[5];
      v188 = v181;
    }

    else
    {
      if (v184 <= 1)
      {
        v184 = 1;
      }

      v185 = 2 * v184;
      if (v185 <= v183)
      {
        v186 = v183;
      }

      else
      {
        v186 = v185;
      }

      v187 = (a1[1])(*a1, v186, "Vector Storage (uint8_t, growth)");
      memcpy(v187, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v186;
      a1[5] = v187;
      v188 = *(a1 + 9);
    }

    result = memmove(&v187[v181 + 1], &v187[v181], v188 - v181);
    *(a1[5] + v181) = v171;
    v207 = 2;
  }

  else
  {
    v195 = v180 + 2;
    v196 = *(a1 + 8);
    if (v195 <= v196)
    {
      v199 = a1[5];
      v200 = v181;
    }

    else
    {
      if (v196 <= 1)
      {
        v196 = 1;
      }

      v197 = 2 * v196;
      if (v197 <= v195)
      {
        v198 = v195;
      }

      else
      {
        v198 = v197;
      }

      v199 = (a1[1])(*a1, v198, "Vector Storage (uint8_t, growth)");
      memcpy(v199, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v198;
      a1[5] = v199;
      v200 = *(a1 + 9);
    }

    result = memmove(&v199[v181 + 1], &v199[v181], v200 - v181);
    *(a1[5] + v181) = v171;
    v207 = 1;
  }

  *(a1 + 9) += v207;
LABEL_275:
  if (*(a2 + 96))
  {
    v209 = 0;
    do
    {
      result = serialize_GLPType(a1, *(*(a2 + 104) + 8 * v209++));
    }

    while (v209 < *(a2 + 96));
  }

  return result;
}

uint64_t real_serialize_GLPValue(void *a1, unint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v130 = *MEMORY[0x277D85DE8];
  result = serialize_pointer(a1, a2);
  if (result)
  {
    v7 = glpABIGetTypeSize(0, a3, 0);
    Size = glpTypeSizeGetSize(v7);
    v9 = Size;
    v127 = &v127;
    MEMORY[0x28223BE20](Size);
    v11 = (&v127 - v10);
    bzero(&v127 - v10, v12);
    v129 = v11;
    result = glpTypeGetAppleVec4Types(a3, v11, 1, 0, 0, 0, 0, 0, 0);
    if (v9)
    {
      v13 = 0;
      v128 = v9;
      do
      {
        v14 = v129;
        ScalarType = glpPrimitiveTypeGetScalarType(v129[v13]);
        result = glpPrimitiveTypeGetScalarCount(v14[v13]);
        if (ScalarType <= 8)
        {
          if (ScalarType != 1)
          {
            if (ScalarType != 5)
            {
LABEL_157:
              abort();
            }

            if (!result)
            {
              goto LABEL_155;
            }

            v26 = 0;
            v27 = 4 * result;
            while (2)
            {
              v28 = *(v4 + v26);
              v29 = glp_serialized_integer32_control(v28);
              v30 = *(a1 + 8);
              v31 = *(a1 + 9);
              v32 = v31 + 1;
              if (v31 + 1 <= v30)
              {
                v35 = a1[5];
                v36 = *(a1 + 9);
              }

              else
              {
                if (v30 <= 1)
                {
                  v30 = 1;
                }

                v33 = 2 * v30;
                if (v33 <= v32)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = v33;
                }

                v35 = (a1[1])(*a1, v34, "Vector Storage (uint8_t, growth)");
                memcpy(v35, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v34;
                a1[5] = v35;
                v36 = *(a1 + 9);
              }

              result = memmove(&v35[v31 + 1], &v35[v31], (v36 - v31));
              *(a1[5] + v31) = v29;
              v37 = *(a1 + 9);
              v38 = v37 + 1;
              *(a1 + 9) = v37 + 1;
              if ((v29 & 0x80000000) == 0)
              {
                goto LABEL_75;
              }

              v39 = (v29 >> 1) & 7;
              if (v39 > 1)
              {
                if (v39 == 2)
                {
                  v58 = v37 + 4;
                  v59 = *(a1 + 8);
                  if (v58 <= v59)
                  {
                    v62 = a1[5];
                    v63 = v38;
                  }

                  else
                  {
                    if (v59 <= 1)
                    {
                      v59 = 1;
                    }

                    v60 = 2 * v59;
                    if (v60 <= v58)
                    {
                      v61 = v58;
                    }

                    else
                    {
                      v61 = v60;
                    }

                    v62 = (a1[1])(*a1, v61, "Vector Storage (uint8_t, growth)");
                    memcpy(v62, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v61;
                    a1[5] = v62;
                    v63 = *(a1 + 9);
                  }

                  result = memmove(&v62[v38 + 1], &v62[v38], v63 - v38);
                  v65 = a1[5] + v38;
                  *(v65 + 2) = BYTE2(v28);
                  *v65 = v28;
                  v64 = 3;
                }

                else
                {
                  if (v39 != 3)
                  {
                    goto LABEL_75;
                  }

                  v46 = v37 + 5;
                  v47 = *(a1 + 8);
                  if (v46 <= v47)
                  {
                    v50 = a1[5];
                    v51 = v38;
                  }

                  else
                  {
                    if (v47 <= 1)
                    {
                      v47 = 1;
                    }

                    v48 = 2 * v47;
                    if (v48 <= v46)
                    {
                      v49 = v46;
                    }

                    else
                    {
                      v49 = v48;
                    }

                    v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
                    memcpy(v50, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v49;
                    a1[5] = v50;
                    v51 = *(a1 + 9);
                  }

                  result = memmove(&v50[v38 + 1], &v50[v38], v51 - v38);
                  *(a1[5] + v38) = v28;
                  v64 = 4;
                }
              }

              else
              {
                if (v39)
                {
                  if (v39 == 1)
                  {
                    v40 = v37 + 3;
                    v41 = *(a1 + 8);
                    if (v40 <= v41)
                    {
                      v44 = a1[5];
                      v45 = v38;
                    }

                    else
                    {
                      if (v41 <= 1)
                      {
                        v41 = 1;
                      }

                      v42 = 2 * v41;
                      if (v42 <= v40)
                      {
                        v43 = v40;
                      }

                      else
                      {
                        v43 = v42;
                      }

                      v44 = (a1[1])(*a1, v43, "Vector Storage (uint8_t, growth)");
                      memcpy(v44, a1[5], *(a1 + 9));
                      (a1[3])(*a1, a1[5]);
                      *(a1 + 8) = v43;
                      a1[5] = v44;
                      v45 = *(a1 + 9);
                    }

                    result = memmove(&v44[v38 + 1], &v44[v38], v45 - v38);
                    *(a1[5] + v38) = v28;
                    v64 = 2;
                    break;
                  }

LABEL_75:
                  v26 += 4;
                  if (v27 == v26)
                  {
                    goto LABEL_155;
                  }

                  continue;
                }

                v52 = v37 + 2;
                v53 = *(a1 + 8);
                if (v52 <= v53)
                {
                  v56 = a1[5];
                  v57 = v38;
                }

                else
                {
                  if (v53 <= 1)
                  {
                    v53 = 1;
                  }

                  v54 = 2 * v53;
                  if (v54 <= v52)
                  {
                    v55 = v52;
                  }

                  else
                  {
                    v55 = v54;
                  }

                  v56 = (a1[1])(*a1, v55, "Vector Storage (uint8_t, growth)");
                  memcpy(v56, a1[5], *(a1 + 9));
                  (a1[3])(*a1, a1[5]);
                  *(a1 + 8) = v55;
                  a1[5] = v56;
                  v57 = *(a1 + 9);
                }

                result = memmove(&v56[v38 + 1], &v56[v38], v57 - v38);
                *(a1[5] + v38) = v28;
                v64 = 1;
              }

              break;
            }

            *(a1 + 9) += v64;
            goto LABEL_75;
          }

          if (result)
          {
            v116 = 0;
            v117 = *(a1 + 9);
            v118 = 4 * result;
            do
            {
              v119 = *(v4 + v116);
              v120 = v117 + 4;
              v121 = *(a1 + 8);
              if (v117 + 4 <= v121)
              {
                v124 = a1[5];
                v125 = v117;
              }

              else
              {
                if (v121 <= 1)
                {
                  v121 = 1;
                }

                v122 = 2 * v121;
                if (v122 <= v120)
                {
                  v123 = v120;
                }

                else
                {
                  v123 = v122;
                }

                v124 = (a1[1])(*a1, v123, "Vector Storage (uint8_t, growth)");
                memcpy(v124, a1[5], *(a1 + 9));
                (a1[3])(*a1, a1[5]);
                *(a1 + 8) = v123;
                a1[5] = v124;
                v125 = *(a1 + 9);
              }

              v116 += 4;
              result = memmove(&v124[v117 + 1], &v124[v117], v125 - v117);
              *(a1[5] + v117) = v119;
              v117 = *(a1 + 9) + 4;
              *(a1 + 9) = v117;
            }

            while (v118 != v116);
          }
        }

        else
        {
          switch(ScalarType)
          {
            case 62:
              if (result)
              {
                v66 = 0;
                v67 = *(a1 + 9);
                v68 = 8 * result;
                do
                {
                  v69 = *(v4 + v66);
                  v70 = v67 + 8;
                  v71 = *(a1 + 8);
                  if (v67 + 8 <= v71)
                  {
                    v74 = a1[5];
                    v75 = v67;
                  }

                  else
                  {
                    if (v71 <= 1)
                    {
                      v71 = 1;
                    }

                    v72 = 2 * v71;
                    if (v72 <= v70)
                    {
                      v73 = v70;
                    }

                    else
                    {
                      v73 = v72;
                    }

                    v74 = (a1[1])(*a1, v73, "Vector Storage (uint8_t, growth)");
                    memcpy(v74, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v73;
                    a1[5] = v74;
                    v75 = *(a1 + 9);
                  }

                  v66 += 8;
                  result = memmove(&v74[v67 + 1], &v74[v67], v75 - v67);
                  *(a1[5] + v67) = v69;
                  v67 = *(a1 + 9) + 8;
                  *(a1 + 9) = v67;
                }

                while (v68 != v66);
              }

              break;
            case 36:
              if (result)
              {
                v76 = 0;
                v77 = 4 * result;
                do
                {
                  v78 = *(v4 + v76);
                  v79 = glp_serialized_integer32_control(v78);
                  v80 = *(a1 + 8);
                  v81 = *(a1 + 9);
                  v82 = v81 + 1;
                  if (v81 + 1 <= v80)
                  {
                    v85 = a1[5];
                    v86 = *(a1 + 9);
                  }

                  else
                  {
                    if (v80 <= 1)
                    {
                      v80 = 1;
                    }

                    v83 = 2 * v80;
                    if (v83 <= v82)
                    {
                      v84 = v82;
                    }

                    else
                    {
                      v84 = v83;
                    }

                    v85 = (a1[1])(*a1, v84, "Vector Storage (uint8_t, growth)");
                    memcpy(v85, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v84;
                    a1[5] = v85;
                    v86 = *(a1 + 9);
                  }

                  result = memmove(&v85[v81 + 1], &v85[v81], (v86 - v81));
                  *(a1[5] + v81) = v79;
                  v87 = *(a1 + 9);
                  v88 = v87 + 1;
                  *(a1 + 9) = v87 + 1;
                  if ((v79 & 0x80000000) == 0)
                  {
                    goto LABEL_142;
                  }

                  v89 = (v79 >> 1) & 7;
                  if (v89 > 1)
                  {
                    if (v89 == 2)
                    {
                      v108 = v87 + 4;
                      v109 = *(a1 + 8);
                      if (v108 <= v109)
                      {
                        v112 = a1[5];
                        v113 = v88;
                      }

                      else
                      {
                        if (v109 <= 1)
                        {
                          v109 = 1;
                        }

                        v110 = 2 * v109;
                        if (v110 <= v108)
                        {
                          v111 = v108;
                        }

                        else
                        {
                          v111 = v110;
                        }

                        v112 = (a1[1])(*a1, v111, "Vector Storage (uint8_t, growth)");
                        memcpy(v112, a1[5], *(a1 + 9));
                        (a1[3])(*a1, a1[5]);
                        *(a1 + 8) = v111;
                        a1[5] = v112;
                        v113 = *(a1 + 9);
                      }

                      result = memmove(&v112[v88 + 1], &v112[v88], v113 - v88);
                      v115 = a1[5] + v88;
                      *(v115 + 2) = BYTE2(v78);
                      *v115 = v78;
                      v114 = 3;
                      goto LABEL_141;
                    }

                    if (v89 == 3)
                    {
                      v96 = v87 + 5;
                      v97 = *(a1 + 8);
                      if (v96 <= v97)
                      {
                        v100 = a1[5];
                        v101 = v88;
                      }

                      else
                      {
                        if (v97 <= 1)
                        {
                          v97 = 1;
                        }

                        v98 = 2 * v97;
                        if (v98 <= v96)
                        {
                          v99 = v96;
                        }

                        else
                        {
                          v99 = v98;
                        }

                        v100 = (a1[1])(*a1, v99, "Vector Storage (uint8_t, growth)");
                        memcpy(v100, a1[5], *(a1 + 9));
                        (a1[3])(*a1, a1[5]);
                        *(a1 + 8) = v99;
                        a1[5] = v100;
                        v101 = *(a1 + 9);
                      }

                      result = memmove(&v100[v88 + 1], &v100[v88], v101 - v88);
                      *(a1[5] + v88) = v78;
                      v114 = 4;
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    if (!v89)
                    {
                      v102 = v87 + 2;
                      v103 = *(a1 + 8);
                      if (v102 <= v103)
                      {
                        v106 = a1[5];
                        v107 = v88;
                      }

                      else
                      {
                        if (v103 <= 1)
                        {
                          v103 = 1;
                        }

                        v104 = 2 * v103;
                        if (v104 <= v102)
                        {
                          v105 = v102;
                        }

                        else
                        {
                          v105 = v104;
                        }

                        v106 = (a1[1])(*a1, v105, "Vector Storage (uint8_t, growth)");
                        memcpy(v106, a1[5], *(a1 + 9));
                        (a1[3])(*a1, a1[5]);
                        *(a1 + 8) = v105;
                        a1[5] = v106;
                        v107 = *(a1 + 9);
                      }

                      result = memmove(&v106[v88 + 1], &v106[v88], v107 - v88);
                      *(a1[5] + v88) = v78;
                      v114 = 1;
                      goto LABEL_141;
                    }

                    if (v89 == 1)
                    {
                      v90 = v87 + 3;
                      v91 = *(a1 + 8);
                      if (v90 <= v91)
                      {
                        v94 = a1[5];
                        v95 = v88;
                      }

                      else
                      {
                        if (v91 <= 1)
                        {
                          v91 = 1;
                        }

                        v92 = 2 * v91;
                        if (v92 <= v90)
                        {
                          v93 = v90;
                        }

                        else
                        {
                          v93 = v92;
                        }

                        v94 = (a1[1])(*a1, v93, "Vector Storage (uint8_t, growth)");
                        memcpy(v94, a1[5], *(a1 + 9));
                        (a1[3])(*a1, a1[5]);
                        *(a1 + 8) = v93;
                        a1[5] = v94;
                        v95 = *(a1 + 9);
                      }

                      result = memmove(&v94[v88 + 1], &v94[v88], v95 - v88);
                      *(a1[5] + v88) = v78;
                      v114 = 2;
LABEL_141:
                      *(a1 + 9) += v114;
                    }
                  }

LABEL_142:
                  v76 += 4;
                }

                while (v77 != v76);
              }

              break;
            case 9:
              if (result)
              {
                v16 = 0;
                v17 = *(a1 + 9);
                v18 = 4 * result;
                do
                {
                  v19 = *(v4 + v16) != 0;
                  v20 = v17 + 1;
                  v21 = *(a1 + 8);
                  if (v17 + 1 <= v21)
                  {
                    v24 = a1[5];
                    v25 = v17;
                  }

                  else
                  {
                    if (v21 <= 1)
                    {
                      v21 = 1;
                    }

                    v22 = 2 * v21;
                    if (v22 <= v20)
                    {
                      v23 = v20;
                    }

                    else
                    {
                      v23 = v22;
                    }

                    v24 = (a1[1])(*a1, v23, "Vector Storage (uint8_t, growth)");
                    memcpy(v24, a1[5], *(a1 + 9));
                    (a1[3])(*a1, a1[5]);
                    *(a1 + 8) = v23;
                    a1[5] = v24;
                    v25 = *(a1 + 9);
                  }

                  v16 += 4;
                  result = memmove(&v24[v17 + 1], &v24[v17], v25 - v17);
                  *(a1[5] + v17) = v19;
                  v17 = *(a1 + 9) + 1;
                  *(a1 + 9) = v17;
                }

                while (v18 != v16);
              }

              break;
            default:
              goto LABEL_157;
          }
        }

LABEL_155:
        ++v13;
        v4 += 16;
      }

      while (v13 != v128);
    }
  }

  v126 = *MEMORY[0x277D85DE8];
  return result;
}

void glpSerializeAST(uint64_t a1, unint64_t a2, void *a3, _DWORD *a4)
{
  memset(v58, 0, sizeof(v58));
  glpInitPoolAllocator(0x4000, 0x4000, v58);
  v57 = 0;
  *__n = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  glpInitSerialContext(&v53, v58);
  v8 = *(a1 + 36);
  v9 = glp_serialized_integer32_control(v8);
  v10 = __n[0];
  v11 = HIDWORD(__n[0]);
  v12 = HIDWORD(__n[0]) + 1;
  if ((HIDWORD(__n[0]) + 1) <= LODWORD(__n[0]))
  {
    v15 = __n[1];
    v16 = HIDWORD(__n[0]);
  }

  else
  {
    if (SLODWORD(__n[0]) <= 1)
    {
      v10 = 1;
    }

    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(&v53 + 1))(v53, v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, __n[1], HIDWORD(__n[0]));
    (*(&v54 + 1))(v53, __n[1]);
    LODWORD(__n[0]) = v14;
    __n[1] = v15;
    v16 = HIDWORD(__n[0]);
  }

  memmove(&v15[v11 + 1], &v15[v11], (v16 - v11));
  *(__n[1] + v11) = v9;
  v17 = HIDWORD(__n[0]);
  v18 = ++HIDWORD(__n[0]);
  if ((v9 & 0x80000000) != 0)
  {
    v19 = (v9 >> 1) & 7;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v38 = v17 + 4;
        v39 = __n[0];
        if (v38 <= LODWORD(__n[0]))
        {
          v42 = __n[1];
          v43 = v18;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v39 = 1;
          }

          v40 = 2 * v39;
          if (v40 <= v38)
          {
            v41 = v38;
          }

          else
          {
            v41 = v40;
          }

          v42 = (*(&v53 + 1))(v53, v41, "Vector Storage (uint8_t, growth)");
          memcpy(v42, __n[1], HIDWORD(__n[0]));
          (*(&v54 + 1))(v53, __n[1]);
          LODWORD(__n[0]) = v41;
          __n[1] = v42;
          v43 = HIDWORD(__n[0]);
        }

        memmove(&v42[v18 + 1], &v42[v18], v43 - v18);
        v45 = __n[1] + v18;
        *(v45 + 2) = BYTE2(v8);
        *v45 = v8;
        v44 = 3;
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_52;
        }

        v26 = v17 + 5;
        v27 = __n[0];
        if (v26 <= LODWORD(__n[0]))
        {
          v30 = __n[1];
          v31 = v18;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v27 = 1;
          }

          v28 = 2 * v27;
          if (v28 <= v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          v30 = (*(&v53 + 1))(v53, v29, "Vector Storage (uint8_t, growth)");
          memcpy(v30, __n[1], HIDWORD(__n[0]));
          (*(&v54 + 1))(v53, __n[1]);
          LODWORD(__n[0]) = v29;
          __n[1] = v30;
          v31 = HIDWORD(__n[0]);
        }

        memmove(&v30[v18 + 1], &v30[v18], v31 - v18);
        *(__n[1] + v18) = v8;
        v44 = 4;
      }
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_52;
      }

      v20 = v17 + 3;
      v21 = __n[0];
      if (v20 <= LODWORD(__n[0]))
      {
        v24 = __n[1];
        v25 = v18;
      }

      else
      {
        if (SLODWORD(__n[0]) <= 1)
        {
          v21 = 1;
        }

        v22 = 2 * v21;
        if (v22 <= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        v24 = (*(&v53 + 1))(v53, v23, "Vector Storage (uint8_t, growth)");
        memcpy(v24, __n[1], HIDWORD(__n[0]));
        (*(&v54 + 1))(v53, __n[1]);
        LODWORD(__n[0]) = v23;
        __n[1] = v24;
        v25 = HIDWORD(__n[0]);
      }

      memmove(&v24[v18 + 1], &v24[v18], v25 - v18);
      *(__n[1] + v18) = v8;
      v44 = 2;
    }

    else
    {
      v32 = v17 + 2;
      v33 = __n[0];
      if (v32 <= LODWORD(__n[0]))
      {
        v36 = __n[1];
        v37 = v18;
      }

      else
      {
        if (SLODWORD(__n[0]) <= 1)
        {
          v33 = 1;
        }

        v34 = 2 * v33;
        if (v34 <= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = v34;
        }

        v36 = (*(&v53 + 1))(v53, v35, "Vector Storage (uint8_t, growth)");
        memcpy(v36, __n[1], HIDWORD(__n[0]));
        (*(&v54 + 1))(v53, __n[1]);
        LODWORD(__n[0]) = v35;
        __n[1] = v36;
        v37 = HIDWORD(__n[0]);
      }

      memmove(&v36[v18 + 1], &v36[v18], v37 - v18);
      *(__n[1] + v18) = v8;
      v44 = 1;
    }

    HIDWORD(__n[0]) += v44;
  }

LABEL_52:
  v46 = *(a1 + 32);
  if (v46)
  {
    v47 = 0;
    for (i = 0; i < v46; ++i)
    {
      v49 = *(a1 + 40);
      v50 = *(v49 + v47);
      if (v50)
      {
        v51 = *(v49 + v47 + 8);
        serialize_GLPType(&v53, v51);
        real_serialize_GLPValue(&v53, v50, v51);
        v46 = *(a1 + 32);
      }

      v47 += 32;
    }
  }

  serialize_GLPASTNode(&v53, a2);
  v52 = malloc_type_malloc(HIDWORD(__n[0]), 0xCA0EF1E7uLL);
  if (!v52)
  {
    abort();
  }

  *a3 = v52;
  memcpy(v52, __n[1], HIDWORD(__n[0]));
  *a4 = HIDWORD(__n[0]);
  glpDestroySerialContext(&v53, 1);
  glpDestroyPoolAllocator(v58);
}

uint64_t serialize_GLPASTNode(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  switch(glpASTNodeGetKind(a2))
  {
    case 0u:
      serializeTypeConversionFields(a1, a2);
      break;
    case 1u:
      serializeVariableIdentifierFields(a1, a2);
      break;
    case 2u:
      serializeTypeIdentifierFields(a1, a2);
      break;
    case 3u:
      serializeConstantFields(a1, a2);
      break;
    case 4u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x30u:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x41u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Du:
    case 0x52u:
      serializeASTFields(a1, a2);
      break;
    case 5u:
      serializeFieldAccessFields(a1, a2);
      break;
    case 6u:
    case 0xAu:
      serializeCallFields(a1, a2);
      break;
    case 7u:
      serializeFunctionCallFields(a1, a2);
      break;
    case 8u:
      serializeSubroutineArrayCallFields(a1, a2);
      break;
    case 9u:
      serializeMethodCallFields(a1, a2);
      break;
    case 0x1Eu:
      serializeEqualFields(a1, a2);
      break;
    case 0x1Fu:
      serializeNotEqualFields(a1, a2);
      break;
    case 0x27u:
      serializeAssignFields(a1, a2);
      break;
    case 0x28u:
      serializeOpAssignFields(a1, a2);
    case 0x29u:
      serializeReadInputFields(a1, a2);
      break;
    case 0x2Au:
      serializeWriteOutputFields(a1, a2);
      break;
    case 0x2Bu:
      serializeCommaExprFields(a1, a2);
      break;
    case 0x2Cu:
      serializeParameterDeclarationFields(a1, a2);
      break;
    case 0x2Du:
      serializeFunctionPrototypeFields(a1, a2);
      break;
    case 0x2Eu:
      serializeVariableDeclarationFields(a1, a2);
      break;
    case 0x2Fu:
      serializeVariableDeclarationGroupFields(a1, a2);
      break;
    case 0x31u:
      serializeQualifiedDeclarationFields(a1, a2);
      break;
    case 0x32u:
      serializeQualifiedDeclarationGroupFields(a1, a2);
      break;
    case 0x35u:
      serializePrimitiveTypeFields(a1, a2);
      break;
    case 0x37u:
      serializeFieldDeclarationFields(a1, a2);
      break;
    case 0x38u:
      serializeStructTypeFields(a1, a2);
      break;
    case 0x39u:
      serializeInterfaceBlockFields(a1, a2);
      break;
    case 0x3Au:
      serializeLayoutTypeFields(a1, a2);
      break;
    case 0x3Bu:
      serializeKeywordQualifierFields(a1, a2);
      break;
    case 0x3Cu:
      serializeLayoutQualifierFields(a1, a2);
      break;
    case 0x3Du:
      serializeSubroutineTypeListFields(a1, a2);
      break;
    case 0x3Eu:
      serializeQualifierListFields(a1, a2);
      break;
    case 0x3Fu:
      serializeGlobalTypeQualifierFields(a1, a2);
      break;
    case 0x40u:
      serializeLayoutPairFields(a1, a2);
      break;
    case 0x42u:
      serializeBlockFields(a1, a2);
      break;
    case 0x46u:
      serializeCaseStatementFields(a1, a2);
      break;
    case 0x47u:
      serializeDefaultStatementFields(a1, a2);
      break;
    case 0x4Bu:
      serializeReturnStatementFields(a1, a2);
      break;
    case 0x4Cu:
      serializeTopLevelFields(a1, a2);
      break;
    case 0x4Eu:
      serializeRawCallFields(a1, a2);
      break;
    case 0x4Fu:
      serializeSubroutineRawCallFields(a1, a2);
      break;
    case 0x50u:
      serializeOffsetFields(a1, a2);
      break;
    case 0x51u:
      serializeLValueFields(a1, a2);
      break;
    case 0x53u:
      serializeIBPartialDerefFields(a1, a2);
      break;
    case 0x54u:
      serializePPStreamOpFields(a1, a2);
      break;
    case 0x55u:
      serializeSubroutineUniformFields(a1, a2);
      break;
    default:
      abort();
  }

  ChildCount = glpASTNodeGetChildCount(a2);
  v6 = ChildCount;
  v7 = glp_serialized_integer32_control(ChildCount);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = v9 + 1;
  if (v9 + 1 <= v8)
  {
    v13 = a1[5];
    v14 = *(a1 + 9);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v11 = 2 * v8;
    if (v11 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v12;
    a1[5] = v13;
    v14 = *(a1 + 9);
  }

  result = memmove(&v13[v9 + 1], &v13[v9], (v14 - v9));
  *(a1[5] + v9) = v7;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v7 & 0x80000000) != 0)
  {
    v17 = (v7 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v6);
        *v43 = v6;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_55;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v6;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_55;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v6;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v6;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

LABEL_55:
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      Child = glpASTNodeGetChild(a2, i);
      result = serialize_GLPASTNode(a1, Child);
    }
  }

  return result;
}

uint64_t serialize_GLPLayoutPair(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  serialize_GLPLayoutPair(a1, *a2);
  v5 = *(a2 + 8);
  v6 = glp_serialized_integer32_control(v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v35 = v14 + 4;
        v36 = *(a1 + 8);
        if (v35 <= v36)
        {
          v39 = a1[5];
          v40 = v15;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v38;
          a1[5] = v39;
          v40 = *(a1 + 9);
        }

        memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
        v42 = a1[5] + v15;
        *(v42 + 2) = BYTE2(v5);
        *v42 = v5;
        v41 = 3;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_53;
        }

        v23 = v14 + 5;
        v24 = *(a1 + 8);
        if (v23 <= v24)
        {
          v27 = a1[5];
          v28 = v15;
        }

        else
        {
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = 2 * v24;
          if (v25 <= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
          memcpy(v27, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v26;
          a1[5] = v27;
          v28 = *(a1 + 9);
        }

        memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
        *(a1[5] + v15) = v5;
        v41 = 4;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_53;
      }

      v17 = v14 + 3;
      v18 = *(a1 + 8);
      if (v17 <= v18)
      {
        v21 = a1[5];
        v22 = v15;
      }

      else
      {
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v19 = 2 * v18;
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
        memcpy(v21, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v20;
        a1[5] = v21;
        v22 = *(a1 + 9);
      }

      memmove(&v21[v15 + 1], &v21[v15], v22 - v15);
      *(a1[5] + v15) = v5;
      v41 = 2;
    }

    else
    {
      v29 = v14 + 2;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      *(a1[5] + v15) = v5;
      v41 = 1;
    }

    *(a1 + 9) += v41;
  }

LABEL_53:
  v43 = *(a2 + 12);
  v44 = glp_serialized_integer32_control(v43);
  v45 = *(a1 + 8);
  v46 = *(a1 + 9);
  v47 = v46 + 1;
  if (v46 + 1 <= v45)
  {
    v50 = a1[5];
    v51 = *(a1 + 9);
  }

  else
  {
    if (v45 <= 1)
    {
      v45 = 1;
    }

    v48 = 2 * v45;
    if (v48 <= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
    memcpy(v50, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v49;
    a1[5] = v50;
    v51 = *(a1 + 9);
  }

  result = memmove(&v50[v46 + 1], &v50[v46], (v51 - v46));
  *(a1[5] + v46) = v44;
  v52 = *(a1 + 9);
  v53 = v52 + 1;
  *(a1 + 9) = v52 + 1;
  if ((v44 & 0x80000000) != 0)
  {
    v54 = (v44 >> 1) & 7;
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v73 = v52 + 4;
        v74 = *(a1 + 8);
        if (v73 <= v74)
        {
          v77 = a1[5];
          v78 = v53;
        }

        else
        {
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = 2 * v74;
          if (v75 <= v73)
          {
            v76 = v73;
          }

          else
          {
            v76 = v75;
          }

          v77 = (a1[1])(*a1, v76, "Vector Storage (uint8_t, growth)");
          memcpy(v77, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v76;
          a1[5] = v77;
          v78 = *(a1 + 9);
        }

        result = memmove(&v77[v53 + 1], &v77[v53], v78 - v53);
        v80 = a1[5] + v53;
        *(v80 + 2) = BYTE2(v43);
        *v80 = v43;
        v79 = 3;
        goto LABEL_103;
      }

      if (v54 == 3)
      {
        v61 = v52 + 5;
        v62 = *(a1 + 8);
        if (v61 <= v62)
        {
          v65 = a1[5];
          v66 = v53;
        }

        else
        {
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = 2 * v62;
          if (v63 <= v61)
          {
            v64 = v61;
          }

          else
          {
            v64 = v63;
          }

          v65 = (a1[1])(*a1, v64, "Vector Storage (uint8_t, growth)");
          memcpy(v65, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v64;
          a1[5] = v65;
          v66 = *(a1 + 9);
        }

        result = memmove(&v65[v53 + 1], &v65[v53], v66 - v53);
        *(a1[5] + v53) = v43;
        v79 = 4;
        goto LABEL_103;
      }
    }

    else
    {
      if (!v54)
      {
        v67 = v52 + 2;
        v68 = *(a1 + 8);
        if (v67 <= v68)
        {
          v71 = a1[5];
          v72 = v53;
        }

        else
        {
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = 2 * v68;
          if (v69 <= v67)
          {
            v70 = v67;
          }

          else
          {
            v70 = v69;
          }

          v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
          memcpy(v71, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v70;
          a1[5] = v71;
          v72 = *(a1 + 9);
        }

        result = memmove(&v71[v53 + 1], &v71[v53], v72 - v53);
        *(a1[5] + v53) = v43;
        v79 = 1;
        goto LABEL_103;
      }

      if (v54 == 1)
      {
        v55 = v52 + 3;
        v56 = *(a1 + 8);
        if (v55 <= v56)
        {
          v59 = a1[5];
          v60 = v53;
        }

        else
        {
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = 2 * v56;
          if (v57 <= v55)
          {
            v58 = v55;
          }

          else
          {
            v58 = v57;
          }

          v59 = (a1[1])(*a1, v58, "Vector Storage (uint8_t, growth)");
          memcpy(v59, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v58;
          a1[5] = v59;
          v60 = *(a1 + 9);
        }

        result = memmove(&v59[v53 + 1], &v59[v53], v60 - v53);
        *(a1[5] + v53) = v43;
        v79 = 2;
LABEL_103:
        *(a1 + 9) += v79;
      }
    }
  }

  if (*(a2 + 12) == 1)
  {
    v81 = *(a2 + 16);
    v82 = glp_serialized_integer32_control(v81);
    v83 = *(a1 + 8);
    v84 = *(a1 + 9);
    v85 = v84 + 1;
    if (v84 + 1 <= v83)
    {
      v88 = a1[5];
      v89 = *(a1 + 9);
    }

    else
    {
      if (v83 <= 1)
      {
        v83 = 1;
      }

      v86 = 2 * v83;
      v87 = v86 <= v85 ? v85 : v86;
      v88 = (a1[1])(*a1, v87, "Vector Storage (uint8_t, growth)");
      memcpy(v88, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v87;
      a1[5] = v88;
      v89 = *(a1 + 9);
    }

    result = memmove(&v88[v84 + 1], &v88[v84], (v89 - v84));
    *(a1[5] + v84) = v82;
    v90 = *(a1 + 9);
    v91 = v90 + 1;
    *(a1 + 9) = v90 + 1;
    if ((v82 & 0x80000000) != 0)
    {
      v92 = (v82 >> 1) & 7;
      if (v92 > 1)
      {
        if (v92 == 2)
        {
          v111 = v90 + 4;
          v112 = *(a1 + 8);
          if (v111 <= v112)
          {
            v115 = a1[5];
            v116 = v91;
          }

          else
          {
            if (v112 <= 1)
            {
              v112 = 1;
            }

            v113 = 2 * v112;
            if (v113 <= v111)
            {
              v114 = v111;
            }

            else
            {
              v114 = v113;
            }

            v115 = (a1[1])(*a1, v114, "Vector Storage (uint8_t, growth)");
            memcpy(v115, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v114;
            a1[5] = v115;
            v116 = *(a1 + 9);
          }

          result = memmove(&v115[v91 + 1], &v115[v91], v116 - v91);
          v118 = a1[5] + v91;
          *(v118 + 2) = BYTE2(v81);
          *v118 = v81;
          v117 = 3;
        }

        else
        {
          if (v92 != 3)
          {
            return result;
          }

          v99 = v90 + 5;
          v100 = *(a1 + 8);
          if (v99 <= v100)
          {
            v103 = a1[5];
            v104 = v91;
          }

          else
          {
            if (v100 <= 1)
            {
              v100 = 1;
            }

            v101 = 2 * v100;
            if (v101 <= v99)
            {
              v102 = v99;
            }

            else
            {
              v102 = v101;
            }

            v103 = (a1[1])(*a1, v102, "Vector Storage (uint8_t, growth)");
            memcpy(v103, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v102;
            a1[5] = v103;
            v104 = *(a1 + 9);
          }

          result = memmove(&v103[v91 + 1], &v103[v91], v104 - v91);
          *(a1[5] + v91) = v81;
          v117 = 4;
        }
      }

      else if (v92)
      {
        if (v92 != 1)
        {
          return result;
        }

        v93 = v90 + 3;
        v94 = *(a1 + 8);
        if (v93 <= v94)
        {
          v97 = a1[5];
          v98 = v91;
        }

        else
        {
          if (v94 <= 1)
          {
            v94 = 1;
          }

          v95 = 2 * v94;
          if (v95 <= v93)
          {
            v96 = v93;
          }

          else
          {
            v96 = v95;
          }

          v97 = (a1[1])(*a1, v96, "Vector Storage (uint8_t, growth)");
          memcpy(v97, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v96;
          a1[5] = v97;
          v98 = *(a1 + 9);
        }

        result = memmove(&v97[v91 + 1], &v97[v91], v98 - v91);
        *(a1[5] + v91) = v81;
        v117 = 2;
      }

      else
      {
        v105 = v90 + 2;
        v106 = *(a1 + 8);
        if (v105 <= v106)
        {
          v109 = a1[5];
          v110 = v91;
        }

        else
        {
          if (v106 <= 1)
          {
            v106 = 1;
          }

          v107 = 2 * v106;
          if (v107 <= v105)
          {
            v108 = v105;
          }

          else
          {
            v108 = v107;
          }

          v109 = (a1[1])(*a1, v108, "Vector Storage (uint8_t, growth)");
          memcpy(v109, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v108;
          a1[5] = v109;
          v110 = *(a1 + 9);
        }

        result = memmove(&v109[v91 + 1], &v109[v91], v110 - v91);
        *(a1[5] + v91) = v81;
        v117 = 1;
      }

      *(a1 + 9) += v117;
    }
  }

  return result;
}

uint64_t serialize_GLPVariableObject(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  serialize_GLPType(a1, *a2);
  serialize_GLPLayoutObject(a1, *(a2 + 8));
  v5 = *(a2 + 48);
  v6 = glp_serialized_integer64_control(v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 3)
    {
      if (((v6 >> 1) & 7) <= 5)
      {
        v23 = v14 + 5;
        if (v16 == 4)
        {
          v24 = *(a1 + 8);
          if (v23 <= v24)
          {
            v27 = a1[5];
            v28 = v15;
          }

          else
          {
            if (v24 <= 1)
            {
              v24 = 1;
            }

            v25 = 2 * v24;
            if (v25 <= v23)
            {
              v26 = v23;
            }

            else
            {
              v26 = v25;
            }

            v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
            memcpy(v27, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v26;
            a1[5] = v27;
            v28 = *(a1 + 9);
          }

          memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
          *(a1[5] + v15) = v5;
          v67 = *(a1 + 8);
          v66 = *(a1 + 9);
          v15 = v66 + 4;
          *(a1 + 9) = v66 + 4;
          v68 = v66 + 5;
          if (v68 <= v67)
          {
            v71 = a1[5];
            v72 = v15;
          }

          else
          {
            if (v67 <= 1)
            {
              v67 = 1;
            }

            v69 = 2 * v67;
            if (v69 <= v68)
            {
              v70 = v68;
            }

            else
            {
              v70 = v69;
            }

            v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
            memcpy(v71, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v70;
            a1[5] = v71;
            v72 = *(a1 + 9);
          }

          v5 >>= 32;
          v65 = v72 - v15;
          v64 = &v71[v15];
          goto LABEL_110;
        }

        v47 = *(a1 + 8);
        if (v23 <= v47)
        {
          v50 = a1[5];
          v51 = v15;
        }

        else
        {
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = 2 * v47;
          if (v48 <= v23)
          {
            v49 = v23;
          }

          else
          {
            v49 = v48;
          }

          v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
          memcpy(v50, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v49;
          a1[5] = v50;
          v51 = *(a1 + 9);
        }

        memmove(&v50[v15 + 1], &v50[v15], v51 - v15);
        *(a1[5] + v15) = v5;
        v85 = *(a1 + 8);
        v84 = *(a1 + 9);
        v15 = v84 + 4;
        *(a1 + 9) = v84 + 4;
        v86 = v84 + 6;
        if (v86 <= v85)
        {
          v89 = a1[5];
          v90 = v15;
        }

        else
        {
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v87 = 2 * v85;
          if (v87 <= v86)
          {
            v88 = v86;
          }

          else
          {
            v88 = v87;
          }

          v89 = (a1[1])(*a1, v88, "Vector Storage (uint8_t, growth)");
          memcpy(v89, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v88;
          a1[5] = v89;
          v90 = *(a1 + 9);
        }

        v5 >>= 32;
        v83 = v90 - v15;
        v82 = &v89[v15];
LABEL_116:
        memmove(v82 + 1, v82, v83);
        *(a1[5] + v15) = v5;
        v91 = 2;
        goto LABEL_117;
      }

      if (v16 != 6)
      {
        v58 = v14 + 9;
        v59 = *(a1 + 8);
        if (v58 <= v59)
        {
          v62 = a1[5];
          v63 = v15;
        }

        else
        {
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = 2 * v59;
          if (v60 <= v58)
          {
            v61 = v58;
          }

          else
          {
            v61 = v60;
          }

          v62 = (a1[1])(*a1, v61, "Vector Storage (uint8_t, growth)");
          memcpy(v62, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v61;
          a1[5] = v62;
          v63 = *(a1 + 9);
        }

        memmove(&v62[v15 + 1], &v62[v15], v63 - v15);
        *(a1[5] + v15) = v5;
        v91 = 8;
        goto LABEL_117;
      }

      v35 = v14 + 5;
      v36 = *(a1 + 8);
      if (v35 <= v36)
      {
        v39 = a1[5];
        v40 = v15;
      }

      else
      {
        if (v36 <= 1)
        {
          v36 = 1;
        }

        v37 = 2 * v36;
        if (v37 <= v35)
        {
          v38 = v35;
        }

        else
        {
          v38 = v37;
        }

        v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
        memcpy(v39, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v38;
        a1[5] = v39;
        v40 = *(a1 + 9);
      }

      memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
      *(a1[5] + v15) = v5;
      v75 = *(a1 + 8);
      v74 = *(a1 + 9);
      v76 = v74 + 4;
      *(a1 + 9) = v74 + 4;
      v77 = v74 + 7;
      if (v77 <= v75)
      {
        v80 = a1[5];
        v81 = v76;
      }

      else
      {
        if (v75 <= 1)
        {
          v75 = 1;
        }

        v78 = 2 * v75;
        if (v78 <= v77)
        {
          v79 = v77;
        }

        else
        {
          v79 = v78;
        }

        v80 = (a1[1])(*a1, v79, "Vector Storage (uint8_t, growth)");
        memcpy(v80, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v79;
        a1[5] = v80;
        v81 = *(a1 + 9);
      }

      memmove(&v80[v76 + 1], &v80[v76], v81 - v76);
      v92 = a1[5] + v76;
      *(v92 + 2) = BYTE6(v5);
      *v92 = WORD2(v5);
    }

    else
    {
      if (((v6 >> 1) & 7) <= 1)
      {
        if (!v16)
        {
          v17 = v14 + 2;
          v18 = *(a1 + 8);
          if (v17 <= v18)
          {
            v21 = a1[5];
            v22 = v15;
          }

          else
          {
            if (v18 <= 1)
            {
              v18 = 1;
            }

            v19 = 2 * v18;
            if (v19 <= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = v19;
            }

            v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
            memcpy(v21, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v20;
            a1[5] = v21;
            v22 = *(a1 + 9);
          }

          v64 = &v21[v15];
          v65 = v22 - v15;
LABEL_110:
          memmove(v64 + 1, v64, v65);
          *(a1[5] + v15) = v5;
          v91 = 1;
LABEL_117:
          *(a1 + 9) += v91;
          goto LABEL_118;
        }

        v41 = v14 + 3;
        v42 = *(a1 + 8);
        if (v41 <= v42)
        {
          v45 = a1[5];
          v46 = v15;
        }

        else
        {
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = 2 * v42;
          if (v43 <= v41)
          {
            v44 = v41;
          }

          else
          {
            v44 = v43;
          }

          v45 = (a1[1])(*a1, v44, "Vector Storage (uint8_t, growth)");
          memcpy(v45, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v44;
          a1[5] = v45;
          v46 = *(a1 + 9);
        }

        v82 = &v45[v15];
        v83 = v46 - v15;
        goto LABEL_116;
      }

      if (v16 != 2)
      {
        v52 = v14 + 5;
        v53 = *(a1 + 8);
        if (v52 <= v53)
        {
          v56 = a1[5];
          v57 = v15;
        }

        else
        {
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = 2 * v53;
          if (v54 <= v52)
          {
            v55 = v52;
          }

          else
          {
            v55 = v54;
          }

          v56 = (a1[1])(*a1, v55, "Vector Storage (uint8_t, growth)");
          memcpy(v56, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v55;
          a1[5] = v56;
          v57 = *(a1 + 9);
        }

        memmove(&v56[v15 + 1], &v56[v15], v57 - v15);
        *(a1[5] + v15) = v5;
        v91 = 4;
        goto LABEL_117;
      }

      v29 = v14 + 4;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      v73 = a1[5] + v15;
      *(v73 + 2) = BYTE2(v5);
      *v73 = v5;
    }

    v91 = 3;
    goto LABEL_117;
  }

LABEL_118:
  serialize_GLPString(a1, *(a2 + 16), *(a2 + 24));
  serialize_GLPString(a1, *(a2 + 32), *(a2 + 40));
  v93 = *(a2 + 56);
  v94 = *(a1 + 8);
  v95 = *(a1 + 9);
  v96 = v95 + 1;
  if (v95 + 1 <= v94)
  {
    v99 = a1[5];
    v100 = *(a1 + 9);
  }

  else
  {
    if (v94 <= 1)
    {
      v94 = 1;
    }

    v97 = 2 * v94;
    if (v97 <= v96)
    {
      v98 = v96;
    }

    else
    {
      v98 = v97;
    }

    v99 = (a1[1])(*a1, v98, "Vector Storage (uint8_t, growth)");
    memcpy(v99, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v98;
    a1[5] = v99;
    v100 = *(a1 + 9);
  }

  memmove(&v99[v95 + 1], &v99[v95], (v100 - v95));
  *(a1[5] + v95) = v93;
  ++*(a1 + 9);
  real_serialize_GLPValue(a1, *(a2 + 64), *a2);
  real_serialize_GLPValue(a1, *(a2 + 72), *a2);
  serialize_GLPInterfaceBlockObject(a1, *(a2 + 80));
  serialize_GLPBufferObject(a1, *(a2 + 88));
  v101 = *(a2 + 96);
  v102 = glp_serialized_integer32_control(v101);
  v103 = *(a1 + 8);
  v104 = *(a1 + 9);
  v105 = v104 + 1;
  if (v104 + 1 <= v103)
  {
    v108 = a1[5];
    v109 = *(a1 + 9);
  }

  else
  {
    if (v103 <= 1)
    {
      v103 = 1;
    }

    v106 = 2 * v103;
    if (v106 <= v105)
    {
      v107 = v105;
    }

    else
    {
      v107 = v106;
    }

    v108 = (a1[1])(*a1, v107, "Vector Storage (uint8_t, growth)");
    memcpy(v108, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v107;
    a1[5] = v108;
    v109 = *(a1 + 9);
  }

  memmove(&v108[v104 + 1], &v108[v104], (v109 - v104));
  *(a1[5] + v104) = v102;
  v110 = *(a1 + 9);
  v111 = v110 + 1;
  *(a1 + 9) = v110 + 1;
  if ((v102 & 0x80000000) != 0)
  {
    v112 = (v102 >> 1) & 7;
    if (v112 > 1)
    {
      if (v112 == 2)
      {
        v131 = v110 + 4;
        v132 = *(a1 + 8);
        if (v131 <= v132)
        {
          v135 = a1[5];
          v136 = v111;
        }

        else
        {
          if (v132 <= 1)
          {
            v132 = 1;
          }

          v133 = 2 * v132;
          if (v133 <= v131)
          {
            v134 = v131;
          }

          else
          {
            v134 = v133;
          }

          v135 = (a1[1])(*a1, v134, "Vector Storage (uint8_t, growth)");
          memcpy(v135, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v134;
          a1[5] = v135;
          v136 = *(a1 + 9);
        }

        memmove(&v135[v111 + 1], &v135[v111], v136 - v111);
        v138 = a1[5] + v111;
        *(v138 + 2) = BYTE2(v101);
        *v138 = v101;
        v137 = 3;
      }

      else
      {
        if (v112 != 3)
        {
          goto LABEL_177;
        }

        v119 = v110 + 5;
        v120 = *(a1 + 8);
        if (v119 <= v120)
        {
          v123 = a1[5];
          v124 = v111;
        }

        else
        {
          if (v120 <= 1)
          {
            v120 = 1;
          }

          v121 = 2 * v120;
          if (v121 <= v119)
          {
            v122 = v119;
          }

          else
          {
            v122 = v121;
          }

          v123 = (a1[1])(*a1, v122, "Vector Storage (uint8_t, growth)");
          memcpy(v123, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v122;
          a1[5] = v123;
          v124 = *(a1 + 9);
        }

        memmove(&v123[v111 + 1], &v123[v111], v124 - v111);
        *(a1[5] + v111) = v101;
        v137 = 4;
      }
    }

    else if (v112)
    {
      if (v112 != 1)
      {
        goto LABEL_177;
      }

      v113 = v110 + 3;
      v114 = *(a1 + 8);
      if (v113 <= v114)
      {
        v117 = a1[5];
        v118 = v111;
      }

      else
      {
        if (v114 <= 1)
        {
          v114 = 1;
        }

        v115 = 2 * v114;
        if (v115 <= v113)
        {
          v116 = v113;
        }

        else
        {
          v116 = v115;
        }

        v117 = (a1[1])(*a1, v116, "Vector Storage (uint8_t, growth)");
        memcpy(v117, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v116;
        a1[5] = v117;
        v118 = *(a1 + 9);
      }

      memmove(&v117[v111 + 1], &v117[v111], v118 - v111);
      *(a1[5] + v111) = v101;
      v137 = 2;
    }

    else
    {
      v125 = v110 + 2;
      v126 = *(a1 + 8);
      if (v125 <= v126)
      {
        v129 = a1[5];
        v130 = v111;
      }

      else
      {
        if (v126 <= 1)
        {
          v126 = 1;
        }

        v127 = 2 * v126;
        if (v127 <= v125)
        {
          v128 = v125;
        }

        else
        {
          v128 = v127;
        }

        v129 = (a1[1])(*a1, v128, "Vector Storage (uint8_t, growth)");
        memcpy(v129, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v128;
        a1[5] = v129;
        v130 = *(a1 + 9);
      }

      memmove(&v129[v111 + 1], &v129[v111], v130 - v111);
      *(a1[5] + v111) = v101;
      v137 = 1;
    }

    *(a1 + 9) += v137;
  }

LABEL_177:
  v139 = *(a2 + 100);
  v140 = glp_serialized_integer32_control(v139);
  v141 = *(a1 + 8);
  v142 = *(a1 + 9);
  v143 = v142 + 1;
  if (v142 + 1 <= v141)
  {
    v146 = a1[5];
    v147 = *(a1 + 9);
  }

  else
  {
    if (v141 <= 1)
    {
      v141 = 1;
    }

    v144 = 2 * v141;
    if (v144 <= v143)
    {
      v145 = v143;
    }

    else
    {
      v145 = v144;
    }

    v146 = (a1[1])(*a1, v145, "Vector Storage (uint8_t, growth)");
    memcpy(v146, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v145;
    a1[5] = v146;
    v147 = *(a1 + 9);
  }

  result = memmove(&v146[v142 + 1], &v146[v142], (v147 - v142));
  *(a1[5] + v142) = v140;
  v148 = *(a1 + 9);
  v149 = v148 + 1;
  *(a1 + 9) = v148 + 1;
  if ((v140 & 0x80000000) != 0)
  {
    v150 = (v140 >> 1) & 7;
    if (v150 > 1)
    {
      if (v150 == 2)
      {
        v169 = v148 + 4;
        v170 = *(a1 + 8);
        if (v169 <= v170)
        {
          v173 = a1[5];
          v174 = v149;
        }

        else
        {
          if (v170 <= 1)
          {
            v170 = 1;
          }

          v171 = 2 * v170;
          if (v171 <= v169)
          {
            v172 = v169;
          }

          else
          {
            v172 = v171;
          }

          v173 = (a1[1])(*a1, v172, "Vector Storage (uint8_t, growth)");
          memcpy(v173, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v172;
          a1[5] = v173;
          v174 = *(a1 + 9);
        }

        result = memmove(&v173[v149 + 1], &v173[v149], v174 - v149);
        v176 = a1[5] + v149;
        *(v176 + 2) = BYTE2(v139);
        *v176 = v139;
        v175 = 3;
      }

      else
      {
        if (v150 != 3)
        {
          return result;
        }

        v157 = v148 + 5;
        v158 = *(a1 + 8);
        if (v157 <= v158)
        {
          v161 = a1[5];
          v162 = v149;
        }

        else
        {
          if (v158 <= 1)
          {
            v158 = 1;
          }

          v159 = 2 * v158;
          if (v159 <= v157)
          {
            v160 = v157;
          }

          else
          {
            v160 = v159;
          }

          v161 = (a1[1])(*a1, v160, "Vector Storage (uint8_t, growth)");
          memcpy(v161, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v160;
          a1[5] = v161;
          v162 = *(a1 + 9);
        }

        result = memmove(&v161[v149 + 1], &v161[v149], v162 - v149);
        *(a1[5] + v149) = v139;
        v175 = 4;
      }
    }

    else if (v150)
    {
      if (v150 != 1)
      {
        return result;
      }

      v151 = v148 + 3;
      v152 = *(a1 + 8);
      if (v151 <= v152)
      {
        v155 = a1[5];
        v156 = v149;
      }

      else
      {
        if (v152 <= 1)
        {
          v152 = 1;
        }

        v153 = 2 * v152;
        if (v153 <= v151)
        {
          v154 = v151;
        }

        else
        {
          v154 = v153;
        }

        v155 = (a1[1])(*a1, v154, "Vector Storage (uint8_t, growth)");
        memcpy(v155, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v154;
        a1[5] = v155;
        v156 = *(a1 + 9);
      }

      result = memmove(&v155[v149 + 1], &v155[v149], v156 - v149);
      *(a1[5] + v149) = v139;
      v175 = 2;
    }

    else
    {
      v163 = v148 + 2;
      v164 = *(a1 + 8);
      if (v163 <= v164)
      {
        v167 = a1[5];
        v168 = v149;
      }

      else
      {
        if (v164 <= 1)
        {
          v164 = 1;
        }

        v165 = 2 * v164;
        if (v165 <= v163)
        {
          v166 = v163;
        }

        else
        {
          v166 = v165;
        }

        v167 = (a1[1])(*a1, v166, "Vector Storage (uint8_t, growth)");
        memcpy(v167, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v166;
        a1[5] = v167;
        v168 = *(a1 + 9);
      }

      result = memmove(&v167[v149 + 1], &v167[v149], v168 - v149);
      *(a1[5] + v149) = v139;
      v175 = 1;
    }

    *(a1 + 9) += v175;
  }

  return result;
}