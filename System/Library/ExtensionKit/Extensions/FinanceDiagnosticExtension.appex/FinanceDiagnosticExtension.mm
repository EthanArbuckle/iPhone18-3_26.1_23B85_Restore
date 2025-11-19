id sub_100001038@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003D58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003D28();
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_100003D48();
  v9 = sub_100003DD8();

  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    return (*(v3 + 32))(a1, v6, v2);
  }

  v12 = [v7 defaultManager];
  sub_100003D18(v13);
  v15 = v14;
  v20 = 0;
  v16 = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v20];

  v17 = v20;
  if (v16)
  {
    (*(v3 + 32))(a1, v6, v2);
    return v17;
  }

  else
  {
    v18 = v20;
    sub_100003D08();

    swift_willThrow();
    return (*(v3 + 8))(v6, v2);
  }
}

char *sub_100001294(uint64_t a1)
{
  v2 = sub_100003D98();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  if ((sub_100002E40(a1) & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000014A4();
  v5 = sub_100001ED0(v4);

  return v5;
}

void sub_1000014A4()
{
  v0 = sub_100003C28();
  v77 = *(v0 - 8);
  v1 = *(v77 + 64);
  __chkstk_darwin(v0);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003D58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v68 - v11;
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_100003D38();
  v17 = v78;
  sub_100001038(v12);
  if (v17)
  {
    (*(v5 + 8))(v14, v4);
  }

  else
  {
    v74 = v3;
    v75 = v4;
    v78 = v14;
    v76 = v5;
    v72 = v0;
    v73 = v9;
    sub_100003C78();
    sub_100003C58();
    sub_100003C68();

    isa = sub_100003C48().super.isa;
    v71 = sub_100003C18();

    sub_100003C58();
    sub_100003C68();

    v19 = sub_100003C48().super.isa;
    v20 = sub_100003C08();
    v21 = v75;
    v70 = v12;
    v22 = v20;

    v23 = sub_100003BF8();
    v87 = &_swiftEmptyArrayStorage;
    v85 = sub_1000030A0(&qword_10000C180, &qword_1000042E0);
    v86 = sub_100003148();
    v82 = 0;
    v83 = 0xE000000000000000;
    v84[0] = v23;

    sub_100003EA8(17);

    v82 = 0x6665642072657355;
    v83 = 0xEF203A73746C7561;
    v24 = sub_100003DB8();
    v26 = v25;

    v88._countAndFlagsBits = v24;
    v88._object = v26;
    sub_100003E08(v88);

    v27 = sub_10000320C(v70, 0x6166654472657375, 0xEC00000073746C75, v84, v82, v83);

    sub_100003794(v84);
    sub_100002D14(v27);
    v85 = sub_1000030A0(&qword_10000C190, &qword_1000042E8);
    v86 = sub_1000037E0();
    v83 = 0xE000000000000000;
    v84[0] = v22;
    v82 = 0;

    sub_100003EA8(18);

    v82 = 0xD000000000000010;
    v83 = 0x8000000100004370;
    sub_100003C38();
    v28 = sub_100003E38();
    v30 = v29;

    v89._countAndFlagsBits = v28;
    v31 = v70;
    v89._object = v30;
    sub_100003E08(v89);

    v32 = sub_10000320C(v31, 0x53746E65736E6F63, 0xED00007375746174, v84, v82, v83);

    sub_100003794(v84);
    sub_100002D14(v32);
    v85 = sub_1000030A0(&qword_10000C1A8, &qword_1000042F0);
    v86 = sub_100003894();
    v33 = v71;
    v82 = 0;
    v83 = 0xE000000000000000;
    v84[0] = v71;
    v34 = *(v71 + 16);
    v35 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v81 = &_swiftEmptyArrayStorage;

      v36 = v34;
      sub_100002AB8(0, v34, 0);
      v35 = v81;
      v37 = v77 + 16;
      v77 = *(v77 + 16);
      v38 = v33 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v39 = *(v37 + 56);
      v68 = (v37 - 8);
      v69 = v39;
      v40 = v72;
      do
      {
        v41 = v74;
        (v77)(v74, v38, v40);
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_100003F28();
        v42 = v79;
        v43 = v80;
        (*v68)(v41, v40);
        v81 = v35;
        v45 = v35[2];
        v44 = v35[3];
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          sub_100002AB8((v44 > 1), v45 + 1, 1);
          v46 = v45 + 1;
          v40 = v72;
          v35 = v81;
        }

        v35[2] = v46;
        v47 = &v35[2 * v45];
        v47[4] = v42;
        v47[5] = v43;
        v38 += v69;
        --v36;
      }

      while (v36);

      v21 = v75;
    }

    v79 = v35;
    sub_1000030A0(&qword_10000C1C0, &qword_1000042F8);
    sub_100003990();
    v48 = sub_100003DC8();
    v50 = v49;

    v90._countAndFlagsBits = v48;
    v90._object = v50;
    sub_100003E08(v90);

    v51 = sub_10000320C(v70, 0x49746E756F636361, 0xEB000000006F666ELL, v84, v82, v83);

    sub_100003794(v84);
    sub_100002D14(v51);
    v52 = v87;
    v53 = v87[2];
    if (v53)
    {
      v84[0] = &_swiftEmptyArrayStorage;
      sub_100003EF8();
      v54 = 0;
      v55 = v76;
      v75 = v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v74 = (v76 + 16);
      v77 = v76 + 8;
      while (1)
      {
        v56 = v73;
        if (v54 >= v52[2])
        {
          break;
        }

        v57 = v52;
        (*(v55 + 16))(v73, v75 + *(v55 + 72) * v54, v21);
        v58 = objc_allocWithZone(DEAttachmentItem);
        sub_100003D18(v59);
        v61 = v60;
        v62 = [v58 initWithPathURL:v60];
        v63 = v56;
        v64 = v62;

        if (!v64)
        {
          goto LABEL_17;
        }

        ++v54;
        v65 = *v77;
        (*v77)(v63, v21);
        sub_100003ED8();
        v66 = *(v84[0] + 16);
        sub_100003F08();
        sub_100003F18();
        sub_100003EE8();
        v55 = v76;
        v52 = v57;
        if (v53 == v54)
        {
          v65(v70, v21);
          v65(v78, v21);

          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {

      v67 = *(v76 + 8);
      v67(v70, v21);
      v67(v78, v21);
    }
  }
}

char *sub_100001ED0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100003F38();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100002AD8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100003EB8();
        sub_100003044();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100002AD8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100003090(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100003044();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100002AD8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100003090(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1000021D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

size_t sub_10000222C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000030A0(&qword_10000C1D8, &qword_100004308);
  v10 = *(sub_100003D58() - 8);
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
  v15 = *(sub_100003D58() - 8);
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

uint64_t sub_100002404(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000024D0(v11, 0, 0, 1, a1, a2);
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
    sub_1000030EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003794(v11);
  return v7;
}

unint64_t sub_1000024D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000025DC(a5, a6);
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
    result = sub_100003EC8();
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

char *sub_1000025DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002628(a1, a2);
  sub_100002758(&off_100008480);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002628(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002844(v5, 0);
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

  result = sub_100003EC8();
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
        v10 = sub_100003E18();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002844(v10, 0);
        result = sub_100003E98();
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

uint64_t sub_100002758(uint64_t result)
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

  result = sub_1000028B8(result, v12, 1, v3);
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

void *sub_100002844(uint64_t a1, uint64_t a2)
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

  sub_1000030A0(&qword_10000C178, &qword_1000042D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000028B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030A0(&qword_10000C178, &qword_1000042D8);
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

unint64_t sub_1000029AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003E68(*(v2 + 40));

  return sub_1000029F0(a1, v4);
}

unint64_t sub_1000029F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100003B9C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100003E78();
      sub_100003B48(v8);
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

char *sub_100002AB8(char *a1, int64_t a2, char a3)
{
  result = sub_100002AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002AD8(char *a1, int64_t a2, char a3)
{
  result = sub_100002C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002AF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030A0(&qword_10000C1D0, &qword_100004300);
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

char *sub_100002C04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030A0(&qword_10000C170, &qword_1000042D0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100002D14(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10000222C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100003D58();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100002E40(uint64_t a1)
{
  v2 = sub_100003D98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v13[1] = 0xD00000000000002DLL;
  v13[2] = 0x80000001000043B0;
  sub_100003E88();
  if (!*(a1 + 16) || (v7 = sub_1000029AC(v14), (v8 & 1) == 0))
  {
    sub_100003B48(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_1000030EC(*(a1 + 56) + 32 * v7, &v15);
  sub_100003B48(v14);
  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_100003AE0(&v15);
    goto LABEL_11;
  }

  if (swift_dynamicCast() && (v14[0] & 1) != 0)
  {
    return 1;
  }

LABEL_11:
  sub_100003D78();
  v10 = sub_100003D88();
  v11 = sub_100003E48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "User did not give consent", v12, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

unint64_t sub_100003044()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

_OWORD *sub_100003090(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000030A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000030EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100003148()
{
  result = qword_10000C188;
  if (!qword_10000C188)
  {
    sub_1000031C4(&qword_10000C180, &qword_1000042E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C188);
  }

  return result;
}

uint64_t sub_1000031C4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000320C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v47 = a5;
  v48 = a6;
  v8 = sub_100003DF8();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  (__chkstk_darwin)();
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003CB8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  (__chkstk_darwin)();
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_100003C98() - 8) + 64);
  (__chkstk_darwin)();
  v56 = sub_100003D58();
  v53 = *(v56 - 8);
  v16 = *(v53 + 64);
  v17 = (__chkstk_darwin)();
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v54 = a2;
  v55 = a3;

  v57._countAndFlagsBits = 0x6E6F736A2ELL;
  v57._object = 0xE500000000000000;
  sub_100003E08(v57);
  sub_100003D28();

  v54 = a2;
  v55 = a3;

  v58._countAndFlagsBits = 1954051118;
  v58._object = 0xE400000000000000;
  sub_100003E08(v58);
  sub_100003D28();

  v22 = sub_100003CF8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_100003CE8();
  sub_100003C88();
  sub_100003CA8();
  (*(v49 + 104))(v14, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v50);
  sub_100003CC8();
  v25 = v51[4];
  sub_1000039F4(v51, v51[3]);
  v26 = v52;
  v27 = sub_100003CD8();
  if (v26)
  {

    v29 = *(v53 + 8);
    v30 = v56;
    v29(v19, v56);
    v29(v21, v30);
  }

  else
  {
    v31 = v27;
    v32 = v28;
    v34 = v47;
    v33 = v48;
    v35 = v46;
    sub_100003D68();
    v52 = v21;
    v54 = v34;
    v55 = v33;
    sub_100003DE8();
    sub_100003A8C();
    sub_100003E58();
    v36 = v53;
    (*(v44 + 8))(v35, v45);
    sub_1000030A0(&qword_10000C1D8, &qword_100004308);
    v51 = *(v36 + 72);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000042A0;
    v49 = v30 + v37;
    v50 = v19;
    v38 = *(v36 + 16);
    v39 = v56;
    v38();
    v40 = v38;
    v41 = v50;
    (v40)(v51 + v49, v50, v39);
    sub_100003A38(v31, v32);

    v42 = *(v36 + 8);
    v42(v41, v39);
    v42(v52, v39);
  }

  return v30;
}

uint64_t sub_100003794(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000037E0()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    sub_1000031C4(&qword_10000C190, &qword_1000042E8);
    sub_100003948(&qword_10000C1A0, &type metadata accessor for ConsentInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

unint64_t sub_100003894()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    sub_1000031C4(&qword_10000C1A8, &qword_1000042F0);
    sub_100003948(&qword_10000C1B8, &type metadata accessor for AccountInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

uint64_t sub_100003948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100003990()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    sub_1000031C4(&qword_10000C1C0, &qword_1000042F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

void *sub_1000039F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003A38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100003A8C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

uint64_t sub_100003AE0(uint64_t a1)
{
  v2 = sub_1000030A0(&qword_10000C1E8, &unk_100004310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}