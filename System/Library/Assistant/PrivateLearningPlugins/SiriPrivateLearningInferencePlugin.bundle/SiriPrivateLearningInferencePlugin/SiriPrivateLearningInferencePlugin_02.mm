uint64_t *MessagesContactGroundTruthGenerator.deinit()
{
  sub_5448(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t MessagesContactGroundTruthGenerator.__deallocating_deinit()
{
  sub_5448(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_2927C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3DB60);
  v1 = sub_4FD8(v0, qword_3DB60);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29344(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_29378(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3D408, &qword_30E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_295EC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v14 = sub_29B74(a5, a6, a7, a8);
    v15 = *(v14 + 52);
    v16 = (*(v14 + 48) + 7) & 0x1FFFFFFF8;
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    *(v17 + 2) = v12;
    *(v17 + 3) = 2 * (v19 >> 3);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v20 = v17 + 32;
  v21 = a4 + 32;
  if (v9)
  {
    if (v17 != a4 || v20 >= &v21[8 * v12])
    {
      memmove(v20, v21, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v20, v21, 8 * v12);
  }

  return v17;
}

void *sub_29804(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B98(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B98(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_29974(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(a5, a6);
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

uint64_t sub_29B74(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &unk_3CFD8;
    v8 = &unk_30E50;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return sub_1B98(v7, v8);
}

uint64_t sub_29C08(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_29C64(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_29C64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2C724(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5448(v11);
  return v7;
}

unint64_t sub_29D30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29E3C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_301E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_29E3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29E88(a1, a2);
  sub_29FB8(&off_39798);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_29E88(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_2A0A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_301E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2FFD8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2A0A4(v10, 0);
        result = sub_301B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29FB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2A118(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2A0A4(uint64_t a1, uint64_t a2)
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

  sub_1B98(&qword_3DD10, &qword_317B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2A118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3DD10, &qword_317B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_2A20C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2A21C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2F438();
  sub_2CDD0(&qword_3DC80, 255, &type metadata accessor for DonationCandidateType);
  v5 = sub_2FF58();
  return sub_2A3CC(a1, v5, &type metadata accessor for DonationCandidateType, &qword_3DC88, &type metadata accessor for DonationCandidateType, &protocol conformance descriptor for DonationCandidateType);
}

unint64_t sub_2A2F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2EC08();
  sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID);
  v5 = sub_2FF58();
  return sub_2A3CC(a1, v5, &type metadata accessor for UUID, &qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_2A3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2CDD0(v24, 255, v25);
      v20 = sub_2FF78();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2A584(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1B98(&qword_3D748, &qword_31080);
  v44 = a2;
  result = sub_30258();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID);
      result = sub_2FF58();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2A95C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_2EC08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_1B98(a3, a4);
  v47 = a2;
  result = sub_30258();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID);
      result = sub_2FF58();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_2AD3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_1B98(&qword_3CDD8, &unk_30990);
  v49 = a2;
  result = sub_30258();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID);
      result = sub_2FF58();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_2B18C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2EC08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2B244(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2EC08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

char *sub_2B320()
{
  v1 = v0;
  v34 = sub_2EC08();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3CE18, &qword_309C8);
  v4 = *v0;
  v5 = sub_30248();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2B5A0()
{
  v1 = v0;
  v32 = sub_2EC08();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3D748, &qword_31080);
  v4 = *v0;
  v5 = sub_30248();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2B810()
{
  v1 = v0;
  v35 = sub_2EC08();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = __chkstk_darwin(v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v31 - v5;
  sub_1B98(&qword_3CDD8, &unk_30990);
  v6 = *v0;
  v7 = sub_30248();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

size_t sub_2BAD8(size_t a1, int64_t a2, char a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DCD0, &qword_31760, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

size_t sub_2BB1C(size_t a1, int64_t a2, char a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DD48, &qword_317F0, &type metadata accessor for PlusContactSuggestion);
  *v3 = result;
  return result;
}

void *sub_2BB60(void *a1, int64_t a2, char a3)
{
  result = sub_2BCA8(a1, a2, a3, *v3, &qword_3DC98, &qword_316B8, &qword_3CF70, &unk_315C0);
  *v3 = result;
  return result;
}

void *sub_2BBA0(void *a1, int64_t a2, char a3)
{
  result = sub_2BCA8(a1, a2, a3, *v3, &qword_3DC70, &qword_31698, &qword_3DC78, &qword_316A0);
  *v3 = result;
  return result;
}

size_t sub_2BBE0(size_t a1, int64_t a2, char a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3D760, &qword_31090, &type metadata accessor for SessionGroundTruths);
  *v3 = result;
  return result;
}

char *sub_2BC24(char *a1, int64_t a2, char a3)
{
  result = sub_2BE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2BC44(size_t a1, int64_t a2, char a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DCB0, qword_316E0, &type metadata accessor for FeaturisedTurn);
  *v3 = result;
  return result;
}

size_t sub_2BC88(size_t a1, int64_t a2, char a3)
{
  result = sub_2C13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2BCA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B98(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B98(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2BE18(char *result, int64_t a2, char a3, char *a4)
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
    v10 = sub_29B74(&qword_3D690, &qword_30FC0, &qword_3DCC8, &unk_31740);
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v8;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v5)
  {
    if (v13 != a4 || v16 >= &v17[8 * v8])
    {
      memmove(v16, v17, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v8);
  }

  return v13;
}

size_t sub_2BF60(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(a5, a6);
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

size_t sub_2C13C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(&qword_3DCD8, &qword_31768);
  v10 = *(sub_1B98(&qword_3D6C8, &qword_31770) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B98(&qword_3D6C8, &qword_31770) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_2C32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B98(&qword_3D698, &qword_30FC8);
    v3 = sub_301A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_30318();

      sub_2FFB8();
      result = sub_30338();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_302A8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_2C494()
{
  if (*(v0 + 56))
  {
    sub_54EC(v0 + 16, v10);
    v1 = sub_2FC18();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();

    v4 = sub_2FC08();
    v10[3] = v1;
    v10[4] = &protocol witness table for MessagesSuggestionOutcomeExtractor;
    v10[0] = v4;

    sub_2FE08();

    sub_5448(v10);
  }

  else
  {
    if (qword_3CC60 != -1)
    {
      swift_once();
    }

    v5 = sub_2FF48();
    sub_4FD8(v5, qword_3DB60);
    oslog = sub_2FF28();
    v6 = sub_300E8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10[0] = v8;
      *v7 = 136315138;
      if (qword_3CC58 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v10);
      _os_log_impl(&dword_0, oslog, v6, "[%s] No outcome emitter available - no PICS outcomes will be derived or logged", v7, 0xCu);
      sub_5448(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_2C724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2C780(uint64_t a1)
{
  v2 = sub_2F3C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1B98(&qword_3DD50, &qword_317F8);
    v10 = sub_301A8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2CDD0(&qword_3D7D0, 255, &type metadata accessor for ContactSuggestionTag);
      v18 = sub_2FF58();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2CDD0(&qword_3D7D8, 255, &type metadata accessor for ContactSuggestionTag);
          v25 = sub_2FF78();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_2CAA8(uint64_t a1)
{
  v2 = sub_2F2C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1B98(&qword_3DD30, &qword_317E8);
    v10 = sub_301A8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2CDD0(&qword_3DD38, 255, &type metadata accessor for MediaSuggestionTag);
      v18 = sub_2FF58();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2CDD0(&qword_3DD40, 255, &type metadata accessor for MediaSuggestionTag);
          v25 = sub_2FF78();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_2CDD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2CE28()
{
  sub_1B98(&qword_3DD88, &qword_31898);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3DD58 = 91;
  unk_3DD60 = 0xE100000000000000;
}

uint64_t sub_2CEB8()
{
  v1 = sub_1B98(&qword_3D770, &qword_310A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23[-1] - v6;
  v8 = v0[4];
  sub_5550(v0, v0[3]);
  sub_2F0E8();
  sub_5550(v23, v23[3]);
  sub_2F788();
  sub_5448(v23);
  sub_2E4EC(v7, v5);
  v9 = sub_2F898();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_2E55C(v5);
  }

  else
  {
    v16 = sub_2F888();
    v18 = v17;
    (*(v10 + 8))(v5, v9);
    if (v16 == 0xD00000000000001BLL && 0x80000000000327F0 == v18)
    {

      v15 = 0;
      goto LABEL_15;
    }

    v20 = sub_302A8();

    v15 = 0;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  if (qword_3CC70 != -1)
  {
    swift_once();
  }

  v11 = sub_2FF48();
  sub_4FD8(v11, qword_3DD68);
  v12 = sub_2FF28();
  v13 = sub_300D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Suggestion generation was not last performed by adaptive generation. Requesting all prior ground truth.", v14, 2u);
  }

  v15 = 1;
LABEL_15:
  sub_2E55C(v7);
  return v15;
}

uint64_t sub_2D174(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v71 = sub_2F628();
  v72 = *(v71 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v71);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2F578();
  v65 = *(v77 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v77);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EC08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v82 = &v60 - v14;
  __chkstk_darwin(v13);
  v81 = &v60 - v15;
  sub_1B98(&qword_3D7C0, &qword_31160);
  v16 = sub_2F3C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30820;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, enum case for ContactSuggestionTag.domainPhoneCall(_:), v16);
  v22(v21 + v18, enum case for ContactSuggestionTag.domainMessages(_:), v16);
  v23 = v83;
  v85 = v2;
  v86 = v83;
  v67 = sub_E5A4(sub_2E3C0, v84, v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24 = *(v23 + 16);
  v25 = _swiftEmptyArrayStorage;
  v79 = v8;
  if (v24)
  {
    v80 = v2;
    v88 = _swiftEmptyArrayStorage;
    sub_2BAD8(0, v24, 0);
    v25 = v88;
    v26 = v23 + 32;
    v83 = v8 + 32;
    v27 = v81;
    do
    {
      sub_54EC(v26, v87);
      sub_5550(v87, v87[3]);
      sub_2F248();
      sub_5448(v87);
      v88 = v25;
      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        sub_2BAD8(v28 > 1, v29 + 1, 1);
        v25 = v88;
      }

      v25[2] = v29 + 1;
      v8 = v79;
      (*(v79 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v27, v7);
      v26 += 40;
      --v24;
    }

    while (v24);
    v2 = v80;
  }

  v30 = sub_23D64(v25);

  v31 = v2[4];
  sub_5550(v2, v2[3]);
  sub_2F0D8();
  v32 = sub_2F508();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  result = sub_2F4F8();
  v66 = result;
  v36 = v67;
  v37 = v82;
  v64 = v67[2];
  if (v64)
  {
    v78 = 0;
    v38 = 0;
    v63 = v67 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v62 = v65 + 16;
    v68 = v72 + 16;
    v83 = v30 + 56;
    v81 = (v8 + 16);
    v39 = (v8 + 8);
    v69 = (v72 + 8);
    v61 = (v65 + 8);
    v40 = v71;
    v41 = v70;
    while (v38 < v36[2])
    {
      (*(v65 + 16))(v76, &v63[*(v65 + 72) * v38], v77);
      result = sub_2F548();
      v42 = result;
      v73 = *(result + 16);
      if (v73)
      {
        v43 = 0;
        v74 = result;
        v75 = v38;
        while (v43 < *(v42 + 16))
        {
          v44 = v42 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
          v45 = *(v72 + 72);
          v80 = v43;
          (*(v72 + 16))(v41, v44 + v45 * v43, v40);
          sub_2F618();
          if (!*(v30 + 16))
          {

            goto LABEL_22;
          }

          v46 = *(v30 + 40);
          sub_2E4A4(&qword_3CFB0, &type metadata accessor for UUID);
          v47 = sub_2FF58();
          v48 = v30;
          v49 = -1 << *(v30 + 32);
          v50 = v47 & ~v49;
          if (((*(v83 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
LABEL_21:

            v40 = v71;
            v41 = v70;
            v30 = v48;
            v38 = v75;
LABEL_22:
            (*v39)(v37, v7);
            result = (*v69)(v41, v40);
            v57 = 1;
            goto LABEL_23;
          }

          v80 = (v80 + 1);
          v51 = ~v49;
          v52 = *(v79 + 72);
          v53 = *(v79 + 16);
          while (1)
          {
            v53(v12, *(v48 + 48) + v52 * v50, v7);
            sub_2E4A4(&qword_3CFB8, &type metadata accessor for UUID);
            v54 = sub_2FF78();
            v55 = *v39;
            (*v39)(v12, v7);
            if (v54)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            v37 = v82;
            if (((*(v83 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v56 = v82;
          v55(v82, v7);
          v37 = v56;
          v41 = v70;
          v40 = v71;
          result = (*v69)(v70, v71);
          v43 = v80;
          v30 = v48;
          v42 = v74;
          v38 = v75;
          if (v80 == v73)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:

      v57 = 0;
LABEL_23:
      if (__CFADD__(v78, v57))
      {
        goto LABEL_33;
      }

      v78 = (v78 + v57);
      ++v38;
      sub_2EBF8();
      v58 = v76;
      sub_2F4D8();
      (*v39)(v12, v7);
      result = (*v61)(v58, v77);
      v36 = v67;
      if (v38 == v64)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v78 = 0;
LABEL_28:

  v59 = v36[2];

  if (HIDWORD(v59))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v59 >= v78)
  {
    return 0;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2DA94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a4;
  v70 = a2;
  v6 = sub_2F3C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v65 - v12;
  if (qword_3CC70 != -1)
  {
    swift_once();
  }

  v74 = a3;
  v14 = sub_2FF48();
  v15 = sub_4FD8(v14, qword_3DD68);
  v16 = *(v7 + 16);
  v71 = a1;
  v17 = a1;
  v18 = v7;
  v19 = v7 + 16;
  v77 = v16;
  (v16)(v13, v17, v6);
  v72 = v15;
  v20 = sub_2FF28();
  v21 = sub_300D8();
  if (os_log_type_enabled(v20, v21))
  {
    v67 = v18;
    v22 = swift_slowAlloc();
    *&v66 = swift_slowAlloc();
    v75 = v66;
    *v22 = 136315394;
    if (qword_3CC68 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v75);
    *(v22 + 12) = 2080;
    v23 = v19;
    (v77)(v11, v13, v6);
    v24 = sub_2FF98();
    v26 = v25;
    v27 = v67;
    v28 = *(v67 + 8);
    v68 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v28;
    v28(v13, v6);
    v29 = sub_29C64(v24, v26, &v75);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_0, v20, v21, "%s Processing new ground truth for %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v18 + 8);
    v68 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v30;
    v30(v13, v6);
    v23 = v19;
    v27 = v18;
  }

  v65[1] = v23;
  v31 = v70[4];
  sub_5550(v70, v70[3]);
  sub_2F0E8();
  v67 = sub_1B98(&qword_3D7C0, &qword_31160);
  v32 = *(v27 + 72);
  v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v34 = swift_allocObject();
  v66 = xmmword_30830;
  *(v34 + 16) = xmmword_30830;
  v35 = v71;
  (v77)(v34 + v33, v71, v6);
  sub_2C780(v34);
  swift_setDeallocating();
  v36 = v69;
  v69(v34 + v33, v6);
  swift_deallocClassInstance();
  v37 = sub_2FCC8();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v70 = v37;
  swift_allocObject();
  v40 = sub_2FCA8();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  (v77)(v41 + v33, v35, v6);
  sub_2C780(v41);
  swift_setDeallocating();
  v36(v41 + v33, v6);
  swift_deallocClassInstance();
  v42 = sub_2FBC8();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  v77 = v40;
  v71 = sub_2FBA8();
  v45 = sub_2FBB8();

  v46 = sub_2FF28();
  v47 = sub_300D8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v75 = v49;
    *v48 = 136315650;
    v50 = &SiriPrivateLearningInferencePlugin;
    if (qword_3CC68 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v75);
    *(v48 + 12) = 2048;
    *(v48 + 14) = *(v74 + 16);

    *(v48 + 22) = 2048;
    if ((v45 & 0xC000000000000001) != 0)
    {
      v51 = sub_30168();
    }

    else
    {
      v51 = *(v45 + 16);
    }

    *(v48 + 24) = v51;
    _os_log_impl(&dword_0, v46, v47, "%s Updated candidate scores in %ld Ground Truth and %ld queries.", v48, 0x20u);
    sub_5448(v49);
  }

  else
  {

    v50 = &SiriPrivateLearningInferencePlugin;
  }

  sub_2FBF8();
  v75 = v77;
  sub_2E4A4(&qword_3DD80, &type metadata accessor for ContactSuggestionStoreCandidateAdapter);

  v52 = sub_2FBD8();
  sub_8E14(v45);

  v53 = sub_2FBE8();

  v54 = sub_2FF28();
  v55 = sub_300D8();
  if (os_log_type_enabled(v54, v55))
  {
    v74 = v52;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v75 = v57;
    *v56 = 136315138;
    if (*&v50[44].ivar_base_size != -1)
    {
      swift_once();
    }

    *(v56 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v75);
    _os_log_impl(&dword_0, v54, v55, "%s Nominated Candidates:", v56, 0xCu);
    sub_5448(v57);
  }

  else
  {
  }

  if (*&v50[44].ivar_base_size != -1)
  {
    swift_once();
  }

  v58 = qword_3DD58;
  v59 = qword_3DD60;
  v75 = qword_3DD58;
  v76 = qword_3DD60;

  v78._countAndFlagsBits = 8224;
  v78._object = 0xE200000000000000;
  sub_2FFC8(v78);
  sub_EF84(v75, v76, v53);

  v60 = sub_2FF28();
  v61 = sub_300D8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_29C64(v58, v59, &v75);
    _os_log_impl(&dword_0, v60, v61, "%s Persisting updated candidates to the suggestion store", v62, 0xCu);
    sub_5448(v63);
  }

  sub_2FCB8();

  *v73 = v53;
  return result;
}

uint64_t sub_2E3DC()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3DD68);
  v1 = sub_4FD8(v0, qword_3DD68);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2E4A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2E4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3D770, &qword_310A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E55C(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D770, &qword_310A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2E5C4()
{
  type metadata accessor for DonationSourceProvider();
  sub_1B98(&unk_3DE50, &qword_31908);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3DD90 = 91;
  *algn_3DD98 = 0xE100000000000000;
}

unint64_t sub_2E650()
{
  v1 = v0;
  v2 = v0[6];
  sub_5550(v0 + 2, v0[5]);
  sub_2F0A8();
  sub_5550(v35, v36);
  v3 = sub_2EFF8();
  v4 = sub_2ECB8();
  v33 = v4;
  v34 = &protocol witness table for AnyFeature;
  v32[0] = v3;
  v5 = sub_2ED48();
  sub_5448(v32);
  sub_5448(v35);
  if (v5)
  {
    v6 = v1[6];
    sub_5550(v1 + 2, v1[5]);
    sub_2F0E8();
    sub_5550(v35, v36);
    v7 = sub_2F7D8();
    v8 = sub_27630(v7);

    sub_5448(v35);
  }

  else
  {
    if (qword_3CC08 != -1)
    {
      swift_once();
    }

    v9 = sub_2FF48();
    sub_4FD8(v9, qword_3E470);
    v10 = sub_2FF28();
    v11 = sub_300D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136315138;
      if (qword_3CC78 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_29C64(qword_3DD90, *algn_3DD98, v35);
      _os_log_impl(&dword_0, v10, v11, "%s PICS donations are blocked since PICSRuntimeInSiriVocab is disabled", v12, 0xCu);
      sub_5448(v13);
    }

    v8 = &_swiftEmptyArrayStorage;
  }

  v14 = v1[6];
  sub_5550(v1 + 2, v1[5]);
  sub_2F0A8();
  sub_5550(v35, v36);
  v15 = sub_2F038();
  v33 = v4;
  v34 = &protocol witness table for AnyFeature;
  v32[0] = v15;
  v16 = sub_2ED48();
  sub_5448(v32);
  sub_5448(v35);
  if (v16)
  {
    v17 = v1[6];
    sub_5550(v1 + 2, v1[5]);
    sub_2F0F8();
    sub_5550(v35, v36);
    v18 = sub_2F6E8();
    v31 = sub_27650(v18);

    sub_5448(v35);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
  }

  sub_1B98(&qword_3DE48, "Z\b");
  v19 = sub_1B98(&qword_3CDC0, &qword_31900);
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_30820;
  v23 = v22 + v21;
  v24 = *(v19 + 48);
  v25 = enum case for DonationCandidateType.siriLearnedContact(_:);
  v26 = sub_2F438();
  v27 = *(*(v26 - 8) + 104);
  v27(v23, v25, v26);
  *(v23 + v24) = v8;
  v28 = *(v19 + 48);
  v27(v23 + v20, enum case for DonationCandidateType.siriLearnedMedia(_:), v26);
  *(v23 + v20 + v28) = v31;
  v29 = sub_4DF0(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_2EAFC()
{
  sub_5448((v0 + 16));

  return swift_deallocClassInstance();
}