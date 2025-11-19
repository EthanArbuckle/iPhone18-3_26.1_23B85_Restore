uint64_t sub_12F0()
{
  v0 = sub_3A34();
  sub_37BC(v0, qword_C430);
  sub_33DC(v0, qword_C430);
  return sub_3A24();
}

uint64_t sub_1370()
{
  v1 = OBJC_IVAR____TtC35GenerativePartnerSettingsExperience12ParamsHolder_deepLinkParams;
  v2 = sub_39D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ParamsHolder()
{
  result = qword_C318;
  if (!qword_C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1460()
{
  result = sub_39D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1528()
{
  result = qword_C2A0;
  if (!qword_C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A0);
  }

  return result;
}

uint64_t sub_1598()
{
  v0 = sub_2320(&qword_C2A8, &qword_3EB0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  sub_39B4();
  sub_36C8(&qword_C2B0, &type metadata accessor for GenerativePartnerSettingsPanelView);

  sub_3AA4();
  sub_38B8();
  sub_3680(v5, &qword_C2A8, &qword_3EB0);

  sub_3A54();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_3A44();
  v3[8] = v4;
  sub_38D0(v4);
  v3[9] = v5;
  v7 = *(v6 + 64);
  v3[10] = sub_38E0();
  v8 = *(*(sub_39D4() - 8) + 64);
  v3[11] = sub_38E0();
  v9 = sub_3944();
  v3[12] = v9;
  sub_38D0(v9);
  v3[13] = v10;
  v12 = *(v11 + 64);
  v3[14] = sub_38E0();
  v13 = sub_3A84();
  v3[15] = v13;
  sub_38D0(v13);
  v3[16] = v14;
  v16 = *(v15 + 64);
  v3[17] = sub_38E0();
  v17 = sub_3994();
  v3[18] = v17;
  sub_38D0(v17);
  v3[19] = v18;
  v20 = *(v19 + 64);
  v3[20] = sub_38E0();
  v21 = *(*(sub_2320(&qword_C2C0, &qword_3EC8) - 8) + 64);
  v3[21] = sub_38E0();
  sub_3B14();
  v3[22] = sub_3B04();
  v23 = sub_3AF4();

  return _swift_task_switch(sub_1964, v23, v22);
}

uint64_t sub_1964()
{
  v114 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[6];

  sub_3A74();
  sub_3964();
  v102 = *(v4 + 8);
  v102(v3, v5);
  v7 = sub_3974();
  if (sub_334C(v2, 1, v7) == 1)
  {
    sub_3374(v0[21]);
  }

  else
  {
    v8 = sub_3954();
    v9 = *(*(v7 - 8) + 8);
    v10 = sub_38F8();
    v11(v10);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_5:
  v103 = v8;
  if (qword_C310 != -1)
  {
LABEL_47:
    swift_once();
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  v15 = v0[6];
  v16 = sub_3A34();
  sub_33DC(v16, qword_C430);
  (*(v13 + 16))(v12, v15, v14);
  v17 = v103;

  v18 = sub_3A14();
  v19 = sub_3B24();

  v111 = v0;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[20];
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[16];
    v104 = v0[15];
    v106 = v0[12];
    v24 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v24 = 136315394;
    sub_3A74();
    sub_36C8(&qword_C2E0, &type metadata accessor for URL);
    v25 = sub_3B74();
    v27 = v26;
    v102(v20, v21);
    (*(v23 + 8))(v22, v104);
    v28 = sub_2B30(v25, v27, v113);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_3AE4();
    v31 = sub_2B30(v29, v30, v113);

    *(v24 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "[GenerativePartnerSettingsExperience] onSettingsExperienceOpenURL url: %s, queryItems: %s", v24, 0x16u);
    swift_arrayDestroy();

    v17 = v103;
  }

  else
  {
    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[15];

    v35 = *(v33 + 8);
    v36 = sub_38F8();
    v37(v36);
  }

  v109 = v17[2];
  if (v109)
  {
    v38 = 0;
    v105 = v17 + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80));
    v39 = &_swiftEmptyDictionarySingleton;
    v107 = v0[13];
    while (1)
    {
      if (v38 >= v17[2])
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      (*(v107 + 16))(v0[14], v105 + *(v107 + 72) * v38, v0[12]);
      v40 = sub_3924();
      v42 = v41;
      v0 = sub_3934();
      v44 = v43;
      v45 = *(v107 + 8);
      v46 = sub_38F8();
      v47(v46);
      if (v44)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v39;
        v48 = sub_3180(v40, v42);
        if (__OFADD__(v39[2], (v49 & 1) == 0))
        {
          goto LABEL_45;
        }

        v50 = v48;
        v51 = v49;
        sub_2320(&qword_C2D8, &qword_3ED8);
        if (sub_3904())
        {
          v52 = sub_3180(v40, v42);
          if ((v51 & 1) != (v53 & 1))
          {

            return sub_3B94();
          }

          v50 = v52;
        }

        if (v51)
        {

          v39 = v113[0];
          v54 = (*(v113[0] + 56) + 16 * v50);
          v55 = v54[1];
          *v54 = v0;
          v54[1] = v44;
        }

        else
        {
          v39 = v113[0];
          *(v113[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
          v62 = (v39[6] + 16 * v50);
          *v62 = v40;
          v62[1] = v42;
          v63 = (v39[7] + 16 * v50);
          *v63 = v0;
          v63[1] = v44;
          v64 = v39[2];
          v65 = __OFADD__(v64, 1);
          v66 = v64 + 1;
          if (v65)
          {
            goto LABEL_46;
          }

          v39[2] = v66;
        }

        v0 = v111;
        v17 = v103;
      }

      else
      {
        v56 = sub_3180(v40, v42);
        v58 = v57;

        if (v58)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v39;
          v59 = v39[3];
          sub_2320(&qword_C2D8, &qword_3ED8);
          sub_3904();
          v39 = v113[0];
          v60 = *(*(v113[0] + 48) + 16 * v56 + 8);

          v61 = *(v39[7] + 16 * v56 + 8);

          sub_3B64();
        }

        v0 = v111;
      }

      if (v109 == ++v38)
      {
        goto LABEL_28;
      }
    }
  }

  v39 = &_swiftEmptyDictionarySingleton;
LABEL_28:
  v67 = v0[20];
  v68 = v0[18];
  v69 = v0[6];

  sub_3A74();
  v70 = sub_3984();
  v102(v67, v68);
  v0[2] = 0x6C616E7265747845;
  v0[3] = 0xEF6C65646F4D4941;
  v71 = swift_task_alloc();
  *(v71 + 16) = v0 + 2;
  v73 = sub_25D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_3660, v71, v70, v72);

  sub_2220(1, v73);
  v75 = v74;
  v113[0] = &_swiftEmptyArrayStorage;
  v77 = v76 >> 1;
  v79 = (v78 + 32 * v74 + 16);
  while (v77 != v75)
  {
    if (v75 >= v77)
    {
      __break(1u);
      goto LABEL_44;
    }

    ++v75;
    v81 = *v79;
    v80 = v79[1];
    v82 = *(v79 - 2);
    v83 = *(v79 - 1);
    v84 = swift_unknownObjectRetain();
    sub_30A0(v84, v83, v81, v80);
    v79 += 4;
  }

  swift_unknownObjectRelease();
  v0[4] = v113[0];
  v85 = sub_38F8();
  sub_2320(v85, v86);
  sub_3680(&qword_C2D0, &qword_C2C8, &qword_3ED0);
  v87 = sub_3AB4();
  v89 = v88;

  v90 = HIBYTE(v89) & 0xF;
  if ((v89 & 0x2000000000000000) == 0)
  {
    v90 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v90)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113[0] = v39;
    sub_31F8(v87, v89, 1752457584, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  v92 = v0[21];
  v108 = v0[20];
  v110 = v0[17];
  v112 = v0[14];
  v94 = v0[10];
  v93 = v0[11];
  v96 = v0[8];
  v95 = v0[9];
  v98 = v0[6];
  v97 = v0[7];
  v99 = v0[5];
  sub_39E4();
  sub_39C4();
  sub_3A64();
  sub_3A94();
  (*(v95 + 8))(v94, v96);

  v100 = v0[1];

  return v100();
}

uint64_t sub_2220(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_35E8(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_357C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B8()
{
  v0 = sub_3A04();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_39F4();
}

uint64_t sub_22F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B8();
  *a1 = result;
  return result;
}

uint64_t sub_2320(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2368()
{

  return GenerativePartnerSettingsPanelView.init(viewModel:)(v0);
}

uint64_t sub_23A4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2450;

  return sub_1744(a1, a2, v2);
}

uint64_t sub_2450()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2544(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_3B84() & 1;
  }
}

void *sub_25D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v39 = a3;
  if (a1 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = a5;
  v15 = *(a5 + 16);
  if (!a1 || !v15)
  {
    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v6 = sub_357C(0, v15, a5);
    v10 = v24;
    v11 = v25;
    v12 = v26;

    v13 = sub_2A00(0, 1, 1, &_swiftEmptyArrayStorage);
    v8 = v13[2];
    a6 = v13[3];
LABEL_35:
    v9 = v8 + 1;
    if (v8 < a6 >> 1)
    {
LABEL_36:
      v13[2] = v9;
      v30 = &v13[4 * v8];
      v30[4] = v6;
      v30[5] = v10;
      v30[6] = v11;
      v30[7] = v12;
      return v13;
    }

LABEL_40:
    v13 = sub_2A00((a6 > 1), v9, 1, v13);
    goto LABEL_36;
  }

  v6 = a4;
  v35 = a2;
  v12 = 0;
  v31 = a5 + 32;
  v16 = -v15;
  v13 = &_swiftEmptyArrayStorage;
  v33 = -v15;
  v34 = *(a5 + 16);
  while (1)
  {
    v37 = v13;
    v10 = 2 * v12;
    while (2)
    {
      v17 = 0;
      v13 = (v16 + v12);
      v36 = v10;
      while (1)
      {
        if (!(v13 + v17))
        {
          v13 = v37;
          v23 = v34;
          goto LABEL_28;
        }

        a6 = v12 + v17;
        if ((v12 + v17) >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v18 = v9 + 8 * v10;
        v11 = *(v18 + 40);
        v38[0] = *(v18 + 32);
        v38[1] = v11;

        v19 = v39(v38);
        if (v7)
        {

          return v13;
        }

        v8 = v19;

        if (v8)
        {
          break;
        }

        ++v17;
        v10 += 2;
      }

      if (!v17 && (v35 & 1) != 0)
      {
        ++v12;
        v10 = v36 + 2;
        v16 = v33;
        continue;
      }

      break;
    }

    if (v12 < 0)
    {
      break;
    }

    v13 = v37;
    if (*(v9 + 16) < (v12 + v17))
    {
      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2A00(0, v37[2] + 1, 1, v37);
    }

    v8 = v13[2];
    v21 = v13[3];
    v11 = v8 + 1;
    if (v8 >= v21 >> 1)
    {
      v13 = sub_2A00((v21 > 1), v8 + 1, 1, v13);
    }

    v13[2] = v11;
    v22 = &v13[4 * v8];
    v22[4] = v9;
    v22[5] = v31;
    v22[6] = v12;
    v22[7] = v10 + 1;
    v12 += v17 + 1;
    v16 = v33;
    v23 = v34;
    if (v11 == a1)
    {
LABEL_28:
      if (v12 == v23 && (v35 & 1) != 0)
      {

        return v13;
      }

      if (v23 < v12)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_357C(v12, v23, v9);
        v10 = v27;
        v11 = v28;
        v12 = v29;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v8 = v13[2];
          a6 = v13[3];
          goto LABEL_35;
        }
      }

      v13 = sub_2A00(0, v13[2] + 1, 1, v13);
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_28F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2320(&qword_C2F0, &qword_3EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2A00(void *result, int64_t a2, char a3, void *a4)
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
    sub_2320(&qword_C2F8, &qword_3EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2320(&unk_C300, &qword_3EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2B30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2BF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_375C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3710(v11);
  return v7;
}

unint64_t sub_2BF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2CF4(a5, a6);
    *a1 = v9;
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
    result = sub_3B44();
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

void *sub_2CF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2D40(a1, a2);
  sub_2E58(&off_8400);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_2D40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_3AD4())
  {
    result = sub_2F3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_3B34();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_3B44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2E58(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2FAC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2F3C(uint64_t a1, uint64_t a2)
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

  sub_2320(&qword_C2E8, &qword_3EE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2320(&qword_C2E8, &qword_3EE0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_30A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_3514(v7 + v6, 1);
  v9 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v9;
      return;
    }

    __break(1u);
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, v6);
  v12 = v10 + v6;
  if (!v11)
  {
    *(v9 + 16) = v12;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

unint64_t sub_3180(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_3BA4();
  sub_3AC4();
  v6 = sub_3BB4();

  return sub_3460(a1, a2, v6);
}

uint64_t sub_31F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3180(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_2320(&qword_C2D8, &qword_3ED8);
  if (!sub_3B54(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_3180(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_3B94();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_3414(v18, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_3374(uint64_t a1)
{
  v2 = sub_2320(&qword_C2C0, &qword_3EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_33DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_3414(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_3460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_3B84() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_3514(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_28F8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t sub_357C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_35E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_3680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2544(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_36C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3710(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_375C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_37BC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_3830()
{
  sub_2544(&qword_C2A8, &qword_3EB0);
  sub_38B8();
  sub_3680(v0, &qword_C2A8, &qword_3EB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_38E0()
{

  return swift_task_alloc();
}

BOOL sub_3904()
{

  return sub_3B54(v0, v1);
}