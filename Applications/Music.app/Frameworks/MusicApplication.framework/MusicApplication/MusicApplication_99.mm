uint64_t sub_8F6598()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_AB49E0();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_8F6638(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_8F6638(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_AB49E0();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_AB49F0();
    sub_8F66B8(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

void sub_8F6754(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_AB3820();
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_8F8544(&qword_E20AC8, &type metadata accessor for IndexPath);
        v15 = sub_AB90D0();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = sub_AB4950();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_AB49A0();
        }

        sub_AB4990();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_8F696C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8F8544(&qword_E20AC8, &type metadata accessor for IndexPath);
  v28[1] = a1;
  result = sub_AB90D0();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_AB4950();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_AB4980();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_8F8544(&qword_E20AD0, &type metadata accessor for IndexPath);
        v26 = sub_AB91C0();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_AB49A0();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_AB4980();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*sub_8F6BBC(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_8E0B60(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_908DBC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_908070(v16, a3 & 1);
    v11 = sub_8E0B60(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return sub_8F6D0C;
}

void sub_8F6D0C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      sub_27EB60(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*sub_8F6E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = sub_8E0C10(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_9091E8();
      v15 = v23;
      goto LABEL_11;
    }

    sub_908834(v20, a5 & 1);
    v15 = sub_8E0C10(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_8F6F88;
}

void sub_8F6F88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_8F858C(*(v13 + 48) + 24 * v12);
      sub_8F42B0(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_8F70EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_8F85F4;
}

void sub_8F7114(uint64_t a1)
{
  v2 = sub_AB3820();
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v26 = *(a1 + 16);
  if (v26)
  {
    v10 = 0;
    v13 = *(v6 + 16);
    v11 = v6 + 16;
    v12 = v13;
    v28 = *(v11 + 56);
    v14 = (v11 - 8);
    v25 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v24 = a1 + v25;
    (v13)(v9, a1 + v25, v2, v7);
    while (1)
    {
      v17 = *v27;
      v16 = v27[1];
      v18 = v16 + v25;
      v19 = *(v16 + 16);
      if (*v27)
      {

        sub_8F696C(v9, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;

        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          sub_8F6350(v9);
          goto LABEL_4;
        }

        while (1)
        {
          v12(v4, v18, v2);
          sub_8F8544(&qword_E20AD0, &type metadata accessor for IndexPath);
          v22 = sub_AB91C0();
          (*v14)(v4, v2);
          if (v22)
          {
            break;
          }

          v18 += v28;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_4:
      ++v10;
      (*v14)(v9, v2);
      if (v10 == v26)
      {
        return;
      }

      (v12)(v9, v24 + v28 * v10, v2, v15);
    }
  }
}

uint64_t sub_8F7380()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_8F7458()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_239(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8F74B8(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_8F8544(&qword_E20AC8, &type metadata accessor for IndexPath);
  result = sub_AB9B70();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_8F2BB8(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_8F7680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3730();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_8F7754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3730();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_8F7810()
{
  sub_8F7A0C(319, &qword_E20C30, &qword_E20C38, &unk_B376B0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_AB3730();
    if (v1 <= 0x3F)
    {
      sub_8F7A0C(319, &qword_E20C40, &qword_E20BB8, &unk_B37670, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_8F7978();
        if (v3 <= 0x3F)
        {
          sub_8F7A0C(319, &unk_E20C50, &qword_E20938, &unk_B36E90, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_8F7978()
{
  if (!qword_E20C48)
  {
    sub_AB3820();
    sub_8F8544(&qword_E20AC8, &type metadata accessor for IndexPath);
    v0 = sub_AB4940();
    if (!v1)
    {
      atomic_store(v0, &qword_E20C48);
    }
  }
}

void sub_8F7A0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_8F7A70()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8F7AF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_8F7C74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_8F7ED4(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v19, v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20D58);
    v10 = swift_allocObject();
    v20 = xmmword_AF4EC0;
    *(v10 + 16) = xmmword_AF4EC0;
    *(v10 + 56) = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 32));
    (v9)(boxed_opaque_existential_0, v6, v2);
    sub_ABACC0();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v19;
      do
      {
        (v9)(v6, v14, v2);
        v23._countAndFlagsBits = 8236;
        v23._object = 0xE200000000000000;
        sub_AB94A0(v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20D58);
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        *(v15 + 56) = v2;
        v16 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
        (v9)(v16, v6, v2);
        sub_ABACC0();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  sub_AB94A0(v24);
  return v21;
}

uint64_t sub_8F816C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_19Tm_0()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_8F82CC()
{

  return swift_deallocObject();
}

uint64_t sub_8F836C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_8F8438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8F84A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F8510@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8F8544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8F8630()
{
  sub_8FD21C();

  return sub_AB38E0();
}

uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)()
{
  if (sub_AB38C0())
  {
    return 0;
  }

  else
  {
    return sub_AB9160() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)()
{
  if (sub_AB38C0())
  {
    return 0;
  }

  else
  {
    return sub_AB9150() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v34 = a5;
  v33 = sub_ABA9C0();
  v8 = *(v33 - 8);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v31 = *(a4 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_ABB650();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v29 - v18;
  if ((*(v12 + 48))(a1, 1, a3, v17) != 1)
  {
    (*(v8 + 8))(v32, v33);
    v25 = *(v12 + 32);
    v25(v14, a1, a3);
    v25(v19, v14, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v24 = v34;
    (*(v16 + 32))(v34, v19, v15);
    v23 = 0;
    return (*(v16 + 56))(v24, v23, 1, v15);
  }

  v20 = sub_ABA9C0();
  (*(*(v20 - 8) + 8))(a1, v20);
  v21 = v33;
  (*(v8 + 32))(v10, v32, v33);
  v22 = v31;
  if ((*(v31 + 48))(v10, 1, a4) != 1)
  {
    v26 = *(v22 + 32);
    v27 = v30;
    v26(v30, v10, a4);
    v26(v19, v27, a4);
    goto LABEL_6;
  }

  (*(v8 + 8))(v10, v21);
  v23 = 1;
  v24 = v34;
  return (*(v16 + 56))(v24, v23, 1, v15);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  if (sub_AB9C70() > a1 && __OFSUB__(sub_AB9C70(), a1))
  {
    __break(1u);
  }

  return sub_AB9690();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_8F8C60, 0, 0);
}

uint64_t sub_8F8C60()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_8F8D4C;
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 8, 0, 0, &unk_B37760, v1, v5);
}

uint64_t sub_8F8D4C()
{

  return _swift_task_switch(sub_5C7400, 0, 0);
}

uint64_t sub_8F8E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  v8[14] = swift_task_alloc();
  sub_ABA9C0();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_8F9098, 0, 0);
}

uint64_t sub_8F9098()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  sub_AB95A0();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    sub_ABAA00();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = sub_AB9990();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = sub_AB9900();

    sub_8F9528(v4, &unk_B37900, v12, v13);
    sub_8D3734(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_8F9340(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17BD0;

  return sub_8F8E64(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_8F941C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_17BD0;

  return v11(a1, a6);
}

uint64_t sub_8F9528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  sub_8D2EA4(a1, v22 - v11);
  v13 = sub_AB9990();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_8D3734(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_AB98B0();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_AB9980();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_ABA9C0();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_8F97F4, 0, 0);
}

void sub_8F97F4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = sub_AB9C70();
  v9 = sub_8D02A0(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_8F99C4;

  JUMPOUT(0x8FAC8CLL);
}

uint64_t sub_8F99C4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_8F9C10;
  }

  else
  {

    v2 = sub_8F9AE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8F9AE0()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_AB9870();

  swift_getWitnessTable();
  v4 = sub_AB95C0();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_8F9C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8F9C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_ABA9C0();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_ABA9C0();
  v8[21] = swift_task_alloc();
  v8[22] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_E20060);
  v12 = sub_AB9A50();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = sub_ABA9C0();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = sub_ABB050();
  v8[32] = swift_task_alloc();
  v14 = sub_ABB040();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_8FA038, 0, 0);
}

uint64_t sub_8FA038()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  sub_AB95D0();
  sub_ABB020();
  v24 = v3;
  v25 = v2;
  v26 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    sub_ABB030();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v26 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v30 = *(v0 + 80);
    v12 = *(v0 + 48);
    v29 = *(v0 + 40);
    v28 = *v8;
    v13 = *(v25 + 48);
    v14 = sub_AB9990();
    v27 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v24 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v24 + 80) + 80) & ~*(v24 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v27;
    *(v17 + 48) = v30;
    *(v17 + 56) = v28;
    *(v17 + 64) = v29;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    sub_AB9A60();

    sub_8FAAB8(v9, &unk_B378F0, v17);
    sub_8D3734(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_AB9A30();
  *(v0 + 288) = sub_AB9870();
  sub_AB97B0();
  UIScreen.Dimensions.size.getter(v18);
  sub_AB97B0();
  UIScreen.Dimensions.size.getter(v19);
  v20 = swift_task_alloc();
  *(v0 + 296) = v20;
  *v20 = v0;
  v20[1] = sub_8FA3A4;
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v22, 0, 0, v21, v0 + 16);
}

uint64_t sub_8FA3A4()
{

  if (v0)
  {
    v1 = sub_8FA76C;
  }

  else
  {
    v1 = sub_8FA4B4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_8FA4B4()
{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[7];
    v10 = *v1;
    v11 = *(v2 + 48);
    v12 = *(v8 - 8);
    (*(v12 + 32))(v5, v1 + v11, v8);
    (*(v12 + 56))(v5, 0, 1, v8);
    sub_AB97B0();
    sub_8D024C(v10, *v9);
    v13 = (*(v6 + 40))(*v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5, v7);
    UIScreen.Dimensions.size.getter(v13);
    v14 = swift_task_alloc();
    v0[37] = v14;
    *v14 = v0;
    v14[1] = sub_8FA3A4;
    v15 = v0[23];
    v16 = v0[21];

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, 0, 0, v15, v0 + 2);
  }
}

uint64_t sub_8FA76C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_8FA86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_8FA89C, 0, 0);
}

uint64_t sub_8FA89C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_8FA9C4;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_8FA9C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_8FAAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_8D2EA4(a1, v18 - v8);
  v10 = sub_AB9990();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_8D3734(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_AB98B0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_AB9980();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_8FAC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_17BD0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  sub_AB9610();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v37 = *(a3 - 8);
  v4 = __chkstk_darwin(a1);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v30 - v6;
  v34 = v7;
  v8 = type metadata accessor for DisplayUnit();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = __chkstk_darwin(TupleTypeMetadata2);
  v19 = &v30 - v18;
  v20 = *(v17 + 48);
  v33 = v9;
  v21 = *(v9 + 16);
  v21(&v30 - v18, v35, v8);
  v21(&v19[v20], v36, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21(v14, v19, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v37;
      v28 = v31;
      (*(v37 + 32))(v31, &v19[v20], a3);
      v24 = sub_AB91C0();
      v25 = *(v27 + 8);
      v25(v28, a3);
      v26 = v14;
      goto LABEL_6;
    }

LABEL_8:
    (*(v37 + 8))(v14, a3);
    v24 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v21(v12, v19, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = v12;
    goto LABEL_8;
  }

  v22 = v37;
  v23 = v32;
  (*(v37 + 32))(v32, &v19[v20], a3);
  v24 = sub_AB91C0();
  v25 = *(v22 + 8);
  v25(v23, a3);
  v26 = v12;
LABEL_6:
  v25(v26, a3);
  v16 = v33;
LABEL_9:
  (*(v16 + 8))(v19, v8);
  return v24 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_ABB010();
  sub_AB9C40();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_ABB000();
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_ABB010();
  sub_ABB010();
  sub_AB90C0();
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v7, v8);
  ClosedRange<>.normalize(_:)(v6, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Array.extract(_:)()
{

  swift_getWitnessTable();
  result = sub_ABAE80();
  if (!v0)
  {
    v2 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_AB9DC0();
    return v2;
  }

  return result;
}

uint64_t Array.extractFirst(where:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  swift_getWitnessTable();
  sub_AB9CC0();

  if (!v2)
  {
    if (v6)
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
    }

    else
    {
      sub_AB9840();
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 0, 1);
    }
  }

  return result;
}

uint64_t Array.removingDuplicates<A>(with:)()
{
  sub_AB8FB0();
  sub_AB9870();

  swift_getWitnessTable();
  v0 = sub_ABAE80();

  return v0;
}

uint64_t sub_8FBA7C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_AB9BF0();
  v8 = sub_AB9BA0();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin(a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_AB8FB0();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = sub_AB9620();

  return v12;
}

uint64_t sub_8FBD40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_AB9BF0();
  v8 = sub_AB9BA0();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_8FBEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = a3(v12, v9);
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(sub_8FD310, v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  sub_AB9870();

  swift_getWitnessTable();
  v7 = sub_AB9C00();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(sub_8FD2A8, v8, a2, a3);

  return v9;
}

uint64_t sub_8FC118()
{
  swift_getAssociatedTypeWitness();
  sub_AB9870();
  swift_getWitnessTable();
  return sub_AB96B0() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin(a1);
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return sub_AB9620();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_8FCDA0, v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_8FCE20, v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(sub_8FCE0C, v4, a2, a3);
}

uint64_t Sequence.firstNonNil<A>(_:)()
{
  v0 = sub_ABADD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_AB9600();
  swift_getWitnessTable();
  v4 = sub_AB95C0();
  (*(v1 + 8))(v3, v0);
  v6 = v4;
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9CF0();
}

uint64_t Sequence.firstNonNilWithOriginal<A>(_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)();
}

uint64_t sub_8FC720@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25[0] = a5;
  v25[1] = a3;
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - v12;
  v14 = *(a4 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v16);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v18, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v21((a6 + v24), v18, a4);
    return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
  }
}

void sub_8FCAE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  JUMPOUT(0x8F9C84);
}

uint64_t sub_8FCEC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8FCF28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_8FD034(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_8FD21C()
{
  result = qword_E20F20[0];
  if (!qword_E20F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E20F20);
  }

  return result;
}

uint64_t sub_8FD270()
{

  return swift_deallocObject();
}

uint64_t sub_8FD2A8()
{
  swift_getAssociatedTypeWitness();

  return sub_AB9BD0();
}

uint64_t sub_8FD31C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void sub_8FD404()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  JUMPOUT(0x8FA86CLL);
}

uint64_t sub_8FD560()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_8FD648(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_17CF8;

  return sub_8F941C(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_8FD78C()
{

  return swift_deallocObject();
}

uint64_t sub_8FD7C4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

uint64_t Text.withChevron<A>(_:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = sub_AB6350();
  __chkstk_darwin(v11 - 8);
  v12 = sub_AB9260();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:a1];

  if (v13)
  {
    sub_AB6340();
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_AB6330(v32);
    v33._countAndFlagsBits = 41154;
    v33._object = 0xA200000000000000;
    sub_AB6320(v33);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_AB6330(v34);
    v14 = [v13 imageWithRenderingMode:2];
    sub_AB7520();
    sub_AB6310();

    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_AB6330(v35);
    sub_AB6370();
    v15 = sub_AB6F00();
    v17 = v16;
    v19 = v18;
    v20 = sub_AB6E20();
    v22 = v21;
    v24 = v23;
    sub_36B74(v15, v17, v19 & 1);

    v25 = sub_AB6E50();
    a3 = v26;
    v28 = v27;
    a5 = v29;

    sub_36B74(v20, v22, v24 & 1);

    *a6 = v25;
  }

  else
  {
    *a6 = a2;
    v28 = a4;
    sub_AFF30(a2, a3, a4 & 1);
  }

  *(a6 + 8) = a3;
  *(a6 + 16) = v28 & 1;
  *(a6 + 24) = a5;
  return result;
}

uint64_t Text.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2)
{
  v4 = __chkstk_darwin(a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v4);
  if (swift_dynamicCast())
  {
    if (a2)
    {
      v8 = v10[7];
    }

    else
    {
      v8 = sub_AB6750();
    }

    v10[3] = v8;
  }

  return sub_AB6E20();
}

uint64_t View.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlayableForegroundStyle();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  (*(v8 + 32))(v15, v10, a4);
  v15[*(v11 + 36)] = a2;
  sub_AB7310();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_8FDEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  swift_getWitnessTable();
  v6 = sub_AB6710();
  v7 = *(a2 + 16);
  v59[2] = *(a2 + 24);
  v72 = sub_AB6820();
  v8 = sub_AB5D50();
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E20FA8);
  v12 = v6;
  v13 = sub_AB5D50();
  v64 = *(v13 - 8);
  __chkstk_darwin(v13);
  v61 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  __chkstk_darwin(v18);
  v60 = v59 - v19;
  v20 = *(v7 - 8);
  __chkstk_darwin(v21);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v24;
  v25 = sub_AB6620();
  v69 = *(v25 - 8);
  v70 = v25;
  v26 = __chkstk_darwin(v25);
  v28 = v59 - v27;
  v29 = v4;
  (*(v20 + 16))(v23, v4, v7, v26);
  v30 = swift_dynamicCast();
  v66 = v12;
  if (v30)
  {
    v31 = v68;
    v65 = v28;
    v32 = *(v29 + *(a2 + 36));
    v59[1] = v8;
    if (v32)
    {
      v33 = v87;
    }

    else
    {
      v33 = sub_AB6720();
    }

    v87 = v33;
    WitnessTable = swift_getWitnessTable();
    sub_AB70C0();
    v44 = sub_8FED78();
    v75 = WitnessTable;
    v76 = v44;
    v67 = swift_getWitnessTable();
    v45 = v64;
    v46 = *(v64 + 16);
    v47 = v60;
    v46(v60, v17, v31);
    v48 = *(v45 + 8);
    v48(v17, v31);
    v49 = v61;
    v46(v61, v47, v31);
    v50 = swift_getWitnessTable();
    v73 = WitnessTable;
    v74 = v50;
    swift_getWitnessTable();
    v28 = v65;
    sub_8FE5F8(v49, v31);
    v48(v49, v31);
    v48(v47, v31);
  }

  else
  {
    v34 = swift_getWitnessTable();
    v35 = v62;
    sub_AB70C0();
    v36 = swift_getWitnessTable();
    v85 = v34;
    v86 = v36;
    v67 = swift_getWitnessTable();
    v37 = v65;
    v38 = *(v65 + 2);
    v39 = v63;
    v38(v63, v35, v8);
    v40 = *(v37 + 1);
    v40(v35, v8);
    v38(v35, v39, v8);
    v41 = sub_8FED78();
    v83 = v34;
    v84 = v41;
    v42 = v68;
    swift_getWitnessTable();
    sub_8FE6F0(v35, v42, v8);
    v40(v35, v8);
    v40(v39, v8);
  }

  v51 = swift_getWitnessTable();
  v52 = sub_8FED78();
  v81 = v51;
  v82 = v52;
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v79 = v51;
  v80 = v54;
  v55 = swift_getWitnessTable();
  v77 = v53;
  v78 = v55;
  v56 = v70;
  swift_getWitnessTable();
  v57 = v69;
  (*(v69 + 16))(v71, v28, v56);
  return (*(v57 + 8))(v28, v56);
}

uint64_t sub_8FE5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB6600();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t sub_8FE6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB6600();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t _UIHostingView.init(content:)(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return sub_AB5C30();
}

uint64_t sub_8FE888()
{
  type metadata accessor for PlayableForegroundStyle();
  sub_AB5D50();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8FE91C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8FE994(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_8FEB08(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_8FED78()
{
  result = qword_E20FB0;
  if (!qword_E20FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E20FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20FB0);
  }

  return result;
}

uint64_t sub_8FEDDC()
{
  type metadata accessor for PlayableForegroundStyle();
  swift_getWitnessTable();
  sub_AB6710();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E20FA8);
  sub_AB5D50();
  sub_AB6820();
  sub_AB5D50();
  sub_AB6620();
  swift_getWitnessTable();
  sub_8FED78();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id TextKitManager.container.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TextKitManager.container.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t TextKitManager.fragments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TextKitManager.__allocating_init(text:size:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  TextKitManager.init(text:size:)(a1, a2);
  return v4;
}

uint64_t TextKitManager.init(text:size:)(void *a1, double a2)
{
  v2[5] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(NSTextLayoutManager) init];
  [v5 setUsesFontLeading:0];
  isa = sub_AB9890().super.super.isa;
  v7 = sub_AB9260();
  [v5 setValue:isa forKey:v7];

  v2[2] = v5;
  v8 = objc_allocWithZone(NSTextContentStorage);
  v9 = v5;
  v10 = [v8 init];
  [v10 setAttributedString:a1];
  [v10 addTextLayoutManager:v9];
  v2[3] = v10;
  v11 = objc_allocWithZone(NSTextContainer);
  v12 = v10;
  v13 = [v11 initWithSize:{a2, 0.0}];
  [v13 setLineFragmentPadding:0.0];
  v14 = v13;
  [v9 setTextContainer:v14];
  v2[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_9007D8;
  *(v15 + 24) = v2;
  v19[4] = sub_9003AC;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_8FF3CC;
  v19[3] = &block_descriptor_240;
  v16 = _Block_copy(v19);

  v17 = [v9 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_8FF3CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_8FF410(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_AB9730();
  if (*(&dword_10 + (*(a2 + 40) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + 40) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return 1;
}

Swift::Void __swiftcall TextKitManager.update(with:)(NSAttributedString with)
{
  [*(v1 + 24) setAttributedString:with.super.isa];
  v2 = *(v1 + 16);
  v3 = [v2 documentRange];
  [v2 invalidateLayoutForRange:v3];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v4 = swift_allocObject();
  *(v4 + 16) = sub_9003F0;
  *(v4 + 24) = v1;
  aBlock[4] = sub_9007DC;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8FF3CC;
  aBlock[3] = &block_descriptor_7_2;
  v5 = _Block_copy(aBlock);

  v6 = [v2 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v5];
  swift_unknownObjectRelease();
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t TextKitManager.update(with:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  [v3 size];
  [v3 setSize:a1];

  v4 = *(v1 + 16);
  v5 = [v4 documentRange];
  [v4 invalidateLayoutForRange:v5];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v6 = swift_allocObject();
  *(v6 + 16) = sub_9007D8;
  *(v6 + 24) = v1;
  v10[4] = sub_9007DC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_8FF3CC;
  v10[3] = &block_descriptor_15_5;
  v7 = _Block_copy(v10);

  v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void *TextKitManager.linesWithFrames()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v45 = v1 & 0xC000000000000001;
  v42 = v1 + 32;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v44 = v2;
  do
  {
    if (v45)
    {
      v1 = sub_ABAE20();
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v1 = *(v42 + 8 * v3);
    }

    v5 = v1;
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (v6)
    {
      goto LABEL_33;
    }

    v46 = v7;
    v8 = [v1 textLineFragments];
    sub_13C80(0, &qword_E20FB8);
    v9 = sub_AB9760();

    if (v9 >> 62)
    {
      v1 = sub_ABB060();
      v10 = v1;
      if (v1)
      {
LABEL_12:
        if (v10 < 1)
        {
          goto LABEL_34;
        }

        for (i = 0; v10 != i; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_ABAE20();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 typographicBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v13 boundsWithType:2 options:0];
          v23 = v22;
          v47.origin.x = v15;
          v47.origin.y = v17;
          v47.size.width = v19;
          v47.size.height = v21;
          Height = CGRectGetHeight(v47);
          [v5 layoutFragmentFrame];
          v26 = v25;
          [v5 layoutFragmentFrame];
          v28 = v27;
          v29 = [v13 characterRange];
          v31 = v30;
          v32 = [v5 rangeInElement];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 range];

            v6 = __OFADD__(v29, v34);
            v29 = &v34[v29];
            if (v6)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v40 = v1;
              v2 = sub_ABB060();
              v1 = v40;
              if (!v2)
              {
                return _swiftEmptyArrayStorage;
              }

              goto LABEL_3;
            }
          }

          else
          {
          }

          v35 = v15 + v26;
          v36 = v17 + v28 - (v23 - Height);
          v48.origin.x = v35;
          v48.origin.y = v36;
          v48.size.width = v19;
          v48.size.height = v23;
          if (CGRectGetWidth(v48) <= 0.0)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_8D835C(0, v4[2] + 1, 1, v4);
            }

            v38 = v4[2];
            v37 = v4[3];
            if (v38 >= v37 >> 1)
            {
              v4 = sub_8D835C((v37 > 1), v38 + 1, 1, v4);
            }

            v4[2] = v38 + 1;
            v39 = &v4[7 * v38];
            *(v39 + 4) = v13;
            v39[5] = v35;
            v39[6] = v36;
            v39[7] = v19;
            v39[8] = v23;
            *(v39 + 9) = v29;
            *(v39 + 10) = v31;
          }
        }
      }
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v3 = v46;
  }

  while (v46 != v44);

  return v4;
}

uint64_t TextKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_8FFCC0(void *a1)
{
  *&v1[OBJC_IVAR____TtCCE14MusicUtilitiesCSo20NSTextLayoutFragment4View13FragmentLayer_fragment] = a1;
  v16.receiver = v1;
  v16.super_class = _s4ViewC13FragmentLayerCMa();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, "init");
  [v3 renderingSurfaceBounds];
  [v4 setBounds:?];
  [v4 bounds];
  v6 = -v5;
  [v4 bounds];
  v8 = v6 / v7;
  [v4 bounds];
  v10 = -v9;
  [v4 bounds];
  [v4 setAnchorPoint:{v8, v10 / v11}];
  [v3 layoutFragmentFrame];
  [v4 setPosition:?];
  v12 = [objc_opt_self() currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  [v4 setContentsScale:v14];
  [v4 setNeedsDisplay];

  return v4;
}

uint64_t NSTextLayoutFragment.View.__allocating_init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_900410(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  sub_900410(a1, a2);
  v4 = v3;

  return v4;
}

id NSTextLineFragment.View.__allocating_init(line:size:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v9 setOpaque:{0, v11.receiver, v11.super_class}];

  return v9;
}

id NSTextLineFragment.View.init(line:size:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NSTextLineFragment.View();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v8 setOpaque:{0, v10.receiver, v10.super_class}];

  return v8;
}

void NSTextLineFragment.View.draw(_:)()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    [*(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line) drawAtPoint:0.0 inContext:0.0];
  }
}

id sub_900354(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t block_copy_helper_240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_900410(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCE14MusicUtilitiesCSo20NSTextLayoutFragment4View_fragments] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for NSTextLayoutFragment.View();

  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (a2)
  {
    v6 = kCAFilterColorMonochrome;
    v7 = objc_allocWithZone(CAFilter);
    v8 = a2;
    v9 = [v7 initWithType:{v6, v25.receiver, v25.super_class}];
    isa = sub_AB9C10().super.super.isa;
    [v9 setValue:isa forKey:kCAFilterInputBias];

    v11 = sub_AB9C10().super.super.isa;
    [v9 setValue:v11 forKey:kCAFilterInputAmount];

    v12 = [v8 CGColor];
    [v9 setValue:v12 forKey:kCAFilterInputColor];

    v13 = [v5 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20D58);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF4EC0;
    *(v14 + 56) = sub_13C80(0, &qword_E21158);
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = sub_AB9740().super.isa;

    [v13 setFilters:v16];
  }

  if (!(a1 >> 62))
  {
    v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v5 setOpaque:0];
    return;
  }

  v17 = sub_ABB060();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = sub_ABAE20();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = objc_allocWithZone(_s4ViewC13FragmentLayerCMa());
      v22 = v20;
      v23 = sub_8FFCC0(v22);
      v24 = [v5 layer];
      [v24 addSublayer:v23];
    }

    while (v17 != v18);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_9007E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2845A4(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

size_t sub_900870@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_907ED8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_9070C8(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_900990(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_ABB060();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_ABAE20();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_13C80(0, &qword_E211E8);
    v8 = sub_ABA790();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_900B00(id *a1, void *a2)
{
  result = [*a1 customView];
  if (result)
  {
    v4 = result;
    sub_13C80(0, &qword_E21208);
    v5 = a2;
    v6 = sub_ABA790();

    return (v6 & 1);
  }

  return result;
}

void *sub_900BC0(unint64_t a1, unint64_t a2)
{
  v14 = a1;
  v17 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    v15 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_ABAE20();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 customView];
      if (v8 && (v16 = v8, __chkstk_darwin(v8), v13[2] = &v16, v10 = v9, v11 = sub_911008(sub_907044, v13, v14), v10, (v11 & 1) != 0))
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Collection<>.all(embedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __chkstk_darwin(a1);
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return sub_AB9620();
}

uint64_t sub_900E64(id *a1, unint64_t a2)
{
  v3 = [*a1 customView];
  if (v3)
  {
    v9 = v3;
    __chkstk_darwin(v3);
    v8[2] = &v9;
    v5 = v4;
    v6 = sub_911008(sub_907148, v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *UINavigationItem.existingBarButtonItems(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 rightBarButtonItems];
  if (v4)
  {
    v5 = v4;
    sub_13C80(0, &qword_E21160);
    v6 = sub_AB9760();

    v7 = sub_900BC0(a1, v6);

    sub_8E3994(v7);
  }

  v8 = [v2 leftBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_13C80(0, &qword_E21160);
    v10 = sub_AB9760();

    v11 = sub_900BC0(a1, v10);

    sub_8E3994(v11);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  sub_13C80(0, &qword_E21168);
  v5 = sub_AB9760();

  if (!(v5 >> 62))
  {
    result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = sub_ABB060();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_ABAE20();
    goto LABEL_11;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void UICollectionView.register<A>(_:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_AB9260();
  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

void UICollectionView.register<A>(_:ofKind:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_AB9260();
  v3 = sub_AB9260();
  [v0 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v2 withReuseIdentifier:v3];
}

uint64_t UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)()
{
  v1 = sub_AB9260();
  isa = sub_AB3770().super.isa;
  v3 = [v0 dequeueReusableCellWithReuseIdentifier:v1 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_ABAD90(38);

    v5._countAndFlagsBits = sub_ABB6D0();
    sub_AB94A0(v5);

    v6._countAndFlagsBits = 544497952;
    v6._object = 0xE400000000000000;
    sub_AB94A0(v6);
    sub_AB3820();
    sub_906B68(&qword_E20D80, &type metadata accessor for IndexPath);
    v7._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v7);

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)()
{
  v1 = sub_AB9260();
  v2 = sub_AB9260();
  isa = sub_AB3770().super.isa;
  v4 = [v0 dequeueReusableSupplementaryViewOfKind:v1 withReuseIdentifier:v2 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_ABAD90(52);
    v6._object = 0x8000000000B79650;
    v6._countAndFlagsBits = 0xD00000000000002CLL;
    sub_AB94A0(v6);
    v7._countAndFlagsBits = sub_ABB6D0();
    sub_AB94A0(v7);

    v8._countAndFlagsBits = 544497952;
    v8._object = 0xE400000000000000;
    sub_AB94A0(v8);
    sub_AB3820();
    sub_906B68(&qword_E20D80, &type metadata accessor for IndexPath);
    v9._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v9);

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.globalIndex(for:)()
{
  v1 = [v0 numberOfSections];
  result = sub_AB37F0();
  if (__OFADD__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result + 1 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = result + 1;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v0 numberOfItemsInSection:v4];
    result = sub_AB37F0();
    if (v4 == result)
    {
      goto LABEL_13;
    }

    ++v4;
    v7 = __OFADD__(v5, v6);
    v5 += v6;
  }

  while (!v7);
  __break(1u);
LABEL_13:
  if (sub_AB37E0() >= v6)
  {
    return 0;
  }

  v8 = sub_AB37E0();
  v7 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v7)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E211E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_AB3820();
  v10 = *(*(v9 - 8) + 56);
  v10(a2, 1, 1, v9);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v12 = result;
    v18 = a2;
    v13 = 0;
    v14 = 0;
    while (v12 != v13)
    {
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v15 = v14;
      result = [v3 numberOfItemsInSection:v13];
      v14 = v15 + result;
      if (__OFADD__(v15, result))
      {
        goto LABEL_11;
      }

      ++v13;
      if (v14 > a1)
      {
        result = a1 - v15;
        if (__OFSUB__(a1, v15))
        {
          goto LABEL_13;
        }

        sub_AB37C0();
        v16 = v18;
        sub_12E1C(v18, &qword_E211E0);
        v10(v8, 0, 1, v9);
        return sub_9061C0(v8, v16);
      }
    }
  }

  return result;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *UICollectionView.isLast(indexPath:)()
{
  v1 = v0;
  v2 = sub_AB37F0();
  result = [v0 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v2 != result - 1)
    {
      return 0;
    }

    v4 = sub_AB37E0();
    result = [v1 numberOfItemsInSection:v2];
    if (!__OFSUB__(result, 1))
    {
      return (v4 == (result - 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_AB9260();
  v6 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:v5];

  sub_AB3820();
  v7 = sub_AB9760();

  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v2;

  return v7;
}

void sub_901B84(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21248) + 48);
  v7 = sub_AB3820();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = sub_AB9260();
  isa = sub_AB3770().super.isa;
  v10 = [a2 supplementaryViewForElementKind:v8 atIndexPath:isa];

  *(a3 + v6) = v10;
}

id UICollectionView.clearSelection(using:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 indexPathsForSelectedItems];
  if (result)
  {
    v11 = result;
    v12 = sub_AB9760();

    if (a1)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v3;
      *(v13 + 32) = a2 & 1;
      v31 = sub_906284;
      v32 = v13;
      aBlock = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_CF24C;
      v30 = &block_descriptor_241;
      v14 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v15 = v3;

      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v15;
      v31 = sub_9062FC;
      v32 = v16;
      aBlock = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_CF24C;
      v30 = &block_descriptor_9_7;
      v17 = _Block_copy(&aBlock);
      v18 = v15;

      [a1 animateAlongsideTransition:v14 completion:v17];
      _Block_release(v17);
      _Block_release(v14);
      return swift_unknownObjectRelease();
    }

    else
    {
      v19 = *(v12 + 16);
      if (v19)
      {
        v21 = *(v7 + 16);
        v20 = v7 + 16;
        v25 = v12;
        v26 = v21;
        v22 = v12 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
        v23 = *(v20 + 56);
        do
        {
          v26(v9, v22, v6);
          isa = sub_AB3770().super.isa;
          [v3 deselectItemAtIndexPath:isa animated:{a2 & 1, v25}];

          (*(v20 - 8))(v9, v6);
          v22 += v23;
          --v19;
        }

        while (v19);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_901F94(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6);
      isa = sub_AB3770().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v19 & 1];

      result = (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

id sub_9020E4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if (result)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      v14 = *(v7 + 16);
      v12 = v7 + 16;
      v13 = v14;
      v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v16 = *(v12 + 56);
      do
      {
        v13(v9, v15, v6);
        isa = sub_AB3770().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v12 - 8))(v9, v6);
        v15 += v16;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t UICollectionView.isDraggingCell(at:)()
{
  v1 = v0;
  v2 = sub_AB4DD0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_AB4E30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_AB3770().super.isa;
  v14 = [v1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v15 = [v14 _bridgedConfigurationState];
    sub_AB4E00();

    sub_AB4DE0();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v6, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    v16 = sub_AB4DC0();

    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v8, v2);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

id UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id UIColor.interpolate(to:ratio:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v12 blue:&v10 alpha:&v8];
  [a1 getRed:&v13 green:&v11 blue:&v9 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v13 green:(1.0 - v5) * v12 + v5 * v11 blue:(1.0 - v5) * v10 + v5 * v9 alpha:(1.0 - v5) * v8 + v5 * v7];
}

double UIColor.hsba.getter()
{

  return sub_90273C(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgba.getter()
{

  return sub_90273C(&selRef_getRed_green_blue_alpha_);
}

double sub_90273C(SEL *a1)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return v6;
}

UIImage_optional __swiftcall UIImage.init(systemName:font:scale:)(Swift::String systemName, UIFont font, UIImageSymbolScale scale)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_AB9260();

  v7 = [objc_opt_self() configurationWithFont:font.super.isa scale:scale];
  v8 = [ObjCClassFromMetadata systemImageNamed:v6 withConfiguration:v7];

  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id UIImage.init(systemName:pointSize:weight:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_AB9260();

  v8 = [objc_opt_self() configurationWithPointSize:a4 weight:a1];
  v9 = [ObjCClassFromMetadata systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

UIImage_optional __swiftcall UIImage.byCroppingToUniformCenter()()
{
  v1 = v0;
  v2 = v0;
  [(CGImage *)v2 size];
  v4 = v3;
  v6 = v5;
  if (sub_AB38D0())
  {
    if (v6 >= v4)
    {
      v9 = round((v6 - v4) * 0.5);
      v8 = 0.0;
      v10 = v4;
      v11 = v4;
    }

    else
    {
      v8 = round((v4 - v6) * 0.5);
      v9 = 0.0;
      v10 = v6;
      v11 = v6;
    }

    v1 = UIImage.byCropping(to:)(v8, v9, v10, v11);
  }

  v12 = v1;
  result.value.super.isa = v12;
  result.is_nil = v7;
  return result;
}

CGImage *UIImage.byCropping(to:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v11 = result;
    _s3__C6CGSizeVMa_1(0);
    if ((sub_AB38D0() & 1) == 0)
    {
      goto LABEL_7;
    }

    [v4 scale];
    v13 = v12;
    v14 = sub_AB38D0();
    v15 = v13 * a1;
    v16 = v13 * a2;
    v17 = v13 * a3;
    v18 = v13 * a4;
    if ((v14 & 1) == 0)
    {
      v18 = a4;
      v17 = a3;
      v16 = a2;
      v15 = a1;
    }

    v19 = CGImageCreateWithImageInRect(v11, *&v15);
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:objc_msgSend(v5 orientation:{"imageOrientation", 0x3FF0000000000000), v13}];

      return v21;
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

UIViewController_optional __swiftcall UINavigationController.removeViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = [v2 viewControllers];
  sub_13C80(0, &qword_E211E8);
  v7 = sub_AB9760();

  v8 = sub_900990(_.super.super.isa, v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_9007E0(v8);
    isa = sub_AB9740().super.isa;

    [v3 setViewControllers:isa animated:animated];

    v11 = v12;
  }

  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

double UIScrollView.normalizedContentOffset.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  [v0 contentOffset];
  return v2 + v3;
}

id UIScrollView.isScrolling.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, "isDecelerating") & 1) != 0 || (objc_msgSend(v0, "_isVerticalBouncing"))
  {
    return &dword_0 + 1;
  }

  else
  {
    return [v0 _isHorizontalBouncing];
  }
}

id UIView.forAutolayout.getter()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

void UIView.Shadow.hash(into:)()
{
  sub_ABA7A0();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
  v2 = v0[2];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = v0[3];
  v4 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_ABB600(*&v5);
}

Swift::Int UIView.Shadow.hashValue.getter()
{
  sub_ABB5C0();
  UIView.Shadow.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_902F7C()
{
  sub_ABB5C0();
  UIView.Shadow.hash(into:)();
  return sub_ABB610();
}

BOOL sub_902FB8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_13C80(0, &unk_E211F0);
  v10 = sub_ABA790();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

id UIView.shadowPathIsBounds.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPathIsBounds];

  return v2;
}

void UIView.shadowPathIsBounds.setter(char a1)
{
  v3 = [v1 layer];
  [v3 setShadowPathIsBounds:a1 & 1];
}

void (*UIView.shadowPathIsBounds.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 layer];
  v4 = [v3 shadowPathIsBounds];

  *(a1 + 8) = v4;
  return sub_903194;
}

void sub_903194(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 layer];
  [v2 setShadowPathIsBounds:v1];
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  sub_9065A8(a1);

  return sub_9066CC(a1);
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return sub_903418;
}

void sub_903418(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_9066FC(v2, (v2 + 120));
    sub_9065A8(v2);
    sub_9066CC(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    sub_9065A8((v2 + 40));
    sub_9066CC((v2 + 40));
  }

  free(v2);
}

uint64_t UIView.Border.init(view:)(void *a1)
{
  v2 = sub_906734(a1);

  return v2;
}

uint64_t UIView.border.getter()
{
  v1 = v0;
  v2 = sub_906734(v1);

  return v2;
}

void UIView.border.setter(uint64_t a1, char a2, void *a3)
{
  sub_906844(a1, a2, a3);
}

void (*UIView.border.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1;
  v4 = sub_906734(v3);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return sub_903634;
}

void sub_903634(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v4 = v6;
    sub_906844(v2, v3, v6);

    v5 = v4;
  }

  else
  {
    sub_906844(v2, v3, v6);
    v5 = v6;
  }
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

id UIView.untransformedFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

void (*UIView.untransformedFrame.modify(uint64_t *a1))(CGFloat **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = UIView.untransformedFrame.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_9039DC;
}

void sub_9039DC(CGFloat **a1)
{
  v1 = *a1;
  UIView.untransformedFrame.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

float UIView.contentCompressionResistancePriority.getter()
{
  [v0 contentCompressionResistancePriorityForAxis:0];
  v2 = v1;
  [v0 contentCompressionResistancePriorityForAxis:1];
  return v2;
}

float UIView.CompressionResistancePriority.init(view:)(void *a1)
{
  [a1 contentCompressionResistancePriorityForAxis:0];
  v3 = v2;
  [a1 contentCompressionResistancePriorityForAxis:1];

  return v3;
}

id UIView.contentCompressionResistancePriority.setter(double a1, float a2)
{
  [v2 setContentCompressionResistancePriority:0 forAxis:?];
  *&v4 = a2;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

id (*UIView.contentCompressionResistancePriority.modify(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 contentCompressionResistancePriorityForAxis:0];
  v4 = v3;
  [v1 contentCompressionResistancePriorityForAxis:1];
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return sub_903BAC;
}

id sub_903BAC(uint64_t a1, double a2)
{
  v2 = *a1;
  LODWORD(a2) = *(a1 + 8);
  v3 = *(a1 + 12);
  [*a1 setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v4) = v3;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

UIImage *UIView.screenshot.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 isOpaque];
  v8.width = v2;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, v5, 0.0);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v6;
}

Swift::Void __swiftcall UIView.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 viewWithTag:1234];
  if (v4)
  {
    isa = v4;
    [v1 bringSubviewToFront:?];
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
    [v5 setBackgroundColor:v6];

    v7 = with.super.isa;
    sub_906844(0x3FF0000000000000, 1, with.super.isa);

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTag:1234];
    [v5 setUserInteractionEnabled:0];
    [v2 addSubview:v5];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF93E0;
    v10 = [v5 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v5 bottomAnchor];
    v14 = [v2 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v5 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v5 trailingAnchor];
    v20 = [v2 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_13C80(0, &qword_E21200);
    isa = sub_AB9740().super.isa;

    [v8 activateConstraints:isa];
  }
}

uint64_t UIView.traverseViewHierarchy(_:)(uint64_t (*a1)(void *, char *), uint64_t a2)
{
  v3 = v2;
  v14 = 0;
  result = a1(v3, &v14);
  if ((v14 & 1) == 0)
  {
    v7 = [v3 subviews];
    sub_13C80(0, &qword_E21208);
    v8 = sub_AB9760();

    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_ABAE20();
        }

        else
        {
          if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v14)
        {

          goto LABEL_14;
        }

        sub_9069A8(v11, a1, a2, &v14);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

void UIView.statusBarFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 window];
  v4 = 0uLL;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 windowScene];

    if (v6)
    {
      v7 = [v6 statusBarManager];
      if (v7)
      {
        v8 = v7;
        if (([v7 isStatusBarHidden] & 1) == 0)
        {
          [v8 statusBarFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v6 screen];
          v20 = [v19 coordinateSpace];

          [v1 convertRect:v20 fromCoordinateSpace:{v12, v14, v16, v18}];
          v26 = v21;
          v27 = v22;
          v25 = v23;
          v28 = v24;

          swift_unknownObjectRelease();
          *&v10 = v25;
          *&v4 = v26;
          v9 = 0;
          *(&v4 + 1) = v27;
          *(&v10 + 1) = v28;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v9 = 1;
    v10 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v9 = 1;
    v10 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id UIView.allowsAnimatedChanges.getter()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = [v0 window];
    if (result)
    {
      v2 = result;
      v3 = [result windowScene];

      if (v3)
      {
        v4 = [v3 activationState];

        return (v4 == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall UILayoutGuide.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 owningView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewWithTag:1234];
    if (v6)
    {
      isa = v6;
      [v5 bringSubviewToFront:?];
    }

    else
    {
      v7 = [objc_allocWithZone(UIView) init];
      v8 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
      [v7 setBackgroundColor:v8];

      v9 = with.super.isa;
      sub_906844(0x3FF0000000000000, 1, with.super.isa);

      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setTag:1234];
      [v7 setUserInteractionEnabled:0];
      [v5 addSubview:v7];
      v10 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20320);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_AF93E0;
      v12 = [v7 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v7 bottomAnchor];
      v16 = [v2 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      v18 = [v7 leadingAnchor];
      v19 = [v2 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v11 + 48) = v20;
      v21 = [v7 trailingAnchor];
      v22 = [v2 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v11 + 56) = v23;
      sub_13C80(0, &qword_E21200);
      isa = sub_AB9740().super.isa;

      [v10 activateConstraints:isa];

      v5 = v7;
    }
  }
}

BOOL UIViewController.canPresentViewControllers.getter()
{
  v1 = [v0 popoverPresentationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL UIViewController.canBeDismissed.getter()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall UIViewController.dismiss(after:)(Swift::Double after)
{
  v1 = sub_AB7C10();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C80();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_13C80(0, &qword_E21210);
  v14 = sub_ABA150();
  sub_AB7C70();
  sub_AB7CE0();
  v17 = *(v8 + 8);
  v17(v11, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_906B60;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_17_6;
  v16 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_906B68(&qword_E200E8, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E21220);
  sub_8CB404();
  sub_ABABB0();
  sub_ABA110();
  _Block_release(v16);

  (*(v20 + 8))(v3, v1);
  (*(v18 + 8))(v6, v19);
  v17(v13, v7);
}

void sub_904C5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 presentedViewController];
      if (v4)
      {
        v5 = v4;
        sub_13C80(0, &unk_E211F0);
        if (sub_ABA790())
        {
          [v3 dismissViewControllerAnimated:1 completion:0];
        }

        v1 = v3;
      }

      else
      {
        v5 = v3;
      }

      v1 = v5;
    }
  }
}

Swift::Void __swiftcall UIViewController.add(_:)(UIViewController a1)
{
  [v1 addChildViewController:a1.super.super.isa];
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [(objc_class *)a1.super.super.isa view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview:v5];

        v7 = [v1 view];
        if (v7)
        {
          v8 = v7;
          [v7 setNeedsLayout];

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:

  [(objc_class *)a1.super.super.isa didMoveToParentViewController:v1];
}

Swift::Void __swiftcall UIViewController.remove(_:)(UIViewController a1)
{
  v3 = [(objc_class *)a1.super.super.isa parentViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;

  if (v4 != v1)
  {
    return;
  }

  [(objc_class *)a1.super.super.isa willMoveToParentViewController:0];
  if (![v1 isViewLoaded] || !-[objc_class isViewLoaded](a1.super.super.isa, "isViewLoaded"))
  {
    goto LABEL_11;
  }

  v5 = [(objc_class *)a1.super.super.isa view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 isDescendantOfView:v7];

  if (v9)
  {
    v10 = [(objc_class *)a1.super.super.isa view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:

  [(objc_class *)a1.super.super.isa removeFromParentViewController];
}

Swift::Bool __swiftcall UIViewController.isDescendant(of:)(UIViewController of)
{
  v3 = [v1 parentViewController];
  if (v3 && (v4 = v3, v3, v4 == of.super.super.isa))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = UIViewController.isDescendant(of:)(of);

      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

void UIViewController.traverseViewControllerHierarchy(_:)(void (*a1)(void *, _BYTE *), uint64_t a2)
{
  v44[0] = 0;
  a1(v2, v44);
  v38 = v2;
  v3 = [v2 childViewControllers];
  sub_13C80(0, &qword_E211E8);
  v4 = sub_AB9760();

  v39 = v4;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {
    swift_beginAccess();
    if (i)
    {
      v6 = 0;
      v40 = i;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v9 = sub_ABAE20();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_57;
          }

          v9 = *(v39 + 32 + 8 * v6);
        }

        v10 = v9;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (v44[0])
        {

          goto LABEL_32;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v13 = (v12 + 16);
        swift_beginAccess();
        a1(v10, v44);
        swift_endAccess();
        *(v12 + 16) = v44[0];
        v14 = [v10 childViewControllers];
        v15 = sub_AB9760();

        v41 = v10;
        if (v15 >> 62)
        {
          v16 = sub_ABB060();
        }

        else
        {
          v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        }

        swift_beginAccess();
        if (v16)
        {
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = sub_ABAE20();
            }

            else
            {
              if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_55;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (*v13 == 1)
            {

              goto LABEL_25;
            }

            sub_906BC0(v18, v12, a1, a2, v44);

            ++v17;
            if (v20 == v16)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

LABEL_25:

        swift_beginAccess();
        if (*v13 == 1)
        {

          v7 = v40;
          v8 = v41;
        }

        else
        {
          v8 = v41;
          v21 = [v41 presentedViewController];
          v7 = v40;
          if (v21)
          {
            v22 = v21;
            sub_906BC0(v21, v12, a1, a2, v44);
          }

          else
          {
          }
        }

        if (v6 == v7)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_32:

    swift_beginAccess();
    if (v44[0])
    {
      return;
    }

    v23 = [v38 presentedViewController];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = (v25 + 16);
    swift_beginAccess();
    a1(v24, v44);
    swift_endAccess();
    *(v25 + 16) = v44[0];
    v27 = [v24 childViewControllers];
    v28 = sub_AB9760();

    v29 = v24;
    v30 = v28 >> 62 ? sub_ABB060() : *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
    swift_beginAccess();
    if (!v30)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = sub_ABAE20();
      }

      else
      {
        if (v31 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_59;
        }

        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (*v26 == 1)
      {

        goto LABEL_47;
      }

      sub_906BC0(v32, v25, a1, a2, v44);

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_47:

  swift_beginAccess();
  if (*v26 == 1)
  {

    v35 = v29;
  }

  else
  {
    v35 = v29;
    v36 = [v29 presentedViewController];
    if (v36)
    {
      v37 = v36;
      sub_906BC0(v36, v25, a1, a2, v44);
    }

    else
    {
    }
  }
}

uint64_t sub_9055A0(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  a3(a1, a5);
  swift_endAccess();
  result = swift_beginAccess();
  *a2 = *a5;
  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority:*&priority.rawValue];

  return v3;
}

void UIView.constrain(to:padding:)()
{
  v0 = sub_8C926C(&off_D44398);
  sub_906384(v0, sub_906E50);

  v1 = objc_opt_self();
  sub_13C80(0, &qword_E21200);
  isa = sub_AB9740().super.isa;

  [v1 activateConstraints:isa];
}

id sub_9057A0(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  sub_906F80(a3, v20);
  v9 = v21;
  if (v21)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = a2;
    v16 = sub_ABB3A0();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v17 = a2;
    v16 = 0;
  }

  v18 = [objc_opt_self() constraintWithItem:a2 attribute:a1 relatedBy:0 toItem:v16 attribute:a1 multiplier:1.0 constant:a4 * a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t UIView.constrainToBounds(of:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 layoutMarginsGuide];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v9[3] = sub_13C80(0, &unk_E211F0);
  v9[0] = v3;
  v4 = sub_8C926C(&off_D44398);
  __chkstk_darwin(v4);
  sub_906384(v5, sub_907138);

  v6 = objc_opt_self();
  sub_13C80(0, &qword_E21200);
  isa = sub_AB9740().super.isa;

  [v6 activateConstraints:isa];

  return sub_12E1C(v9, &qword_E21230);
}

uint64_t UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  if (a2)
  {
    v5 = [v2 layoutMarginsGuide];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;
  v12[3] = sub_13C80(0, &unk_E211F0);
  v12[0] = v6;
  v7 = sub_8C926C(&off_D44398);
  __chkstk_darwin(v7);
  sub_906384(v8, sub_907138);

  v9 = objc_opt_self();
  sub_13C80(0, &qword_E21200);
  isa = sub_AB9740().super.isa;

  [v9 activateConstraints:isa];

  return sub_12E1C(v12, &qword_E21230);
}

void sub_905C34(uint64_t a1, SEL *a2)
{
  v3 = objc_opt_self();
  sub_13C80(0, &qword_E21200);
  isa = sub_AB9740().super.isa;
  [v3 *a2];
}

uint64_t NSTextAlignment.init(languageCode:)()
{
  v0 = sub_AB35A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3560();
  v4 = sub_AB3580();
  (*(v1 + 8))(v3, v0);
  v5 = 4;
  if (v4 == 2)
  {
    v5 = 2;
  }

  if (v4 == 1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall NSTextAlignment.flip()()
{
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  *v0 = v1;
}

uint64_t NSTextAlignment.ctTextAlignment.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x403010200uLL >> (8 * a1));
  }
}

uint64_t UIViewPropertyAnimator.UpdateReason.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

void *sub_905E24@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

void UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1B5EB4;
  v5[3] = &block_descriptor_26_4;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

UIViewPropertyAnimator __swiftcall UIViewPropertyAnimator.init(springTimingParameters:)(UISpringTimingParameters springTimingParameters)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  [(objc_class *)springTimingParameters.super.isa settlingDuration];
  v3 = [v2 initWithDuration:springTimingParameters.super.isa timingParameters:?];

  return v3;
}

id UISpringTimingParameters.init(dampingRatio:response:)(double a1, double a2)
{
  v2 = 6.28318531 / a2 * (6.28318531 / a2);
  v3 = sqrt(v2);
  v4 = (v3 + v3) * a1;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithMass:1.0 stiffness:v2 damping:v4 initialVelocity:{0.0, 0.0}];
}

id UIView.setAnchorPoint(_:preserveFrame:)(char a1, double a2, double a3)
{
  if (a1)
  {
    v6 = UIView.untransformedFrame.getter();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 setAnchorPoint:{a2, a3}];

    return UIView.untransformedFrame.setter(v6, v8, v10, v12);
  }

  else
  {

    return [v3 setAnchorPoint:?];
  }
}

double sub_906084()
{
  static UIView.Shadow.identity = [objc_opt_self() blackColor];
  unk_E743C0 = xmmword_AFE930;
  result = 0.0;
  unk_E743D0 = xmmword_B387B0;
  return result;
}

uint64_t *UIView.Shadow.identity.unsafeMutableAddressor()
{
  if (qword_E1FE70 != -1)
  {
    swift_once();
  }

  return &static UIView.Shadow.identity;
}

id static UIView.Shadow.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E1FE70 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static UIView.Shadow.identity;
  *a1 = static UIView.Shadow.identity;
  *(a1 + 8) = unk_E743C0;
  *(a1 + 24) = unk_E743D0;

  return v2;
}

uint64_t sub_9061C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E211E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_906230()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_241(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_906304(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (*&a1 == *&a4)
  {
    sub_13C80(0, &unk_E211F0);
    return sub_ABA790() & 1;
  }

  return 0;
}

void *sub_906384(uint64_t a1, void (*a2)(void, double))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_ABAEC0();
    v5 = a1 + 64;
    result = sub_ABABC0();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v18 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v7;
      a2(*(*(a1 + 48) + 8 * v6), *(*(a1 + 56) + 8 * v6));
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      result = sub_ABAEA0();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v5 + 8 * v10);
      if ((v11 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v6 & 0x3F));
      if (v12)
      {
        v9 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a1 + 72 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_E1798(v6, v8, 0);
            v9 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_E1798(v6, v8, 0);
      }

LABEL_4:
      v7 = v20 + 1;
      v6 = v9;
      if (v20 + 1 == v18)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_9065A8(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor:v4];

  v5 = [v1 layer];
  [v5 setShadowOffset:{*(a1 + 24), *(a1 + 32)}];

  v6 = [v1 layer];
  [v6 setShadowRadius:*(a1 + 16)];

  v8 = [v1 layer];
  v7 = *(a1 + 8);
  *&v7 = v7;
  [v8 setShadowOpacity:v7];
}

uint64_t sub_906734(void *a1)
{
  v2 = [a1 layer];
  [v2 borderWidth];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = [a1 layer];
  v6 = [v5 borderColor];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 layer];
  [v7 borderWidth];
  v9 = v8;

  [objc_allocWithZone(UIColor) initWithCGColor:v6];
  return v9;
}

void sub_906844(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v7 = [v3 layer];
    v8 = v7;
    if (a2)
    {
      [v7 setBorderWidth:*&a1];
    }

    else
    {
      v9 = [v3 traitCollection];
      [v9 displayScale];
      v11 = v10;

      [v8 setBorderWidth:{*&a1 / fmax(v11, 1.0)}];
    }
  }

  else
  {
    v8 = [v3 layer];
    [v8 setBorderWidth:0.0];
  }

  v12 = [v3 layer];
  if (a3)
  {
    v13 = [a3 CGColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setBorderColor:?];
}

uint64_t sub_9069A8(void *a1, uint64_t (*a2)(void *, char *), uint64_t a3, char *a4)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  result = a2(a1, a4);
  v15 = *a4;
  if ((v15 & 1) == 0)
  {
    v7 = [a1 subviews];
    sub_13C80(0, &qword_E21208);
    v8 = sub_AB9760();

    if (v8 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      for (j = 0; ; ++j)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_ABAE20();
        }

        else
        {
          if (j >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * j + 32);
        }

        v12 = v11;
        v13 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v15 == 1)
        {
        }

        sub_9069A8(v11, sub_906FFC, v14, &v15);

        if (v13 == i)
        {
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return result;
}

uint64_t sub_906B28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_906B68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_906BC0(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, _BYTE *a5)
{
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  swift_beginAccess();
  swift_beginAccess();
  a3(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  v11 = *a5;
  *(a2 + 16) = *a5;
  swift_endAccess();
  *(v9 + 16) = v11;
  v12 = [a1 childViewControllers];
  sub_13C80(0, &qword_E211E8);
  v13 = sub_AB9760();

  v22 = a1;
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_ABAE20();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*v10 == 1)
      {

        goto LABEL_14;
      }

      sub_906BC0(v16, v9, sub_906FF0, v23, a2 + 16);

      ++v15;
      if (v18 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:

  swift_beginAccess();
  if (*v10 == 1 || (v19 = [v22 presentedViewController]) == 0)
  {
  }

  else
  {
    v20 = a2 + 16;
    v21 = v19;
    sub_906BC0(v19, v9, sub_906FF0, v23, v20);
  }
}

unint64_t sub_906E60()
{
  result = qword_E21238;
  if (!qword_E21238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21238);
  }

  return result;
}

unint64_t sub_906EB8()
{
  result = qword_E21240;
  if (!qword_E21240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21240);
  }

  return result;
}

__n128 __swift_memcpy40_8_3(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8_3(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_906F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_906FFC(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1, v4);
  *a2 = *v4;
  return result;
}

uint64_t sub_9070C8(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.init(string:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20968);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (!a1)
  {
    goto LABEL_4;
  }

  sub_AB3180();

  v7 = sub_AB31C0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_12E1C(v6, &qword_E20968);
LABEL_4:
    v9 = sub_AB31C0();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  (*(v8 + 32))(a2, v6, v7);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t URL.parametrize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20968);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v68 = sub_AB2C10();
  v66 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v67 = &v50 - v11;
  __chkstk_darwin(v10);
  v62 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_AB2CE0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB31C0();
  v21 = *(v20 - 8);
  result = (*(v21 + 16))(a2, v2, v20);
  if (*(a1 + 16))
  {
    sub_AB2C40();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return sub_12E1C(v15, &qword_E212B0);
    }

    else
    {
      v53 = v21;
      v55 = v20;
      v56 = v7;
      v52 = v17;
      v23 = *(v17 + 32);
      v54 = v16;
      v23(v19, v15, v16);
      v51 = v19;
      v24 = sub_AB2C20();
      v25 = _swiftEmptyArrayStorage;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = *(a1 + 16);
      if (v27)
      {
        v25 = sub_907E40(*(a1 + 16), 0);
        v28 = sub_907EEC(v69, v25 + 4, v27, a1);
        v65 = v69[4];

        sub_2BB88();
        if (v28 != v27)
        {
          __break(1u);
        }
      }

      v69[0] = v25;
      sub_9094E0(v69);
      v29 = v69[0];
      v61 = v69[0][2];
      if (v61)
      {
        v50 = a2;
        v30 = 0;
        v59 = v69[0];
        v60 = v69[0] + 4;
        v65 = (v66 + 16);
        v31 = (v66 + 8);
        v57 = (v66 + 40);
        v58 = v66 + 32;
        while (1)
        {
          if (v30 >= v29[2])
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v64 = v30;
          v34 = &v60[4 * v30];
          v35 = *v34;
          v36 = v34[1];

          sub_AB2BE0();

          v37 = *(v26 + 2);
          if (v37)
          {
            break;
          }

LABEL_22:

          v43 = v62;
          (*v65)(v63, v62, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_8D84AC(0, *(v26 + 2) + 1, 1, v26);
          }

          v45 = *(v26 + 2);
          v44 = *(v26 + 3);
          if (v45 >= v44 >> 1)
          {
            v26 = sub_8D84AC(v44 > 1, v45 + 1, 1, v26);
          }

          v32 = v66;
          v33 = v68;
          (*(v66 + 8))(v43, v68);
          *(v26 + 2) = v45 + 1;
          (*(v32 + 32))(&v26[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v45], v63, v33);
LABEL_13:
          v30 = v64 + 1;
          v29 = v59;
          if (v64 + 1 == v61)
          {

            a2 = v50;
            goto LABEL_33;
          }
        }

        v38 = 0;
        while (1)
        {
          if (v38 >= *(v26 + 2))
          {
            __break(1u);
            goto LABEL_38;
          }

          v39 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v40 = *(v66 + 72) * v38;
          (*(v66 + 16))(v67, &v26[v39 + v40], v68);
          if (sub_AB2BF0() == v35 && v41 == v36)
          {
            break;
          }

          v42 = sub_ABB3C0();

          (*v31)(v67, v68);
          if (v42)
          {
            goto LABEL_27;
          }

          if (v37 == ++v38)
          {
            goto LABEL_22;
          }
        }

        (*v31)(v67, v68);
LABEL_27:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_907EC4(v26);
        }

        if (v38 < *(v26 + 2))
        {
          (*v57)(&v26[v39 + v40], v62, v68);
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);

        __break(1u);
      }

      else
      {

LABEL_33:
        v46 = v51;
        sub_AB2C30();
        v47 = v56;
        sub_AB2C50();
        (*(v52 + 8))(v46, v54);
        v48 = v53;
        v49 = v55;
        if ((*(v53 + 48))(v47, 1, v55) == 1)
        {
          return sub_12E1C(v47, &qword_E20968);
        }

        else
        {
          (*(v48 + 8))(a2, v49);
          return (*(v48 + 32))(a2, v47, v49);
        }
      }
    }
  }

  return result;
}

uint64_t URLComponents.queryItemsDictionary.getter()
{
  v0 = sub_AB2C10();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB2C20();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v36 = *(v3 + 16);
  if (!v36)
  {

    return 0;
  }

  v5 = sub_8C934C(_swiftEmptyArrayStorage);
  v6 = 0;
  v35 = v4 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v33 = (v37 + 8);
  v34 = v37 + 16;
  v31 = v4;
  v32 = v2;
  while (v6 < *(v4 + 16))
  {
    (*(v37 + 16))(v2, v35 + *(v37 + 72) * v6, v0);
    v7 = sub_AB2C00();
    if (v8)
    {
      v9 = v8;
      v38 = v7;
      v10 = v0;
      sub_AB2BF0();
      v11 = sub_AB9370();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v5;
      v16 = sub_8E0A74(v11, v13);
      v17 = v5[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_25;
      }

      v20 = v15;
      if (v5[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v0 = v10;
          if ((v15 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_909070();
          v0 = v10;
          if ((v20 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_908574(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_8E0A74(v11, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_27;
        }

        v16 = v21;
        v0 = v10;
        if ((v20 & 1) == 0)
        {
LABEL_17:
          v5 = v39;
          v39[(v16 >> 6) + 8] |= 1 << v16;
          v24 = (v5[6] + 16 * v16);
          *v24 = v11;
          v24[1] = v13;
          v25 = (v5[7] + 16 * v16);
          *v25 = v38;
          v25[1] = v9;
          v2 = v32;
          (*v33)(v32, v0);
          v26 = v5[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v5[2] = v28;
          goto LABEL_19;
        }
      }

      v5 = v39;
      v23 = (v39[7] + 16 * v16);
      *v23 = v38;
      v23[1] = v9;

      v2 = v32;
      (*v33)(v32, v0);
LABEL_19:
      v4 = v31;
      goto LABEL_5;
    }

    (*v33)(v2, v0);
LABEL_5:
    if (v36 == ++v6)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void *sub_907DCC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_907E40(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_907EEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_908070(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFE0);
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_ABB5B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_9082D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFE8);
  v34 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_908574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFD0);
  v37 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_908834(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFC8);
  v36 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v26 = v24;
      }

      sub_ABB5C0();
      if (v23)
      {
        sub_ABB5D0(1uLL);
        sub_AB93F0();
      }

      else
      {
        sub_ABB5D0(0);
      }

      result = sub_ABB610();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_908B14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20008);
  v34 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_908DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFE0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_908F08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFE8);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_909070()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFD0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_9091E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FFC8);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        v23 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_909370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20008);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_9094E0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_90A0FC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_90954C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_90954C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B8);
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_909724(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_909654(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_909654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = sub_ABB3C0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_909724(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_909FBC(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_909D08((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      result = *v10;
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_ABB3C0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          result = *(v13 - 1);
          if (result == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_ABB3C0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_8D7F14(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_8D7F14((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_909D08((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_909FBC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_909F30(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (result = sub_ABB3C0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_909D08(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v17 && (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = *(v6 - 4) == v20 && *(v6 - 3) == v21;
      if (!v22 && (sub_ABB3C0() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_909F30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_909FBC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_909FD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

__n128 __swift_memcpy17_8_2(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v9 = *(a6 - 8);
  __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v13 = v12 - 8;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  v15 = __chkstk_darwin(v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v38 = &v36 - v17;
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  (*(v9 + 16))(v11, a1, a6);
  v20 = sub_AB9580();
  v22 = v21;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = &v19[*(v13 + 28)];
  *v23 = v39;
  *(v23 + 1) = a3;
  v24 = &v19[*(v13 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_E1FE78;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_E212D0;
  v27 = *(qword_E212D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v42;
  sub_90CD98(v26, v19, v40, v41);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_90FCBC(v19, _s20KeyValueRegistrationC10IdentifierVMa);
  }

  v30 = v38;
  sub_90FC54(v19, v38, _s20KeyValueRegistrationC10IdentifierVMa);
  v31 = v37;
  sub_90FDC0(v19, v37, _s20KeyValueRegistrationC10IdentifierVMa);
  v32 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v33 = swift_allocObject();
  sub_90FDC0(v31, v33 + v32, _s20KeyValueRegistrationC10IdentifierVMa);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v34 = swift_allocObject();
  sub_90FDC0(v30, v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);
  result = v34;
  v35 = (v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v35 = sub_8CC324;
  v35[1] = v33;
  return result;
}

uint64_t sub_90A490(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_90A57C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a3 + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(*(a3 + 56) + 8 * v11);
      v22[0] = *v12;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v16;

      v17 = v15;

      v18 = v23;
      v19 = a1(v22);
      if (v18)
      {

        return v14;
      }

      v23 = 0;
      if (v19)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t UserDefault.init(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a2;
  v9 = type metadata accessor for UserDefault();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 44)], a3, a4);
  v10 = *(v9 + 48);
  v11 = sub_ABA9C0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a1, v11);
}

uint64_t UserDefault.init<A>(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v21 = a2;
  v22 = a6;
  v20 = a7;
  __chkstk_darwin(a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_ABA9C0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - v16;
  (*(v14 + 16))(&v19 - v16, a1, v13, v15);
  sub_AB96D0();
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(v14 + 8))(a1, v13);
  return UserDefault.init(wrappedValue:defaults:key:)(v17, v21, v12, a4, v20);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  NSUserDefaults.subscript.getter(v2 + *(a1 + 44), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230);
  v10 = swift_dynamicCast();
  v11 = *(*(v5 - 8) + 56);
  if (v10)
  {
    v12 = *(v5 - 8);
    v11(v9, 0, 1, v5);
    (*(v12 + 32))(a2, v9, v5);
    return (v11)(a2, 0, 1, v5);
  }

  else
  {
    v11(v9, 1, 1, v5);
    return (*(v7 + 16))(a2, v2 + *(a1 + 48), v6);
  }
}

double NSUserDefaults.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB9580();
  v6 = sub_AB9260();

  v7 = [v2 objectForKey:v6];

  if (v7)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_90E6B0(a1, a2);
  v3 = sub_ABA9C0();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_906F80(v9, &v16);
  if (v17)
  {
    sub_9ACFC(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = sub_ABB3A0();
    (*(v8 + 16))(v11, a2, a3);
    sub_AB9580();
    v13 = sub_AB9260();

    [v4 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    (*(v8 + 8))(a2, a3);
    sub_8D1218(a1);
    return __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  else
  {
    sub_8D1218(&v16);
    (*(v8 + 16))(v11, a2, a3);
    sub_AB9580();
    v15 = sub_AB9260();

    [v4 removeObjectForKey:v15];

    (*(v8 + 8))(a2, a3);
    return sub_8D1218(a1);
  }
}

{
  sub_90E8DC(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_ABA9C0();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_90B07C;
}