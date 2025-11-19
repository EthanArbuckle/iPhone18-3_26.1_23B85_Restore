id sub_1000015B8()
{
  v0 = sub_100005064();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  sub_100005044();
  v13 = sub_100005034();
  sub_100005154();

  v14 = sub_100005144();
  (*(v1 + 104))(v4, enum case for ContactFormatter.Style.fullName(_:), v0);

  sub_100005184();
  sub_100005074();
  sub_1000050A4();
  v15 = sub_100005094();
  (*(v6 + 16))(v10, v12, v5);
  v16 = sub_100003F58(v13, v14, v10, v15);
  (*(v6 + 8))(v12, v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

char *sub_10000185C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = [a1 people];
  v9 = _swiftEmptyArrayStorage;
  v50 = v5;
  if (!v8)
  {
    v20 = 0;
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v10 = v8;
  v46 = a2;
  sub_100005024();
  v11 = sub_1000051D4();

  v51 = _swiftEmptyArrayStorage;
  v12 = v11 >> 62;
  if (v11 >> 62)
  {
    v13 = sub_1000052B4();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = 0;
    v9 = (v11 & 0xC000000000000001);
    v14 = (v11 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v9)
      {
        v16 = sub_100005244();
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      v6 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v18 = [v16 identifier];
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        sub_100005264();
        a2 = *(v51 + 16);
        sub_100005294();
        sub_1000052A4();
        v10 = &v51;
        sub_100005274();
      }

      ++v15;
    }

    while (v6 != v13);
    v19 = v51;
    v14 = _swiftEmptyArrayStorage;
    v12 = v11 >> 62;
    if ((v51 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_19:
      if ((v19 & 0x4000000000000000) == 0)
      {
        v20 = *(v19 + 16);
        goto LABEL_21;
      }
    }
  }

  v20 = sub_1000052B4();
LABEL_21:

  if (v12)
  {
    v21 = sub_1000052B4();
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_23:
      v51 = _swiftEmptyArrayStorage;
      result = sub_100003D70(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v45 = v20;
      v23 = 0;
      v14 = v51;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v24 = sub_100005244();
        }

        else
        {
          v24 = *(v11 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = sub_100005174();
          v30 = v29;
        }

        else
        {

          v28 = 0;
          v30 = 0xE000000000000000;
        }

        v51 = v14;
        v32 = v14[2];
        v31 = v14[3];
        if (v32 >= v31 >> 1)
        {
          sub_100003D70((v31 > 1), v32 + 1, 1);
          v14 = v51;
        }

        ++v23;
        v14[2] = v32 + 1;
        v33 = &v14[2 * v32];
        v33[4] = v28;
        v33[5] = v30;
      }

      while (v21 != v23);

      v6 = v50;
      v20 = v45;
      a2 = v46;
      goto LABEL_37;
    }
  }

  v6 = v50;
  a2 = v46;
LABEL_37:
  v9 = _swiftEmptyArrayStorage;
LABEL_38:
  v10 = swift_allocObject();
  v10[16] = v20 < sub_100004FD4();
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts;
  v34 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts];
  if (v34 >> 62)
  {
LABEL_46:
    if (sub_1000052B4())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    v35 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 32];
    sub_100003550(&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher], *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24]);
    v36 = sub_1000050C4();
    v37 = *&v6[v12];
    *&v6[v12] = v36;
  }

LABEL_41:
  *(v15 + 16) = *&v6[v12];

  v38 = swift_allocObject();
  v38[2] = v14;
  v38[3] = v6;
  v38[4] = a2;
  v38[5] = a3;
  v38[6] = v10;
  v38[7] = v15;
  v38[8] = a4;
  v38[9] = a5;
  v39 = swift_allocObject();
  *(v39 + 16) = v9;
  v41 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter + 24];
  v40 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter + 32];
  sub_100003550(&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter], v41);
  v42 = swift_allocObject();
  v42[2] = v39;
  v42[3] = sub_100003604;
  v42[4] = v38;
  v43 = *(v40 + 8);

  v44 = v50;
  v43(sub_1000036B0, v42, v41, v40);
}

void sub_100001D88(uint64_t a1, uint64_t a2, char *a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(id, void))
{
  v12 = 0;
  v108 = *(a2 + 16);
  if (v108)
  {
    *&v107 = a2 + 32;

    v13 = 0;
    do
    {
      v110 = v13;
      v14 = (v107 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = sub_1000040E4(a1, *v14, v15);
      if (v19)
      {
        v20 = *(a1 + 16);

        v9 = v20;
      }

      else
      {
        v9 = v17;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_90;
        }

        v105 = v12;
        v21 = *(a1 + 16);

        if (v20 != v21)
        {
          v30 = 16 * v9;
          while (v20 < v21)
          {
            v18 = (a1 + v30);
            v8 = *(a1 + v30 + 48);
            v10 = *(a1 + v30 + 56);
            if (v8 != v16 || v10 != v15)
            {
              v34 = *(a1 + v30 + 48);
              v35 = *(a1 + v30 + 56);
              if ((sub_1000052D4() & 1) == 0)
              {
                if (v20 != v9)
                {
                  if (v9 >= v21)
                  {
                    goto LABEL_87;
                  }

                  v36 = (a1 + 32 + 16 * v9);
                  v37 = v36[1];
                  v109 = *v36;

                  v38 = a1;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v38 = sub_100003F44(a1);
                  }

                  v39 = &v38[16 * v9];
                  v40 = *(v39 + 5);
                  *(v39 + 4) = v8;
                  *(v39 + 5) = v10;

                  v18 = *(v38 + 2);
                  if (v20 >= v18)
                  {
                    goto LABEL_88;
                  }

                  v31 = &v38[v30];
                  v32 = *&v38[v30 + 56];
                  *(v31 + 6) = v109;
                  *(v31 + 7) = v37;

                  a1 = v38;
                }

                ++v9;
              }
            }

            ++v20;
            v21 = *(a1 + 16);
            v30 += 16;
            if (v20 == v21)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_8:
        if (v20 < v9)
        {
          goto LABEL_84;
        }

        v12 = v105;
        if (v9 < 0)
        {
          goto LABEL_85;
        }
      }

      v8 = a1;
      v22 = v9 - v20;
      if (__OFADD__(v20, v9 - v20))
      {
        goto LABEL_86;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v9 <= *(a1 + 24) >> 1)
      {
        v24 = a1;
      }

      else
      {
        if (v20 <= v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = v20;
        }

        v24 = sub_1000036BC(isUniquelyReferenced_nonNull_native, v25, 1, a1);
      }

      v26 = v24;
      v27 = v24 + 32;
      v8 = &v24[16 * v9 + 32];
      swift_arrayDestroy();
      if (v20 != v9)
      {
        memmove(v8, &v27[16 * v20], 16 * (*(v26 + 2) - v20));
        v28 = *(v26 + 2);
        v29 = __OFADD__(v28, v22);
        v18 = (v28 + v22);
        if (v29)
        {
          goto LABEL_91;
        }

        *(v26 + 2) = v18;
      }

      v13 = v110 + 1;

      a1 = v26;
    }

    while (v110 + 1 != v108);
  }

  else
  {
  }

  v41 = *&a3[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 32];
  sub_100003550(&a3[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher], *&a3[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24]);
  sub_100004FE4();
  v20 = sub_1000050E4();
  v113[0] = v20;
  if (a5)
  {
    swift_beginAccess();
    *(a6 + 16) = 0;
    v8 = a4;
    v42 = sub_1000050B4();

    v113[0] = v42;
    v43 = a7;
    swift_beginAccess();
    v44 = *(a7 + 16);

    v45 = sub_1000050B4();

    swift_beginAccess();
    v46 = *(a7 + 16);
    *(a7 + 16) = v45;

    v20 = v42;
  }

  else
  {
    v43 = a7;
  }

  swift_beginAccess();
  v15 = *(v43 + 16);

  v47 = sub_100005004();
  if (v47 < 0)
  {
    goto LABEL_92;
  }

  v18 = v47;
  v8 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_93;
  }

  v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48 >= v18)
  {
    v49 = v18;
  }

  else
  {
    v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v48 >= v50)
  {
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0 && v50)
      {
        sub_100004184();

        v51 = 0;
        do
        {
          v52 = v51 + 1;
          sub_100005234(v51);
          v51 = v52;
        }

        while (v50 != v52);
      }

      else
      {
      }

      if (v8)
      {
        sub_1000052C4();
        v9 = v53;
        v8 = v54;
        v56 = v55;

        v50 = v56 >> 1;
      }

      else
      {
        v9 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v15 = _swiftEmptyArrayStorage;
      v57 = a3;
      v10 = (v50 - v8);
      if (v50 == v8)
      {
        break;
      }

      if (v50 <= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v50;
      }

      v78 = v18 - v8;
      v8 = v9 + 8 * v8;
      while (v78)
      {
        v112 = *v8;
        v79 = v112;
        sub_100002880(&v112, v113, &v111);

        if (v111)
        {
          sub_1000051B4();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v80 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000051E4();
          }

          sub_100005204();
          v15 = _swiftEmptyArrayStorage;
        }

        --v78;
        v8 += 8;
        if (!--v10)
        {
          goto LABEL_60;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v88 = v18;
      v89 = sub_1000052B4();
      if (sub_1000052B4() < 0)
      {
        __break(1u);
        return;
      }

      if (v89 >= v88)
      {
        v90 = v88;
      }

      else
      {
        v90 = v89;
      }

      if (v89 < 0)
      {
        v90 = v88;
      }

      if (v88)
      {
        v50 = v90;
      }

      else
      {
        v50 = 0;
      }

      if (sub_1000052B4() < v50)
      {
        goto LABEL_103;
      }
    }

LABEL_60:
    swift_unknownObjectRelease();

    sub_100005184();
    v58 = objc_allocWithZone(INObjectSection);
    v59 = sub_100005164();

    sub_100005024();
    isa = sub_1000051C4().super.isa;

    v10 = [v58 initWithTitle:v59 items:isa];

    sub_100003E9C(&qword_10000C548, &qword_1000058C0);
    v61 = swift_allocObject();
    v107 = xmmword_100005850;
    *(v61 + 16) = xmmword_100005850;
    sub_100004FF4();
    sub_100005184();

    v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v63 = sub_100005164();

    v64 = [v62 initWithIdentifier:0 displayString:v63];

    *(v61 + 32) = v64;
    v65 = objc_allocWithZone(INObjectSection);
    v66 = sub_1000051C4().super.isa;

    v9 = [v65 initWithTitle:0 items:v66];

    if (v20 >> 62)
    {
      goto LABEL_104;
    }

    v67 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      sub_100005284();
      goto LABEL_63;
    }

    goto LABEL_108;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  if (!sub_1000052B4())
  {
LABEL_108:

    swift_beginAccess();
    if (*(a6 + 16) == 1)
    {
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100005860;
      *(v92 + 32) = v9;
      *(v92 + 40) = v10;
      v93 = v9;
    }

    else
    {
      v94 = swift_allocObject();
      *(v94 + 16) = v107;
      *(v94 + 32) = v10;
    }

    v95 = objc_allocWithZone(INObjectCollection);
    v96 = v10;
    sub_100003E9C(&qword_10000C550, qword_1000058C8);
    v97 = sub_1000051C4().super.isa;

    v98 = [v95 initWithSections:v97];

    v87 = v98;
    a8(v98, 0);

    goto LABEL_112;
  }

  v91 = sub_1000052B4();
  if (v91)
  {
    v67 = v91;
    sub_100005284();
    if (v67 < 0)
    {
      __break(1u);
      goto LABEL_108;
    }

LABEL_63:
    v106 = v9;
    v68 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v69 = sub_100005244();
      }

      else
      {
        v69 = *(v20 + 8 * v68 + 32);
      }

      v70 = v69;
      ++v68;
      sub_100003110(v69);

      sub_100005264();
      v71 = _swiftEmptyArrayStorage[2];
      sub_100005294();
      sub_1000052A4();
      sub_100005274();
    }

    while (v67 != v68);

    v9 = v106;
  }

  else
  {
  }

  sub_100005184();
  v72 = objc_allocWithZone(INObjectSection);
  v73 = sub_100005164();

  v74 = sub_1000051C4().super.isa;

  v75 = [v72 initWithTitle:v73 items:v74];

  swift_beginAccess();
  if (*(a6 + 16))
  {
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_100005870;
    *(v76 + 32) = v9;
    *(v76 + 40) = v75;
    *(v76 + 48) = v10;
    v77 = v9;
  }

  else
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100005860;
    *(v81 + 32) = v75;
    *(v81 + 40) = v10;
  }

  v82 = objc_allocWithZone(INObjectCollection);
  v83 = v10;
  v84 = v75;
  sub_100003E9C(&qword_10000C550, qword_1000058C8);
  v85 = sub_1000051C4().super.isa;

  v86 = [v82 initWithSections:v85];

  v87 = v86;
  a8(v86, 0);

LABEL_112:
}

id sub_100002880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFF8;
  if (*a2 >> 62)
  {
LABEL_19:
    v20 = v5;
    v22 = sub_1000052B4();
  }

  else
  {
    v20 = *a2 & 0xFFFFFFFFFFFFFF8;
    v22 = *(v20 + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v22 == v6)
    {

      result = sub_100003110(v21);
      goto LABEL_16;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_100005244();
    }

    else
    {
      v5 = *(v20 + 16);
      if (v6 >= v5)
      {
        goto LABEL_18;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v8 identifier];
    v11 = sub_100005174();
    v13 = v12;

    v14 = [v21 identifier];
    v15 = sub_100005174();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      break;
    }

    v7 = sub_1000052D4();

    ++v6;
    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  result = 0;
LABEL_16:
  *a3 = result;
  return result;
}

void sub_100002B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100004F84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100002C28(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v54[1] = a4;
  v55 = a3;
  v6 = sub_100004FA4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000052B4())
  {
    v13 = 0;
    v61 = a1 & 0xC000000000000001;
    v56 = a1 + 32;
    v57 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = (v7 + 1);
    *&v9 = 136315138;
    v63 = v9;
    v58 = i;
    v59 = a1;
    v64 = v6;
    v65 = a2;
    while (1)
    {
      if (v61)
      {
        v15 = sub_100005244();
      }

      else
      {
        if (v13 >= *(v57 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(v56 + 8 * v13);
      }

      v7 = v15;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      sub_100004FB4();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v62 = v7;
        v18 = [v17 people];
        if (v18)
        {
          v19 = v18;
          sub_100005024();
          v20 = sub_1000051D4();

          v21 = v20;
        }

        else
        {
          v21 = _swiftEmptyArrayStorage;
        }

        v7 = v62;
        if (v21 >> 62)
        {
          v50 = v21;
          v22 = sub_1000052B4();
          v21 = v50;
          if (!v22)
          {
LABEL_34:

            goto LABEL_4;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_34;
          }
        }

        if (v22 < 1)
        {
          goto LABEL_36;
        }

        v60 = v13;
        v23 = 0;
        v66 = v21 & 0xC000000000000001;
        v67 = v22;
        v68 = v21;
        do
        {
          if (v66)
          {
            v24 = sub_100005244();
          }

          else
          {
            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          sub_100004FC4();
          v26 = v25;
          v27 = sub_100004F94();
          v28 = sub_100005214();

          v29 = os_log_type_enabled(v27, v28);
          v69 = v26;
          if (v29)
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v70 = v31;
            *v30 = v63;
            v32 = [v26 debugDescription];
            v33 = v14;
            v34 = v11;
            v35 = sub_100005174();
            v37 = v36;

            v38 = v35;
            v11 = v34;
            v14 = v33;
            v39 = sub_1000037C8(v38, v37, &v70);
            v26 = v69;

            *(v30 + 4) = v39;
            v6 = v64;
            a2 = v65;
            _os_log_impl(&_mh_execute_header, v27, v28, "people in widget%s", v30, 0xCu);
            sub_100004B68(v31);
          }

          (*v14)(v11, v6);
          v40 = [v26 identifier];
          if (v40)
          {
            v41 = v40;
            v42 = sub_100005174();
            v44 = v43;
          }

          else
          {
            v42 = 0;
            v44 = 0xE000000000000000;
          }

          swift_beginAccess();
          v45 = *(a2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v45 = sub_1000036BC(0, *(v45 + 2) + 1, 1, v45);
            *(a2 + 16) = v45;
          }

          v48 = *(v45 + 2);
          v47 = *(v45 + 3);
          if (v48 >= v47 >> 1)
          {
            v45 = sub_1000036BC((v47 > 1), v48 + 1, 1, v45);
          }

          ++v23;
          *(v45 + 2) = v48 + 1;
          v49 = &v45[16 * v48];
          *(v49 + 4) = v42;
          *(v49 + 5) = v44;
          *(a2 + 16) = v45;
          swift_endAccess();

          v21 = v68;
        }

        while (v67 != v23);
        v7 = v68;

        i = v58;
        a1 = v59;
        v13 = v60;
      }

      else
      {
      }

LABEL_4:
      if (v13 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
  swift_beginAccess();
  v51 = *(a2 + 16);

  v55(v52);
}

id sub_100003110(void *a1)
{
  v2 = v1;
  v4 = sub_100005064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005084();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 identifier];
  v14 = sub_100005174();
  v16 = v15;

  v35 = v14;
  v36 = v16;
  v17 = *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter + 32);
  sub_100003550((v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter), *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter + 24));
  sub_1000050F4();
  (*(v5 + 104))(v8, enum case for ContactFormatter.Style.shortName(_:), v4);
  v18 = a1;
  sub_100005184();
  sub_100005074();
  v19.super.isa = a1;
  sub_100005054(v19);
  (*(v9 + 8))(v12, v33);
  v20 = (v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper);
  v21 = *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper + 24);
  v22 = *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper + 32);
  sub_100003550(v20, v21);
  v23 = sub_100005104();
  v25 = v24;

  if (v25)
  {
    v34._countAndFlagsBits = 124;
    v34._object = 0xE100000000000000;
    v37._countAndFlagsBits = v23;
    v37._object = v25;
    sub_100005194(v37);

    sub_100005194(v34);
  }

  sub_100005024();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = sub_100005164();

  v28 = sub_100005164();

  v29 = [v26 initWithIdentifier:v27 displayString:v28];

  v30 = [v18 identifier];
  if (!v30)
  {
    sub_100005174();
    v30 = sub_100005164();
  }

  [v29 setId:v30];

  return v29;
}

id sub_10000347C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100003550(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000035A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100003638()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003670()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_1000036BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C530, &qword_1000058B0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000037C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003894(v11, 0, 0, 1, a1, a2);
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
    sub_100003EE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004B68(v11);
  return v7;
}

unint64_t sub_100003894(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000039A0(a5, a6);
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
    result = sub_100005254();
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

void *sub_1000039A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000039EC(a1, a2);
  sub_100003B1C(&off_1000084E8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000039EC(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100003C08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005254();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000051A4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003C08(v10, 0);
        result = sub_100005224();
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

uint64_t sub_100003B1C(uint64_t result)
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

  result = sub_100003C7C(result, v12, 1, v3);
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

void *sub_100003C08(uint64_t a1, uint64_t a2)
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

  sub_100003E9C(&qword_10000C538, &qword_1000058B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C538, &qword_1000058B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100003D70(char *a1, int64_t a2, char a3)
{
  result = sub_100003D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C530, &qword_1000058B0);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100003E9C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100003F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005084();
  v18[3] = v8;
  v18[4] = &protocol witness table for ContactFormatter;
  v9 = sub_100004AA0(v18);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  v17[3] = sub_1000050A4();
  v17[4] = &protocol witness table for VerticalTextHelper;
  v17[0] = a4;
  v16[3] = sub_100005044();
  v16[4] = &protocol witness table for ContactFetcher;
  v16[0] = a1;
  v15[3] = sub_100005154();
  v15[4] = &protocol witness table for WidgetCenter;
  v15[0] = a2;
  v10 = type metadata accessor for IntentHandler();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts] = &_swiftEmptyArrayStorage;
  sub_100004B04(v16, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher]);
  sub_100004B04(v15, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter]);
  sub_100004B04(v18, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter]);
  sub_100004B04(v17, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100004B68(v17);
  sub_100004B68(v18);
  sub_100004B68(v15);
  sub_100004B68(v16);
  return v12;
}

uint64_t sub_1000040E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1000052D4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100004184()
{
  result = qword_10000C540;
  if (!qword_10000C540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C540);
  }

  return result;
}

uint64_t sub_1000041D0()
{
  v2 = sub_100004FA4();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v63 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher;
  v6 = *(v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 32);
  sub_100003550((v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher), *(v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24));
  sub_100005014();
  v7 = _swiftEmptyArrayStorage;
  v8 = sub_1000050E4();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_1000052B4();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v1 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v78 = _swiftEmptyArrayStorage;
  sub_100005284();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_76;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_100005244();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    sub_100003110(v12);

    sub_100005264();
    v14 = *(v78 + 16);
    sub_100005294();
    sub_1000052A4();
    sub_100005274();
  }

  while (v10 != v11);

  v1 = v78;
LABEL_12:
  v78 = v1;
  if (v1 >> 62)
  {
    goto LABEL_74;
  }

  v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  if (v15 >= sub_100005014())
  {
    goto LABEL_80;
  }

  v16 = *(v5 + 32);
  sub_100003550(v5, *(v5 + 24));
  v17 = sub_1000050D4();
  v5 = v17;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  v18 = sub_1000052B4();
  if (v18)
  {
LABEL_17:
    v77 = v7;
    result = sub_100005284();
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = sub_100005244();
      }

      else
      {
        v21 = *(v5 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      sub_100003110(v21);

      sub_100005264();
      v23 = *(v77 + 16);
      sub_100005294();
      sub_1000052A4();
      sub_100005274();
    }

    while (v18 != v20);

    v24 = v77;
    if (!(v77 >> 62))
    {
      goto LABEL_24;
    }

LABEL_78:
    v25 = sub_1000052B4();
    if (v25)
    {
LABEL_25:
      v7 = 0;
      v69 = v24;
      v70 = v24 & 0xC000000000000001;
      v66 = v24 + 32;
      v67 = v24 & 0xFFFFFFFFFFFFFF8;
      v5 = &OBJC_PROTOCOL___SelectPeopleIntentHandling;
      v68 = v25;
      while (1)
      {
        if (v70)
        {
          v26 = sub_100005244();
        }

        else
        {
          if (v7 >= *(v67 + 16))
          {
            goto LABEL_73;
          }

          v26 = *(v66 + 8 * v7);
        }

        v76 = v26;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_72;
        }

        v71 = v1 >> 62;
        v72 = v7;
        v28 = v1 >> 62 ? sub_1000052B4() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v28)
        {
          break;
        }

LABEL_57:

        if (v71)
        {
          v43 = sub_1000052B4();
        }

        else
        {
          v43 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = v68;
        v7 = v72;
        if (v43 >= sub_100005014())
        {
        }

        else
        {
          v45 = v76;
          sub_1000051B4();
          if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000051E4();
          }

          sub_100005204();

          v1 = v78;
        }

LABEL_27:
        if (v7 == v44)
        {
          goto LABEL_79;
        }
      }

      v29 = 0;
      v74 = v1 & 0xFFFFFFFFFFFFFF8;
      v75 = v1 & 0xC000000000000001;
      v73 = v1;
      while (1)
      {
        if (v75)
        {
          v30 = sub_100005244();
        }

        else
        {
          if (v29 >= *(v74 + 16))
          {
            goto LABEL_71;
          }

          v30 = *(v1 + 8 * v29 + 32);
        }

        v1 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v15 = sub_1000052B4();
          goto LABEL_14;
        }

        v32 = [v30 *(v5 + 680)];
        if (v32)
        {
          v33 = v32;
          v34 = sub_100005174();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        v37 = v5;
        v38 = [v76 *(v5 + 680)];
        if (!v38)
        {
          break;
        }

        v39 = v38;
        v7 = sub_100005174();
        v41 = v40;

        if (!v36)
        {

          v5 = v37;
          if (!v41)
          {
            goto LABEL_65;
          }

          goto LABEL_38;
        }

        v5 = v37;
        if (!v41)
        {
          goto LABEL_55;
        }

        if (v34 == v7 && v36 == v41)
        {

          v46 = v73;

          v1 = v46;
LABEL_68:
          v44 = v68;
          v7 = v72;
          goto LABEL_27;
        }

        v42 = sub_1000052D4();

        v1 = v73;
        if (v42)
        {

LABEL_67:

          goto LABEL_68;
        }

LABEL_39:
        ++v29;
        if (v31 == v28)
        {
          goto LABEL_57;
        }
      }

      if (!v36)
      {

LABEL_65:
        v1 = v73;
        goto LABEL_67;
      }

LABEL_55:

LABEL_38:

      v1 = v73;
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_77:

  v24 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_78;
  }

LABEL_24:
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_79:

LABEL_80:
  if (v1 >> 62)
  {
    v48 = sub_1000052B4();
  }

  else
  {
    v48 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v48 < sub_100005014())
  {
    sub_100005024();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      sub_100004FF4();
      sub_100005184();

      v50 = objc_allocWithZone(ObjCClassFromMetadata);
      v51 = sub_100005164();

      [v50 initWithIdentifier:0 displayString:v51];

      sub_1000051B4();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000051E4();
      }

      sub_100005204();
      v1 = v78;
      if (v78 >> 62)
      {
        v52 = sub_1000052B4();
      }

      else
      {
        v52 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v52 < sub_100005014());
  }

  v54 = v63;
  sub_100004FC4();
  v55 = sub_100004F94();
  v56 = sub_100005214();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v77 = v58;
    *v57 = 136315138;
    sub_100005024();

    v59 = sub_1000051F4();
    v61 = v60;

    v62 = sub_1000037C8(v59, v61, &v77);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "Default contacts for widget: %s", v57, 0xCu);
    sub_100004B68(v58);
  }

  (*(v64 + 8))(v54, v65);
  return v1;
}

uint64_t sub_100004A60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100004AA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004B68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t WidgetCenter.getCurrentWidgetConfigurations(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_100005134();
}

uint64_t sub_100004C78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004CB0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    sub_100003E9C(&qword_10000C5B8, &unk_100005930);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v9 = *(sub_100005124() - 8);
      v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        v12 = sub_100005114();
        if (v12)
        {
          v13 = v12;
          swift_beginAccess();
          v14 = v13;
          sub_1000051B4();
          if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000051E4();
          }

          sub_100005204();
          swift_endAccess();
        }

        v10 += v11;
        --v7;
      }

      while (v7);
    }

    swift_beginAccess();
    v16 = *(a3 + 16);

    a4(v17);
  }
}

uint64_t sub_100004E78(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_100005134();
}

uint64_t sub_100004F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}