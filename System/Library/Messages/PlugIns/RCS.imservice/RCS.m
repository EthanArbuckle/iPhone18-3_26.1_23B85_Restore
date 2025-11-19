uint64_t sub_1E5C()
{
  v1 = *(v0 + 16);
  sub_EF248();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1EDC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1F8C()
{
  v56 = v0;
  v1 = v0[9];
  v2 = sub_F030C();
  v0[10] = v2;
  v3 = *(v2 - 8);
  v0[11] = *(v3 + 64);
  v4 = swift_task_alloc();
  sub_F02DC();
  swift_beginAccess();
  v5 = *(v1 + 160);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;

  v8 = sub_2FF8(v7, sub_28F8);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_9D6B8(*(v8 + 16), 0);
    v11 = sub_BD618(&v55, v10 + 4, v9, v8);
    sub_66138();
    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_5:
  v0[12] = v10;
  v12 = *(v3 + 8);
  v0[13] = v12;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v2);

  v13 = v10[2];
  v0[15] = v13;
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v0[16] = v14;
      v15 = v0[9];
      v16 = v0[12] + 16 * v14;
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);
      swift_beginAccess();
      v19 = *(v15 + 160);

      v20 = sub_51FEC(v18, v17);
      if (v21)
      {
        break;
      }

      swift_endAccess();

      v14 = v0[16] + 1;
      if (v14 == v0[15])
      {
        goto LABEL_9;
      }
    }

    v25 = v20;
    v26 = v0[9];
    v27 = *(v26 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v26 + 160);
    v0[8] = v29;
    *(v26 + 160) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_BC984();
      v29 = v0[8];
    }

    v30 = v0[13];
    v54 = v0[14];
    v31 = v0[10];
    v32 = v0[9];
    v33 = v0[11] + 15;
    v34 = *(*(v29 + 48) + 16 * v25 + 8);

    v35 = *(*(v29 + 56) + 8 * v25);
    v0[17] = v35;
    sub_EE478(v25, v29);
    *(v32 + 160) = v29;
    swift_endAccess();
    v36 = swift_task_alloc();
    sub_F02DC();
    sub_F02BC();
    v38 = v37;
    v30(v36, v31);
    sub_F02BC();
    v40 = v39;

    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v41 = v38 - v40;
    v42 = v0[9];
    v43 = sub_F06CC();
    sub_3C96C(v43, qword_129B28);

    v44 = sub_F06AC();
    v45 = sub_F0D0C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v0[9];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v48;
      *v47 = 141558787;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      v49 = sub_3E850(v18, v17, &v55);

      *(v47 + 14) = v49;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v41;
      *(v47 + 32) = 2048;
      *(v47 + 34) = *(v46 + 120);
      _os_log_impl(&dword_0, v44, v45, "Terminating operation with ID %{private,mask.hash}s - took %f seconds, allowed %f seconds", v47, 0x2Au);
      sub_1EDC(v48);
    }

    else
    {
    }

    v50 = v0[9];
    sub_B777C();
    v51 = swift_allocError();
    v53 = v52;
    v0[18] = v51;
    *v52 = *(v50 + 120);
    *(v52 + 8) = v41;
    sub_1F28(v35 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v52 + 16);
    *(v53 + 56) = 0;

    return _swift_task_switch(sub_24B4, v35, 0);
  }

  else
  {
LABEL_9:
    v22 = v0[12];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_24B4()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_C3D90(v0[18], 1);

  return _swift_task_switch(sub_2538, v2, 0);
}

uint64_t sub_2538()
{
  v44 = v0;
  v1 = v0[17];

  while (1)
  {
    v2 = v0[16] + 1;
    if (v2 == v0[15])
    {
      break;
    }

    v0[16] = v2;
    v3 = v0[9];
    v4 = v0[12] + 16 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    swift_beginAccess();
    v7 = *(v3 + 160);

    v8 = sub_51FEC(v6, v5);
    if (v9)
    {
      v13 = v8;
      v14 = v0[9];
      v15 = *(v14 + 160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v14 + 160);
      v0[8] = v17;
      *(v14 + 160) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_BC984();
        v17 = v0[8];
      }

      v18 = v0[13];
      v42 = v0[14];
      v19 = v0[10];
      v20 = v0[9];
      v21 = v0[11] + 15;
      v22 = *(*(v17 + 48) + 16 * v13 + 8);

      v23 = *(*(v17 + 56) + 8 * v13);
      v0[17] = v23;
      sub_EE478(v13, v17);
      *(v20 + 160) = v17;
      swift_endAccess();
      v24 = swift_task_alloc();
      sub_F02DC();
      sub_F02BC();
      v26 = v25;
      v18(v24, v19);
      sub_F02BC();
      v28 = v27;

      if (qword_128F78 != -1)
      {
        swift_once();
      }

      v29 = v26 - v28;
      v30 = v0[9];
      v31 = sub_F06CC();
      sub_3C96C(v31, qword_129B28);

      v32 = sub_F06AC();
      v33 = sub_F0D0C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[9];
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *v35 = 141558787;
        *(v35 + 4) = 1752392040;
        *(v35 + 12) = 2081;
        v37 = sub_3E850(v6, v5, &v43);

        *(v35 + 14) = v37;
        *(v35 + 22) = 2048;
        *(v35 + 24) = v29;
        *(v35 + 32) = 2048;
        *(v35 + 34) = *(v34 + 120);
        _os_log_impl(&dword_0, v32, v33, "Terminating operation with ID %{private,mask.hash}s - took %f seconds, allowed %f seconds", v35, 0x2Au);
        sub_1EDC(v36);
      }

      else
      {
      }

      v38 = v0[9];
      sub_B777C();
      v39 = swift_allocError();
      v41 = v40;
      v0[18] = v39;
      *v40 = *(v38 + 120);
      *(v40 + 8) = v29;
      sub_1F28(v23 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v40 + 16);
      *(v41 + 56) = 0;

      return _swift_task_switch(sub_24B4, v23, 0);
    }

    swift_endAccess();
  }

  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2900()
{
  v1[13] = v0;
  v2 = type metadata accessor for TypingIndicator();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_29C0, v0, 0);
}

uint64_t sub_29C0()
{
  v37 = v0;
  v1 = *(v0 + 104);
  v36 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v2 = *(v1 + 136);

  v4 = sub_3178(v3, &v36);

  v5 = *(v1 + 136);
  *(v1 + 136) = v4;

  v6 = v36;
  *(v0 + 136) = v36;
  v7 = v6[2];
  *(v0 + 144) = v7;
  if (v7)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v8 + 80);
    *(v0 + 76) = v12;
    *(v0 + 152) = *(v8 + 72);
    *(v0 + 160) = 0;
    sub_BDE3C(v6 + ((v12 + 32) & ~v12), v9);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v13 = *(v10 + 120);
    ObjectType = swift_getObjectType();
    v34 = *(v9 + 8);
    v35 = *v9;
    v15 = *(v9 + 88);
    v33 = *(v9 + 80);
    v16 = *(v9 + 16);
    v17 = *(v9 + 32);
    v18 = *(v9 + 48);
    *(v0 + 57) = *(v9 + 57);
    *(v0 + 32) = v17;
    *(v0 + 48) = v18;
    *(v0 + 16) = v16;
    v19 = *(v11 + 36);
    v20 = *(v9 + *(v11 + 32));
    v21 = (v9 + v19);
    v22 = *(v9 + v19);
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *(v13 + 8);
    v32 = v26 + *v26;
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 176) = v28;
    *v28 = v0;
    v28[1] = sub_2C44;
    v41 = ObjectType;
    v42 = v13;
    v39 = v24;
    v40 = v25;

    __asm { BRAA            X8, X16 }
  }

  v29 = *(v0 + 128);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2C44()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 104);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2D70, v3, 0);
}

uint64_t sub_2D70()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160) + 1;
  sub_EFE48(*(v0 + 128));
  if (v2 != v1)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 160) + 1;
    *(v0 + 160) = v8;
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    sub_BDE3C(*(v0 + 136) + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + v7 * v8, v9);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v12 = *(v10 + 120);
    swift_getObjectType();
    v29 = *(v9 + 8);
    v30 = *v9;
    v13 = *(v9 + 88);
    v28 = *(v9 + 80);
    v14 = *(v9 + 16);
    v15 = *(v9 + 32);
    v16 = *(v9 + 48);
    *(v0 + 57) = *(v9 + 57);
    *(v0 + 32) = v15;
    *(v0 + 48) = v16;
    *(v0 + 16) = v14;
    v17 = *(v11 + 36);
    v18 = *(v9 + *(v11 + 32));
    v19 = (v9 + v17);
    v20 = *(v9 + v17);
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = *(v12 + 8);
    v27 = v24 + *v24;
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_2C44;

    __asm { BRAA            X8, X16 }
  }

  v3 = *(v0 + 136);

  v4 = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t type metadata accessor for TypingIndicator()
{
  result = qword_12B0A8;
  if (!qword_12B0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_33EC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_C7B54(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_3178(uint64_t a1, void **a2)
{
  v31 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v17 = sub_EF830(v16, a2);
    if (*(v17 + 16))
    {

      v18 = v31;
      v19 = *(v31 + 2);
      if (*(v31 + 3) <= v19)
      {
        sub_BB710(v19 + 1, 1);
        v18 = &_swiftEmptyDictionarySingleton;
      }

      v31 = v18;
      v20 = *(v18 + 5);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v21 = v31 + 64;
      v22 = -1 << v31[32];
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*&v31[8 * (v23 >> 6) + 64]) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *&v21[8 * v24];
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*&v31[8 * (v23 >> 6) + 64])) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *&v21[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
      v30 = (*(v31 + 6) + 16 * v25);
      *v30 = v14;
      v30[1] = v13;
      *(*(v31 + 7) + 8 * v25) = v17;
      ++*(v31 + 2);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v31;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_33EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_3560(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_3560(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_388C8(&qword_1296F0, &qword_F5B90);
  result = sub_F110C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_F12FC();

    sub_F089C();
    result = sub_F132C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_37DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_37EC()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3824()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_387C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_38E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3928(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3940()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    v2 = *(v0 + 40);
  }

  else
  {
    sub_1EDC((v0 + 40));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_39A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_39DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 105))
  {
    sub_1EDC((v0 + 48));
  }

  else
  {
    v2 = *(v0 + 56);

    v3 = *(v0 + 72);

    v4 = *(v0 + 80);

    v5 = *(v0 + 96);
  }

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  if (*(v0 + 216))
  {
    sub_1EDC((v0 + 192));
  }

  v10 = *(v0 + 232);
  if (v10 >= 2)
  {
  }

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_3AB0()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    v6 = *(v5 + 8);

    v7 = *(v5 + 24);

    v8 = *(v5 + 32);

    v9 = *(v5 + 48);

    if (*(v5 + 121))
    {
      v10 = (v5 + 64);
LABEL_6:
      sub_1EDC(v10);
      goto LABEL_10;
    }

    v11 = *(v5 + 72);

    v12 = *(v5 + 88);

    v13 = *(v5 + 96);

    v14 = *(v5 + 112);
  }

  else
  {
    if (*(v5 + 57))
    {
      v10 = (v0 + v3);
      goto LABEL_6;
    }

    v15 = *(v5 + 8);

    v16 = *(v5 + 24);

    v17 = *(v5 + 32);

    v18 = *(v5 + 48);
  }

LABEL_10:
  v19 = *(v5 + 136);

  v20 = *(v5 + 152);

  v21 = *(v5 + 160);
  if (v21 >= 2)
  {
  }

  v22 = (v5 + v1[8]);
  v23 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v22);
          v42 = v22[5];

          v43 = v22[7];

          if (v22[9])
          {

            sub_5F048(v22[10], v22[11]);
            v44 = v22[13];
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      v39 = *v22;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v45 - 1) + 48))(v22, 1, v45))
        {
          v46 = v22[2];

          v47 = v45[6];
          v48 = sub_F01EC();
          (*(*(v48 - 8) + 8))(v22 + v47, v48);
          v49 = v45[7];
          v50 = sub_F030C();
          (*(*(v50 - 8) + 8))(v22 + v49, v50);
          v51 = (v22 + v45[8]);
          if (v51[3])
          {
            sub_1EDC(v51);
          }
        }

        v52 = v22 + *(type metadata accessor for RCSFile(0) + 20);
        v53 = *(v52 + 2);

        v54 = *(v52 + 4);

        v55 = type metadata accessor for RCSFile.DispositionInformation(0);
        v56 = v55[7];
        v57 = sub_F01EC();
        (*(*(v57 - 8) + 8))(&v52[v56], v57);
        v58 = v55[8];
        v59 = sub_F030C();
        (*(*(v59 - 8) + 8))(&v52[v58], v59);
        v60 = &v52[v55[11]];
        if (v60[3])
        {
          sub_1EDC(v60);
        }

        v61 = *(v22 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v37 = v22[3];

        v38 = v22[4];
      }
    }

    else
    {
      v40 = v22[1];

      v41 = v22[2];
    }
  }

LABEL_13:
  v24 = (v5 + v1[9]);
  if (v24[3])
  {
    sub_1EDC(v24);
  }

  v25 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v5 + v1[10]);

  v29 = *(v5 + v1[12] + 8);

  v30 = *(v5 + v1[14]);

  v31 = v5 + v1[15];
  v32 = *(v31 + 8);

  v33 = *(v31 + 24);

  v34 = *(v0 + v26 + 8);

  v35 = *(v0 + v27 + 8);

  return _swift_deallocObject(v0, v27 + 16, v2 | 7);
}

uint64_t sub_3F6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B28, &qword_F2B20);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_401C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_388C8(&qword_127B28, &qword_F2B20);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_40B0()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v67 = *(*(v1 - 1) + 64);
  v4 = sub_388C8(&qword_1284E8, &qword_F3668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v68 = *(v5 + 64);

  v7 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    v8 = *(v7 + 1);

    v9 = *(v7 + 3);

    v10 = *(v7 + 4);

    v11 = *(v7 + 6);

    if (v7[121])
    {
      v12 = (v7 + 64);
LABEL_6:
      sub_1EDC(v12);
      goto LABEL_10;
    }

    v13 = *(v7 + 9);

    v14 = *(v7 + 11);

    v15 = *(v7 + 12);

    v16 = *(v7 + 14);
  }

  else
  {
    if (v7[57])
    {
      v12 = (v0 + v3);
      goto LABEL_6;
    }

    v17 = *(v7 + 1);

    v18 = *(v7 + 3);

    v19 = *(v7 + 4);

    v20 = *(v7 + 6);
  }

LABEL_10:
  v21 = *(v7 + 17);

  v22 = *(v7 + 19);

  v23 = *(v7 + 20);
  if (v23 >= 2)
  {
  }

  v24 = &v7[v1[8]];
  v25 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v24);
          v45 = v24[5];

          v46 = v24[7];

          if (v24[9])
          {

            sub_5F048(v24[10], v24[11]);
            v47 = v24[13];
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      v42 = *v24;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v48 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v48 - 1) + 48))(v24, 1, v48))
        {
          v49 = v24[2];

          v64 = v48[6];
          v50 = sub_F01EC();
          (*(*(v50 - 8) + 8))(v24 + v64, v50);
          v65 = v48[7];
          v51 = sub_F030C();
          (*(*(v51 - 8) + 8))(v24 + v65, v51);
          v52 = (v24 + v48[8]);
          if (v52[3])
          {
            sub_1EDC(v52);
          }
        }

        v53 = v24 + *(type metadata accessor for RCSFile(0) + 20);
        v54 = *(v53 + 2);

        v55 = *(v53 + 4);

        v56 = type metadata accessor for RCSFile.DispositionInformation(0);
        v62 = *(v56 + 28);
        v66 = v56;
        v57 = sub_F01EC();
        (*(*(v57 - 8) + 8))(&v53[v62], v57);
        v63 = *(v66 + 32);
        v58 = sub_F030C();
        (*(*(v58 - 8) + 8))(&v53[v63], v58);
        v59 = &v53[*(v66 + 44)];
        if (v59[3])
        {
          sub_1EDC(v59);
        }

        v60 = *(v24 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v40 = v24[3];

        v41 = v24[4];
      }
    }

    else
    {
      v43 = v24[1];

      v44 = v24[2];
    }
  }

LABEL_13:
  v26 = &v7[v1[9]];
  if (v26[3])
  {
    sub_1EDC(v26);
  }

  v27 = v2 | v6;
  v28 = (v67 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + v6 + 8) & ~v6;
  v31 = *&v7[v1[10]];

  v32 = *&v7[v1[12] + 8];

  v33 = *&v7[v1[14]];

  v34 = &v7[v1[15]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v0 + v28 + 8);

  v38 = *(v0 + v29);

  (*(v5 + 8))(v0 + v30, v4);

  return _swift_deallocObject(v0, v30 + v68, v27 | 7);
}

uint64_t sub_4640()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4678()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_46C0()
{
  v1 = (sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = sub_F035C();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v6 + v1[13]);

  v9 = *(v6 + v1[14] + 8);

  v10 = *(v6 + v1[15] + 8);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_47F8()
{
  v1 = sub_388C8(&qword_128670, &unk_F3958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_48C8()
{
  v1 = sub_388C8(&qword_128680, &qword_F3968);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_49B4()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_49F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4A28()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4A78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_4AD8()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4B14()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v65 = *(*(v1 - 1) + 64);
  v4 = sub_F030C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v66 = *(v5 + 64);

  v7 = *(v0 + 32);

  v8 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    v9 = *(v8 + 8);

    v10 = *(v8 + 24);

    v11 = *(v8 + 32);

    v12 = *(v8 + 48);

    if (*(v8 + 121))
    {
      v13 = (v8 + 64);
LABEL_6:
      sub_1EDC(v13);
      goto LABEL_10;
    }

    v14 = *(v8 + 72);

    v15 = *(v8 + 88);

    v16 = *(v8 + 96);

    v17 = *(v8 + 112);
  }

  else
  {
    if (*(v8 + 57))
    {
      v13 = (v0 + v3);
      goto LABEL_6;
    }

    v18 = *(v8 + 8);

    v19 = *(v8 + 24);

    v20 = *(v8 + 32);

    v21 = *(v8 + 48);
  }

LABEL_10:
  v22 = *(v8 + 136);

  v23 = *(v8 + 152);

  v24 = *(v8 + 160);
  if (v24 >= 2)
  {
  }

  v25 = (v8 + v1[8]);
  v26 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v25);
          v47 = v25[5];

          v48 = v25[7];

          if (v25[9])
          {

            sub_5F048(v25[10], v25[11]);
            v49 = v25[13];
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      v44 = *v25;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v50 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v50 - 1) + 48))(v25, 1, v50))
        {
          v51 = v25[2];

          v63 = v50[6];
          v52 = sub_F01EC();
          (*(*(v52 - 8) + 8))(v25 + v63, v52);
          (*(v5 + 8))(v25 + v50[7], v4);
          v53 = (v25 + v50[8]);
          if (v53[3])
          {
            sub_1EDC(v53);
          }
        }

        v54 = v25 + *(type metadata accessor for RCSFile(0) + 20);
        v55 = *(v54 + 2);

        v56 = *(v54 + 4);

        v57 = type metadata accessor for RCSFile.DispositionInformation(0);
        v62 = *(v57 + 28);
        v64 = v57;
        v58 = sub_F01EC();
        (*(*(v58 - 8) + 8))(&v54[v62], v58);
        (*(v5 + 8))(&v54[*(v64 + 32)], v4);
        v59 = &v54[*(v64 + 44)];
        if (v59[3])
        {
          sub_1EDC(v59);
        }

        v60 = *(v25 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v42 = v25[3];

        v43 = v25[4];
      }
    }

    else
    {
      v45 = v25[1];

      v46 = v25[2];
    }
  }

LABEL_13:
  v27 = (v8 + v1[9]);
  if (v27[3])
  {
    sub_1EDC(v27);
  }

  v28 = v2 | v6;
  v29 = (v65 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v6 + v31 + 17) & ~v6;
  v33 = *(v8 + v1[10]);

  v34 = *(v8 + v1[12] + 8);

  v35 = *(v8 + v1[14]);

  v36 = v8 + v1[15];
  v37 = *(v36 + 8);

  v38 = *(v36 + 24);

  v39 = *(v0 + v29);

  v40 = *(v0 + v31 + 8);

  (*(v5 + 8))(v0 + v32, v4);

  return _swift_deallocObject(v0, v32 + v66, v28 | 7);
}

uint64_t sub_5054()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_509C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50DC()
{
  v1 = sub_F043C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  v8 = *(v0 + v5 + 32);

  v9 = *(v0 + v5 + 40);

  return _swift_deallocObject(v0, v5 + 49, v3 | 7);
}

uint64_t sub_51C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5200()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5238()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5288()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_52D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_F035C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_F035C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_53AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_53F4()
{
  v1 = [*v0 metaData];

  return v1;
}

uint64_t sub_542C()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    v7 = *(v6 + 8);

    v8 = *(v6 + 24);

    v9 = *(v6 + 32);

    v10 = *(v6 + 48);

    if (*(v6 + 121))
    {
      v11 = (v6 + 64);
LABEL_6:
      sub_1EDC(v11);
      goto LABEL_10;
    }

    v12 = *(v6 + 72);

    v13 = *(v6 + 88);

    v14 = *(v6 + 96);

    v15 = *(v6 + 112);
  }

  else
  {
    if (*(v6 + 57))
    {
      v11 = (v0 + v3);
      goto LABEL_6;
    }

    v16 = *(v6 + 8);

    v17 = *(v6 + 24);

    v18 = *(v6 + 32);

    v19 = *(v6 + 48);
  }

LABEL_10:
  v20 = *(v6 + 136);

  v21 = *(v6 + 152);

  v22 = *(v6 + 160);
  if (v22 >= 2)
  {
  }

  v23 = (v6 + v1[8]);
  v24 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v23);
          v40 = v23[5];

          v41 = v23[7];

          if (v23[9])
          {

            sub_5F048(v23[10], v23[11]);
            v42 = v23[13];
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      v37 = *v23;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v43 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v43 - 1) + 48))(v23, 1, v43))
        {
          v44 = v23[2];

          v45 = v43[6];
          v46 = sub_F01EC();
          (*(*(v46 - 8) + 8))(v23 + v45, v46);
          v47 = v43[7];
          v48 = sub_F030C();
          (*(*(v48 - 8) + 8))(v23 + v47, v48);
          v49 = (v23 + v43[8]);
          if (v49[3])
          {
            sub_1EDC(v49);
          }
        }

        v50 = v23 + *(type metadata accessor for RCSFile(0) + 20);
        v51 = *(v50 + 2);

        v52 = *(v50 + 4);

        v53 = type metadata accessor for RCSFile.DispositionInformation(0);
        v54 = v53[7];
        v55 = sub_F01EC();
        (*(*(v55 - 8) + 8))(&v50[v54], v55);
        v56 = v53[8];
        v57 = sub_F030C();
        (*(*(v57 - 8) + 8))(&v50[v56], v57);
        v58 = &v50[v53[11]];
        if (v58[3])
        {
          sub_1EDC(v58);
        }

        v59 = *(v23 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v35 = v23[3];

        v36 = v23[4];
      }
    }

    else
    {
      v38 = v23[1];

      v39 = v23[2];
    }
  }

LABEL_13:
  v25 = (v6 + v1[9]);
  if (v25[3])
  {
    sub_1EDC(v25);
  }

  v26 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v6 + v1[10]);

  v29 = *(v6 + v1[12] + 8);

  v30 = *(v6 + v1[14]);

  v31 = v6 + v1[15];
  v32 = *(v31 + 8);

  v33 = *(v31 + 24);

  return _swift_deallocObject(v0, v27 + 8, v2 | 7);
}

uint64_t sub_58D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5910()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5990()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    v7 = *(v6 + 8);

    v8 = *(v6 + 24);

    v9 = *(v6 + 32);

    v10 = *(v6 + 48);

    if (*(v6 + 121))
    {
      v11 = (v6 + 64);
LABEL_6:
      sub_1EDC(v11);
      goto LABEL_10;
    }

    v12 = *(v6 + 72);

    v13 = *(v6 + 88);

    v14 = *(v6 + 96);

    v15 = *(v6 + 112);
  }

  else
  {
    if (*(v6 + 57))
    {
      v11 = (v0 + v3);
      goto LABEL_6;
    }

    v16 = *(v6 + 8);

    v17 = *(v6 + 24);

    v18 = *(v6 + 32);

    v19 = *(v6 + 48);
  }

LABEL_10:
  v20 = *(v6 + 136);

  v21 = *(v6 + 152);

  v22 = *(v6 + 160);
  if (v22 >= 2)
  {
  }

  v23 = (v6 + v1[8]);
  v24 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v23);
          v38 = v23[5];

          v39 = v23[7];

          if (v23[9])
          {

            sub_5F048(v23[10], v23[11]);
            v40 = v23[13];
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      v35 = *v23;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v41 - 1) + 48))(v23, 1, v41))
        {
          v42 = v23[2];

          v43 = v41[6];
          v44 = sub_F01EC();
          (*(*(v44 - 8) + 8))(v23 + v43, v44);
          v45 = v41[7];
          v46 = sub_F030C();
          (*(*(v46 - 8) + 8))(v23 + v45, v46);
          v47 = (v23 + v41[8]);
          if (v47[3])
          {
            sub_1EDC(v47);
          }
        }

        v48 = v23 + *(type metadata accessor for RCSFile(0) + 20);
        v49 = *(v48 + 2);

        v50 = *(v48 + 4);

        v51 = type metadata accessor for RCSFile.DispositionInformation(0);
        v52 = v51[7];
        v53 = sub_F01EC();
        (*(*(v53 - 8) + 8))(&v48[v52], v53);
        v54 = v51[8];
        v55 = sub_F030C();
        (*(*(v55 - 8) + 8))(&v48[v54], v55);
        v56 = &v48[v51[11]];
        if (v56[3])
        {
          sub_1EDC(v56);
        }

        v57 = *(v23 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v33 = v23[3];

        v34 = v23[4];
      }
    }

    else
    {
      v36 = v23[1];

      v37 = v23[2];
    }
  }

LABEL_13:
  v25 = (v6 + v1[9]);
  if (v25[3])
  {
    sub_1EDC(v25);
  }

  v26 = *(v6 + v1[10]);

  v27 = *(v6 + v1[12] + 8);

  v28 = *(v6 + v1[14]);

  v29 = v6 + v1[15];
  v30 = *(v29 + 8);

  v31 = *(v29 + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5E18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5E50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_5EA8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_5F28()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v30 = (v2 + *v2);
    v5 = v2[1];
    v6 = swift_task_alloc();
    *(v0 + 224) = v6;
    *v6 = v0;
    v6[1] = sub_62D4;
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);

    return v30(v9, v7, v8);
  }

  sub_37380(*(v0 + 136), v0 + 16, &qword_128B88, &qword_F3F30);
  if (*(v0 + 48) == 1)
  {
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
LABEL_16:
    v27 = *(v0 + 216);
    v28 = *(v0 + 200);

    v29 = *(v0 + 8);

    return v29();
  }

  sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = *(v0 + 112);
  *(v0 + 232) = v11;
  swift_beginAccess();
  v12 = objc_getAssociatedObject(v11, &unk_128F30);
  swift_endAccess();
  if (v12)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  *(v0 + 56) = v31;
  *(v0 + 72) = v32;
  sub_388C8(&unk_127FB0, &qword_F2F40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    v26 = *(v0 + 176);

    (*(v23 + 56))(v22, 1, 1, v26);
    (*(v25 + 8))(v22, v24);
    goto LABEL_16;
  }

  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  (*(v16 + 56))(v17, 0, 1, v18);
  (*(v16 + 32))(v15, v17, v18);
  *(v0 + 240) = *(v19 + 120);
  *(v0 + 248) = (v19 + 120) & 0xFFFFFFFFFFFFLL | 0x202C000000000000;
  sub_F0AEC();
  *(v0 + 256) = sub_F0ADC();
  v21 = sub_F0A6C();

  return _swift_task_switch(sub_6698, v21, v20);
}

uint64_t sub_62D4()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_63D0, 0, 0);
}

uint64_t sub_63D0()
{
  sub_37380(*(v0 + 136), v0 + 16, &qword_128B88, &qword_F3F30);
  if (*(v0 + 48) == 1)
  {
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
LABEL_12:
    v17 = *(v0 + 216);
    v18 = *(v0 + 200);

    v19 = *(v0 + 8);

    return v19();
  }

  sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 112);
  *(v0 + 232) = v1;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v1, &unk_128F30);
  swift_endAccess();
  if (v2)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  *(v0 + 56) = v21;
  *(v0 + 72) = v22;
  sub_388C8(&unk_127FB0, &qword_F2F40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);

    (*(v13 + 56))(v12, 1, 1, v16);
    (*(v15 + 8))(v12, v14);
    goto LABEL_12;
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  (*(v6 + 56))(v7, 0, 1, v8);
  (*(v6 + 32))(v5, v7, v8);
  *(v0 + 240) = *(v9 + 120);
  *(v0 + 248) = (v9 + 120) & 0xFFFFFFFFFFFFLL | 0x202C000000000000;
  sub_F0AEC();
  *(v0 + 256) = sub_F0ADC();
  v11 = sub_F0A6C();

  return _swift_task_switch(sub_6698, v11, v10);
}

uint64_t sub_6698()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  v4(v5, v3, v7, v6);

  return _swift_task_switch(sub_673C, 0, 0);
}

uint64_t sub_673C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_67D8()
{
  if (v0[6])
  {
    v1 = v0[7];
  }

  v2 = v0[9];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[9];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_127A0;

  return sub_B1E64(a1, a2, a3, (v3 + 4), v10, v8, v9);
}

uint64_t sub_68F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_69E8()
{
  v1 = v0[15];
  v2 = v0[11];
  (*(v0[13] + 16))(v1, v0[7], v0[12]);
  v3 = *(v2 - 8);
  v0[16] = v3;
  v4 = *(v3 + 48);
  v0[17] = v4;
  v0[18] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[8];
    v9 = *(v7 + 8);
    v0[19] = v9;
    v0[20] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[21] = Strong;
    if (Strong)
    {
      v11 = v0[9];
      v0[22] = *(v11 + 40);
      v0[23] = (v11 + 40) & 0xFFFFFFFFFFFFLL | 0xBF16000000000000;
      sub_F0AEC();
      v0[24] = sub_F0ADC();
      v13 = sub_F0A6C();

      return _swift_task_switch(sub_6C8C, v13, v12);
    }

    (*(v3 + 56))(v0[14], 1, 1, v0[11]);
    v17 = v0[20];
    v18 = v0[15];
    v20 = v0[9];
    v19 = v0[10];
    (v0[19])(v0[14], v0[12]);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[5], v0[15], v0[11]);
    v15 = v0[14];
    v14 = v0[15];

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_6C8C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v4(v8, v6, v7);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_6D38, 0, 0);
}

uint64_t sub_6D38()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  if ((*(v0 + 136))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    (*(v0 + 152))(v2, *(v0 + 96));
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 40), v2, v3);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_6E90()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = v0[13];
    v0[24] = *(v3 + 56);
    v0[25] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
    sub_F0AEC();
    v0[26] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_7008, v5, v4);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[22];
    v9 = v0[18];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_7008()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];

  v0[27] = v4(v7, v5, v6);
  v0[28] = v8;

  return _swift_task_switch(sub_70A0, 0, 0);
}

uint64_t sub_70A0()
{
  v1 = v0[27];
  v2 = v0[22];
  v17 = v0[28];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v20 = v0[17];
  v21 = v0[21];
  v23 = v0[14];
  v24 = v0[23];
  v7 = v0[12];
  v22 = v0[13];
  v8 = v0[10];
  v18 = v0[11];
  v19 = v0[15];
  v25 = *(v7 + 24);
  v9 = type metadata accessor for RCSGroupController.OperationID();
  v0[5] = v9;
  v0[6] = swift_getWitnessTable();
  v10 = sub_37474(v0 + 2);
  *v10 = v1;
  v10[1] = v17;
  v10[2] = 0;
  v10[3] = 0;
  *(v10 + 32) = 0;
  v11 = v10 + *(v9 + 36);
  sub_F034C();
  (*(v3 + 16))(v2, v8, v5);
  (*(v6 + 16))(v4, v18, v19);
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = (v21 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v0[29] = v14;
  *(v14 + 2) = v23;
  *(v14 + 3) = v22;
  *(v14 + 4) = v7;
  (*(v3 + 32))(&v14[v12], v2, v5);
  (*(v6 + 32))(&v14[v13], v4, v19);
  *&v14[(v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;

  swift_unknownObjectRetain();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_7308;

  return sub_B64CC((v0 + 2), &unk_F4A60, v14);
}

uint64_t sub_7308(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[30];
  v6 = *v2;
  (*v2)[31] = v1;

  v7 = v4[29];

  if (v1)
  {
    v8 = sub_74C4;
  }

  else
  {
    v4[32] = a1;
    sub_1EDC(v4 + 2);
    v8 = sub_7448;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_7448()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[32];

  return v4(v5);
}

uint64_t sub_74C4()
{
  v1 = v0[23];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_7544()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_7CC8;
  }

  else
  {
    v3 = sub_7658;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7658()
{
  *(v0 + 152) = sub_F0AEC();
  *(v0 + 160) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_76F0, v2, v1);
}

uint64_t sub_76F0()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[4];
  v3 = v0[5];

  v0[21] = sub_B3094(v3);
  v0[22] = v2;
  if (v2)
  {
    v5 = sub_7D54;
  }

  else
  {
    v5 = sub_7788;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7788()
{
  v47 = v0;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[3];
  v7 = sub_F06CC();
  sub_3C96C(v7, qword_128F18);
  v8 = *(v4 + 16);
  v8(v2, v3, v5);
  v9 = v1;

  v10 = sub_F06AC();
  v11 = sub_F0CCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[21];
    v13 = v0[14];
    v41 = v0[15];
    v14 = v0[13];
    v15 = v0[9];
    v43 = v0[2];
    v44 = v0[3];
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v16 = 138412802;
    *(v16 + 4) = v12;
    *v42 = v12;
    *(v16 + 12) = 2080;
    v8(v13, v41, v15);
    v17 = v12;
    v18 = sub_F083C();
    v45 = v8;
    v20 = v19;
    v23 = *(v14 + 8);
    v22 = v14 + 8;
    v21 = v23;
    v23(v41, v15);
    v24 = sub_3E850(v18, v20, &v46);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_3E850(v43, v44, &v46);
    _os_log_impl(&dword_0, v10, v11, "Creating group with information %@ context %s operation ID %s", v16, 0x20u);
    sub_372B0(v42, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    v25 = v45;
  }

  else
  {
    v26 = v0[15];
    v27 = v0[13];
    v28 = v0[9];

    v29 = *(v27 + 8);
    v22 = v27 + 8;
    v21 = v29;
    v29(v26, v28);
    v25 = v8;
  }

  v0[23] = v22;
  v0[24] = v21;
  v30 = v0[19];
  v31 = v0[14];
  v32 = v0[12];
  v33 = v0[9];
  v34 = v0[7];
  v36 = v0[2];
  v35 = v0[3];
  v25(v31, v0[16], v33);
  (*(*(v33 - 8) + 32))(v32, v31, v33);
  v37 = (v32 + *(type metadata accessor for RCSGroupOperation() + 28));
  *v37 = v36;
  v37[1] = v35;
  v0[25] = *(v34 + 128);
  v0[26] = (v34 + 128) & 0xFFFFFFFFFFFFLL | 0x464A000000000000;

  v0[27] = sub_F0ADC();
  v39 = sub_F0A6C();

  return _swift_task_switch(sub_7B38, v39, v38);
}

uint64_t sub_7B38()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v3(v4, v5, v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_7C04, 0, 0);
}

uint64_t sub_7C04()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v1(v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_7CC8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_7D54()
{
  (*(v0[13] + 8))(v0[16], v0[9]);
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_7DFC()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 152) + 88);
    *(v0 + 168) = v3;
    *(v0 + 176) = *(v3 + 80);
    *(v0 + 184) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    sub_F0AEC();
    *(v0 + 192) = sub_F0ADC();
    v4 = sub_F0A6C();
    v6 = v5;
    v7 = sub_7FDC;
LABEL_5:

    return _swift_task_switch(v7, v4, v6);
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v8 = *(v0 + 144);
  sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
  v9 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = v9;
  if (v9)
  {
    v10 = *(*(v0 + 152) + 88);
    *(v0 + 208) = v10;
    *(v0 + 216) = *(v10 + 168);
    *(v0 + 224) = (v10 + 168) & 0xFFFFFFFFFFFFLL | 0x2365000000000000;
    *(v0 + 232) = sub_F0AEC();
    *(v0 + 240) = sub_F0ADC();
    v4 = sub_F0A6C();
    v6 = v11;
    v7 = sub_8220;
    goto LABEL_5;
  }

  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_86F8;
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);

  return sub_B3D70(v15, v13);
}

uint64_t sub_7FDC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];

  v4(v7, *(v6 + 80), v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_807C, 0, 0);
}

uint64_t sub_807C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_3928((v0 + 56), v0 + 16);
    sub_3928((v0 + 16), v1);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 144);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = Strong;
    if (Strong)
    {
      v6 = *(*(v0 + 152) + 88);
      *(v0 + 208) = v6;
      *(v0 + 216) = *(v6 + 168);
      *(v0 + 224) = (v6 + 168) & 0xFFFFFFFFFFFFLL | 0x2365000000000000;
      *(v0 + 232) = sub_F0AEC();
      *(v0 + 240) = sub_F0ADC();
      v8 = sub_F0A6C();

      return _swift_task_switch(sub_8220, v8, v7);
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 304) = v9;
      *v9 = v0;
      v9[1] = sub_86F8;
      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      v12 = *(v0 + 128);

      return sub_B3D70(v12, v10);
    }
  }
}

uint64_t sub_8220()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[19];
  v7 = v0[16];

  v0[31] = *(v6 + 80);
  v0[32] = v3(v7);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_82C8, 0, 0);
}

uint64_t sub_82C8()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[18];
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[33] = Strong;
    if (Strong)
    {
      if (qword_128F50 != -1)
      {
        swift_once();
      }

      v4 = sub_F06CC();
      sub_3C96C(v4, static Logger.groups);
      v5 = v1;
      v6 = sub_F06AC();
      v7 = sub_F0CCC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[32];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v5;
        *v10 = v8;
        v11 = v5;
        _os_log_impl(&dword_0, v6, v7, "Backfilling the missing group identity with the existing info: %@", v9, 0xCu);
        sub_372B0(v10, &qword_127AF0, &qword_F28E0);
      }

      v12 = v0[29];
      v13 = v0[26];

      v0[34] = *(v13 + 72);
      v0[35] = (v13 + 72) & 0xFFFFFFFFFFFFLL | 0x441C000000000000;
      v0[36] = sub_F0ADC();
      v15 = sub_F0A6C();

      return _swift_task_switch(sub_85C4, v15, v14);
    }

    else
    {
      v20 = v0[31];
      v21 = v0[26];
      type metadata accessor for RCSGroupController.GroupOperationError();
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v22 = v0[1];

      return v22();
    }
  }

  else
  {
    v16 = swift_task_alloc();
    v0[38] = v16;
    *v16 = v0;
    v16[1] = sub_86F8;
    v17 = v0[17];
    v18 = v0[18];
    v19 = v0[16];

    return sub_B3D70(v19, v17);
  }
}

uint64_t sub_85C4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[26];
  v9 = v0[15];
  v8 = v0[16];

  v4(v8, v5, v6, v7);
  v0[37] = 0;

  return _swift_task_switch(sub_8690, 0, 0);
}

uint64_t sub_8690()
{
  v2 = v0[32];
  v1 = v0[33];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_86F8(uint64_t a1)
{
  v3 = *(*v2 + 304);
  v4 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_882C, 0, 0);
  }
}

uint64_t sub_882C()
{
  v1 = v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  if (Strong)
  {
    v3 = *(v0[19] + 88);
    v0[42] = v3;
    v0[43] = *(v3 + 72);
    v0[44] = (v3 + 72) & 0xFFFFFFFFFFFFLL | 0x441C000000000000;
    sub_F0AEC();
    v0[45] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_899C, v5, v4);
  }

  else
  {
    v6 = v0[39];
    v7 = v0[19];
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_899C()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];

  v4(v9, v7, *(v8 + 80), v3);
  v0[46] = v6;
  if (v6)
  {
    v11 = sub_8B3C;
  }

  else
  {
    v11 = sub_8A68;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_8A68()
{
  v1 = v0[41];
  v2 = v0[39];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_8AD4()
{
  v2 = v0[32];
  v1 = v0[33];
  swift_unknownObjectRelease();

  v3 = v0[37];
  v4 = v0[1];

  return v4();
}

uint64_t sub_8B3C()
{
  v1 = v0[41];
  v2 = v0[39];
  swift_unknownObjectRelease();

  v3 = v0[46];
  v4 = v0[1];

  return v4();
}

uint64_t sub_8BA8()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 272);
    *(v0 + 360) = *(v3 + 80);
    *(v0 + 368) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    *(v0 + 376) = sub_F0AEC();
    *(v0 + 384) = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_8D98, v5, v4);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v6 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    (*(v7 + 16))(v11, v10, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = *(v0 + 344);
    v13 = *(v0 + 312);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_8D98()
{
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[29];

  v3(v7, v5, v6);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_8E3C, 0, 0);
}

uint64_t sub_8E3C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 264);
    sub_3928((v0 + 56), v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 392) = Strong;
    v3 = *(v0 + 272);
    if (Strong)
    {
      v4 = *(v0 + 376);
      *(v0 + 400) = *(v3 + 56);
      *(v0 + 408) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
      *(v0 + 416) = sub_F0ADC();
      v6 = sub_F0A6C();

      return _swift_task_switch(sub_9070, v6, v5);
    }

    v13 = *(v0 + 280);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 16));
  }

  else
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    (*(v8 + 16))(v12, v11, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v14 = *(v0 + 344);
  v15 = *(v0 + 312);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_9070()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[29];

  v0[53] = v4(v7, v5, v6);
  v0[54] = v8;

  return _swift_task_switch(sub_9108, 0, 0);
}

uint64_t sub_9108()
{
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v31 = *(v0 + 392);
  v1 = *(v0 + 344);
  v24 = v1;
  v27 = *(v0 + 336);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v22 = v3;
  v32 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v23 = v5;
  v28 = *(v0 + 272);
  v29 = *(v0 + 280);
  v30 = *(v0 + 264);
  v25 = *(v0 + 256);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v26 = *(v0 + 304);
  v19 = *(v0 + 232);
  *(v0 + 440) = *(v30 + 24);
  v8 = type metadata accessor for RCSGroupController.OperationID();
  *(v0 + 120) = v8;
  *(v0 + 128) = swift_getWitnessTable();
  v9 = sub_37474((v0 + 96));

  *v9 = v20;
  v9[1] = v21;
  v9[2] = v7;
  v9[3] = v6;
  *(v9 + 32) = 1;
  v10 = v9 + *(v8 + 36);
  sub_F034C();
  (*(v2 + 16))(v1, v19, v3);
  (*(v4 + 16))(v32, v25, v5);
  sub_1F28(v0 + 16, v0 + 136);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = (v27 + *(v4 + 80) + v11) & ~*(v4 + 80);
  v13 = (v26 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v0 + 448) = v15;
  *(v15 + 2) = v29;
  *(v15 + 3) = v28;
  *(v15 + 4) = v30;
  (*(v2 + 32))(&v15[v11], v24, v22);
  (*(v4 + 32))(&v15[v12], v32, v23);
  *&v15[v13] = v31;
  sub_3928((v0 + 136), &v15[v14]);
  v16 = &v15[(v14 + 47) & 0xFFFFFFFFFFFFFFF8];
  *v16 = v7;
  v16[1] = v6;

  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  *(v0 + 456) = v17;
  *v17 = v0;
  v17[1] = sub_93E8;

  return sub_B64F0(v0 + 176, v0 + 96, &unk_F4480, v15);
}

uint64_t sub_93E8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v6 = sub_9618;
  }

  else
  {
    sub_1EDC((v2 + 176));
    v6 = sub_9524;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_9524()
{
  v1 = *(v0 + 448);

  sub_1EDC((v0 + 96));

  return _swift_task_switch(sub_9594, 0, 0);
}

uint64_t sub_9594()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[39];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_9618()
{
  v1 = *(v0 + 448);

  return _swift_task_switch(sub_9680, 0, 0);
}

uint64_t sub_9680()
{
  v1 = v0[49];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);
  v2 = v0[58];
  v3 = v0[43];
  v4 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_9708()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_9AC4;
  }

  else
  {
    v3 = sub_981C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_981C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  (*(v0[14] + 16))(v1, v0[16], v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  v7 = (v2 + *(type metadata accessor for RCSGroupOperation() + 28));
  *v7 = v6;
  v7[1] = v5;
  v0[19] = *(v4 + 136);
  v0[20] = (v4 + 136) & 0xFFFFFFFFFFFFLL | 0xBA73000000000000;
  sub_F0AEC();

  v0[21] = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_994C, v9, v8);
}

uint64_t sub_994C()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v12 = v0[20];
  v13 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  v2(v10, v7, v8, v3, v5, v6);
  (*(v4 + 8))(v3, v13);

  return _swift_task_switch(sub_9A28, 0, 0);
}

uint64_t sub_9A28()
{
  v1 = v0[15];
  v2 = v0[13];
  (*(v0[14] + 8))(v0[16], v0[10]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_9AC4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_9B3C()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 256);
    *(v0 + 344) = *(v3 + 80);
    *(v0 + 352) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    *(v0 + 360) = sub_F0AEC();
    *(v0 + 368) = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_9D2C, v5, v4);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    (*(v7 + 16))(v11, v10, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = *(v0 + 328);
    v13 = *(v0 + 296);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_9D2C()
{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];

  v3(v7, v5, v6);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9DD0, 0, 0);
}

uint64_t sub_9DD0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 248);
    sub_3928((v0 + 56), v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 376) = Strong;
    v3 = *(v0 + 256);
    if (Strong)
    {
      v4 = *(v0 + 360);
      *(v0 + 384) = *(v3 + 56);
      *(v0 + 392) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
      *(v0 + 400) = sub_F0ADC();
      v6 = sub_F0A6C();

      return _swift_task_switch(sub_A004, v6, v5);
    }

    v13 = *(v0 + 264);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 16));
  }

  else
  {
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    (*(v8 + 16))(v12, v11, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v14 = *(v0 + 328);
  v15 = *(v0 + 296);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_A004()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];

  v0[51] = v4(v7, v5, v6);
  v0[52] = v8;

  return _swift_task_switch(sub_A09C, 0, 0);
}

uint64_t sub_A09C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v18 = *(v0 + 416);
  v19 = v4;
  v5 = *(v0 + 296);
  v21 = *(v0 + 288);
  v22 = *(v0 + 320);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v23 = *(v0 + 256);
  v24 = *(v0 + 264);
  v25 = *(v0 + 248);
  v26 = *(v0 + 376);
  v20 = *(v0 + 240);
  v8 = *(v0 + 232);
  *(v0 + 424) = *(v25 + 24);
  v9 = type metadata accessor for RCSGroupController.OperationID();
  *(v0 + 120) = v9;
  *(v0 + 128) = swift_getWitnessTable();
  v10 = sub_37474((v0 + 96));
  *v10 = v1;
  v10[1] = v18;
  v10[2] = 0;
  v10[3] = 0;
  *(v10 + 32) = 2;
  v11 = v10 + *(v9 + 36);
  sub_F034C();
  (*(v3 + 16))(v2, v8, v4);
  (*(v6 + 16))(v5, v20, v7);
  sub_1F28(v0 + 16, v0 + 136);
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = (v22 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = (v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v0 + 432) = v15;
  *(v15 + 2) = v24;
  *(v15 + 3) = v23;
  *(v15 + 4) = v25;
  (*(v3 + 32))(&v15[v12], v2, v19);
  (*(v6 + 32))(&v15[v13], v5, v7);
  *&v15[v14] = v26;
  sub_3928((v0 + 136), &v15[(v14 + 15) & 0xFFFFFFFFFFFFFFF8]);

  swift_unknownObjectRetain();
  v16 = swift_task_alloc();
  *(v0 + 440) = v16;
  *v16 = v0;
  v16[1] = sub_A334;

  return sub_B64F0(v0 + 176, v0 + 96, &unk_F44A0, v15);
}

uint64_t sub_A334()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v6 = sub_A564;
  }

  else
  {
    sub_1EDC((v2 + 176));
    v6 = sub_A470;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_A470()
{
  v1 = *(v0 + 432);

  sub_1EDC((v0 + 96));

  return _swift_task_switch(sub_A4E0, 0, 0);
}

uint64_t sub_A4E0()
{
  v1 = v0[47];
  v2 = v0[41];
  v3 = v0[37];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_A564()
{
  v1 = *(v0 + 432);

  return _swift_task_switch(sub_A5CC, 0, 0);
}

uint64_t sub_A5CC()
{
  v1 = v0[47];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);
  v2 = v0[56];
  v3 = v0[41];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_A654()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_A9FC;
  }

  else
  {
    v3 = sub_A768;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_A768()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  (*(v0[12] + 16))(v1, v0[14], v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  v7 = (v2 + *(type metadata accessor for RCSGroupOperation() + 28));
  *v7 = v6;
  v7[1] = v5;
  v0[17] = *(v4 + 144);
  v0[18] = (v4 + 144) & 0xFFFFFFFFFFFFLL | 0x26A0000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_A898, v9, v8);
}

uint64_t sub_A898()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  v3(v10, v4, v7, v8);
  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_A960, 0, 0);
}

uint64_t sub_A960()
{
  v1 = v0[13];
  v2 = v0[11];
  (*(v0[12] + 8))(v0[14], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_A9FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_AA74()
{
  v1 = v0[32];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v3 = v0[34];
    v0[47] = *(v3 + 80);
    v0[48] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    v0[49] = sub_F0AEC();
    v0[50] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_AC10, v5, v4);
  }

  else
  {
    v6 = v0[33];
    v7 = v0[34];
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[45];
    v10 = v0[41];
    v9 = v0[42];
    v11 = v0[37];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_AC10()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[28];

  v3(v7, v6, v5);

  return _swift_task_switch(sub_ACAC, 0, 0);
}

uint64_t sub_ACAC()
{
  if (!*(v0 + 80))
  {
    v14 = *(v0 + 368);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 224);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    v19 = v18;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(v19, v17, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:
    v21 = *(v0 + 360);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 296);

    v25 = *(v0 + 8);

    return v25();
  }

  sub_3928((v0 + 56), v0 + 16);
  if (qword_128F90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = sub_3C96C(v3, qword_12A270);
  (*(v2 + 16))(v1, v4, v3);
  sub_F044C();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 496) == 1)
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v5 = sub_F06CC();
    sub_3C96C(v5, static Logger.groups);
    v6 = sub_F06AC();
    v7 = sub_F0CCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "No-oping participant modification due to override", v8, 2u);
    }

    v9 = *(v0 + 368);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 216);

    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1EDC((v0 + 16));
    goto LABEL_11;
  }

  v27 = *(v0 + 392);
  v28 = *(v0 + 272);
  *(v0 + 408) = *(v28 + 56);
  *(v0 + 416) = (v28 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
  *(v0 + 424) = sub_F0ADC();
  v30 = sub_F0A6C();

  return _swift_task_switch(sub_B094, v30, v29);
}

uint64_t sub_B094()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[46];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[28];

  v0[54] = v3(v7, v6, v5);
  v0[55] = v8;
  v9 = swift_task_alloc();
  v0[56] = v9;
  *v9 = v0;
  v9[1] = sub_B16C;
  v10 = v0[42];
  v11 = v0[32];
  v12 = v0[28];
  v13 = v0[29];

  return sub_B3C4C(v10, v12, v13);
}

uint64_t sub_B16C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = *(v2 + 440);

    v5 = sub_B960;
  }

  else
  {
    v5 = sub_B288;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B288()
{
  v44 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  v3 = sub_B49C8(*(v0 + 216), *(v0 + 336));
  *(v0 + 464) = v3;
  if (v1)
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 368);
    v6 = *(v0 + 336);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v6, v7);
    sub_1EDC((v0 + 16));
    v9 = *(v0 + 360);
    v10 = *(v0 + 328);
    v11 = *(v0 + 336);
    v12 = *(v0 + 296);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v3 + 16);
    if (v15)
    {
      v16 = v3;
      v17 = sub_BA324(*(v3 + 16), 0);
      v18 = sub_BD48C(&v43, v17 + 32, v15, v16);

      result = sub_66138();
      if (v18 != v15)
      {
        __break(1u);
        return result;
      }

      v40 = v17;
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    v19 = *(v0 + 432);
    v20 = *(v0 + 440);
    v36 = *(v0 + 336);
    v21 = *(v0 + 312);
    v37 = *(v0 + 320);
    v38 = *(v0 + 368);
    v22 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = *(v0 + 328);
    v23 = *(v0 + 280);
    v24 = *(v0 + 288);
    v25 = *(v0 + 256);
    v41 = *(v0 + 264);
    v42 = *(v0 + 240);
    v26 = *(v0 + 497) & 1;
    v27 = *(v0 + 216);

    *v22 = v19;
    *(v22 + 8) = v20;
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;
    *(v22 + 32) = 3;
    v28 = v22 + *(type metadata accessor for RCSGroupController.OperationID() + 36);
    sub_F034C();
    v39 = *(v25 + 24);
    *(v0 + 120) = v23;
    *(v0 + 128) = swift_getWitnessTable();
    v29 = sub_37474((v0 + 96));
    (*(v24 + 16))(v29, v22, v23);
    sub_1F28(v0 + 16, v0 + 136);
    (*(v21 + 16))(v35, v36, v34);
    v30 = (*(v21 + 80) + 120) & ~*(v21 + 80);
    v31 = swift_allocObject();
    *(v0 + 472) = v31;
    *(v31 + 16) = v41;
    *(v31 + 32) = v42;
    *(v31 + 48) = v38;
    sub_3928((v0 + 136), v31 + 56);
    *(v31 + 96) = v19;
    *(v31 + 104) = v20;
    *(v31 + 112) = v40;
    (*(v21 + 32))(v31 + v30, v35, v34);

    swift_unknownObjectRetain();
    v32 = swift_task_alloc();
    *(v0 + 480) = v32;
    v33 = type metadata accessor for RCSGroupController.ParticipantModificationResult();
    *v32 = v0;
    v32[1] = sub_B654;

    return RCSOperationController.perform<A>(operation:runTask:)(v0 + 200, v0 + 96, &unk_F4A18, v31, v33);
  }
}

uint64_t sub_B654()
{
  v2 = *v1;
  v3 = (*v1)[60];
  v9 = *v1;
  (*v1)[61] = v0;

  if (v0)
  {
    v5 = v2[58];
    v4 = v2[59];

    v6 = sub_B9FC;
  }

  else
  {
    v7 = v2[59];

    sub_1EDC(v2 + 12);
    v6 = sub_B788;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B788()
{
  v1 = v0[61];
  v2 = v0[33];
  v3 = v0[34];
  sub_B4D10(v0[58], v0[25], v0[26]);
  v4 = v0[58];
  v5 = v0[46];
  if (v1)
  {
    v6 = v0[39];
    v22 = v0[38];
    v24 = v0[42];
    v7 = v0[36];
    v8 = v0[37];
    v9 = v0[35];

    swift_unknownObjectRelease();
    (*(v7 + 8))(v8, v9);
    (*(v6 + 8))(v24, v22);
    sub_1EDC(v0 + 2);
    v10 = v0[45];
    v11 = v0[41];
    v12 = v0[42];
    v13 = v0[37];
  }

  else
  {
    v15 = v0[42];
    v23 = v0[45];
    v25 = v0[41];
    v16 = v0[39];
    v21 = v0[38];
    v17 = v0[36];
    v18 = v0[37];
    v19 = v0[35];

    swift_unknownObjectRelease();
    (*(v17 + 8))(v18, v19);
    (*(v16 + 8))(v15, v21);
    sub_1EDC(v0 + 2);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_B960()
{
  v1 = v0[46];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  v2 = v0[57];
  v3 = v0[45];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[37];

  v7 = v0[1];

  return v7();
}

uint64_t sub_B9FC()
{
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);
  v8 = v0[61];
  v9 = v0[45];
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[37];

  v13 = v0[1];

  return v13();
}

uint64_t sub_BAE8()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 192);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v20 = *(v0 + 72);
  v15 = *(v0 + 136);
  v16 = *(v0 + 56);
  sub_1F28(*(v0 + 96), v0 + 16);
  (*(v2 + 16))(v1, v5, v3);
  sub_B4F28(v8, (v0 + 16), v17, v7, v6, v1, v16, v9, v18);
  swift_unknownObjectRetain();

  v19 = (v20 + *v20);
  v10 = v20[1];
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_BC98;
  v12 = *(v0 + 192);
  v13 = *(v0 + 80);

  return v19(v12);
}

uint64_t sub_BC98()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *v1;
  v6[26] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_BE50, 0, 0);
  }

  else
  {
    v7 = v6[24];
    v8 = v6[21];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_BE50()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t sub_BEC0()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v0[12] = *v5;
  v0[13] = *(v5 + 8);
  (*(v2 + 16))(v3, &v5[*(v7 + 48)], v4);
  v8 = &v5[*(v7 + 52)];
  v10 = *v8;
  v9 = *(v8 + 1);
  (*(*(v4 - 8) + 32))(v1, v3, v4);
  v11 = (v1 + *(type metadata accessor for RCSGroupOperation() + 28));
  *v11 = v10;
  v11[1] = v9;
  v0[14] = *(v6 + 152);
  v0[15] = (v6 + 152) & 0xFFFFFFFFFFFFLL | 0xFCEE000000000000;
  sub_F0AEC();

  v0[16] = sub_F0ADC();
  v13 = sub_F0A6C();

  return _swift_task_switch(sub_C014, v13, v12);
}

uint64_t sub_C014()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v13 = v0[15];
  v14 = v0[8];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  v3(v2, v10 + 8, v5, v8, v9);
  (*(v7 + 8))(v5, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_C0F4()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_C1D8;
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return sub_B5018(v7, v6, 0, v4, &unk_F44C0, v2);
}

uint64_t sub_C1D8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C314, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_C314()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_C378()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_C470()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v0[12] = *v5;
  v0[13] = *(v5 + 8);
  (*(v2 + 16))(v3, &v5[*(v7 + 48)], v4);
  v8 = &v5[*(v7 + 52)];
  v10 = *v8;
  v9 = *(v8 + 1);
  (*(*(v4 - 8) + 32))(v1, v3, v4);
  v11 = (v1 + *(type metadata accessor for RCSGroupOperation() + 28));
  *v11 = v10;
  v11[1] = v9;
  v0[14] = *(v6 + 160);
  v0[15] = (v6 + 160) & 0xFFFFFFFFFFFFLL | 0x5736000000000000;
  sub_F0AEC();

  v0[16] = sub_F0ADC();
  v13 = sub_F0A6C();

  return _swift_task_switch(sub_1277C, v13, v12);
}

uint64_t sub_C5C4()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_C6A8;
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return sub_B5018(v7, v6, 1, v4, &unk_F44E0, v2);
}

uint64_t sub_C6A8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_127D0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t _s7CoreRCS18RCSGroupControllerC23participantAddCompleted4with14groupOperationyAC29ParticipantModificationResultVyx_GSg_AA012RCSOperationM0_ptF_0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  v10[0] = a1;
  v10[1] = a2;
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = type metadata accessor for RCSGroupController.ParticipantModificationResult();
  return sub_B2298(v10, a3, v8);
}

uint64_t sub_C854()
{
  v33 = v0;
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) == 255)
  {
    v24 = *(v0 + 136);
    sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
    v25 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation);
    v26 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v27 = swift_task_alloc();
    *(v0 + 144) = v27;
    v28 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
    *v27 = v0;
    v27[1] = sub_CCEC;
    v29 = *(v0 + 136);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 120, v24, v25, 0x292874696177, 0xE600000000000000, sub_1239C, v29, v28);
  }

  else
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = sub_F06CC();
    sub_3C96C(v4, qword_129B28);

    v5 = sub_F06AC();
    v6 = sub_F0CDC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 136);
      v8 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v8 = 136315138;
      v9 = sub_F035C();
      v10 = *(v9 - 8);
      v11 = *(v10 + 64) + 15;
      v12 = swift_task_alloc();
      v13 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v14 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v13);
      (*(v14 + 16))(v13, v14);
      sub_5F9D4();
      v15 = sub_F11EC();
      v17 = v16;
      (*(v10 + 8))(v12, v9);

      v18 = sub_3E850(v15, v17, &v32);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_0, v5, v6, "Fulfilling operation %s with already-received result", v8, 0xCu);
      sub_1EDC(v31);
    }

    v19 = sub_B5ED8(v0 + 16);
    v20 = v19;
    if (v21)
    {
      *(v0 + 128) = v19;
      sub_388C8(&qword_127B88, &qword_F3680);
      swift_willThrowTypedImpl();
      sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
      v22 = *(v0 + 8);

      return v22();
    }

    else
    {
      sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
      v30 = *(v0 + 8);

      return v30(v20);
    }
  }
}

uint64_t sub_CCEC()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[17];

    return _swift_task_switch(sub_CE24, v4, 0);
  }

  else
  {
    v5 = v3[15];
    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_CE3C()
{
  v31 = v0;
  v1 = *(v0 + 216);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) != 255)
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 216);
    v4 = sub_F06CC();
    sub_3C96C(v4, qword_129B28);

    v5 = sub_F06AC();
    v6 = sub_F0CDC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v8 = 136315138;
      v9 = sub_F035C();
      v10 = *(v9 - 8);
      v11 = *(v10 + 64) + 15;
      v12 = swift_task_alloc();
      v13 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v14 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v13);
      (*(v14 + 16))(v13, v14);
      sub_5F9D4();
      v15 = sub_F11EC();
      v17 = v16;
      (*(v10 + 8))(v12, v9);

      v18 = sub_3E850(v15, v17, &v30);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_0, v5, v6, "Fulfilling operation %s with already-received result", v8, 0xCu);
      sub_1EDC(v29);
    }

    sub_37380(v0 + 16, v0 + 136, &qword_128B88, &qword_F3F30);
    if (*(v0 + 168) == 1)
    {
      v19 = *(v0 + 136);
      *(v0 + 96) = v19;
      *(v0 + 128) = 1;
    }

    else
    {
      sub_3FE38(v0 + 136, v0 + 96);
      *(v0 + 128) = 0;
      sub_1EDC((v0 + 136));
      if (*(v0 + 128) != 1)
      {
        v27 = *(v0 + 208);
        sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
        sub_54F88((v0 + 96), v27);
        v26 = *(v0 + 8);
        goto LABEL_15;
      }

      v19 = *(v0 + 96);
    }

    *(v0 + 200) = v19;
    sub_388C8(&qword_127B88, &qword_F3680);
    swift_willThrowTypedImpl();
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
    v26 = *(v0 + 8);
LABEL_15:

    return v26();
  }

  v20 = *(v0 + 216);
  sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
  v21 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation);
  v22 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v23 = swift_task_alloc();
  *(v0 + 224) = v23;
  *v23 = v0;
  v23[1] = sub_D2E8;
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v20, v21, 0x292874696177, 0xE600000000000000, sub_11C24, v25, &type metadata for Any + 8);
}

uint64_t sub_D2E8()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    v4 = v3[27];

    return _swift_task_switch(sub_D41C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_D434()
{
  v31 = v0;
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 104, &qword_129368, &unk_F5B80);
  if (*(v0 + 136) == 255)
  {
    v20 = *(v0 + 184);
    sub_372B0(v0 + 104, &qword_129368, &unk_F5B80);
    v21 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation);
    v22 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    v24 = sub_388C8(&qword_129378, &qword_F49E0);
    *v23 = v0;
    v23[1] = sub_D8A4;
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v20, v21, 0x292874696177, 0xE600000000000000, sub_1184C, v26, v24);
  }

  else
  {
    v2 = *(v0 + 120);
    *(v0 + 64) = *(v0 + 104);
    *(v0 + 80) = v2;
    *(v0 + 96) = *(v0 + 136);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 184);
    v4 = sub_F06CC();
    sub_3C96C(v4, qword_129B28);

    v5 = sub_F06AC();
    v6 = sub_F0CDC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 184);
      v8 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v8 = 136315138;
      v9 = sub_F035C();
      v10 = *(v9 - 8);
      v11 = *(v10 + 64) + 15;
      v12 = swift_task_alloc();
      v13 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v14 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v13);
      (*(v14 + 16))(v13, v14);
      sub_5F9D4();
      v15 = sub_F11EC();
      v17 = v16;
      (*(v10 + 8))(v12, v9);

      v18 = sub_3E850(v15, v17, &v30);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_0, v5, v6, "Fulfilling operation %s with already-received result", v8, 0xCu);
      sub_1EDC(v29);
    }

    sub_B5FD8(v0 + 64, v0 + 16);
    if (*(v0 + 56))
    {
      *(v0 + 168) = *(v0 + 16);
      sub_388C8(&qword_127B88, &qword_F3680);
      swift_willThrowTypedImpl();
      sub_372B0(v0 + 64, &qword_128B88, &qword_F3F30);
    }

    else
    {
      v27 = *(v0 + 176);
      sub_372B0(v0 + 64, &qword_128B88, &qword_F3F30);
      sub_3928((v0 + 16), v27);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_D8A4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[23];

    return _swift_task_switch(sub_D9D8, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_D9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_388C8(a3, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  (*(v10 + 16))(&v22 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  swift_beginAccess();
  v16 = *(a2 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 152) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_D8A20(0, v16[2] + 1, 1, v16);
    *(a2 + 152) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_D8A20((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = a6;
  v20[5] = v15;
  *(a2 + 152) = v16;
  return swift_endAccess();
}

uint64_t sub_DBA8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_DBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_DCCC;

  return sub_B2F5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_DCCC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_DDC0()
{
  v97 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 168);
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 168);

  v10 = sub_51FEC(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 440);
  v14 = (*(v8 + 56) + 16 * v10);
  v16 = *v14;
  v15 = v14[1];

  swift_beginAccess();
  v17 = *(v13 + 160);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = *(v13 + 160);

  v19 = sub_51FEC(v16, v15);
  v21 = v20;

  if (v21)
  {
    v22 = *(*(v17 + 56) + 8 * v19);

    sub_1F28(v22 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

    sub_3928((v0 + 256), v0 + 216);
    sub_3928((v0 + 216), v0 + 16);
  }

  else
  {
LABEL_6:

    sub_1F28(*(v0 + 416), v0 + 16);
  }

  v23 = *(v0 + 440);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_373E8((v0 + 16), v24);
  v26 = sub_F035C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v25 + 16))(v24, v25);
  v30 = sub_F032C();
  v32 = v31;
  *(v0 + 448) = v31;
  (*(v27 + 8))(v29, v26);

  swift_beginAccess();
  v33 = *(v23 + 160);
  if (*(v33 + 16))
  {
    v34 = *(v23 + 160);

    v35 = sub_51FEC(v30, v32);
    if (v36)
    {
      v37 = v35;

      v38 = *(*(v33 + 56) + 8 * v37);

      v39 = qword_128F78;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_F06CC();
      sub_3C96C(v40, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v41 = sub_F06AC();
      v42 = sub_F0CCC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v96 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v0 + 208);
        sub_373E8((v0 + 176), *(v0 + 200));
        v46 = *(v45 + 8);
        v47 = sub_F11EC();
        v49 = v48;
        sub_1EDC((v0 + 176));
        v50 = sub_3E850(v47, v49, &v96);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_0, v41, v42, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v43, 0x16u);
        sub_1EDC(v44);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 496) = v38;
      v93 = swift_task_alloc();
      *(v0 + 504) = v93;
      *v93 = v0;
      v93[1] = sub_E9D0;

      return sub_B5E78();
    }
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v51 = sub_F06CC();
  sub_3C96C(v51, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v52 = sub_F06AC();
  v53 = sub_F0CCC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v94 = v1;
    v96 = swift_slowAlloc();
    v55 = v96;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v57 = *(v56 + 8);
    v58 = sub_F11EC();
    v60 = v59;
    sub_1EDC((v0 + 56));
    v61 = sub_3E850(v58, v60, &v96);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_0, v52, v53, "Creating a new operation with ID %{private,mask.hash}s", v54, 0x16u);
    sub_1EDC(v55);
    v1 = v94;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v62 = *(v0 + 40);
  v63 = *(v0 + 48);
  sub_373E8((v0 + 16), v62);
  v64 = (*(v63 + 24))(v62, v63);
  v66 = v65;
  swift_beginAccess();

  v67 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v30, v32, v64, v66, isUniquelyReferenced_nonNull_native);

  *(v1 + 168) = v96;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  v69 = type metadata accessor for RCSOperationController.Operation();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_C7C30((v0 + 96));
  *(v0 + 456) = v72;
  swift_beginAccess();
  swift_retain_n();

  v73 = *(v23 + 160);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(v23 + 160);
  *(v23 + 160) = 0x8000000000000000;
  sub_BC0D8(v72, v30, v32, v74);

  *(v23 + 160) = v96;
  swift_endAccess();
  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  sub_373E8((v0 + 16), v75);
  v77 = (*(v76 + 32))(v75, v76);
  *(v0 + 464) = v78;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v82 = *(v0 + 432);
    v81 = *(v0 + 440);
    v83 = *(v0 + 424);
    v84 = *(v81 + 112);
    sub_1F28(v0 + 16, v0 + 136);
    v85 = swift_allocObject();
    *(v0 + 472) = v85;
    sub_3928((v0 + 136), (v85 + 2));
    v85[7] = v83;
    v85[8] = v82;
    v85[9] = v30;
    v85[10] = v32;
    v85[11] = v81;
    v86 = *(&async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + 1);
    v95 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v87 = swift_task_alloc();
    *(v0 + 480) = v87;
    *v87 = v0;
    v87[1] = sub_E6EC;

    return (v95)(v79, v80, &unk_F4A78, v85);
  }

  else
  {
    v89 = swift_task_alloc();
    *(v0 + 488) = v89;
    *v89 = v0;
    v89[1] = sub_E870;
    v90 = *(v0 + 432);
    v91 = *(v0 + 440);
    v92 = *(v0 + 424);

    return sub_C72F8(v0 + 16, v92, v90, v30, v32, v91);
  }
}

uint64_t sub_E6EC()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v4 = *(*v0 + 464);
  v5 = *v0;

  v1[62] = v1[57];
  v6 = swift_task_alloc();
  v1[63] = v6;
  *v6 = v5;
  v6[1] = sub_E9D0;

  return sub_B5E78();
}

uint64_t sub_E870()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 448);
  v4 = *v0;

  v1[62] = v1[57];
  v5 = swift_task_alloc();
  v1[63] = v5;
  *v5 = v4;
  v5[1] = sub_E9D0;

  return sub_B5E78();
}

uint64_t sub_E9D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *(*v2 + 496);
  v7 = *v2;
  v4[64] = v1;

  v8 = v4[55];
  if (v1)
  {
    v9 = sub_EB98;
  }

  else
  {
    v4[65] = a1;
    v9 = sub_EB28;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_EB28()
{
  v1 = v0[62];

  sub_1EDC(v0 + 2);
  v2 = v0[1];
  v3 = v0[65];

  return v2(v3);
}

uint64_t sub_EB98()
{
  v1 = v0[62];

  sub_1EDC(v0 + 2);
  v2 = v0[1];
  v3 = v0[64];

  return v2();
}

uint64_t sub_EC04()
{
  v98 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 168);
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 168);

  v10 = sub_51FEC(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 448);
  v14 = (*(v8 + 56) + 16 * v10);
  v16 = *v14;
  v15 = v14[1];

  swift_beginAccess();
  v17 = *(v13 + 160);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = *(v13 + 160);

  v19 = sub_51FEC(v16, v15);
  v21 = v20;

  if (v21)
  {
    v22 = *(*(v17 + 56) + 8 * v19);

    sub_1F28(v22 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

    sub_3928((v0 + 256), v0 + 216);
    sub_3928((v0 + 216), v0 + 16);
  }

  else
  {
LABEL_6:

    sub_1F28(*(v0 + 424), v0 + 16);
  }

  v23 = *(v0 + 448);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_373E8((v0 + 16), v24);
  v26 = sub_F035C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v25 + 16))(v24, v25);
  v30 = sub_F032C();
  v32 = v31;
  *(v0 + 456) = v31;
  (*(v27 + 8))(v29, v26);

  swift_beginAccess();
  v33 = *(v23 + 160);
  if (*(v33 + 16))
  {
    v34 = *(v23 + 160);

    v35 = sub_51FEC(v30, v32);
    if (v36)
    {
      v37 = v35;

      v38 = *(*(v33 + 56) + 8 * v37);

      v39 = qword_128F78;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_F06CC();
      sub_3C96C(v40, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v41 = sub_F06AC();
      v42 = sub_F0CCC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v97 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v0 + 208);
        sub_373E8((v0 + 176), *(v0 + 200));
        v46 = *(v45 + 8);
        v47 = sub_F11EC();
        v49 = v48;
        sub_1EDC((v0 + 176));
        v50 = sub_3E850(v47, v49, &v97);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_0, v41, v42, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v43, 0x16u);
        sub_1EDC(v44);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 504) = v38;
      v93 = swift_task_alloc();
      *(v0 + 512) = v93;
      *v93 = v0;
      v93[1] = sub_F854;
      v94 = *(v0 + 416);

      return sub_B5E98(v94);
    }
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v51 = sub_F06CC();
  sub_3C96C(v51, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v52 = sub_F06AC();
  v53 = sub_F0CCC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v95 = v1;
    v97 = swift_slowAlloc();
    v55 = v97;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v57 = *(v56 + 8);
    v58 = sub_F11EC();
    v60 = v59;
    sub_1EDC((v0 + 56));
    v61 = sub_3E850(v58, v60, &v97);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_0, v52, v53, "Creating a new operation with ID %{private,mask.hash}s", v54, 0x16u);
    sub_1EDC(v55);
    v1 = v95;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v62 = *(v0 + 40);
  v63 = *(v0 + 48);
  sub_373E8((v0 + 16), v62);
  v64 = (*(v63 + 24))(v62, v63);
  v66 = v65;
  swift_beginAccess();

  v67 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v30, v32, v64, v66, isUniquelyReferenced_nonNull_native);

  *(v1 + 168) = v97;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  v69 = type metadata accessor for RCSOperationController.Operation();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_C7C30((v0 + 96));
  *(v0 + 464) = v72;
  swift_beginAccess();
  swift_retain_n();

  v73 = *(v23 + 160);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v23 + 160);
  *(v23 + 160) = 0x8000000000000000;
  sub_BC0D8(v72, v30, v32, v74);

  *(v23 + 160) = v97;
  swift_endAccess();
  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  sub_373E8((v0 + 16), v75);
  v77 = (*(v76 + 32))(v75, v76);
  *(v0 + 472) = v78;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v83 = *(v0 + 432);
    v84 = *(v81 + 112);
    sub_1F28(v0 + 16, v0 + 136);
    v85 = swift_allocObject();
    *(v0 + 480) = v85;
    sub_3928((v0 + 136), (v85 + 2));
    v85[7] = v83;
    v85[8] = v82;
    v85[9] = v30;
    v85[10] = v32;
    v85[11] = v81;
    v86 = *(&async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + 1);
    v96 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v87 = swift_task_alloc();
    *(v0 + 488) = v87;
    *v87 = v0;
    v87[1] = sub_F538;

    return (v96)(v79, v80, &unk_F4A30, v85);
  }

  else
  {
    v89 = swift_task_alloc();
    *(v0 + 496) = v89;
    *v89 = v0;
    v89[1] = sub_F6D4;
    v90 = *(v0 + 440);
    v91 = *(v0 + 448);
    v92 = *(v0 + 432);

    return sub_C72F8(v0 + 16, v92, v90, v30, v32, v91);
  }
}

uint64_t sub_F538()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 472);
  v5 = *v0;

  v1[63] = v1[58];
  v6 = swift_task_alloc();
  v1[64] = v6;
  *v6 = v5;
  v6[1] = sub_F854;
  v7 = v1[52];

  return sub_B5E98(v7);
}

uint64_t sub_F6D4()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 456);
  v4 = *v0;

  v1[63] = v1[58];
  v5 = swift_task_alloc();
  v1[64] = v5;
  *v5 = v4;
  v5[1] = sub_F854;
  v6 = v1[52];

  return sub_B5E98(v6);
}

uint64_t sub_F854()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 520) = v0;

  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_12780;
  }

  else
  {
    v7 = sub_12788;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_F99C()
{
  v98 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 168);
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 168);

  v10 = sub_51FEC(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 448);
  v14 = (*(v8 + 56) + 16 * v10);
  v16 = *v14;
  v15 = v14[1];

  swift_beginAccess();
  v17 = *(v13 + 160);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = *(v13 + 160);

  v19 = sub_51FEC(v16, v15);
  v21 = v20;

  if (v21)
  {
    v22 = *(*(v17 + 56) + 8 * v19);

    sub_1F28(v22 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

    sub_3928((v0 + 256), v0 + 216);
    sub_3928((v0 + 216), v0 + 16);
  }

  else
  {
LABEL_6:

    sub_1F28(*(v0 + 424), v0 + 16);
  }

  v23 = *(v0 + 448);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_373E8((v0 + 16), v24);
  v26 = sub_F035C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v25 + 16))(v24, v25);
  v30 = sub_F032C();
  v32 = v31;
  *(v0 + 456) = v31;
  (*(v27 + 8))(v29, v26);

  swift_beginAccess();
  v33 = *(v23 + 160);
  if (*(v33 + 16))
  {
    v34 = *(v23 + 160);

    v35 = sub_51FEC(v30, v32);
    if (v36)
    {
      v37 = v35;

      v38 = *(*(v33 + 56) + 8 * v37);

      v39 = qword_128F78;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_F06CC();
      sub_3C96C(v40, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v41 = sub_F06AC();
      v42 = sub_F0CCC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v97 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v0 + 208);
        sub_373E8((v0 + 176), *(v0 + 200));
        v46 = *(v45 + 8);
        v47 = sub_F11EC();
        v49 = v48;
        sub_1EDC((v0 + 176));
        v50 = sub_3E850(v47, v49, &v97);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_0, v41, v42, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v43, 0x16u);
        sub_1EDC(v44);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 504) = v38;
      v93 = swift_task_alloc();
      *(v0 + 512) = v93;
      *v93 = v0;
      v93[1] = sub_105EC;
      v94 = *(v0 + 416);

      return sub_B5EB8(v94);
    }
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v51 = sub_F06CC();
  sub_3C96C(v51, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v52 = sub_F06AC();
  v53 = sub_F0CCC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v95 = v1;
    v97 = swift_slowAlloc();
    v55 = v97;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v57 = *(v56 + 8);
    v58 = sub_F11EC();
    v60 = v59;
    sub_1EDC((v0 + 56));
    v61 = sub_3E850(v58, v60, &v97);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_0, v52, v53, "Creating a new operation with ID %{private,mask.hash}s", v54, 0x16u);
    sub_1EDC(v55);
    v1 = v95;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v62 = *(v0 + 40);
  v63 = *(v0 + 48);
  sub_373E8((v0 + 16), v62);
  v64 = (*(v63 + 24))(v62, v63);
  v66 = v65;
  swift_beginAccess();

  v67 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v30, v32, v64, v66, isUniquelyReferenced_nonNull_native);

  *(v1 + 168) = v97;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  v69 = type metadata accessor for RCSOperationController.Operation();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_C7C30((v0 + 96));
  *(v0 + 464) = v72;
  swift_beginAccess();
  swift_retain_n();

  v73 = *(v23 + 160);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v23 + 160);
  *(v23 + 160) = 0x8000000000000000;
  sub_BC0D8(v72, v30, v32, v74);

  *(v23 + 160) = v97;
  swift_endAccess();
  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  sub_373E8((v0 + 16), v75);
  v77 = (*(v76 + 32))(v75, v76);
  *(v0 + 472) = v78;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v83 = *(v0 + 432);
    v84 = *(v81 + 112);
    sub_1F28(v0 + 16, v0 + 136);
    v85 = swift_allocObject();
    *(v0 + 480) = v85;
    sub_3928((v0 + 136), (v85 + 2));
    v85[7] = v83;
    v85[8] = v82;
    v85[9] = v30;
    v85[10] = v32;
    v85[11] = v81;
    v86 = *(&async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + 1);
    v96 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v87 = swift_task_alloc();
    *(v0 + 488) = v87;
    *v87 = v0;
    v87[1] = sub_102D0;

    return (v96)(v79, v80, &unk_F49D0, v85);
  }

  else
  {
    v89 = swift_task_alloc();
    *(v0 + 496) = v89;
    *v89 = v0;
    v89[1] = sub_1046C;
    v90 = *(v0 + 440);
    v91 = *(v0 + 448);
    v92 = *(v0 + 432);

    return sub_C72F8(v0 + 16, v92, v90, v30, v32, v91);
  }
}

uint64_t sub_102D0()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 472);
  v5 = *v0;

  v1[63] = v1[58];
  v6 = swift_task_alloc();
  v1[64] = v6;
  *v6 = v5;
  v6[1] = sub_105EC;
  v7 = v1[52];

  return sub_B5EB8(v7);
}

uint64_t sub_1046C()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 456);
  v4 = *v0;

  v1[63] = v1[58];
  v5 = swift_task_alloc();
  v1[64] = v5;
  *v5 = v4;
  v5[1] = sub_105EC;
  v6 = v1[52];

  return sub_B5EB8(v6);
}

uint64_t sub_105EC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 520) = v0;

  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_107A0;
  }

  else
  {
    v7 = sub_10734;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10734()
{
  v1 = v0[63];

  sub_1EDC(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_107A0()
{
  v1 = v0[63];

  sub_1EDC(v0 + 2);
  v2 = v0[1];
  v3 = v0[65];

  return v2();
}

uint64_t sub_1080C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

BOOL sub_10888(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_108EC()
{
  v1 = *v0;
  sub_F07EC();
  v2 = sub_F094C();

  return v2;
}

uint64_t sub_10928()
{
  v1 = *v0;
  sub_F07EC();
  sub_F089C();
}

Swift::Int sub_1097C()
{
  v1 = *v0;
  sub_F07EC();
  sub_F12FC();
  sub_F089C();
  v2 = sub_F132C();

  return v2;
}

uint64_t sub_109F0(uint64_t a1, id *a2)
{
  result = sub_F07CC();
  *a2 = 0;
  return result;
}

uint64_t sub_10A68(uint64_t a1, id *a2)
{
  v3 = sub_F07DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10AE8@<X0>(uint64_t *a1@<X8>)
{
  sub_F07EC();
  v2 = sub_F07BC();

  *a1 = v2;
  return result;
}

uint64_t sub_10B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_F07EC();
  v6 = v5;
  if (v4 == sub_F07EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_F122C();
  }

  return v9 & 1;
}

uint64_t sub_10BBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_F07EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10BE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_F07BC();

  *a2 = v5;
  return result;
}

uint64_t sub_10C30()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(sub_F0DEC() - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(v0 + 4);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v14 = *(v8 - 8);
  if (!(*(v14 + 48))(&v0[v11], 1, v8))
  {
    (*(v14 + 8))(&v0[v11], v8);
  }

  v15 = (v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v18 = *&v0[v15];
  swift_unknownObjectRelease();
  sub_1EDC(&v0[v16]);
  v19 = *&v0[v17 + 8];

  return _swift_deallocObject(v0, v17 + 16, v5 | v10 | 7);
}

uint64_t sub_10E38(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  v10 = *(sub_F0DEC() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v2 + v12);
  v16 = v2[4];
  v18 = *(v2 + v14);
  v17 = *(v2 + v14 + 8);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_127B4;

  return sub_B43E8(a1, a2, v16, v2 + v8, v2 + v11, v15, v2 + v13, v18);
}

uint64_t sub_11024()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(sub_F0DEC() - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(v0 + 4);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v14 = *(v8 - 8);
  if (!(*(v14 + 48))(&v0[v11], 1, v8))
  {
    (*(v14 + 8))(&v0[v11], v8);
  }

  v15 = (v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *&v0[v15];
  swift_unknownObjectRelease();
  sub_1EDC(&v0[v16]);

  return _swift_deallocObject(v0, v16 + 40, v5 | v10 | 7);
}

uint64_t sub_11218(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedTypeWitness();
  v11 = *(sub_F0DEC() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v2[4];
  v16 = *(v2 + v13);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_113E0;

  return sub_B479C(a1, a2, v15, v2 + v9, v2 + v12, v16, v2 + v14);
}

uint64_t sub_113E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_114E4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_127B8;

  return sub_B5B3C();
}

uint64_t sub_1158C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_127BC;

  return sub_B5D8C();
}

uint64_t sub_11644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 32);
    if (v4 > 4)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_116E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11788()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127A4;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_118D0()
{
  v2 = v0[2];
  v1 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 120) & ~v5;
  v7 = *(v4 + 64);
  v8 = v0[5];

  v9 = v0[6];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 7);
  v10 = v0[13];

  v11 = v0[14];

  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_119C8(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[12];
  v15 = v2[13];
  v11 = v2[14];
  v12 = v2 + ((*(v6 + 80) + 120) & ~*(v6 + 80));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_127C0;

  return sub_B5210(a1, a2, v7, v8, v9, (v2 + 7), v10, v15);
}

uint64_t sub_11B10()
{
  sub_1EDC(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_11B60()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127A8;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_11CA8()
{
  v1 = *(v0 + 5);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *&v0[v4];
  }

  else
  {
    (*(*(v1 - 8) + 8))(&v0[v4], v1);
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_11DDC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v16 = v1[4];
  v5 = v1[6];
  sub_3CB70(&qword_127B88, &qword_F3680);
  v6 = *(sub_F133C() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_127AC;

  return sub_B2BC8(a1, v8, v9, v10, v11, v12, v1 + v7);
}

uint64_t sub_11F28()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(sub_F0DEC() - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(v0 + 4);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v14 = *(v8 - 8);
  if (!(*(v14 + 48))(&v0[v11], 1, v8))
  {
    (*(v14 + 8))(&v0[v11], v8);
  }

  v15 = (v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *&v0[v15];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v15 + 8, v5 | v10 | 7);
}

uint64_t sub_12114(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedTypeWitness();
  v11 = *(sub_F0DEC() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2[4];
  v14 = *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_127C4;

  return sub_B3F18(a1, a2, v13, v2 + v9, v2 + v12, v14);
}

uint64_t sub_122D8()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127B0;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_123F8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_388C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_124A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_388C8(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1253C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12574(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_127C8;

  return sub_3E5DC(a1, v5);
}

uint64_t sub_1262C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_127CC;

  return sub_3E5DC(a1, v5);
}

void sub_126E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_12734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  result = v4(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1287C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_F06CC();
  sub_42800(v3, a2);
  sub_3C96C(v3, a2);
  sub_F069C();
  return sub_F06BC();
}

uint64_t sub_128E4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_F06CC();

  return sub_3C96C(v3, a2);
}

uint64_t sub_12938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_F06CC();
  v6 = sub_3C96C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *sub_129D4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_12B2C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_12BAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_12CA0()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 232);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = [*(v0 + 144) isChatbot];
    v8 = *(v0 + 232);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    if (v7)
    {
      v13 = (v0 + 288);
      *(v0 + 288) = 1;
    }

    else
    {
      v13 = (v0 + 280);
      *(v0 + 280) = 0;
    }

    *v8 = v12;

    *(v4 + 8) = v6;
    *(v4 + 16) = v10;
    *(v4 + 24) = v5;
    v20 = *(v0 + 224);
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);
    v33 = *(v0 + 184);
    v34 = *(v0 + 208);
    v35 = *(v0 + 176);
    v36 = *(v0 + 200);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v32 = *(v0 + 152);
    v39 = *(v0 + 136);
    v37 = *(v0 + 144);
    v38 = *(v0 + 128);
    *(v4 + 32) = *v13;
    v26 = v21 + *(type metadata accessor for RCSSpamReportingController.OperationID() + 36);
    sub_F034C();
    *(v0 + 248) = *(v24 + 24);
    *(v0 + 40) = v22;
    *(v0 + 48) = swift_getWitnessTable();
    v27 = sub_37474((v0 + 16));
    (*(v20 + 16))(v27, v21, v22);
    (*(v23 + 16))(v34, v32, v33);
    v28 = (*(v23 + 80) + 64) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v0 + 256) = v29;
    *(v29 + 2) = v35;
    *(v29 + 3) = v25;
    *(v29 + 4) = v37;
    *(v29 + 5) = v3;
    *(v29 + 6) = v38;
    *(v29 + 7) = v39;
    (*(v23 + 32))(&v29[v28], v34, v33);

    v30 = v37;
    swift_unknownObjectRetain();
    v31 = swift_task_alloc();
    *(v0 + 264) = v31;
    *v31 = v0;
    v31[1] = sub_12FFC;

    return sub_B64F0(v0 + 56, v0 + 16, &unk_F53E8, v29);
  }

  else
  {
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    type metadata accessor for RCSSpamReportingController.SpamReportOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v0 + 232);
    v17 = *(v0 + 208);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_12FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v6 = sub_13244;
  }

  else
  {
    sub_1EDC((v2 + 56));
    v6 = sub_13138;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_13138()
{
  v1 = *(v0 + 256);

  sub_1EDC((v0 + 16));

  return _swift_task_switch(sub_131A8, 0, 0);
}

uint64_t sub_131A8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_13244()
{
  v1 = *(v0 + 256);

  return _swift_task_switch(sub_132AC, 0, 0);
}

uint64_t sub_132AC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  sub_1EDC(v0 + 2);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_13350()
{
  v24 = v0;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_F06CC();
  sub_3C96C(v3, qword_129728);
  v4 = v1;

  v5 = sub_F06AC();
  v6 = sub_F0CDC();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315394;
    if ([v7 isChatbot])
    {
      v11 = 0x746F627461684328;
    }

    else
    {
      v11 = 0x746361746E6F4328;
    }

    v12 = sub_3E850(v11, 0xE900000000000029, &v23);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_3E850(v9, v8, &v23);
    _os_log_impl(&dword_0, v5, v6, "report spam %s operation created with ID %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[16];
  v14 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[2];
  v17 = v0[3];
  (*(v0[12] + 16))(v14, v0[8], v15);
  (*(*(v15 - 8) + 32))(v13, v14, v15);
  v19 = (v13 + *(type metadata accessor for RCSSpamReportOperation() + 28));
  *v19 = v18;
  v19[1] = v17;
  v0[17] = *(v16 + 32);
  v0[18] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x8D61000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v21 = sub_F0A6C();

  return _swift_task_switch(sub_13620, v21, v20);
}

uint64_t sub_13620()
{
  v1 = v0[19];
  v2 = v0[16];
  v13 = v0[17];
  v14 = v0[18];
  v3 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  v13(v9, v6, v10, v2, v7, v5, v4);
  (*(v3 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_13714()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v25 = *(v0 + 208);
    v26 = *(v0 + 200);
    v4 = *(v0 + 192);
    v5 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v22 = *(v0 + 152);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 112);
    v27 = *(v0 + 144);
    *(v0 + 224) = *(*(v0 + 160) + 24);
    *(v0 + 256) = 1;
    v10 = type metadata accessor for RCSSpamReportingController.OperationID();
    *(v0 + 40) = v10;
    *(v0 + 48) = swift_getWitnessTable();
    v11 = sub_37474((v0 + 16));

    *v11 = v9;
    v11[1] = v8;
    v11[2] = v7;
    v11[3] = v6;
    *(v11 + 32) = *(v0 + 256);
    v12 = v11 + *(v10 + 36);
    sub_F034C();
    (*(v4 + 16))(v25, v22, v24);
    v13 = (*(v4 + 80) + 64) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v0 + 232) = v14;
    *(v14 + 2) = v23;
    *(v14 + 3) = v5;
    *(v14 + 4) = v3;
    *(v14 + 5) = v7;
    *(v14 + 6) = v6;
    *(v14 + 7) = v27;
    (*(v4 + 32))(&v14[v13], v25, v24);

    swift_unknownObjectRetain();
    v15 = v27;
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    *v16 = v0;
    v16[1] = sub_13A0C;

    return sub_B64F0(v0 + 56, v0 + 16, &unk_F5400, v14);
  }

  else
  {
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    type metadata accessor for RCSSpamReportingController.SpamReportOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v20 = *(v0 + 208);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_13A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v6 = sub_13C24;
  }

  else
  {
    sub_1EDC((v2 + 56));
    v6 = sub_13B48;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_13B48()
{
  v1 = *(v0 + 232);

  sub_1EDC((v0 + 16));

  return _swift_task_switch(sub_13BB8, 0, 0);
}

uint64_t sub_13BB8()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_13C24()
{
  v1 = *(v0 + 232);

  return _swift_task_switch(sub_13C8C, 0, 0);
}

uint64_t sub_13C8C()
{
  v1 = v0[27];
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  v2 = v0[31];
  v3 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_13D00()
{
  v20 = v0;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_F06CC();
  sub_3C96C(v2, qword_129728);

  v3 = sub_F06AC();
  v4 = sub_F0CDC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_3E850(v6, v5, &v19);
    _os_log_impl(&dword_0, v3, v4, "report chatbot spam operation created with ID %s", v7, 0xCu);
    sub_1EDC(v8);
  }

  v9 = v0[16];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[2];
  v13 = v0[3];
  (*(v0[12] + 16))(v10, v0[8], v11);
  (*(*(v11 - 8) + 32))(v9, v10, v11);
  v15 = (v9 + *(type metadata accessor for RCSSpamReportOperation() + 28));
  *v15 = v14;
  v15[1] = v13;
  v0[17] = *(v12 + 24);
  v0[18] = (v12 + 24) & 0xFFFFFFFFFFFFLL | 0x1663000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v17 = sub_F0A6C();

  return _swift_task_switch(sub_13F4C, v17, v16);
}

uint64_t sub_13F4C()
{
  v1 = v0[19];
  v2 = v0[16];
  v13 = v0[17];
  v14 = v0[18];
  v3 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  v13(v9, v8, v7, v2, v6, v5, v4);
  (*(v3 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_14040()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  if (*(v0 + 88))
  {
    v4 = *(v0 + 56);
  }

  else
  {
    sub_1EDC((v0 + 56));
  }

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_140A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_149FC;

  return sub_BEDC8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_14178()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_141C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1429C;

  return sub_BF15C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1429C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14390()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);

  v8 = *(v0 + 40);
  swift_unknownObjectRelease();
  v9 = *(v0 + 56);

  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_14474(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_145A8;

  return sub_BF3AC(a1, a2, v9, v10, v11, v12, v2 + v8, v5);
}

uint64_t sub_145A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1469C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 32);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_14780(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_14A00;

  return sub_BF618(a1, a2, v9, v10, v11, v12, v2 + v8, v5);
}

uint64_t sub_148B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_14958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_14A04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_14A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14B08()
{
  v34 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) == 255)
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
    v23 = sub_17504(&qword_129370, type metadata accessor for RCSOperationController.Operation);
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    v25 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_14F4C;
    v27 = *(v0 + 128);
    v28 = *(v0 + 136);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, v21, v23, 0x292874696177, 0xE600000000000000, sub_1754C, v24, v28);
  }

  else
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 144);
    v4 = sub_F06CC();
    sub_3C96C(v4, qword_129B28);

    v5 = sub_F06AC();
    v6 = sub_F0CDC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v8 = 136315138;
      v9 = sub_F035C();
      v10 = *(v9 - 8);
      v11 = *(v10 + 64) + 15;
      v12 = swift_task_alloc();
      v13 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v14 = *(v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v7 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v13);
      (*(v14 + 16))(v13, v14);
      sub_5F9D4();
      v15 = sub_F11EC();
      v17 = v16;
      (*(v10 + 8))(v12, v9);

      v18 = sub_3E850(v15, v17, &v33);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_0, v5, v6, "Fulfilling operation %s with already-received result", v8, 0xCu);
      sub_1EDC(v32);
    }

    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    sub_C63A4(v0 + 16, *(v0 + 136), *(v0 + 160));
    sub_C6584(v19, v0 + 120, v20);
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
    v29 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_14F4C()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[18];

    return _swift_task_switch(sub_15090, v4, 0);
  }

  else
  {
    v5 = v3[21];

    v6 = v3[20];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_15090()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1510C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_151F4;

    return sub_1EBC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_151F4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_15304()
{
  v33 = v0;
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v4 = sub_C7880(v3, v2);
  v0[18] = v4;
  swift_endAccess();
  if (v4)
  {
    v5 = v0[17];
    v6 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v7 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v6);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    swift_beginAccess();
    sub_C77D0(v8, v10);
    swift_endAccess();

    return _swift_task_switch(sub_15704, v4, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v11 = v0[14];
    v12 = sub_F06CC();
    sub_3C96C(v12, qword_129B28);

    v13 = sub_F06AC();
    v14 = sub_F0D0C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[13];
      v15 = v0[14];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      *(v17 + 14) = sub_3E850(v16, v15, &v32);
      _os_log_impl(&dword_0, v13, v14, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v17, 0x16u);
      sub_1EDC(v18);
    }

    v19 = v0[17];
    v20 = *(v19 + 136);
    if (v20)
    {
      v21 = v0[15];
      v22 = v0[16];
      v23 = *(v19 + 144);
      *(swift_task_alloc() + 16) = v22;
      sub_3CB70(&qword_127B88, &qword_F3680);
      v24 = sub_F133C();
      sub_C5C14(sub_17C48, v24, (v0 + 2));

      v31 = (v20 + *v20);
      v25 = v20[1];
      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = sub_157D0;
      v28 = v0[13];
      v27 = v0[14];

      return (v31)(v28, v27, v0 + 2);
    }

    else
    {
      v29 = v0[1];

      return v29();
    }
  }
}

uint64_t sub_15704()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_C53A0(v0[15], v0[16]);

  return _swift_task_switch(sub_15770, v1, 0);
}

uint64_t sub_15770()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_157D0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v5 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_158DC()
{
  v99 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 168);
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 168);

  v10 = sub_51FEC(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 456);
  v14 = (*(v8 + 56) + 16 * v10);
  v16 = *v14;
  v15 = v14[1];

  swift_beginAccess();
  v17 = *(v13 + 160);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = *(v13 + 160);

  v19 = sub_51FEC(v16, v15);
  v21 = v20;

  if (v21)
  {
    v22 = *(*(v17 + 56) + 8 * v19);

    sub_1F28(v22 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

    sub_3928((v0 + 256), v0 + 216);
    sub_3928((v0 + 216), v0 + 16);
  }

  else
  {
LABEL_6:

    sub_1F28(*(v0 + 424), v0 + 16);
  }

  v23 = *(v0 + 456);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_373E8((v0 + 16), v24);
  v26 = sub_F035C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v25 + 16))(v24, v25);
  v30 = sub_F032C();
  v32 = v31;
  *(v0 + 464) = v31;
  (*(v27 + 8))(v29, v26);

  swift_beginAccess();
  v33 = *(v23 + 160);
  if (*(v33 + 16))
  {
    v34 = *(v23 + 160);

    v35 = sub_51FEC(v30, v32);
    if (v36)
    {
      v37 = v35;

      v38 = *(*(v33 + 56) + 8 * v37);

      v39 = qword_128F78;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_F06CC();
      sub_3C96C(v40, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v41 = sub_F06AC();
      v42 = sub_F0CCC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v98 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v0 + 208);
        sub_373E8((v0 + 176), *(v0 + 200));
        v46 = *(v45 + 8);
        v47 = sub_F11EC();
        v49 = v48;
        sub_1EDC((v0 + 176));
        v50 = sub_3E850(v47, v49, &v98);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_0, v41, v42, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v43, 0x16u);
        sub_1EDC(v44);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 512) = v38;
      v93 = swift_task_alloc();
      *(v0 + 520) = v93;
      *v93 = v0;
      v93[1] = sub_16558;
      v94 = *(v0 + 448);
      v95 = *(v0 + 416);

      return sub_C62E4(v95, v94);
    }
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v51 = sub_F06CC();
  sub_3C96C(v51, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v52 = sub_F06AC();
  v53 = sub_F0CCC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v96 = v1;
    v98 = swift_slowAlloc();
    v55 = v98;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v57 = *(v56 + 8);
    v58 = sub_F11EC();
    v60 = v59;
    sub_1EDC((v0 + 56));
    v61 = sub_3E850(v58, v60, &v98);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_0, v52, v53, "Creating a new operation with ID %{private,mask.hash}s", v54, 0x16u);
    sub_1EDC(v55);
    v1 = v96;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v62 = *(v0 + 40);
  v63 = *(v0 + 48);
  sub_373E8((v0 + 16), v62);
  v64 = (*(v63 + 24))(v62, v63);
  v66 = v65;
  swift_beginAccess();

  v67 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v30, v32, v64, v66, isUniquelyReferenced_nonNull_native);

  *(v1 + 168) = v98;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  v69 = type metadata accessor for RCSOperationController.Operation();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_C7C30((v0 + 96));
  *(v0 + 472) = v72;
  swift_beginAccess();
  swift_retain_n();

  v73 = *(v23 + 160);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v23 + 160);
  *(v23 + 160) = 0x8000000000000000;
  sub_BC0D8(v72, v30, v32, v74);

  *(v23 + 160) = v98;
  swift_endAccess();
  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  sub_373E8((v0 + 16), v75);
  v77 = (*(v76 + 32))(v75, v76);
  *(v0 + 480) = v78;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = *(v0 + 456);
    v83 = *(v0 + 432);
    v82 = *(v0 + 440);
    v84 = *(v81 + 112);
    sub_1F28(v0 + 16, v0 + 136);
    v85 = swift_allocObject();
    *(v0 + 488) = v85;
    sub_3928((v0 + 136), (v85 + 2));
    v85[7] = v83;
    v85[8] = v82;
    v85[9] = v30;
    v85[10] = v32;
    v85[11] = v81;
    v86 = *(&async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + 1);
    v97 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v87 = swift_task_alloc();
    *(v0 + 496) = v87;
    *v87 = v0;
    v87[1] = sub_16214;

    return (v97)(v79, v80, &unk_F49D0, v85);
  }

  else
  {
    v89 = swift_task_alloc();
    *(v0 + 504) = v89;
    *v89 = v0;
    v89[1] = sub_163C4;
    v90 = *(v0 + 456);
    v91 = *(v0 + 432);
    v92 = *(v0 + 440);

    return sub_C72F8(v0 + 16, v91, v92, v30, v32, v90);
  }
}

uint64_t sub_16214()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 488);
  v4 = *(*v0 + 480);
  v5 = *v0;

  v1[64] = v1[59];
  v6 = swift_task_alloc();
  v1[65] = v6;
  *v6 = v5;
  v6[1] = sub_16558;
  v7 = v1[56];
  v8 = v1[52];

  return sub_C62E4(v8, v7);
}

uint64_t sub_163C4()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 464);
  v4 = *v0;

  v1[64] = v1[59];
  v5 = swift_task_alloc();
  v1[65] = v5;
  *v5 = v4;
  v5[1] = sub_16558;
  v6 = v1[56];
  v7 = v1[52];

  return sub_C62E4(v7, v6);
}

uint64_t sub_16558()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 528) = v0;

  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1670C;
  }

  else
  {
    v7 = sub_166A0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_166A0()
{
  v1 = v0[64];

  sub_1EDC(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1670C()
{
  v1 = v0[64];

  sub_1EDC(v0 + 2);
  v2 = v0[1];
  v3 = v0[66];

  return v2();
}

uint64_t sub_16778()
{
  v21 = v0;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_F06CC();
  sub_3C96C(v2, qword_129B28);
  sub_1F28(v1, (v0 + 2));
  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    v7 = v0[6];
    sub_373E8(v0 + 2, v0[5]);
    v8 = *(v7 + 8);
    v9 = sub_F11EC();
    v11 = v10;
    sub_1EDC(v0 + 2);
    v12 = sub_3E850(v9, v11, &v20);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_0, v3, v4, "No operation with ID %{private,mask.hash}s is being tracked, starting a new one", v5, 0x16u);
    sub_1EDC(v6);
  }

  else
  {

    sub_1EDC(v0 + 2);
  }

  v19 = (v0[8] + *v0[8]);
  v13 = *(v0[8] + 4);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_169F4;
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];

  return v19(v16, v15);
}

uint64_t sub_169F4()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[13];

    return _swift_task_switch(sub_16B28, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_16B28()
{
  v1 = v0[15];
  swift_errorRetain();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_16BEC;
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return (sub_E10D8)(v5, v3, v1, 1);
}

uint64_t sub_16BEC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_16D18, v3, 0);
}

uint64_t sub_16D18()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_16D78()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_16EB8;
  }

  else
  {
    v6 = *(v2 + 48);
    sub_1EDC((v2 + 16));
    v5 = sub_16EA0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_16ED0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_16FC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17C30;

  return sub_C7288(v0);
}

uint64_t sub_17090()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_170D0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17198;

  return sub_DEF50(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_17198()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1728C()
{
  sub_1EDC(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_172DC()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17C34;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_173A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_173D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_17400()
{
  sub_C8238(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1746C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1EDC((v0 + 16));
  }

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_174CC()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_17554()
{
  v1 = *(v0 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = sub_F0A9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_17604(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v4 = *(sub_F0A9C() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_C6840(a1, v5, v3);
}

uint64_t sub_176B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  v5 = sub_37474(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, a1, v4);
}

uint64_t sub_17720()
{
  v1 = *(v0 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v4);
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  v7 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_17850()
{
  v1 = *(v0 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_C60AC(v0 + v3, v5, v6, v1);
}

uint64_t sub_17914(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17C38;

  return sub_3E5DC(a1, v5);
}

uint64_t sub_179CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17A84;

  return sub_3E5DC(a1, v5);
}

uint64_t sub_17A84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_17B78()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1EDC((v0 + 16));
  }

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_17BD8()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17C58(void *a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3C96C(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_F044C();
  (*(v5 + 8))(v8, v4);
  return v11[15];
}

uint64_t sub_17DA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v18 - v7);
  sub_5BD2C(a1, v23);
  if ((v24[58] & 1) == 0)
  {
    return sub_5EFF4(v23);
  }

  v25 = a2;
  v9 = v23[1];
  v10 = v23[3];
  v20 = type metadata accessor for RCSMessage(0);
  if (*(a1 + *(v20 + 44)) == 1)
  {

    sub_5BD88(v24);
  }

  else
  {
    v19 = v23[2];
    v21 = v23[0];
    v22 = v9;

    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    sub_F08CC(v26);
    v27._countAndFlagsBits = v19;
    v27._object = v10;
    sub_F08CC(v27);

    v12 = sub_F07BC();

    v13 = [v12 __im_isChatBot];

    result = sub_5BD88(v24);
    if (!v13)
    {
      return result;
    }
  }

  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  type metadata accessor for RCSRichCards();
  v16 = swift_allocObject();
  *(v16 + 16) = v25(v2, v14, v15);
  *v8 = v16;
  v17 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  return sub_C9724(v8, a1 + *(v20 + 32));
}

uint64_t sub_1800C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18100()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(**(v0 + 16) + 104);
  sub_F0B9C();
  sub_F0B6C();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_181E0;
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_181E0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_182DC, 0, 0);
}

uint64_t sub_182DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    v5 = v0[7];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v3 + 32))(v0[10], v1, v2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v0[10];
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v0[2];
      v11 = *v9;
      v12 = v9[1];
      v0[18] = v12;
      v13 = v9[2];
      v14 = swift_task_alloc();
      v0[19] = v14;
      v14[2] = v10;
      v14[3] = v13;
      v14[4] = v11;
      v14[5] = v12;
      v15 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v16 = swift_task_alloc();
      v0[20] = v16;
      *v16 = v0;
      v16[1] = sub_187DC;

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    else
    {
      v17 = v0[7];
      v18 = v0[5];
      v28 = v0[4];
      v19 = v0[2];
      (*(v0[6] + 32))(v17, v9, v18);
      v0[16] = swift_unknownObjectUnownedLoadStrong();
      v20 = *(v18 + 36);
      v21 = *(v28 + 24);
      v27 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      v0[17] = v23;
      *v23 = v0;
      v23[1] = sub_18608;
      v24 = v0[7];
      v25 = v0[3];
      v26 = v0[4];

      return v27(v24, v17 + v20, v25, v26);
    }
  }
}

uint64_t sub_18608()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_18720, 0, 0);
}

uint64_t sub_18720()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_181E0;
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_187DC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_188F4, 0, 0);
}

uint64_t sub_188F4()
{
  v1 = v0[18];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_181E0;
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_189B0()
{
  v1 = sub_388C8(&qword_129F98, &qword_F62E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_18A80()
{
  v1 = *(*(sub_388C8(&qword_129F98, &qword_F62E8) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_CB4E4(v3);
}

uint64_t sub_18AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18B58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18B98(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_CA784(a1, v1[4]);
}

uint64_t sub_18BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3CB70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18C40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18C80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18D34;

  return sub_CA88C();
}

uint64_t sub_18D34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_18E30()
{
  v43 = v0;
  v1 = [*(v0 + 16) fileTransferGUIDs];
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  v3 = sub_F09FC();

  if (!v3[2])
  {
    v20 = *(v0 + 64);

    goto LABEL_11;
  }

  v4 = *(v0 + 16);
  v6 = v3[4];
  v5 = v3[5];

  v7 = [v4 fileTransferGUIDs];
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v7;
  v9 = *(v0 + 64);

  v10 = sub_F09FC();

  v11 = *(v10 + 16);

  if (v11 != 1)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  swift_unknownObjectUnownedLoadStrong();
  v14 = (*(*(v13 + 88) + 56))(v6, v5, *(v13 + 80));

  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_12:
    v21 = *(v0 + 16);
    sub_CCD3C(*(v0 + 56));
    v22 = v21;
    v23 = sub_F06AC();
    v24 = sub_F0CDC();
    if (!os_log_type_enabled(v23, v24))
    {
      v36 = *(v0 + 48);
      v35 = *(v0 + 56);
      v37 = *(v0 + 40);

      (*(v36 + 8))(v35, v37);
      goto LABEL_16;
    }

    v25 = *(v0 + 16);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v26 = 136315138;
    v28 = [v25 guid];

    if (v28)
    {
      v29 = *(v0 + 48);
      v41 = *(v0 + 56);
      v30 = *(v0 + 40);
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v42);

      *(v26 + 4) = v34;
      _os_log_impl(&dword_0, v23, v24, "%s does not look like a current location message", v26, 0xCu);
      sub_1EDC(v27);

      (*(v29 + 8))(v41, v30);
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v15 = [v14 type];
  if (!v15)
  {
LABEL_21:

    goto LABEL_12;
  }

  v16 = v15;
  v17 = sub_F07EC();
  v19 = v18;

  if (v17 != 0xD000000000000010 || 0x8000000000100700 != v19)
  {
    v40 = sub_F122C();

    if (v40)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

LABEL_17:
  v38 = *(v0 + 56);

  v39 = *(v0 + 8);

  v39(v14);
}

uint64_t sub_191C4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_192DC, v3, 0);
}

uint64_t sub_192DC()
{
  if (*(v0 + 48))
  {
    sub_F0AEC();
    *(v0 + 56) = sub_F0ADC();
    v2 = sub_F0A6C();

    return _swift_task_switch(sub_194C8, v2, v1);
  }

  v3 = [*(v0 + 16) balloonBundleID];
  if (!v3)
  {
    sub_F07EC();
    goto LABEL_14;
  }

  v4 = v3;
  v5 = sub_F07EC();
  v7 = v6;

  v8 = sub_F07EC();
  if (!v7)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_21;
  }

  v11 = sub_F122C();

  if ((v11 & 1) == 0)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

LABEL_21:
  v12 = [*(v0 + 16) body];
  if (v12)
  {
    v15 = v12;
    v16 = [v12 string];

    v17 = sub_F07EC();
    v19 = v18;

    v13 = v19;
    v12 = v17;
    goto LABEL_17;
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  v14 = *(v0 + 8);

  return v14(v12, v13);
}

uint64_t sub_194C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  v0[8] = sub_CD4F0(v2);
  v0[9] = v5;

  return _swift_task_switch(sub_19548, v3, 0);
}

uint64_t sub_19548()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_195AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return _swift_task_switch(sub_196F0, v5, 0);
}

uint64_t sub_196F0()
{
  if (!*(v0 + 128))
  {
    v5 = 0;
    goto LABEL_22;
  }

  v1 = (v0 + 136);
  v2 = *(v0 + 120);
  *(v0 + 136) = 0;
  v3 = objc_opt_self();
  v4 = sub_F07BC();
  v5 = [v3 vCardCoordinateForMapURL:v4 outLatitude:v0 + 136 outLongitude:v0 + 140];

  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = sub_F07BC();
  v7 = sub_F07BC();
  v8 = IMGetDomainValueForKey();

  if (v8)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  *(v0 + 16) = v25;
  *(v0 + 32) = v26;
  if (*(v0 + 40))
  {
    sub_37310(0, &qword_128050, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 88);
      [v9 floatValue];
      v11 = v10;

      goto LABEL_13;
    }
  }

  else
  {
    sub_372B0(v0 + 16, &unk_127FB0, &qword_F2F40);
  }

  v11 = *v1;
LABEL_13:
  *v1 = v11;
  v12 = sub_F07BC();
  v13 = sub_F07BC();
  v14 = IMGetDomainValueForKey();

  if (v14)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  *(v0 + 48) = v25;
  *(v0 + 64) = v26;
  if (!*(v0 + 72))
  {
    sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
    goto LABEL_20;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v17 = *(v0 + 140);
    goto LABEL_21;
  }

  v15 = *(v0 + 80);
  [v15 floatValue];
  v17 = v16;

LABEL_21:
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 96);
  *(v0 + 140) = v17;
  v21 = v20 + *(type metadata accessor for RCSMessage(0) + 32);
  sub_372B0(v21, &unk_127FA0, &qword_F34C0);
  *v21 = vcvtq_f64_f32(*(v0 + 136));
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  *(v21 + 32) = 0;
  v22 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
LABEL_22:
  v23 = *(v0 + 8);

  return v23(v5);
}

uint64_t sub_19AB8()
{
  v99 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_E9318(_swiftEmptyArrayStorage);
  v4 = type metadata accessor for RCSMessage(0);
  *(v0 + 128) = v4;
  v5 = v1 + *(v4 + 40);
  RCSMessageMetadata.merge(with:)(v3);

  v6 = sub_E9B84(v2);
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 16);
    v9 = *(v4 + 32);
    sub_372B0(v8 + v9, &unk_127FA0, &qword_F34C0);
    type metadata accessor for RCSSuggestedReply();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v8 + v9) = v10;
    v11 = type metadata accessor for RCSMessage.Content(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v15 = 1;
    (*(*(v11 - 8) + 56))(v8 + v9, 0, 1, v11);
LABEL_8:
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22(v15);
  }

  v12 = sub_E9B98(*(v0 + 24));
  if (v12)
  {
    v13 = v12;
    v8 = *(v0 + 16);
    v9 = *(v4 + 32);
    sub_372B0(v8 + v9, &unk_127FA0, &qword_F34C0);
    type metadata accessor for RCSSuggestedAction();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v8 + v9) = v14;
    v11 = type metadata accessor for RCSMessage.Content(0);
    goto LABEL_7;
  }

  if ([*(v0 + 24) isDeviceActionMessage])
  {
    v8 = *(v0 + 16);
    v9 = *(v4 + 32);
    sub_372B0(v8 + v9, &unk_127FA0, &qword_F34C0);
    v11 = type metadata accessor for RCSMessage.Content(0);
    goto LABEL_7;
  }

  if ([*(v0 + 24) isTypingMessage])
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 16);
    *v24 = [*(v0 + 24) isFinished] ^ 1;
    v26 = type metadata accessor for RCSMessage.Content(0);
    swift_storeEnumTagMultiPayload();
    v15 = 1;
    (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
    sub_C9724(v24, v25 + *(v4 + 32));
    goto LABEL_8;
  }

  if ([*(v0 + 24) sendAlternateLayoutAsText])
  {
    v27 = [*(v0 + 24) payloadData];
    if (v27)
    {
      v28 = v27;
      v29 = sub_F025C();
      v31 = v30;

      v32 = sub_F024C();
      sub_5F048(v29, v31);
    }

    else
    {
      v32 = 0;
    }

    v33 = IMBalloonPluginFallbackText();

    if (v33)
    {
      v34 = *(v0 + 104);
      v35 = sub_F07EC();
      v37 = v36;

      sub_CCD3C(v34);
      v38 = sub_F06AC();
      v39 = sub_F0CCC();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 104);
      v43 = *(v0 + 56);
      v42 = *(v0 + 64);
      if (v40)
      {
        v96 = v37;
        v44 = v35;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v98 = v46;
        *v45 = 136446210;
        *(v45 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v98);
        _os_log_impl(&dword_0, v38, v39, "%{public}s populated RCSMessage with alternate layout fallback text content", v45, 0xCu);
        sub_1EDC(v46);

        v35 = v44;
        v37 = v96;
      }

      (*(v42 + 8))(v41, v43);
      v47 = (*(v0 + 16) + *(v4 + 32));
      sub_372B0(v47, &unk_127FA0, &qword_F34C0);
      *v47 = v35;
      v47[1] = v37;
LABEL_30:
      v47[2] = 0;
      v73 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v15 = 1;
      (*(*(v73 - 8) + 56))(v47, 0, 1, v73);
      goto LABEL_8;
    }
  }

  v48 = [*(v0 + 24) fileTransferGUIDs];
  if (!v48)
  {
LABEL_27:
    v55 = *(v0 + 40);
    v56 = *(v0 + 48);
    v57 = *(v0 + 24);
    v58 = sub_F01EC();
    v59 = *(v58 - 8);
    v60 = *(v59 + 64) + 15;
    v61 = swift_task_alloc();
    v62 = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64) + 15;
    v63 = swift_task_alloc();
    swift_unknownObjectUnownedLoadStrong();
    (*(*(v56 + 88) + 80))(v57, *(v56 + 80));
    swift_unknownObjectRelease();
    if ((*(v59 + 48))(v63, 1, v58) != 1)
    {
      v74 = *(v0 + 128);
      v75 = *(v0 + 112);
      v76 = *(v0 + 16);
      (*(v59 + 32))(v61, v63, v58);

      v77 = sub_F017C();
      v79 = v78;
      (*(v59 + 8))(v61, v58);
      *v75 = v77;
      v75[1] = v79;
      v75[2] = 0;
      v80 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v15 = 1;
      (*(*(v80 - 8) + 56))(v75, 0, 1, v80);
      sub_C9724(v75, v76 + *(v74 + 32));

      goto LABEL_8;
    }

    v64 = *(v0 + 24);
    sub_372B0(v63, &qword_128320, &qword_F34B0);

    v65 = [v64 body];
    if (!v65)
    {
      v81 = *(v0 + 24);
      sub_CCD3C(*(v0 + 80));
      v82 = v81;
      v83 = sub_F06AC();
      v84 = sub_F0CFC();

      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 80);
      v88 = *(v0 + 56);
      v87 = *(v0 + 64);
      if (v85)
      {
        v89 = *(v0 + 24);
        v97 = *(v0 + 80);
        v90 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v90 = 136446466;
        *(v90 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v98);
        *(v90 + 12) = 2080;
        v91 = [v89 debugDescription];
        v92 = sub_F07EC();
        v94 = v93;

        v95 = sub_3E850(v92, v94, &v98);

        *(v90 + 14) = v95;
        _os_log_impl(&dword_0, v83, v84, "%{public}s asked to convert unknown message type to RCS: %s", v90, 0x16u);
        swift_arrayDestroy();

        (*(v87 + 8))(v97, v88);
      }

      else
      {

        (*(v87 + 8))(v86, v88);
      }

      v15 = 0;
      goto LABEL_8;
    }

    v66 = *(v0 + 128);
    v67 = *(v0 + 16);
    v68 = v65;
    v69 = [v65 string];

    v70 = sub_F07EC();
    v72 = v71;

    v47 = (v67 + *(v66 + 32));
    sub_372B0(v47, &unk_127FA0, &qword_F34C0);
    *v47 = v70;
    v47[1] = v72;
    goto LABEL_30;
  }

  v49 = v48;
  v50 = sub_F09FC();
  *(v0 + 136) = v50;

  if (!*(v50 + 16))
  {

    goto LABEL_27;
  }

  v51 = swift_task_alloc();
  *(v0 + 144) = v51;
  *v51 = v0;
  v51[1] = sub_1A488;
  v52 = *(v0 + 40);
  v54 = *(v0 + 16);
  v53 = *(v0 + 24);

  return sub_CDD5C(v54, v53);
}

uint64_t sub_1A488(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1A5A0, v3, 0);
}

uint64_t sub_1A5A0()
{
  v52 = v0;
  v1 = *(v0 + 136);
  if (*(v0 + 200) == 1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 136);

    sub_CCD3C(v2);
    v4 = sub_F06AC();
    v5 = sub_F0CCC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v51 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v51);
      _os_log_impl(&dword_0, v4, v5, "%{public}s populated RCSMessage with geolocation content", v10, 0xCu);
      sub_1EDC(v11);
    }

    (*(v9 + 8))(v7, v8);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18(1);
  }

  else
  {
    v20 = *(v0 + 24);
    sub_CCD3C(*(v0 + 88));

    v21 = v20;
    v22 = sub_F06AC();
    v23 = sub_F0CCC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 136);
      v25 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v25 = 136446722;
      result = sub_3E850(0xD000000000000023, 0x8000000000100680, &v51);
      *(v25 + 4) = result;
      *(v25 + 12) = 2080;
      if (!*(v24 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 64);
      v49 = *(v0 + 56);
      v50 = *(v0 + 88);
      v28 = *(v0 + 24);
      v29 = *(v26 + 32);
      v30 = *(v26 + 40);

      v31 = sub_3E850(v29, v30, &v51);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      v32 = [v28 isAudioMessage];
      v33 = v32 == 0;
      if (v32)
      {
        v34 = 7562617;
      }

      else
      {
        v34 = 28526;
      }

      if (v33)
      {
        v35 = 0xE200000000000000;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_3E850(v34, v35, &v51);

      *(v25 + 24) = v36;
      _os_log_impl(&dword_0, v22, v23, "%{public}s Sending attachment %s, isAudioMessage: %s", v25, 0x20u);
      swift_arrayDestroy();

      v37 = *(v27 + 8);
      v37(v50, v49);
    }

    else
    {
      v38 = *(v0 + 88);
      v39 = *(v0 + 56);
      v40 = *(v0 + 64);

      v37 = *(v40 + 8);
      v37(v38, v39);
    }

    *(v0 + 152) = v37;
    v41 = *(v0 + 24);
    v42 = [v41 isAudioMessage];
    v43 = [v41 encrypted];
    v44 = swift_task_alloc();
    *(v0 + 160) = v44;
    *v44 = v0;
    v44[1] = sub_1AA00;
    v45 = *(v0 + 136);
    v46 = *(v0 + 32);
    v47 = *(v0 + 40);
    v48 = *(v0 + 16);

    return sub_DE2FC(v48, v42, v43, v45, v46);
  }
}

uint64_t sub_1AA00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 136);
  v7 = *v2;
  *(v4 + 168) = v1;

  v8 = *(v4 + 120);
  if (v1)
  {
    v9 = sub_1B084;
  }

  else
  {
    *(v4 + 201) = a1 & 1;
    v9 = sub_1AB5C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1AB5C()
{
  v54 = v0;
  if (*(v0 + 201))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = sub_F01EC();
    v6 = *(v5 - 8);
    v7 = *(v6 + 64) + 15;
    v8 = swift_task_alloc();
    v9 = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64) + 15;
    v10 = swift_task_alloc();
    swift_unknownObjectUnownedLoadStrong();
    (*(*(v3 + 88) + 80))(v4, *(v3 + 80));
    swift_unknownObjectRelease();
    if ((*(v6 + 48))(v10, 1, v5) == 1)
    {
      v11 = *(v0 + 24);
      sub_372B0(v10, &qword_128320, &qword_F34B0);

      v12 = [v11 body];
      if (v12)
      {
        v13 = *(v0 + 128);
        v14 = *(v0 + 16);
        v15 = v12;
        v16 = [v12 string];

        v17 = sub_F07EC();
        v19 = v18;

        v20 = (v14 + *(v13 + 32));
        sub_372B0(v20, &unk_127FA0, &qword_F34C0);
        *v20 = v17;
        v20[1] = v19;
        v20[2] = 0;
        v21 = type metadata accessor for RCSMessage.Content(0);
        swift_storeEnumTagMultiPayload();
        v1 = 1;
        (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
      }

      else
      {
        v29 = *(v0 + 24);
        sub_CCD3C(*(v0 + 80));
        v30 = v29;
        v31 = sub_F06AC();
        v32 = sub_F0CFC();

        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 80);
        v36 = *(v0 + 56);
        v35 = *(v0 + 64);
        if (v33)
        {
          v37 = *(v0 + 24);
          v52 = *(v0 + 80);
          v38 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v38 = 136446466;
          *(v38 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v53);
          *(v38 + 12) = 2080;
          v39 = [v37 debugDescription];
          v40 = sub_F07EC();
          v42 = v41;

          v43 = sub_3E850(v40, v42, &v53);

          *(v38 + 14) = v43;
          _os_log_impl(&dword_0, v31, v32, "%{public}s asked to convert unknown message type to RCS: %s", v38, 0x16u);
          swift_arrayDestroy();

          (*(v35 + 8))(v52, v36);
        }

        else
        {

          (*(v35 + 8))(v34, v36);
        }

        v1 = 0;
      }
    }

    else
    {
      v22 = *(v0 + 128);
      v23 = *(v0 + 112);
      v24 = *(v0 + 16);
      (*(v6 + 32))(v8, v10, v5);

      v25 = sub_F017C();
      v27 = v26;
      (*(v6 + 8))(v8, v5);
      *v23 = v25;
      v23[1] = v27;
      v23[2] = 0;
      v28 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v1 = 1;
      (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
      sub_C9724(v23, v24 + *(v22 + 32));
    }
  }

  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v47 = *(v0 + 88);
  v46 = *(v0 + 96);
  v49 = *(v0 + 72);
  v48 = *(v0 + 80);

  v50 = *(v0 + 8);

  return v50(v1);
}

uint64_t sub_1B084()
{
  sub_CCD3C(v0[9]);
  v1 = sub_F06AC();
  v2 = sub_F0CEC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to process attachments for message", v3, 2u);
  }

  v4 = v0[19];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[3];

  v4(v5, v7);
  sub_F0AEC();
  v9 = v8;
  v0[22] = sub_F0ADC();
  v11 = sub_F0A6C();

  return _swift_task_switch(sub_1B1CC, v11, v10);
}

uint64_t sub_1B1CC()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[2];

  v0[23] = RCSMessage.SenderInfo.description.getter();
  v0[24] = v4;

  return _swift_task_switch(sub_1B244, v2, 0);
}

uint64_t sub_1B244()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[21] | 0x8000000000000000;
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  type metadata accessor for RCSMessageCreator.MessageCreationError();
  swift_getWitnessTable();
  swift_allocError();
  *v11 = v7;
  v11[1] = v1;
  v11[2] = v2;
  v11[3] = v8;
  swift_willThrow();

  v12 = v0[1];

  return v12(0);
}