uint64_t sub_1001C34E0()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1001C35B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  v14 = v13 + ((v8 + v11) & ~v11) + 2;
  v15 = (*(v7 + 80) | *(v10 + 80));
  if (v15 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v15 + 16) & ~v15));
  }

  else
  {
    v19 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v20 = (a2 + v12) & v19;
    (*(v10 + 16))((a1 + v12) & v19, v20, v9);
    v21 = (((a1 + v12) & v19) + v13);
    *v21 = *(v20 + v13);
    v21[1] = *(v20 + v13 + 1);
  }

  return a1;
}

uint64_t sub_1001C3748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t sub_1001C37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14);
  v15 = *(v10 + 48);
  v16 = (v15 + v13);
  v17 = (v15 + v14);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

uint64_t sub_1001C38D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 24))(v13, v14);
  v15 = *(v10 + 40);
  v16 = (v15 + v13);
  v17 = (v15 + v14);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

uint64_t sub_1001C39B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14);
  v15 = *(v10 + 32);
  v16 = (v15 + v13);
  v17 = (v15 + v14);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

uint64_t sub_1001C3A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 40))(v13, v14);
  v15 = *(v10 + 24);
  v16 = (v15 + v13);
  v17 = (v15 + v14);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

uint64_t sub_1001C3B68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v15 = v12 + (v14 & ~v11) + 2;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v8 == v13)
      {
        v23 = *(v7 + 48);

        return v23(a1);
      }

      else
      {
        v24 = (a1 + v14) & ~v11;
        if (v10 == v13)
        {
          v25 = *(v9 + 48);

          return v25(v24, v10);
        }

        else
        {
          v26 = *(v24 + v12);
          if (v26 >= 2)
          {
            return v26 - 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v12 + (v14 & ~v11) == -2)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = v12 + (v14 & ~v11) + 2;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1001C3DD0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = v12 + v13;
  v17 = v14 + ((v12 + v13) & ~v13) + 2;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 == v15)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v25 = &a1[v16] & ~v13;
    if (v11 == v15)
    {
      v26 = *(v10 + 56);

      v26(v25, a2, v11);
    }

    else
    {
      *(v25 + v14) = a2 + 1;
    }
  }
}

uint64_t sub_1001C40C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_1001C410C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001C4200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C4264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C42C8()
{
  v1 = qword_1007A84A0;
  swift_beginAccess();
  v2 = sub_100058000(qword_100771F18);
  result = (*(*(v2 - 8) + 48))(v0 + v1, 1, v2);
  if (result != 1)
  {
    return *(v0 + v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001C4394()
{
  result = qword_100772170;
  if (!qword_100772170)
  {
    sub_10005D20C(&qword_100772168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100772170);
  }

  return result;
}

uint64_t sub_1001C43F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C445C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C44BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C4504()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1001C457C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1001C46E4(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1001C47B4(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1001C48E0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1001C4A74(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1001C4BA0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_1001C4D5C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_1001C4DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_1001C4E4C()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1001C4EE4(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 36);
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_1001C4FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_1001C5010(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_1001C5088(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_1001C5100(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_1001C5178(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_1001C526C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007723A0);
  v1 = sub_100003E30(v0, qword_1007723A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1001C54BC()
{
  v1 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
    swift_beginAccess();
    sub_10000794C(v9 + v10, v3, &qword_100771DD0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &qword_100771DD0);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      v11 = v9;
      v12 = sub_100027EE8();
      __chkstk_darwin(v12);
      *(&v15 - 2) = v8;
      v13 = sub_1002ECA94(sub_1001C5E40, (&v15 - 4), v12);

      if (v13)
      {
        sub_100058000(&qword_10076B780);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10062D420;
        *(v14 + 32) = v13;
        (*(v5 + 8))(v8, v4);
        return v14;
      }

      (*(v5 + 8))(v8, v4);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C5758(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  TTRAccountsListsPinnedListSelection.init(pinnedList:)();
  v10 = static TTRAccountsListsPinnedListSelection.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

void sub_1001C58EC()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
}

void (*sub_1001C59A0(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &type metadata for ContentConfigurationForPinnedListsContentView;
  *(v2 + 32) = sub_100025600();
  return sub_10009D584;
}

id sub_1001C5AC0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1001C5B38(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005669BC(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1001C5B98(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100455928(a2);
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1001C5BF4(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = sub_100454688(a2);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

id sub_1001C5C44(uint64_t a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_100566E80(a2, a3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(UIDropProposal);

    return [v7 initWithDropOperation:0];
  }
}

uint64_t sub_1001C5CE0(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100567000(a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001C5D58(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100432D0C(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_1001C5DBC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004344B8(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_1001C5E88(uint64_t a1)
{
  type metadata accessor for RDIDispatchQueue();
  v2 = static RDIDispatchQueue.storeUserInteractiveQueue.getter();
  static RDIDispatchQueue.storeQueue.getter();
  v3 = type metadata accessor for REMContactsProvider();
  swift_allocObject();
  v11[3] = v3;
  v11[4] = &protocol witness table for REMContactsProvider;
  v11[0] = REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
  type metadata accessor for TTRParticipantAvatarProvider();
  swift_allocObject();
  v4 = v2;

  TTRParticipantAvatarProvider.init(contactsProvider:contactStoreCreator:queue:)();
  sub_10000B0D8(a1, v11);
  type metadata accessor for TTRReminderPrintingInteractor();
  swift_allocObject();
  v5 = v4;

  v6 = TTRReminderPrintingInteractor.init(dataModelSource:participantAvatarProvider:participantAvatarProviderInvocationQueue:)();
  type metadata accessor for TTRIReminderPrintingPresenter();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[4] = v6;
  v7[5] = &protocol witness table for TTRReminderPrintingInteractor;
  type metadata accessor for TTRReminderPrintingPresenterCapability();
  swift_allocObject();

  v8 = TTRReminderPrintingPresenterCapability.init(interactor:)();

  v7[6] = v8;
  type metadata accessor for TTRIReminderPrintingController();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &off_10071E668;
  v7[3] = &off_10072F4B8;
  swift_unknownObjectWeakAssign();

  return v9;
}

uint64_t sub_1001C60D8(char a1, void *a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = a1;
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:v7];

    if (a1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    sub_1000046FC(a2, v18);
    v10 = objc_allocWithZone(UIBarButtonItem);
    sub_10000C36C(v18, v18[3]);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100004758(v18);
    v12 = [v10 initWithImage:v8 style:v9 target:v11 action:a3];

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_1001C6724();
    sub_10000C36C(a2, a2[3]);
    [v13 addTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a3 forControlEvents:0x2000];
    swift_unknownObjectRelease();
    v14 = [objc_allocWithZone(type metadata accessor for CursorInteractionDelegate()) init];
    v15 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v14];
    v16 = v13;
    [v16 addInteraction:v15];
    *(v3 + 48) = v16;
    *(v3 + 56) = v14;
    v12 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v16];
  }

  *(v3 + 16) = v12;
  sub_100017FA0();
  sub_100004758(a2);
  return v3;
}

uint64_t sub_1001C62D4()
{
  sub_100037C04(v0[6], v0[7]);

  return swift_deallocClassInstance();
}

uint64_t sub_1001C631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedSystemFont(ofSize:weight:)();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

uint64_t assignWithCopy for TTRIAddReminderBarButtonModule.ViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for TTRIAddReminderBarButtonModule.ViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAddReminderBarButtonModule.ViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAddReminderBarButtonModule.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001C668C(char a1, void *a2, char a3, void *a4)
{
  if (a1 == a3)
  {
    if (a2)
    {
      if (a4)
      {
        sub_100003540(0, &qword_100772610);
        v6 = a4;
        v7 = a2;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

id sub_1001C6724()
{
  v0 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v0 - 8);
  v2 = &v20[-v1];
  v3 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() buttonWithType:1];
  v11 = static TTRCommonAsset.Image.newReminderPlus.getter();
  [v10 setImage:v11 forState:0];

  v12 = v10;
  [v12 setShowsLargeContentViewer:1];
  v13 = [v12 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setLineBreakMode:2];
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  LODWORD(v15) = 1145569280;
  [v12 setContentCompressionResistancePriority:0 forAxis:v15];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0x4031000000000000;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v16 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v17 = [objc_opt_self() clearColor];
  v18 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v18(v20, 0);
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  UIButton.configuration.setter();
  (*(v7 + 8))(v9, v6);
  return v12;
}

id sub_1001C6AB8(void *a1)
{
  v2 = sub_100058000(&unk_100772620);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v61 = type metadata accessor for UIPointerShape();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIPointerEffect();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v56 - v13);
  result = [a1 view];
  if (result)
  {
    v16 = result;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v60 = v16;
      [v18 bounds];
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      CGRectGetWidth(v62);
      [v18 intrinsicContentSize];
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      CGRectGetWidth(v63);
      [v18 effectiveUserInterfaceLayoutDirection];
      CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = [objc_allocWithZone(UIPreviewParameters) init];
      v32 = [objc_opt_self() bezierPathWithRect:{v24, v26, v28, v30}];
      v59 = v31;
      [v31 setVisiblePath:v32];

      v57 = [objc_allocWithZone(UITargetedPreview) initWithView:v18 parameters:v31];
      v58 = v12;
      sub_100003540(0, &qword_10076B800);
      static UIBarButtonItem.cursorHeightForCustomView.getter();
      v64.origin.x = v24;
      v64.origin.y = v26;
      v64.size.width = v28;
      v64.size.height = v30;
      CGRectGetHeight(v64);
      [v18 effectiveUserInterfaceLayoutDirection];
      NSDirectionalEdgeInsets.resolved(for:)();
      v35 = sub_100068328(v24, v26, v28, v30, v33, v34);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = [v18 superview];
      v43 = v60;
      v44 = v61;

      [v18 convertRect:v42 toView:{v35, v37, v39, v41}];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = v57;
      *v14 = v57;
      (*(v9 + 104))(v14, enum case for UIPointerEffect.highlight(_:), v8);
      v57 = v53;
      v65.origin.x = v46;
      v65.origin.y = v48;
      v65.size.width = v50;
      v65.size.height = v52;
      v54 = CGRectGetHeight(v65);
      *v7 = v46;
      *(v7 + 1) = v48;
      *(v7 + 2) = v50;
      *(v7 + 3) = v52;
      *(v7 + 4) = v54 * 0.5;
      (*(v5 + 104))(v7, enum case for UIPointerShape.roundedRect(_:), v44);
      sub_100003540(0, &qword_100772630);
      (*(v9 + 16))(v58, v14, v8);
      (*(v5 + 16))(v4, v7, v44);
      (*(v5 + 56))(v4, 0, 1, v44);
      v55 = UIPointerStyle.init(effect:shape:)();

      (*(v5 + 8))(v7, v44);
      (*(v9 + 8))(v14, v8);
      return v55;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1001C7054(void *a1, void *a2)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 bounds];
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      CGRectGetWidth(v23);
      [v6 intrinsicContentSize];
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      CGRectGetWidth(v24);
      [v6 effectiveUserInterfaceLayoutDirection];

      CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [a2 location];
      v22.x = v20;
      v22.y = v21;
      v25.origin.x = v13;
      v25.origin.y = v15;
      v25.size.width = v17;
      v25.size.height = v19;
      if (CGRectContainsPoint(v25, v22))
      {
        sub_100003540(0, &qword_100772618);
        return UIPointerRegion.init(rect:identifier:)();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

unint64_t sub_1001C7210()
{
  result = qword_100772638;
  if (!qword_100772638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100772638);
  }

  return result;
}

uint64_t sub_1001C7268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000046FC(a1, v8);
  type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
  if (swift_dynamicCast())
  {
    AnyHashable.base.getter();

    v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_1001C7380()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10);
    return 0;
  }

  result = (*(v5 + 32))(v8, v3, v4);
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = v11;
  v13 = UICollectionView.visibleCellForItem(at:)();

  (*(v5 + 8))(v8, v4);
  if (v13)
  {
    type metadata accessor for TTRIBoardReminderCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *sub_1001C7580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  result = *(v2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = [result indexPathForCell:{a1, v10}];
  if (v14)
  {
    v15 = v14;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    result = (*(v6 + 32))(v12, v8, v5);
    v16 = *(v2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
    if (v16)
    {
      v17 = v16;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      return (*(v6 + 8))(v12, v5);
    }

    goto LABEL_9;
  }

  v18 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

id sub_1001C7760(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability] = 0;
  v10 = &v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_eventPublishers];
  sub_100058000(&qword_100772768);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  sub_100058000(&unk_1007701B0);
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  *v10 = v11;
  v10[1] = v12;
  v13 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v4[v13] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *&v4[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator] = 0;
  swift_unknownObjectWeakInit();
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1001C7934();

  return v14;
}

void sub_1001C7934()
{
  v1 = v0;
  sub_1001C81F4();
  sub_1001C8678();
  v2 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView;
  v3 = *&v0[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource;
  v5 = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = &v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_eventPublishers];
  v26[0] = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_eventPublishers];
  v7 = v5;
  v8 = v3;
  sub_100058000(&qword_100772768);
  sub_10000E188(&unk_100772770, &qword_100772768);
  v9 = Publisher.eraseToAnyPublisher()();
  v26[0] = *(v6 + 1);
  sub_100058000(&unk_1007701B0);
  sub_10000E188(&unk_1007701C0, &unk_1007701B0);
  v10 = Publisher.eraseToAnyPublisher()();
  v11 = type metadata accessor for TTRIBoardColumnScrollingController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_collectionView] = v8;
  *&v12[OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_dataSource] = v7;
  *&v12[OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_willDisplayCell] = v9;
  *&v12[OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_didEndScrollingAnimation] = v10;
  v27.receiver = v12;
  v27.super_class = v11;
  v13 = objc_msgSendSuper2(&v27, "init");
  v14 = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController];
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController] = v13;

  v15 = *&v1[v4];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TTRBoardColumnPresentationTreesManagementViewCapability();
  swift_allocObject();
  v16 = v15;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability] = TTRBoardColumnPresentationTreesManagementViewCapability.init(dataSource:)();

  sub_1001D3C7C(&qword_100772780, v17, type metadata accessor for TTRIBoardColumnCollectionViewCell);
  swift_unknownObjectRetain();
  TTRBoardColumnPresentationTreesManagementViewCapability.delegate.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100772788);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver] = TTRViewModelObserver.init(didReceiveNewValue:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100772790);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver] = TTRViewModelObserver.init(didReceiveNewValue:)();

  v18 = *&v1[v2];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for TTRIBoardColumnContentInsetsController();
  swift_allocObject();
  v19 = v18;
  v20 = sub_10008C424(v19);

  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController] = v20;

  v21 = [v1 contentView];
  v22 = *&v1[v2];
  if (v22)
  {
    v23 = v21;
    type metadata accessor for TTRIBoardColumnDraggingAnimator();
    v24 = swift_allocObject();
    sub_100108984(v26);
    memcpy(v24 + 4, v26, 0x118uLL);
    v24[2] = v23;
    v24[3] = v22;
    *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator] = v24;
    v25 = v22;

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1001C7D70(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability] = 0;
  v4 = &v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_eventPublishers];
  sub_100058000(&qword_100772768);
  swift_allocObject();
  v5 = PassthroughSubject.init()();
  sub_100058000(&unk_1007701B0);
  swift_allocObject();
  v6 = PassthroughSubject.init()();
  *v4 = v5;
  v4[1] = v6;
  v7 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v1[v7] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1001C7934();
  }

  return v9;
}

void sub_1001C7F4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "prepareForReuse");
  if (!*&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability])
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = TTRBoardColumnPresentationTreesManagementViewCapability.presentationTreesObserver.getter();

  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  TTRViewModelObserver.unsubscribe()();

  if (!*&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  TTRViewModelObserver.unsubscribe()();

  if (!*&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  TTRViewModelObserver.unsubscribe()();

  v8 = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController];
  if (v8)
  {
    if (!*(v8 + 24))
    {
LABEL_19:
      __break(1u);
      return;
    }

    TTRViewModelObserver.unsubscribe()();
  }

  v9 = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = UICollectionElementKindSectionHeader;
  v11 = v9;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v13 = [v11 supplementaryViewForElementKind:v10 atIndexPath:isa];

  if (v13)
  {
    type metadata accessor for TTRIBoardEditableColumnHeader(0);
    if (swift_dynamicCastClass())
    {
      sub_1006031CC();
    }
  }
}

void sub_1001C81F4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_1001C9844();
  v11 = [objc_allocWithZone(type metadata accessor for TTRIBoardColumnCollectionView()) initWithFrame:v10 collectionViewLayout:{v3, v5, v7, v9}];

  v12 = v11;
  [v12 setClipsToBounds:0];
  v13 = v12;
  [v13 setAllowsSelection:1];
  [v13 setAllowsMultipleSelection:0];
  [v13 setAllowsSelectionDuringEditing:1];
  [v13 setAllowsMultipleSelectionDuringEditing:1];
  [v13 setAlwaysBounceVertical:1];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setDelegate:v0];
  [v13 setPrefetchDataSource:v0];

  v15 = *&v0[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
  *&v0[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView] = v13;
  v16 = v13;

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v0 contentView];
  [v17 addSubview:v16];

  v18 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D450;
  v20 = [v0 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v16 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v19 + 32) = v23;
  v24 = [v0 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v16 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v19 + 40) = v27;
  v28 = [v0 contentView];
  v29 = [v28 topAnchor];

  v30 = [v16 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v19 + 48) = v31;
  v32 = [v0 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v16 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v19 + 56) = v35;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];
}

uint64_t sub_1001C8678()
{
  v1 = v0;
  v31 = sub_100058000(&qword_1007727A0);
  v2 = *(v31 - 8);
  v3 = __chkstk_darwin(v31);
  v28[1] = v4;
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v28 - v5;
  v28[0] = sub_100058000(&qword_1007727A8);
  v7 = *(v28[0] - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v28[0]);
  v10 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v28 - v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIBoardReminderCell();
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  v32 = v12;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIBoardEditableColumnHeader(0);
  v30 = v6;
  result = UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v14 = *(v1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (v14)
  {
    v15 = v28[0];
    (*(v7 + 16))(v10, v32, v28[0]);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v16, v10, v15);
    v18 = objc_allocWithZone(type metadata accessor for TTRBoardColumnDiffableDataSource());
    v19 = v14;
    v20 = TTRBoardColumnDiffableDataSource.init(collectionView:cellProvider:)();
    v21 = *(v1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
    *(v1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource) = v20;
    v22 = v20;

    v24 = v29;
    v23 = v30;
    v25 = v31;
    (*(v2 + 16))(v29, v30, v31);
    v26 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v27 = swift_allocObject();
    (*(v2 + 32))(v27 + v26, v24, v25);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    (*(v2 + 8))(v23, v25);
    return (*(v7 + 8))(v32, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001C8A6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver))
    {

      TTRViewModelObserver.localValue.getter();

      if (v4 == 2)
      {
LABEL_6:

        return;
      }

      v2 = *&v1[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
      if (v2)
      {
        v3 = v2;
        sub_1004DD370();
        sub_1005F55D8(v4 & 1, v6 & 1, v5, v7);

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1001C8B60()
{
  sub_100058000(&qword_100772798);
  v0 = TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  v1 = TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001C8BFC(v1 & 1, (v0 & 1) == 0);
  }
}

id sub_1001C8BFC(int a1, int a2)
{
  v116 = a2;
  v4 = 0;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = v95 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v115 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v117 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v103 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v95 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v95 - v18;
  v20 = __chkstk_darwin(v17);
  v107 = v95 - v21;
  v22 = __chkstk_darwin(v20);
  v101 = v95 - v23;
  result = __chkstk_darwin(v22);
  v108 = v95 - v25;
  v118 = v2;
  if (!*(v2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  TTRViewModelObserver.localValue.getter();

  v26 = v120;
  if (!v120)
  {
    return result;
  }

  v105 = v19;
  v99 = v16;
  v111 = v7;
  v112 = v10;
  v27 = v123;
  v28 = v122;
  v29 = v121;
  v102 = v122;
  if ((a1 & 1) == 0 && (v119 & 0x100) != 0)
  {
    if ((v121 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v27)
    {
LABEL_48:
    }

    goto LABEL_49;
  }

  result = *(v118 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!result)
  {
    goto LABEL_84;
  }

  result = [result setEditing:v119 & 1];
  if ((a1 & 1) == 0 && ((v29 ^ 1) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v96 = v27;
  v97 = a1;
  v119 = v26;
  __chkstk_darwin(result);
  v30 = v118;
  v95[-2] = v118;

  sub_100058000(&unk_10076BBD0);
  sub_10000E188(&unk_100772700, &unk_10076BBD0);
  sub_1001D3C7C(&qword_100769AC0, 255, &type metadata accessor for IndexPath);
  v31 = Sequence.compactMapToSet<A>(_:)();
  v32 = v31[2];
  v113 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView;
  result = *(v30 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!v32)
  {
    if (!result)
    {
      goto LABEL_87;
    }

    v37 = result;

    [v37 selectItemAtIndexPath:0 animated:v116 & 1 scrollPosition:0];

LABEL_46:
    v28 = v102;
    if (v97 & 1) == 0 && (v96)
    {
      goto LABEL_48;
    }

LABEL_49:
    v100 = v26;
    v114 = v11;
    v98 = v4;
    v70 = v28 + 56;
    v71 = 1 << *(v28 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v28 + 56);
    v113 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource;
    v74 = (v71 + 63) >> 6;
    v109 = (v115 + 8);
    v110 = v115 + 16;
    v107 = (v117 + 32);
    v108 = (v117 + 48);
    result = swift_bridgeObjectRetain_n();
    v75 = 0;
    v76 = _swiftEmptyArrayStorage;
    v77 = v112;
LABEL_52:
    v78 = v75;
    if (!v73)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v75 = v78;
LABEL_57:
      result = (*(v115 + 16))(v77, *(v28 + 48) + *(v115 + 72) * (__clz(__rbit64(v73)) | (v75 << 6)), v8);
      v79 = *(v118 + v113);
      if (!v79)
      {
        break;
      }

      v80 = v8;
      v73 &= v73 - 1;
      v81 = v79;
      v82 = v111;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      (*v109)(v77, v80);
      if ((*v108)(v82, 1, v114) != 1)
      {
        v83 = *v107;
        (*v107)(v99, v82, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_100546DB0(0, *(v76 + 2) + 1, 1, v76);
        }

        v85 = *(v76 + 2);
        v84 = *(v76 + 3);
        if (v85 >= v84 >> 1)
        {
          v76 = sub_100546DB0(v84 > 1, v85 + 1, 1, v76);
        }

        *(v76 + 2) = v85 + 1;
        result = v83(&v76[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v85], v99, v114);
        v28 = v102;
        v8 = v80;
        goto LABEL_52;
      }

      result = sub_1000079B4(v82, &unk_100771B10);
      v78 = v75;
      v8 = v80;
      if (!v73)
      {
        while (1)
        {
LABEL_54:
          v75 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          if (v75 >= v74)
          {
            break;
          }

          v73 = *(v70 + 8 * v75);
          ++v78;
          if (v73)
          {
            goto LABEL_57;
          }
        }

        v86 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView;
        result = *(v118 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
        if (!result)
        {
          goto LABEL_85;
        }

        result = [result _highlightItemAtIndexPath:0 animated:v116 & 1 scrollPosition:0];
        v87 = *(v76 + 2);
        v88 = v114;
        v89 = v103;
        if (!v87)
        {
LABEL_72:
        }

        v90 = 0;
        v91 = (v117 + 8);
        while (v90 < *(v76 + 2))
        {
          result = (*(v117 + 16))(v89, &v76[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v90], v88);
          v92 = *(v118 + v86);
          if (!v92)
          {
            goto LABEL_79;
          }

          ++v90;
          v93 = v92;
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v93 _highlightItemAtIndexPath:isa animated:v116 & 1 scrollPosition:0];

          result = (*v91)(v89, v88);
          if (v87 == v90)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_78;
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!result)
  {
    goto LABEL_86;
  }

  v33 = [result indexPathsForSelectedItems];
  v34 = v101;
  if (v33)
  {
    v35 = v33;
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v38 = sub_1004B6294(v36);

  if (v31[2] <= v38[2] >> 3)
  {
    v119 = v38;

    sub_1000EBF9C(v31);
    v106 = v119;
  }

  else
  {

    v106 = sub_1001CF22C(v31, v38);
  }

  v39 = v38[2];
  v40 = v31[2];
  v100 = v26;
  v98 = 0;
  v95[2] = v31;
  v95[1] = v38;
  if (v39 > v40 >> 3)
  {

    v104 = sub_1001CF22C(v38, v31);
  }

  else
  {
    v119 = v31;

    sub_1000EBF9C(v38);
    v104 = v119;
  }

  v41 = v106 + 7;
  v42 = 1 << *(v106 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v106[7];
  v45 = (v42 + 63) >> 6;
  v109 = (v117 + 32);
  v110 = v117 + 16;
  v46 = (v117 + 8);

  v47 = 0;
  if (v44)
  {
    while (1)
    {
      v48 = v47;
LABEL_32:
      v49 = v117;
      v50 = v108;
      (*(v117 + 16))(v108, v106[6] + *(v117 + 72) * (__clz(__rbit64(v44)) | (v48 << 6)), v11);
      result = (*(v49 + 32))(v34, v50, v11);
      v51 = *(v118 + v113);
      if (!v51)
      {
        goto LABEL_82;
      }

      v52 = v11;
      v44 &= v44 - 1;
      v53 = v51;
      v54 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v53 deselectItemAtIndexPath:v54 animated:v116 & 1];

      result = (*v46)(v34, v52);
      v47 = v48;
      v11 = v52;
      if (!v44)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v48 >= v45)
    {
      break;
    }

    v44 = v41[v48];
    ++v47;
    if (v44)
    {
      goto LABEL_32;
    }
  }

  v55 = v104 + 7;
  v56 = 1 << *(v104 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v104[7];
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  if (!v58)
  {
LABEL_39:
    while (1)
    {
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_77;
      }

      if (v61 >= v59)
      {

        v26 = v100;

        v4 = v98;
        goto LABEL_46;
      }

      v58 = v55[v61];
      ++v60;
      if (v58)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v61 = v60;
LABEL_42:
    v62 = v117;
    v63 = v107;
    (*(v117 + 16))(v107, v104[6] + *(v117 + 72) * (__clz(__rbit64(v58)) | (v61 << 6)), v11);
    v64 = *(v62 + 32);
    v65 = v105;
    result = v64(v105, v63, v11);
    v66 = *(v118 + v113);
    if (!v66)
    {
      break;
    }

    v67 = v11;
    v58 &= v58 - 1;
    v68 = v66;
    v69 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v68 selectItemAtIndexPath:v69 animated:v116 & 1 scrollPosition:0];

    result = (*v46)(v65, v67);
    v60 = v61;
    v11 = v67;
    if (!v58)
    {
      goto LABEL_39;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

id sub_1001C9844()
{
  v29 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v29 setContentInsetsReference:1];
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  v2 = [v0 estimatedDimension:44.0];
  v3 = objc_opt_self();
  v28 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [objc_opt_self() itemWithLayoutSize:v28];
  v5 = [v0 fractionalWidthDimension:1.0];
  v6 = [v0 estimatedDimension:44.0];
  v7 = [v3 sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D420;
  *(v9 + 32) = v4;
  sub_100003540(0, &qword_100772750);
  v10 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v8 verticalGroupWithLayoutSize:v7 subitems:isa];

  type metadata accessor for TTRIBoardColumnCollectionViewCell.LayoutSection_rdar104564290();
  v13 = [swift_getObjCClassFromMetadata() sectionWithGroup:v12];
  [v13 setInterGroupSpacing:8.0];
  v14 = [v0 fractionalWidthDimension:1.0];
  v15 = [v0 estimatedDimension:44.0];
  v16 = [v3 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:UICollectionElementKindSectionHeader alignment:1];
  [v17 setPinToVisibleBounds:1];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10062D420;
  *(v18 + 32) = v17;
  sub_100003540(0, &qword_100772758);
  v19 = v17;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setBoundarySupplementaryItems:v20];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  *(v22 + 24) = v21;
  v23 = objc_allocWithZone(type metadata accessor for TTRIBoardColumnCollectionViewLayout());
  aBlock[4] = sub_1001D39F0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F170;
  aBlock[3] = &unk_10071A238;
  v24 = _Block_copy(aBlock);
  v25 = v13;

  v26 = [v23 initWithSectionProvider:v24];

  _Block_release(v24);

  return v26;
}

uint64_t sub_1001C9D20(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability))
    {

      v4 = TTRBoardColumnPresentationTreesManagementViewCapability.observableIntermediateCellViewModels.getter();

      if (v4)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        *(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_delegate + 8) = &off_10071A140;
        result = swift_unknownObjectWeakAssign();
        if (*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_1001C9E30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability))
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    v4 = TTRBoardColumnPresentationTreesManagementViewCapability.observableHeaderViewModel.getter();

    if (v4)
    {
      *(a1 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_delegate + 8) = &off_10071A128;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakLoadStrong();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_100602E5C(v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (*(a1 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver))
      {

        TTRViewModelObserver.subscribeIfNeeded(to:)();

        return;
      }

      goto LABEL_9;
    }
  }
}

uint64_t sub_1001C9F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  type metadata accessor for TTRIBoardReminderCell();
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000079B4(v6, &unk_10076BB50);
  return v9;
}

uint64_t sub_1001CA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for TTRIBoardEditableColumnHeader(0);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void sub_1001CA178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CA318(uint64_t a1, char a2)
{
  v4 = [v2 contentView];
  [v4 setUserInteractionEnabled:a2 & 1];
}

id sub_1001CA380(uint64_t a1, char a2)
{
  if (a2)
  {
    result = *(v2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
    if (!result)
    {
      __break(1u);
      return result;
    }

    [result _scrollToTopIfPossible:0];
  }

  return sub_1001C8BFC(1, 0);
}

uint64_t sub_1001CA4B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v31 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v38 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for IndexPath();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v39 = a1;
  result = TTRListContentsPrefetchExtender.extendFetchIndexPaths(_:sectionCountProvider:rowCountProvider:)();
  v13 = result;
  v37 = *(result + 16);
  if (v37)
  {
    v14 = 0;
    v35 = v9 + 16;
    v36 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource;
    v33 = (v7 + 48);
    v34 = (v9 + 8);
    v28 = v7;
    v32 = (v7 + 32);
    v15 = _swiftEmptyArrayStorage;
    v17 = v30;
    v16 = v31;
    v29 = v2;
    while (v14 < *(v13 + 16))
    {
      v18 = v13;
      result = (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v17);
      v19 = *(v2 + v36);
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v2;
      v21 = v17;
      v22 = v19;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      (*v34)(v11, v21);
      if ((*v33)(v6, 1, v16) == 1)
      {
        v17 = v21;
        result = sub_1000079B4(v6, &unk_10076BB50);
        v2 = v20;
        v13 = v18;
      }

      else
      {
        v23 = *v32;
        (*v32)(v38, v6, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100548080(0, v15[2] + 1, 1, v15);
        }

        v13 = v18;
        v25 = v15[2];
        v24 = v15[3];
        if (v25 >= v24 >> 1)
        {
          v15 = sub_100548080(v24 > 1, v25 + 1, 1, v15);
        }

        v15[2] = v25 + 1;
        v26 = v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25;
        v16 = v31;
        result = v23(v26, v38, v31);
        v2 = v29;
        v17 = v30;
      }

      if (v37 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_13:

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for TTRIRemindersBoardMainViewController();
      sub_100481438();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001CAA98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_100058000(&unk_100771B10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v30 - v17;
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = *(v4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController);
  if (v21)
  {
    v31 = a4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v21;
      sub_1000752F0(v22, &off_1007266F8, a1, a2, a3, v18);
      swift_unknownObjectRelease();

      v23 = type metadata accessor for IndexPath();
      (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
    }

    else
    {
      v23 = type metadata accessor for IndexPath();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    }

    sub_100016588(v18, v15, &unk_100771B10);
    type metadata accessor for IndexPath();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v15, 1, v23) == 1)
    {
      (*(v24 + 16))(v20, a3, v23);
      v26 = v25(v15, 1, v23);
      a4 = v31;
      if (v26 != 1)
      {
        sub_1000079B4(v15, &unk_100771B10);
      }
    }

    else
    {
      (*(v24 + 32))(v20, v15, v23);
      a4 = v31;
    }

    (*(v24 + 56))(v20, 0, 1, v23);
  }

  else
  {
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  }

  sub_100016588(v20, v12, &unk_100771B10);
  type metadata accessor for IndexPath();
  v27 = *(v23 - 8);
  v28 = *(v27 + 48);
  if (v28(v12, 1, v23) != 1)
  {
    return (*(v27 + 32))(a4, v12, v23);
  }

  (*(v27 + 16))(a4, a3, v23);
  result = (v28)(v12, 1, v23);
  if (result != 1)
  {
    return sub_1000079B4(v12, &unk_100771B10);
  }

  return result;
}

uint64_t sub_1001CB12C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_1001D266C(v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001CB2AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_1001CB3BC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v60 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  v23 = *(a2 + 16);
  v53 = result;
  if (v23)
  {
    v50 = a1;
    v25 = *(v16 + 16);
    v24 = v16 + 16;
    v56 = v25;
    v57 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource;
    v26 = a2 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v27 = *(v24 + 56);
    v58 = v24;
    v28 = v13;
    v29 = (v24 - 8);
    v30 = (v28 + 48);
    v51 = v28;
    v54 = (v28 + 32);
    v55 = v27;
    v31 = _swiftEmptyArrayStorage;
    v52 = v5;
    for (result = v25(v19, v26, v15); ; result = v56(v19, v26, v15))
    {
      v32 = *&v5[v57];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      (*v29)(v19, v15);
      v34 = v60;
      if ((*v30)(v12, 1, v60) == 1)
      {
        sub_1000079B4(v12, &unk_10076BB50);
      }

      else
      {
        v35 = *v54;
        (*v54)(v59, v12, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100548080(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_100548080(v36 > 1, v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v35(&v31[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v37], v59, v60);
        v5 = v52;
        v15 = v53;
      }

      v26 += v55;
      if (!--v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v38 = *&v5[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
  if (!v38)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v39 = UICollectionElementKindSectionHeader;
  v40 = v38;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v22, v53);
  v42 = [v40 layoutAttributesForSupplementaryElementOfKind:v39 atIndexPath:isa];

  if (v42)
  {
    [v42 frame];
    v61.x = a3;
    v61.y = a4;
    v43 = CGRectContainsPoint(v62, v61);

    if (v43)
    {
      return 0;
    }
  }

  v50 = a1;
  v31 = _swiftEmptyArrayStorage;
LABEL_18:
  [v5 convertPoint:v50 fromCoordinateSpace:{a3, a4}];
  v46 = v45;
  v48 = v47;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = sub_1004809F0(v5, v31, v46, v48);
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

void sub_1001CBA70(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6(v10);

  swift_unknownObjectRelease();
}

void sub_1001CBB0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator);
  if (v1)
  {
    memcpy(__dst, (v1 + 32), sizeof(__dst));
    memmove(v24, (v1 + 32), 0x118uLL);
    if (sub_10010896C(v24) == 1)
    {

      sub_100103A20(v41);
      if (!v42 || (v50[0] = v41[0], v50[1] = v41[1], v51 = v42, v53 = v44, v54 = v45, v55 = v46, v56 = v47, v52 = v43, sub_100104598(v50, __src), sub_1000079B4(v41, &unk_100772720), memcpy(v49, __src, sizeof(v49)), sub_10010896C(v49) == 1))
      {

        return;
      }

      v13 = *&v49[32];
      v14 = *v49;
      v17 = *&v49[16];
      v18 = *&v49[72];
      v15 = *&v49[88];
      v16 = *&v49[56];
      v19 = *&v49[104];
      v20 = *&v49[120];
      v5 = *&v49[168];
      v6 = *&v49[136];
      v3 = *&v49[48];
      v4 = *&v49[184];
      v10 = *&v49[152];
      v11 = *&v49[208];
      v7 = *&v49[224];
      v8 = *&v49[240];
      v9 = *&v49[192];
      v12 = *&v49[256];
      v2 = *&v49[272];
      memcpy(v22, (v1 + 32), sizeof(v22));
      memcpy((v1 + 32), __src, 0x118uLL);
      memcpy(v57, __src, sizeof(v57));
      sub_100106478(v57, v21);
      sub_1000079B4(v22, &qword_10076C040);
    }

    else
    {
      v2 = v40;
      v19 = v29;
      v20 = v30;
      v15 = v28;
      v16 = v26;
      v17 = v24[1];
      v18 = v27;
      v13 = v24[2];
      v14 = v24[0];
      v3 = v25;
      v4 = v34;
      v11 = v36;
      v12 = v39;
      v8 = v38;
      v9 = v35;
      v10 = v32;
      v6 = v31;
      v7 = v37;
      v5 = v33;
    }

    *v22 = v14;
    *&v22[16] = v17;
    *&v22[32] = v13;
    *&v22[56] = v16;
    *&v22[72] = v18;
    *&v22[88] = v15;
    *&v22[104] = v19;
    *&v22[120] = v20;
    *&v22[136] = v6;
    *&v22[152] = v10;
    *&v22[168] = v5;
    *&v22[48] = v3;
    *&v22[184] = v4;
    *&v22[192] = v9;
    *&v22[208] = v11;
    *&v22[224] = v7;
    *&v22[240] = v8;
    *&v22[256] = v12;
    *&v22[272] = v2;
    memcpy(v57, v22, sizeof(v57));
    sub_1001D1C44(__dst, v21);
    sub_1001052E4(v57);

    sub_1001D1CB4(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001CBE40@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v4 - 8);
  v41 = &v37 - v5;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    result = TTRBoardColumnItemIntermediateViewModel.itemID.getter();
    v19 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    if (v19)
    {
      v20 = v19;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        swift_unknownObjectRelease();
        (*(v13 + 8))(v15, v42);
        sub_1000079B4(v8, &qword_100772140);
        v21 = type metadata accessor for TTRRemindersListViewModel.Reminder();
        return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      }

      else
      {
        v37 = a1;
        (*(v10 + 32))(v12, v8, v9);
        v24 = (v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
        v25 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v26 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v25);
        if ((*(*(v26 + 8) + 1040))(v12, v25))
        {
          v27 = v24[3];
          v28 = v24[4];
          sub_10000C36C(v24, v27);
          (*(*(v28 + 8) + 904))(v12, v27);
        }

        v29 = v24[3];
        v30 = v24[4];
        sub_10000C36C(v24, v29);
        v31 = v41;
        (*(*(v30 + 8) + 512))(v12, v29);
        v32 = type metadata accessor for TTRRemindersListViewModel.Reminder();
        if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
        {
          swift_unknownObjectRelease();
          (*(v10 + 8))(v12, v9);
          (*(v13 + 8))(v15, v42);
        }

        else
        {
          v33 = v38;
          v34 = v39;
          v35 = v40;
          (*(v39 + 104))(v38, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v40);
          TTRRemindersListItemStateTracker.fullfil(_:of:)();
          v36 = v33;
          v31 = v41;
          (*(v34 + 8))(v36, v35);
          (*(v10 + 8))(v12, v9);
          (*(v13 + 8))(v15, v42);
          swift_unknownObjectRelease();
        }

        return sub_100016588(v31, v37, &qword_100772738);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = type metadata accessor for TTRRemindersListViewModel.Reminder();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  return result;
}

void sub_1001CC3FC(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v16 - v14;
  if (*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_1000079B4(v8, &qword_100772730);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1000079B4(v8, &qword_100772730);
      TTRBoardColumnItemIntermediateViewModel.itemID.getter();
      (*(v3 + 8))(v5, v2);
      (*(v10 + 32))(v15, v12, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for TTRIRemindersBoardMainViewController();
        sub_100481534();
        swift_unknownObjectRelease();
      }

      (*(v10 + 8))(v15, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CC6F8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v30 - v19;
  if (!*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {
    __break(1u);
    goto LABEL_12;
  }

  TTRViewModelObserver.localValue.getter();

  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_1000079B4(v13, &qword_100772730);
    return;
  }

  (*(v8 + 16))(v10, v13, v7);
  sub_1000079B4(v13, &qword_100772730);
  TTRBoardColumnItemIntermediateViewModel.itemID.getter();
  (*(v8 + 8))(v10, v7);
  (*(v15 + 32))(v20, v17, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    if (v23)
    {
      v24 = v23;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v26 = v31;
      v25 = v32;
      if ((*(v31 + 48))(v4, 1, v32) == 1)
      {
        swift_unknownObjectRelease();
        (*(v15 + 8))(v20, v14);
        sub_1000079B4(v4, &qword_100772140);
        return;
      }

      v27 = v30;
      (*(v26 + 32))(v30, v4, v25);
      v28 = *(v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v29 = *(v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v28);
      (*(*(v29 + 8) + 144))(v27, v28);
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v25);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_9:
  (*(v15 + 8))(v20, v14);
}

void sub_1001CCB98(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v16 - v14;
  if (*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_1000079B4(v8, &qword_100772730);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1000079B4(v8, &qword_100772730);
      TTRBoardColumnItemIntermediateViewModel.itemID.getter();
      (*(v3 + 8))(v5, v2);
      (*(v10 + 32))(v15, v12, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100485C10();
        swift_unknownObjectRelease();
      }

      (*(v10 + 8))(v15, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CCE68(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v30 - v19;
  if (!*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {
    __break(1u);
    goto LABEL_12;
  }

  TTRViewModelObserver.localValue.getter();

  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_1000079B4(v13, &qword_100772730);
    return;
  }

  (*(v8 + 16))(v10, v13, v7);
  sub_1000079B4(v13, &qword_100772730);
  TTRBoardColumnItemIntermediateViewModel.itemID.getter();
  (*(v8 + 8))(v10, v7);
  (*(v15 + 32))(v20, v17, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    if (v23)
    {
      v24 = v23;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v26 = v31;
      v25 = v32;
      if ((*(v31 + 48))(v4, 1, v32) == 1)
      {
        swift_unknownObjectRelease();
        (*(v15 + 8))(v20, v14);
        sub_1000079B4(v4, &qword_100772140);
        return;
      }

      v27 = v30;
      (*(v26 + 32))(v30, v4, v25);
      v28 = *(v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v29 = *(v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v22 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v28);
      (*(*(v29 + 8) + 200))(v27, v28);
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v25);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_9:
  (*(v15 + 8))(v20, v14);
}

void sub_1001CD308(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v17 - v15;
  if (*(a1 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_1000079B4(v9, &qword_100772730);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_1000079B4(v9, &qword_100772730);
      TTRBoardColumnItemIntermediateViewModel.itemID.getter();
      (*(v4 + 8))(v6, v3);
      (*(v11 + 32))(v16, v13, v10);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100485F04(v16, v18);
        swift_unknownObjectRelease();
      }

      (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001CD5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_100058000(&unk_100772740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v6 + 16))(v8, a1 + v16, v5);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000079B4(v11, &qword_100772738);
  }

  (*(v13 + 32))(v15, v11, v12);
  v18 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
  result = (*(v13 + 8))(v15, v12);
  if (v18)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v20 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v21);
      (*(*(v20 + 8) + 208))(v18, v22, v23, v24, v21);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001CD8F4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = *(v6 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v6 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v9);
    v11 = (*(*(v10 + 8) + 1120))(v4, v9);
    swift_unknownObjectRelease();
    sub_1000079B4(v4, &qword_100772140);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1001CDA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v8 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v7);
    v9 = (*(*(v8 + 8) + 312))(a3, a4, v7);
    swift_unknownObjectRelease();
    return v9 & 1;
  }

  return result;
}

uint64_t sub_1001CDB24@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100481334(v2, a1);
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100058000(&qword_100781830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t destroy for TTRIBoardColumnCollectionViewCell.EventPublishers()
{
}

void *sub_1001CDC50(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnCollectionViewCell.EventPublishers(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for TTRIBoardColumnCollectionViewCell.EventPublishers(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

void *sub_1001CDD54(uint64_t a1, void *a2)
{
  v5 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v65 - v14);
  __chkstk_darwin(v16);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1000079B4(v30, &unk_10076BB50);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1001D3C7C(&qword_10076FE50, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, a2[6] + v84 * v24, v11);
    v35 = sub_1001D3C7C(&qword_10076BB60, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1000079B4(v24, &unk_10076BB50);
        a2 = sub_1005528E0(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1001D07E0(v63, v65, v80, v24, &v89);
  a2 = v64;

LABEL_52:
  sub_10008BA48();
  return a2;
}

void *sub_1001CE7C0(uint64_t a1, void *a2)
{
  v5 = sub_100058000(&qword_10076B8B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_1000079B4(v30, &qword_10076B8B0);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_1001D3C7C(&qword_1007727B0, 255, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_1001D3C7C(&qword_10076B7A0, 255, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_1000079B4(v24, &qword_10076B8B0);
        a2 = sub_100552C08(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1001D0CBC(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_10008BA48();
  return a2;
}

void *sub_1001CF22C(uint64_t a1, void *a2)
{
  v5 = sub_100058000(&unk_100771B10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for IndexPath();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_1000079B4(v30, &unk_100771B10);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_1001D3C7C(&qword_100769AC0, 255, &type metadata accessor for IndexPath);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_1001D3C7C(&unk_100772710, 255, &type metadata accessor for IndexPath);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_1000079B4(v24, &unk_100771B10);
        a2 = sub_100552F30(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1001D1198(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_10008BA48();
  return a2;
}

void *sub_1001CFC98(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - v9;
  __chkstk_darwin(v8);
  i = v48 - v11;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = a2 + 7;
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_1001D3C7C(&qword_10076FE50, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, v58[6] + v20 * v59, v4);
    sub_1001D3C7C(&qword_10076BB60, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    __chkstk_darwin(v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1005528E0(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, v58[6] + v20 * v59, v4);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, v58[6] + v20 * v59, v4);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_1001D1674(v47, v48[0], v58, v20, v62);

LABEL_30:

  return a2;
}

char *sub_1001D0360(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v5);
        v19 = Hasher._finalize()();
        v20 = -1 << v6[32];
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v21 = *(v6 + 6);
      if (*(v21 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, v6 + 56, v5);
      v40 = sub_1001D1A70(v39, v14, v6, v2, v49);

      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    __chkstk_darwin(v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, v6 + 56, v5);
    v24 = *(v6 + 2);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      Hasher.init(_seed:)();
      v2 = &v48;
      Hasher._combine(_:)(v5);
      v30 = Hasher._finalize()();
      v31 = -1 << v6[32];
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = *(v6 + 6);
        if (*(v35 + v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_100553258(v14, v42, v44, v6);
LABEL_43:
    sub_10008BA48();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

void sub_1001D07E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000079B4(v11, &unk_10076BB50);
          v45 = v61;

          sub_1005528E0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1001D3C7C(&qword_10076FE50, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1001D3C7C(&qword_10076BB60, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_1001D0CBC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000079B4(v11, &qword_10076B8B0);
          v45 = v61;

          return sub_100552C08(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1001D3C7C(&qword_1007727B0, 255, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1001D3C7C(&qword_10076B7A0, 255, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_1001D1198(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000079B4(v11, &unk_100771B10);
          v45 = v61;

          return sub_100552F30(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1001D3C7C(&qword_100769AC0, 255, &type metadata accessor for IndexPath);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1001D3C7C(&unk_100772710, 255, &type metadata accessor for IndexPath);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_1001D1674(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v42 = &v35 - v15;
  result = __chkstk_darwin(v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_1005528E0(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_1001D3C7C(&qword_10076FE50, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_1001D3C7C(&qword_10076BB60, 255, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_1001D1A70(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_100553258(v7, a2, v9, a3);
}

uint64_t sub_1001D1C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076C040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D1D08(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  leading = 10.0;
  top = 0.0;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = *&Strong[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController];
  if (!v6)
  {

LABEL_7:
    bottom = 0.0;
    trailing = 10.0;
LABEL_10:
    [a1 setContentInsets:{top, leading, bottom, trailing}];
    return a1;
  }

  *(v6 + 32) = 1;
  *(v6 + 48) = 1;
  result = sub_10008C1D0();
  *(v6 + 48) = 0;
  if (*(v6 + 24))
  {

    TTRViewModelObserver.localValue.getter();

    if (v12)
    {
      v8 = &NSDirectionalEdgeInsetsZero;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
    }

    else
    {
      bottom = *&v11[2];
      trailing = *&v11[3];
      v8 = v11;
      leading = *&v11[1];
    }

    top = v8->top;

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D1E38()
{
  v1 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  PassthroughSubject.send(_:)();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (!v18)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    swift_unknownObjectRelease();
    v21 = &unk_10076BB50;
    v22 = v12;
    return sub_1000079B4(v22, v21);
  }

  result = (*(v14 + 32))(v16, v12, v13);
  v23 = *(v19 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  v26 = v34;
  v25 = v35;
  if ((*(v35 + 48))(v5, 1, v34) == 1)
  {
    swift_unknownObjectRelease();
    (*(v14 + 8))(v16, v13);
    v21 = &qword_100772140;
    v22 = v5;
    return sub_1000079B4(v22, v21);
  }

  (*(v25 + 32))(v9, v5, v26);
  v28 = v31;
  v27 = v32;
  v29 = v33;
  (*(v32 + 104))(v31, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v33);
  TTRRemindersListItemStateTracker.fullfil(_:of:)();
  (*(v27 + 8))(v28, v29);
  (*(v35 + 8))(v9, v26);
  (*(v14 + 8))(v16, v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_1001D2290()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_9;
  }

  v15 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      v18 = &unk_10076BB50;
      v19 = v9;
LABEL_8:
      sub_1000079B4(v19, v18);
LABEL_9:
      v23 = 0;
      return v23 & 1;
    }

    result = (*(v11 + 32))(v13, v9, v10);
    v20 = *&v16[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
    if (v20)
    {
      v21 = v20;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v22 = v26;
      if ((*(v26 + 48))(v3, 1, v4) != 1)
      {
        (*(v22 + 32))(v6, v3, v4);
        sub_10000C36C(&v16[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], *&v16[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24]);
        v24 = [v16 isEditing];
        v25 = sub_10013BF18;
        type metadata accessor for TTRIRemindersBoardPresenter();
        v23 = v25(v6, v24);
        swift_unknownObjectRelease();
        (*(v22 + 8))(v6, v4);
        (*(v11 + 8))(v13, v10);
        return v23 & 1;
      }

      swift_unknownObjectRelease();
      (*(v11 + 8))(v13, v10);
      v18 = &qword_100772140;
      v19 = v3;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D266C(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1000079B4(v6, &unk_10076BB50);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        a2(v11);
        swift_unknownObjectRelease();
      }

      return (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D284C()
{
  v1 = sub_100058000(&unk_10076BB50);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (v5)
  {
    v6 = v5;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v8 = (*(*(v7 - 8) + 48))(v4, 1, v7);
    sub_1000079B4(v4, &unk_10076BB50);
    if (v8 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      v12 = 0;
    }

    else
    {
      v10 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v11 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v10);
      v12 = (*(*(v11 + 8) + 304))(v10);
      swift_unknownObjectRelease();
    }

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001D29C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController))
  {
    __break(1u);
    return;
  }

  sub_100069648();

  v2 = [v1 parentViewController];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    sub_10037DD70(1, 0);
    sub_10037FFC0();

LABEL_6:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1001D2AD8()
{
  v1 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &unk_10076BB50);
      v11 = 0;
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = sub_10048586C();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
      }

      (*(v5 + 8))(v8, v4);
    }

    return v11 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D2CC8(void *a1)
{
  v3 = sub_100058000(&unk_10076BB50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = [a1 identifier];
  v67[3] = swift_getObjectType();
  v67[0] = v16;
  sub_1001C7268(v67, v8);
  sub_100004758(v67);
  v17 = v10 + 48;
  v63 = *(v10 + 48);
  if (v63(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &unk_10076BB50);
  }

  v56 = v13;
  v57 = v1;
  v58 = v15;
  v59 = v10;
  v19 = v10 + 32;
  v54 = *(v10 + 32);
  v54(v15, v8, v9);
  v20 = [a1 secondaryItemIdentifiers];
  v21 = &type metadata for AnyHashable;
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v22 + 56;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 56);
  v27 = (v24 + 63) >> 6;
  v55 = v19;
  v28 = (v19 + 24);

  v29 = 0;
  v60 = _swiftEmptyArrayStorage;
  v61 = v22 + 56;
  v62 = v27;
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      break;
    }

LABEL_10:
    sub_1001D3A20(*(v22 + 48) + 40 * (__clz(__rbit64(v26)) | (v29 << 6)), v67);
    v66[3] = v21;
    v66[0] = swift_allocObject();
    sub_1001D3A20(v67, v66[0] + 16);
    sub_1000046FC(v66, v65);
    type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    if (swift_dynamicCast())
    {
      v31 = v6;
      v32 = v9;
      v33 = v17;
      v34 = v22;
      v35 = v21;
      v36 = v64;
      AnyHashable.base.getter();

      v21 = v35;
      v22 = v34;
      v17 = v33;
      v9 = v32;
      v6 = v31;
      v23 = v61;
      v27 = v62;
      sub_100077654(v67);
      v37 = swift_dynamicCast();
      (*v28)(v6, v37 ^ 1u, 1, v9);
    }

    else
    {
      sub_100077654(v67);
      (*v28)(v6, 1, 1, v9);
    }

    v26 &= v26 - 1;
    sub_100004758(v66);
    if (v63(v6, 1, v9) == 1)
    {
      result = sub_1000079B4(v6, &unk_10076BB50);
    }

    else
    {
      v54(v56, v6, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = sub_100548080(0, v60[2] + 1, 1, v60);
      }

      v40 = v60[2];
      v39 = v60[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v52 = v40 + 1;
        v44 = sub_100548080(v39 > 1, v40 + 1, 1, v60);
        v41 = v52;
        v60 = v44;
      }

      v42 = v59;
      v43 = v60;
      v60[2] = v41;
      result = (v54)(v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40, v56, v9);
      v28 = v53;
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v30;
    if (v26)
    {
      goto LABEL_10;
    }
  }

  sub_100058000(&qword_100772760);
  v45 = v59;
  v46 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10062D400;
  v48 = v47 + v46;
  v49 = v58;
  (*(v45 + 16))(v48, v58, v9);
  v67[0] = v47;
  sub_100081704(v60);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
    type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();

    dispatch thunk of TTRRemindersBoardCellCellPresentationContext.requestHandleContextMenuStateChange(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v45 + 8))(v49, v9);
}

uint64_t sub_1001D3344(void *a1)
{
  v3 = sub_100058000(&unk_10076BB50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v52 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = [a1 identifier];
  v68[3] = swift_getObjectType();
  v68[0] = v16;
  sub_1001C7268(v68, v8);
  sub_100004758(v68);
  v17 = v10 + 48;
  v64 = *(v10 + 48);
  if (v64(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &unk_10076BB50);
  }

  v57 = v13;
  v59 = v1;
  v60 = v10;
  v20 = v10 + 32;
  v19 = *(v10 + 32);
  v58 = v15;
  v55 = v19;
  v19(v15, v8, v9);
  v21 = [a1 secondaryItemIdentifiers];
  v22 = &type metadata for AnyHashable;
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v56 = v20;
  v29 = (v20 + 24);

  v30 = 0;
  v61 = _swiftEmptyArrayStorage;
  v62 = v23 + 56;
  v63 = v28;
  while (1)
  {
    v31 = v30;
    if (!v27)
    {
      break;
    }

LABEL_10:
    sub_1001D3A20(*(v23 + 48) + 40 * (__clz(__rbit64(v27)) | (v30 << 6)), v68);
    v67[3] = v22;
    v67[0] = swift_allocObject();
    sub_1001D3A20(v68, v67[0] + 16);
    sub_1000046FC(v67, v66);
    type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    if (swift_dynamicCast())
    {
      v32 = v6;
      v33 = v9;
      v34 = v17;
      v35 = v23;
      v36 = v22;
      v37 = v65;
      AnyHashable.base.getter();

      v22 = v36;
      v23 = v35;
      v17 = v34;
      v9 = v33;
      v6 = v32;
      v24 = v62;
      v28 = v63;
      sub_100077654(v68);
      v38 = swift_dynamicCast();
      (*v29)(v6, v38 ^ 1u, 1, v9);
    }

    else
    {
      sub_100077654(v68);
      (*v29)(v6, 1, 1, v9);
    }

    v27 &= v27 - 1;
    sub_100004758(v67);
    if (v64(v6, 1, v9) == 1)
    {
      result = sub_1000079B4(v6, &unk_10076BB50);
    }

    else
    {
      v55(v57, v6, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = sub_100548080(0, v61[2] + 1, 1, v61);
      }

      v41 = v61[2];
      v40 = v61[3];
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v53 = v41 + 1;
        v45 = sub_100548080(v40 > 1, v41 + 1, 1, v61);
        v42 = v53;
        v61 = v45;
      }

      v43 = v60;
      v44 = v61;
      v61[2] = v42;
      result = (v55)(v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41, v57, v9);
      v29 = v54;
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v31;
    if (v27)
    {
      goto LABEL_10;
    }
  }

  sub_100058000(&qword_100772760);
  v46 = v60;
  v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10062D400;
  v49 = v58;
  (*(v46 + 16))(v48 + v47, v58, v9);
  v68[0] = v48;
  sub_100081704(v61);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v46 + 8))(v49, v9);
  }

  v51 = Strong;
  sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();

  dispatch thunk of TTRRemindersBoardCellCellPresentationContext.requestHandleContextMenuStateChange(_:)();

  (*(v46 + 8))(v49, v9);
  *(v51 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  swift_unknownObjectRelease();
}

void *sub_1001D39F0()
{
  v1 = sub_1001D1D08(*(v0 + 16));
  v2 = v1;
  return v1;
}

uint64_t sub_1001D3AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_1007727A8);

  return sub_1001C9F7C(a1, a2, a3);
}

uint64_t sub_1001D3B54(uint64_t *a1)
{
  v2 = sub_100058000(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1001D3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_1007727A0);

  return sub_1001CA0CC(a1, a2, a3);
}

uint64_t sub_1001D3C7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id TTRIGroupDetailAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupDetailAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIGroupDetailAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupDetailAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001D3DB8()
{
  result = qword_1007727E0;
  if (!qword_1007727E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007727E0);
  }

  return result;
}

uint64_t sub_1001D3E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v5 - 8);
  v60 = &v56 - v6;
  v7 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v7 - 8);
  v59 = &v56 - v8;
  v58 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v56 - v15;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  v61 = *(v23 - 8);
  v24 = *(v61 + 56);
  v25 = a2;
  v64 = v61 + 56;
  v65 = v23;
  v63 = v24;
  (v24)(a2, 1, 1);
  v26 = [*(v2 + qword_100771730) indexPathForCell:a1];
  if (!v26)
  {
    v35 = v59;
    v36 = v60;
    v62 = v10;
    v37 = v58;
    *&v66 = a1;
    sub_1001D6A1C();
    v38 = a1;
    sub_100058000(&qword_10076B8E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      return sub_1000079B4(v68, &qword_10076B8E8);
    }

    sub_10008687C(v68, v70);
    sub_10000C36C(v70, v70[3]);
    dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
    v39 = type metadata accessor for TTRITreeViewCellModel();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v35, 1, v39) == 1)
    {
      sub_1000079B4(v35, &unk_1007884E0);
      v66 = 0u;
      v67 = 0u;
    }

    else
    {
      TTRITreeViewCellModel.itemIdentifier.getter();
      (*(v40 + 8))(v35, v39);
      AnyHashable.base.getter();
      sub_100077654(v68);
    }

    sub_100058000(&qword_10076AE40);
    v42 = v37;
    v43 = swift_dynamicCast();
    v44 = v57;
    v45 = *(v57 + 56);
    if (!v43)
    {
      v45(v36, 1, 1, v42);
      sub_1000079B4(v36, &unk_10076BB50);
      return sub_100004758(v70);
    }

    v45(v36, 0, 1, v42);
    v46 = v62;
    (*(v44 + 32))(v62, v36, v42);
    sub_1000C84C8();
    if (*(v47 + 16) && (sub_1003AB294(v46), (v48 & 1) != 0))
    {

      v50 = sub_1000A97B4(v49);

      (*(v44 + 8))(v46, v42);
      sub_1000079B4(v25, &qword_100772140);
      if (v50)
      {
        v51 = *(*v50 + 144);
        swift_beginAccess();
        v52 = v50 + v51;
        v53 = v65;
        (*(v61 + 16))(v13, v52, v65);

        v54 = v53;
        v55 = 0;
LABEL_19:
        v63(v13, v55, 1, v54);
        sub_100016588(v13, v25, &qword_100772140);
        return sub_100004758(v70);
      }
    }

    else
    {

      (*(v44 + 8))(v46, v42);
      sub_1000079B4(v25, &qword_100772140);
    }

    v55 = 1;
    v54 = v65;
    goto LABEL_19;
  }

  v27 = v26;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 32))(v22, v19, v16);
  v28 = sub_1000C84C8();
  v29 = sub_1001D6638(v22, v28);

  (*(v17 + 8))(v22, v16);
  sub_1000079B4(v25, &qword_100772140);
  if (v29)
  {
    v30 = *(*v29 + 144);
    swift_beginAccess();
    v31 = v62;
    v32 = v29 + v30;
    v33 = v65;
    (*(v61 + 16))(v62, v32, v65);

    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v65;
    v31 = v62;
  }

  v63(v31, v34, 1, v33);
  return sub_100016588(v31, v25, &qword_100772140);
}

uint64_t sub_1001D45F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v5 - 8);
  v60 = &v56 - v6;
  v7 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v7 - 8);
  v59 = &v56 - v8;
  v57 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100771B40);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v56 - v15;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v61 = *(v20 - 8);
  v21 = *(v61 + 56);
  v22 = a2;
  v64 = v61 + 56;
  v65 = v20;
  v63 = v21;
  (v21)(a2, 1, 1);
  v23 = a1;
  v24 = [*(v2 + qword_100771730) indexPathForCell:a1];
  if (!v24)
  {
    v33 = v59;
    v34 = v60;
    v56 = v10;
    v35 = v58;
    v62 = v14;
    *&v66 = v23;
    sub_1001D6A1C();
    v36 = v23;
    sub_100058000(&qword_10076B8E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      return sub_1000079B4(v68, &qword_10076B8E8);
    }

    sub_10008687C(v68, v70);
    sub_10000C36C(v70, v70[3]);
    dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
    v37 = type metadata accessor for TTRITreeViewCellModel();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v33, 1, v37) == 1)
    {
      sub_1000079B4(v33, &unk_1007884E0);
      v66 = 0u;
      v67 = 0u;
    }

    else
    {
      TTRITreeViewCellModel.itemIdentifier.getter();
      (*(v38 + 8))(v33, v37);
      AnyHashable.base.getter();
      sub_100077654(v68);
    }

    sub_100058000(&qword_10076AE40);
    v40 = v57;
    v41 = swift_dynamicCast();
    v42 = *(v35 + 56);
    if (!v41)
    {
      v42(v34, 1, 1, v40);
      sub_1000079B4(v34, &qword_10076B8B0);
      return sub_100004758(v70);
    }

    v43 = v35;
    v42(v34, 0, 1, v40);
    v44 = *(v35 + 32);
    v45 = v56;
    v44(v56, v34, v40);
    sub_1000C8504();
    if (*(v46 + 16) && (sub_1003AB730(v45), (v47 & 1) != 0))
    {

      v49 = sub_1000A9A34(v48);

      (*(v43 + 8))(v45, v40);
      sub_1000079B4(v22, &unk_100771B40);
      if (v49)
      {
        v50 = *(*v49 + 144);
        swift_beginAccess();
        v51 = v62;
        v52 = v49 + v50;
        v53 = v65;
        (*(v61 + 16))(v62, v52, v65);

        v54 = v53;
        v55 = 0;
LABEL_19:
        v63(v51, v55, 1, v54);
        sub_100016588(v51, v22, &unk_100771B40);
        return sub_100004758(v70);
      }
    }

    else
    {

      (*(v43 + 8))(v45, v40);
      sub_1000079B4(v22, &unk_100771B40);
    }

    v55 = 1;
    v54 = v65;
    v51 = v62;
    goto LABEL_19;
  }

  v25 = v24;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = sub_1000C8504();
  v27 = sub_1001D6638(v19, v26);

  (*(v17 + 8))(v19, v16);
  sub_1000079B4(v22, &unk_100771B40);
  if (v27)
  {
    v28 = *(*v27 + 144);
    swift_beginAccess();
    v29 = v62;
    v30 = v27 + v28;
    v31 = v65;
    (*(v61 + 16))(v62, v30, v65);

    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v65;
    v29 = v62;
  }

  v63(v29, v32, 1, v31);
  return sub_100016588(v29, v22, &unk_100771B40);
}

uint64_t sub_1001D4DBC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007727E8);
  v1 = sub_100003E30(v0, qword_1007727E8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001D4E84()
{
  v1 = qword_10078A540;
  v2 = *&v0[qword_10078A540];
  if (v2)
  {
    type metadata accessor for TTRIRemindersListTreeTableView();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      return;
    }

    if (qword_100766FF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_1007727E8);
    v5 = v0;
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    if (*&v5[v1])
    {
      swift_getObjectType();
      sub_100058000(&qword_100772E88);
      v10 = String.init<A>(describing:)();
      v12 = sub_100004060(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      sub_100058000(&qword_100772E90);
      v13 = String.init<A>(describing:)();
      v15 = sub_100004060(v13, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRemindersListTreeView.scrollView is an instance of %s, expect %s", v9, 0x16u);
      swift_arrayDestroy();

LABEL_9:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001D50A4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for TTRIRemindersListBackground.ViewType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListBackground();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_10078A540];
  if (v11)
  {
    (*(v3 + 104))(v5, enum case for TTRIRemindersListBackground.ViewType.container(_:), v2);
    v12 = v11;
    v13 = [v1 traitCollection];
    TTRIRemindersListBackground.init(viewType:traitCollection:)();
    v14 = TTRIRemindersListBackground.color.getter();
    (*(v7 + 8))(v10, v6);
    [v12 setBackgroundColor:v14];

    sub_100058000(&unk_10076BD70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10062D400;
    *(v15 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v15 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001D5304(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1001D50A4();
  }

  return v6;
}

id sub_1001D5380(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for TTRIRemindersListTreeTableView());

  return [v11 initWithFrame:a1 style:{v4, v6, v8, v10}];
}

void *sub_1001D5404()
{
  swift_getObjectType();
  v1 = qword_10078A540;
  result = *(v0 + qword_10078A540);
  if (result)
  {
    [result bounds];
    result = *(v0 + v1);
    if (result)
    {
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = v6;
      [result adjustedContentInset];
      sub_100068328(v7, v8, v9, v10, v11, v12);
      sub_1001D5C94();
      __chkstk_darwin(v13);
      __chkstk_darwin(v14);
      sub_100058000(&qword_100772E68);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_1001D69B8();
      Sequence.firstMap<A>(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001D55C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, CGFloat a7@<D0>, CGFloat a8@<D1>, CGFloat a9@<D2>, CGFloat a10@<D3>)
{
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  v75 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v74 = v70 - v24;
  v25 = qword_10078A540;
  v26 = *(a3 + qword_10078A540);
  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = v26;
  [a2 bounds];
  [v27 convertRect:a2 fromCoordinateSpace:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v77.origin.x = a7;
  v77.origin.y = a8;
  v77.size.width = a9;
  v77.size.height = a10;
  MinY = CGRectGetMinY(v77);
  v78.origin.x = v29;
  v78.origin.y = v31;
  v78.size.width = v33;
  v78.size.height = v35;
  if (CGRectGetHeight(v78) > 0.0)
  {
    v79.origin.x = v29;
    v79.origin.y = v31;
    v79.size.width = v33;
    v79.size.height = v35;
    if (MinY <= CGRectGetMinY(v79))
    {
      v82.origin.x = v29;
      v82.origin.y = v31;
      v82.size.width = v33;
      v82.size.height = v35;
      Height = CGRectGetHeight(v82);
    }

    else
    {
      v80.origin.x = v29;
      v80.origin.y = v31;
      v80.size.width = v33;
      v80.size.height = v35;
      Height = 0.0;
      if (CGRectGetMaxY(v80) > MinY)
      {
        v81.origin.x = v29;
        v81.origin.y = v31;
        v81.size.width = v33;
        v81.size.height = v35;
        Height = CGRectGetMaxY(v81) - MinY;
      }
    }

    v83.origin.x = v29;
    v83.origin.y = v31;
    v83.size.width = v33;
    v83.size.height = v35;
    if (CGRectGetHeight(v83) * 0.5 <= Height)
    {
      v70[1] = a5;
      v71 = a4;
      v72 = a6;
      v73 = a1;
      v39 = qword_10078A548;
      v40 = *(a3 + qword_10078A548);
      if (v40)
      {
        v41 = v40;
        sub_1000C84C8();
        v43 = sub_1000F2C50(v73, v42);

        if (!v43)
        {

          goto LABEL_25;
        }

        v70[0] = v39;
        v44 = sub_1000C84C8();
        v46 = sub_1002EF9DC(v43, v44, v45);

        if (!v46)
        {
          goto LABEL_25;
        }

        v47 = *(*v46 + 144);
        swift_beginAccess();
        (*(v75 + 16))(v22, v46 + v47, v20);

        v48 = v74;
        (*(v75 + 32))(v74, v22, v20);
        v49 = *(a3 + v70[0]);
        if (v49)
        {
          v50 = v49;
          v51 = sub_1000C84C8();
          v54 = sub_1002ECE14(v48, v51, v52, v53);

          if (!v54)
          {
            (*(v75 + 8))(v48, v20);
            goto LABEL_25;
          }

          if (([v54 floating] & 1) == 0)
          {
            (*(v75 + 8))(v48, v20);

            goto LABEL_25;
          }

          v55 = *(a3 + v25);
          if (v55)
          {
            v56 = v55;
            [v54 bounds];
            [v56 convertRect:v54 fromCoordinateSpace:?];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;

            v84.origin.x = v58;
            v84.origin.y = v60;
            v84.size.width = v62;
            v84.size.height = v64;
            MaxY = CGRectGetMaxY(v84);
            v85.origin.x = v29;
            v85.origin.y = v31;
            v85.size.width = v33;
            v85.size.height = v35;
            if (CGRectGetHeight(v85) <= 0.0)
            {
              (*(v75 + 8))(v48, v20);

LABEL_30:
              (*(v75 + 56))(v72, 1, 1, v20);
              return;
            }

            v86.origin.x = v29;
            v86.origin.y = v31;
            v86.size.width = v33;
            v86.size.height = v35;
            if (MaxY <= CGRectGetMinY(v86))
            {
              v89.origin.x = v29;
              v89.origin.y = v31;
              v89.size.width = v33;
              v89.size.height = v35;
              v66 = CGRectGetHeight(v89);
            }

            else
            {
              v87.origin.x = v29;
              v87.origin.y = v31;
              v87.size.width = v33;
              v87.size.height = v35;
              v66 = 0.0;
              if (CGRectGetMaxY(v87) > MaxY)
              {
                v88.origin.x = v29;
                v88.origin.y = v31;
                v88.size.width = v33;
                v88.size.height = v35;
                v66 = CGRectGetMaxY(v88) - MaxY;
              }
            }

            v90.origin.x = v29;
            v90.origin.y = v31;
            v90.size.width = v33;
            v90.size.height = v35;
            v69 = CGRectGetHeight(v90);

            (*(v75 + 8))(v48, v20);
            if (v69 * 0.5 > v66)
            {
              goto LABEL_30;
            }

LABEL_25:
            v67 = v73;
            if (v71(v73))
            {
              v68 = v72;
              (*(v75 + 16))(v72, v67, v20);
              (*(v75 + 56))(v68, 0, 1, v20);
              return;
            }

            goto LABEL_30;
          }

LABEL_34:
          __break(1u);
          return;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  v38 = *(v75 + 56);

  v38(a6, 1, 1, v20);
}

uint64_t type metadata accessor for TTRIRemindersListTreeView()
{
  result = qword_100772828;
  if (!qword_100772828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D5C94()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v33 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772E80);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_100058000(&qword_100772E78);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v35 = &v33 - v13;
  v47 = v0;
  v14 = *(v0 + qword_10078A540);
  if (!v14)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = UITableView.orderedVisibleCell.getter();

  v38 = v16;
  if (v16 >> 62)
  {
LABEL_24:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v45 = v38 & 0xC000000000000001;
      v43 = qword_10078A548;
      v44 = v38 & 0xFFFFFFFFFFFFFF8;
      v19 = (v5 + 48);
      v34 = (v5 + 32);
      v5 = v38;
      v40 = (v37 + 56);
      v41 = v19;
      v39 = (v37 + 48);
      v48 = _swiftEmptyArrayStorage;
      v42 = v17;
      v33 = v3;
      while (1)
      {
        if (v45)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v44 + 16))
          {
            goto LABEL_23;
          }

          v20 = *(v5 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v23 = *(v47 + v43);
        if (!v23)
        {
          break;
        }

        v24 = v23;
        sub_1001D3E0C(v21, v3);

        if ((*v41)(v3, 1, v4) == 1)
        {
          sub_1000079B4(v3, &qword_100772140);
          (*v40)(v9, 1, 1, v10);
        }

        else
        {
          v25 = *v34;
          v26 = v36;
          (*v34)(v36, v3, v4);
          v27 = *(v10 + 48);
          v28 = v26;
          v5 = v38;
          v25(v9, v28, v4);
          *&v9[v27] = v21;
          v22 = v18 + 1;
          v3 = v33;
          v17 = v42;
          (*v40)(v9, 0, 1, v10);
        }

        if ((*v39)(v9, 1, v10) == 1)
        {
          sub_1000079B4(v9, &qword_100772E80);
        }

        else
        {
          v29 = v35;
          sub_100016588(v9, v35, &qword_100772E78);
          sub_100016588(v29, v46, &qword_100772E78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_10054723C(0, v48[2] + 1, 1, v48);
          }

          v31 = v48[2];
          v30 = v48[3];
          if (v31 >= v30 >> 1)
          {
            v48 = sub_10054723C(v30 > 1, v31 + 1, 1, v48);
          }

          v32 = v48;
          v48[2] = v31 + 1;
          sub_100016588(v46, v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, &qword_100772E78);
          v17 = v42;
        }

        ++v18;
        if (v22 == v17)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_26:
}

id sub_1001D62AC(double a1, double a2)
{
  isEscapingClosureAtFileLocation = v2;
  ObjectType = swift_getObjectType();
  v7 = objc_opt_self();
  if ([v7 areAnimationsEnabled])
  {
    v8 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514);
    if (v8)
    {

      v10 = v8(v9);
      sub_1000301AC(v8);
      if (v10)
      {
        if ([v10 _appearState] == 1)
        {
          ObjectType = swift_allocObject();
          *(ObjectType + 16) = isEscapingClosureAtFileLocation;
          *(ObjectType + 24) = a1;
          *(ObjectType + 32) = a2;
          v11 = swift_allocObject();
          *(v11 + 16) = sub_1001D6A68;
          *(v11 + 24) = ObjectType;
          v15[4] = sub_100026410;
          v15[5] = v11;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 1107296256;
          v15[2] = sub_100026440;
          v15[3] = &unk_10071A3E0;
          v12 = _Block_copy(v15);
          v13 = isEscapingClosureAtFileLocation;

          [v7 performWithoutAnimation:v12];

          _Block_release(v12);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return result;
          }

          __break(1u);
        }
      }
    }
  }

  v16.receiver = isEscapingClosureAtFileLocation;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "setContentOffset:", a1, a2);
}

uint64_t sub_1001D6638(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = IndexPath.section.getter();
  result = 0;
  if (v4 < 0 || v4 >= v3)
  {
    return result;
  }

  v6 = IndexPath.section.getter();
  if (v6 < 0 || v6 >= v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = *(a2 + 16 * v6 + 40);
  if (v3 >> 62)
  {
LABEL_17:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:

    return v10;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v9)
  {

    v8 = IndexPath.row.getter();
    if ((v8 & 0x8000000000000000) != 0 || v8 >= i)
    {
      break;
    }

    v9 = IndexPath.row.getter();
    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_19;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v3 + 8 * v9 + 32);

      goto LABEL_13;
    }

    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

void sub_1001D6760(char *a1)
{
  v2 = type metadata accessor for TTRIRemindersListBackground.ViewType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListBackground();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[qword_10078A540];
  if (v10)
  {
    (*(v3 + 104))(v5, enum case for TTRIRemindersListBackground.ViewType.container(_:), v2);
    v11 = v10;
    v12 = [a1 traitCollection];
    TTRIRemindersListBackground.init(viewType:traitCollection:)();
    v13 = TTRIRemindersListBackground.color.getter();
    (*(v7 + 8))(v9, v6);
    [v11 setBackgroundColor:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D694C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100058000(&qword_100772E78);
  return v3(a1, *(a1 + *(v4 + 48)));
}

unint64_t sub_1001D69B8()
{
  result = qword_100772E70;
  if (!qword_100772E70)
  {
    sub_10005D20C(&qword_100772E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100772E70);
  }

  return result;
}

unint64_t sub_1001D6A1C()
{
  result = qword_10076B8B8;
  if (!qword_10076B8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076B8B8);
  }

  return result;
}

id sub_1001D6A68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4.receiver = *(v0 + 16);
  v4.super_class = type metadata accessor for TTRIRemindersListTreeTableView();
  return objc_msgSendSuper2(&v4, "setContentOffset:", v1, v2);
}

uint64_t sub_1001D6AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  sub_10000794C(a1, &v18 - v8, &qword_100772140);
  v10 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.RemindersInsertionRequest(0);
  v11 = swift_allocObject();
  v12 = (v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___creationTarget;
  v14 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v14 - 8) + 56))(v11 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  v16 = sub_100058000(&qword_10076C6F8);
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder) = 2;
  sub_100016588(v9, v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, &qword_100772140);
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability) = v3;
  a3[3] = v10;
  a3[4] = &off_10071A4C8;
  *a3 = v11;
}

uint64_t sub_1001D6C98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v30 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v29 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = *(v5 + 16);
  v10(&v27 - v8, a1, v4);
  (*(v5 + 56))(v9, 0, 1, v4);
  v11 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.RemindersInsertionRequest(0);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___creationTarget;
  v15 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  v17 = sub_100058000(&qword_10076C6F8);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  *(v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder) = 2;
  sub_100016588(v9, v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, &qword_100772140);
  *(v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_childIndex) = 0;
  *(v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability) = v2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v28;
  v10(v28, v27, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = (v29 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v20, v19, v4);
  *(v22 + v21) = v18;
  v23 = (v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  v24 = *(v12 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  *v23 = sub_1001DE248;
  v23[1] = v22;

  sub_1000301AC(v24);

  v26 = v30;
  v30[3] = v11;
  v26[4] = &off_10071A4C8;
  *v26 = v12;
  return result;
}

uint64_t sub_1001D6FFC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    if (qword_100766FF8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100772E98);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Missing TTRSmartListDragAndDropPresenterCapabilityDelegate", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001D70F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = a1;
  v6 = a1;
  v7 = sub_10001D5F8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!sub_1001D6FFC())
  {
LABEL_6:

    goto LABEL_7;
  }

  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 32))(v2, v7, ObjectType, v9);

  swift_unknownObjectRelease();
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = sub_1002613B0(v6);
      if (v13)
      {
        v14 = v12;
        v15 = *(v11 + 56);
        v16 = type metadata accessor for TTRSectionID();
        v17 = *(v16 - 8);
        (*(v17 + 16))(a2, v15 + *(v17 + 72) * v14, v16);

        return (*(v17 + 56))(a2, 0, 1, v16);
      }
    }

    goto LABEL_6;
  }

LABEL_7:
  v19 = type metadata accessor for TTRSectionID();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t sub_1001D7300@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_1001D7348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  sub_100058000(&qword_10076BB08);
  sub_100003540(0, &qword_10076BA50);
  sub_10011763C(&unk_1007758B0, &qword_10076BB08);
  sub_1001288B4();
  v8 = Sequence.mapToSet<A>(_:)();
  if (sub_1001D6FFC())
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 32))(v3, v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100058000(&qword_100773398);
  v14 = *(v13 + 64);
  v15 = *(v13 + 80);
  v19 = *(v4 + 32);
  *a3 = a1;
  *(a3 + 1) = v19;
  v16 = sub_100058000(&unk_100775620);
  (*(*(v16 - 8) + 16))(&a3[v14], a2, v16);
  *&a3[v15] = v12;
  v17 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(a3, 0, 1, v17);

  return v19;
}

uint64_t sub_1001D7568()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100772E98);
  v1 = sub_100003E30(v0, qword_100772E98);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001D7630@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a1;
  v38 = a4;
  v5 = sub_100058000(&qword_1007758D0);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  if ((*(v12 + 88))(v14, v11) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_15;
  }

  (*(v12 + 96))(v14, v11);
  (*(v16 + 32))(v18, v14, v15);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if ((*(v8 + 88))(v10, v7) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v16 + 8))(v18, v15);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 96))(v10, v7);
  v19 = *v10;
  v20 = v37[3];
  v21 = v37[4];
  sub_10000C36C(v37, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (!v22)
  {
    (*(v16 + 8))(v18, v15);

    goto LABEL_15;
  }

  v23 = v22;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v24 = [v23 objectID];
  v25 = v35;
  sub_1001D70F0(v24, v35);

  v26 = type metadata accessor for TTRSectionID();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {

    sub_1000079B4(v25, &qword_1007758D0);
LABEL_14:
    (*(v16 + 8))(v18, v15);
    goto LABEL_15;
  }

  v28 = TTRSectionID.remObjectID.getter();
  (*(v27 + 8))(v25, v26);
  if (!v28)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_100003540(0, &qword_100775690);
  v29 = static NSObject.== infix(_:_:)();

  (*(v16 + 8))(v18, v15);
  if ((v29 & 1) == 0)
  {
LABEL_15:
    v30 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    goto LABEL_16;
  }

  v30 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
LABEL_16:
  v31 = *v30;
  v32 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v32 - 8) + 104))(v38, v31, v32);
}

uint64_t sub_1001D7B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100773360);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v18);
  sub_100058000(&qword_100773368);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_1001DE114(v6, v10, type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_1001DE17C(v10, type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_100773360);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_1001D7E04(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + *(a1 + 20));
  result = sub_1001D6FFC();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 24))(v3, v2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

void sub_1001D7E8C(void *a1)
{
  v2 = v1;
  v98 = type metadata accessor for TTRRemindersListViewModel.Item();
  v92 = *(v98 - 8);
  __chkstk_darwin(v98);
  v105 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  v6 = __chkstk_darwin(v5 - 8);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v81 - v8;
  v100 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v91 = *(v100 - 8);
  v9 = __chkstk_darwin(v100);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = (&v81 - v11);
  v104 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v107 = *(v104 - 8);
  v12 = __chkstk_darwin(v104);
  v102 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v81 - v14;
  v15 = sub_100058000(&qword_100773300);
  __chkstk_darwin(v15 - 8);
  v17 = &v81 - v16;
  v18 = sub_100058000(&qword_100773308);
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v103 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v99 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v81 - v24;
  v26 = a1[3];
  v25 = a1[4];
  sub_10000C36C(a1, v26);
  v95 = *(v25 + 8);
  v27 = v95(v26, v25);
  if (v27)
  {

    v89 = v2;
    sub_1001D8C30(v17);
    v28 = sub_100058000(&qword_100773310);
    if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
    {
      sub_1000079B4(v17, &qword_100773300);
    }

    else
    {
      v29 = *(v28 + 48);
      v87 = *(v18 + 48);
      v88 = v29;
      v90 = *(v103 + 32);
      v90(v20, v17, v21);
      sub_1001DE114(v88 + v17, v87 + v20, type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v30 = *(v18 + 48);
      v31 = v21;
      v32 = v106;
      v90(v106, v20, v31);
      sub_1001DE17C(&v20[v30], type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v33 = v95(v26, v25);
      if (v33)
      {
        v34 = v33;
        v90 = v31;
        v35 = *(v89 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability);
        if (sub_1001D6FFC())
        {
          v37 = v36;
          ObjectType = swift_getObjectType();
          v95 = (*(v37 + 8))(v35, ObjectType, v37);
          swift_unknownObjectRelease();
          v39 = *(v35 + 40);
          v40 = v90;
          v41 = v106;
          v42 = v103;
          if (v39)
          {
            if (v39 == 1)
            {
              v43 = [v34 objectID];
              v44 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

              v45 = v104;
              v102 = *(v44 + 16);
              if (v102)
              {
                v81 = v34;
                v46 = 0;
                v96 = (v44 + ((*(v107 + 80) + 32) & ~*(v107 + 80)));
                v94 = (v107 + 16);
                LODWORD(v89) = enum case for TTRRemindersListViewModel.Item.reminder(_:);
                v47 = (v92 + 1);
                v87 = (v92 + 6);
                v88 = (v92 + 13);
                v85 = (v92 + 11);
                LODWORD(v84) = enum case for TTRRemindersListViewModel.Item.section(_:);
                v86 = (v107 + 8);
                v92 += 12;
                v83 = (v91 + 4);
                v82 = (v103 + 8);
                ++v91;
                v48 = v97;
                v49 = v98;
                while (v46 < *(v44 + 16))
                {
                  v50 = *(v107 + 16);
                  v50(v48, &v96[*(v107 + 72) * v46], v45);
                  v51 = v45;
                  v52 = v105;
                  v50(v105, v48, v51);
                  (*v88)(v52, v89, v49);
                  v53 = v101;
                  TTRRemindersListTreeViewModel.parent(of:)();
                  v54 = *v47;
                  v55 = v53;
                  (*v47)(v52, v49);
                  if ((*v87)(v53, 1, v49) == 1)
                  {
                    (*v86)(v48, v51);
                    sub_1000079B4(v53, &qword_100772140);
                    v45 = v51;
                  }

                  else
                  {
                    v56 = (*v85)(v53, v49);
                    if (v56 == v84)
                    {
                      (*v92)(v53, v49);
                      v57 = v93;
                      v58 = v100;
                      (*v83)(v93, v55, v100);
                      v59 = v99;
                      TTRRemindersListViewModel.SectionHeader.id.getter();
                      sub_1001DDF28(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
                      v60 = v90;
                      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
                      (*v82)(v59, v60);
                      (*v91)(v57, v58);
                      v48 = v97;
                      v45 = v104;
                      (*v86)(v97, v104);
                      if (v61)
                      {
LABEL_34:
                        v40 = v90;
                        v41 = v106;
                        v34 = v81;
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v48 = v97;
                      v45 = v104;
                      (*v86)(v97, v104);
                      v54(v53, v49);
                    }
                  }

                  if (v102 == ++v46)
                  {
                    goto LABEL_34;
                  }
                }

                __break(1u);
LABEL_37:
                __break(1u);
              }

              else
              {
LABEL_35:

                (*(v103 + 8))(v41, v40);
              }
            }

            else
            {
              v81 = v34;
              v62 = [v34 objectID];
              v63 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

              v64 = 0;
              v101 = *(v63 + 16);
              v89 = v107 + 16;
              LODWORD(v88) = enum case for TTRRemindersListViewModel.Item.reminder(_:);
              v87 = (v92 + 13);
              v97 = (v92 + 1);
              v86 = (v92 + 6);
              v85 = (v92 + 11);
              v84 = v92 + 12;
              LODWORD(v92) = enum case for TTRRemindersListViewModel.Item.section(_:);
              v83 = (v91 + 4);
              v103 = v42 + 8;
              v65 = (v91 + 1);
              v93 = (v107 + 8);
              v66 = v104;
              v67 = v105;
              while (1)
              {
                if (v101 == v64)
                {
LABEL_28:

                  goto LABEL_33;
                }

                if (v64 >= *(v63 + 16))
                {
                  goto LABEL_37;
                }

                v68 = v63;
                v69 = v63 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v64;
                v70 = *(v107 + 16);
                v71 = v102;
                v70(v102, v69, v66);
                v70(v67, v71, v66);
                v72 = v98;
                (*v87)(v67, v88, v98);
                v73 = v96;
                TTRRemindersListTreeViewModel.parent(of:)();
                v74 = *v97;
                (*v97)(v67, v72);
                if ((*v86)(v73, 1, v72) == 1)
                {

                  (*v93)(v102, v104);
                  sub_1000079B4(v73, &qword_100772140);
                  v41 = v106;
                  goto LABEL_33;
                }

                v75 = (*v85)(v73, v72);
                v41 = v106;
                if (v75 != v92)
                {
                  break;
                }

                (*v84)(v73, v72);
                v76 = v94;
                v77 = v73;
                v78 = v100;
                (*v83)(v94, v77, v100);
                v79 = v99;
                TTRRemindersListViewModel.SectionHeader.id.getter();
                v80 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
                (*v103)(v79, v90);
                (*v65)(v76, v78);
                v66 = v104;
                (*v93)(v102, v104);
                ++v64;
                v63 = v68;
                if ((v80 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }

              (*v93)(v102, v104);
              v74(v73, v72);
LABEL_33:
              (*v103)(v41, v90);
            }
          }

          else
          {

            (*(v42 + 8))(v41, v40);
          }
        }

        else
        {

          (*(v103 + 8))(v106, v90);
        }
      }

      else
      {
        (*(v103 + 8))(v32, v31);
      }
    }
  }
}

uint64_t sub_1001D8C30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  __chkstk_darwin(v9);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v46 - v23;
  sub_1001D95E8(v14);
  v25 = sub_100058000(&qword_10076C708);
  if ((*(*(v25 - 8) + 48))(v14, 1, v25) != 1)
  {
    v47 = v8;
    v48 = v5;
    v29 = a1;
    v30 = *(v19 + 32);
    v30(v17, v14, v18);
    v30(v24, v17, v18);
    (*(v19 + 16))(v22, v24, v18);
    v31 = (*(v19 + 88))(v22, v18);
    if (v31 != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      if (v31 == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v19 + 96))(v22, v18);
        v34 = v51;
        v35 = v22;
        v36 = v52;
        (*(v53 + 32))(v51, v35, v52);
        v37 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability);
        if (sub_1001D6FFC())
        {
          v39 = v38;
          ObjectType = swift_getObjectType();
          v41 = v48;
          (*(v39 + 16))(v37, v34, ObjectType, v39);
          swift_unknownObjectRelease();
          if ((*(v49 + 48))(v41, 1, v50) != 1)
          {
            v42 = v34;
            v43 = v47;
            sub_1001DE114(v41, v47, type metadata accessor for TTRRemindersListMatchedAttributeValue);
            v44 = sub_100058000(&qword_100773310);
            v45 = *(v44 + 48);
            TTRRemindersListViewModel.SectionHeader.id.getter();
            (*(v53 + 8))(v42, v36);
            (*(v19 + 8))(v24, v18);
            sub_1001DE114(v43, v29 + v45, type metadata accessor for TTRRemindersListMatchedAttributeValue);
            return (*(*(v44 - 8) + 56))(v29, 0, 1, v44);
          }
        }

        else
        {
          v41 = v48;
          (*(v49 + 56))(v48, 1, 1, v50);
        }

        (*(v53 + 8))(v34, v36);
        (*(v19 + 8))(v24, v18);
        sub_1000079B4(v41, &qword_10076E910);
        goto LABEL_5;
      }

      if (v31 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v31 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v31 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v31 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v31 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v31 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v31 != enum case for TTRRemindersListViewModel.Item.tip(_:))
      {
        if (v31 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v31 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v19 + 8))(v24, v18);
        goto LABEL_5;
      }
    }

    v32 = *(v19 + 8);
    v32(v24, v18);
    v32(v22, v18);
LABEL_5:
    v26 = sub_100058000(&qword_100773310);
    v27 = *(*(v26 - 8) + 56);
    v28 = v29;
    return v27(v28, 1, 1, v26);
  }

  sub_1000079B4(v14, &qword_10076C6F8);
  v26 = sub_100058000(&qword_100773310);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1;
  return v27(v28, 1, 1, v26);
}

uint64_t sub_1001D9380@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100773300);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100058000(&qword_100773308);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_1001D8C30(v4);
  v8 = sub_100058000(&qword_100773310);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100773300);
    v9 = 1;
  }

  else
  {
    v10 = *(v8 + 48);
    v11 = *(v5 + 48);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v4, v12);
    sub_1001DE114(&v4[v10], &v7[v11], type metadata accessor for TTRRemindersListMatchedAttributeValue);
    sub_1001DE114(&v7[*(v5 + 48)], a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    (*(v13 + 8))(v7, v12);
    v9 = 0;
  }

  v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v14 - 8) + 56))(a1, v9, 1, v14);
}

uint64_t sub_1001D95E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  v5 = __chkstk_darwin(v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_100058000(&qword_10076FA28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_100058000(&qword_100773320);
  v41 = *(v16 - 8);
  __chkstk_darwin(v16);
  v38 = &v36 - v17;
  v18 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability);
  if (sub_1001D6FFC())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v18, ObjectType, v20);
    swift_unknownObjectRelease();
    sub_10000794C(v2 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_parent, v8, &qword_100772140);
    sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = v42;
    TTRDerivedTreeLocation.init(parent:index:)();
    TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
    (*(v10 + 8))(v12, v9);
    v23 = v41;
    if ((*(v41 + 48))(v15, 1, v16) == 1)
    {

      v24 = &qword_100773318;
      v25 = v15;
    }

    else
    {
      v26 = v38;
      (*(v23 + 32))(v38, v15, v16);
      v27 = v39;
      TTRBaseTreeLocation.parent.getter();
      v28 = v40;
      if ((*(v40 + 48))(v27, 1, v22) != 1)
      {
        v31 = v37;
        (*(v28 + 32))(v37, v27, v22);
        v32 = sub_100058000(&qword_10076C708);
        v33 = v23;
        v39 = *(v32 + 48);
        v34 = v43;
        (*(v28 + 16))(v43, v31, v22);
        v35 = TTRBaseTreeLocation.index.getter();

        (*(v28 + 8))(v31, v22);
        (*(v33 + 8))(v26, v16);
        *&v39[v34] = v35;
        return (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
      }

      (*(v23 + 8))(v26, v16);

      v24 = &qword_100772140;
      v25 = v27;
    }

    sub_1000079B4(v25, v24);
  }

  v29 = sub_100058000(&qword_10076C708);
  return (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
}

uint64_t sub_1001D9B84()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_parent, &qword_100772140);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D9C80@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
  v3 = sub_100058000(&unk_100775620);
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001D9D88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773370);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___creationTarget;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773370);
  v10 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1001DE114(v8, a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  sub_1000079B4(v8, &qword_100773370);
  sub_1001D9F80(v1, a1);
  sub_1001DE1DC(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v6, v1 + v9, &qword_100773370);
  return swift_endAccess();
}

char *sub_1001D9F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v3 - 8);
  v83 = &v75 - v4;
  v5 = type metadata accessor for TTRSection();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v9 - 8);
  v86 = &v75 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  __chkstk_darwin(v11);
  v89 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v75 - v15;
  v17 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v17 - 8);
  v19 = &v75 - v18;
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  v27 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v29 = 0;
  swift_storeEnumTagMultiPayload();
  sub_1001DACDC(v16);
  v30 = sub_100058000(&qword_10076C708);
  if ((*(*(v30 - 8) + 48))(v16, 1, v30) == 1)
  {
    sub_1000079B4(v16, &qword_10076C6F8);
    v31 = v29;
    v32 = v90;
    return sub_1001DE114(v31, v32, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  v78 = v27;
  v79 = v29;
  v77 = v7;
  v33 = v90;
  v34 = *(v21 + 4);
  v34(v19, v16, v20);
  v34(v26, v19, v20);
  (*(v21 + 2))(v24, v26, v20);
  v35 = (*(v21 + 11))(v24, v20);
  v36 = v26;
  if (v35 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    v37 = *(v21 + 1);
    v37(v26, v20);
    v37(v24, v20);
    v38 = v33;
LABEL_5:
    v31 = v79;
LABEL_25:
    v32 = v38;
    return sub_1001DE114(v31, v32, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  v38 = v33;
  if (v35 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v35 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      v43 = *(v21 + 1);
      v43(v26, v20);
      sub_1001DE114(v79, v33, type metadata accessor for TTRRemindersListReminderActionTarget);
      return (v43)(v24, v20);
    }

    if (v35 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v35 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v35 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v35 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v35 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v35 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      v58 = *(v21 + 1);
      v58(v26, v20);
      v58(v24, v20);
      goto LABEL_5;
    }

    v72 = v79;
    if (v35 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v35 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      (*(v21 + 1))(v26, v20);
      v31 = v72;
      goto LABEL_25;
    }

    goto LABEL_50;
  }

  (*(v21 + 12))(v24, v20);
  v39 = v88;
  v40 = v89;
  v41 = v24;
  v42 = v87;
  (*(v88 + 32))(v89, v41, v87);
  if (sub_1001DAEEC())
  {
    (*(v39 + 8))(v40, v42);
    (*(v21 + 1))(v36, v20);
LABEL_24:
    v31 = v79;
    goto LABEL_25;
  }

  v45 = *(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  if (!sub_1001D6FFC())
  {
    v59 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    v51 = v86;
    (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
    goto LABEL_23;
  }

  v47 = v46;
  ObjectType = swift_getObjectType();
  v49 = *(v47 + 16);
  v50 = v47;
  v51 = v86;
  v49(v45, v40, ObjectType, v50);
  swift_unknownObjectRelease();
  v52 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
  {
LABEL_23:
    (*(v39 + 8))(v40, v42);
    (*(v21 + 1))(v36, v20);
    sub_1000079B4(v51, &qword_10076E910);
    goto LABEL_24;
  }

  v53 = v40;
  v76 = v36;
  sub_1000079B4(v51, &qword_10076E910);
  v54 = v84;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v55 = v85;
  v56 = v77;
  v57 = (*(v85 + 88))(v54, v77);
  if (v57 != enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    v86 = v21;
    if (v57 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      goto LABEL_28;
    }

    if (v57 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v57 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v57 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v57 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v57 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v57 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
    {
      (*(v39 + 8))(v89, v42);
      (*(v86 + 1))(v76, v20);
      sub_1001DE17C(v79, type metadata accessor for TTRRemindersListReminderActionTarget);
      (*(v55 + 8))(v54, v56);
      goto LABEL_40;
    }

    if (v57 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
    {
      (*(v55 + 8))(v54, v56);
      v73 = *(v39 + 8);
      v74 = REMSmartListTypeCustom;
      v73(v89, v42);
      (*(v86 + 1))(v76, v20);
      sub_1001DE17C(v79, type metadata accessor for TTRRemindersListReminderActionTarget);
      *v38 = v74;
      return swift_storeEnumTagMultiPayload();
    }

    if (v57 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
    {
LABEL_28:
      (*(v55 + 96))(v54, v56);
      v60 = *v54;
      if (sub_1001D6FFC())
      {
        v62 = v61;
        v63 = swift_getObjectType();
        v64 = v42;
        v65 = v39;
        v66 = v83;
        (*(v62 + 40))(v45, v60, v63, v62);

        swift_unknownObjectRelease();
        (*(v65 + 8))(v89, v64);
        (*(v86 + 1))(v76, v20);
        sub_1001DE17C(v79, type metadata accessor for TTRRemindersListReminderActionTarget);
        v68 = v81;
        v67 = v82;
        if ((*(v81 + 48))(v66, 1, v82) != 1)
        {
          v69 = *(v68 + 32);
          v70 = v80;
          v69(v80, v66, v67);
          v69(v38, v70, v67);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {

        (*(v39 + 8))(v89, v42);
        (*(v86 + 1))(v76, v20);
        sub_1001DE17C(v79, type metadata accessor for TTRRemindersListReminderActionTarget);
        v66 = v83;
        (*(v81 + 56))(v83, 1, 1, v82);
      }

      sub_1000079B4(v66, &unk_100775960);
      goto LABEL_40;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_50:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v39 + 8))(v53, v42);
  (*(v21 + 1))(v76, v20);
  sub_1001DE17C(v79, type metadata accessor for TTRRemindersListReminderActionTarget);
  (*(v55 + 8))(v54, v56);
LABEL_40:
  v89 = *(v45 + 32);
  *v38 = v89;
  swift_storeEnumTagMultiPayload();
  v71 = v89;

  return v71;
}

uint64_t sub_1001DACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773358);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773358);
  v10 = sub_100058000(&qword_10076C6F8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C6F8);
  }

  sub_1000079B4(v8, &qword_100773358);
  sub_1001DAF30(v1, a1);
  sub_10000794C(a1, v6, &qword_10076C6F8);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v6, v1 + v9, &qword_100773358);
  return swift_endAccess();
}

uint64_t sub_1001DAEEC()
{
  v1 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder;
  v2 = *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1001DB4CC(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1001DAF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  v5 = __chkstk_darwin(v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_100058000(&qword_10076FA28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_100058000(&qword_100773320);
  v41 = *(v16 - 8);
  __chkstk_darwin(v16);
  v38 = &v36 - v17;
  v18 = *(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  if (sub_1001D6FFC())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v18, ObjectType, v20);
    swift_unknownObjectRelease();
    sub_10000794C(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v8, &qword_100772140);
    sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = v42;
    TTRDerivedTreeLocation.init(parent:index:)();
    TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
    (*(v10 + 8))(v12, v9);
    v23 = v41;
    if ((*(v41 + 48))(v15, 1, v16) == 1)
    {

      v24 = &qword_100773318;
      v25 = v15;
    }

    else
    {
      v26 = v38;
      (*(v23 + 32))(v38, v15, v16);
      v27 = v39;
      TTRBaseTreeLocation.parent.getter();
      v28 = v40;
      if ((*(v40 + 48))(v27, 1, v22) != 1)
      {
        v31 = v37;
        (*(v28 + 32))(v37, v27, v22);
        v32 = sub_100058000(&qword_10076C708);
        v33 = v23;
        v39 = *(v32 + 48);
        v34 = v43;
        (*(v28 + 16))(v43, v31, v22);
        v35 = TTRBaseTreeLocation.index.getter();

        (*(v28 + 8))(v31, v22);
        (*(v33 + 8))(v26, v16);
        *&v39[v34] = v35;
        return (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
      }

      (*(v23 + 8))(v26, v16);

      v24 = &qword_100772140;
      v25 = v27;
    }

    sub_1000079B4(v25, v24);
  }

  v29 = sub_100058000(&qword_10076C708);
  return (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
}

BOOL sub_1001DB4CC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - v8;
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  if (*(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_childIndex) < 1)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  if (!sub_1001D6FFC())
  {
    return 0;
  }

  v14 = v13;
  ObjectType = swift_getObjectType();
  (*(v14 + 8))(v12, ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = TTRRemindersListTreeViewModel.presentationTree.getter();

  swift_getObjectType();
  v20[1] = v16;
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  swift_unknownObjectRelease();
  v17 = *(v3 + 32);
  v17(v11, v9, v2);
  v17(v6, v11, v2);
  v18 = (*(v3 + 88))(v6, v2) == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  (*(v3 + 8))(v6, v2);
  return v18;
}

uint64_t sub_1001DB708()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, &qword_100772140);

  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter));
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___creationTarget, &qword_100773370);
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest____lazy_storage___actualInsertionLocation, &qword_100773358);

  return swift_deallocClassInstance();
}

uint64_t sub_1001DB828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (*v2 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_additionalSubjectFilter);
  v6 = *v5;
  v7 = v5[1];
  v8 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.RemindersInsertionPlan(0);
  swift_allocObject();

  sub_10003BE34(v6);

  v10 = sub_1001DDF70(v9, a1, v6, v7);
  sub_1000301AC(v6);

  a2[3] = v8;
  a2[4] = &off_10071A498;
  *a2 = v10;
  return result;
}

uint64_t sub_1001DB8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773380);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773380);
  v10 = sub_100058000(&qword_10076C700);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C700);
  }

  sub_1000079B4(v8, &qword_100773380);
  sub_1001DBB00(v1, a1);
  sub_10000794C(a1, v6, &qword_10076C700);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v6, v1 + v9, &qword_100773380);
  return swift_endAccess();
}

uint64_t sub_1001DBB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - v4;
  v46 = sub_100058000(&qword_100773320);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - v5;
  v6 = sub_100058000(&qword_100773388);
  __chkstk_darwin(v6 - 8);
  v45 = &v39 - v7;
  v8 = sub_100058000(&qword_100773390);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - v9;
  v10 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v20 = *(*(a1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v20, ObjectType, v22);

    swift_unknownObjectRelease();
    sub_1001DACDC(v12);
    v24 = sub_100058000(&qword_10076C708);
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {

      v25 = &qword_10076C6F8;
      v26 = v12;
    }

    else
    {
      v27 = *&v12[*(v24 + 48)];
      v28 = *(v13 + 48);
      v40 = v17;
      v29 = *(v17 + 32);
      v29(v15, v12, v16);
      *&v15[v28] = v27;
      v29(v19, v15, v16);
      v30 = v40;
      v31 = v42;
      (*(v40 + 16))(v42, v19, v16);
      (*(v30 + 56))(v31, 0, 1, v16);
      sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v32 = v43;
      TTRBaseTreeLocation.init(parent:index:)();

      v33 = v45;
      TTRRemindersListTreeViewModel.relativeInsertionPosition(forInsertingAt:skipping:)();

      (*(v44 + 8))(v32, v46);
      v35 = v47;
      v34 = v48;
      if ((*(v47 + 48))(v33, 1, v48) != 1)
      {
        v38 = v41;
        (*(v35 + 32))(v41, v33, v34);
        sub_100003540(0, &qword_10076BB00);
        TTRRelativeInsertionPosition.optionalMapSibling<A>(_:)();

        (*(v35 + 8))(v38, v34);
        return (*(v30 + 8))(v19, v16);
      }

      (*(v30 + 8))(v19, v16);

      v25 = &qword_100773388;
      v26 = v33;
    }

    sub_1000079B4(v26, v25);
  }

  else
  {
  }

  v36 = sub_100058000(&unk_100775620);
  return (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
}

uint64_t sub_1001DC1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(v5, a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1001DC250(uint64_t a1)
{
  v62 = sub_100058000(&qword_100773328);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v54 - v3;
  v4 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v59 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v59);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v54 - v11;
  __chkstk_darwin(v10);
  v56 = &v54 - v13;
  v14 = swift_allocObject();
  v63 = a1;
  *(v14 + 16) = a1;
  sub_100058000(&qword_100773330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = sub_1001DE068;
  *(v15 + 40) = v14;
  v64 = v15;
  v60 = v1;
  v16 = *(*(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v14;
  if (!Strong)
  {

LABEL_5:
    sub_1001DACDC(v6);
    v27 = sub_100058000(&qword_10076C708);
    v28 = (*(*(v27 - 8) + 48))(v6, 1, v27);
    v26 = v64;
    if (v28)
    {
      sub_1000079B4(v6, &qword_10076C6F8);
      v25 = v60;
    }

    else
    {
      v29 = *(v7 + 16);
      v30 = v59;
      v29(v12, v6, v59);
      sub_1000079B4(v6, &qword_10076C6F8);
      v54 = *(v7 + 32);
      v31 = v56;
      v54(v56, v12, v30);
      v32 = swift_allocObject();
      v25 = v60;
      swift_weakInit();
      v33 = v55;
      v29(v55, v31, v30);
      v34 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      v54((v35 + v34), v33, v30);
      v26 = v64;
      v37 = v64[2];
      v36 = v64[3];
      if (v37 >= v36 >> 1)
      {
        v26 = sub_100547370((v36 > 1), v37 + 1, 1, v64);
      }

      (*(v7 + 8))(v56, v59);
      v26[2] = v37 + 1;
      v38 = &v26[2 * v37];
      v38[4] = sub_1001DE070;
      v38[5] = v35;
    }

    goto LABEL_10;
  }

  v18 = *(v16 + 24);
  ObjectType = swift_getObjectType();
  v54 = v8;
  v20 = v12;
  v21 = v6;
  v22 = v7;
  v23 = *(v18 + 48);

  v24 = v23(ObjectType, v18);
  v7 = v22;
  v6 = v21;
  v12 = v20;
  LOBYTE(v18) = v24;
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_5;
  }

  v25 = v60;
  v26 = v64;
LABEL_10:
  v39 = *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter);
  if (v39)
  {
    v40 = *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter + 8);
    v41 = v26[2];
    v42 = v26[3];

    if (v41 >= v42 >> 1)
    {
      v26 = sub_100547370((v42 > 1), v41 + 1, 1, v26);
    }

    v26[2] = v41 + 1;
    v43 = &v26[2 * v41];
    v43[4] = v39;
    v43[5] = v40;
  }

  type metadata accessor for TTRProcessMoveSubjects();
  *&v71 = v63;
  v44 = sub_100058000(&qword_100773338);
  v45 = sub_10011763C(&qword_100773340, &qword_100773338);
  static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)();
  *(v25 + 24) = TTRProcessMoveSubjects.MoveResults.shouldDisallow.getter() & 1;
  *(v25 + 16) = TTRProcessMoveSubjects.MoveResults.moveSubjects.getter();

  v63 = *(v25 + 16);
  v46 = *(v63 + 16);
  if (!v46)
  {
    v48 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v55 = v45;
  v56 = v44;
  v64 = v26;
  v47 = v63 + 32;

  v48 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000794C(v47, &v71, &qword_100773348);
    *&v66[9] = *&v72[9];
    v65 = v71;
    *v66 = *v72;
    v49 = v72[24];
    sub_100005FD0(&v65, v67);
    if ((v49 & 1) == 0)
    {
      sub_100004758(v67);
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
LABEL_17:
      sub_1000079B4(&v68, &qword_100773350);
      goto LABEL_18;
    }

    sub_100005FD0(v67, &v68);
    if (!*(&v69 + 1))
    {
      goto LABEL_17;
    }

    sub_100005FD0(&v68, &v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_10054734C(0, v48[2] + 1, 1, v48);
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_10054734C((v50 > 1), v51 + 1, 1, v48);
    }

    v48[2] = v51 + 1;
    sub_100005FD0(&v65, &v48[5 * v51 + 4]);
LABEL_18:
    v47 += 48;
    --v46;
  }

  while (v46);

  v25 = v60;
LABEL_28:
  *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects) = v48;

  *&v71 = v48;
  v52 = Sequence.completeCompactMap<A>(_:)();

  (*(v58 + 8))(v61, v62);

  *(v25 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems) = v52;
}

uint64_t sub_1001DCB14@<X0>(void *a1@<X8>)
{
  v50 = type metadata accessor for TTRSection();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v47 = &v47 - v5;
  v54 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v54);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076C700);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_100058000(&unk_100775620);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects);
  if (!v16)
  {
    __break(1u);
    return result;
  }

  v17 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  v18 = *(v16 + 16);
  if (v18)
  {
    v51 = v1;
    v52 = v12;
    v53 = v7;
    v55 = &v47 - v14;
    v19 = v11;
    v20 = a1;
    v21 = v16 + 32;

    do
    {
      sub_10000B0D8(v21, v56);
      v23 = v57;
      v22 = v58;
      sub_10000C36C(v56, v57);
      v24 = (*(v22 + 8))(v23, v22);
      sub_100004758(v56);
      if (v24)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v59;
      }

      v21 += 40;
      --v18;
    }

    while (v18);

    a1 = v20;
    v11 = v19;
    v15 = v55;
    v12 = v52;
    v7 = v53;
    v1 = v51;
  }

  if (v17 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  sub_1001DB8F0(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000079B4(v10, &qword_10076C700);
LABEL_24:
    v33 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
    return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
  }

  v25 = v12;
  v26 = *(v12 + 32);
  v26(v15, v10, v11);
  v27 = *(v1 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);
  sub_1001D9D88(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_21;
    }

    (*(v12 + 8))(v15, v11);
LABEL_23:

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001DE17C(v7, type metadata accessor for TTRRemindersListReminderActionTarget);
      v29 = *(v27 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);
      v30 = v11;
      v31 = v47;
      sub_10000794C(v27 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v47, &qword_100772140);
      v32 = *(*v29 + 208);

      v32(v31, v17, v15);

      sub_1000079B4(v31, &qword_100772140);
      return (*(v25 + 8))(v15, v30);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_21:
    (*(v12 + 8))(v15, v11);

    sub_1001DE17C(v7, type metadata accessor for TTRRemindersListReminderActionTarget);
    goto LABEL_24;
  }

  v54 = v11;
  v55 = v15;
  v53 = a1;
  v34 = *(v48 + 32);
  v34(v49, v7, v50);
  v56[0] = v17;
  sub_100058000(&qword_10076BB08);
  sub_100003540(0, &qword_10076BA50);
  sub_10011763C(&unk_1007758B0, &qword_10076BB08);
  sub_1001288B4();
  v35 = Sequence.mapToSet<A>(_:)();
  v36 = *(v27 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1001D6FFC())
  {
    v38 = v37;
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 32))(v36, v35, ObjectType, v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_100058000(&qword_100773378);
  v42 = v41[12];
  v43 = v41[16];
  v44 = v41[20];
  v45 = v53;
  *v53 = v17;
  v34(v45 + v42, v49, v50);
  v26(v45 + v43, v55, v54);
  *(v45 + v44) = v40;
  v46 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
}