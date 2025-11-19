unint64_t sub_1748()
{
  result = qword_C4C8;
  if (!qword_C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4C8);
  }

  return result;
}

uint64_t sub_17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  v13 = a2;
  v2 = sub_327C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_32EC() - 8) + 64);
  __chkstk_darwin();
  sub_324C();
  sub_30D4(v16, v16[3]);
  sub_324C();
  sub_30D4(v15, v15[3]);
  sub_326C();
  sub_325C();
  (*(v3 + 8))(v6, v2);
  sub_3118(v15);
  v14 = &OBJC_PROTOCOL___PSController;
  swift_dynamicCastObjCProtocolUnconditional();
  v8 = [objc_allocWithZone(PSSpecifier) init];
  sub_32AC();
  sub_328C();
  v9 = sub_335C();

  [v8 setProperty:v12 forKey:v9];

  sub_32DC();
  sub_3118(v16);
  return sub_32BC();
}

uint64_t sub_19E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = sub_31FC();
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_32FC();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_323C();
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v13 = *(*(sub_2390(&qword_C4E8, &qword_3930) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = sub_322C();
  v3[34] = v14;
  v15 = *(v14 - 8);
  v3[35] = v15;
  v16 = *(v15 + 64) + 15;
  v3[36] = swift_task_alloc();
  sub_338C();
  v3[37] = sub_337C();
  v18 = sub_336C();

  return _swift_task_switch(sub_1C2C, v18, v17);
}

uint64_t sub_1C2C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 176);

  sub_332C();
  sub_321C();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    sub_2F3C(*(v0 + 264), &qword_C4E8, &qword_3930);
    sub_331C();
    sub_333C();
    (*(v10 + 8))(v9, v11);
LABEL_29:
    v57 = *(v0 + 288);
    v58 = *(v0 + 256);
    v59 = *(v0 + 264);
    v60 = *(v0 + 232);
    v61 = *(v0 + 208);

    v62 = *(v0 + 8);

    return v62();
  }

  (*(*(v0 + 280) + 32))(*(v0 + 288), *(v0 + 264), *(v0 + 272));
  v14 = sub_320C();
  if (!v14)
  {
LABEL_28:
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 272);
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    v53 = *(v0 + 216);
    v54 = *(v0 + 176);
    v55 = *(v0 + 168);
    v56 = *(v0 + 184);
    sub_329C();
    sub_331C();
    sub_333C();
    (*(v52 + 8))(v51, v53);
    (*(v49 + 8))(v48, v50);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = sub_2DCC(&_swiftEmptyArrayStorage);
  v17 = v16;
  v65 = *(v15 + 16);
  if (!v65)
  {
LABEL_27:

    goto LABEL_28;
  }

  v18 = 0;
  v19 = *(v0 + 200);
  v64 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v20 = (v19 + 8);
  while (1)
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v16);
    }

    (*(v19 + 16))(*(v0 + 208), v64 + *(v19 + 72) * v18, *(v0 + 192));

    *(v0 + 152) = sub_31DC();
    *(v0 + 160) = v22;
    sub_33CC();
    v23 = sub_31EC();
    if (!v24)
    {
      v34 = sub_26C0(v0 + 16);
      if (v35)
      {
        v36 = v34;
        v37 = v17;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2C28();
          v37 = v17;
        }

        v38 = *(v0 + 208);
        v39 = *(v0 + 192);
        sub_2EE8(*(v37 + 48) + 40 * v36);
        sub_2F9C((*(v37 + 56) + 32 * v36), (v0 + 88));
        sub_2A84(v36, v37);

        sub_2EE8(v0 + 16);
        (*v20)(v38, v39);
        v17 = v37;
      }

      else
      {
        v45 = *(v0 + 208);
        v46 = *(v0 + 192);

        sub_2EE8(v0 + 16);
        (*v20)(v45, v46);
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
      }

      v16 = sub_2F3C(v0 + 88, &qword_C4F0, &qword_3938);
      v32 = v17;
      goto LABEL_7;
    }

    *(v0 + 80) = &type metadata for String;
    *(v0 + 56) = v23;
    *(v0 + 64) = v24;
    sub_2F9C((v0 + 56), (v0 + 120));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_26C0(v0 + 16);
    v27 = v17[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_36;
    }

    v31 = v26;
    if (v17[3] < v30)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = v16;
      sub_2C28();
      v16 = v47;
    }

    v32 = v17;
LABEL_21:
    v40 = *(v0 + 208);
    v41 = *(v0 + 192);
    if (v31)
    {
      v21 = (v32[7] + 32 * v16);
      sub_3118(v21);
      sub_2F9C((v0 + 120), v21);

      sub_2EE8(v0 + 16);
      v16 = (*v20)(v40, v41);
    }

    else
    {
      v32[(v16 >> 6) + 8] |= 1 << v16;
      v42 = v16;
      sub_2FAC(v0 + 16, v32[6] + 40 * v16);
      sub_2F9C((v0 + 120), (v32[7] + 32 * v42));

      sub_2EE8(v0 + 16);
      v16 = (*v20)(v40, v41);
      v43 = v32[2];
      v29 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v29)
      {
        goto LABEL_37;
      }

      v32[2] = v44;
    }

LABEL_7:
    ++v18;
    v17 = v32;
    if (v65 == v18)
    {
      goto LABEL_27;
    }
  }

  sub_27CC(v30, isUniquelyReferenced_nonNull_native);
  v32 = v17;
  v16 = sub_26C0(v0 + 16);
  if ((v31 & 1) == (v33 & 1))
  {
    goto LABEL_21;
  }

  v16 = &type metadata for AnyHashable;

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v16);
}

uint64_t sub_21C8()
{
  v1 = sub_2390(&qword_C4D0, &qword_3918);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_32CC();
  sub_2418();
  v7 = v6;
  sub_334C();
  *(swift_allocObject() + 16) = v7;
  sub_2614();
  v8 = v7;
  sub_330C();
  return (*(v2 + 8))(v5, v1);
}

id sub_2354@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(sub_32AC()) init];
  *a1 = result;
  return result;
}

uint64_t sub_2390(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2418()
{
  result = qword_C4D8;
  if (!qword_C4D8)
  {
    sub_32CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4D8);
  }

  return result;
}

uint64_t sub_2470(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2520;

  return sub_19E8(a1, a2, v6);
}

uint64_t sub_2520()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2614()
{
  result = qword_C4E0;
  if (!qword_C4E0)
  {
    sub_2678(&qword_C4D0, &qword_3918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E0);
  }

  return result;
}

uint64_t sub_2678(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_33AC(*(v2 + 40));

  return sub_2704(a1, v4);
}

unint64_t sub_2704(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2FAC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_33BC();
      sub_2EE8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_27CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2390(&qword_C4F8, &qword_3940);
  result = sub_33EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_2F9C((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_2FAC(v24, &v37);
        sub_3008(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_33AC(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2F9C(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2A84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_339C() + 1) & ~v5;
    do
    {
      sub_2FAC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_33AC(*(a2 + 40));
      result = sub_2EE8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2C28()
{
  v1 = v0;
  sub_2390(&qword_C4F8, &qword_3940);
  v2 = *v0;
  v3 = sub_33DC();
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
        v18 = 40 * v17;
        sub_2FAC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_3008(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2F9C(v22, (*(v4 + 56) + v17));
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

unint64_t sub_2DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2390(&qword_C4F8, &qword_3940);
    v3 = sub_33FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_3064(v4, v13);
      result = sub_26C0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2F9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_2F3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2390(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_2F9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3064(uint64_t a1, uint64_t a2)
{
  v4 = sub_2390(&qword_C500, &qword_3948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_30D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3118(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3174()
{
  sub_2678(&qword_C4D0, &qword_3918);
  sub_2614();
  return swift_getOpaqueTypeConformance2();
}