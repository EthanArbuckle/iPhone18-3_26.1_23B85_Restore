uint64_t sub_1FA8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox);
  sub_39C38();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_2058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox);
  sub_39C38();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2104(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2144(v2, v3);
}

uint64_t sub_2144(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_3AB28())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox);
    sub_39C28();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_22B4()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC19MobileStoreSettings19AuthKitContextIDBox___observationRegistrar;
  v3 = sub_39C58();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_2368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3EA0(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_3A7E8();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_3F08(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_3EA0(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_3A7E8();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_3F08(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  sub_3CB4(&qword_51DC0, &qword_3DA50);
  sub_3A508();
  sub_1B238(v13, v14, v15, v16, v12);
}

uint64_t sub_257C@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  swift_getKeyPath();
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox);
  sub_39C38();

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = a1[1];
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a4;

  sub_2144(v5, v6);
}

uint64_t sub_2758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_39B08();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_39BF8();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_3CB4(&unk_51DA0, &qword_3BF80) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = sub_39FE8();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = sub_3A7F8();
  v3[19] = sub_3A7E8();
  v15 = sub_3A798();

  return _swift_task_switch(sub_2968, v15, v14);
}

uint64_t sub_2968()
{
  v79 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 24);

  sub_3A5F8();
  sub_3A608();
  sub_39B28();
  v72 = *(v6 + 8);
  v72(v5, v7);
  sub_4390(v3, v4);
  v9 = sub_39B38();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v4, 1, v9);
  v12 = *(v0 + 104);
  if (v11 == 1)
  {
    sub_4400(*(v0 + 104));
    goto LABEL_34;
  }

  v13 = sub_39B18();
  result = (*(v10 + 8))(v12, v9);
  if (!v13)
  {
LABEL_34:
    v37 = *(v0 + 96);
    v38 = *(v0 + 80);
    v39 = *(v0 + 24);
    sub_3A608();
    v40 = sub_39BA8();
    v42 = v41;
    v72(v37, v38);
    v43._rawValue = &off_4D8B8;
    v81._countAndFlagsBits = v40;
    v81._object = v42;
    v44 = sub_3AB08(v43, v81);

    if (v44)
    {
      if (v44 != 1)
      {
        goto LABEL_39;
      }

      v45 = 1;
    }

    else
    {
      v45 = 0;
    }

    v46 = *(v0 + 136);
    *(v0 + 160) = v45;
    sub_4468();
    sub_39FD8();
LABEL_39:
    v47 = *(v0 + 136);
    v48 = *(v0 + 16);
LABEL_40:
    sub_3A618();
    v50 = *(v0 + 128);
    v49 = *(v0 + 136);
    v51 = *(v0 + 120);
    v53 = *(v0 + 96);
    v52 = *(v0 + 104);
    v55 = *(v0 + 64);
    v54 = *(v0 + 72);
    v56 = *(v0 + 56);
    sub_4400(*(v0 + 112));
    (*(v50 + 8))(v49, v51);

    v57 = *(v0 + 8);

    return v57();
  }

  v76 = *(v13 + 16);
  if (!v76)
  {
LABEL_33:

    goto LABEL_34;
  }

  v15 = 0;
  v16 = *(v0 + 48);
  v17 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v77 = (v16 + 8);
  v75 = v13;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_49;
    }

    v18 = *(v0 + 144);
    v19 = *(v16 + 72);
    v20 = *(v16 + 16);
    v20(*(v0 + 72), v17 + v19 * v15, *(v0 + 40));
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v21 = *(v0 + 72);
    if (sub_39AE8() == 0x7541796669746F6ELL && v22 == 0xED000074694B6874)
    {
    }

    else
    {
      v23 = sub_3AB28();

      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v0 + 72);
    v25 = sub_39AF8();
    if (!v26)
    {
LABEL_6:
      (*v77)(*(v0 + 72), *(v0 + 40));

      goto LABEL_7;
    }

    v73 = v19;
    v74 = v20;
    v27 = *(v0 + 72);
    v28 = *(v0 + 40);
    if (v25 == 1702195828 && v26 == 0xE400000000000000)
    {
      break;
    }

    v29 = sub_3AB28();

    v30 = *v77;
    (*v77)(v27, v28);

    v13 = v75;
    if (v29)
    {
      goto LABEL_23;
    }

LABEL_7:
    if (v76 == ++v15)
    {
      goto LABEL_33;
    }
  }

  v30 = *v77;
  (*v77)(v27, v28);

LABEL_23:
  v31 = 0;
  while (v31 < *(v75 + 16))
  {
    v32 = *(v0 + 144);
    v74(*(v0 + 56), v17, *(v0 + 40));
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = *(v0 + 56);
    if (sub_39AE8() == 0xD000000000000010 && 0x800000000003DD90 == v34)
    {

LABEL_44:

      v58 = *(v0 + 64);
      v59 = *(v0 + 40);
      (*(*(v0 + 48) + 32))(v58, *(v0 + 56), v59);
      v60 = sub_39AF8();
      v62 = v61;
      v30(v58, v59);
      if (!v62)
      {
        goto LABEL_34;
      }

      v63 = *(v0 + 32);
      v64 = *(type metadata accessor for AppStoreSettingsExperience(0) + 20);

      v65 = sub_39E78();
      v66 = sub_3A878();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v78 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_36FC(v60, v62, &v78);
        _os_log_impl(&dword_0, v65, v66, "Parsed AuthKit context ID from URL: %s", v67, 0xCu);
        sub_44BC(v68);
      }

      v69 = *(v0 + 136);
      v70 = *(v0 + 16);
      v71 = **(v0 + 32);
      sub_2144(v60, v62);
      goto LABEL_40;
    }

    v36 = sub_3AB28();

    if (v36)
    {
      goto LABEL_44;
    }

    ++v31;
    result = (v30)(*(v0 + 56), *(v0 + 40));
    v17 += v73;
    if (v76 == v31)
    {
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_30B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = sub_3CB4(&qword_51D88, &qword_3BF68);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v14 - v8;
  sub_3EA0(v2, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_3F08(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  type metadata accessor for AppStoreSettingsView();
  sub_3FDC(&qword_51D90, type metadata accessor for AppStoreSettingsView);
  sub_3A628();
  sub_3EA0(v2, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_3F08(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  sub_42E4();
  sub_3A5E8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_3304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AuthKitContextIDBox(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_39C48();
  *a2 = v7;
  v8 = a2 + *(a1 + 20);
  return sub_39E88();
}

uint64_t sub_3398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_38048(2, 26, 0, 0))
  {
    sub_3A1C8();

    return sub_3A018();
  }

  else
  {
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    sub_3A928();
    swift_getWitnessTable();
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    return sub_3A018();
  }
}

uint64_t sub_34FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_38048(2, 26, 0, 0))
  {
    sub_3A1C8();
    sub_3A018();
  }

  else
  {
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    sub_3A928();
    swift_getWitnessTable();
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_36FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_37C8(v11, 0, 0, 1, a1, a2);
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
    sub_4508(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_44BC(v11);
  return v7;
}

unint64_t sub_37C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_38D4(a5, a6);
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
    result = sub_3AA78();
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

char *sub_38D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_3920(a1, a2);
  sub_3A50(&off_4D890);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3920(uint64_t a1, unint64_t a2)
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

  v6 = sub_3B3C(v5, 0);
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

  result = sub_3AA78();
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
        v10 = sub_3A758();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3B3C(v10, 0);
        result = sub_3AA28();
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

uint64_t sub_3A50(uint64_t result)
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

  result = sub_3BB0(result, v12, 1, v3);
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

void *sub_3B3C(uint64_t a1, uint64_t a2)
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

  sub_3CB4(&qword_51DB0, &qword_3BF88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3BB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&qword_51DB0, &qword_3BF88);
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

uint64_t sub_3CA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3CB4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_3D24()
{
  result = sub_39C58();
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

uint64_t sub_3E4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsExperience(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsExperience(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2368(v4, a1);
}

uint64_t sub_3FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4024()
{
  v1 = (type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_39E98();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_410C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_41F0;

  return sub_2758(a1, a2, v2 + v7);
}

uint64_t sub_41F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_42E4()
{
  result = qword_51D98;
  if (!qword_51D98)
  {
    sub_4348(&qword_51D88, &qword_3BF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51D98);
  }

  return result;
}

uint64_t sub_4348(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4390(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&unk_51DA0, &qword_3BF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4400(uint64_t a1)
{
  v2 = sub_3CB4(&unk_51DA0, &qword_3BF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4468()
{
  result = qword_527A0;
  if (!qword_527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527A0);
  }

  return result;
}

uint64_t sub_44BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4508(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4568()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_45AC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_257C(v6, a1);
}

uint64_t sub_4620()
{
  v1 = (type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = sub_39E98();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4710(uint64_t *a1)
{
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_269C(a1, v4, v5, v6);
}

uint64_t sub_4798(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_39E98();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_4858(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_39E98();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_48FC()
{
  result = type metadata accessor for AuthKitContextIDBox(319);
  if (v1 <= 0x3F)
  {
    result = sub_39E98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_4980()
{
  sub_4348(&qword_51D88, &qword_3BF68);
  sub_42E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for VideoAutoplaySetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAutoplaySetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_4B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C6E6F5F69666977;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 6710895;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28271;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6C6E6F5F69666977;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 6710895;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28271;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3AB28();
  }

  return v11 & 1;
}

Swift::Int sub_4C54()
{
  v1 = *v0;
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_4CE8()
{
  *v0;
  *v0;
  sub_3A738();
}

Swift::Int sub_4D68()
{
  v1 = *v0;
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_4DF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5EA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_4E28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x6C6E6F5F69666977;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28271;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_4E7C()
{
  result = qword_51EC0;
  if (!qword_51EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51EC0);
  }

  return result;
}

uint64_t sub_4ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_3A158();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3CB4(&qword_51EC8, &qword_3C130);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_3CB4(&qword_51ED0, &qword_3C138);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v33 = a1;
  v34 = a2;
  sub_3CB4(&qword_51ED8, &qword_3C140);
  sub_5FE0();
  sub_3A2B8();
  sub_32020(v11);
  v35 = sub_3A708();
  v36 = v22;
  v23 = sub_6254(&qword_51F00, &qword_51EC8, &qword_3C130);
  v24 = sub_6144();
  sub_3A368();

  (*(v13 + 8))(v16, v12);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  (*(v30 + 104))(v29, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v31);
  v35 = v12;
  v36 = &type metadata for String;
  v37 = v23;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v26 + 8))(v25, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_5264(uint64_t a1, uint64_t a2)
{
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v23 - 2) = a1;
  *(&v23 - 1) = a2;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_31CF8(v7);
  v27 = sub_3A708();
  v28 = v9;
  sub_6144();
  v10 = sub_3A2E8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v27 = v10;
  v28 = v12;
  v29 = v14 & 1;
  v30 = v16;
  sub_3CB4(&qword_51F08, &qword_3C158);
  v17 = sub_4348(&qword_51EE8, &qword_3C148);
  v18 = sub_4348(&qword_51EF0, &qword_3C150);
  v19 = sub_3A148();
  v20 = sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150);
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v26 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v17;
  v24 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_3A558();
}

uint64_t sub_553C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v23 = a2;
  v2 = sub_3A148();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB4(&qword_51EF0, &qword_3C150);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = sub_3CB4(&qword_51EE8, &qword_3C148);
  v20 = *(v11 - 8);
  v21 = v11;
  v12 = *(v20 + 64);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  sub_3A7F8();
  v19[2] = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel();
  sub_61A0();
  v15 = sub_3A048();
  swift_getKeyPath();
  sub_3A068();

  v28 = v24;
  v29 = v25;
  v30 = v26;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3CB4(&qword_51F18, &qword_3C188);
  sub_6200();
  sub_6254(&qword_51F28, &qword_51F18, &qword_3C188);
  sub_3A4C8();
  sub_3A138();
  v16 = sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150);
  sub_3A338();
  (*(v22 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v24 = v6;
  v25 = v2;
  v26 = v16;
  v27 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_3A348();
  (*(v20 + 8))(v14, v17);
}

id sub_59AC@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v1 = sub_39B68();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v52 - v6;
  v8 = sub_3CB4(&qword_51F30, &qword_3C190);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v56 = &v52 - v14;
  v15 = __chkstk_darwin(v13);
  v54 = &v52 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v52 - v24;
  __chkstk_darwin(v23);
  v27 = &v52 - v26;
  sub_3A7F8();
  v55 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_31054(v7);
  v60 = sub_3A708();
  v61 = v28;
  sub_6144();
  *v27 = sub_3A2E8();
  *(v27 + 1) = v29;
  v27[16] = v30 & 1;
  *(v27 + 3) = v31;
  v59 = v27;
  *(v27 + 16) = 256;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_3137C(v5);
    }

    else
    {
      sub_316A4(v5);
    }

    v60 = sub_3A708();
    v61 = v35;
    *v22 = sub_3A2E8();
    *(v22 + 1) = v36;
    v22[16] = v37 & 1;
    *(v22 + 3) = v38;
    *(v22 + 16) = 257;
    v39 = v9[4];
    v40 = v25;
    v53 = v25;
    v39(v25, v22, v8);
    sub_319CC(v7);
    v60 = sub_3A708();
    v61 = v41;
    *v19 = sub_3A2E8();
    *(v19 + 1) = v42;
    v19[16] = v43 & 1;
    *(v19 + 3) = v44;
    *(v19 + 16) = 258;
    v45 = v9[2];
    v46 = v54;
    v45(v54, v59, v8);
    v47 = v56;
    v45(v56, v40, v8);
    v48 = v57;
    v45(v57, v19, v8);
    v49 = v58;
    v45(v58, v46, v8);
    v50 = sub_3CB4(&qword_51F38, qword_3C198);
    v45(&v49[*(v50 + 48)], v47, v8);
    v45(&v49[*(v50 + 64)], v48, v8);
    v51 = v9[1];
    v51(v19, v8);
    v51(v53, v8);
    v51(v59, v8);
    v51(v48, v8);
    v51(v47, v8);
    v51(v46, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5EA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4D908;
  v6._object = a2;
  v4 = sub_3AB08(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 sub_5EF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_5F00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_5F5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_5FE0()
{
  result = qword_51EE0;
  if (!qword_51EE0)
  {
    sub_4348(&qword_51ED8, &qword_3C140);
    sub_4348(&qword_51EE8, &qword_3C148);
    sub_4348(&qword_51EF0, &qword_3C150);
    sub_3A148();
    sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51EE0);
  }

  return result;
}

unint64_t sub_6144()
{
  result = qword_52770;
  if (!qword_52770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52770);
  }

  return result;
}

unint64_t sub_61A0()
{
  result = qword_51F10;
  if (!qword_51F10)
  {
    type metadata accessor for AppStoreSettingsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51F10);
  }

  return result;
}

unint64_t sub_6200()
{
  result = qword_51F20;
  if (!qword_51F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51F20);
  }

  return result;
}

uint64_t sub_6254(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_629C()
{
  sub_4348(&qword_51ED0, &qword_3C138);
  sub_4348(&qword_51EC8, &qword_3C130);
  sub_6254(&qword_51F00, &qword_51EC8, &qword_3C130);
  sub_6144();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_6384()
{
  v0 = type metadata accessor for AppStoreSystemPolicyViewModel();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp] = 0;
  v2 = &v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_applicationBundleIdentifier];
  *v2 = 0xD000000000000012;
  *(v2 + 1) = 0x800000000003DC50;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_2F440();

  return v3;
}

uint64_t sub_6434@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for AppStoreSystemPolicyView();
  v4 = v3 - 8;
  v34 = *(v3 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v3);
  v32[1] = v6;
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39F68();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3CB4(&qword_51FE8, &qword_3C230);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v32 - v16;
  v18 = v2 + *(v4 + 28);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  type metadata accessor for AppStoreSystemPolicyViewModel();
  sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel);
  v22 = sub_39F88();
  v23 = *&v22[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections];

  v40 = v23;
  swift_getKeyPath();
  sub_3CB4(&qword_51FF0, &qword_3C268);
  sub_3CB4(&qword_51FF8, &unk_3C270);
  sub_6254(&qword_52000, &qword_51FF0, &qword_3C268);
  sub_7DAC();
  sub_7E28();
  sub_3A528();
  v33 = v2;
  sub_28B2C(v12);
  sub_8318(v2, v7);
  v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v25 = swift_allocObject();
  sub_8390(v7, v25 + v24);
  sub_8474(&qword_520A8, &qword_51FE8, &qword_3C230, sub_7E28);
  sub_8804(&qword_52790, &type metadata accessor for ScenePhase);
  v26 = v39;
  v27 = v35;
  v28 = v37;
  sub_3A3C8();

  (*(v38 + 8))(v12, v28);
  (*(v36 + 8))(v17, v27);
  sub_8318(v33, v7);
  v29 = swift_allocObject();
  sub_8390(v7, v29 + v24);
  result = sub_3CB4(&qword_520B0, &qword_3C2C8);
  v31 = (v26 + *(result + 36));
  *v31 = sub_8618;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

void sub_68E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_3A6F8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_6948(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_3A6D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIdentifier:?];
}

uint64_t sub_69B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_3A6F8();
    v8 = v7;

    v19 = v6;
    v20 = v8;
    sub_6144();
    v9 = sub_3A2E8();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = v13 & 1;
  }

  else
  {

    v9 = 0;
    v11 = 0;
    v16 = 0;
    v15 = 0;
  }

  v19 = v9;
  v20 = v11;
  v21 = v16;
  v22 = v15;
  sub_7564(v1, v18);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52030, &qword_3C288);
  sub_7EE4();
  sub_8474(&qword_52028, &qword_52030, &qword_3C288, sub_7F60);
  sub_3A548();
}

uint64_t sub_6C1C()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();

  sub_3CB4(&qword_520B8, &qword_3C310);
  sub_3CB4(&qword_52040, &qword_3C290);
  sub_6254(&qword_520C0, &qword_520B8, &qword_3C310);
  sub_7DAC();
  sub_7F60();
  sub_3A528();
}

id sub_6D88@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_3CB4(&qword_52050, &qword_3C298);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v26 = &v22 - v5;
  v24 = sub_3CB4(&qword_52040, &qword_3C290);
  v6 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v23 = &v22 - v7;
  v8 = *a1;
  sub_3A7F8();
  v22 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_70C0(v8, &v30);
  v10 = v30;
  v11 = v31;
  v12 = BYTE8(v31);
  v13 = BYTE9(v31);
  result = [v8 identifier];
  if (result)
  {
    v15 = result;
    sub_3A6F8();

    sub_3CB4(&qword_52060, &qword_3C2A0);
    sub_80D4();
    sub_3A398();

    sub_86E8(v10, *(&v10 + 1), v11, v12, v13);
    if ([v8 propertyForKey:PSEnabledKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = v27 ^ 1;
LABEL_12:
        KeyPath = swift_getKeyPath();
        v18 = swift_allocObject();
        *(v18 + 16) = v16 & 1;
        v19 = v23;
        sub_8750(v26, v23, &qword_52050, &qword_3C298);
        v20 = v25;
        v21 = (v19 + *(v24 + 36));
        *v21 = KeyPath;
        v21[1] = sub_8748;
        v21[2] = v18;
        sub_8750(v19, v20, &qword_52040, &qword_3C290);
      }
    }

    else
    {
      sub_8680(&v30);
    }

    v16 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double sub_70C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 cellType];
  if ((v4 - 1) >= 2)
  {
    if (v4 == &dword_4 + 2)
    {
      sub_87B8();
      sub_8804(&qword_520C8, sub_87B8);
      v14 = a1;
      sub_39FF8();
      v16 = v15;
      v17 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
      v18 = [objc_opt_self() mainScreen];
      [v18 scale];
      v20 = v19;

      [v17 setScale:v20];
      [v17 setDrawBorder:1];
      sub_8270();
      sub_82C4();
      v21 = v16;
      v22 = v17;
      sub_3A1A8();
      sub_3CB4(&qword_52080, &unk_3C2B0);
      sub_81E4();
      sub_3A1A8();
    }

    else
    {
      sub_3CB4(&qword_52080, &unk_3C2B0);
      sub_81E4();
      sub_3A1A8();
    }
  }

  else
  {
    sub_87B8();
    sub_8804(&qword_520C8, sub_87B8);
    v5 = a1;
    sub_39FF8();
    v7 = v6;
    v8 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setScale:v11];
    [v8 setDrawBorder:1];
    sub_8270();
    sub_82C4();
    v12 = v7;
    v13 = v8;
    sub_3A1A8();
    sub_3CB4(&qword_52080, &unk_3C2B0);
    sub_81E4();
    sub_3A1A8();
  }

  result = *&v24;
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v27;
  return result;
}

uint64_t sub_7564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ([a1 propertyForKey:PSFooterTextGroupKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_8680(v16);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    v4 = 0;
    v6 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v16[0] = v13;
  sub_6144();
  v4 = sub_3A2E8();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12 = v8 & 1;
LABEL_11:
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

void sub_76E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_39F68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v8, enum case for ScenePhase.active(_:), v4);
  v9 = sub_39F58();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = (a3 + *(type metadata accessor for AppStoreSystemPolicyView() + 20));
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    type metadata accessor for AppStoreSystemPolicyViewModel();
    sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel);
    v14 = sub_39F88();
    sub_2F440();
  }

  else
  {
  }
}

uint64_t sub_78EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_79C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AppStoreSystemPolicyView()
{
  result = qword_51FA0;
  if (!qword_51FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7ADC()
{
  sub_7B60();
  if (v0 <= 0x3F)
  {
    sub_7BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7B60()
{
  if (!qword_52680)
  {
    sub_39F68();
    v0 = sub_39F78();
    if (!v1)
    {
      atomic_store(v0, &qword_52680);
    }
  }
}

void sub_7BB8()
{
  if (!qword_51FB0)
  {
    type metadata accessor for AppStoreSystemPolicyViewModel();
    sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel);
    v0 = sub_39FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_51FB0);
    }
  }
}

void sub_7C68(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AppStoreSystemPolicyView() + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for AppStoreSystemPolicyViewModel();
  sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel);
  v6 = sub_39F88();
  sub_2F440();
}

unint64_t sub_7DAC()
{
  result = qword_52008;
  if (!qword_52008)
  {
    sub_4348(&qword_51DC0, &qword_3DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52008);
  }

  return result;
}

unint64_t sub_7E28()
{
  result = qword_52010;
  if (!qword_52010)
  {
    sub_4348(&qword_51FF8, &unk_3C270);
    sub_7EE4();
    sub_8474(&qword_52028, &qword_52030, &qword_3C288, sub_7F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52010);
  }

  return result;
}

unint64_t sub_7EE4()
{
  result = qword_52018;
  if (!qword_52018)
  {
    sub_4348(&qword_52020, &qword_3C280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52018);
  }

  return result;
}

unint64_t sub_7F60()
{
  result = qword_52038;
  if (!qword_52038)
  {
    sub_4348(&qword_52040, &qword_3C290);
    sub_8018();
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52038);
  }

  return result;
}

unint64_t sub_8018()
{
  result = qword_52048;
  if (!qword_52048)
  {
    sub_4348(&qword_52050, &qword_3C298);
    sub_80D4();
    sub_8804(&qword_52098, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52048);
  }

  return result;
}

unint64_t sub_80D4()
{
  result = qword_52058;
  if (!qword_52058)
  {
    sub_4348(&qword_52060, &qword_3C2A0);
    sub_8158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52058);
  }

  return result;
}

unint64_t sub_8158()
{
  result = qword_52068;
  if (!qword_52068)
  {
    sub_4348(&qword_52070, &qword_3C2A8);
    sub_81E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52068);
  }

  return result;
}

unint64_t sub_81E4()
{
  result = qword_52078;
  if (!qword_52078)
  {
    sub_4348(&qword_52080, &unk_3C2B0);
    sub_8270();
    sub_82C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52078);
  }

  return result;
}

unint64_t sub_8270()
{
  result = qword_52088;
  if (!qword_52088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52088);
  }

  return result;
}

unint64_t sub_82C4()
{
  result = qword_52090;
  if (!qword_52090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52090);
  }

  return result;
}

uint64_t sub_8318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSystemPolicyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_8380(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSystemPolicyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_83F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSystemPolicyView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_76E0(a1, a2, v6);
}

uint64_t sub_8474(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_84F0()
{
  v1 = type metadata accessor for AppStoreSystemPolicyView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_39F68();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_8380(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8), *(v5 + *(v1 + 20) + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_8618()
{
  v1 = *(type metadata accessor for AppStoreSystemPolicyView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_7C68(v2);
}

uint64_t sub_8678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_6C1C();
}

uint64_t sub_8680(uint64_t a1)
{
  v2 = sub_3CB4(&qword_52990, qword_3C2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_86E8(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_86F8(a1, a2, a3);
  }
}

void sub_86F8(uint64_t a1, void *a2, void *a3)
{
}

uint64_t sub_8750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3CB4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_87B8()
{
  result = qword_52D40;
  if (!qword_52D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52D40);
  }

  return result;
}

uint64_t sub_8804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_8850()
{
  result = qword_520D0;
  if (!qword_520D0)
  {
    sub_4348(&qword_520B0, &qword_3C2C8);
    sub_4348(&qword_51FE8, &qword_3C230);
    sub_39F68();
    sub_8474(&qword_520A8, &qword_51FE8, &qword_3C230, sub_7E28);
    sub_8804(&qword_52790, &type metadata accessor for ScenePhase);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_520D0);
  }

  return result;
}

uint64_t sub_89A0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_8A10()
{
  result = qword_52190;
  if (!qword_52190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52190);
  }

  return result;
}

uint64_t sub_8A64(uint64_t *a1)
{
  v1 = *a1;
  sub_3A7F8();
  v3[2] = v1;
  return sub_2F638(sub_8F44, v3);
}

void sub_8AD8(void *a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 title];
    [v3 setTitle:v4];
  }

  v5 = [a1 parentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationItem];

    v8 = [a1 navigationItem];
    v9 = [v8 rightBarButtonItems];

    [v7 setRightBarButtonItems:v9];
  }

  else
  {
  }
}

uint64_t sub_8C68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AuthorizedAutoUpdatesSettingsWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8DD8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8DD8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_8DB0()
{
  sub_8DD8();
  sub_3A238();
  __break(1u);
}

unint64_t sub_8DD8()
{
  result = qword_52198;
  if (!qword_52198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52198);
  }

  return result;
}

id sub_8E2C()
{
  v0 = [objc_allocWithZone(AutoUpdateSettingsController) init];
  sub_3CB4(&qword_521A0, qword_3C460);
  sub_3A278();
  swift_getKeyPath();
  v1 = sub_39B88();

  v2 = *(v4 + 16);
  *(v4 + 16) = v1;

  return v0;
}

id sub_8F08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_8F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_3A158();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3CB4(&qword_521A8, &qword_3C538);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_3CB4(&qword_521B0, &qword_3C540);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v33 = a1;
  v34 = a2;
  sub_3CB4(&qword_521B8, &qword_3C548);
  sub_A9B0();
  sub_3A2B8();
  sub_33114(v11);
  v35 = sub_3A708();
  v36 = v22;
  v23 = sub_6254(&qword_52200, &qword_521A8, &qword_3C538);
  v24 = sub_6144();
  sub_3A368();

  (*(v13 + 8))(v16, v12);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  (*(v30 + 104))(v29, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v31);
  v35 = v12;
  v36 = &type metadata for String;
  v37 = v23;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v26 + 8))(v25, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_9320(void *a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_A220(a1, &v4);
  sub_3CB4(&qword_52208, &qword_3C578);
  sub_3CB4(&qword_521E8, &qword_3C560);
  sub_4348(&qword_521C8, &qword_3C550);
  sub_4348(&qword_521D0, &qword_3C558);
  sub_3A148();
  sub_6254(&qword_521D8, &qword_521D0, &qword_3C558);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_AB14();
  sub_3A558();
}

uint64_t sub_9530@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_3A148();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3CB4(&qword_52210, &qword_3C5C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v27 = sub_3CB4(&qword_521D0, &qword_3C558);
  v29 = *(v27 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v14 = sub_3CB4(&qword_521C8, &qword_3C550);
  v30 = *(v14 - 8);
  v31 = v14;
  v15 = *(v30 + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_3A7F8();
  v28 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel();
  sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v18 = sub_3A048();
  swift_getKeyPath();
  sub_3A068();

  v26 = &v26;
  __chkstk_darwin(v19);
  sub_AC78(v10, v8);
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_39D48();
  sub_3CB4(&qword_52218, &qword_3C5D0);
  sub_ACE8(&qword_52220, &type metadata accessor for CellularSettings.Prompt);
  sub_6254(&qword_52228, &qword_52218, &qword_3C5D0);
  sub_3A4C8();
  sub_AD30(v10);
  v20 = v32;
  sub_3A138();
  v21 = sub_6254(&qword_521D8, &qword_521D0, &qword_3C558);
  v22 = v27;
  v23 = v34;
  sub_3A338();
  (*(v33 + 8))(v20, v23);
  (*(v29 + 8))(v13, v22);
  v36 = v22;
  v37 = v23;
  v38 = v21;
  v39 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_3A348();
  (*(v30 + 8))(v17, v24);
}

uint64_t sub_9AC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v82[1] = a2;
  v89 = a1;
  v96 = a3;
  v3 = sub_39D48();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39B68();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v88 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v82 - v12;
  v87 = sub_3CB4(&qword_52230, &qword_3C5D8);
  v92 = *(v87 - 8);
  v14 = *(v92 + 64);
  v15 = __chkstk_darwin(v87);
  v95 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v94 = v82 - v18;
  v19 = __chkstk_darwin(v17);
  v93 = v82 - v20;
  v21 = __chkstk_darwin(v19);
  v91 = v82 - v22;
  v23 = __chkstk_darwin(v21);
  v84 = v82 - v24;
  v25 = __chkstk_darwin(v23);
  v103 = v82 - v26;
  __chkstk_darwin(v25);
  v102 = v82 - v27;
  sub_3A7F8();
  v90 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_32348(v13);
  v104 = sub_3A708();
  v105 = v28;
  v86 = sub_6144();
  v29 = sub_3A2E8();
  v83 = v13;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v4[13];
  v101 = v4 + 13;
  v85 = v36;
  v36(v7, enum case for CellularSettings.Prompt.never(_:), v3);
  v98 = sub_3CB4(&qword_51C18, &unk_3C5E0);
  v37 = v7;
  v38 = v3;
  v39 = v102;
  v40 = &v102[*(v98 + 36)];
  v41 = v37;
  v42 = v38;
  v99 = v4[4];
  v100 = v4 + 4;
  v99(v40);
  v97 = sub_3CB4(&qword_51C20, &qword_3BE50);
  v40[*(v97 + 36)] = 1;
  *v39 = v29;
  *(v39 + 1) = v31;
  v39[16] = v33 & 1;
  *(v39 + 3) = v35;
  if (v89)
  {
    v43 = v89;
    sub_129A0();
    v45 = v44;
    v47 = v46;

    sub_32368(v45, v47, v88);

    v104 = sub_3A708();
    v105 = v48;
    v49 = sub_3A2E8();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v42;
    v57 = v42;
    v58 = v85;
    v85(v41, enum case for CellularSettings.Prompt.overLimit(_:), v57);
    v59 = v58;
    v60 = v84;
    v61 = &v84[*(v98 + 36)];
    (v99)(v61, v41, v56);
    v61[*(v97 + 36)] = 1;
    *v60 = v49;
    *(v60 + 1) = v51;
    v60[16] = v53 & 1;
    *(v60 + 3) = v55;
    v62 = v92;
    v63 = v60;
    v64 = v87;
    (*(v92 + 32))(v103, v63, v87);
    sub_32708(v83);
    v104 = sub_3A708();
    v105 = v65;
    v66 = sub_3A2E8();
    v68 = v67;
    LOBYTE(v51) = v69;
    v71 = v70;
    v59(v41, enum case for CellularSettings.Prompt.always(_:), v56);
    v72 = v91;
    v73 = &v91[*(v98 + 36)];
    (v99)(v73, v41, v56);
    v73[*(v97 + 36)] = 1;
    *v72 = v66;
    *(v72 + 1) = v68;
    v72[16] = v51 & 1;
    *(v72 + 3) = v71;
    v74 = *(v62 + 16);
    v75 = v93;
    v74(v93, v102, v64);
    v76 = v94;
    v74(v94, v103, v64);
    v77 = v95;
    v74(v95, v72, v64);
    v78 = v96;
    v74(v96, v75, v64);
    v79 = sub_3CB4(&qword_52238, &unk_3C5F0);
    v74(&v78[*(v79 + 48)], v76, v64);
    v74(&v78[*(v79 + 64)], v77, v64);
    v80 = *(v62 + 8);
    v80(v72, v64);
    v80(v103, v64);
    v80(v102, v64);
    v80(v77, v64);
    v80(v76, v64);
    v80(v75, v64);
  }

  else
  {
    type metadata accessor for AppStoreSettingsViewModel();
    sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
    result = sub_3A058();
    __break(1u);
  }

  return result;
}

uint64_t sub_A220@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39D48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v13 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_39EE8();

    v15 = (*(v9 + 88))(v12, v8);
    v45 = v13;
    v46 = a2;
    if (v15 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_32724(v7);
      *&v50 = sub_3A708();
      *(&v50 + 1) = v16;
      sub_6144();
      v17 = sub_3A2E8();
      v19 = v18;
      *&v47 = v17;
      *(&v47 + 1) = v18;
      v21 = v20 & 1;
      *&v48 = v20 & 1;
      *(&v48 + 1) = v22;
      LOBYTE(v49) = 0;
      sub_3CA4(v17, v18, v20 & 1);

      sub_3A1A8();
      v47 = v50;
      v48 = v51;
      v49 = v52;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    else if (v15 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      sub_129A0();
      v24 = v23;
      v26 = v25;

      sub_32A4C(v24, v26, v7);

      *&v50 = sub_3A708();
      *(&v50 + 1) = v27;
      sub_6144();
      v17 = sub_3A2E8();
      v19 = v28;
      v21 = v29 & 1;
      *&v47 = v17;
      *(&v47 + 1) = v28;
      *&v48 = v29 & 1;
      *(&v48 + 1) = v30;
      LOBYTE(v49) = 1;
      sub_3CA4(v17, v28, v29 & 1);

      sub_3A1A8();
      v47 = v50;
      v48 = v51;
      v49 = v52;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    else
    {
      v31 = enum case for CellularSettings.Prompt.never(_:);
      v32 = v15;

      if (v32 != v31)
      {
        v47 = 0u;
        v48 = 0u;
        LOBYTE(v49) = 1;
        sub_3A1A8();
        v47 = v50;
        v48 = v51;
        LOBYTE(v49) = v52;
        HIBYTE(v49) = 1;
        sub_3CB4(&qword_528F0, &qword_3C568);
        sub_3CB4(&qword_521F8, &qword_3C570);
        sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
        sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
        sub_3A1A8();
        v43 = v51;
        v44 = v50;
        v40 = v52;
        v41 = v53;
        (*(v9 + 8))(v12, v8);

        v39 = v43;
        v38 = v44;
        goto LABEL_11;
      }

      sub_32DE8(v7);
      *&v50 = sub_3A708();
      *(&v50 + 1) = v33;
      sub_6144();
      v17 = sub_3A2E8();
      v19 = v34;
      *&v47 = v17;
      *(&v47 + 1) = v34;
      v21 = v35 & 1;
      *&v48 = v35 & 1;
      *(&v48 + 1) = v36;
      LOBYTE(v49) = 0;
      sub_3CA4(v17, v34, v35 & 1);

      sub_3A1A8();
      v47 = v50;
      v48 = v51;
      LOBYTE(v49) = v52;
      HIBYTE(v49) = 1;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    sub_3A1A8();
    sub_AC60(v17, v19, v21);

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
LABEL_11:
    v42 = v46;
    *v46 = v38;
    v42[1] = v39;
    *(v42 + 32) = v40;
    *(v42 + 33) = v41;
    return result;
  }

  type metadata accessor for AppStoreSettingsViewModel();
  sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  result = sub_3A058();
  __break(1u);
  return result;
}

unint64_t sub_A9B0()
{
  result = qword_521C0;
  if (!qword_521C0)
  {
    sub_4348(&qword_521B8, &qword_3C548);
    sub_4348(&qword_521C8, &qword_3C550);
    sub_4348(&qword_521D0, &qword_3C558);
    sub_3A148();
    sub_6254(&qword_521D8, &qword_521D0, &qword_3C558);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_AB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_521C0);
  }

  return result;
}

unint64_t sub_AB14()
{
  result = qword_521E0;
  if (!qword_521E0)
  {
    sub_4348(&qword_521E8, &qword_3C560);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_521E0);
  }

  return result;
}

uint64_t sub_ABE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AC50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_9530(a1);
}

uint64_t sub_AC60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_AC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52210, &qword_3C5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ACE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AD30(uint64_t a1)
{
  v2 = sub_3CB4(&qword_52210, &qword_3C5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AD98()
{
  sub_4348(&qword_521B0, &qword_3C540);
  sub_4348(&qword_521A8, &qword_3C538);
  sub_6254(&qword_52200, &qword_521A8, &qword_3C538);
  sub_6144();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AE80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_39B68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v49[-v8];
  sub_3343C(&v49[-v8]);
  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = sub_3A6D8();
  v12 = [v10 initWithSuiteName:v11];

  if (v12)
  {
    v51 = "deoSetLastAutoPlayVideoValue";
    v13 = sub_3A6D8();
    v50 = [v12 BOOLForKey:v13];

    v14 = sub_3A6D8();
    v15 = [v12 stringForKey:v14];

    v54 = v2;
    v55 = a1;
    v53 = v15;
    if (v15)
    {
      sub_3A6F8();
      v52 = v16;
    }

    else
    {
      v52 = 0;
    }

    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v59 = "AutoPlayVideoSetting";
    v18 = sub_3A6D8();
    v19 = [v12 objectForKey:v18];

    if (v19)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_8680(&v61);
    v20 = sub_3A6D8();
    v21 = [v12 BOOLForKey:v20];

    v60 = IsVideoAutoplayEnabled;
    if (IsVideoAutoplayEnabled == v21)
    {
      v22 = (v19 == 0) & (IsVideoAutoplayEnabled ^ 1);
    }

    else
    {
      v22 = 1;
    }

    v23 = [objc_opt_self() processInfo];
    v58 = [v23 isLowPowerModeEnabled];

    v56 = 0xD000000000000015;
    v57 = "LastUserSetAutoPlayVideoValue";
    v24 = sub_3A6D8();
    v25 = [v12 objectForKey:v24];

    if (v25)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_8680(&v61);
    v26 = sub_3A6D8();
    v27 = [v12 BOOLForKey:v26];

    v28 = v58;
    if (v58 == v27)
    {
      v29 = v50 ^ 1 | v22;
      if (v25)
      {
        if (v29)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      if (((v29 | v58) & 1) == 0)
      {
LABEL_25:

        v2 = v54;
        a1 = v55;
        return (*(v3 + 32))(a1, v9, v2);
      }
    }

LABEL_17:
    if (v60)
    {
      v30 = sub_3A6D8();
      [v12 setBool:0 forKey:v30];

      v2 = v54;
      if (!v28)
      {
LABEL_19:
        v31 = sub_3A6D8();
        [v12 setBool:0 forKey:v31];

        if (v60)
        {
          v32 = sub_3A6D8();
          [v12 setBool:0 forKey:v32];

          v33 = sub_3A6D8();
          [v12 setBool:0 forKey:v33];

          if (v52)
          {

            v34 = sub_3A6D8();
            v35 = v53;
            [v12 setObject:v53 forKey:v34];

            v36 = sub_3A6D8();
            [v12 setBool:1 forKey:v36];
          }

          else
          {

            v45 = sub_3A6D8();
            [v12 setURL:0 forKey:v45];

            v36 = sub_3A6D8();
            [v12 setBool:0 forKey:v36];
          }
        }

        else
        {
        }

        v28 = v58;
        goto LABEL_30;
      }
    }

    else
    {
      v37 = sub_3A6D8();
      v38 = sub_3A6D8();
      [v12 setObject:v37 forKey:v38];

      v28 = v58;
      v39 = sub_3A6D8();
      [v12 setBool:1 forKey:v39];

      v40 = sub_3A6D8();
      [v12 setBool:0 forKey:v40];

      sub_33764(v7);
      v2 = v54;
      (*(v3 + 8))(v9, v54);
      (*(v3 + 32))(v9, v7, v2);
      if (!v28)
      {
        goto LABEL_19;
      }
    }

    v41 = sub_3A6D8();
    v42 = sub_3A6D8();
    [v12 setObject:v41 forKey:v42];

    v43 = sub_3A6D8();
    [v12 setBool:1 forKey:v43];

    v44 = sub_3A6D8();
    [v12 setBool:0 forKey:v44];

    sub_33A8C(v7);
    (*(v3 + 8))(v9, v2);
    (*(v3 + 32))(v9, v7, v2);

LABEL_30:
    v46 = sub_3A6D8();
    [v12 setBool:v60 forKey:v46];

    v47 = sub_3A6D8();
    [v12 setBool:v28 forKey:v47];

    [v12 synchronize];
    a1 = v55;
  }

  return (*(v3 + 32))(a1, v9, v2);
}

void sub_B700(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_3A6D8();
  v14 = [v3 initWithSuiteName:v4];

  if (v14)
  {
    v5 = sub_3A6D8();

    v6 = sub_3A6D8();
    [v14 setObject:v5 forKey:v6];

    if (a2)
    {
      IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
      v8 = sub_3A6D8();
      [v14 setBool:IsVideoAutoplayEnabled forKey:v8];

      v9 = sub_3A6D8();
      [v14 setBool:0 forKey:v9];

      v10 = sub_3A6D8();
      [v14 setBool:0 forKey:v10];

      v11 = sub_3A6D8();
      [v14 setBool:1 forKey:v11];

      v12 = sub_3A6D8();

      v13 = sub_3A6D8();
      [v14 setObject:v12 forKey:v13];
    }

    [v14 synchronize];
  }
}

uint64_t sub_B9D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return 1;
}

uint64_t sub_BB78()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return 1;
}

uint64_t sub_BD18()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_3A6D8();
  v4 = [v2 stringForKey:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_3A6F8();
  v7 = v6;

  v8 = v5 == 28271 && v7 == 0xE200000000000000;
  if (v8 || (sub_3AB28() & 1) != 0)
  {

    return 0;
  }

  if (v5 == 0x6C6E6F5F69666977 && v7 == 0xE900000000000079 || (sub_3AB28() & 1) != 0)
  {

    return 1;
  }

  else if (v5 == 6710895 && v7 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v10 = sub_3AB28();

    if (v10)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_BEE4()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return 1;
}

uint64_t sub_C084()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v5 = sub_3A6D8();
  v6 = [v2 BOOLForKey:v5];

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_3A6D8();
  v9 = [v2 objectForKey:v8];

  if (v9)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v10 = sub_3A6D8();
  v11 = [v2 BOOLForKey:v10];

  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_3A6D8();
  v14 = [v2 objectForKey:v13];

  if (v14)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v15 = sub_3A6D8();
  v16 = [v2 BOOLForKey:v15];

  if (v16)
  {
    if (!((v7 | v12) & 1 | (v14 != 0)))
    {
      return 1;
    }
  }

  else if (((v7 | v12) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

id sub_C3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C438(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C450(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C460(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_C484()
{
  result = qword_52308;
  if (!qword_52308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52308);
  }

  return result;
}

id sub_C4DC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator_onDismiss];
  *v7 = v4;
  v7[1] = v3;
  sub_C450(v4);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_C55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C64C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_C5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C64C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_C624()
{
  sub_C64C();
  sub_3A238();
  __break(1u);
}

unint64_t sub_C64C()
{
  result = qword_52310;
  if (!qword_52310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52310);
  }

  return result;
}

void sub_C6A0()
{
  v0 = sub_39B68();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB4(&qword_52318, &unk_3DA60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_3C620;
  v5 = sub_3A6D8();
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier:v5];

  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 32) = v7;
  v8 = sub_3A6D8();
  v9 = [v6 bundleWithIdentifier:v8];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v4 + 40) = v9;
  v10 = objc_allocWithZone(OBPrivacyCombinedController);
  sub_CA44();
  isa = sub_3A768().super.isa;

  v12 = [v10 initWithBundles:isa];

  if (!v12)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v13 = objc_allocWithZone(UINavigationController);
  v14 = v12;
  [v13 initWithRootViewController:v14];
  v15 = [v14 navigationItem];

  sub_33DB4(v3);
  sub_3A708();
  v26 = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  sub_3CB4(&qword_52328, &qword_3C770);
  sub_3A278();
  v16 = sub_3A6D8();

  v17 = v26;
  if (v26)
  {
    v18 = sub_CA90(v25, v26);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    __chkstk_darwin(v18);
    v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_3AB18();
    (*(v19 + 8))(v22, v17);
    sub_44BC(v25);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v16 style:2 target:v23 action:"dismissViewController"];

  swift_unknownObjectRelease();
  [v15 setRightBarButtonItem:v24];
}

unint64_t sub_CA44()
{
  result = qword_52320;
  if (!qword_52320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52320);
  }

  return result;
}

void *sub_CA90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_CAD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_CB80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v5;
  return result;
}

void sub_CC00(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_D488();
}

uint64_t sub_CC3C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_39D48();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_D26C(v7);
}

uint64_t sub_CD58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

uint64_t sub_CDE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

void sub_CE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_CFB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_D0CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_D1FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();
}

uint64_t sub_D26C(uint64_t a1)
{
  v3 = sub_39D48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v1;
  sub_39EF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  swift_beginAccess();
  sub_39D28();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_D414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

void sub_D488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_39EF8();
  if (v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    sub_B700(v2, 1);
  }
}

void sub_D570()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_39EF8();
  if (v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v2 = 2;
    }

    sub_B700(v2, 1);
  }
}

void sub_D650()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_D76C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_D888()
{
  v0 = sub_3CB4(&unk_524C0, &qword_3C850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14[-v2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v4 = v14[15];
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    [v7 setBool:v4 forKey:v8];
  }

  v9 = sub_3A818();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v10 = v14[14];
  sub_3A7F8();
  v11 = sub_3A7E8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v10;
  sub_DD34(0, 0, v3, &unk_3CB98, v12);
}

uint64_t sub_DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_3A7F8();
  v4[3] = sub_3A7E8();
  v6 = async function pointer to static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_DB98;

  return static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)(0xD000000000000012, 0x800000000003DC50, a4);
}

uint64_t sub_DB98()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_3A798();

  return _swift_task_switch(sub_DCD4, v5, v4);
}

uint64_t sub_DCD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3CB4(&unk_524C0, &qword_3C850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1A5AC(a3, v27 - v11, &unk_524C0, &qword_3C850);
  v13 = sub_3A818();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A614(v12, &unk_524C0, &qword_3C850);
  }

  else
  {
    sub_3A808();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_3A798();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_3A728() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1A614(a3, &unk_524C0, &qword_3C850);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A614(a3, &unk_524C0, &qword_3C850);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_E048()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

id sub_E0B4()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v149 = &v130 - v3;
  v4 = sub_39D08();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v148 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB4(&qword_52540, &qword_3CEE0);
  v146 = *(v7 - 1);
  v147 = v7;
  v8 = *(v146 + 64);
  __chkstk_darwin(v7);
  v145 = &v130 - v9;
  v10 = sub_3CB4(&qword_52548, &qword_3CEE8);
  v143 = *(v10 - 8);
  v144 = v10;
  v11 = *(v143 + 64);
  __chkstk_darwin(v10);
  v142 = &v130 - v12;
  v13 = sub_39D48();
  v14 = *(v13 - 8);
  v152 = v13;
  v153 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v151 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v150 = &v130 - v18;
  v19 = sub_3CB4(&qword_52550, &qword_3CEF0);
  v140 = *(v19 - 8);
  v141 = v19;
  v20 = *(v140 + 8);
  __chkstk_darwin(v19);
  v139 = &v130 - v21;
  v138 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v22 = *(*(v138 - 1) + 64);
  v23 = __chkstk_darwin(v138);
  v137 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v134 = &v130 - v25;
  v136 = sub_3CB4(&qword_52558, &qword_3CEF8);
  v135 = *(v136 - 8);
  v26 = *(v135 + 64);
  __chkstk_darwin(v136);
  v133 = &v130 - v27;
  v132 = sub_3CB4(&qword_52560, &qword_3CF00);
  v131 = *(v132 - 8);
  v28 = *(v131 + 64);
  __chkstk_darwin(v132);
  v30 = &v130 - v29;
  v31 = sub_3CB4(&qword_52568, &qword_3CF08);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v130 - v34;
  v36 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutoPlayVideoDefaultSetting];
  *v36 = 0xD00000000000001BLL;
  v36[1] = 0x800000000003E680;
  v37 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds];
  *v37 = 0xD000000000000016;
  v37[1] = 0x800000000003E6A0;
  v38 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *v38 = 0x6572617774666F73;
  v38[1] = 0xE800000000000000;
  v39 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isSignedIn;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v40 = *(v32 + 32);
  v40(&v0[v39], v35, v31);
  v41 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isLowPowerMode;
  v42 = [objc_opt_self() processInfo];
  LOBYTE(v39) = [v42 isLowPowerModeEnabled];

  LOBYTE(v155) = v39;
  sub_39ED8();
  v40(&v0[v41], v35, v31);
  v43 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__hasMultipleMarketplaces;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v40(&v0[v43], v35, v31);
  v44 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__hasEverHadMultipleMarketplaces;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v40(&v0[v44], v35, v31);
  v130 = v40;
  v45 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__telephonyClient;
  v155 = 0;
  sub_3CB4(&qword_52488, &qword_3C7D0);
  sub_39ED8();
  (*(v131 + 32))(&v0[v45], v30, v132);
  v46 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isCellularPolicyEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v40(&v0[v46], v35, v31);
  v47 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cachedCellularLimit;
  v155 = 0;
  v156 = 1;
  sub_3CB4(&qword_52498, &qword_3C7D8);
  v48 = v133;
  sub_39ED8();
  (*(v135 + 32))(&v0[v47], v48, v136);
  v49 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayFooterValue;
  v50 = sub_39B68();
  v51 = v134;
  (*(*(v50 - 8) + 56))(v134, 1, 1, v50);
  sub_1A5AC(v51, v137, &qword_524A8, &qword_3C7E0);
  v52 = v139;
  sub_39ED8();
  v53 = v51;
  v54 = v130;
  sub_1A614(v53, &qword_524A8, &qword_3C7E0);
  (*(v140 + 4))(&v0[v49], v52, v141);
  v55 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__showResetIdentifiersButton;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v55], v35, v31);
  v56 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoDownloadAppsEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v56], v35, v31);
  v57 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoUpdatesEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v57], v35, v31);
  v58 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoBackgroundAssetsEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v58], v35, v31);
  v59 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cellularAutoDownloadsEnabled;
  LOBYTE(v155) = 1;
  sub_39ED8();
  v141 = v31;
  v54(&v0[v59], v35, v31);
  v60 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cellularAutoDownloadPrompt;
  v62 = v152;
  v61 = v153;
  v63 = v150;
  (*(v153 + 104))(v150, enum case for CellularSettings.Prompt.overLimit(_:), v152);
  v64 = v61;
  v65 = *(v61 + 16);
  v139 = (v61 + 16);
  v138 = v65;
  v65(v151, v63, v62);
  v66 = v142;
  sub_39ED8();
  v67 = *(v64 + 8);
  v153 = v64 + 8;
  v140 = v67;
  v67(v63, v62);
  (*(v143 + 32))(&v0[v60], v66, v144);
  v68 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayValue;
  LOBYTE(v155) = sub_BD18();
  v69 = v145;
  sub_39ED8();
  (*(v146 + 32))(&v0[v68], v69, v147);
  if (sub_BD18())
  {
    v70 = sub_3AB28();
  }

  else
  {
    v70 = 1;
  }

  v71 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayToggleValue;
  LOBYTE(v155) = v70 & 1;
  sub_39ED8();
  v72 = v141;
  v54(&v0[v71], v35, v141);
  v73 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__inAppRatingsAndReviewsEnabled;
  LOBYTE(v155) = 1;
  sub_39ED8();
  v54(&v0[v73], v35, v72);
  v74 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__offloadUnusedAppsEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v74], v35, v72);
  v75 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__installConfirmationsEnabled;
  LOBYTE(v155) = 0;
  sub_39ED8();
  v54(&v0[v75], v35, v72);
  v76 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag];
  *v76 = 0u;
  *(v76 + 1) = 0u;
  *(v76 + 4) = 0;
  *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued] = 0;
  *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued] = 0;
  sub_39CF8();
  sub_39D38();
  v148 = "iencePluginLoader";
  sub_39E88();
  v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 1;
  v77 = type metadata accessor for AppStoreSettingsViewModel();
  v154.receiver = v0;
  v154.super_class = v77;
  v78 = objc_msgSendSuper2(&v154, "init");
  sub_FF84();
  sub_1017C();
  sub_11854();
  v79 = sub_3A818();
  v80 = v149;
  v146 = *(*(v79 - 8) + 56);
  (v146)(v149, 1, 1, v79);
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3A7F8();

  v82 = sub_3A7E8();
  v83 = swift_allocObject();
  v83[2] = v82;
  v83[3] = &protocol witness table for MainActor;
  v83[4] = v81;

  sub_DD34(0, 0, v80, &unk_3CF18, v83);

  v84 = sub_19558();
  swift_getKeyPath();
  swift_getKeyPath();
  v155 = v84;
  v85 = v78;
  sub_39EF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v86 = v155;
  if (v155)
  {
    [v155 setDelegate:v85];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v87 = v155;
  if (v155)
  {
    sub_19954(&off_4D970);
    sub_1AEA0(&unk_4D990);
    isa = sub_3A828().super.isa;

    v155 = 0;
    v89 = [v87 getLocalPolicies:isa error:&v155];

    v90 = v155;
    v147 = v87;
    if (v89)
    {
      sub_1AF40(0, &unk_52D50, CTDataUsagePolicies_ptr);
      sub_18510();
      v91 = sub_3A838();
      v92 = v90;

      if ((v91 & 0xC000000000000001) != 0)
      {
        if (sub_3A9B8() == 1)
        {
          goto LABEL_10;
        }
      }

      else if (*(v91 + 16) == 1)
      {
LABEL_10:
        v93 = sub_2F7C0(v91);

        if (v93)
        {
          v94 = [v93 cellular] == &dword_0 + 1;
          v95 = v149;
          (v146)(v149, 1, 1, v79);
          v96 = v85;
          v97 = sub_3A7E8();
          v98 = swift_allocObject();
          *(v98 + 16) = v97;
          *(v98 + 24) = &protocol witness table for MainActor;
          *(v98 + 32) = v96;
          *(v98 + 40) = v94;
          sub_DD34(0, 0, v95, &unk_3CF20, v98);
        }

        goto LABEL_15;
      }
    }

    else
    {
      v99 = v155;
      sub_39B48();

      swift_willThrow();
    }

LABEL_15:
    swift_beginAccess();
    v100 = v150;
    sub_39D18();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v101 = v152;
    v138(v151, v100, v152);
    v102 = v85;
    sub_39EF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    swift_beginAccess();
    sub_39D28();
    swift_endAccess();

    v140(v100, v101);
  }

  v103 = sub_B9D8();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = v103 & 1;
  v104 = v85;
  sub_39EF8();
  sub_CE94();
  v105 = sub_BB78();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = v105 & 1;
  v106 = v104;
  sub_39EF8();
  sub_CFB0();
  v107 = objc_allocWithZone(NSUserDefaults);
  v108 = sub_3A6D8();
  v109 = [v107 initWithSuiteName:v108];

  if (v109)
  {
    v110 = sub_3A6D8();
    v111 = [v109 BOOLForKey:v110];
  }

  else
  {
    v111 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = v111;
  v112 = v106;
  sub_39EF8();
  sub_D0CC();
  v113 = sub_BEE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = v113 & 1;
  v114 = v112;
  sub_39EF8();
  sub_D650();
  v115 = objc_allocWithZone(NSUserDefaults);
  v116 = sub_3A6D8();
  v117 = [v115 initWithSuiteName:v116];

  if (v117)
  {
    v118 = sub_3A6D8();
    v119 = [v117 BOOLForKey:v118];
  }

  else
  {
    v119 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = v119;
  v120 = v114;
  sub_39EF8();
  sub_D76C();
  v121 = objc_opt_self();
  v122 = [v121 defaultCenter];
  [v122 addObserver:v120 selector:"lowPowerModeChanged" name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v123 = [v121 defaultCenter];
  [v123 addObserver:v120 selector:"accountChanged" name:ACDAccountStoreDidChangeNotification object:0];

  v124 = [v121 defaultCenter];
  [v124 addObserver:v120 selector:"automaticDownloadsKindsChanged" name:SSDeviceAutomaticDownloadKindsChangedNotification object:0];

  v125 = [v121 defaultCenter];
  [v125 addObserver:v120 selector:"urlBagDidLoadNotification" name:ISURLBagDidLoadNotification object:0];

  v126 = [v121 defaultCenter];
  v127 = v120;
  v128 = sub_39C78();
  [v126 addObserver:v127 selector:"appDistributorsOrTrustedDevelopersChanged" name:v128 object:0];

  return v127;
}

uint64_t sub_F718(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(sub_39DF8() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = *(*(sub_39DB8() - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v5 = *(*(sub_39DD8() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = sub_39E18();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v9 = *(*(sub_39E48() - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v10 = *(*(sub_39D78() - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v11 = sub_39E28();
  v2[33] = v11;
  v12 = *(v11 - 8);
  v2[34] = v12;
  v13 = *(v12 + 64) + 15;
  v2[35] = swift_task_alloc();
  sub_3A7F8();
  v2[36] = sub_3A7E8();
  v15 = sub_3A798();
  v2[37] = v15;
  v2[38] = v14;

  return _swift_task_switch(sub_F944, v15, v14);
}

uint64_t sub_F944()
{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  *(v0 + 312) = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  swift_beginAccess();
  sub_1A5AC(v1 + v2, v0 + 16, &qword_52538, &qword_3CC00);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 184);

    sub_1A748((v0 + 16), v4);
    v5 = *(v0 + 280);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v8 = *(v0 + 240);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 280);
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    sub_1A614(v0 + 16, &qword_52538, &qword_3CC00);
    sub_39D68();
    sub_39E38();
    sub_39D98();
    v17 = *(v0 + 240);
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    sub_39DC8();
    sub_39DA8();
    sub_39DE8();
    sub_39E08();
    v21 = async function pointer to BagService.createBag(policy:)[1];
    v22 = swift_task_alloc();
    *(v0 + 320) = v22;
    *v22 = v0;
    v22[1] = sub_FBFC;
    v23 = *(v0 + 280);
    v24 = *(v0 + 240);

    return BagService.createBag(policy:)(v0 + 56, v24);
  }
}

uint64_t sub_FBFC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[29] + 8))(v2[30], v2[28]);
  v5 = v2[38];
  v6 = v2[37];
  if (v0)
  {
    v7 = sub_FEA4;
  }

  else
  {
    v7 = sub_FD84;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_FD84()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);

  (*(v5 + 8))(v3, v4);
  sub_1A674(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_1A6D8(v0 + 96, v7 + v1);
  swift_endAccess();
  sub_1A748((v0 + 56), v6);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_FEA4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v5 = v0[41];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];

  v13 = v0[1];

  return v13();
}

void sub_FF84()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];

  v3 = [v2 ams_DSID];
  if (v3)
  {

    if (v2)
    {
      v4 = [v2 username];
      if (v4)
      {
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  sub_39EF8();
  v6 = v5;
  v7 = sub_39E78();
  v8 = sub_3A8A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    *(v9 + 4) = v10;

    _os_log_impl(&dword_0, v7, v8, "Updated isSignedIn: %{BOOL}d", v9, 8u);
  }

  else
  {

    v7 = v2;
    v2 = v6;
  }
}

void sub_1017C()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19[-v3];
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  if (!v6)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_9:
    sub_1A614(&v22, &qword_52990, qword_3C2D0);
    goto LABEL_10;
  }

  v7 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds + 8];
  *&v20 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds];
  *(&v20 + 1) = v7;

  v8 = v6;
  v9 = [v8 objectForKeyedSubscript:sub_3AB38()];
  swift_unknownObjectRelease();

  if (v9)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_9;
  }

  sub_3CB4(&qword_52530, &qword_3CBB0);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v11 = v20;
  v12 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware + 8];
  *&v22 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *(&v22 + 1) = v12;
  __chkstk_darwin(v10);
  *&v19[-16] = &v22;
  v13 = sub_CAD4(sub_1B218, &v19[-32], v11);

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22) = v13 & 1;
  v14 = v0;
  sub_39EF8();
  sub_143E8();
  v15 = sub_3A818();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_3A7F8();
  v16 = v14;
  v17 = sub_3A7E8();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_DD34(0, 0, v4, &unk_3CBA8, v18);
}

uint64_t sub_104A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_39E48();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_39D78();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_3A7F8();
  v4[16] = sub_3A7E8();
  v12 = sub_3A798();
  v4[17] = v12;
  v4[18] = v11;

  return _swift_task_switch(sub_105F8, v12, v11);
}

uint64_t sub_105F8()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  v0[19] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10724;
    v4 = v0[9];

    return sub_F718((v0 + 2));
  }

  else
  {
    v6 = v0[16];

    v7 = v0[15];
    v8 = v0[12];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10724()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_10CF0;
  }

  else
  {
    v7 = sub_10860;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10860()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v8 = sub_3A858();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_44BC(v0 + 2);
  v9 = objc_allocWithZone(AMSAutomaticDownloadKindsFetchTask);
  v10 = v1;
  v11 = [v9 initWithAccount:v10 bag:v8];
  v0[22] = v11;
  swift_unknownObjectRelease();

  v0[23] = [v11 perform];
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_10A30;

  return sub_1101C();
}

uint64_t sub_10A30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = *(v4 + 136);
    v8 = *(v4 + 144);
    v9 = sub_10E80;
  }

  else
  {

    *(v4 + 208) = a1;
    v7 = *(v4 + 136);
    v8 = *(v4 + 144);
    v9 = sub_10B60;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10B60()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 72);

  v7 = [v1 enabledMediaKinds];
  v8 = sub_3A778();

  v9 = *&v6[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware + 8];
  *(v0 + 56) = *&v6[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *(v0 + 64) = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 56;
  LOBYTE(v2) = sub_CAD4(sub_1B218, v10, v8);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 216) = v2 & 1;
  v11 = v6;
  sub_39EF8();
  sub_143E8();

  v12 = *(v0 + 120);
  v13 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10CF0()
{
  v1 = v0[16];

  v2 = v0[21];
  v3 = v0[9];
  swift_errorRetain();
  v4 = sub_39E78();
  v5 = sub_3A888();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error when fetching automatic downloads: %{public}@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v11 = v0[15];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10E80()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[16];

  v4 = v0[25];
  v5 = v0[9];
  swift_errorRetain();
  v6 = sub_39E78();
  v7 = sub_3A888();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v6, v7, "Error when fetching automatic downloads: %{public}@", v10, 0xCu);
    sub_1A614(v11, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v13 = v0[15];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1101C()
{
  v1[19] = v0;
  v2 = sub_3CB4(&qword_52500, &qword_3C940);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_110E8, 0, 0);
}

uint64_t sub_110E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_112B8;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52508, AMSAutomaticDownloadKindsResult_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_187AC;
  v1[13] = &unk_4DE60;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_112B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_11434;
  }

  else
  {
    v3 = sub_113C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_113C8()
{
  v1 = v0[22];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_11434()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_114A8()
{
  v1[19] = v0;
  v2 = sub_3CB4(&qword_52520, &qword_3CA90);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_11574, 0, 0);
}

uint64_t sub_11574()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_11744;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52528, AMSNetworkConstraints_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_187AC;
  v1[13] = &unk_4DEB0;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_11744()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1B1D8;
  }

  else
  {
    v3 = sub_1B234;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_11854()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v36[-v3];
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];
  }

  else
  {
    v9 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36[15] = v9;
  v10 = v0;
  sub_39EF8();
  v11 = objc_allocWithZone(NSUserDefaults);
  v12 = sub_3A6D8();
  v13 = [v11 initWithSuiteName:v12];

  if (v13)
  {
    v14 = sub_3A6D8();
    v15 = [v13 BOOLForKey:v14];
  }

  else
  {
    v15 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36[14] = v15;
  v16 = v10;
  sub_39EF8();
  v17 = objc_allocWithZone(NSUserDefaults);
  v18 = sub_3A6D8();
  v19 = [v17 initWithSuiteName:v18];

  if (v19)
  {
    v20 = sub_3A6D8();
    v21 = [v19 BOOLForKey:v20];
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36[13] = v21;
  v22 = v16;
  sub_39EF8();
  sub_D888();
  v23 = v22;
  v24 = sub_39E78();
  v25 = sub_3A8A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    *(v26 + 4) = v36[12];

    _os_log_impl(&dword_0, v24, v25, "hasMultipleMarketplaces initialized to: %{BOOL}d", v26, 8u);
  }

  else
  {

    v24 = v23;
  }

  v27 = sub_3A818();
  v28 = *(*(v27 - 8) + 56);
  v28(v4, 1, 1, v27);
  sub_3A7F8();
  v29 = v23;
  v30 = sub_3A7E8();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v29;
  sub_DD34(0, 0, v4, &unk_3CB78, v31);

  v28(v4, 1, 1, v27);
  v32 = v29;
  v33 = sub_3A7E8();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v32;
  sub_DD34(0, 0, v4, &unk_3CB88, v34);
}

uint64_t sub_11D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_3A578();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_3A598();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = sub_3A7F8();
  v4[17] = sub_3A7E8();
  v11 = async function pointer to static AppDistributor.shouldShowAppInstallationSettings()[1];
  v12 = swift_task_alloc();
  v4[18] = v12;
  *v12 = v4;
  v12[1] = sub_11EA8;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_11EA8(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 153) = a1;

  v6 = sub_3A798();

  return _swift_task_switch(sub_11FEC, v6, v5);
}

uint64_t sub_11FEC()
{
  v1 = *(v0 + 153);
  v2 = *(v0 + 136);
  v3 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v1 != *(v0 + 152))
  {
    v4 = objc_allocWithZone(NSUserDefaults);
    v5 = sub_3A6D8();
    v6 = [v4 initWithSuiteName:v5];

    if (v6)
    {
      v7 = *(v0 + 153);
      v8 = sub_3A6D8();
      [v6 setBool:v7 forKey:v8];
    }

    v9 = *(v0 + 153);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 96);
    v25 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);
    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v16 = sub_3A8C8();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v9;
    *(v0 + 48) = sub_1A358;
    *(v0 + 56) = v17;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_12450;
    *(v0 + 40) = &unk_4DF50;
    v18 = _Block_copy((v0 + 16));
    v19 = v15;
    sub_3A588();
    *(v0 + 64) = &_swiftEmptyArrayStorage;
    sub_19344();
    sub_3CB4(&qword_524E8, &qword_3C8C8);
    sub_1939C();
    sub_3A948();
    sub_3A8D8();
    _Block_release(v18);

    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v10, v25);
    v20 = *(v0 + 56);
  }

  v21 = *(v0 + 120);
  v22 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

void sub_122E8(void *a1, char a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  sub_39EF8();
  v4 = sub_39E78();
  v5 = sub_3A8A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a2 & 1;
    _os_log_impl(&dword_0, v4, v5, "Updated hasMultipleMarketplaces to %{BOOL}d", v6, 8u);
  }
}

uint64_t sub_12450(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_12494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_3A7F8();
  v4[4] = sub_3A7E8();
  v5 = async function pointer to static AppDistributor.shouldShowInstallConfirmations(for:)[1];
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_12558;

  return static AppDistributor.shouldShowInstallConfirmations(for:)(0xD000000000000012, 0x800000000003DC50);
}

uint64_t sub_12558(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 50) = a1;

  v6 = sub_3A798();

  return _swift_task_switch(sub_1269C, v6, v5);
}

uint64_t sub_1269C()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v1 != *(v0 + 48))
  {
    v4 = *(v0 + 50);
    v5 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 49) = v4;
    v5;
    sub_39EF8();
    sub_D888();
    v6 = objc_allocWithZone(NSUserDefaults);
    v7 = sub_3A6D8();
    v8 = [v6 initWithSuiteName:v7];

    if (v8)
    {
      v9 = *(v0 + 50);
      v10 = sub_3A6D8();
      [v8 setBool:v9 forKey:v10];
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_12850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  sub_3A7F8();
  *(v5 + 24) = sub_3A7E8();
  v7 = sub_3A798();

  return _swift_task_switch(sub_128EC, v7, v6);
}

uint64_t sub_128EC()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;
  v4 = v3;
  sub_39EF8();
  v5 = *(v0 + 8);

  return v5();
}

void sub_129A0()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (BYTE8(v22[0]) != 1)
  {
    v10 = *&v22[0];
LABEL_14:
    v17 = [objc_opt_self() stringFromByteCount:v10 countStyle:2];
    sub_3A6F8();

    return;
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = v19;
        if (v19 >= 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_1A614(v22, &qword_52990, qword_3C2D0);
    }

    v10 = 200000000;
LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v22[0] = v10;
    BYTE8(v22[0]) = 0;
    v11 = v0;
    sub_39EF8();
    v12 = sub_3A818();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    sub_3A7F8();
    v13 = v11;
    v14 = v7;
    v15 = sub_3A7E8();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    v16[5] = v14;
    sub_DD34(0, 0, v4, &unk_3CA80, v16);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_12CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_39E48();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_39D78();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = sub_3A7F8();
  v5[23] = sub_3A7E8();
  v13 = sub_3A798();
  v5[24] = v13;
  v5[25] = v12;

  return _swift_task_switch(sub_12E38, v13, v12);
}

uint64_t sub_12E38()
{
  v0[26] = sub_3A6D8();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_12EEC;
  v2 = v0[14];

  return sub_F718((v0 + 2));
}

uint64_t sub_12EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;

  if (v0)
  {
    v4 = v2[26];

    v5 = v2[24];
    v6 = v2[25];
    v7 = sub_13770;
  }

  else
  {
    v2[28] = objc_opt_self();
    v5 = v2[24];
    v6 = v2[25];
    v7 = sub_13024;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_13024()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v9 = sub_3A858();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_44BC(v0 + 2);
  v0[29] = [v1 networkConstraintsForMediaType:v2 withBag:v9];
  swift_unknownObjectRelease();

  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_131D0;

  return sub_114A8();
}

uint64_t sub_131D0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 240);
  v7 = *v2;

  v8 = v4[29];
  if (v1)
  {

    v9 = v5[24];
    v10 = v5[25];
    v11 = sub_13770;
  }

  else
  {

    v5[31] = a1;
    v9 = v5[24];
    v10 = v5[25];
    v11 = sub_1331C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1331C()
{
  v1 = [*(v0 + 248) sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v2 = *(v0 + 248);
  *(v0 + 256) = v2;
  v3 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 64) & 1) != 0 || v1 != *(v0 + 56))
  {
    *(v0 + 104) = v1;
    v10 = sub_3AB38();
    v11 = *(v0 + 120);
    v12 = sub_3A6D8();
    [v11 setObject:v10 forKey:v12];

    swift_unknownObjectRelease();
    if (v1 >= 1)
    {
      goto LABEL_4;
    }

LABEL_10:
    v1 = 200000000;
    goto LABEL_4;
  }

  if (v1 < 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  *(v0 + 264) = v1;
  v4 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 80) & 1) != 0 || v1 != *(v0 + 72))
  {

    return _swift_task_switch(sub_1354C, 0, 0);
  }

  else
  {
    v5 = *(v0 + 184);

    v6 = *(v0 + 168);
    v7 = *(v0 + 144);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1354C()
{
  v1 = *(v0 + 176);
  *(v0 + 272) = sub_3A7E8();
  v3 = sub_3A798();

  return _swift_task_switch(sub_135D8, v3, v2);
}

uint64_t sub_135D8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 176);

  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = v3;
  *(v0 + 96) = 0;
  v5 = v4;
  sub_39EF8();

  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  return _swift_task_switch(sub_136F0, v6, v7);
}

uint64_t sub_136F0()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_13770()
{
  *(v0 + 256) = 0;
  v1 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 64) & 1) == 0)
  {
    v2 = *(v0 + 120);
    v3 = sub_3A6D8();
    [v2 setObject:0 forKey:v3];
  }

  *(v0 + 264) = 200000000;
  v4 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 80) & 1) != 0 || *(v0 + 72) != 200000000)
  {

    return _swift_task_switch(sub_1354C, 0, 0);
  }

  else
  {
    v5 = *(v0 + 184);

    v6 = *(v0 + 168);
    v7 = *(v0 + 144);

    v8 = *(v0 + 8);

    return v8();
  }
}

void sub_13924()
{
  v1 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  type metadata accessor for AppStoreSettingsDefaults();
  sub_AE80(v7);
  v8 = sub_39B68();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A5AC(v7, v5, &qword_524A8, &qword_3C7E0);
  v9 = v0;
  sub_39EF8();
  sub_1A614(v7, &qword_524A8, &qword_3C7E0);
  v10 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults;
  v9[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 0;
  v11 = sub_BD18();
  swift_getKeyPath();
  swift_getKeyPath();
  v16[15] = v11;
  v12 = v9;
  sub_39EF8();
  if (v9[v10] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    sub_B700(v16[12], 1);
  }

  if (sub_BD18())
  {
    v13 = sub_3AB28();
  }

  else
  {
    v13 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16[14] = v13 & 1;
  v14 = v12;
  sub_39EF8();
  if (v9[v10])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v16[13])
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    sub_B700(v15, 1);
  }

  v9[v10] = 1;
}

uint64_t sub_13C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_3A7F8();
  v4[9] = sub_3A7E8();
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_13D10;

  return sub_F718((v4 + 2));
}

uint64_t sub_13D10()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_3A798();
  if (v2)
  {
    v8 = sub_14274;
  }

  else
  {
    v8 = sub_13E6C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_13E6C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 48);
  sub_CA90((v0 + 16), *(v0 + 40));
  v4 = *(v2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutoPlayVideoDefaultSetting);
  v5 = *(v2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutoPlayVideoDefaultSetting + 8);
  v6 = sub_39E58();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_44BC((v0 + 16));
    v10 = v8 == 28271 && v9 == 0xE200000000000000;
    if (v10 || (sub_3AB28() & 1) != 0)
    {

      v11 = 0;
    }

    else
    {
      v21 = v8 == 0x6C6E6F5F69666977 && v9 == 0xE900000000000079;
      if (v21 || (sub_3AB28() & 1) != 0)
      {

        v11 = 1;
      }

      else if (v8 == 6710895 && v9 == 0xE300000000000000)
      {

        v11 = 2;
      }

      else
      {
        v29 = sub_3AB28();

        if (v29)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    if (sub_C084())
    {
      v12 = *(v0 + 56);
      v13 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults;
      v12[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 96) = v11;
      v14 = v12;
      sub_39EF8();
      if (v12[v13] == 1)
      {
        v15 = *(v0 + 56);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_39EE8();

        sub_B700(*(v0 + 99), 1);
      }

      if (v11)
      {
        v16 = sub_3AB28();
      }

      else
      {
        v16 = 1;
      }

      v22 = *(v0 + 56);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 97) = v16 & 1;
      v23 = v22;
      sub_39EF8();
      if (v12[v13])
      {
        v24 = *(v0 + 56);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_39EE8();

        if (*(v0 + 98))
        {
          v25 = 0;
        }

        else
        {
          v25 = 2;
        }

        sub_B700(v25, 1);
      }

      sub_B700(v11, 0);
      v12[v13] = 1;
    }
  }

  else
  {
    v17 = *(v0 + 56);
    sub_44BC((v0 + 16));
    v18 = sub_39E78();
    v19 = sub_3A888();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Auto play video setting was missing from the bag", v20, 2u);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_14274()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  swift_errorRetain();
  v4 = sub_39E78();
  v5 = sub_3A888();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error when loading auto play video setting from the bag: %{public}@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_143E8()
{
  v1 = v0;
  v2 = sub_3A578();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3A598();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3A5B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v30 - v18;
  v20 = *&v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued] = v22;
    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v33 = v3;
    v35 = v7;
    v32 = sub_3A8C8();
    sub_3A5A8();
    sub_3A5C8();
    v34 = *(v12 + 8);
    v34(v16, v11);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v1;
    aBlock[4] = sub_19324;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12450;
    aBlock[3] = &unk_4DE10;
    v25 = _Block_copy(aBlock);
    v26 = v36;
    v31 = v11;
    v27 = v25;

    v28 = v1;
    sub_3A588();
    v37 = &_swiftEmptyArrayStorage;
    sub_19344();
    sub_3CB4(&qword_524E8, &qword_3C8C8);
    sub_1939C();
    sub_3A948();
    v29 = v32;
    sub_3A8B8();
    _Block_release(v27);

    (*(v33 + 8))(v6, v2);
    (*(v26 + 8))(v10, v35);
    v34(v19, v31);
  }

  return result;
}

uint64_t sub_147C4(char a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  *(v2 + 320) = a1;
  v3 = sub_39E48();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = sub_39D78();
  *(v2 + 144) = v6;
  v7 = *(v6 - 8);
  *(v2 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  sub_3A7F8();
  *(v2 + 168) = sub_3A7E8();
  v10 = sub_3A798();
  *(v2 + 176) = v10;
  *(v2 + 184) = v9;

  return _swift_task_switch(sub_14918, v10, v9);
}

uint64_t sub_14918()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  v0[24] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_14A48;
    v4 = v0[14];

    return sub_F718((v0 + 2));
  }

  else
  {
    v6 = v0[21];

    v7 = v0[20];
    v8 = v0[17];

    v9 = v0[1];

    return v9(2);
  }
}

uint64_t sub_14A48()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_15424;
  }

  else
  {
    v7 = sub_14B84;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_14B84()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v8 = sub_3A858();
  v0[27] = v8;
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_44BC(v0 + 2);
  v9 = [objc_allocWithZone(AMSAutomaticDownloadKindsFetchTask) initWithAccount:v1 bag:v8];
  v0[28] = v9;
  v0[29] = [v9 perform];
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_14D34;

  return sub_1101C();
}

uint64_t sub_14D34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v9 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_155B8;
  }

  else
  {

    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_14E50;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_14E50()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 320);
  v3 = [*(v0 + 248) enabledMediaKinds];
  v4 = sub_3A778();

  *(v0 + 104) = v4;
  v5 = v1 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware;
  v6 = *(v1 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
  *(v0 + 264) = v6;
  v7 = *(v5 + 8);
  *(v0 + 272) = v7;
  v8 = *(v0 + 256);
  if (v2 == 1)
  {
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 88;
    v10 = sub_CAD4(sub_1B218, v9, v4);

    if ((v10 & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_30740(0, *(v4 + 16) + 1, 1, v4);
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_30740((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
    }

    goto LABEL_19;
  }

  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 56;
  v15 = sub_CAD4(sub_19528, v14, v4);

  if (v15)
  {
    v16 = *(v0 + 112);
    v17 = sub_19C14((v0 + 104), v16);

    v18 = *(v0 + 104);
    v19 = *(v18 + 16);
    if (v17 > v19)
    {
      __break(1u);
    }

    else if ((v17 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v19, v17 - v19))
      {
        v20 = *(v0 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v17 > *(v18 + 24) >> 1)
        {
          if (v19 <= v17)
          {
            v22 = v17;
          }

          else
          {
            v22 = v19;
          }

          *(v0 + 104) = sub_30740(isUniquelyReferenced_nonNull_native, v22, 1, v18);
        }

        sub_30F94(v17, v19, 0);
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  v23 = *(v0 + 216);
  v24 = *(v0 + 192);
  v25 = objc_allocWithZone(AMSAutomaticDownloadKindsSetTask);
  v26 = v24;
  swift_unknownObjectRetain();
  isa = sub_3A768().super.isa;

  v28 = [v25 initWithEnabledMediaKinds:isa account:v26 bag:v23];
  *(v0 + 280) = v28;
  swift_unknownObjectRelease();

  *(v0 + 288) = [v28 perform];
  v29 = swift_task_alloc();
  *(v0 + 296) = v29;
  *v29 = v0;
  v29[1] = sub_15198;

  sub_1101C();
}

uint64_t sub_15198(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = *(v4 + 176);
    v8 = *(v4 + 184);
    v9 = sub_15764;
  }

  else
  {

    *(v4 + 312) = a1;
    v7 = *(v4 + 176);
    v8 = *(v4 + 184);
    v9 = sub_152C8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_152C8()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[31];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[24];
  v7 = v0[21];

  v8 = [v1 enabledMediaKinds];
  v9 = sub_3A778();

  v0[9] = v5;
  v0[10] = v3;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 9;
  v11 = sub_CAD4(sub_1B218, v10, v9);

  swift_unknownObjectRelease();

  v12 = v0[20];
  v13 = v0[17];

  v14 = v0[1];

  return v14(v11 & 1);
}

uint64_t sub_15424()
{
  v1 = v0[21];

  v2 = v0[26];
  v3 = v0[14];
  swift_errorRetain();
  v4 = sub_39E78();
  v5 = sub_3A888();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error when toggling automatic downloads: %{public}@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v11 = v0[20];
  v12 = v0[17];

  v13 = v0[1];

  return v13(2);
}

uint64_t sub_155B8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[21];

  swift_unknownObjectRelease();
  v5 = v0[32];
  v6 = v0[14];
  swift_errorRetain();
  v7 = sub_39E78();
  v8 = sub_3A888();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_0, v7, v8, "Error when toggling automatic downloads: %{public}@", v11, 0xCu);
    sub_1A614(v12, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v14 = v0[20];
  v15 = v0[17];

  v16 = v0[1];

  return v16(2);
}

uint64_t sub_15764()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[21];

  swift_unknownObjectRelease();

  v7 = v0[38];
  v8 = v0[14];
  swift_errorRetain();
  v9 = sub_39E78();
  v10 = sub_3A888();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[24];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v9, v10, "Error when toggling automatic downloads: %{public}@", v13, 0xCu);
    sub_1A614(v14, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v16 = v0[20];
  v17 = v0[17];

  v18 = v0[1];

  return v18(2);
}

void sub_1591C(uint64_t a1, void *a2)
{
  v3 = sub_3CB4(&unk_524C0, &qword_3C850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
      __break(1u);
      return;
    }

    *(Strong + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued) = v11;
    if (v11)
    {

      return;
    }

    v12 = sub_3A818();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = v8;
    v14 = a2;
    v15 = sub_3A7E8();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    v16[5] = v14;
    sub_DD34(0, 0, v6, &unk_3C8D8, v16);
  }
}

uint64_t sub_15B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_3A7F8();
  v5[4] = sub_3A7E8();
  v7 = sub_3A798();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_15BB8, v7, v6);
}

void sub_15BB8()
{
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued;
  *(v0 + 56) = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    v7 = *(v0 + 72);
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_15CC0;
    v9 = *(v0 + 24);

    sub_147C4(v7, v9);
  }
}

uint64_t sub_15CC0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 75) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return _swift_task_switch(sub_15DE8, v5, v4);
}

uint64_t sub_15DE8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v5 = *(v3 + v1);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 75);
    *(*(v0 + 16) + *(v0 + 56)) = v7;
    if (v8 != 2 && !v7 && !*(*(v0 + 16) + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued))
    {
      v9 = *(v0 + 75) & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_39EE8();

      if (*(v0 + 73) != v9)
      {
        v10 = *(v0 + 75);
        v11 = *(v0 + 16);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 74) = v10 & 1;
        v11;
        sub_39EF8();
        sub_143E8();
      }
    }

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_15F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_3CB4(&qword_52580, &qword_3CF30);
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = sub_39E48();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  v11 = sub_39D78();
  v4[34] = v11;
  v12 = *(v11 - 8);
  v4[35] = v12;
  v13 = *(v12 + 64) + 15;
  v4[36] = swift_task_alloc();
  sub_3A7F8();
  v4[37] = sub_3A7E8();
  v15 = sub_3A798();
  v4[38] = v15;
  v4[39] = v14;

  return _swift_task_switch(sub_160FC, v15, v14);
}

uint64_t sub_160FC()
{
  v1 = v0[27];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[41] = v3;
    *v3 = v0;
    v3[1] = sub_16214;

    return sub_F718((v0 + 18));
  }

  else
  {
    v5 = v0[37];

    v6 = v0[36];
    v7 = v0[33];
    v8 = v0[30];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_16214()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_16828;
  }

  else
  {
    v7 = sub_16350;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_16350()
{
  v1 = v0;
  v2 = v0[35];
  v3 = v0[36];
  v14 = v0 + 2;
  v15 = v0 + 26;
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v1[31];
  v16 = v1[30];
  v9 = v1[28];
  v8 = v1[29];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v10 = sub_3A858();
  v1[43] = v10;
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);
  sub_44BC(v1 + 18);
  v11 = [objc_opt_self() shouldEnableResetUIFromBag:v10];
  v1[44] = v11;
  v1[2] = v1;
  v1[7] = v15;
  v1[3] = sub_16604;
  swift_continuation_init();
  v1[17] = v9;
  v12 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52588, NSNumber_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v8 + 32))(v12, v16, v9);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_16B80;
  v1[13] = &unk_4E0E0;
  [v11 resultWithCompletion:?];
  (*(v8 + 8))(v12, v9);

  return _swift_continuation_await(v14);
}

uint64_t sub_16604()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = sub_169C4;
  }

  else
  {
    v6 = sub_16734;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_16734()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);

  v5 = *(v0 + 208);

  LOBYTE(v2) = [v5 BOOLValue];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 368) = v2;
  sub_39EF8();

  swift_unknownObjectRelease();
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_16828()
{
  v1 = v0[37];

  v2 = v0[42];
  v3 = v0[40];
  swift_errorRetain();
  v4 = sub_39E78();
  v5 = sub_3A888();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error occured when determine whether to show reset identifiers button: %{public}@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[30];

  v14 = v0[1];

  return v14();
}

uint64_t sub_169C4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[37];

  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[45];
  v6 = v0[40];
  swift_errorRetain();
  v7 = sub_39E78();
  v8 = sub_3A888();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[40];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_0, v7, v8, "Error occured when determine whether to show reset identifiers button: %{public}@", v11, 0xCu);
    sub_1A614(v12, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v14 = v0[36];
  v15 = v0[33];
  v16 = v0[30];

  v17 = v0[1];

  return v17();
}

void sub_16B80(uint64_t a1, void *a2, void *a3)
{
  sub_CA90((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_3CB4(&qword_52580, &qword_3CF30);
    sub_3A7B8();
  }

  else if (a2)
  {
    v6 = a2;
    sub_3CB4(&qword_52580, &qword_3CF30);
    sub_3A7C8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_16C30()
{
  sub_4348(&unk_52510, &qword_3C948);
  sub_3A7D8();
  return sub_3A7B8();
}

uint64_t sub_16C98()
{
  sub_4348(&unk_52510, &qword_3C948);
  sub_3A7D8();
  return sub_3A7C8();
}

uint64_t sub_16D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_3A7F8();
  v4[9] = sub_3A7E8();
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_16DBC;

  return sub_F718((v4 + 2));
}

uint64_t sub_16DBC()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_3A798();
  if (v2)
  {
    v8 = sub_16F88;
  }

  else
  {
    v8 = sub_16F18;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_16F18()
{
  v1 = v0[9];

  sub_1AF88();
  sub_44BC(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_16F88()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  swift_errorRetain();
  v4 = sub_39E78();
  v5 = sub_3A888();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error occurred when resetting metrics identifiers: %{public}@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_170FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17194, v6, v5);
}

uint64_t sub_17194()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = [objc_opt_self() processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v4;
  v5 = v2;
  sub_39EF8();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17334, v6, v5);
}

uint64_t sub_17334()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_FF84();
  v3 = v0[1];

  return v3();
}

uint64_t sub_173B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_1B1E8, v6, v5);
}

uint64_t sub_17470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17508, v6, v5);
}

uint64_t sub_17508()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1017C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17624, v6, v5);
}

uint64_t sub_17624()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_11854();
  v3 = v0[1];

  return v3();
}

void sub_176A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_3CB4(&unk_524C0, &qword_3C850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_3A818();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_3A7F8();
  v11 = a1;
  v12 = sub_3A7E8();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_DD34(0, 0, v9, a4, v13);
}

void sub_177D4(void *a1)
{
  v3 = sub_3CB4(&unk_524C0, &qword_3C850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = [a1 policies];
  v8 = sub_1AF40(0, &unk_52D50, CTDataUsagePolicies_ptr);
  sub_18510();
  v9 = sub_3A838();

  v37 = v1;
  v38 = v6;
  v40 = v9;
  v41 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_3A978();
    sub_3A848();
    v9 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v13 = v50;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v12 = 0;
  }

  v39 = v11;
  v17 = (v11 + 64) >> 6;
  v43 = 0x800000000003DC50;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while (1)
      {
        v42 = v13;
        v24 = v22;
        v25 = [v22 bundleId];
        v26 = sub_3A6F8();
        v28 = v27;

        if (v26 == 0xD000000000000012 && v43 == v28)
        {
          break;
        }

        v30 = sub_3AB28();

        if (v30)
        {
          goto LABEL_25;
        }

        v12 = v20;
        v13 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v23 = sub_3A9D8();
        if (v23)
        {
          v44 = v23;
          swift_dynamicCast();
          v22 = v45;
          v20 = v12;
          v21 = v13;
          if (v45)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_18578();

      v31 = [v24 cellular] == &dword_0 + 1;
      v32 = sub_3A818();
      v33 = v38;
      (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
      sub_3A7F8();
      v34 = v37;
      v35 = sub_3A7E8();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = &protocol witness table for MainActor;
      *(v36 + 32) = v34;
      *(v36 + 40) = v31;
      sub_DD34(0, 0, v33, &unk_3C860, v36);
    }

    else
    {
LABEL_23:
      sub_18578();
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_23;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_17C0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSettingsViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppStoreSettingsViewModel()
{
  result = qword_52468;
  if (!qword_52468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_180E8()
{
  sub_18478(319, &qword_52478);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_183CC(319, &qword_52480, &qword_52488, &qword_3C7D0);
    if (v4 <= 0x3F)
    {
      v17 = *(v3 - 8) + 64;
      sub_183CC(319, &qword_52490, &qword_52498, &qword_3C7D8);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_183CC(319, &qword_524A0, &qword_524A8, &qword_3C7E0);
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_18420();
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_18478(319, &qword_524B8);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              v13 = sub_39D58();
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                v15 = sub_39E98();
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_183CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_4348(a3, a4);
    v5 = sub_39F08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_18420()
{
  if (!qword_524B0)
  {
    sub_39D48();
    v0 = sub_39F08();
    if (!v1)
    {
      atomic_store(v0, &qword_524B0);
    }
  }
}

void sub_18478(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_39F08();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_184D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppStoreSettingsViewModel();
  result = sub_39EB8();
  *a1 = result;
  return result;
}

unint64_t sub_18510()
{
  result = qword_524D0;
  if (!qword_524D0)
  {
    sub_1AF40(255, &unk_52D50, CTDataUsagePolicies_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524D0);
  }

  return result;
}

uint64_t sub_18724(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v9;
  v10 = sub_39EF8();
  return a7(v10);
}

void sub_187AC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_CA90((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    swift_errorRetain();
    sub_16C30();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();
    sub_16C98();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1886C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v5;
  return result;
}

uint64_t sub_188EC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_39EF8();
}

uint64_t sub_18A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_18AB0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_39EF8();
}

uint64_t sub_18B44(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();
}

uint64_t sub_18BBC(uint64_t a1, void **a2)
{
  v4 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_1A5AC(a1, &v14 - v9, &qword_524A8, &qword_3C7E0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A5AC(v10, v8, &qword_524A8, &qword_3C7E0);
  v12 = v11;
  sub_39EF8();
  return sub_1A614(v10, &qword_524A8, &qword_3C7E0);
}

uint64_t sub_18D10(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_39EF8();
}

uint64_t sub_18D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v5;
  return result;
}

uint64_t sub_18E00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_12850(a1, v4, v5, v6, v7);
}

uint64_t sub_18EC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18FBC;

  return v7(a1);
}

uint64_t sub_18FBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_190B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_190EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B210;

  return sub_18EC4(a1, v5);
}

uint64_t sub_191A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_41F0;

  return sub_18EC4(a1, v5);
}

uint64_t sub_192AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_192E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1932C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19344()
{
  result = qword_524E0;
  if (!qword_524E0)
  {
    sub_3A578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524E0);
  }

  return result;
}

unint64_t sub_1939C()
{
  result = qword_524F0;
  if (!qword_524F0)
  {
    sub_4348(&qword_524E8, &qword_3C8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524F0);
  }

  return result;
}

uint64_t sub_19404(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_15B20(a1, v4, v5, v7, v6);
}

id sub_19558()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  wifiCapability = MobileGestalt_get_wifiCapability();

  if (!wifiCapability)
  {
    return 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    cellularDataCapability = MobileGestalt_get_cellularDataCapability();

    if (!cellularDataCapability)
    {
      return 0;
    }

    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v6 = sub_3A8C8();
    v7 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v6];

    v28 = 0;
    v27 = v7;
    v8 = [v7 getSubscriptionInfoWithError:&v28];
    if (!v8)
    {
      v19 = v28;
      sub_39B48();

      swift_willThrow();

      return 0;
    }

    v9 = v8;
    v10 = v28;
    v11 = [v9 subscriptions];

    if (!v11)
    {
      goto LABEL_33;
    }

    sub_1AF40(0, &qword_52578, CTXPCServiceSubscriptionContext_ptr);
    v12 = sub_3A778();

    if (v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3AAE8())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_3AA58();
        }

        else
        {
          if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        sub_3A7F8();
        sub_3A7E8();
        sub_3A798();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v18 = [v16 slotID];

        if (v18 == &dword_0 + 1)
        {

          v20 = sub_3A6D8();
          v21 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          v28 = 0;
          v22 = [v27 copyCarrierBundleValue:v16 key:v20 bundleType:v21 error:&v28];

          v23 = v28;
          if (v22)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              LOBYTE(v28) = 2;
              v24 = v23;
              sub_3A788();

              if (v28 != 2 && (v28 & 1) == 0)
              {
LABEL_33:

                return 0;
              }
            }

            else
            {
              v26 = v23;
            }
          }

          else
          {
            v25 = v28;
            sub_39B48();

            swift_willThrow();
          }

          return v27;
        }

        ++v14;
        if (v17 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

Swift::Int sub_19954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB4(&qword_52570, &qword_3CF28);
    v3 = sub_3AA18();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_3AB48();

      sub_3A738();
      result = sub_3AB58();
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
          result = sub_3AB28();
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

uint64_t sub_19ABC(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = (a2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
  sub_3A7F8();
  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v6 == *v11 && v5 == v11[1])
    {
      break;
    }

    v8 = sub_3AB28();

    if (v8)
    {
      return v3;
    }

    if (v10 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_19C14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_19ABC(*a1, a2);
  v27 = result;
  if (v2)
  {
    return v27;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v27;
    }

    v26 = (a2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
    v10 = 16 * result;
    while (v7 < v8)
    {
      v11 = v4 + v10;
      v13 = *(v4 + v10 + 48);
      v12 = *(v4 + v10 + 56);
      sub_3A7F8();

      sub_3A7E8();
      sub_3A798();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v13 == *v26 && v12 == v26[1])
      {
      }

      else
      {
        v14 = sub_3AB28();

        if ((v14 & 1) == 0)
        {
          v15 = v27;
          if (v7 != v27)
          {
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v27 >= *v9)
            {
              goto LABEL_27;
            }

            if (v7 >= *v9)
            {
              goto LABEL_28;
            }

            v16 = (v4 + 32 + 16 * v27);
            v18 = *v16;
            v17 = v16[1];
            v19 = *(v11 + 48);
            v20 = *(v11 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_19544(v4);
            }

            v21 = v4 + 16 * v27;
            v22 = *(v21 + 40);
            *(v21 + 32) = v19;
            *(v21 + 40) = v20;

            if (v7 >= *(v4 + 16))
            {
              goto LABEL_29;
            }

            v23 = v4 + v10;
            v24 = *(v4 + v10 + 56);
            *(v23 + 48) = v18;
            *(v23 + 56) = v17;

            *a1 = v4;
            v15 = v27;
          }

          v27 = v15 + 1;
        }
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 16;
      if (v7 == v8)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_19E64(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_19F24(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_D488();
}

void sub_19F74(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_D570();
}

uint64_t sub_19FA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_19FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_12CE4(a1, v4, v5, v7, v6);
}

uint64_t sub_1A1B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_11D44(a1, v4, v5, v6);
}

uint64_t sub_1A26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_12494(a1, v4, v5, v6);
}

uint64_t sub_1A320()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1A364()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1A39C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_DAD0(a1, v4, v5, v6);
}

uint64_t sub_1A450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_104A8(a1, v4, v5, v6);
}

uint64_t sub_1A504(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_3AB28() & 1;
  }
}

uint64_t sub_1A5AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3CB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A614(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3CB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52538, &qword_3CC00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_1758C(a1, v4, v5, v6);
}

uint64_t sub_1AADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_17470(a1, v4, v5, v6);
}

uint64_t sub_1AB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_173B8(a1, v4, v5, v6);
}

uint64_t sub_1AC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_41F0;

  return sub_1729C(a1, v4, v5, v6);
}

uint64_t sub_1ACF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_170FC(a1, v4, v5, v6);
}

uint64_t sub_1ADAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1ADEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_15F44(a1, v4, v5, v6);
}

uint64_t sub_1AEF4(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1AF40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF88()
{
  v0 = sub_39E48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_39D78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v10 = sub_3A858();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  v11 = [objc_opt_self() ams_sharedAccountStore];
  v12 = [v11 ams_activeiTunesAccount];

  v13 = [objc_opt_self() performUserResetForStoresInBag:v10 forAccount:v12];
  swift_unknownObjectRelease();
}

uint64_t sub_1B238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for AppStoreSettingsView();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  *v12 = sub_1B740;
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = a5 + v10[7];
  sub_3A448();
  *v13 = v20;
  *(v13 + 1) = *(&v20 + 1);
  v14 = a5 + v10[8];
  sub_3A448();
  *v14 = v20;
  *(v14 + 1) = *(&v20 + 1);
  v15 = a5 + v10[9];
  sub_3A448();
  *v15 = v20;
  *(v15 + 1) = *(&v20 + 1);
  v16 = (a5 + v10[10]);
  *v16 = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v17 = v10[11];
  sub_3CB4(&unk_52600, &unk_3CFD0);
  sub_3A448();
  *(a5 + v17) = v20;
  v18 = a5 + v10[12];
  return sub_39E88();
}

uint64_t sub_1B434(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7475416F65646956;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x800000000003DC10;
  }

  else
  {
    v5 = 0xED000079616C706FLL;
  }

  if (*a2)
  {
    v6 = 0x7475416F65646956;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xED000079616C706FLL;
  }

  else
  {
    v7 = 0x800000000003DC10;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3AB28();
  }

  return v9 & 1;
}

Swift::Int sub_1B4EC()
{
  v1 = *v0;
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_1B580()
{
  *v0;
  sub_3A738();
}

Swift::Int sub_1B600()
{
  v1 = *v0;
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_1B690@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4D8B8;
  v8._object = v3;
  v5 = sub_3AB08(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B6F0(unint64_t *a1@<X8>)
{
  v2 = 0x800000000003DC10;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x7475416F65646956;
    v2 = 0xED000079616C706FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

id sub_1B740()
{
  v0 = objc_allocWithZone(type metadata accessor for AppStoreSettingsViewModel());

  return [v0 init];
}

uint64_t sub_1B778@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v136 = &v113 - v4;
  v5 = sub_39C18();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v141 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_39B58();
  v139 = *(v140 - 8);
  v8 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3A6C8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v137 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_3A5D8();
  v133 = *(v134 - 8);
  v13 = *(v133 + 64);
  __chkstk_darwin(v134);
  v144 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_39F68();
  v132 = *(v131 - 8);
  v15 = *(v132 + 64);
  __chkstk_darwin(v131);
  v129 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppStoreSettingsView();
  v18 = *(v17 - 8);
  v150 = v17 - 8;
  v145 = v18;
  v153 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v152 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_39B68();
  v115 = *(v116 - 8);
  v20 = *(v115 + 64);
  v21 = __chkstk_darwin(v116);
  v135 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v151 = (&v113 - v23);
  v122 = sub_3A158();
  v120 = *(v122 - 8);
  v24 = *(v120 + 64);
  __chkstk_darwin(v122);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3CB4(&qword_52718, &qword_3D128);
  v118 = *(v27 - 8);
  v28 = *(v118 + 64);
  __chkstk_darwin(v27);
  v30 = &v113 - v29;
  v31 = sub_3CB4(&qword_52720, &qword_3D130);
  v119 = *(v31 - 8);
  v32 = *(v119 + 64);
  __chkstk_darwin(v31);
  v34 = &v113 - v33;
  v121 = sub_3CB4(&qword_52728, &qword_3D138);
  v123 = *(v121 - 8);
  v35 = *(v123 + 64);
  __chkstk_darwin(v121);
  v37 = &v113 - v36;
  v124 = sub_3CB4(&qword_52730, &qword_3D140);
  v38 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v146 = &v113 - v39;
  v125 = sub_3CB4(&qword_52738, &qword_3D148);
  v126 = *(v125 - 8);
  v40 = *(v126 + 64);
  __chkstk_darwin(v125);
  v147 = &v113 - v41;
  v127 = sub_3CB4(&qword_52740, &qword_3D150);
  v128 = *(v127 - 8);
  v42 = *(v128 + 64);
  __chkstk_darwin(v127);
  v148 = &v113 - v43;
  v142 = sub_3CB4(&qword_52748, &qword_3D158);
  v130 = *(v142 - 8);
  v44 = *(v130 + 64);
  __chkstk_darwin(v142);
  v149 = &v113 - v45;
  v114 = sub_3CB4(&qword_52750, &qword_3D160);
  v113 = *(v114 - 8);
  v46 = *(v113 + 64);
  __chkstk_darwin(v114);
  v143 = &v113 - v47;
  v155 = v1;
  sub_3CB4(&qword_52758, &qword_3D168);
  sub_6254(&qword_52760, &qword_52758, &qword_3D168);
  sub_3A2B8();
  v48 = sub_6254(&qword_52768, &qword_52718, &qword_3D128);
  sub_3A2F8();
  (*(v118 + 8))(v30, v27);
  v49 = v120;
  v50 = v122;
  (*(v120 + 104))(v26, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v122);
  v156 = v27;
  v157 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v49 + 8))(v26, v50);
  (*(v119 + 8))(v34, v31);
  sub_33DC4(v151);
  v156 = sub_3A708();
  v157 = v52;
  v161 = v31;
  v162 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_6144();
  v53 = v146;
  v54 = v121;
  sub_3A368();

  (*(v123 + 8))(v37, v54);
  v55 = v154;
  v56 = v152;
  v151 = type metadata accessor for AppStoreSettingsView;
  sub_296EC(v154, v152, type metadata accessor for AppStoreSettingsView);
  v57 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v145 = *(v145 + 80);
  v58 = swift_allocObject();
  sub_28818(v56, v58 + v57);
  v59 = v124;
  v60 = &v53[*(v124 + 36)];
  *v60 = sub_2887C;
  v60[1] = v58;
  v60[2] = 0;
  v60[3] = 0;
  v61 = v55 + *(v150 + 48);
  v62 = *(v61 + 8);
  v156 = *v61;
  v157 = v62;
  v158 = *(v61 + 16);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  v156 = v161;
  v157 = v162;
  v63 = v55;
  v64 = v56;
  sub_296EC(v63, v56, type metadata accessor for AppStoreSettingsView);
  v65 = swift_allocObject();
  sub_28818(v56, v65 + v57);
  v66 = sub_3CB4(&qword_51DC0, &qword_3DA50);
  v67 = sub_28920();
  v68 = sub_28AB0();
  v69 = v146;
  sub_3A3D8();

  sub_1A614(v69, &qword_52730, &qword_3D140);
  v70 = v129;
  v71 = v154;
  sub_28F60(&qword_525F0, &qword_3C2C0, &type metadata accessor for ScenePhase, v129);
  sub_296EC(v71, v64, v151);
  v123 = v57;
  v72 = swift_allocObject();
  sub_28818(v64, v72 + v57);
  v156 = v59;
  v157 = v66;
  *&v158 = v67;
  *(&v158 + 1) = v68;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_28BD4(&qword_52790, &type metadata accessor for ScenePhase);
  v75 = v147;
  v76 = v125;
  v77 = v131;
  sub_3A3C8();

  v78 = v77;
  (*(v132 + 8))(v70, v77);
  (*(v126 + 8))(v75, v76);
  v79 = v152;
  sub_296EC(v154, v152, v151);
  v80 = v123;
  v81 = swift_allocObject();
  v82 = v80;
  sub_28818(v79, v81 + v80);
  v147 = sub_3CB4(&qword_52798, &qword_3D178);
  v156 = v76;
  v157 = v78;
  *&v158 = v73;
  *(&v158 + 1) = v74;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = sub_4468();
  v85 = sub_28C9C();
  v86 = v148;
  v87 = v127;
  sub_3A388();

  (*(v128 + 8))(v86, v87);
  v88 = v154;
  v89 = (v154 + *(v150 + 44));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v161) = v90;
  v162 = v91;
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A478();
  v92 = v152;
  sub_296EC(v88, v152, v151);
  v93 = swift_allocObject() + v82;
  v94 = v144;
  sub_28818(v92, v93);
  v156 = v87;
  v157 = &type metadata for AppStoreSettingsRoute;
  v95 = v136;
  *&v158 = v147;
  *(&v158 + 1) = v83;
  v159 = v84;
  v160 = v85;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_C484();
  v154 = v96;
  v98 = v142;
  v99 = v149;
  sub_3A3B8();
  v100 = v134;

  v101 = v133;

  (*(v130 + 8))(v99, v98);
  *v94 = 0xD000000000000012;
  v94[1] = 0x800000000003DC50;
  (*(v101 + 104))(v94, enum case for SettingsEventImage.applicationIcon(_:), v100);
  sub_3A668();
  type metadata accessor for AppStoreSettingsViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v103 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v104 = [v103 bundleURL];

  v105 = v138;
  sub_39BC8();

  (*(v139 + 104))(v105, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v140);
  sub_39C08();
  v106 = v135;
  sub_39B78();
  sub_39BD8();
  v107 = sub_39BF8();
  v108 = *(v107 - 8);
  result = (*(v108 + 48))(v95, 1, v107);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v156 = v142;
    v157 = &type metadata for OnboardingPrivacyViewWrapper;
    *&v158 = v154;
    *(&v158 + 1) = v97;
    swift_getOpaqueTypeConformance2();
    v110 = v144;
    v111 = v114;
    v112 = v143;
    sub_3A308();
    (*(v115 + 8))(v106, v116);
    (*(v101 + 8))(v110, v100);
    (*(v113 + 8))(v112, v111);
    return (*(v108 + 8))(v95, v107);
  }

  return result;
}

uint64_t sub_1CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_3CB4(&qword_52878, &qword_3D1C8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v89 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v82 - v7;
  v8 = sub_3CB4(&qword_52880, &qword_3D1D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v101 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v100 = &v82 - v13;
  v14 = __chkstk_darwin(v12);
  v97 = &v82 - v15;
  __chkstk_darwin(v14);
  v96 = &v82 - v16;
  v17 = sub_39B68();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v85 = (&v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v98 = *(v87 - 8);
  v20 = v98[8];
  v21 = __chkstk_darwin(v87);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v82 - v23;
  v24 = type metadata accessor for AppStoreSettingsView();
  v84 = *(v24 - 8);
  v25 = *(v84 + 64);
  __chkstk_darwin(v24 - 8);
  v83 = sub_3CB4(&qword_52890, &qword_3D1E0);
  v26 = *(*(v83 - 8) + 64);
  v27 = __chkstk_darwin(v83);
  v95 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v104 = &v82 - v29;
  v30 = sub_3CB4(&qword_52898, &qword_3D1E8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v93 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v82 - v34;
  v36 = sub_3CB4(&qword_528A0, &qword_3D1F0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v92 = &v82 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v103 = &v82 - v40;
  v41 = type metadata accessor for AppStoreSystemPolicyView();
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v91 = &v82 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v102 = (&v82 - v45);
  sub_3A7F8();
  v86 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  v47 = v102;
  *v102 = KeyPath;
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  swift_storeEnumTagMultiPayload();
  v48 = v47 + *(v41 + 20);
  *v48 = sub_6384;
  *(v48 + 1) = 0;
  v48[16] = 0;
  sub_1D6E0(v103);
  v90 = v35;
  v49 = sub_1DD74(v35);
  __chkstk_darwin(v49);
  *(&v82 - 2) = a1;
  sub_2596C(a1, &v106);
  sub_3CB4(&qword_528A8, &qword_3D1F8);
  sub_3CB4(&qword_528B0, &qword_3D200);
  sub_29510();
  sub_295F4();
  v50 = v104;
  sub_3A558();
  sub_296EC(a1, &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v51 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v52 = swift_allocObject();
  v53 = sub_28818(&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51);
  v54 = (v50 + *(v83 + 36));
  *v54 = sub_29698;
  v54[1] = v52;
  v54[2] = 0;
  v54[3] = 0;
  __chkstk_darwin(v53);
  *(&v82 - 2) = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_36084(v85);
  *&v106 = sub_3A708();
  *(&v106 + 1) = v55;
  sub_6144();
  v56 = sub_3A2E8();
  v58 = v57;
  v60 = v59;
  v62 = v61;

  *&v106 = v56;
  *(&v106 + 1) = v58;
  v107 = v60 & 1;
  v108 = v62;
  sub_3CB4(&qword_528F8, &qword_3D220);
  sub_6254(&qword_52900, &qword_528F8, &qword_3D220);
  v63 = v94;
  sub_3A558();
  v64 = v96;
  sub_1E26C(v96);
  v65 = v97;
  sub_1E66C(v97);
  sub_1E9EC(v99);
  v66 = v91;
  v85 = type metadata accessor for AppStoreSystemPolicyView;
  sub_296EC(v102, v91, type metadata accessor for AppStoreSystemPolicyView);
  v67 = v92;
  sub_1A5AC(v103, v92, &qword_528A0, &qword_3D1F0);
  v68 = v93;
  sub_1A5AC(v90, v93, &qword_52898, &qword_3D1E8);
  v69 = v95;
  sub_1A5AC(v104, v95, &qword_52890, &qword_3D1E0);
  v84 = v98[2];
  v70 = v63;
  v71 = v87;
  (v84)(v105, v70, v87);
  sub_1A5AC(v64, v100, &qword_52880, &qword_3D1D0);
  sub_1A5AC(v65, v101, &qword_52880, &qword_3D1D0);
  v72 = v99;
  v73 = v89;
  sub_1A5AC(v99, v89, &qword_52878, &qword_3D1C8);
  v74 = v66;
  v75 = v88;
  sub_296EC(v74, v88, type metadata accessor for AppStoreSystemPolicyView);
  v76 = sub_3CB4(&qword_52908, &qword_3D228);
  sub_1A5AC(v67, v75 + v76[12], &qword_528A0, &qword_3D1F0);
  sub_1A5AC(v68, v75 + v76[16], &qword_52898, &qword_3D1E8);
  sub_1A5AC(v69, v75 + v76[20], &qword_52890, &qword_3D1E0);
  (v84)(v75 + v76[24], v105, v71);
  v77 = v100;
  sub_1A5AC(v100, v75 + v76[28], &qword_52880, &qword_3D1D0);
  v78 = v101;
  sub_1A5AC(v101, v75 + v76[32], &qword_52880, &qword_3D1D0);
  sub_1A5AC(v73, v75 + v76[36], &qword_52878, &qword_3D1C8);
  sub_1A614(v72, &qword_52878, &qword_3D1C8);
  sub_1A614(v97, &qword_52880, &qword_3D1D0);
  sub_1A614(v96, &qword_52880, &qword_3D1D0);
  v79 = v98[1];
  v79(v94, v71);
  sub_1A614(v104, &qword_52890, &qword_3D1E0);
  sub_1A614(v90, &qword_52898, &qword_3D1E8);
  sub_1A614(v103, &qword_528A0, &qword_3D1F0);
  v80 = v85;
  sub_29754(v102, v85);
  sub_1A614(v73, &qword_52878, &qword_3D1C8);
  sub_1A614(v78, &qword_52880, &qword_3D1D0);
  sub_1A614(v77, &qword_52880, &qword_3D1D0);
  v79(v105, v71);
  sub_1A614(v95, &qword_52890, &qword_3D1E0);
  sub_1A614(v93, &qword_52898, &qword_3D1E8);
  sub_1A614(v92, &qword_528A0, &qword_3D1F0);
  sub_29754(v91, v80);
}

uint64_t sub_1D6E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3CB4(&qword_52A48, &qword_3D6B0);
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v55);
  v11 = &v54 - v10;
  if ((sub_20B28() & 1) == 0)
  {
    if ((sub_20B28() & 1) == 0)
    {
      goto LABEL_9;
    }

    v17 = 0;
LABEL_7:
    v19 = v2 + *(type metadata accessor for AppStoreSettingsView() + 24);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    type metadata accessor for AppStoreSettingsViewModel();
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
    v23 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v17 & 1) != 0 || ((v57 ^ 1))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v12 = v1 + *(type metadata accessor for AppStoreSettingsView() + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v16 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v17 = v57;
  v18 = sub_20B28();
  if (v18)
  {
    goto LABEL_7;
  }

  if (v17)
  {
    v17 = 1;
    goto LABEL_12;
  }

LABEL_9:
  v24 = v2 + *(type metadata accessor for AppStoreSettingsView() + 24);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v28 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v57)
  {
    v29 = 1;
    v30 = v55;
    return (*(v8 + 56))(a1, v29, 1, v30);
  }

  v17 = 0;
LABEL_12:
  v54 = a1;
  __chkstk_darwin(v18);
  *(&v54 - 32) = v17;
  *(&v54 - 3) = v2;
  LOBYTE(v52) = v31 & 1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_350B8(v7);
  v57 = sub_3A708();
  v58 = v32;
  sub_6144();
  v33 = sub_3A2E8();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v57 = v33;
  v58 = v35;
  v59 = v37 & 1;
  v60 = v39;
  sub_22AD4(v2, v56);
  sub_3CB4(&unk_52A50, &unk_3D6B8);
  sub_3CB4(&qword_52020, &qword_3C280);
  v40 = sub_6254(&unk_52A60, &unk_52A50, &unk_3D6B8);
  v41 = sub_7EE4();
  v52 = v40;
  v53 = v41;
  sub_3A548();
  v42 = v2 + *(type metadata accessor for AppStoreSettingsView() + 24);
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v46 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v47 = v57;
  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  a1 = v54;
  v30 = v55;
  v50 = &v11[*(v55 + 36)];
  *v50 = KeyPath;
  v50[1] = sub_2ABB0;
  v50[2] = v49;
  sub_8750(v11, a1, &qword_52A48, &qword_3D6B0);
  v29 = 0;
  return (*(v8 + 56))(a1, v29, 1, v30);
}