char *sub_1AAD43BDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB423080, &type metadata for ChartAccessibilityElements.GroupEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 312);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[312 * v8])
    {
      memmove(v12, v13, 312 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD43D1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1ED9AEEB8, &type metadata for CurvePointArea, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1AAD43E44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1ED9AD728, &type metadata for ChartDisplayList, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD43F7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230F8, &type metadata for RenderableScales, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 488);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[488 * v8])
    {
      memmove(v12, v13, 488 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD440C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45848(0, &qword_1EB423100, sub_1AAD46920, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 544);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[68 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 544 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD46920();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD44220(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45848(0, &qword_1EB423108, sub_1AAD46990, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 552);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[69 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 552 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD46990();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD44388(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230A8, &type metadata for ChartDisplayList.LineItem.Point, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD444C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1ED9AD730, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD445FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230E8, &type metadata for ChartDisplayList.CompositingLayerItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD4473C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230E0, &type metadata for ChartDisplayList.MaskItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD4487C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230C0, &type metadata for ChartDisplayList.AreaItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD449B0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 176);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[176 * v10])
    {
      memmove(v14, v15, 176 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1AAD44AEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB423088, &type metadata for ChartDisplayList.GroupItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD44C10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB4230F0, &type metadata for ChartDisplayList.ItemType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1AAD44D1C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1AAD44E50(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_1AAD44F70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1ED9B09D0, &type metadata for SgLine.Points.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD450A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45848(0, &qword_1EB422FE8, sub_1AAD45AEC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1AAD4522C(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[40 * v12])
    {
      memmove(v16, v17, 40 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 40 * v12);
  }

  return v14;
}

char *sub_1AAD4534C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB422FD0, &type metadata for SgMask, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1AAD45470(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1AAD45848(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1AAD45664(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45CC0(0, &qword_1ED9B0618, &qword_1ED9B0608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 784);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[98 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 784 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD0D184(0, &qword_1ED9B0608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AAD457D8()
{
  if (!qword_1ED9B28B8)
  {
    sub_1AACC9AC0(255, &unk_1ED9B29D0);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B28B8);
    }
  }
}

void sub_1AAD45848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AAD458AC()
{
  if (!qword_1ED9B0918)
  {
    v0 = MEMORY[0x1E69E74A8];
    sub_1AAD467A8(255, &qword_1ED9B05E8, sub_1AAD45974, MEMORY[0x1E69E74A8]);
    sub_1AAD45A90(&qword_1ED9B05F0, &qword_1ED9B05E8, v0);
    v1 = type metadata accessor for CoordinateVector();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0918);
    }
  }
}

unint64_t sub_1AAD45974()
{
  result = qword_1ED9B0CE0;
  if (!qword_1ED9B0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0CE0);
  }

  return result;
}

void sub_1AAD459C8()
{
  if (!qword_1ED9B0920[0])
  {
    v0 = MEMORY[0x1E69E7428];
    sub_1AAD467A8(255, &qword_1ED9B05F8, sub_1AAD45974, MEMORY[0x1E69E7428]);
    sub_1AAD45A90(&qword_1ED9B0600, &qword_1ED9B05F8, v0);
    v1 = type metadata accessor for CoordinateVector();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9B0920);
    }
  }
}

uint64_t sub_1AAD45A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AAD467A8(255, a2, sub_1AAD45974, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAD45AEC()
{
  if (!qword_1EB422FF0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB422FF0);
    }
  }
}

void sub_1AAD45B54()
{
  if (!qword_1ED9AD6A0)
  {
    sub_1AAD469FC(255, &qword_1ED9AD908, &type metadata for SgLine.Points.Element, MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD6A0);
    }
  }
}

void sub_1AAD45BD0(uint64_t a1)
{
  if (!qword_1EB423000)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB423000);
    }
  }
}

void sub_1AAD45CC0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AAD0D184(255, a3);
    v4 = sub_1AAF90484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD45D28()
{
  if (!qword_1ED9AD670)
  {
    sub_1AAD467A8(255, &qword_1ED9B05F8, sub_1AAD45974, MEMORY[0x1E69E7428]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD670);
    }
  }
}

void sub_1AAD45DB0()
{
  if (!qword_1EB423018)
  {
    sub_1AACC9AC0(255, &qword_1EB423020);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423018);
    }
  }
}

uint64_t sub_1AAD45E1C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AAD45E78()
{
  if (!qword_1ED9B1DC0)
  {
    sub_1AAD469FC(255, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1DC0);
    }
  }
}

void sub_1AAD45EF4()
{
  if (!qword_1ED9B0CA8)
  {
    sub_1AAD469FC(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B0CA8);
    }
  }
}

void sub_1AAD45F80()
{
  if (!qword_1ED9B0C00)
  {
    sub_1AAD469FC(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0C00);
    }
  }
}

void sub_1AAD45FFC()
{
  if (!qword_1ED9B29C8)
  {
    sub_1AAD469FC(255, &qword_1ED9B2A68, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B29C8);
    }
  }
}

void sub_1AAD46094(uint64_t a1)
{
  if (!qword_1ED9B06B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for CGRect(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B06B0);
    }
  }
}

void sub_1AAD4620C()
{
  if (!qword_1ED9B1688)
  {
    sub_1AAD469FC(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1688);
    }
  }
}

void sub_1AAD46288()
{
  if (!qword_1EB423028)
  {
    sub_1AAD469FC(255, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423028);
    }
  }
}

void sub_1AAD46304()
{
  if (!qword_1ED9B0C30)
  {
    sub_1AAD469FC(255, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0C30);
    }
  }
}

void sub_1AAD46380(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AAD0D184(255, a3);
    v4 = sub_1AAF90484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD463D8()
{
  if (!qword_1EB424B00)
  {
    sub_1AAD467A8(255, &qword_1ED9B05F8, sub_1AAD45974, MEMORY[0x1E69E7428]);
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424B00);
    }
  }
}

void sub_1AAD46460()
{
  if (!qword_1EB423058)
  {
    sub_1AAD467A8(255, &qword_1EB423060, sub_1AAD45974, MEMORY[0x1E69E7450]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423058);
    }
  }
}

void sub_1AAD464E8()
{
  if (!qword_1EB423070)
  {
    sub_1AAD467A8(255, &qword_1EB423060, sub_1AAD45974, MEMORY[0x1E69E7450]);
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423070);
    }
  }
}

char *sub_1AAD46570(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1EB423078, &type metadata for Spec.Axis.Label, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

void sub_1AAD466A4()
{
  if (!qword_1ED9B0C10)
  {
    sub_1AAD46864(255, &qword_1ED9B0CD8, MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0C10);
    }
  }
}

void sub_1AAD46720()
{
  if (!qword_1ED9AEE98)
  {
    sub_1AAD467A8(255, &qword_1ED9AF970, sub_1AAD46810, type metadata accessor for FloatingPointBinningUnit);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEE98);
    }
  }
}

void sub_1AAD467A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, MEMORY[0x1E69E63B0], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AAD46810()
{
  result = qword_1ED9B44A0;
  if (!qword_1ED9B44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44A0);
  }

  return result;
}

void sub_1AAD46864(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6530]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAD468B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AAD46920()
{
  if (!qword_1ED9AED80)
  {
    sub_1AACC9AC0(255, &qword_1ED9AE8D8);
    v0 = type metadata accessor for WeightedSum.Element();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AED80);
    }
  }
}

void sub_1AAD46990()
{
  if (!qword_1ED9AD668)
  {
    sub_1AAD46920();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD668);
    }
  }
}

void sub_1AAD469FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ForEach<>.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AAF8EF84();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

void ForEach<>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static ForEach<>._makeChart3DContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a2;
  v69 = a1;
  v66 = a9;
  v76 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v15 = _s21AttachCombinerVisitorVMa();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v55 - v16;
  v67 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v67);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  StateVMa = _s9MakeStateVMa();
  v59 = *(StateVMa - 8);
  MEMORY[0x1EEE9AC00](StateVMa);
  v20 = (&v55 - v19);
  v62 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v62);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v57 = a8;
  v23 = _s18AddCombinerVisitorVMa();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v58 = v22;
  sub_1AAD468B8(v22, v25, type metadata accessor for _Chart3DContentOutputs);
  v60 = v25;
  v26 = v68;
  sub_1AAF02370(v25, v67, v23, &off_1EE75BD60, &off_1F1FCFE20);
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  sub_1AAF8EFE4();
  v27 = sub_1AACBC3B4(v69);
  v69 = v18;
  sub_1AAD3F894(v26, v18, type metadata accessor for _Chart3DContentInputs);
  v28 = AGSubgraphGetCurrent();
  if (!v28)
  {
    __break(1u);
  }

  v29 = v28;
  v30 = v57;
  v31 = sub_1AAD475D0(a3, a4, a5, a6, a7);
  v32 = a7;
  v68 = v33;
  v34 = a6;
  LODWORD(v67) = v35;
  *v20 = v27;
  v70 = a3;
  v71 = a4;
  v36 = a3;
  v55 = a3;
  v37 = v20;
  v38 = a4;
  v72 = a5;
  v73 = v34;
  v39 = a5;
  v56 = a5;
  v40 = v34;
  v74 = v32;
  v75 = v30;
  v41 = v32;
  v42 = _s9MakeStateVMa();
  v43 = sub_1AAD468B8(v69, v37 + v42[17], type metadata accessor for _Chart3DContentInputs);
  v69 = &v55;
  *(v37 + v42[18]) = v29;
  v44 = v37 + v42[19];
  v45 = v68;
  *v44 = v31;
  *(v44 + 8) = v45;
  *(v44 + 16) = v67;
  MEMORY[0x1EEE9AC00](v43);
  v70 = v36;
  v71 = v38;
  v72 = v39;
  v73 = v40;
  v74 = v41;
  v75 = v30;
  v46 = _s9ItemStateVMa();
  v47 = StateVMa;
  *(&v55 - 4) = v46;
  *(&v55 - 3) = v47;
  *(&v55 - 2) = swift_getWitnessTable();
  v48 = sub_1AAF8D1A4();
  sub_1AACBC418(v37, sub_1AAD4AE90, (&v55 - 6), v47, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v49);
  (*(v59 + 8))(v37, v47);
  LODWORD(v29) = v70;
  v50 = v60;
  v51 = v58;
  sub_1AAD3F894(v60, v58, type metadata accessor for _Chart3DContentOutputs);
  v52 = v63;
  sub_1AAD468B8(v51, v63, type metadata accessor for _Chart3DContentOutputs);
  v70 = v55;
  v71 = v38;
  v72 = v56;
  v73 = v40;
  v74 = v41;
  v75 = v30;
  *(v52 + *(_s21AttachCombinerVisitorVMa() + 68)) = v29;
  v53 = v65;
  sub_1AAF024A4(v52, v62, v65, &off_1F1FD1410, &off_1F1FCFE10);
  (*(v64 + 8))(v52, v53);
  return sub_1AAD468B8(v50, v66, type metadata accessor for _Chart3DContentOutputs);
}

void *sub_1AAD472BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *v5;
  *(v5 + *(*v5 + 168)) = 0;
  v5[2] = a1;
  sub_1AAD468B8(a2, v5 + qword_1EB423118, type metadata accessor for _Chart3DContentOutputs);
  v10 = *(*v5 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v5 + v10, a4, AssociatedTypeWitness);
  (*(*(*(v9 + 88) - 8) + 32))(v5 + *(*v5 + 144), a3);
  *(v5 + *(*v5 + 160)) = a5;
  return v5;
}

id *sub_1AAD47444()
{
  v1 = *v0;

  sub_1AAD4B4B0(v0 + qword_1EB423118, type metadata accessor for _Chart3DContentOutputs);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 18));
  v2 = *(*v0 + 19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1AAD4757C()
{
  sub_1AAD47444();

  return swift_deallocClassInstance();
}

uint64_t sub_1AAD475D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _s4ItemCMa();
  v8 = sub_1AAF8F894();
  swift_getTupleTypeMetadata2();
  v9 = sub_1AAF8F894();
  sub_1AAEFE9CC(v9, a2, v7, a5);

  return v8;
}

uint64_t sub_1AAD47688@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8EFE4();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t sub_1AAD47720(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19[0] = *(a1 + 16);
  v22 = v19[0];
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v7 = sub_1AAF8EFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1AAD47688(v19 - v9);
  v11 = sub_1AAD47948(v10, a1);
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = (v1 + *(a1 + 76));
    v14 = *v13;
    v15 = v13[1];
    LODWORD(v13) = *(v13 + 4);
    v20[0] = v14;
    v20[1] = v15;
    v21 = v13;
    MEMORY[0x1EEE9AC00](result);
    v19[-2] = a1;
    v19[-1] = swift_getWitnessTable();
    v16 = *(a1 + 56);

    v22 = v19[0];
    v23 = v3;
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = v16;
    v17 = _s9ItemStateVMa();
    sub_1AACBC418(v20, sub_1AAD4B490, &v19[-4], v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  }

  return result;
}

uint64_t sub_1AAD47948(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v95 = a1;
  v77 = *(*(a2 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v6;
  v87 = sub_1AAF8FE74();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v70 - v10;
  v94 = *(a2 + 40);
  v11 = *(*(v94 + 8) + 8);
  v12 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v85 = &v70 - v14;
  v15 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v70 - v16;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18);
  AssociatedConformanceWitness = &v70 - v19;
  v93 = v11;
  v82 = *(swift_getAssociatedConformanceWitness() + 8);
  v90 = v18;
  v89 = swift_getAssociatedTypeWitness();
  v20 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v22 = &v70 - v21;
  v23 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGSubgraphIsValid();
  if (!result)
  {
    return result;
  }

  v74 = v20;
  v71 = v23;
  v73 = result;
  v28 = *(a2 + 76);
  v92 = v3;
  v29 = (v3 + v28);
  ++*(v3 + v28 + 16);
  v30 = *(a2 + 32);
  v31 = *(a2 + 48);
  v99 = v12;
  v100 = v7;
  v75 = v22;
  v32 = v94;
  v101 = v30;
  v102 = v94;
  v103 = v31;
  sub_1AAF8EFE4();
  v96 = v26;
  sub_1AAF8EF94();
  v91 = a2;
  v33 = *(a2 + 56);
  v99 = v12;
  v100 = v7;
  v101 = v30;
  v102 = v32;
  v103 = v31;
  v104 = v33;
  v34 = _s4ItemCMa();
  v105 = sub_1AAF8F894();
  v70 = v29;
  v35 = v29[1];
  v76 = v29 + 1;
  v99 = v35;
  v94 = v34;
  v36 = v89;
  sub_1AAF8F3A4();

  swift_getWitnessTable();
  v84 = v7;
  v95 = v31;
  v98 = sub_1AAF8FAB4();
  v37 = v96;
  v72 = v12;
  sub_1AAF8FB74();
  v38 = v75;
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = 0;
  v82 = (v79 + 6);
  v81 = (v79 + 4);
  v90 = (v77 + 16);
  v93 = (v77 + 8);
  ++v80;
  ++v79;
  while (1)
  {
    sub_1AAF8FE94();
    if ((*v82)(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v40 = v85;
    (*v81)(v85, v17, AssociatedTypeWitness);
    v41 = sub_1AAD483B8(v40, v39, v91);
    v99 = v41;
    sub_1AAF8F914();

    sub_1AAF8F8E4();
    v42 = *(*v41 + 144);
    swift_beginAccess();
    v43 = v88;
    v44 = v84;
    (*v90)(v88, v41 + v42, v84);
    sub_1AAF8FAA4();
    v45 = AssociatedTypeWitness;
    v46 = v86;
    sub_1AAF8FA74();

    v47 = v43;
    v36 = v89;
    v48 = v44;
    v37 = v96;
    (*v93)(v47, v48);
    v49 = v46;
    AssociatedTypeWitness = v45;
    (*v80)(v49, v87);
    (*v79)(v40, v45);
    if (__OFADD__(v39++, 1))
    {
      __break(1u);
      break;
    }
  }

  result = (*(v74 + 8))(v38, v36);
  v51 = v98;
  if ((v98 & 0xC000000000000001) != 0)
  {
    sub_1AAF8FFA4();
    v52 = v84;
    result = sub_1AAF8FA84();
    v51 = v99;
    v53 = v100;
    v54 = v101;
    v55 = v102;
    v56 = v103;
  }

  else
  {
    v55 = 0;
    v57 = -1 << *(v98 + 32);
    v53 = v98 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v98 + 56);
    v52 = v84;
  }

  v60 = (v77 + 56);
  v89 = v54;
  v61 = (v54 + 64) >> 6;
  while (v51 < 0)
  {
    if (!sub_1AAF8FFD4())
    {
      v63 = v78;
LABEL_28:
      (*v60)(v63, 1, 1, v52);
      (*(v71 + 8))(v37, v72);
      sub_1AACC9C00();
      v68 = v105;
      v69 = v70;

      *v69 = v68;
      return v73;
    }

    v64 = v78;
    sub_1AAF904B4();
    v63 = v64;
    swift_unknownObjectRelease();
LABEL_26:
    (*v60)(v63, 0, 1, v52);
    sub_1AAF8F3F4();
    sub_1AAF8F394();
    result = (*v93)(v63, v52);
    v67 = v97;
    if (v97)
    {
      AGSubgraphRemoveChild();
      *(v67 + *(*v67 + 168)) = 1;
    }

    v37 = v96;
  }

  if (v56)
  {
    v62 = v55;
    v63 = v78;
LABEL_25:
    v66 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    (*(v77 + 16))(v63, *(v51 + 48) + *(v77 + 72) * (v66 | (v62 << 6)), v52);
    goto LABEL_26;
  }

  v65 = v55;
  v63 = v78;
  while (1)
  {
    v62 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v62 >= v61)
    {
      goto LABEL_28;
    }

    v56 = *(v53 + 8 * v62);
    ++v65;
    if (v56)
    {
      v55 = v62;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD483B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v81 = a2;
  v7 = *(a3 + 40);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v72 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v60[-v10];
  v11 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v60[-v14];
  v15 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a3 + 24);
  v82 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60[-v21];
  v23 = *(a3 + 32);
  v24 = *(a3 + 48);
  *&v25 = v23;
  v70 = v7;
  *(&v25 + 1) = v7;
  v79 = v25;
  v66 = v8;
  *&v26 = v8;
  *(&v26 + 1) = v17;
  v80 = v26;
  v83 = v26;
  v84 = v25;
  v85 = v24;
  v27 = sub_1AAF8EFE4();
  v77 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60[-v28];
  sub_1AAD47688(&v60[-v28]);
  v73 = a1;
  v78 = v27;
  v81 = v29;
  sub_1AAF8EFA4();
  v30 = v4;
  v76 = v4 + *(a3 + 76);
  v31 = v76 + 8;
  v32 = *(a3 + 56);
  v83 = v80;
  v84 = v79;
  v85 = v24;
  v86 = v32;
  v33 = _s4ItemCMa();
  *&v79 = v22;
  v34 = v33;
  *&v80 = v17;
  sub_1AAF8F414();
  v35 = v87;
  if (v87)
  {
    v36 = *v87;
    v37 = *(*v87 + 168);
    if (v87[v37] == 1)
    {
      v87[v37] = 0;
      AGSubgraphAddChild();
      v36 = *v35;
    }

    v38 = *(v36 + 160);
    v39 = *(v76 + 4);
    v40 = v80;
    v41 = v79;
    if (*&v35[v38] != v39)
    {
      v42 = *(v36 + 152);
      swift_beginAccess();
      (*(v71 + 24))(&v35[v42], v73, v72);
      swift_endAccess();
      v43 = *(*v35 + 144);
      swift_beginAccess();
      (*(v82 + 24))(&v35[v43], v41, v40);
      swift_endAccess();
      *&v35[v38] = v39;
    }

    goto LABEL_8;
  }

  v63 = v23;
  v64 = v34;
  v65 = v31;
  v44 = v70;
  v45 = v75;
  v46 = AGSubgraphGetGraph();
  v47 = AGSubgraphCreate();

  AGSubgraphAddChild();
  result = AGGraphGetCurrentAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v49 = result;
    v61 = *v30;
    sub_1AAD3F894(v30 + *(a3 + 68), v45, type metadata accessor for _Chart3DContentInputs);
    AGGraphClearUpdate();
    v50 = AGSubgraphGetCurrent();
    v62 = v47;
    AGSubgraphSetCurrent();
    v59 = v24;
    v58 = v44;
    v52 = v73;
    v51 = v74;
    v41 = v79;
    v40 = v80;
    sub_1AAD48B34(v45, v79, v81, v73, v49, v61, v66, v80, v74, v63, v58, v59, v32);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v53 = v51;
    v54 = v68;
    sub_1AAD3F894(v53, v68, type metadata accessor for _Chart3DContentOutputs);
    v55 = *(v82 + 16);
    v56 = v67;
    v55(v67, v41, v40);
    v57 = v69;
    (*(v71 + 16))(v69, v52, v72);
    LODWORD(v52) = *(v76 + 4);
    swift_allocObject();
    v35 = sub_1AAD472BC(v62, v54, v56, v57, v52);
    v55(v56, v41, v40);
    *&v83 = v35;
    sub_1AAF8F3F4();

    sub_1AAF8F424();
    sub_1AAD4B4B0(v74, type metadata accessor for _Chart3DContentOutputs);
    sub_1AAD4B4B0(v75, type metadata accessor for _Chart3DContentInputs);
LABEL_8:
    (*(v82 + 8))(v41, v40);
    (*(v77 + 8))(v81, v78);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD48B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v86 = a6;
  v85 = a5;
  v81 = a4;
  v80 = a3;
  v94 = a2;
  v91 = a9;
  v82 = a13;
  v112 = *MEMORY[0x1E69E9840];
  v90 = sub_1AAF8D954();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v66 - v16;
  v106 = a7;
  v107 = a8;
  v108 = a10;
  v109 = a11;
  v92 = a10;
  v93 = a11;
  v110 = a12;
  v111 = a13;
  v83 = _s5ChildVMa_0();
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = (&v66 - v17);
  v78 = *(*(a11 + 8) + 8);
  v70 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v66 - v18;
  v75 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a8 - 8);
  v23 = v69;
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = type metadata accessor for ContainerWith3DChildID();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v66 - v31;
  v33 = type metadata accessor for _Chart3DContentInputs();
  v34 = v33 - 8;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3F894(a1, v36, type metadata accessor for _Chart3DContentInputs);
  v67 = *(v23 + 16);
  v67(v28, v94, a8);
  v37 = *(v34 + 32);
  v38 = *&v36[v37];
  v72 = v36;
  v66 = a8;
  sub_1AAD73B68(v28, v38, a8, v32);
  v104 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_1AAD4B590();
  sub_1AACBC418(v32, sub_1AAD4B528, v103, v29, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
  v68 = 0;
  (*(v30 + 8))(v32, v29);
  *&v36[v37] = v106;
  v41 = v70;
  v106 = v70;
  v107 = a8;
  v108 = v92;
  v109 = v93;
  v110 = a12;
  sub_1AAF8EFE4();
  v42 = sub_1AAF8EFB4();
  v43 = v71;
  sub_1AAF8EF94();
  v44 = v41;
  v45 = sub_1AAF8FC84();
  v46 = v76;
  v47 = v74;
  v48 = AssociatedTypeWitness;
  (*(v76 + 16))(v74);
  v45(&v106, 0);
  (*(v75 + 8))(v43, v44);
  v42(v47);

  (*(v46 + 8))(v47, v48);
  v49 = v73;
  v50 = v66;
  v67(v73, v94, v66);
  v51 = v79;
  v52 = v86;
  *v79 = v85;
  *(v51 + 4) = v52;
  v106 = v44;
  v107 = v50;
  v53 = v92;
  v108 = v92;
  v109 = v93;
  v54 = v82;
  v110 = a12;
  v111 = v82;
  v55 = _s5ChildVMa_0();
  (*(v69 + 32))(v51 + *(v55 + 72), v49, v50);
  v56 = v83;
  v100 = v53;
  v101 = v83;
  v102 = swift_getWitnessTable();
  v57 = sub_1AAF8D1A4();
  v58 = MEMORY[0x1E69E73E0];
  v59 = MEMORY[0x1E69E7410];
  sub_1AACBC418(v51, sub_1AAD4BC78, v99, v56, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v60);
  (*(v87 + 8))(v51, v56);
  LODWORD(v50) = v106;
  v97 = v53;
  v98 = v106;
  v61 = v95;
  sub_1AACBC418(v95, sub_1AAD4B5E8, v96, v53, v58, MEMORY[0x1E69E6370], v59, v62);
  v63 = v88;
  sub_1AACBC644(v50, v88);
  v64 = v72;
  (*(v54 + 32))(v63, v72, v53, v54);
  (*(v89 + 8))(v63, v90);
  (*(v84 + 8))(v61, v53);
  return sub_1AAD4B4B0(v64, type metadata accessor for _Chart3DContentInputs);
}

uint64_t sub_1AAD494BC()
{
  _s9ItemStateVMa();
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t sub_1AAD4953C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8EFE4();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

void sub_1AAD495D4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1AAD495E4(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 40);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v48 - v9;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = *(a1 + 48);
  *&v14 = v8;
  *(&v14 + 1) = v12;
  v58 = v3;
  *&v15 = v3;
  *(&v15 + 1) = v6;
  v63 = v15;
  v64 = v14;
  v66 = v14;
  v67 = v15;
  v68 = v13;
  v59 = sub_1AAF8EFE4();
  v49 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v17 = v48 - v16;
  v53 = v7;
  v18 = swift_getAssociatedTypeWitness();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v60 = v48 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v1, a1, v21);
  v25 = *(a1 + 72);
  sub_1AAD494BC();
  v26 = *(a1 + 56);
  v66 = v64;
  v67 = v63;
  v68 = v13;
  v69 = v26;
  _s4ItemCMa();
  sub_1AAF8F414();

  result = (*(*(v12 - 8) + 8))(&v23[v25], v12);
  v28 = v65;
  if (v65)
  {
    v29 = *(v65 + *(*v65 + 160));
    sub_1AAD494BC();
    v31 = v30;

    if (v29 == v31)
    {
      v48[1] = v1;
      sub_1AAD4953C(v17);
      v32 = v50;
      v33 = v59;
      sub_1AAF8EF94();
      *&v64 = *(v49 + 8);
      (v64)(v17, v33);
      v34 = *(*v28 + 152);
      swift_beginAccess();
      v35 = v54;
      v36 = v28 + v34;
      v37 = v51;
      v38 = AssociatedTypeWitness;
      (*(v54 + 16))(v51, v36, AssociatedTypeWitness);
      v39 = v32;
      v40 = sub_1AAF8FC84();
      (*(v61 + 16))(v60);
      v40(&v66, 0);
      (*(v35 + 8))(v37, v38);
      (*(v52 + 8))(v39, v8);
      sub_1AAD4953C(v17);
      v41 = v59;
      v42 = sub_1AAF8EFB4();
      (v64)(v17, v41);
      v43 = v56;
      v44 = v60;
      v42(v60);

      MEMORY[0x1EEE9AC00](v45);
      v48[-2] = a1;
      v48[-1] = swift_getWitnessTable();
      v46 = v58;
      sub_1AACBC418(v43, sub_1AAD4BC60, &v48[-4], v58, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v47);

      (*(v57 + 8))(v43, v46);
      return (*(v61 + 8))(v44, v62);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AAD49D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AAF8D954();
  v9 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 56);
  v19 = *MEMORY[0x1E698D3F8];
  v21 = AssociatedTypeWitness;
  v24 = *(a2 + 16);
  v25 = v12;
  v26 = a3;
  v27 = *(a2 + 40);
  v28 = v13;
  v29 = a4;
  v14 = _s25ForEachPreferenceCombinerVMa();
  v22 = v14;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1AAF8D1A4();
  sub_1AACBC418(&v19, sub_1AACBC5B0, v20, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  sub_1AACBC644(v24, v11);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);
  return sub_1AAF8E4D4();
}

uint64_t sub_1AAD49F58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27[1] = swift_getAssociatedTypeWitness();
  v8 = sub_1AAF8D954();
  v9 = sub_1AAF8FE74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  sub_1AAF8E4C4();
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v16, v12, v8);
  v18 = sub_1AACBC3B4(v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = a2[2];
  v20 = a2[3];
  v27[-10] = v19;
  v27[-9] = v20;
  v21 = a2[4];
  v22 = a2[5];
  v27[-8] = v21;
  v27[-7] = a3;
  v23 = a2[6];
  v24 = a2[7];
  v27[-6] = v22;
  v27[-5] = v23;
  v27[-4] = v24;
  v27[-3] = a4;
  v27[-2] = v4;
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v27[5] = a3;
  v27[6] = v22;
  v27[7] = v23;
  v27[8] = v24;
  v27[9] = a4;
  v25 = _s25ForEachPreferenceCombinerVMa();
  MEMORY[0x1EEE9AC00](v25);
  v27[-4] = v26;
  v27[-3] = sub_1AAD4B60C;
  v27[-2] = &v27[-12];
  AGGraphMutateAttribute();
  return (*(v13 + 8))(v16, v8);
}

uint64_t sub_1AAD4A218(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + *(_s21AttachCombinerVisitorVMa() + 68));
  result = _s25ForEachPreferenceCombinerVMa();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD4A2D4(int a1)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    return 0;
  }

  _s9ItemStateVMa();
  v1 = *AGGraphGetValue();

  return v1;
}

uint64_t sub_1AAD4A388@<X0>(uint64_t a1@<X8>)
{
  sub_1AAF8DB34();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1AAD4A428@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  LODWORD(v82) = a1;
  v77 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v58 - v18;
  v75 = v19;
  v20 = sub_1AAF8D954();
  v74 = sub_1AAF8FE74();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v58 - v21;
  v22 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v73 = (&v58 - v25);
  v57 = a10;
  v26 = a2;
  v59 = a3;
  v60 = a4;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  result = sub_1AAD4A2D4(v82);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v31 = result;
  v82 = a10;
  sub_1AAF8DB34();

  v64 = v26;
  v83 = v26;
  v32 = v59;
  v33 = v60;
  v84 = v59;
  v85 = v60;
  v65 = v27;
  v86 = v27;
  v87 = v28;
  v66 = v28;
  v67 = v29;
  v88 = v29;
  v34 = _s4ItemCMa();
  v35 = sub_1AAF8F8D4();
  v81 = a5;
  v36 = v76;
  if (!v35)
  {
  }

  v37 = v33;
  v79 = (v71 + 6);
  v70 = (v71 + 4);
  ++v71;
  v63 = (v78 + 16);
  v62 = (v78 + 8);
  v61 = (v78 + 32);
  ++v69;
  LODWORD(v78) = 1;
  v38 = 4;
  v72 = v34;
  while (1)
  {
    v39 = v38 - 4;
    v40 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    if ((v40 & 1) == 0)
    {
      break;
    }

    v41 = *(v31 + 8 * v38);

    v42 = v38 - 3;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v43 = v80;
    sub_1AAD3F894(v41 + qword_1EB423118, v80, type metadata accessor for _Chart3DContentOutputs);
    sub_1AAF8E4C4();
    v44 = sub_1AAF8E4B4();
    (*(*(v44 - 8) + 8))(v43, v44);
    if ((*v79)(v36, 1, v20) == 1)
    {

      (*v69)(v36, v74);
    }

    else
    {
      v45 = v73;
      (*v70)(v73, v36, v20);
      v46 = v75;
      v47 = sub_1AACBC3B4(v45);
      if (v78)
      {
        Value = AGGraphGetValue();
        v49 = v20;
        v50 = v68;
        (*v63)(v68, Value, v46);

        (*v71)(v45, v49);
        v51 = v77;
        (*v62)(v77, v46);
        v52 = v50;
        v20 = v49;
        (*v61)(v51, v52, v46);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v47);
        *(&v58 - 10) = v64;
        *(&v58 - 9) = v32;
        *(&v58 - 8) = v37;
        *(&v58 - 7) = v53;
        v54 = v66;
        *(&v58 - 6) = v65;
        *(&v58 - 5) = v54;
        v55 = v82;
        *(&v58 - 4) = v67;
        *(&v58 - 3) = v55;
        LODWORD(v57) = v56;
        sub_1AAF8DB44();

        (*v71)(v45, v20);
      }

      LODWORD(v78) = 0;
      v36 = v76;
    }

    ++v38;
    if (v42 == sub_1AAF8F8D4())
    {
    }
  }

  v41 = sub_1AAF90114();
  v42 = v38 - 3;
  if (!__OFADD__(v39, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1AAD4AAE8(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1AAD4A388(v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v13);
  v15[-2] = a2;
  v15[-1] = swift_getWitnessTable();
  sub_1AACBE580(v11, sub_1AAD4BC10, &v15[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1AAD4AEB8()
{
  result = sub_1AAF8E4B4();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1AAD4B020()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAD4B05C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AAD4B070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAD4B0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAD4B0F8()
{
  result = type metadata accessor for _Chart3DContentOutputs();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAD4B18C()
{
  sub_1AAF8EFE4();
  sub_1AAF8D1A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _Chart3DContentInputs();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Subgraph(319);
      if (v2 <= 0x3F)
      {
        _s9ItemStateVMa();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAD4B2B4()
{
  result = type metadata accessor for _Chart3DContentOutputs();
  if (v1 <= 0x3F)
  {
    _s9ItemStateVMa();
    result = sub_1AAF8D1A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAD4B36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chart3DContentOutputs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD4B3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chart3DContentOutputs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD4B4B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAD4B590()
{
  if (!qword_1EB4233A0[0])
  {
    sub_1AAF8DC74();
    v0 = sub_1AAF8D1A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB4233A0);
    }
  }
}

uint64_t sub_1AAD4B66C()
{
  _s9ItemStateVMa();
  result = sub_1AAF8D1A4();
  if (v1 <= 0x3F)
  {
    sub_1AAF8EFE4();
    result = sub_1AAF8D1A4();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAD4B768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1AAD4B8D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;

  v18(v19);
}

uint64_t sub_1AAD4BAFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAD4BB70@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

__n128 PointMark.init<A, B, C>(x:y:z:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1AAE83B9C(a1, a4, a7, v32);
  v17 = v32[7];
  *(a9 + 96) = v32[6];
  *(a9 + 112) = v17;
  *(a9 + 128) = v32[8];
  v18 = v32[3];
  *(a9 + 32) = v32[2];
  *(a9 + 48) = v18;
  v19 = v32[5];
  *(a9 + 64) = v32[4];
  *(a9 + 80) = v19;
  v20 = v32[1];
  *a9 = v32[0];
  *(a9 + 16) = v20;
  sub_1AAE83B9C(a2, a5, a8, v33);
  v21 = v33[7];
  *(a9 + 240) = v33[6];
  *(a9 + 256) = v21;
  *(a9 + 272) = v33[8];
  v22 = v33[3];
  *(a9 + 176) = v33[2];
  *(a9 + 192) = v22;
  v23 = v33[5];
  *(a9 + 208) = v33[4];
  *(a9 + 224) = v23;
  v24 = v33[1];
  *(a9 + 144) = v33[0];
  *(a9 + 160) = v24;
  sub_1AAE83B9C(a3, a6, a10, v34);
  v25 = type metadata accessor for PlottableValue();
  (*(*(v25 - 8) + 8))(a3, v25);
  v26 = type metadata accessor for PlottableValue();
  (*(*(v26 - 8) + 8))(a2, v26);
  v27 = type metadata accessor for PlottableValue();
  (*(*(v27 - 8) + 8))(a1, v27);
  v28 = v34[7];
  *(a9 + 384) = v34[6];
  *(a9 + 400) = v28;
  *(a9 + 416) = v34[8];
  v29 = v34[3];
  *(a9 + 320) = v34[2];
  *(a9 + 336) = v29;
  v30 = v34[5];
  *(a9 + 352) = v34[4];
  *(a9 + 368) = v30;
  result = v34[1];
  *(a9 + 288) = v34[0];
  *(a9 + 304) = result;
  return result;
}

uint64_t static PointMark._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_1AAD59064(0, &qword_1EB4234A8, &type metadata for PointMark, MEMORY[0x1E697DDB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v40 - v10);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v12 = sub_1AAF8F164();
  v13 = v8[2];
  v13(v11, a1, v7);
  if (v9 != 4)
  {
    __break(1u);
  }

  v57 = *v11;
  v14 = v8[1];
  v53 = v8 + 1;
  v55 = v14;
  v14(v11, v7);
  v59 = type metadata accessor for _Chart3DContentInputs();
  v56 = *(a2 + *(v59 + 24));
  KeyPath = swift_getKeyPath();
  v54 = v8 + 2;
  v61 = v12;
  v63 = sub_1AAD57438;
  v64 = KeyPath;
  sub_1AACBC63C();
  v60 = a2;
  v52 = v7;
  v16 = MEMORY[0x1E69E6720];
  sub_1AAD59064(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v50 = v13;
  v58 = a3;
  sub_1AAD57494(0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v49 = a1;
  sub_1AAD5752C(&qword_1EB4234C0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);

  v51 = sub_1AAF8D194();

  v17 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD57440;
  v64 = v17;
  v47 = sub_1AACBC63C();
  sub_1AAD59064(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v16);
  v46 = v18;
  sub_1AAD57494(0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v45 = v19;
  v44 = sub_1AAD5752C(&qword_1EB4234D0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);

  v43 = sub_1AAD51AC0;
  v48 = sub_1AAF8D194();

  v20 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD57528;
  v64 = v20;
  sub_1AACBC63C();
  v21 = MEMORY[0x1E69E63B0];
  sub_1AAD59064(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v16);
  sub_1AAD57494(0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);
  sub_1AAD5752C(&qword_1EB4234E0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);

  v42 = sub_1AAF8D194();

  v22 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD59D54;
  v64 = v22;

  v41 = sub_1AAF8D194();

  v23 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD575C0;
  v64 = v23;
  sub_1AACBC63C();
  sub_1AAD57764(0, &qword_1EB4234E8);
  sub_1AAD575FC(&qword_1EB4234F0, &qword_1EB4234E8);

  LODWORD(v16) = sub_1AAF8D194();

  v24 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD57438;
  v64 = v24;
  sub_1AACBC63C();
  sub_1AAD57764(0, &qword_1EB4234F8);
  sub_1AAD575FC(&qword_1EB423500, &qword_1EB4234F8);

  LODWORD(v21) = sub_1AAF8D194();

  v25 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD5764C;
  v64 = v25;
  sub_1AACBC63C();
  sub_1AAD57A68(0, &qword_1EB423508, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]);
  sub_1AAD57690();
  sub_1AAD59CC0(&qword_1EB423518, sub_1AAD57690);

  v26 = sub_1AAF8D194();

  v27 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD57728;
  v64 = v27;
  sub_1AACBC63C();
  sub_1AAD57764(0, &qword_1EB423520);
  sub_1AAD575FC(&qword_1EB423528, &qword_1EB423520);

  v28 = sub_1AAF8D194();

  v29 = v52;
  v50(v11, v49, v52);
  v30 = *v11;
  v55(v11, v29);
  v31 = swift_getKeyPath();
  v61 = v12;
  v63 = sub_1AAD59D50;
  v64 = v31;

  v32 = sub_1AAF8D194();

  v61 = v57;
  v62 = v56;
  v63 = __PAIR64__(v48, v51);
  v64 = __PAIR64__(v41, v42);
  v65 = v16;
  v66 = v21;
  v67 = v26;
  v68 = v28;
  v69 = 0;
  sub_1AACBC63C();
  sub_1AAD59968(0, &qword_1EB423530, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList);
  sub_1AAD577C4();
  v33 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v33);
  *(&v40 - 4) = v34;
  sub_1AAD57820();
  sub_1AAF8E494();
  v61 = v30;
  sub_1AACBC63C();
  sub_1AAD57874();
  v35 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v35);
  *(&v40 - 4) = v36;
  sub_1AAD578D0();
  sub_1AAF8E494();
  v61 = v32;
  sub_1AACBC63C();
  sub_1AAD57924();
  v37 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v37);
  *(&v40 - 4) = v38;
  sub_1AAD57980();
  return sub_1AAF8E494();
}

uint64_t sub_1AAD4CB98(uint64_t a1)
{
  sub_1AAD57FE4(a1, v3, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  sub_1AAD57FE4(v3, &v2, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  sub_1AAD59504();
  sub_1AAF8E154();
  return sub_1AAD57BD0(v3, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
}

__n128 sub_1AAD4CC28@<Q0>(uint64_t a1@<X8>)
{
  sub_1AAD594B0();
  sub_1AAF8E144();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AAD4CC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v2;
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(a1 + 64);
  v11 = *(a1 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1AAD57FE4(v12, v6, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAD594B0();
  return sub_1AAF8E154();
}

uint64_t sub_1AAD4CD88@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();
  result = sub_1AAF8E144();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

double sub_1AAD4CE64@<D0>(double *a1@<X8>)
{
  sub_1AAD593B4();
  sub_1AAF8E144();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD4CF40(uint64_t a1)
{
  sub_1AAD5855C(a1, v3);
  sub_1AAD5855C(v3, &v2);
  sub_1AAD59360();
  sub_1AAF8E154();
  return sub_1AAD5930C(v3);
}

double sub_1AAD4CFA0@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD592B8();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

float sub_1AAD4D04C@<S0>(float *a1@<X8>)
{
  sub_1AAD59264();
  sub_1AAF8E144();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_1AAD4D0F4@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD583B8(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_1AAD4D17C@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v29[0] = *Value;
  v3 = Value[4];
  v5 = Value[1];
  v4 = Value[2];
  v29[3] = Value[3];
  v29[4] = v3;
  v29[1] = v5;
  v29[2] = v4;
  v6 = Value[8];
  v8 = Value[5];
  v7 = Value[6];
  v29[7] = Value[7];
  v29[8] = v6;
  v29[5] = v8;
  v29[6] = v7;
  sub_1AAD5835C(v29, v30);
  sub_1AADC7D9C(v29, v30);
  v9 = AGGraphGetValue();
  v10 = v9[16];
  v28[6] = v9[15];
  v28[7] = v10;
  v28[8] = v9[17];
  v11 = v9[12];
  v28[2] = v9[11];
  v28[3] = v11;
  v12 = v9[14];
  v28[4] = v9[13];
  v28[5] = v12;
  v13 = v9[10];
  v28[0] = v9[9];
  v28[1] = v13;
  sub_1AAD5835C(v28, v27);
  sub_1AADC7D9C(v28, v31 + 8);
  v14 = AGGraphGetValue();
  v15 = v14[25];
  v27[6] = v14[24];
  v27[7] = v15;
  v27[8] = v14[26];
  v16 = v14[21];
  v27[2] = v14[20];
  v27[3] = v16;
  v17 = v14[23];
  v27[4] = v14[22];
  v27[5] = v17;
  v18 = v14[19];
  v27[0] = v14[18];
  v27[1] = v18;
  sub_1AAD5835C(v27, &v26);
  sub_1AADC7D9C(v27, v32);
  v19 = v32[2];
  *(a1 + 160) = v32[1];
  *(a1 + 176) = v19;
  *(a1 + 192) = v32[3];
  *(a1 + 208) = v33;
  v20 = v31[3];
  *(a1 + 96) = v31[2];
  *(a1 + 112) = v20;
  v21 = v32[0];
  *(a1 + 128) = v31[4];
  *(a1 + 144) = v21;
  v22 = v30[3];
  *(a1 + 32) = v30[2];
  *(a1 + 48) = v22;
  v23 = v31[1];
  *(a1 + 64) = v31[0];
  *(a1 + 80) = v23;
  result = *v30;
  v25 = v30[1];
  *a1 = v30[0];
  *(a1 + 16) = v25;
  return result;
}

uint64_t sub_1AAD4D2F8()
{
  v92 = *MEMORY[0x1E69E9840];
  sub_1AAD59968(0, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
  v2 = *(v1 - 8);
  v68 = v1;
  v69 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v67 - v3;
  sub_1AAD57A68(0, &qword_1EB423638, sub_1AAD583E0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v67 - v6;
  sub_1AAD583E0();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8DC74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  *&v70 = v17;
  memcpy(v91, Value, sizeof(v91));
  v18 = v0[1];
  v19 = *MEMORY[0x1E698D3F8];
  v73 = v13;
  v71 = v14;
  if (v18 == v19)
  {
    (*(v10 + 56))(v7, 1, 1, v9);
    v20 = *(v9 + 48);
    sub_1AAD58448(v91, &v85);
    sub_1AAF8DC64();
    v12[v20] = 0;
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      sub_1AAD587A8(v7, &qword_1EB423638, sub_1AAD583E0);
    }
  }

  else
  {
    sub_1AAD58448(v91, &v85);
    v21 = AGGraphGetValue();
    v23 = v22;
    v24 = v13;
    v25 = *(v9 + 48);
    (*(v14 + 16))(v7, v21, v24);
    v7[v25] = v23 & 1;
    (*(v10 + 56))(v7, 0, 1, v9);
    sub_1AAD584A4(v7, v12);
  }

  v26 = v12[*(v9 + 48)];
  (*(v71 + 32))(v72, v12, v73);
  v27 = MEMORY[0x1E69E6720];
  sub_1AAD59064(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v28 = AGGraphGetValue();
  v30 = v29;
  sub_1AAD57FE4(v28, v79, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v31 = qword_1ED9B3D88;
  sub_1AAD59064(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v27);
  v32 = AGGraphGetValue();
  v34 = v33;
  v80 = *v32;
  v36 = *(v32 + 32);
  v35 = *(v32 + 48);
  v37 = *(v32 + 16);
  v84 = *(v32 + 64);
  v82 = v36;
  v83 = v35;
  v81 = v37;
  sub_1AAD57FE4(&v80, &v85, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v39 = *AGGraphGetValue();
  if ((v70 & 1) == 0 && (v26 & 1) == 0)
  {
    if ((v34 | v30))
    {
      if ((v38 & 1) == 0)
      {
        if ((v30 | v34))
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    else if ((v38 & 1) == 0)
    {
      sub_1AAD58508(v91);
      sub_1AAD57BD0(&v80, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
      sub_1AAD57BD0(v79, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
      return (*(v71 + 8))(v72, v73);
    }
  }

  ++v0[10];
  if ((v30 | v34))
  {
LABEL_17:
    ++v0[11];
    goto LABEL_18;
  }

LABEL_14:
  sub_1AAD59064(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v30 = v41;
  AGGraphGetValue();
  if (v42)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v43)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v44)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_1AAD57FE4(v79, v76, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v45 = v78;
  v46 = v71;
  if (v78 == 255)
  {
    sub_1AAD57BD0(v76, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
    v51 = *(&v81 + 1);
    if (*(&v81 + 1))
    {
      v30 = *(&v83 + 1);
      v31 = v84;
      v45 = *(&v82 + 1);
      v26 = v83;
      v49 = v82;
      *&v50 = v81;
      v70 = v50;
      v74 = 1;
      v87 = v82;
      v88 = v83;
      v89 = v84;
      v67 = v80;
      v85 = v80;
      v86 = v81;
      sub_1AAD5874C(&v85, v75);
      v48 = v67;
      *&v47 = v70;
      *(&v47 + 1) = v51;
    }

    else
    {
      v49 = 0;
      v26 = 0;
      v30 = 0;
      v31 = 0;
      v45 = 0;
      v74 = -1;
      v48 = 0uLL;
      v47 = 0uLL;
    }
  }

  else
  {
    v48 = v76[0];
    v47 = v76[1];
    v49 = v77;
    v74 = 0;
  }

  v85 = v48;
  v86 = v47;
  *&v87 = v49;
  *(&v87 + 1) = v45;
  *&v88 = v26;
  *(&v88 + 1) = v30;
  v89 = v31;
  v90 = v74;
  (*(v46 + 16))(&v4[*(v68 + 48)], v72, v73);
  v52 = *(v0 + 5);
  sub_1AAD57FE4(&v85, (v4 + 448), &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD59064(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v53 = AGGraphGetValue();
  v54 = *v53;
  v55 = v46;
  v56 = *(v53 + 8);
  v57 = AGGraphGetValue();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = *AGGraphGetValue();
  v61 = AGGraphGetValue();
  sub_1AAD5855C(v61, (v4 + 568));
  sub_1AAD57A68(0, &qword_1EB423508, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]);
  v62 = AGGraphGetValue();
  v63 = *(v62 + 16);
  v70 = *v62;
  memcpy(v4 + 16, v91, 0x1B0uLL);
  *(v4 + 66) = v54;
  v4[536] = v56;
  *(v4 + 68) = v58;
  v4[552] = v59;
  *(v4 + 70) = v60;
  *(v4 + 38) = v70;
  v4[624] = v63;
  *(v4 + 157) = v39;
  sub_1AAD57ACC();
  sub_1AAF8DC84();
  *v4 = v75[0];
  *(v4 + 1) = v52;
  sub_1AAD585B8(0, &qword_1EB423650, &qword_1EB423630, type metadata accessor for Resolved3DContentList.Item, MEMORY[0x1E69E6F90]);
  v64 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AAF92AB0;
  sub_1AAD58634(v4, v65 + v64);
  v75[0] = sub_1AAD78BF4(v65);
  v75[1] = v66;
  sub_1AAD59968(0, &qword_1EB423530, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList);
  AGGraphSetOutputValue();
  sub_1AAD57BD0(&v80, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAD586C4(v4);
  sub_1AAD57BD0(&v85, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD57BD0(v79, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  (*(v55 + 8))(v72, v73);
}

uint64_t sub_1AAD4DCB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_1AAD57A68(0, &qword_1EB423568, MEMORY[0x1E697E648], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = *MEMORY[0x1E698D3F8];
  v10 = sub_1AAF8DC74();
  v11 = v10;
  if (v9 == a2)
  {
    v12 = *(v10 - 8);
    (*(v12 + 56))(v8, 1, 1, v10);
    sub_1AAF8DC64();
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      sub_1AAD587A8(v8, &qword_1EB423568, MEMORY[0x1E697E648]);
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v14 = *(v11 - 8);
    (*(v14 + 16))(v8, Value, v11);
    (*(v14 + 56))(v8, 0, 1, v11);
    (*(v14 + 32))(a3, v8, v11);
  }

  sub_1AAD57ACC();
  sub_1AAF8DC84();
  v15 = v19;
  sub_1AAD59064(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = a1;
  *(inited + 72) = 0;
  v19 = v15;
  sub_1AADC85B8(inited);
  return sub_1AAF8DC94();
}

uint64_t sub_1AAD4DFD4@<X0>(int a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  result = a2(0);
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a3, &v5, result);
  }

  __break(1u);
  return result;
}

void sub_1AAD4E078(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  sub_1AAD585B8(0, &qword_1EB423698, &qword_1EB423530, type metadata accessor for Resolved3DContentList, MEMORY[0x1E697DDB8]);
  if (*(*(v3 - 8) + 64) == 4)
  {
    (*(*(v3 - 8) + 16))(a2, &v4, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAD4E150(char a1, float a2)
{
  sub_1AAD59064(0, &qword_1ED9AD948, &type metadata for PrimitiveAxisTick, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(*Value + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v27 = MEMORY[0x1E69E7CC0];

  result = sub_1AAD410D0(0, v6, 0);
  v9 = 0;
  v7 = v27;
  v10 = 32;
  while (v9 < *(v5 + 16))
  {
    v11 = *(v5 + v10);
    v12 = *(v5 + v10 + 16);
    v13 = *(v5 + v10 + 48);
    v28[2] = *(v5 + v10 + 32);
    v28[3] = v13;
    v28[0] = v11;
    v28[1] = v12;
    v14 = *(v5 + v10 + 64);
    v15 = *(v5 + v10 + 80);
    v16 = *(v5 + v10 + 112);
    v28[6] = *(v5 + v10 + 96);
    v28[7] = v16;
    v28[4] = v14;
    v28[5] = v15;
    sub_1AAD57B20(v28, v25);
    sub_1AAD4E4E0(v28, a1, v25, a2);
    result = sub_1AAD57B7C(v28);
    v27 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1AAD410D0((v17 > 1), v18 + 1, 1);
      v7 = v27;
    }

    ++v9;
    *(v7 + 16) = v18 + 1;
    v19 = (v7 + 112 * v18);
    v20 = v25[0];
    v21 = v25[2];
    v19[3] = v25[1];
    v19[4] = v21;
    v19[2] = v20;
    v22 = v25[3];
    v23 = v25[4];
    v24 = v26[0];
    *(v19 + 122) = *(v26 + 10);
    v19[6] = v23;
    v19[7] = v24;
    v19[5] = v22;
    v10 += 128;
    if (v6 == v9)
    {

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD4E31C(unsigned __int8 a1, float a2)
{
  sub_1AAD59064(0, &qword_1ED9AD940, &type metadata for PrimitiveAxisLabel, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(*Value + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v23 = MEMORY[0x1E69E7CC0];

  v7 = sub_1AAD410D0(0, v5, 0);
  v8 = 0;
  v6 = v23;
  v9 = v4 + 32;
  while (v8 < *(v4 + 16))
  {
    sub_1AAD57CE8(v9, v20);
    sub_1AAD4E94C(v20, a1, v21, a2);
    v7 = sub_1AAD57D44(v20);
    v23 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      v7 = sub_1AAD410D0((v10 > 1), v11 + 1, 1);
      v6 = v23;
    }

    ++v8;
    *(v6 + 16) = v11 + 1;
    v12 = (v6 + 112 * v11);
    v13 = v21[0];
    v14 = v21[2];
    v12[3] = v21[1];
    v12[4] = v14;
    v12[2] = v13;
    v15 = v21[3];
    v16 = v21[4];
    v17 = v22[0];
    *(v12 + 122) = *(v22 + 10);
    v12[6] = v16;
    v12[7] = v17;
    v12[5] = v15;
    v9 += 264;
    if (v5 == v8)
    {

      return v6;
    }
  }

  __break(1u);
  sub_1AAD57D44(v7);

  __break(1u);
  return result;
}

void sub_1AAD4E4E0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  Value = AGGraphGetValue();
  v45 = *(Value + 8);
  v46 = *Value;
  v10 = *(Value + 32);
  v9 = *(Value + 36);
  v11 = *(Value + 40);
  v12 = *(Value + 48);
  v57 = *(Value + 72);
  v54 = *(Value + 76);
  v13 = *(Value + 80);
  v14 = *(Value + 88);
  v51 = *(Value + 112);
  v49 = *(Value + 116);
  sub_1AAD57D98();
  v53 = *AGGraphGetValue();
  v15 = AGGraphGetValue();
  if (*(a1 + 80))
  {
    v16 = *(a1 + 56);
  }

  else
  {
    v16 = 1.0;
  }

  v17 = *(a1 + 8);
  v18 = a4 + 0.015;
  v47 = *v15;
  v48 = v16;
  if (!a2)
  {
LABEL_9:
    v21 = sub_1AAF904F4();

    *v19.i32 = v54;
    *v20.i32 = v57;
    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    v51 = v57;
    v49 = v54;
    v57 = *&v10;
    v54 = *&v9;
    goto LABEL_9;
  }

  v19.i32[0] = v9;
  v20.i32[0] = v10;
LABEL_10:
  v18 = v18 / 1.4142;
LABEL_11:
  if (a2)
  {
    if (a2 == 1)
    {
      v22 = *v19.i32 + v18;
      if (v53.n128_i32[0] < 0)
      {
        v22 = *v20.i32 - v18;
      }

      v55 = v22;
      if (v53.n128_i32[2] >= 0)
      {
        v23 = v51 - v18;
      }

      else
      {
        v23 = v49 + v18;
      }

      v24 = v12 + v11 * v17;
      v52 = v24;
      v25 = sub_1AAF904F4();
      *&v26 = v55;
      if (v25)
      {
        *&v26 = v52;
      }

      v50 = v26;
      v58 = v52;
      goto LABEL_34;
    }

    *&v19.i32[1] = v51 - v18;
    *&v20.i32[1] = v49 + v18;
    v56 = vbsl_s8(vcltz_s32(v53.n128_u64[0]), v19, v20);
    v31 = v14 + v13 * v17;
    v59 = v31;
    v32 = sub_1AAF904F4();
    v33 = *v56.i32;
    v30 = LODWORD(v59);
    if (v32)
    {
      v33 = v59;
    }

    v50 = LODWORD(v33);
    v27 = 1;
  }

  else
  {
    v27 = 0;
    *v28.i32 = *v19.i32 + v18;
    *v29.i32 = *v20.i32 - v18;
    *&v29.i32[1] = v49;
    *&v28.i32[1] = v51;
    v56 = vbsl_s8(vcltz_s32(*&vextq_s8(v53, v53, 4uLL)), v29, v28);
    *v28.i32 = v45 + v46 * v17;
    v50 = v28.i32[0];
    v30 = v28.i32[0];
  }

  v58 = *&v30;
  v34 = sub_1AAF904F4() & 1;
  v35 = v56;
  v36 = v58;
  if (!v34)
  {
    v36 = *v56.i32;
    if (v27)
    {
      v37 = sub_1AAF904F4();
      v36 = *v56.i32;
      if ((v37 & 1) == 0)
      {
        v36 = *&v56.i32[1];
      }

      v35 = v56;
    }
  }

  v52 = v36;
  v23 = *&v35.i32[1];
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_38;
    }

    v55 = *v35.i32;
  }

  else
  {
    v55 = *v35.i32;
  }

LABEL_34:
  v38 = sub_1AAF904F4();
  v39 = v58;
  if ((v38 & 1) == 0)
  {
    v40 = sub_1AAF904F4();
    v39 = v55;
    if ((v40 & 1) == 0)
    {
      v39 = v23;
    }
  }

  v58 = v39;
  if (a2)
  {
    goto LABEL_39;
  }

LABEL_38:
  v41 = sub_1AAF904F4();
  v42 = 0uLL;
  if (v41)
  {
LABEL_39:
    *&v42 = sub_1AAD76A78(a2, v53);
  }

  *&v43 = __PAIR64__(LODWORD(v52), v50);
  *(&v43 + 1) = LODWORD(v58);
  *&v44 = v47 * v48;
  DWORD1(v44) = 1022739087;
  *(&v44 + 2) = v47 * v48;
  HIDWORD(v44) = 0;
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 104) = -256;
  *a3 = v17;
  *(a3 + 8) = 0;
  *(a3 + 16) = v44;
  *(a3 + 32) = v43;
  *(a3 + 48) = v42;
}

__n128 sub_1AAD4E94C@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  Value = AGGraphGetValue();
  v45 = *(Value + 8);
  v46 = *Value;
  v10 = *(Value + 32);
  v9 = *(Value + 36);
  v12 = *(Value + 40);
  v11 = *(Value + 48);
  v58 = *(Value + 72);
  v54 = *(Value + 76);
  v13 = *(Value + 80);
  v14 = *(Value + 88);
  v50 = *(Value + 112);
  v48 = *(Value + 116);
  sub_1AAD57D98();
  v52 = *AGGraphGetValue();
  v15 = AGGraphGetValue();
  v16 = *(a1 + 8);
  v17 = a4 + 0.015;
  v47 = *v15;
  if (!a2)
  {
LABEL_6:
    v20 = sub_1AAF904F4();

    *v18.i32 = v54;
    *v19.i32 = v58;
    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v50 = v58;
    v48 = v54;
    v58 = *&v10;
    v54 = *&v9;
    goto LABEL_6;
  }

  v18.i32[0] = v9;
  v19.i32[0] = v10;
LABEL_7:
  v17 = v17 / 1.4142;
LABEL_8:
  if (a2)
  {
    if (a2 == 1)
    {
      v21 = *v18.i32 + v17;
      if (v52.n128_i32[0] < 0)
      {
        v21 = *v19.i32 - v17;
      }

      v55 = v21;
      if (v52.n128_i32[2] >= 0)
      {
        v22 = v50 - v17;
      }

      else
      {
        v22 = v48 + v17;
      }

      v23 = v11 + v12 * v16;
      v51 = v23;
      v24 = sub_1AAF904F4();
      *&v25 = v55;
      if (v24)
      {
        *&v25 = v51;
      }

      v49 = v25;
      v59 = v51;
      goto LABEL_27;
    }

    *&v18.i32[1] = v50 - v17;
    *&v19.i32[1] = v48 + v17;
    v56 = vbsl_s8(vcltz_s32(v52.n128_u64[0]), v18, v19);
    v30 = v14 + v13 * v16;
    v60 = v30;
    v31 = sub_1AAF904F4();
    v32 = *v56.i32;
    v29 = LODWORD(v60);
    if (v31)
    {
      v32 = v60;
    }

    v49 = LODWORD(v32);
    v26 = 1;
  }

  else
  {
    v26 = 0;
    *v27.i32 = *v18.i32 + v17;
    *v28.i32 = *v19.i32 - v17;
    *&v28.i32[1] = v48;
    *&v27.i32[1] = v50;
    v56 = vbsl_s8(vcltz_s32(*&vextq_s8(v52, v52, 4uLL)), v28, v27);
    *v27.i32 = v45 + v46 * v16;
    v49 = v27.i32[0];
    v29 = v27.i32[0];
  }

  v59 = *&v29;
  v33 = sub_1AAF904F4() & 1;
  v35 = v56;
  v34 = v59;
  if (!v33)
  {
    v34 = *v56.i32;
    if (v26)
    {
      v36 = sub_1AAF904F4();
      v35 = v56;
      v34 = *&v56.i32[1];
      if (v36)
      {
        v34 = *v56.i32;
      }
    }
  }

  v22 = *&v35.i32[1];
  v55 = *v35.i32;
  v51 = v34;
  if (a2 > 1u)
  {
    v39 = *(a1 + 256);
    goto LABEL_35;
  }

LABEL_27:
  if ((sub_1AAF904F4() & 1) == 0)
  {
    v37 = sub_1AAF904F4();
    v38 = v55;
    if ((v37 & 1) == 0)
    {
      v38 = v22;
    }

    v59 = v38;
  }

  v39 = *(a1 + 256);
  if (a2)
  {

LABEL_36:
    v41.n128_f64[0] = sub_1AAD76A78(a2, v52);
    goto LABEL_37;
  }

LABEL_35:
  v40 = sub_1AAF904F4();

  v41 = 0uLL;
  if (v40)
  {
    goto LABEL_36;
  }

LABEL_37:
  v57 = v41;
  *&v42 = __PAIR64__(LODWORD(v51), v49);
  *(&v42 + 1) = LODWORD(v59);
  v61 = v42;
  *&v43 = v47 * 0.0;
  DWORD1(v43) = 1022739087;
  *(&v43 + 2) = v47 * 0.0;
  HIDWORD(v43) = 0;
  v53 = v43;
  sub_1AAD57FE4(a1 + 208, a3 + 64, &qword_1EB4235D8, &type metadata for AnyPrimitiveFormat);
  *a3 = v16;
  *(a3 + 8) = v39;
  result = v57;
  *(a3 + 16) = v53;
  *(a3 + 32) = v61;
  *(a3 + 48) = v57;
  return result;
}

uint64_t sub_1AAD4EDD0()
{
  v96 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v22 = *(v1 - 8);
  v2 = v22;
  MEMORY[0x1EEE9AC00](v1);
  v26 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  v23 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v21[3] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v24 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v22 + 8);
  v14(v6, v1);
  v22 = v27[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v26;
  v12(v26, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v24;
  *&v10[v8[8]] = v22;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  memcpy(v95, v19, 0x149uLL);
  sub_1AAD5891C(v95, v27);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AAD58978(v95);
  v27[0] = MEMORY[0x1E69E7CC0];
  memset(&v27[1], 0, 24);
  v28 = xmmword_1AAF92AC0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = xmmword_1AAF92AC0;
  v34 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = xmmword_1AAF92AC0;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = xmmword_1AAF92AC0;
  v44 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = xmmword_1AAF92AC0;
  v49 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v53 = xmmword_1AAF92AC0;
  v54 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v58 = xmmword_1AAF92AC0;
  v59 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v63 = xmmword_1AAF92AC0;
  v64 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v68 = xmmword_1AAF92AC0;
  v69 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v73 = xmmword_1AAF92AC0;
  v74 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 1;
  memset(v94, 0, sizeof(v94));
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  AGGraphSetOutputValue();
  sub_1AAD58308(v27);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD4F2B4()
{
  v33[101] = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v25 = *(v1 - 8);
  v2 = v25;
  MEMORY[0x1EEE9AC00](v1);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v26 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v24[1] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v27 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v25 + 8);
  v14(v6, v1);
  v25 = v33[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v29;
  v12(v29, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v27;
  *&v10[v8[8]] = v25;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  sub_1AACB3EE4(v19, v30);
  v20 = v31;
  v21 = v32;
  v22 = sub_1AACBB42C(v30, v31);
  sub_1AAE269B4(v22, v10, v20, v21);
  sub_1AACE3E38(v30);
  AGGraphSetOutputValue();
  sub_1AAD58308(v33);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD4F608()
{
  v102 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v28 = *(v1 - 8);
  v2 = v28;
  MEMORY[0x1EEE9AC00](v1);
  v32 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v29 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v27[3] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v30 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v28 + 8);
  v14(v6, v1);
  v28 = v33[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v32;
  v12(v32, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v30;
  *&v10[v8[8]] = v28;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  v20 = v19[3];
  v22 = *v19;
  v21 = v19[1];
  v101[2] = v19[2];
  v101[3] = v20;
  v101[0] = v22;
  v101[1] = v21;
  v23 = v19[7];
  v25 = v19[4];
  v24 = v19[5];
  v101[6] = v19[6];
  v101[7] = v23;
  v101[4] = v25;
  v101[5] = v24;
  sub_1AAD5886C(v101, v33);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AAD588C8(v101);
  v33[0] = MEMORY[0x1E69E7CC0];
  memset(&v33[1], 0, 24);
  v34 = xmmword_1AAF92AC0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = xmmword_1AAF92AC0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = xmmword_1AAF92AC0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = xmmword_1AAF92AC0;
  v50 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = xmmword_1AAF92AC0;
  v55 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v59 = xmmword_1AAF92AC0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v64 = xmmword_1AAF92AC0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = xmmword_1AAF92AC0;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v74 = xmmword_1AAF92AC0;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = xmmword_1AAF92AC0;
  v80 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 1;
  memset(v100, 0, sizeof(v100));
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  AGGraphSetOutputValue();
  sub_1AAD58308(v33);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD4FB00()
{
  v103 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v28 = *(v1 - 8);
  v2 = v28;
  MEMORY[0x1EEE9AC00](v1);
  v32 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v29 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v27[3] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v30 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v28 + 8);
  v14(v6, v1);
  v28 = v33[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v32;
  v12(v32, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v30;
  *&v10[v8[8]] = v28;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  v101[0] = *v19;
  v20 = *(v19 + 64);
  v22 = *(v19 + 16);
  v21 = *(v19 + 32);
  v101[3] = *(v19 + 48);
  v101[4] = v20;
  v101[1] = v22;
  v101[2] = v21;
  v24 = *(v19 + 96);
  v23 = *(v19 + 112);
  v25 = *(v19 + 80);
  v102 = *(v19 + 128);
  v101[6] = v24;
  v101[7] = v23;
  v101[5] = v25;
  sub_1AAD58D3C(v101, v33);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AAD58D98(v101);
  v33[0] = MEMORY[0x1E69E7CC0];
  memset(&v33[1], 0, 24);
  v34 = xmmword_1AAF92AC0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = xmmword_1AAF92AC0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = xmmword_1AAF92AC0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = xmmword_1AAF92AC0;
  v50 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = xmmword_1AAF92AC0;
  v55 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v59 = xmmword_1AAF92AC0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v64 = xmmword_1AAF92AC0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = xmmword_1AAF92AC0;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v74 = xmmword_1AAF92AC0;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = xmmword_1AAF92AC0;
  v80 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 1;
  memset(v100, 0, sizeof(v100));
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  AGGraphSetOutputValue();
  sub_1AAD58308(v33);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD50008()
{
  v102 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v28 = *(v1 - 8);
  v2 = v28;
  MEMORY[0x1EEE9AC00](v1);
  v32 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v29 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v27[3] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v30 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v28 + 8);
  v14(v6, v1);
  v28 = v33[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v32;
  v12(v32, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v30;
  *&v10[v8[8]] = v28;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  v20 = v19[3];
  v22 = *v19;
  v21 = v19[1];
  v101[2] = v19[2];
  v101[3] = v20;
  v101[0] = v22;
  v101[1] = v21;
  v23 = v19[7];
  v25 = v19[4];
  v24 = v19[5];
  v101[6] = v19[6];
  v101[7] = v23;
  v101[4] = v25;
  v101[5] = v24;
  sub_1AAD58B2C(v101, v33);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AAD58B88(v101);
  v33[0] = MEMORY[0x1E69E7CC0];
  memset(&v33[1], 0, 24);
  v34 = xmmword_1AAF92AC0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = xmmword_1AAF92AC0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = xmmword_1AAF92AC0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = xmmword_1AAF92AC0;
  v50 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = xmmword_1AAF92AC0;
  v55 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v59 = xmmword_1AAF92AC0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v64 = xmmword_1AAF92AC0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = xmmword_1AAF92AC0;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v74 = xmmword_1AAF92AC0;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = xmmword_1AAF92AC0;
  v80 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 1;
  memset(v100, 0, sizeof(v100));
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  AGGraphSetOutputValue();
  sub_1AAD58308(v33);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD50500()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v22 = *(v1 - 8);
  v2 = v22;
  MEMORY[0x1EEE9AC00](v1);
  v26 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = type metadata accessor for _ChartContentCollectInputs(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  v23 = *(v0 + 4);
  Value = AGGraphGetValue();
  v12 = *(v2 + 16);
  v12(v10, Value, v1);
  v21[3] = *(v0 + 8);
  type metadata accessor for ChartContainerValues();
  v24 = *AGGraphGetValue();

  v13 = AGGraphGetValue();
  v12(v6, v13, v1);
  sub_1AAD58818();
  sub_1AAF8E144();
  v14 = *(v22 + 8);
  v14(v6, v1);
  v22 = v28[0];
  v15 = AGGraphGetValue();
  sub_1AAD582A0(v15, &v10[v8[9]], type metadata accessor for ChartContainerValues);
  v16 = AGGraphGetValue();
  v17 = v26;
  v12(v26, v16, v1);
  v18 = v17;
  LOBYTE(v17) = sub_1AAF8E0E4();
  v14(v18, v1);
  *&v10[v8[7]] = v24;
  *&v10[v8[8]] = v22;
  v10[v8[10]] = v17 & 1;
  v19 = AGGraphGetValue();
  memcpy(v29, v19, sizeof(v29));
  memcpy(v27, v19, sizeof(v27));
  sub_1AAD58C8C(v29, v28);
  static BarMark._collectChartContent(content:inputs:)(v27, v10, v28);
  memcpy(v30, v27, sizeof(v30));
  sub_1AAD58CE8(v30);
  AGGraphSetOutputValue();
  sub_1AAD58308(v28);
  return sub_1AAD58F04(v10, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD50878(uint64_t a1, void (*a2)(_BYTE *, void *), void (*a3)(void *__return_ptr, _BYTE *, char *), void (*a4)(_BYTE *))
{
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v5 = sub_1AAF8E134();
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x1EEE9AC00](v5);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for _ChartContentCollectInputs(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v4;
  v27 = *(v4 + 4);
  Value = AGGraphGetValue();
  v16 = *(v6 + 16);
  v16(v14, Value, v5);
  v25[1] = *(v4 + 8);
  type metadata accessor for ChartContainerValues();
  v28 = *AGGraphGetValue();

  v17 = AGGraphGetValue();
  v16(v10, v17, v5);
  sub_1AAD58818();
  sub_1AAF8E144();
  v18 = *(v26 + 8);
  v18(v10, v5);
  v26 = v36[0];
  v19 = AGGraphGetValue();
  sub_1AAD582A0(v19, &v14[v12[9]], type metadata accessor for ChartContainerValues);
  v20 = AGGraphGetValue();
  v21 = v30;
  v16(v30, v20, v5);
  v22 = v21;
  LOBYTE(v21) = sub_1AAF8E0E4();
  v18(v22, v5);
  *&v14[v12[7]] = v28;
  *&v14[v12[8]] = v26;
  v14[v12[10]] = v21 & 1;
  v23 = AGGraphGetValue();
  memcpy(v37, v23, 0x131uLL);
  memcpy(v35, v23, 0x131uLL);
  v32(v37, v36);
  v33(v36, v35, v14);
  memcpy(v38, v35, 0x131uLL);
  v34(v38);
  AGGraphSetOutputValue();
  sub_1AAD58308(v36);
  return sub_1AAD58F04(v14, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD50C0C(uint64_t a1, void (*a2)(_BYTE *, void *), void (*a3)(void *__return_ptr, _BYTE *, char *), void (*a4)(_BYTE *))
{
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v5 = sub_1AAF8E134();
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x1EEE9AC00](v5);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for _ChartContentCollectInputs(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v4;
  v27 = *(v4 + 4);
  Value = AGGraphGetValue();
  v16 = *(v6 + 16);
  v16(v14, Value, v5);
  v25[3] = *(v4 + 8);
  type metadata accessor for ChartContainerValues();
  v28 = *AGGraphGetValue();

  v17 = AGGraphGetValue();
  v16(v10, v17, v5);
  sub_1AAD58818();
  sub_1AAF8E144();
  v18 = *(v26 + 8);
  v18(v10, v5);
  v26 = v36[0];
  v19 = AGGraphGetValue();
  sub_1AAD582A0(v19, &v14[v12[9]], type metadata accessor for ChartContainerValues);
  v20 = AGGraphGetValue();
  v21 = v30;
  v16(v30, v20, v5);
  v22 = v21;
  LOBYTE(v21) = sub_1AAF8E0E4();
  v18(v22, v5);
  *&v14[v12[7]] = v28;
  *&v14[v12[8]] = v26;
  v14[v12[10]] = v21 & 1;
  v23 = AGGraphGetValue();
  memcpy(v37, v23, sizeof(v37));
  memcpy(v35, v23, sizeof(v35));
  v32(v37, v36);
  v33(v36, v35, v14);
  memcpy(v38, v35, sizeof(v38));
  v34(v38);
  AGGraphSetOutputValue();
  sub_1AAD58308(v36);
  return sub_1AAD58F04(v14, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAD51704()
{
  sub_1AAD59064(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();

  v1 = sub_1AAECC6D0(v0);

  if (v1)
  {
    type metadata accessor for MakeState(0);
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t sub_1AAD518A4(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v9[0] = v6;
  sub_1AAD58818();

  sub_1AAF8E154();
  AGGraphSetOutputValue();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AAD521C0()
{
  v43 = *MEMORY[0x1E69E9840];
  sub_1AAD59064(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v1 = *(Value + 48);
  v3 = *(Value + 64);
  v39 = *(Value + 16);
  v4 = *Value;
  v42 = v3;
  v40 = v2;
  v41 = v1;
  v38 = v4;
  if (*(&v39 + 1))
  {
    v20 = v38;
    v6 = *(&v41 + 1);
    v5 = v42;
    v7 = v40;
    v8 = v41;
    v9 = v39;
    sub_1AAD57FE4(&v38, &v23, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    sub_1AADC7FB4(v7, *(&v7 + 1), v8, v6, v5, &v23);
    v10 = v24;
    *v22 = *v25;
    *&v22[3] = *&v25[3];
    v18 = v26;
    v19 = v23;
    v11 = v27;
    *v21 = *v28;
    *&v21[3] = *&v28[3];
    v12 = v29;
    v13 = v30;
    v14 = v31;
    sub_1AAD04750(v20, *(&v20 + 1), v9 & 1);

    sub_1AAD0E818(v7, *(&v7 + 1), v8);
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v10 = 1;
    LOBYTE(v23) = 1;
    LOBYTE(v34) = 1;
    v15 = 0uLL;
    v14 = 512;
    v13 = MEMORY[0x1E69E7CD0];
    v12 = MEMORY[0x1E69E7CC0];
    v11 = 1;
    v16 = 0uLL;
  }

  v34 = v16;
  v35[0] = v10;
  *&v35[1] = *v22;
  *&v35[4] = *&v22[3];
  *&v35[8] = v15;
  v35[24] = v11;
  *&v35[25] = *v21;
  *&v35[28] = *&v21[3];
  *&v36 = v12;
  *(&v36 + 1) = v13;
  v37 = v14;
  AGGraphSetOutputValue();
  v32[2] = *&v35[16];
  v32[3] = v36;
  v33 = v37;
  v32[0] = v34;
  v32[1] = *v35;
  return sub_1AAD59210(v32);
}

uint64_t sub_1AAD523EC(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD58FE8();
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD52560(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD526C8(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v10, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD59064(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD52860(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v10, v5);

  (*(v3 + 8))(v5, v2);
  v14 = v10[2];
  v15 = v10[3];
  v16 = v11;
  v12 = v10[0];
  v13 = v10[1];
  sub_1AAD59064(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  v17[2] = v14;
  v17[3] = v15;
  v18 = v16;
  v17[0] = v12;
  v17[1] = v13;
  return sub_1AAD57BD0(v17, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
}

uint64_t sub_1AAD52A50(uint64_t a1)
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v10, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD59064(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return sub_1AAD57BD0(v10, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
}

uint64_t sub_1AAD52BF0()
{

  return sub_1AAD52EB4();
}

uint64_t sub_1AAD52C50(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(&v9, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD57A68(0, &qword_1EB423508, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD52DF4()
{

  return sub_1AAD52EB4();
}

uint64_t sub_1AAD52E54()
{

  return sub_1AAD52EB4();
}

uint64_t sub_1AAD52EB4()
{
  v41 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v34[0] = *Value;
  v1 = Value[4];
  v3 = Value[1];
  v2 = Value[2];
  v34[3] = Value[3];
  v34[4] = v1;
  v34[1] = v3;
  v34[2] = v2;
  v4 = Value[8];
  v6 = Value[5];
  v5 = Value[6];
  v34[7] = Value[7];
  v34[8] = v4;
  v34[5] = v6;
  v34[6] = v5;
  sub_1AAD5835C(v34, v39);
  sub_1AADC7D9C(v34, v35);
  v7 = AGGraphGetValue();
  v8 = v7[16];
  v33[6] = v7[15];
  v33[7] = v8;
  v33[8] = v7[17];
  v9 = v7[12];
  v33[2] = v7[11];
  v33[3] = v9;
  v10 = v7[14];
  v33[4] = v7[13];
  v33[5] = v10;
  v11 = v7[10];
  v33[0] = v7[9];
  v33[1] = v11;
  sub_1AAD5835C(v33, v39);
  sub_1AADC7D9C(v33, v36 + 8);
  v12 = AGGraphGetValue();
  v13 = v12[25];
  v32[6] = v12[24];
  v32[7] = v13;
  v32[8] = v12[26];
  v14 = v12[21];
  v32[2] = v12[20];
  v32[3] = v14;
  v15 = v12[23];
  v32[4] = v12[22];
  v32[5] = v15;
  v16 = v12[19];
  v32[0] = v12[18];
  v32[1] = v16;
  sub_1AAD5835C(v32, v39);
  sub_1AADC7D9C(v32, v37);
  v28 = v37[1];
  v29 = v37[2];
  v30 = v37[3];
  v31 = v38;
  v24 = v36[2];
  v25 = v36[3];
  v26 = v36[4];
  v27 = v37[0];
  v20 = v35[2];
  v21 = v35[3];
  v22 = v36[0];
  v23 = v36[1];
  v18 = v35[0];
  v19 = v35[1];
  AGGraphSetOutputValue();
  v39[10] = v28;
  v39[11] = v29;
  v39[12] = v30;
  v40 = v31;
  v39[6] = v24;
  v39[7] = v25;
  v39[8] = v26;
  v39[9] = v27;
  v39[2] = v20;
  v39[3] = v21;
  v39[4] = v22;
  v39[5] = v23;
  v39[0] = v18;
  v39[1] = v19;
  return sub_1AAD590B4(v39);
}

uint64_t sub_1AAD5309C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6((&v9 + 4), v5);

  (*(v3 + 8))(v5, v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD53204(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  AGGraphSetOutputValue();
  return sub_1AAD5930C(v9);
}

uint64_t sub_1AAD5336C(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8DC74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD4DCB4(*a1, *(a1 + 8), v5);
  AGGraphSetOutputValue();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AAD53474()
{
  v1[5] = *MEMORY[0x1E69E9840];
  sub_1AAD9F750(v1);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD534FC(char *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1AAD9F494(*a1, v2);
  AGGraphSetOutputValue();
  return sub_1AAD58120(v2);
}

uint64_t sub_1AAD53578()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1AADA144C(v1);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD535F4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v3 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v3;
  v6 = *(Value + 32);
  v1(&v7, v5);

  v5[0] = v7;
  sub_1AAD59968(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD536E0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v8 = *(Value + 64);
  v9 = *(Value + 80);
  v10 = *(Value + 96);
  v11 = *(Value + 112);
  v4 = *Value;
  v5 = *(Value + 16);
  v6 = *(Value + 32);
  v7 = *(Value + 48);
  v1(v12, &v4);

  v4 = v12[0];
  v5 = v12[1];
  *&v6 = v13;
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD537D4(uint64_t a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  sub_1AAD58E9C(0, &qword_1ED9B2AB0, sub_1AACB62F8);

  v3 = *AGGraphGetValue();

  v1(v4, &v3);

  AGGraphSetOutputValue();
}

uint64_t sub_1AAD538EC(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD58E9C(0, &qword_1ED9B2AB0, sub_1AACB62F8);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD53A8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1AAD76B94(v2, v1);
  swift_unknownObjectRelease();

  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD53B14(unsigned __int8 *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = a1[20];
  sub_1AAD59064(0, &qword_1ED9AD948, &type metadata for PrimitiveAxisTick, MEMORY[0x1E69E62F8]);
  v29 = v3;
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(*Value + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = MEMORY[0x1E69E7CC0];

    sub_1AAD410D0(0, v8, 0);
    v10 = 0;
    v9 = v30;
    v11 = 32;
    v28 = v1 | (v2 << 32);
    v27 = v4 | (v5 << 32);
    do
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
      }

      v12 = *(v7 + v11);
      v13 = *(v7 + v11 + 16);
      v14 = *(v7 + v11 + 48);
      v33[2] = *(v7 + v11 + 32);
      v33[3] = v14;
      v33[0] = v12;
      v33[1] = v13;
      v15 = *(v7 + v11 + 64);
      v16 = *(v7 + v11 + 80);
      v17 = *(v7 + v11 + 112);
      v33[6] = *(v7 + v11 + 96);
      v33[7] = v17;
      v33[4] = v15;
      v33[5] = v16;
      sub_1AAD57B20(v33, v31);
      v2 = v2 & 0xFFFFFF00 | v28;
      v5 = v5 & 0xFFFFFF0000000000 | v27;
      sub_1AAD75874(v33, v2, v29, v5, v31);
      sub_1AAD57B7C(v33);
      v19 = *(v30 + 16);
      v18 = *(v30 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AAD410D0((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v30 + 16) = v19 + 1;
      v20 = (v30 + 112 * v19);
      v21 = v31[0];
      v22 = v31[2];
      v20[3] = v31[1];
      v20[4] = v22;
      v20[2] = v21;
      v23 = v31[3];
      v24 = v31[4];
      v25 = v32[0];
      *(v20 + 122) = *(v32 + 10);
      v20[6] = v24;
      v20[7] = v25;
      v20[5] = v23;
      v11 += 128;
    }

    while (v8 != v10);
  }

  *&v31[0] = v9;
  sub_1AAD59064(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD53D78(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_1AAD57A68(0, &qword_1EB4235E8, MEMORY[0x1E697A188], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v31 = *(a1 + 4);
  sub_1AAD58064(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
  Value = AGGraphGetValue();
  v6 = *Value + 56;
  v7 = 1 << *(*Value + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*Value + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v9 &= v9 - 1;
    swift_unknownObjectRetain_n();
    v13 = *AGGraphGetValue();
    sub_1AAF8CC04();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      sub_1AAF8D0A4();
      v14 = sub_1AAF8CDC4();
      if (!(*(*(v14 - 8) + 48))(v4, 1, v14))
      {
        v29 = sub_1AAF8CDA4();
        sub_1AAD587A8(v4, &qword_1EB4235E8, MEMORY[0x1E697A188]);
        sub_1AAF8CD14();
        v27[0] = v16;
        v27[1] = v15;
        *v15.i32 = v13 * 2.5;
        v30 = v15;
        sub_1AAF8CBE4();
        v28 = v17;
        sub_1AAF8CBE4();
        v19 = __PAIR64__(v18, v28.u32[0]);
        v20 = vdupq_lane_s32(*v30.i8, 0);
        v30 = v20;
        *v20.i8 = vmul_f32(vmul_f32(*v20.i8, v19), 0xBF333333BF000000);
        v28 = v20;
        sub_1AAF8D094();
        v21 = sub_1AAF8CC64();
        v22[2] = v28;
        v21(v32, 0);
        v23 = v30;
        v23.i32[3] = 0;
        v30 = v23;
        v24 = sub_1AAF8CC64();
        *v25 = v30;
        v24(v32, 0);

        goto LABEL_14;
      }

      swift_unknownObjectRelease_n();
      sub_1AAD587A8(v4, &qword_1EB4235E8, MEMORY[0x1E697A188]);
      v11 = v12;
    }

    else
    {
LABEL_14:
      swift_unknownObjectRelease_n();
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD54194()
{
  swift_unknownObjectRetain();
  sub_1AADA53AC();
  swift_unknownObjectRelease();
  sub_1AAD58064(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD5426C()
{
  v13[3] = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8E134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  sub_1AACD7304(*Value, v6, v7);

  v8 = AGGraphGetValue();
  (*(v1 + 16))(v3, v8, v0);
  v9 = sub_1AAF8E974();
  v11 = v10;
  sub_1AAD04750(v5, v6, v7);

  (*(v1 + 8))(v3, v0);
  v13[1] = v9;
  v13[2] = v11;
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD5442C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  sub_1AAD59064(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  sub_1AAD57FE4(Value, &v4, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v1(&v7, &v4);

  sub_1AAD57BD0(&v4, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v4 = v7;
  v5 = v8;
  v6 = v9;
  AGGraphSetOutputValue();
  sub_1AAD04750(v4, *(&v4 + 1), v5);
}

uint64_t sub_1AAD5455C()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1AAD58064(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  swift_unknownObjectRetain_n();
  AGGraphGetValue();
  sub_1AAF8D094();
  sub_1AAF8CC54();
  swift_unknownObjectRelease();
  type metadata accessor for simd_quatf(0);
  swift_unknownObjectRetain();
  v3 = *AGGraphGetValue();
  v0 = sub_1AAF8CC64();
  *(v1 + 16) = v3;
  v0(v4, 0);
  swift_unknownObjectRelease_n();
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD546D0(char *a1)
{
  sub_1AADA584C(*a1);
  sub_1AAD58064(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD54780(uint64_t a1)
{
  v5[15] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  sub_1AAD59064(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  sub_1AAD57FE4(Value, v5, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v1(&v4, v5);

  sub_1AAD57BD0(v5, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v5[0] = v4;
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD54888(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = MEMORY[0x1E69E6720];
  sub_1AAD59064(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  sub_1AAD57FE4(Value, &v5, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v1(&v7, &v5);

  sub_1AAD57BD0(&v5, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
  v5 = v7;
  v6 = v8;
  sub_1AAD59064(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD549BC(uint64_t a1)
{
  v4[15] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  sub_1AAD59064(0, &qword_1EB423588, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E62F8]);

  v3 = *AGGraphGetValue();

  v1(v4, &v3);

  sub_1AAD59064(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return sub_1AAD57BD0(v4, &qword_1EB423590, &type metadata for AxisLabelConfiguration);
}

uint64_t sub_1AAD54AEC(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  v2 = *(AGGraphGetValue() + 16);

  sub_1AADAC7CC(v1, v2);
  swift_unknownObjectRelease();

  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD54BA4(unsigned __int8 *a1)
{
  sub_1AADA640C(*a1);
  sub_1AAD59064(0, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD54C40(unsigned __int8 *a1, uint64_t a2)
{

  return sub_1AAD54FFC(a1, a2, sub_1AAD4E150);
}

uint64_t sub_1AAD54CAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = swift_unknownObjectRetain();
  sub_1AADA6B4C(v4, v1, v2, v3);
  swift_unknownObjectRelease();
  sub_1AAD58064(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD54D8C()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8CAA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AAD59064(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v4 = *AGGraphGetValue();

  sub_1AAF8CA94();
  sub_1AAF0D208(v4, v3, v7);

  (*(v1 + 8))(v3, v0);
  AGGraphSetOutputValue();
  return sub_1AAD57C94(v7);
}

uint64_t sub_1AAD54EFC()
{
  sub_1AADA889C();
  sub_1AAD59064(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD54F90(unsigned __int8 *a1, uint64_t a2)
{

  return sub_1AAD54FFC(a1, a2, sub_1AAD4E31C);
}

uint64_t sub_1AAD54FFC(unsigned __int8 *a1, uint64_t a2, void (*a3)(unint64_t, void, void, float))
{
  a3(*a1 | (*(a1 + 1) << 32), *(a1 + 1), *(a1 + 4), *(a1 + 5));
  sub_1AAD59064(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD550AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1AADA40F8(v2, v1);
  swift_unknownObjectRelease();

  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD5514C(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8E7E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v10(v5);

  (*(v3 + 8))(v5, v2);
  AGGraphSetOutputValue();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AAD55344(uint64_t a1)
{
  v9[53] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  AGGraphSetOutputValue();
  return sub_1AAD10630(v9);
}

uint64_t sub_1AAD554B4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(&v9, v5);

  (*(v3 + 8))(v5, v2);
  sub_1AAD59064(0, &qword_1EB423578, &type metadata for Chart3DRay, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD5564C()
{
  sub_1AAD58064(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  vcgezq_f32(*AGGraphGetValue());
  sub_1AAD57D98();
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD55710(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 24);
  v8 = *(Value + 16);
  v9 = v4;
  v7 = v3;
  v1(&v6, &v7);

  sub_1AAD58064(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD55800(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6((&v9 + 7), v5);

  (*(v3 + 8))(v5, v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD55960(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for SphericalCoordinates3D(0);

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 24);
  v7 = *(Value + 16);
  v8 = v4;
  v6 = v3;
  v1(v9, &v6);

  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD55A1C(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD55B7C()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8D624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8CD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = Value[1];
  v11 = Value[2];
  v12 = Value[3];
  sub_1AAD59D08(0, &qword_1EB423608);
  sub_1AAF8ED94();
  sub_1AAF8FE34();
  sub_1AAF8CD54();
  sub_1AAF8D614();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A6E8], v0);
  sub_1AAF8CD64();
  sub_1AAD59064(0, &qword_1EB423610, &type metadata for AnyMaterial, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AAF92AB0;
  v23 = v4;
  v24 = MEMORY[0x1E697A178];
  v14 = sub_1AACB2508(&v19);
  (*(v5 + 16))(v14, v7, v4);
  v15 = v23;
  v16 = sub_1AACBB42C(&v19, v23);
  *(v13 + 56) = v15;
  v17 = sub_1AACB2508((v13 + 32));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  sub_1AACB634C(&v19);
  (*(v5 + 8))(v7, v4);
  v19 = __PAIR64__(v10, v9);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD55E88()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8E134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetValue();

  Value = AGGraphGetValue();
  (*(v1 + 16))(v3, Value, v0);
  sub_1AAF8ED54();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  (*(v1 + 8))(v3, v0);
  v14[2] = v6;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = v12;
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD56018()
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD560D4()
{
  AGGraphGetValue();
  AGGraphGetValue();
  AGGraphGetValue();
  sub_1AAD58174();
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD56198(uint64_t a1)
{
  v2[15] = *MEMORY[0x1E69E9840];
  sub_1AADC4FCC(*(a1 + 8), v2);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD56200(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  sub_1AAD58E9C(0, &qword_1ED9B2AC0, sub_1AACB62F8);

  *&v5[0] = *AGGraphGetValue();

  v1(v3, v5);

  sub_1AAD59064(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  v5[2] = v3[2];
  v5[3] = v3[3];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  return sub_1AAD57BD0(v5, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef);
}

uint64_t sub_1AAD56358(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(&v9, v5);

  (*(v3 + 8))(v5, v2);
  type metadata accessor for CGSize(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD564C4(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v6(v9, v5);

  (*(v3 + 8))(v5, v2);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD56634(unint64_t *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1AAE14960(*a1, v2);
  AGGraphSetOutputValue();
  return sub_1AAD58308(v2);
}

uint64_t sub_1AAD566B0(uint64_t *a1)
{
  v10[11] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *a1;
  Value = AGGraphGetValue();
  sub_1AAD582A0(Value, v4, type metadata accessor for ChartContainerValues);
  v7 = *v4;
  sub_1AAD59064(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v5;
  *(inited + 72) = 0;
  v10[0] = v7;

  sub_1AADC85B8(inited);
  *v4 = v10[0];

  AGGraphSetOutputValue();
  return sub_1AAD58F04(v4, type metadata accessor for ChartContainerValues);
}

uint64_t sub_1AAD56830()
{
  sub_1AAECD5FC();
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD5689C(unsigned int *a1, uint64_t a2)
{

  return sub_1AAD569AC(a1, a2, sub_1AAECC280, &qword_1ED9AD910, type metadata accessor for LayoutComputerContainer);
}

uint64_t sub_1AAD56924(unsigned int *a1, uint64_t a2)
{

  return sub_1AAD569AC(a1, a2, sub_1AAECBF08, &qword_1ED9B1E48, type metadata accessor for DisplayListProxyViewContainer);
}

uint64_t sub_1AAD569AC(unsigned int *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  a3(*a1);
  sub_1AAD57A68(0, a4, a5, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD56A4C()
{
  v21[3] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for AxisMarksResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v5 = *(*Value + 16);
  if (!v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = Value[2];
  v7 = *(v0 + 36);
  v8 = *Value + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v9 = *(v1 + 72);
  v21[1] = *Value;

  v21[0] = v6;

  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1AAD582A0(v8, v3, type metadata accessor for AxisMarksResult);
    v11 = *&v3[v7];

    sub_1AAD58F04(v3, type metadata accessor for AxisMarksResult);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (!*(v11 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_1AAD68E28(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (!*(v11 + 16))
      {
LABEL_3:

        if (v12)
        {
          goto LABEL_22;
        }

        goto LABEL_4;
      }
    }

    if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
    {
      goto LABEL_23;
    }

    swift_arrayInitWithCopy();

    if (v12)
    {
      v17 = *(v10 + 2);
      v18 = __OFADD__(v17, v12);
      v19 = v17 + v12;
      if (v18)
      {
        goto LABEL_24;
      }

      *(v10 + 2) = v19;
    }

LABEL_4:
    v8 += v9;
    --v5;
  }

  while (v5);

LABEL_20:
  v21[2] = v10;
  sub_1AAD59064(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD56D10(uint64_t a1)
{
  sub_1AAED89DC(*a1, *(a1 + 8));
  sub_1AAD58E9C(0, &qword_1ED9B2AC8, sub_1AACFDD38);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD56DB4(unsigned int *a1)
{
  sub_1AAEC9310(*a1 | (*(a1 + 4) << 32));
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD56E3C()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8E404();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  (*(v1 + 16))(v3, Value, v0);
  sub_1AAF8DFB4();
  LOBYTE(v13) = v5 & 1;
  v12[0] = v6 & 1;
  sub_1AAF8E3F4();
  v8 = v7;
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v13 = v8;
  v14 = v10;
  type metadata accessor for CGSize(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD56FA0()
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t sub_1AAD57050()
{
  v4[1] = *MEMORY[0x1E69E9840];
  sub_1AAD59558();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAED0870(v2);
  AGGraphSetOutputValue();
  return sub_1AAD27D3C(v2);
}

void sub_1AAD57118()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1AAEDC7E8();
  v1 = (v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  type metadata accessor for AGChartRendererContent(0);

  v7 = AGGraphGetValue();
  sub_1AAD582A0(v7, &v3[v1[7]], type metadata accessor for AGChartRendererContent);
  sub_1AAD58E9C(0, &qword_1ED9B2AC8, sub_1AACFDD38);
  v8 = *AGGraphGetValue();
  *&v3[v1[9]] = MEMORY[0x1E69E7CC0];
  *v3 = v5;
  *(v3 + 1) = v6;
  *&v3[v1[8]] = v8;

  v9[0] = sub_1AAEDBEB4();
  sub_1AACFDD8C();
  AGGraphSetOutputValue();
}

uint64_t sub_1AAD572C0()
{
  sub_1AAECE630();
  AGGraphSetOutputValue();
}

double sub_1AAD57330@<D0>(double *a1@<X8>)
{
  swift_getAtKeyPath();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD57368@<X0>(uint64_t a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_1AAD573A8@<Q0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1AAD573F8@<D0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1AAD57440@<Q0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_1AAD57494(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAF8E134();
    sub_1AAD59064(255, a3, a4, MEMORY[0x1E69E6720]);
    v7 = sub_1AAF8D1D4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAD5752C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD57494(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD5757C@<X0>(uint64_t a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_1AAD575C0@<D0>(double *a1@<X8>)
{
  swift_getAtKeyPath();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD575FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD57764(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1AAD5764C@<D0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_1AAD57690()
{
  if (!qword_1EB423510)
  {
    sub_1AAF8E134();
    sub_1AAD57A68(255, &qword_1EB423508, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423510);
    }
  }
}

float sub_1AAD57728@<S0>(float *a1@<X8>)
{
  swift_getAtKeyPath();
  result = v3;
  *a1 = v3;
  return result;
}

void sub_1AAD57764(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1AAF8E134();
    v3 = sub_1AAF8D1D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AAD577C4()
{
  result = qword_1EB423538;
  if (!qword_1EB423538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423538);
  }

  return result;
}

unint64_t sub_1AAD57820()
{
  result = qword_1EB423540;
  if (!qword_1EB423540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423540);
  }

  return result;
}

unint64_t sub_1AAD57874()
{
  result = qword_1EB423548;
  if (!qword_1EB423548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423548);
  }

  return result;
}

unint64_t sub_1AAD578D0()
{
  result = qword_1EB423550;
  if (!qword_1EB423550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423550);
  }

  return result;
}

unint64_t sub_1AAD57924()
{
  result = qword_1EB423558;
  if (!qword_1EB423558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423558);
  }

  return result;
}

unint64_t sub_1AAD57980()
{
  result = qword_1EB423560;
  if (!qword_1EB423560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423560);
  }

  return result;
}

__n128 sub_1AAD579E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AAD579F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD57A18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_1AAD57A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AAD57ACC()
{
  result = qword_1EB423570;
  if (!qword_1EB423570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423570);
  }

  return result;
}

uint64_t sub_1AAD57BD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAD59064(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAD57C40()
{
  result = qword_1EB4235A0;
  if (!qword_1EB4235A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235A0);
  }

  return result;
}

void sub_1AAD57D98()
{
  if (!qword_1EB4235A8)
  {
    sub_1AAD58064(255, &qword_1EB4235B0, sub_1AAD57E58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7450]);
    sub_1AAD57EAC();
    sub_1AAD57F3C();
    sub_1AAD57F90();
    v0 = sub_1AAF90784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4235A8);
    }
  }
}

unint64_t sub_1AAD57E58()
{
  result = qword_1EB4235B8;
  if (!qword_1EB4235B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235B8);
  }

  return result;
}

unint64_t sub_1AAD57EAC()
{
  result = qword_1EB4235C0;
  if (!qword_1EB4235C0)
  {
    sub_1AAD58064(255, &qword_1EB4235B0, sub_1AAD57E58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235C0);
  }

  return result;
}

unint64_t sub_1AAD57F3C()
{
  result = qword_1EB4235C8;
  if (!qword_1EB4235C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235C8);
  }

  return result;
}

unint64_t sub_1AAD57F90()
{
  result = qword_1EB4235D0;
  if (!qword_1EB4235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235D0);
  }

  return result;
}

uint64_t sub_1AAD57FE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAD59064(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAD58064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AAD580CC()
{
  result = qword_1EB4235F8;
  if (!qword_1EB4235F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4235F8);
  }

  return result;
}

void sub_1AAD58174()
{
  if (!qword_1EB423618)
  {
    sub_1AAD59968(255, &qword_1EB423620, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    sub_1AAD58204();
    v0 = type metadata accessor for XYZ();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423618);
    }
  }
}

unint64_t sub_1AAD58204()
{
  result = qword_1EB423628;
  if (!qword_1EB423628)
  {
    sub_1AAD59968(255, &qword_1EB423620, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423628);
  }

  return result;
}

uint64_t sub_1AAD582A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AAD583B8(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1AAD583E0()
{
  if (!qword_1EB423640)
  {
    sub_1AAF8DC74();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423640);
    }
  }
}

uint64_t sub_1AAD584A4(uint64_t a1, uint64_t a2)
{
  sub_1AAD583E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AAD585B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAD59968(255, a3, &type metadata for PointMark, &off_1EE75C008, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AAD58634(uint64_t a1, uint64_t a2)
{
  sub_1AAD59968(0, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD586C4(uint64_t a1)
{
  sub_1AAD59968(0, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD587A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAD57A68(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAD58818()
{
  result = qword_1ED9AF978;
  if (!qword_1ED9AF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF978);
  }

  return result;
}

void sub_1AAD58E9C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AAF8F3F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAD58F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAD58F64()
{
  if (!qword_1EB423658)
  {
    sub_1AAD59968(255, &qword_1EB423660, &type metadata for SurfacePlot, &off_1EE75C0C8, type metadata accessor for Resolved3DContentList);
    v0 = sub_1AAF8D954();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423658);
    }
  }
}

void sub_1AAD58FE8()
{
  if (!qword_1EB423668)
  {
    sub_1AAD59064(255, &qword_1EB423670, &type metadata for CollectedContourContent, MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423668);
    }
  }
}

void sub_1AAD59064(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AAD59108()
{
  if (!qword_1EB423678)
  {
    sub_1AAD59968(255, &qword_1EB423680, &type metadata for RuleMark, &off_1EE75C088, type metadata accessor for Resolved3DContentList);
    v0 = sub_1AAF8D954();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423678);
    }
  }
}

void sub_1AAD5918C()
{
  if (!qword_1EB423688)
  {
    sub_1AAD59968(255, &qword_1EB423690, &type metadata for RectangleMark, &off_1EE75C048, type metadata accessor for Resolved3DContentList);
    v0 = sub_1AAF8D954();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423688);
    }
  }
}

unint64_t sub_1AAD59264()
{
  result = qword_1EB4236A0;
  if (!qword_1EB4236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236A0);
  }

  return result;
}

unint64_t sub_1AAD592B8()
{
  result = qword_1EB4236A8;
  if (!qword_1EB4236A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236A8);
  }

  return result;
}

unint64_t sub_1AAD59360()
{
  result = qword_1EB4236B0;
  if (!qword_1EB4236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236B0);
  }

  return result;
}

unint64_t sub_1AAD593B4()
{
  result = qword_1EB4236B8;
  if (!qword_1EB4236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236B8);
  }

  return result;
}

unint64_t sub_1AAD59408()
{
  result = qword_1EB4236C0;
  if (!qword_1EB4236C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236C0);
  }

  return result;
}

unint64_t sub_1AAD5945C()
{
  result = qword_1EB4236C8;
  if (!qword_1EB4236C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236C8);
  }

  return result;
}

unint64_t sub_1AAD594B0()
{
  result = qword_1EB4236D0;
  if (!qword_1EB4236D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236D0);
  }

  return result;
}

unint64_t sub_1AAD59504()
{
  result = qword_1EB4236D8;
  if (!qword_1EB4236D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236D8);
  }

  return result;
}

void sub_1AAD59558()
{
  if (!qword_1ED9B2C80)
  {
    sub_1AAD595C0();
    sub_1AAD597A8();
    v0 = sub_1AAF8E384();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2C80);
    }
  }
}

void sub_1AAD595C0()
{
  if (!qword_1ED9B2B58)
  {
    sub_1AAD596F4();
    type metadata accessor for ChartAXAudiograph();
    sub_1AAD597A8();
    sub_1AAD59CC0(&qword_1ED9B2B38, sub_1AAD597A8);
    swift_getOpaqueTypeConformance2();
    sub_1AAD59CC0(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9B2B58);
    }
  }
}

void sub_1AAD596F4()
{
  if (!qword_1ED9B2B70)
  {
    sub_1AAD597A8();
    sub_1AAD59CC0(&qword_1ED9B2B38, sub_1AAD597A8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9B2B70);
    }
  }
}

void sub_1AAD597A8()
{
  if (!qword_1ED9B2B30)
  {
    sub_1AAD5980C();
    sub_1AAD59A44();
    v0 = sub_1AAF8EF34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B30);
    }
  }
}

void sub_1AAD5980C()
{
  if (!qword_1ED9B2B18)
  {
    sub_1AAD57A68(255, &qword_1ED9B2A40, sub_1AACFDAA8, MEMORY[0x1E69E62F8]);
    sub_1AAD598D4();
    sub_1AAD599BC();
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B18);
    }
  }
}

void sub_1AAD598D4()
{
  if (!qword_1ED9B2D50)
  {
    sub_1AAD59968(255, &qword_1ED9B2DA8, MEMORY[0x1E6980F80], MEMORY[0x1E697C4B0], MEMORY[0x1E697E830]);
    sub_1AAF8E734();
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2D50);
    }
  }
}

void sub_1AAD59968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AAD599BC()
{
  result = qword_1ED9B2A38;
  if (!qword_1ED9B2A38)
  {
    sub_1AAD57A68(255, &qword_1ED9B2A40, sub_1AACFDAA8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2A38);
  }

  return result;
}

unint64_t sub_1AAD59A44()
{
  result = qword_1ED9B2B20;
  if (!qword_1ED9B2B20)
  {
    sub_1AAD5980C();
    sub_1AAD59ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2B20);
  }

  return result;
}

unint64_t sub_1AAD59ABC()
{
  result = qword_1ED9B5560;
  if (!qword_1ED9B5560)
  {
    sub_1AAD598D4();
    sub_1AAD59B6C();
    sub_1AAD59CC0(&qword_1ED9B44D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5560);
  }

  return result;
}

unint64_t sub_1AAD59B6C()
{
  result = qword_1ED9B5568;
  if (!qword_1ED9B5568)
  {
    sub_1AAD59968(255, &qword_1ED9B2DA8, MEMORY[0x1E6980F80], MEMORY[0x1E697C4B0], MEMORY[0x1E697E830]);
    sub_1AAD59C18();
    sub_1AAD59C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5568);
  }

  return result;
}

unint64_t sub_1AAD59C18()
{
  result = qword_1ED9B5520;
  if (!qword_1ED9B5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5520);
  }

  return result;
}

unint64_t sub_1AAD59C6C()
{
  result = qword_1ED9B44F8;
  if (!qword_1ED9B44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44F8);
  }

  return result;
}

uint64_t sub_1AAD59CC0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD59D08(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t RectangleMark.init<A, B, C>(x:y:z:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v19 = v38[7];
  a9[24] = v38[6];
  a9[25] = v19;
  a9[26] = v38[8];
  v20 = v38[3];
  a9[20] = v38[2];
  a9[21] = v20;
  v21 = v38[5];
  a9[22] = v38[4];
  a9[23] = v21;
  v22 = v38[1];
  a9[18] = v38[0];
  a9[19] = v22;
  sub_1AAE83B9C(a1, a4, a7, v35);
  v23 = v35[7];
  a9[6] = v35[6];
  a9[7] = v23;
  a9[8] = v35[8];
  v24 = v35[3];
  a9[2] = v35[2];
  a9[3] = v24;
  v25 = v35[5];
  a9[4] = v35[4];
  a9[5] = v25;
  v26 = v35[1];
  *a9 = v35[0];
  a9[1] = v26;
  sub_1AAE83B9C(a2, a5, a8, v36);
  v27 = v36[7];
  a9[15] = v36[6];
  a9[16] = v27;
  a9[17] = v36[8];
  v28 = v36[3];
  a9[11] = v36[2];
  a9[12] = v28;
  v29 = v36[5];
  a9[13] = v36[4];
  a9[14] = v29;
  v30 = v36[1];
  a9[9] = v36[0];
  a9[10] = v30;
  sub_1AAE83B9C(a3, a6, a10, v37);
  v31 = type metadata accessor for PlottableValue();
  (*(*(v31 - 8) + 8))(a3, v31);
  v32 = type metadata accessor for PlottableValue();
  (*(*(v32 - 8) + 8))(a2, v32);
  v33 = type metadata accessor for PlottableValue();
  (*(*(v33 - 8) + 8))(a1, v33);
  return sub_1AAD5B43C(v37, (a9 + 18));
}

int8x16_t sub_1AAD59F90(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x2000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

uint64_t static RectangleMark._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  sub_1AAD5B920(0, &qword_1EB4236E0, &type metadata for RectangleMark, MEMORY[0x1E697DDB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v37[-v10];
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v12 = sub_1AAF8F164();
  v13 = v8[2];
  v13(v11, a1, v7);
  if (v9 != 4)
  {
    __break(1u);
  }

  v52 = *v11;
  v14 = v8[1];
  v47 = v8 + 1;
  v50 = v14;
  v14(v11, v7);
  v53 = type metadata accessor for _Chart3DContentInputs();
  v51 = *(a2 + *(v53 + 24));
  KeyPath = swift_getKeyPath();
  v49 = v8 + 2;
  v56 = v12;
  v58 = sub_1AAD5B498;
  v59 = KeyPath;
  sub_1AACBC63C();
  v54 = a2;
  v55 = a3;
  v48 = v7;
  v16 = MEMORY[0x1E69E6720];
  sub_1AAD5B920(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v45 = v13;
  sub_1AAD5B4A8(0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v44 = a1;
  sub_1AAD5B544(&qword_1EB4234C0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);

  v46 = sub_1AAF8D194();

  v17 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5B4A0;
  v59 = v17;
  v42 = sub_1AACBC63C();
  sub_1AAD5B920(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v16);
  v41 = v18;
  sub_1AAD5B4A8(0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v40 = v19;
  v39 = sub_1AAD5B544(&qword_1EB4234D0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);

  v43 = sub_1AAF8D194();

  v20 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5B53C;
  v59 = v20;
  sub_1AACBC63C();
  v21 = MEMORY[0x1E69E63B0];
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v16);
  sub_1AAD5B4A8(0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);
  sub_1AAD5B544(&qword_1EB4234E0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);

  v38 = sub_1AAF8D194();

  v22 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5BB34;
  v59 = v22;

  LODWORD(v16) = sub_1AAF8D194();

  v23 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5B594;
  v59 = v23;
  sub_1AACBC63C();
  sub_1AAD5B59C();
  sub_1AAD5B604(&qword_1EB4234F0, sub_1AAD5B59C);

  LODWORD(v21) = sub_1AAF8D194();

  v24 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5B5FC;
  v59 = v24;
  sub_1AACBC63C();
  sub_1AAD5B84C(0, &qword_1EB423508, type metadata accessor for simd_quatf);
  sub_1AAD57690();
  sub_1AAD5B604(&qword_1EB423518, sub_1AAD57690);

  v25 = sub_1AAF8D194();

  v26 = v48;
  v45(v11, v44, v48);
  v27 = *v11;
  v50(v11, v26);
  v28 = swift_getKeyPath();
  v56 = v12;
  v58 = sub_1AAD5BB38;
  v59 = v28;

  v29 = sub_1AAF8D194();

  v56 = v52;
  v57 = v51;
  v58 = __PAIR64__(v43, v46);
  v59 = __PAIR64__(v16, v38);
  v60 = v21;
  v61 = v25;
  v62 = 0;
  sub_1AACBC63C();
  sub_1AAD5B7EC(0, &qword_1EB423690, type metadata accessor for Resolved3DContentList);
  sub_1AAD5B658();
  v30 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v30);
  *&v37[-16] = v31;
  sub_1AAD5B6B4();
  sub_1AAF8E494();
  v56 = v27;
  sub_1AACBC63C();
  sub_1AAD5B708();
  v32 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v32);
  *&v37[-16] = v33;
  sub_1AAD578D0();
  sub_1AAF8E494();
  v56 = v29;
  sub_1AACBC63C();
  sub_1AAD57924();
  v34 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v34);
  *&v37[-16] = v35;
  sub_1AAD57980();
  return sub_1AAF8E494();
}

double sub_1AAD5A97C@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v29[0] = *Value;
  v3 = Value[4];
  v5 = Value[1];
  v4 = Value[2];
  v29[3] = Value[3];
  v29[4] = v3;
  v29[1] = v5;
  v29[2] = v4;
  v6 = Value[8];
  v8 = Value[5];
  v7 = Value[6];
  v29[7] = Value[7];
  v29[8] = v6;
  v29[5] = v8;
  v29[6] = v7;
  sub_1AAD5835C(v29, v30);
  sub_1AADC7D9C(v29, v30);
  v9 = AGGraphGetValue();
  v10 = v9[16];
  v28[6] = v9[15];
  v28[7] = v10;
  v28[8] = v9[17];
  v11 = v9[12];
  v28[2] = v9[11];
  v28[3] = v11;
  v12 = v9[14];
  v28[4] = v9[13];
  v28[5] = v12;
  v13 = v9[10];
  v28[0] = v9[9];
  v28[1] = v13;
  sub_1AAD5835C(v28, v27);
  sub_1AADC7D9C(v28, v31 + 8);
  v14 = AGGraphGetValue();
  v15 = v14[25];
  v27[6] = v14[24];
  v27[7] = v15;
  v27[8] = v14[26];
  v16 = v14[21];
  v27[2] = v14[20];
  v27[3] = v16;
  v17 = v14[23];
  v27[4] = v14[22];
  v27[5] = v17;
  v18 = v14[19];
  v27[0] = v14[18];
  v27[1] = v18;
  sub_1AAD5835C(v27, &v26);
  sub_1AADC7D9C(v27, v32);
  v19 = v32[2];
  *(a1 + 160) = v32[1];
  *(a1 + 176) = v19;
  *(a1 + 192) = v32[3];
  *(a1 + 208) = v33;
  v20 = v31[3];
  *(a1 + 96) = v31[2];
  *(a1 + 112) = v20;
  v21 = v32[0];
  *(a1 + 128) = v31[4];
  *(a1 + 144) = v21;
  v22 = v30[3];
  *(a1 + 32) = v30[2];
  *(a1 + 48) = v22;
  v23 = v31[1];
  *(a1 + 64) = v31[0];
  *(a1 + 80) = v23;
  result = *v30;
  v25 = v30[1];
  *a1 = v30[0];
  *(a1 + 16) = v25;
  return result;
}

uint64_t sub_1AAD5AAF8()
{
  v90 = *MEMORY[0x1E69E9840];
  sub_1AAD5B7EC(0, &unk_1EB424A70, type metadata accessor for Resolved3DContentList.Item);
  *&v67 = v1;
  v68 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v66 - v2;
  sub_1AAD5B84C(0, &qword_1EB423638, sub_1AAD583E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - v5;
  sub_1AAD583E0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8DC74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  *&v69 = v16;
  memcpy(v89, Value, sizeof(v89));
  v17 = v0[1];
  v18 = *MEMORY[0x1E698D3F8];
  v70 = v13;
  if (v17 == v18)
  {
    v19 = v12;
    (*(v9 + 56))(v6, 1, 1, v8);
    v20 = *(v8 + 48);
    sub_1AAD58A7C(v89, &v83);
    sub_1AAF8DC64();
    v11[v20] = 0;
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      sub_1AAD5BAD4(v6, &qword_1EB423638, sub_1AAD583E0, sub_1AAD5B84C);
    }
  }

  else
  {
    sub_1AAD58A7C(v89, &v83);
    v21 = AGGraphGetValue();
    v23 = v22;
    v24 = v12;
    v25 = *(v8 + 48);
    v26 = *(v13 + 16);
    v19 = v24;
    v26(v6, v21);
    v6[v25] = v23 & 1;
    (*(v9 + 56))(v6, 0, 1, v8);
    sub_1AAD584A4(v6, v11);
  }

  v27 = v11[*(v8 + 48)];
  v28 = v19;
  (*(v70 + 32))(v71, v11, v19);
  v29 = &type metadata for Chart3DForegroundStyle;
  v30 = MEMORY[0x1E69E6720];
  sub_1AAD5B920(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v31 = AGGraphGetValue();
  v33 = v32;
  sub_1AAD5B8A0(v31, v77, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v34 = v0[3];
  sub_1AAD5B920(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v30);
  v35 = AGGraphGetValue();
  v78 = *v35;
  v38 = *(v35 + 32);
  v37 = *(v35 + 48);
  v39 = *(v35 + 16);
  v82 = *(v35 + 64);
  v80 = v38;
  v81 = v37;
  v79 = v39;
  if ((v69 & 1) == 0 && (v27 & 1) == 0)
  {
    if ((v36 & 1) == 0)
    {
      v40 = v70;
      if ((v33 & 1) == 0)
      {
        sub_1AAD58AD8(v89);
        sub_1AAD5BA64(v77, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
        return (*(v40 + 8))(v71, v19);
      }
    }

    goto LABEL_16;
  }

  ++v0[8];
  if (v33 & 1) != 0 || (v36)
  {
LABEL_16:
    sub_1AAD5B8A0(&v78, &v83, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
LABEL_17:
    ++v0[9];
    goto LABEL_18;
  }

  v34 = v0[4];
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v33 = v42;
  sub_1AAD5B8A0(&v78, &v83, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  AGGraphGetValue();
  if (v43)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v44)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v45)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_1AAD5B8A0(v77, v74, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v46 = v76;
  if (v76 == 255)
  {
    sub_1AAD5BA64(v74, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
    v51 = *(&v79 + 1);
    if (*(&v79 + 1))
    {
      v34 = *(&v81 + 1);
      v33 = v82;
      v46 = *(&v80 + 1);
      v29 = v81;
      v49 = v80;
      *&v50 = v79;
      v69 = v50;
      v72 = 1;
      v85 = v80;
      v86 = v81;
      v87 = v82;
      v66 = v78;
      v83 = v78;
      v84 = v79;
      sub_1AAD5874C(&v83, v73);
      v48 = v66;
      *&v47 = v69;
      *(&v47 + 1) = v51;
    }

    else
    {
      v49 = 0;
      v29 = 0;
      v34 = 0;
      v33 = 0;
      v46 = 0;
      v72 = -1;
      v48 = 0uLL;
      v47 = 0uLL;
    }
  }

  else
  {
    v48 = v74[0];
    v47 = v74[1];
    v49 = v75;
    v72 = 0;
  }

  v83 = v48;
  v84 = v47;
  *&v85 = v49;
  *(&v85 + 1) = v46;
  *&v86 = v29;
  *(&v86 + 1) = v34;
  v87 = v33;
  v88 = v72;
  v52 = v70;
  (*(v70 + 16))(&v3[*(v67 + 48)], v71, v28);
  v53 = *(v0 + 4);
  sub_1AAD5B8A0(&v83, (v3 + 448), &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v54 = AGGraphGetValue();
  *&v69 = v28;
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = AGGraphGetValue();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = *AGGraphGetValue();
  sub_1AAD5B84C(0, &qword_1EB423508, type metadata accessor for simd_quatf);
  v61 = AGGraphGetValue();
  v62 = *(v61 + 16);
  v67 = *v61;
  memcpy(v3 + 16, v89, 0x1B0uLL);
  *(v3 + 66) = v55;
  v3[536] = v56;
  *(v3 + 68) = v58;
  v3[552] = v59;
  *(v3 + 70) = v60;
  *(v3 + 36) = v67;
  v3[592] = v62;
  sub_1AAD57ACC();
  sub_1AAF8DC84();
  *v3 = v73[0];
  *(v3 + 1) = v53;
  sub_1AAD5B970();
  v63 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1AAF92AB0;
  sub_1AAD5B9E4(v3, v64 + v63);
  v73[0] = sub_1AAD78C2C(v64);
  v73[1] = v65;
  sub_1AAD5B7EC(0, &qword_1EB423690, type metadata accessor for Resolved3DContentList);
  AGGraphSetOutputValue();
  sub_1AAD5BA64(&v78, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAD5BAD4(v3, &unk_1EB424A70, type metadata accessor for Resolved3DContentList.Item, sub_1AAD5B7EC);
  sub_1AAD5BA64(&v83, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5BA64(v77, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  (*(v52 + 8))(v71, v69);
}

void sub_1AAD5B4A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAF8E134();
    sub_1AAD5B920(255, a3, a4, MEMORY[0x1E69E6720]);
    v7 = sub_1AAF8D1D4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAD5B544(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD5B4A8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAD5B59C()
{
  if (!qword_1EB4234E8)
  {
    sub_1AAF8E134();
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4234E8);
    }
  }
}

uint64_t sub_1AAD5B604(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAD5B658()
{
  result = qword_1EB4236E8;
  if (!qword_1EB4236E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236E8);
  }

  return result;
}

unint64_t sub_1AAD5B6B4()
{
  result = qword_1EB4236F0;
  if (!qword_1EB4236F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236F0);
  }

  return result;
}

unint64_t sub_1AAD5B708()
{
  result = qword_1EB4236F8;
  if (!qword_1EB4236F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4236F8);
  }

  return result;
}

__n128 sub_1AAD5B76C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAD5B780(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD5B7A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

void sub_1AAD5B7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RectangleMark, &off_1EE75C048);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD5B84C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAD5B8A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAD5B920(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAD5B920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AAD5B970()
{
  if (!qword_1EB423700)
  {
    sub_1AAD5B7EC(255, &unk_1EB424A70, type metadata accessor for Resolved3DContentList.Item);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423700);
    }
  }
}

uint64_t sub_1AAD5B9E4(uint64_t a1, uint64_t a2)
{
  sub_1AAD5B7EC(0, &unk_1EB424A70, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD5BA64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAD5B920(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD5BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t RuleMark.init<A, B, C>(x:y:z:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v19 = v38[7];
  a9[24] = v38[6];
  a9[25] = v19;
  a9[26] = v38[8];
  v20 = v38[3];
  a9[20] = v38[2];
  a9[21] = v20;
  v21 = v38[5];
  a9[22] = v38[4];
  a9[23] = v21;
  v22 = v38[1];
  a9[18] = v38[0];
  a9[19] = v22;
  sub_1AAE83B9C(a1, a4, a7, v35);
  v23 = v35[7];
  a9[6] = v35[6];
  a9[7] = v23;
  a9[8] = v35[8];
  v24 = v35[3];
  a9[2] = v35[2];
  a9[3] = v24;
  v25 = v35[5];
  a9[4] = v35[4];
  a9[5] = v25;
  v26 = v35[1];
  *a9 = v35[0];
  a9[1] = v26;
  sub_1AAE83B9C(a2, a5, a8, v36);
  v27 = v36[7];
  a9[15] = v36[6];
  a9[16] = v27;
  a9[17] = v36[8];
  v28 = v36[3];
  a9[11] = v36[2];
  a9[12] = v28;
  v29 = v36[5];
  a9[13] = v36[4];
  a9[14] = v29;
  v30 = v36[1];
  a9[9] = v36[0];
  a9[10] = v30;
  sub_1AAE83B9C(a3, a6, a10, v37);
  v31 = type metadata accessor for PlottableValue();
  (*(*(v31 - 8) + 8))(a3, v31);
  v32 = type metadata accessor for PlottableValue();
  (*(*(v32 - 8) + 8))(a2, v32);
  v33 = type metadata accessor for PlottableValue();
  (*(*(v33 - 8) + 8))(a1, v33);
  return sub_1AAD5B43C(v37, (a9 + 18));
}

uint64_t static RuleMark._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  sub_1AAD5B920(0, &qword_1EB423708, &type metadata for RuleMark, MEMORY[0x1E697DDB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v35[-v10];
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v12 = sub_1AAF8F164();
  v13 = v8[2];
  v13(v11, a1, v7);
  if (v9 != 4)
  {
    __break(1u);
  }

  v50 = *v11;
  v14 = v8[1];
  v45 = v8 + 1;
  v48 = v14;
  v14(v11, v7);
  v51 = type metadata accessor for _Chart3DContentInputs();
  v49 = *(a2 + *(v51 + 24));
  KeyPath = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5B498;
  v57 = KeyPath;
  sub_1AACBC63C();
  v46 = v7;
  v47 = v8 + 2;
  v53 = a3;
  v52 = a2;
  v16 = MEMORY[0x1E69E6720];
  sub_1AAD5B920(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v43 = v13;
  sub_1AAD5B4A8(0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v42 = a1;
  sub_1AAD5B544(&qword_1EB4234C0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);

  v44 = sub_1AAF8D194();

  v17 = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5B4A0;
  v57 = v17;
  v40 = sub_1AACBC63C();
  sub_1AAD5B920(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v16);
  v39 = v18;
  sub_1AAD5B4A8(0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v38 = v19;
  v37 = sub_1AAD5B544(&qword_1EB4234D0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);

  v41 = sub_1AAF8D194();

  v20 = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5B53C;
  v57 = v20;
  sub_1AACBC63C();
  v21 = MEMORY[0x1E69E63B0];
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v16);
  sub_1AAD5B4A8(0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);
  sub_1AAD5B544(&qword_1EB4234E0, &qword_1EB4234D8, &qword_1ED9B29E0, v21);

  v36 = sub_1AAF8D194();

  v22 = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5BB34;
  v57 = v22;

  v23 = sub_1AAF8D194();

  v24 = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5B594;
  v57 = v24;
  sub_1AACBC63C();
  sub_1AAD5B59C();
  sub_1AAD5D020();

  LODWORD(v21) = sub_1AAF8D194();

  v25 = v46;
  v43(v11, v42, v46);
  LODWORD(v16) = *v11;
  v48(v11, v25);
  v26 = swift_getKeyPath();
  v54 = v12;
  v56 = sub_1AAD5BB38;
  v57 = v26;

  v27 = sub_1AAF8D194();

  v54 = v50;
  v55 = v49;
  v56 = __PAIR64__(v41, v44);
  v57 = __PAIR64__(v23, v36);
  v59 = 0;
  v58 = v21;
  sub_1AACBC63C();
  sub_1AAD5D208(0, &qword_1EB423680, type metadata accessor for Resolved3DContentList);
  sub_1AAD5D078();
  v28 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v28);
  *&v35[-16] = v29;
  sub_1AAD5D0D4();
  sub_1AAF8E494();
  v54 = v16;
  sub_1AACBC63C();
  sub_1AAD5D128();
  v30 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v30);
  *&v35[-16] = v31;
  sub_1AAD578D0();
  sub_1AAF8E494();
  v54 = v27;
  sub_1AACBC63C();
  sub_1AAD57924();
  v32 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v32);
  *&v35[-16] = v33;
  sub_1AAD57980();
  return sub_1AAF8E494();
}

double sub_1AAD5C62C@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v29[0] = *Value;
  v3 = Value[4];
  v5 = Value[1];
  v4 = Value[2];
  v29[3] = Value[3];
  v29[4] = v3;
  v29[1] = v5;
  v29[2] = v4;
  v6 = Value[8];
  v8 = Value[5];
  v7 = Value[6];
  v29[7] = Value[7];
  v29[8] = v6;
  v29[5] = v8;
  v29[6] = v7;
  sub_1AAD5835C(v29, v30);
  sub_1AADC7D9C(v29, v30);
  v9 = AGGraphGetValue();
  v10 = v9[16];
  v28[6] = v9[15];
  v28[7] = v10;
  v28[8] = v9[17];
  v11 = v9[12];
  v28[2] = v9[11];
  v28[3] = v11;
  v12 = v9[14];
  v28[4] = v9[13];
  v28[5] = v12;
  v13 = v9[10];
  v28[0] = v9[9];
  v28[1] = v13;
  sub_1AAD5835C(v28, v27);
  sub_1AADC7D9C(v28, v31 + 8);
  v14 = AGGraphGetValue();
  v15 = v14[25];
  v27[6] = v14[24];
  v27[7] = v15;
  v27[8] = v14[26];
  v16 = v14[21];
  v27[2] = v14[20];
  v27[3] = v16;
  v17 = v14[23];
  v27[4] = v14[22];
  v27[5] = v17;
  v18 = v14[19];
  v27[0] = v14[18];
  v27[1] = v18;
  sub_1AAD5835C(v27, &v26);
  sub_1AADC7D9C(v27, v32);
  v19 = v32[2];
  *(a1 + 160) = v32[1];
  *(a1 + 176) = v19;
  *(a1 + 192) = v32[3];
  *(a1 + 208) = v33;
  v20 = v31[3];
  *(a1 + 96) = v31[2];
  *(a1 + 112) = v20;
  v21 = v32[0];
  *(a1 + 128) = v31[4];
  *(a1 + 144) = v21;
  v22 = v30[3];
  *(a1 + 32) = v30[2];
  *(a1 + 48) = v22;
  v23 = v31[1];
  *(a1 + 64) = v31[0];
  *(a1 + 80) = v23;
  result = *v30;
  v25 = v30[1];
  *a1 = v30[0];
  *(a1 + 16) = v25;
  return result;
}

uint64_t sub_1AAD5C7A8()
{
  v89 = *MEMORY[0x1E69E9840];
  sub_1AAD5D208(0, &qword_1EB423728, type metadata accessor for Resolved3DContentList.Item);
  v2 = *(v1 - 8);
  v66 = v1;
  v67 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v65 - v3;
  sub_1AAD5D268();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD583E0();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8DC74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  *&v68 = v17;
  memcpy(v88, Value, sizeof(v88));
  v18 = v0[1];
  v19 = *MEMORY[0x1E698D3F8];
  v69 = v14;
  if (v18 == v19)
  {
    v20 = v13;
    (*(v10 + 56))(v7, 1, 1, v9);
    v21 = *(v9 + 48);
    sub_1AAD589CC(v88, &v82);
    sub_1AAF8DC64();
    v12[v21] = 0;
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      sub_1AAD5D42C(v7);
    }
  }

  else
  {
    sub_1AAD589CC(v88, &v82);
    v22 = AGGraphGetValue();
    v24 = v23;
    v25 = v13;
    v26 = *(v9 + 48);
    v27 = *(v14 + 16);
    v20 = v25;
    v27(v7, v22);
    v7[v26] = v24 & 1;
    (*(v10 + 56))(v7, 0, 1, v9);
    sub_1AAD584A4(v7, v12);
  }

  v28 = v12[*(v9 + 48)];
  v29 = v20;
  (*(v69 + 32))(v70, v12, v20);
  v30 = &type metadata for Chart3DForegroundStyle;
  v31 = MEMORY[0x1E69E6720];
  sub_1AAD5B920(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v32 = AGGraphGetValue();
  v34 = v33;
  sub_1AAD5B8A0(v32, v76, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v35 = v0[3];
  sub_1AAD5B920(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v31);
  v36 = AGGraphGetValue();
  v77 = *v36;
  v39 = *(v36 + 32);
  v38 = *(v36 + 48);
  v40 = *(v36 + 16);
  v81 = *(v36 + 64);
  v79 = v39;
  v80 = v38;
  v78 = v40;
  if ((v68 & 1) == 0 && (v28 & 1) == 0)
  {
    if ((v37 & 1) == 0)
    {
      v41 = v69;
      if ((v34 & 1) == 0)
      {
        sub_1AAD58A28(v88);
        sub_1AAD5BA64(v76, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
        return (*(v41 + 8))(v70, v20);
      }
    }

    goto LABEL_16;
  }

  ++v0[7];
  if (v34 & 1) != 0 || (v37)
  {
LABEL_16:
    sub_1AAD5B8A0(&v77, &v82, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
LABEL_17:
    ++v0[8];
    goto LABEL_18;
  }

  v35 = v0[4];
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v34 = v43;
  sub_1AAD5B8A0(&v77, &v82, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  AGGraphGetValue();
  if (v44)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v45)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();
  if (v46)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_1AAD5B8A0(v76, v73, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v47 = v75;
  if (v75 == 255)
  {
    sub_1AAD5BA64(v73, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
    v52 = *(&v78 + 1);
    if (*(&v78 + 1))
    {
      v35 = *(&v80 + 1);
      v34 = v81;
      v47 = *(&v79 + 1);
      v30 = v80;
      v50 = v79;
      *&v51 = v78;
      v68 = v51;
      v71 = 1;
      v84 = v79;
      v85 = v80;
      v86 = v81;
      v65 = v77;
      v82 = v77;
      v83 = v78;
      sub_1AAD5874C(&v82, v72);
      v49 = v65;
      *&v48 = v68;
      *(&v48 + 1) = v52;
    }

    else
    {
      v50 = 0;
      v30 = 0;
      v35 = 0;
      v34 = 0;
      v47 = 0;
      v71 = -1;
      v49 = 0uLL;
      v48 = 0uLL;
    }
  }

  else
  {
    v49 = v73[0];
    v48 = v73[1];
    v50 = v74;
    v71 = 0;
  }

  v82 = v49;
  v83 = v48;
  *&v84 = v50;
  *(&v84 + 1) = v47;
  *&v85 = v30;
  *(&v85 + 1) = v35;
  v86 = v34;
  v87 = v71;
  v53 = v69;
  (*(v69 + 16))(&v4[*(v66 + 48)], v70, v29);
  v54 = *(v0 + 7);
  sub_1AAD5B8A0(&v82, (v4 + 448), &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5B920(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v55 = AGGraphGetValue();
  *&v68 = v29;
  v56 = *v55;
  v57 = *(v55 + 8);
  v58 = AGGraphGetValue();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = *AGGraphGetValue();
  memcpy(v4 + 16, v88, 0x1B0uLL);
  *(v4 + 66) = v56;
  v4[536] = v57;
  *(v4 + 68) = v59;
  v4[552] = v60;
  *(v4 + 70) = v61;
  sub_1AAD57ACC();
  sub_1AAF8DC84();
  *v4 = v72[0];
  *(v4 + 1) = v54;
  sub_1AAD5D2C0();
  v62 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1AAF92AB0;
  sub_1AAD5D334(v4, v63 + v62);
  v72[0] = sub_1AAD78BD8(v63);
  v72[1] = v64;
  sub_1AAD5D208(0, &qword_1EB423680, type metadata accessor for Resolved3DContentList);
  AGGraphSetOutputValue();
  sub_1AAD5BA64(&v77, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAD5D3B4(v4);
  sub_1AAD5BA64(&v82, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5BA64(v76, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  (*(v53 + 8))(v70, v68);
}

unint64_t sub_1AAD5D020()
{
  result = qword_1EB4234F0;
  if (!qword_1EB4234F0)
  {
    sub_1AAD5B59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4234F0);
  }

  return result;
}

unint64_t sub_1AAD5D078()
{
  result = qword_1EB423710;
  if (!qword_1EB423710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423710);
  }

  return result;
}

unint64_t sub_1AAD5D0D4()
{
  result = qword_1EB423718;
  if (!qword_1EB423718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423718);
  }

  return result;
}

unint64_t sub_1AAD5D128()
{
  result = qword_1EB423720;
  if (!qword_1EB423720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423720);
  }

  return result;
}

__n128 sub_1AAD5D18C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAD5D1A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD5D1C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 36) = v3;
  return result;
}

void sub_1AAD5D208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RuleMark, &off_1EE75C088);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD5D268()
{
  if (!qword_1EB423638)
  {
    sub_1AAD583E0();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423638);
    }
  }
}

void sub_1AAD5D2C0()
{
  if (!qword_1EB423730)
  {
    sub_1AAD5D208(255, &qword_1EB423728, type metadata accessor for Resolved3DContentList.Item);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423730);
    }
  }
}

uint64_t sub_1AAD5D334(uint64_t a1, uint64_t a2)
{
  sub_1AAD5D208(0, &qword_1EB423728, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD5D3B4(uint64_t a1)
{
  sub_1AAD5D208(0, &qword_1EB423728, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD5D42C(uint64_t a1)
{
  sub_1AAD5D268();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3 & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12 & 1;
  *(a9 + 104) = a13;
  *a9 = a14;
  *(a9 + 8) = a15;
  return result;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1AAF8EA44();
  v25 = v9;
  v26 = v8;
  v11 = v10;
  v24 = v12;
  v13 = sub_1AAF8EA44();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = sub_1AAF8EA44();
  *a1 = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = v26;
  *(a1 + 24) = v25;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v24;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17 & 1;
  *(a1 + 72) = v19;
  *(a1 + 80) = result;
  *(a1 + 88) = v22;
  *(a1 + 96) = v21 & 1;
  *(a1 + 104) = v23;
  return result;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v41 = a1;
  v9 = sub_1AAF8C784();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  v15 = sub_1AAF8EA54();
  v43 = v16;
  v44 = v15;
  v40 = v17;
  v42 = v18;
  (v14)(v13, a2, v9);
  v19 = sub_1AAF8EA54();
  v38 = v20;
  v39 = v19;
  v22 = v21;
  v37 = v23;
  v24 = v45;
  (v14)(v13, v45, v9);
  v25 = sub_1AAF8EA54();
  v27 = v26;
  LOBYTE(v14) = v28;
  v36 = v29;
  v30 = *(v10 + 8);
  v30(v24, v9);
  v30(a2, v9);
  result = (v30)(v41, v9);
  v32 = v40 & 1;
  *a6 = v46;
  *(a6 + 8) = v47;
  *(a6 + 16) = v44;
  *(a6 + 24) = v43;
  *(a6 + 32) = v32;
  v33 = v39;
  *(a6 + 40) = v42;
  *(a6 + 48) = v33;
  v34 = v37;
  *(a6 + 56) = v38;
  *(a6 + 64) = v22 & 1;
  *(a6 + 72) = v34;
  *(a6 + 80) = v25;
  *(a6 + 88) = v27;
  *(a6 + 96) = v14 & 1;
  *(a6 + 104) = v36;
  return result;
}

uint64_t SurfacePlot.init<A, B, C>(x:y:z:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = a6;
  v60 = a4;
  v61 = a5;
  v62 = a1;
  v58 = a3;
  v59 = a11;
  v14 = *(a7 - 8);
  v56 = a9;
  v57 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v22;
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  (*(v23 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v27, v25);
  v28 = sub_1AAF8EA64();
  v55 = v29;
  v56 = v28;
  v51 = v30;
  v54 = v31;
  v32 = v52;
  (*(v18 + 16))(v21, a2, v52);
  v57 = sub_1AAF8EA64();
  v49 = v34;
  v50 = v33;
  v48 = v35;
  v36 = v58;
  (*(v14 + 16))(v16, v58, a7);
  v37 = sub_1AAF8EA64();
  v59 = v38;
  v40 = v39;
  v47 = v41;
  (*(v14 + 8))(v36, a7);
  (*(v18 + 8))(a2, v32);
  result = (*(v23 + 8))(v62, v53);
  v43 = v51 & 1;
  v44 = v48 & 1;
  *a8 = v60;
  *(a8 + 8) = v61;
  *(a8 + 16) = v56;
  *(a8 + 24) = v55;
  *(a8 + 32) = v43;
  v45 = v57;
  *(a8 + 40) = v54;
  *(a8 + 48) = v45;
  v46 = v49;
  *(a8 + 56) = v50;
  *(a8 + 64) = v44;
  *(a8 + 72) = v46;
  *(a8 + 80) = v37;
  *(a8 + 88) = v59;
  *(a8 + 96) = v40 & 1;
  *(a8 + 104) = v47;
  return result;
}

uint64_t static SurfacePlot._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  sub_1AAD5F5F4(0, &qword_1EB423738, &type metadata for SurfacePlot, MEMORY[0x1E697DDB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v33 - v10);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v12 = sub_1AAF8F164();
  (*(v8 + 16))(v11, a1, v7);
  if (v9 != 4)
  {
    __break(1u);
  }

  v43 = *v11;
  (*(v8 + 8))(v11, v7);
  v44 = type metadata accessor for _Chart3DContentInputs();
  v42 = *(a2 + *(v44 + 24));
  KeyPath = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B498;
  v49 = KeyPath;
  sub_1AACBC63C();
  v45 = a3;
  v14 = MEMORY[0x1E69E6720];
  sub_1AAD5F5F4(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v41 = a2;
  sub_1AAD5F080(0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  sub_1AAD5F114(&qword_1EB4234C0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);

  v40 = sub_1AAF8D194();

  v15 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B4A0;
  v49 = v15;
  v38 = sub_1AACBC63C();
  sub_1AAD5F5F4(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v14);
  v37 = v16;
  sub_1AAD5F080(0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v36 = v17;
  v35 = sub_1AAD5F114(&qword_1EB4234D0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);

  v39 = sub_1AAF8D194();

  v18 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B53C;
  v49 = v18;
  sub_1AACBC63C();
  v19 = MEMORY[0x1E69E63B0];
  sub_1AAD5F5F4(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v14);
  sub_1AAD5F080(0, &qword_1EB4234D8, &qword_1ED9B29E0, v19);
  sub_1AAD5F114(&qword_1EB4234E0, &qword_1EB4234D8, &qword_1ED9B29E0, v19);

  v34 = sub_1AAF8D194();

  v20 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5BB34;
  v49 = v20;

  v33 = sub_1AAF8D194();

  v21 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B594;
  v49 = v21;
  sub_1AACBC63C();
  sub_1AAD5B59C();
  sub_1AAD5F208(&qword_1EB4234F0, sub_1AAD5B59C);

  LODWORD(v19) = sub_1AAF8D194();

  v22 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5F164;
  v49 = v22;
  sub_1AACBC63C();
  sub_1AAD58FE8();
  sub_1AAD5F1A0();
  sub_1AAD5F208(&qword_1EB423748, sub_1AAD5F1A0);

  v23 = sub_1AAF8D194();

  v24 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5F8F8;
  v49 = v24;

  LODWORD(v14) = sub_1AAF8D194();

  v25 = sub_1AAF8F164();
  v26 = swift_getKeyPath();
  v46 = v25;
  v48 = sub_1AAD5BB38;
  v49 = v26;

  v27 = sub_1AAF8D194();

  v46 = v43;
  v47 = v42;
  v48 = __PAIR64__(v39, v40);
  v49 = __PAIR64__(v33, v34);
  v50 = v19;
  v51 = v23;
  v53 = 0;
  v52 = v14;
  v54 = 0;
  v55 = 0;
  sub_1AACBC63C();
  sub_1AAD5F4DC(0, &qword_1EB423660, type metadata accessor for Resolved3DContentList);
  sub_1AAD5F25C();
  v28 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v28);
  *(&v33 - 4) = v29;
  sub_1AAD5F2B8();
  sub_1AAF8E494();
  v46 = v27;
  sub_1AACBC63C();
  sub_1AAD57924();
  v30 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v30);
  *(&v33 - 4) = v31;
  sub_1AAD57980();
  return sub_1AAF8E494();
}