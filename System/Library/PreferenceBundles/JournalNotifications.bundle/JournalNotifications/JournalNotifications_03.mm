id sub_47010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAsset()
{
  result = qword_106A98;
  if (!qword_106A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_47118()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v102 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  *&v95 = &v87 - v9;
  __chkstk_darwin(v8);
  v99 = &v87 - v10;
  v100 = sub_C3CB4();
  v105 = *(v100 - 8);
  v11 = __chkstk_darwin(v100);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v87 - v13;
  v14 = sub_3CB0(&qword_106AF0);
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - v15;
  v93 = sub_C3704();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3CB0(&qword_106AF8);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = sub_C3724();
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_C4BF4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3CB0(&qword_106B00);
  __chkstk_darwin(v26 - 8);
  v28 = &v87 - v27;
  v29 = sub_C4484();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v0;
  sub_452C4(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_C060(v28, &qword_106B00);
    return 0;
  }

  else
  {
    v34 = *(v30 + 32);
    v89 = v29;
    v34(v32, v28, v29);
    sub_C4B74();
    v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_C4B54().super.isa;
    v37 = [v35 initWithContentType:isa];

    (*(v23 + 8))(v25, v22);
    sub_C4444();
    v38 = v98;
    if ((*(v98 + 48))(v19, 1, v20) == 1)
    {
      sub_C060(v19, &qword_106AF8);
    }

    else
    {
      v39 = v90;
      (*(v38 + 32))(v90, v19, v20);
      v40 = v91;
      sub_C36F4();
      sub_47D70(v94);
      (*(v92 + 8))(v40, v93);
      sub_C54B4();
      v41 = sub_C5444();

      [v37 setDisplayName:v41];

      (*(v38 + 8))(v39, v20);
    }

    v98 = v30;
    v42 = v99;
    sub_C4474();
    v43 = v105;
    v44 = *(v105 + 48);
    v45 = v100;
    v46 = v44(v42, 1, v100);
    v88 = v37;
    if (v46 == 1)
    {
      sub_C060(v42, &qword_104800);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = *(v43 + 32);
      v50 = v97;
      v49(v97, v42, v45);
      v51 = v32;
      v52 = v95;
      v99 = v51;
      sub_C4454();
      if (v44(v52, 1, v45) == 1)
      {
        (*(v43 + 8))(v50, v45);
        sub_C060(v52, &qword_104800);
        v47 = 0;
        v48 = 0;
        v32 = v99;
      }

      else
      {
        v49(v96, v52, v45);
        sub_3CB0(&qword_106620);
        v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v54 = swift_allocObject();
        v95 = xmmword_CE5B0;
        *(v54 + 16) = xmmword_CE5B0;
        v55 = *(v43 + 16);
        v55(v54 + v53, v50, v45);
        v56 = swift_allocObject();
        *(v56 + 16) = v95;
        v57 = v96;
        v55(v56 + v53, v96, v45);
        v32 = v99;
        v58 = sub_39B04(v54, v56, 0);
        v48 = v59;

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v60 = *(v43 + 8);
        v60(v57, v45);
        v60(v97, v45);
        if (v48)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0;
        }
      }
    }

    v61 = 0;
    v107 = sub_C4464();
    v108[0] = v62;
    v108[1] = v47;
    v108[2] = v48;
    v63 = _swiftEmptyArrayStorage;
LABEL_14:
    v64 = &v108[2 * v61];
    while (++v61 != 3)
    {
      v65 = v64 + 2;
      v66 = *v64;
      v64 += 2;
      if (v66)
      {
        v67 = v32;
        v68 = *(v65 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_484B8(0, *(v63 + 2) + 1, 1, v63);
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        if (v70 >= v69 >> 1)
        {
          v63 = sub_484B8((v69 > 1), v70 + 1, 1, v63);
        }

        *(v63 + 2) = v70 + 1;
        v71 = &v63[2 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v66;
        v43 = v105;
        v32 = v67;
        goto LABEL_14;
      }
    }

    sub_3CB0(&qword_104950);
    swift_arrayDestroy();
    v106 = v63;
    sub_3CB0(&qword_1063B0);
    sub_485C4();
    sub_C5324();

    v72 = sub_C5444();

    v33 = v88;
    [v88 setContentDescription:v72];

    v73 = *(v101 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v73)
    {
      v74 = [v73 entry];
      v75 = v104;
      if (v74)
      {
        v76 = v74;
        sub_C4034();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v104;
    }

    (*(v43 + 56))(v75, v77, 1, v45);
    sub_C53B4();
    sub_C3D44();
    v78 = sub_C54A4();
    v80 = v79;
    sub_3CB0(&qword_106628);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_CE5B0;
    v82 = sub_75B7C(v78, v80, v75);
    v84 = v83;

    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    v85 = sub_C5664().super.isa;

    [v33 setAlternateNames:v85];

    sub_C060(v75, &qword_104800);
    (*(v98 + 8))(v32, v89);
  }

  return v33;
}

uint64_t sub_47D70@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v2 = sub_3CB0(&qword_106B10);
  v3 = __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  v8 = sub_C3714();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3CB0(&qword_106B18);
  __chkstk_darwin(v25);
  v26 = v24 - v12;
  v13 = sub_3CB0(&qword_106B20);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_C3704();
  v17 = sub_48C28(&qword_106B28, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_C5874();
  sub_48C28(&qword_106B30, &type metadata accessor for AttributedString.Index);
  result = sub_C53A4();
  if (result)
  {
    sub_C5884();
    sub_48C28(&qword_106B38, &type metadata accessor for AttributedString.Index);
    result = sub_C5354();
    if (result)
    {
      v24[0] = v1;
      v24[1] = v18;
      v20 = *(v9 + 32);
      v20(v7, v15, v8);
      v20(&v7[*(v2 + 48)], v11, v8);
      sub_B954(v7, v5, &qword_106B10);
      v21 = *(v2 + 48);
      v22 = v26;
      v20(v26, v5, v8);
      v23 = *(v9 + 8);
      v23(&v5[v21], v8);
      sub_E9D4(v7, v5, &qword_106B10);
      v20((v22 + *(v25 + 36)), &v5[*(v2 + 48)], v8);
      v23(v5, v8);
      sub_C5914();
      return sub_C060(v22, &qword_106B18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_48258(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3CB0(&qword_106690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_4835C(double *result, int64_t a2, char a3, double *a4)
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
    sub_3CB0(&qword_106DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_3CB0(&qword_104CA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_484B8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3CB0(&qword_106628);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_485C4()
{
  result = qword_106B08;
  if (!qword_106B08)
  {
    sub_28D98(&qword_1063B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106B08);
  }

  return result;
}

void *sub_48628(void *result, int64_t a2, char a3, void *a4)
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
    sub_3CB0(&qword_106DD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3CB0(&qword_104E68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_48778(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3CB0(&qword_104E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_48918(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_3CB0(a5);
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

double *sub_48AF4(double *result, int64_t a2, char a3, double *a4)
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
    sub_3CB0(&qword_106DE0);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_3CB0(&qword_106DE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_48C28(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_48C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactAsset()
{
  result = qword_106E28;
  if (!qword_106E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_48D88()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v8;
  v62 = sub_C4004();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_C4BF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3CB0(&qword_106B68);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_C43D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_45500(v18);
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_C060(v18, &qword_106B68);
    return 0;
  }

  else
  {
    v26 = *(v20 + 32);
    v60 = v23;
    v26(v22, v18, v23);
    sub_C4BC4();
    v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_C4B54().super.isa;
    v25 = [v27 initWithContentType:isa];

    (*(v13 + 8))(v15, v12);
    sub_C43B4();
    v29 = sub_C5444();

    [v25 setDisplayName:v29];

    v30 = v62;
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.search(_:), v62);
    LOBYTE(isa) = sub_C3FF4();
    (*(v9 + 8))(v11, v30);
    v31 = v22;
    if (isa)
    {
      sub_C43B4();
      v32 = objc_allocWithZone(CSPerson);
      v33 = sub_C5444();

      v34 = sub_C5664().super.isa;
      v35 = sub_C5444();
      v36 = [v32 initWithDisplayName:v33 handles:v34 handleIdentifier:v35];

      sub_3CB0(&qword_106E78);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_CFAF0;
      *(v37 + 32) = v36;
      sub_496A0();
      v38 = v36;
      v39.super.isa = sub_C5664().super.isa;

      [v25 setAuthors:v39.super.isa];
    }

    else
    {
      sub_3CB0(&qword_106628);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_CE5B0;
      *(v40 + 32) = sub_C43B4();
      *(v40 + 40) = v41;
      v39.super.isa = sub_C5664().super.isa;

      [v25 setAuthorNames:v39.super.isa];
    }

    v42 = v66;
    v43 = v63;

    sub_C43C4();
    v44 = sub_C3CB4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      v47 = *(v61 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
      if (v47 && (v48 = [v47 entry]) != 0)
      {
        v49 = v48;
        sub_C4034();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      (*(v45 + 56))(v42, v50, 1, v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_C060(v43, &qword_104800);
      }
    }

    else
    {
      (*(v45 + 32))(v42, v43, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    sub_C53B4();
    sub_C3D44();
    v51 = sub_C54A4();
    v53 = v52;
    sub_3CB0(&qword_106628);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_CE5B0;
    v55 = sub_75B7C(v51, v53, v42);
    v57 = v56;

    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = sub_C5664().super.isa;

    [v25 setAlternateNames:v58];

    sub_C060(v42, &qword_104800);
    (*(v24 + 8))(v31, v60);
  }

  return v25;
}

uint64_t sub_4965C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C43D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_496A0()
{
  result = qword_106E80;
  if (!qword_106E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_106E80);
  }

  return result;
}

uint64_t sub_496EC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v139 = a2;
  v138 = a1;
  v111 = a3;
  v4 = sub_3CB0(&qword_106940);
  v5 = __chkstk_darwin(v4 - 8);
  v115 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v112 = &v101[-v7];
  v8 = sub_C4BF4();
  v114 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v106 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v101[-v12];
  __chkstk_darwin(v11);
  v119 = &v101[-v14];
  v121 = sub_C44D4();
  v113 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v16 = __chkstk_darwin(v135);
  v127 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v118 = &v101[-v19];
  v20 = __chkstk_darwin(v18);
  v133 = &v101[-v21];
  __chkstk_darwin(v20);
  v126 = &v101[-v22];
  v23 = sub_3CB0(&qword_1063B8);
  v24 = __chkstk_darwin(v23 - 8);
  v125 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v27 = &v101[-v26];
  v141 = sub_C3934();
  v117 = *(v141 - 8);
  v28 = __chkstk_darwin(v141);
  v116 = &v101[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v101[-v30];
  v32 = type metadata accessor for AssetAttachment.AssetType(0);
  v33 = __chkstk_darwin(v32);
  v124 = &v101[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v137 = &v101[-v36];
  v37 = __chkstk_darwin(v35);
  v134 = &v101[-v38];
  __chkstk_darwin(v37);
  v40 = &v101[-v39];
  v41 = *(v3 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachments);
  v131 = v13;
  v108 = v3;
  if (v41 >> 62)
  {
    goto LABEL_93;
  }

  v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  v132 = v8;
  v140 = v32;
  if (v42)
  {
    v8 = 0;
    v143 = v41 & 0xFFFFFFFFFFFFFF8;
    v144 = v41 & 0xC000000000000001;
    v129 = (v117 + 56);
    v107 = (v113 + 8);
    v122 = (v117 + 32);
    v128 = (v117 + 48);
    v110 = (v114 + 48);
    v104 = (v114 + 32);
    v103 = (v114 + 8);
    v109 = (v117 + 8);
    v123 = v31;
    v136 = v41;
    v142 = v42;
    v130 = v27;
    do
    {
      if (v144)
      {
        v44 = sub_C5FE4();
        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(v143 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v42 = sub_C60E4();
          goto LABEL_3;
        }

        v44 = *(v41 + 8 * v8 + 32);

        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      v46 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
      sub_3ED7C(v44 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v40, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v43 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v43 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        sub_3ECB8(v40, v43);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v54 = v40;
        if (v139)
        {

          v100 = v40;
          goto LABEL_89;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      v48 = v44 + v46;
      v49 = v134;
      sub_3ED7C(v48, v134, type metadata accessor for AssetAttachment.AssetType);
      v50 = swift_getEnumCaseMultiPayload();
      v51 = v50;
      if (v50 <= 1)
      {
        v53 = v49;
        if (v51)
        {
          sub_3ECB8(v49, type metadata accessor for AssetAttachment.AssetType);
          v59 = 1;
          v27 = v130;
          goto LABEL_27;
        }
      }

      else
      {
        v52 = v50 - 2;
        v53 = v49;
        if (v52 >= 2)
        {

          v53 = &v49[*(sub_3CB0(&qword_106948) + 48)];
        }
      }

      v56 = v126;
      sub_3ED18(v53, v126);
      v57 = v127;
      sub_3ED7C(v56, v127, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v60 = v120;
        sub_C44C4();
        v61 = v130;
        sub_C4494();

        v62 = v60;
        v32 = v140;
        (*v107)(v62, v121);
        v63 = v56;
        v27 = v61;
        v31 = v123;
        sub_3ECB8(v63, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v59 = 0;
LABEL_27:
        v58 = v141;
        goto LABEL_28;
      }

      sub_3ECB8(v56, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v27 = v130;
      v58 = v141;
      (*v122)(v130, v57, v141);
      v59 = 0;
LABEL_28:
      (*v129)(v27, v59, 1, v58);
      v54 = &v40[*(sub_3CB0(&qword_106948) + 48)];
      if ((*v128)(v27, 1, v58) == 1)
      {

        sub_C060(v27, &qword_1063B8);
      }

      else
      {
        v64 = v27;
        v27 = v58;
        (*v122)(v31, v64, v58);
        sub_C38A4();
        v65 = v131;
        sub_C4B64();
        v66 = v115;
        v67 = v132;
        sub_C4B34();
        if ((*v110)(v66, 1, v67) == 1)
        {

          v31 = v123;
          (*v109)(v123, v58);
          sub_C060(v66, &qword_106940);
          v32 = v140;
        }

        else
        {
          v27 = v106;
          (*v104)(v106, v66, v67);
          sub_C4BB4();
          v68 = sub_C4BD4();
          v105 = *v103;
          v105(v65, v67);
          if (v68)
          {
            v105(v27, v67);
            v31 = v123;
            (*v109)(v123, v141);
LABEL_36:
            v32 = v140;
            if (v139)
            {

              v100 = v54;
              goto LABEL_89;
            }

LABEL_20:
            v55 = *(v44 + 16);
            sub_3ECB8(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v55 == v138)
            {
LABEL_85:

              goto LABEL_90;
            }

            v41 = v136;
            goto LABEL_7;
          }

          sub_C4BA4();
          v102 = sub_C4BD4();
          v69 = v65;
          v70 = v105;
          v105(v69, v67);
          v70(v27, v67);
          v31 = v123;
          (*v109)(v123, v141);
          if (v102)
          {
            goto LABEL_36;
          }

          v32 = v140;
        }
      }

      sub_3ECB8(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v41 = v136;
LABEL_7:
      ++v8;
    }

    while (v45 != v142);
  }

  v71 = *(v108 + OBJC_IVAR____TtC20JournalNotifications5Asset_sourceAttachments);
  if (v71 >> 62)
  {
    v8 = sub_C60E4();
  }

  else
  {
    v8 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
  }

  v40 = v118;
  v27 = v137;
  v31 = v119;

  if (!v8)
  {
LABEL_84:

    return (*(v117 + 56))(v111, 1, 1, v141);
  }

  v41 = 0;
  v143 = v71 & 0xFFFFFFFFFFFFFF8;
  v144 = v71 & 0xC000000000000001;
  v136 = (v117 + 56);
  v126 = (v113 + 8);
  v129 = (v117 + 32);
  v134 = (v117 + 48);
  v128 = (v114 + 48);
  v122 = (v114 + 32);
  v115 = (v114 + 8);
  v127 = (v117 + 8);
  v130 = v71;
  v142 = v8;
  while (1)
  {
    if (v144)
    {
      v73 = sub_C5FE4();
      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v41 >= *(v143 + 16))
      {
        goto LABEL_92;
      }

      v73 = *(v71 + 8 * v41 + 32);

      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v75 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
    sub_3ED7C(v73 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v27, type metadata accessor for AssetAttachment.AssetType);
    v76 = swift_getEnumCaseMultiPayload();
    if (v76 <= 1)
    {
      if (v76)
      {

        v72 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
LABEL_46:

        v72 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_3ECB8(v27, v72);
      goto LABEL_48;
    }

    if (v76 != 2)
    {
      if (v76 == 3)
      {
        goto LABEL_46;
      }

      v77 = v73 + v75;
      v78 = v124;
      sub_3ED7C(v77, v124, type metadata accessor for AssetAttachment.AssetType);
      v79 = swift_getEnumCaseMultiPayload();
      v80 = v79;
      if (v79 <= 1)
      {
        v82 = v78;
        v83 = v133;
        if (v80)
        {
          sub_3ECB8(v78, type metadata accessor for AssetAttachment.AssetType);
          v89 = 1;
          v87 = v125;
          goto LABEL_68;
        }
      }

      else
      {
        v81 = v79 - 2;
        v82 = v78;
        v83 = v133;
        if (v81 >= 2)
        {

          v84 = sub_3CB0(&qword_106948);
          v83 = v133;
          v82 = &v78[*(v84 + 48)];
        }
      }

      sub_3ED18(v82, v83);
      sub_3ED7C(v83, v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_3ECB8(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v87 = v125;
        v88 = v141;
        (*v129)(v125, v40, v141);
        v89 = 0;
LABEL_69:
        (*v136)(v87, v89, 1, v88);
        v92 = sub_3CB0(&qword_106948);
        v85 = &v137[*(v92 + 48)];
        if ((*v134)(v87, 1, v88) == 1)
        {

          sub_C060(v87, &qword_1063B8);
          v27 = v137;
          goto LABEL_74;
        }

        v93 = v116;
        (*v129)(v116, v87, v88);
        sub_C38A4();
        v94 = v131;
        sub_C4B64();
        v95 = v112;
        sub_C4B34();
        v96 = v132;
        if ((*v128)(v95, 1, v132) == 1)
        {

          (*v127)(v93, v88);
          sub_C060(v95, &qword_106940);
          v40 = v118;
          v27 = v137;
          v31 = v119;
          goto LABEL_73;
        }

        v97 = v119;
        (*v122)(v119, v95, v96);
        sub_C4BB4();
        LODWORD(v123) = sub_C4BD4();
        v98 = *v115;
        (*v115)(v94, v96);
        if (v123)
        {
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
        }

        else
        {
          sub_C4BA4();
          LODWORD(v123) = sub_C4BD4();
          v98(v94, v96);
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
          if ((v123 & 1) == 0)
          {

            v40 = v118;
            v27 = v137;
LABEL_73:
            v71 = v130;
LABEL_74:
            sub_3ECB8(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v32 = v140;
            goto LABEL_48;
          }
        }

        v40 = v118;
        v27 = v137;
        v71 = v130;
        if (v139)
        {

          v100 = v85;
          goto LABEL_89;
        }

        goto LABEL_61;
      }

      v90 = v120;
      sub_C44C4();
      v91 = v125;
      sub_C4494();
      v71 = v130;

      (*v126)(v90, v121);
      v87 = v91;
      sub_3ECB8(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v89 = 0;
LABEL_68:
      v88 = v141;
      goto LABEL_69;
    }

    v85 = v27;
    if (v139)
    {
      break;
    }

LABEL_61:
    v86 = *(v73 + 16);
    sub_3ECB8(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (v86 == v138)
    {
      goto LABEL_85;
    }

    v32 = v140;
LABEL_48:
    v8 = v142;
    ++v41;
    if (v74 == v142)
    {
      goto LABEL_84;
    }
  }

  v100 = v27;
LABEL_89:
  sub_3ECB8(v100, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_90:
  sub_7BFE8(v111);
}

char *sub_4AA64(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for VideoThumbnailCacheOperation());
  v14 = v6;

  return sub_67BD4(v14, a1, a2, a3 & 1, a4, a5, a6);
}

id sub_4AB08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAsset()
{
  result = qword_106EB0;
  if (!qword_106EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4AC10()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v9;
  v10 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_C4BF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3CB0(&qword_106B90);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = sub_C4734();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v0;
  sub_45740(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_C060(v19, &qword_106B90);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = sub_C4724();
  if (!v25)
  {
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v26 = v25;
  v55 = v24;
  v56 = v3;
  sub_C4BB4();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v14 + 8))(v16, v13);
  sub_496EC(0, 1, v12);
  v30 = sub_C3934();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v12, 1, v30) != 1)
  {
    sub_C38D4(v32);
    v33 = v34;
    (*(v31 + 8))(v12, v30);
  }

  [v29 setContentURL:v33];

  sub_7578C(v55, v26, 0, 0);

  v35 = v59;
  sub_C4714();
  v36 = v35;
  v37 = sub_C3CB4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v60 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    v41 = v58;
    if (v40)
    {
      v42 = [v40 entry];
      if (v42)
      {
        v43 = v42;
        sub_C4034();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v36 = v59;
    }

    else
    {
      v44 = 1;
    }

    (*(v38 + 56))(v41, v44, 1, v37);
    if (v39(v36, 1, v37) != 1)
    {
      sub_C060(v36, &qword_104800);
    }
  }

  else
  {
    v41 = v58;
    (*(v38 + 32))(v58, v36, v37);
    (*(v38 + 56))(v41, 0, 1, v37);
  }

  sub_C53B4();
  sub_C3D44();
  v45 = sub_C54A4();
  v47 = v46;
  sub_3CB0(&qword_106628);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_CE5B0;
  v49 = sub_75B7C(v45, v47, v41);
  v51 = v50;

  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  v52 = sub_C5664().super.isa;

  [v29 setAlternateNames:v52];

  sub_C060(v41, &qword_104800);
  (*(v21 + 8))(v23, v20);
  return v29;
}

uint64_t sub_4B3B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4734();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_4B408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicAsset()
{
  result = qword_106F28;
  if (!qword_106F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4B510()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v9 - 8);
  v68 = &v66 - v10;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106BB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_C42E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  sub_45980(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_C060(v17, &qword_106BB8);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_C4B84();
  v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v69 = [v23 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_C42B4();
  v25 = v21;
  v67 = v19;
  if (v26)
  {
    v27 = v71;
LABEL_6:
    v29 = v69;
    v30 = sub_C5444();

    goto LABEL_7;
  }

  sub_C42D4();
  v27 = v71;
  if (v28)
  {
    goto LABEL_6;
  }

  v30 = 0;
  v29 = v69;
LABEL_7:
  [v29 setDisplayName:v30];

  v73 = sub_C42D4();
  v74[0] = v31;
  v32 = 0;
  v74[1] = sub_C42A4();
  v74[2] = v33;
  v34 = _swiftEmptyArrayStorage;
LABEL_8:
  v35 = &v74[2 * v32];
  while (++v32 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v66 = v25;
      v71 = v18;
      v38 = v5;
      v39 = v27;
      v40 = *(v36 - 3);

      v41 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_484B8(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_484B8((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[2 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v37;
      v8 = v41;
      v27 = v39;
      v5 = v38;
      v18 = v71;
      v25 = v66;
      goto LABEL_8;
    }
  }

  sub_3CB0(&qword_104950);
  swift_arrayDestroy();
  v72 = v34;
  sub_3CB0(&qword_1063B0);
  sub_485C4();
  sub_C5324();

  v45 = sub_C5444();

  v22 = v69;
  [v69 setContentDescription:v45];

  v46 = v68;
  sub_C42C4();
  v47 = sub_C3934();
  v48 = *(v47 - 8);
  v50 = 0;
  if ((*(v48 + 48))(v46, 1, v47) != 1)
  {
    sub_C38D4(v49);
    v50 = v51;
    (*(v48 + 8))(v46, v47);
  }

  [v22 setThumbnailURL:v50];

  v52 = *(v70 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v52 && (v53 = [v52 entry]) != 0)
  {
    v54 = v53;
    sub_C4034();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_C3CB4();
  (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
  sub_C53B4();
  sub_C3D44();
  v57 = sub_C54A4();
  v59 = v58;
  sub_3CB0(&qword_106628);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_CE5B0;
  v61 = sub_75B7C(v57, v59, v8);
  v63 = v62;

  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v64 = sub_C5664().super.isa;

  [v22 setAlternateNames:v64];

  sub_C060(v8, &qword_104800);
  (*(v67 + 8))(v25, v18);
  return v22;
}

uint64_t sub_4BD50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C42E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_4BDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookAsset()
{
  result = qword_106FA0;
  if (!qword_106FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4BEAC()
{
  v1 = v0;
  v2 = sub_C3D54();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = sub_C4BF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3CB0(&qword_106BE0);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = sub_C41C4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_45BC0(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_C060(v13, &qword_106BE0);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_C4B84();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_C4B54().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    sub_C41A4();
    if (v21)
    {
      v22 = sub_C5444();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    sub_C41B4();
    if (v23)
    {
      v24 = sub_C5444();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      sub_C4034();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_C3CB4();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    sub_C53B4();
    sub_C3D44();
    v31 = sub_C54A4();
    v33 = v32;
    sub_3CB0(&qword_106628);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_CE5B0;
    v35 = sub_75B7C(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_C5664().super.isa;

    [v18 setAlternateNames:v38];

    sub_C060(v25, &qword_104800);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_4C478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C41C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_4C4CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastAsset()
{
  result = qword_107018;
  if (!qword_107018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4C5D4()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = sub_C4BF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3CB0(&qword_106C08);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_C4434();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_45E00(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_C060(v15, &qword_106C08);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_C4B44();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_C4B54().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    sub_C4404();
    if (v23)
    {
      v24 = sub_C5444();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    sub_C4424();
    v25 = sub_C3934();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      sub_C38D4(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    sub_C4414();
    if (v30)
    {
      v31 = sub_C5444();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = sub_C4414();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_3CB0(&qword_106628);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_CE5B0;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = sub_C5664().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      sub_C4034();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_C3CB4();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    sub_C53B4();
    sub_C3D44();
    v44 = sub_C54A4();
    v45 = v32;
    v47 = v46;
    sub_3CB0(&qword_106628);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_CE5B0;
    v49 = sub_75B7C(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = sub_C5664().super.isa;

    [v20 setAlternateNames:v52];

    sub_C060(v45, &qword_104800);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_4CD18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4434();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4CD5C()
{

  *(v0 + OBJC_IVAR____TtC20JournalNotifications14LivePhotoAsset_livePhotoAttachments) = sub_4D6BC(v1);
}

uint64_t sub_4CDAC()
{
}

id sub_4CDEC()
{
  if ((v0[OBJC_IVAR____TtC20JournalNotifications14LivePhotoAsset_pendingLivePhotoRequest + 4] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC20JournalNotifications14LivePhotoAsset_pendingLivePhotoRequest];
    [objc_opt_self() cancelLivePhotoRequestWithRequestID:*v1];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LivePhotoAsset();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LivePhotoAsset()
{
  result = qword_107098;
  if (!qword_107098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4CFE4()
{

  return swift_deallocClassInstance();
}

id sub_4D070()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_C4734();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_46040(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_C060(v17, &qword_106B90);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_C4724();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  sub_C4BE4();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_7578C(v24, v25, 0, 0);

  v29 = v52;
  sub_C4714();
  v30 = v29;
  v31 = sub_C3CB4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        sub_C4034();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_C060(v30, &qword_104800);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  sub_C53B4();
  sub_C3D44();
  v39 = sub_C54A4();
  v41 = v40;
  sub_3CB0(&qword_106628);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_CE5B0;
  v43 = sub_75B7C(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_C5664().super.isa;

  [v28 setAlternateNames:v46];

  sub_C060(v37, &qword_104800);
  (*(v19 + 8))(v21, v18);
  return v28;
}

size_t sub_4D6BC(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = sub_C60E4();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_52598(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = sub_C5FE4();
        sub_4D94C(v13 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v8);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_52598(v14 > 1, v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v15 + 1;
        sub_4D9B0(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_4D94C(*(a1 + v16) + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v6);
        v20 = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_52598(v17 > 1, v18 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v18 + 1;
        sub_4D9B0(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_4D94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DA14()
{
  v1 = sub_C5414();
  __chkstk_darwin(v1 - 8);
  v33[1] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C53F4();
  __chkstk_darwin(v3 - 8);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_107200);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = sub_3CB0(&qword_107208);
  __chkstk_darwin(v8 - 8);
  v36 = v33 - v9;
  v10 = sub_C4874();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3CB0(&qword_106C30);
  __chkstk_darwin(v14 - 8);
  v16 = v33 - v15;
  v17 = sub_C3D54();
  __chkstk_darwin(v17 - 8);
  v18 = sub_3CB0(&qword_107210);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v33 - v20;
  sub_C3D24();
  sub_4E9B8();
  sub_C3744();
  if (*(v0 + OBJC_IVAR____TtC20JournalNotifications19MotionActivityAsset_metadata))
  {

    sub_42B40(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_106C30;
      v23 = v16;
LABEL_9:
      sub_C060(v23, v22);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_C060(v16, &qword_106C30);
    sub_C4854();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    if (v25)
    {
      sub_C55A4();

      sub_4EA0C();
      sub_C4A24();
      v26 = v35;
      sub_C4A64();
      (*(v34 + 8))(v7, v26);

      v27 = sub_3CB0(&qword_107228);
      v28 = *(v27 - 8);
      v29 = v36;
      if ((*(v28 + 48))(v36, 1, v27) != 1)
      {
        sub_C4A94();
        v31 = v37;
        (*(v28 + 8))(v29, v27);
        sub_C53E4();
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        sub_C53D4(v38);
        v37 = v31;
        sub_C53C4();
        v39._countAndFlagsBits = 0x2973287065747320;
        v39._object = 0xE800000000000000;
        sub_C53D4(v39);
        sub_C5404();
        sub_C3D44();
        v32 = sub_C54A4();
        (*(v19 + 8))(v21, v18);
        return v32;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_107208;
      v23 = v29;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_4E13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset()
{
  result = qword_1071B0;
  if (!qword_1071B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4E244()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106C30);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = sub_C4874();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_42B40(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_C060(v17, &qword_106C30);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_C4B74();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = sub_C4834();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_C4844();
LABEL_9:
  v28 = sub_C5444();

  [v24 setDisplayName:v28];

  sub_4DA14();
  v49[1] = v3;
  if (v29)
  {
    v30 = sub_C5444();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  sub_C4864();
  v32 = v31;
  v33 = sub_C3CB4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        sub_C4034();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_C060(v32, &qword_104800);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  sub_C53B4();
  sub_C3D44();
  v40 = sub_C54A4();
  v42 = v41;
  sub_3CB0(&qword_106628);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_CE5B0;
  v44 = sub_75B7C(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_C5664().super.isa;

  [v24 setAlternateNames:v47];

  sub_C060(v10, &qword_104800);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_4E974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4E9B8()
{
  result = qword_107218;
  if (!qword_107218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107218);
  }

  return result;
}

unint64_t sub_4EA0C()
{
  result = qword_107220;
  if (!qword_107220)
  {
    sub_28D98(&qword_107210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107220);
  }

  return result;
}

char *sub_4EA70(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_3CB0(&qword_106060);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation());
  sub_44C04(v15);
  sub_4F3EC(v15, v16 + qword_1153E0);
  v17 = v6;

  return sub_67BD4(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_4EB7C(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  sub_C3D14();
  sub_4F3A4(&qword_104A58, &type metadata accessor for UUID);
  v15._countAndFlagsBits = sub_C6214();
  sub_C5524(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_C5524(v16);
  v17._countAndFlagsBits = sub_C6214();
  sub_C5524(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_C5524(v18);
  v4 = 0x656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (a2 <= 3u)
  {
    v12._countAndFlagsBits = v4;
  }

  else
  {
    v12._countAndFlagsBits = v6;
  }

  if (a2 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v12._object = v13;
  sub_C5524(v12);

  v19._countAndFlagsBits = sub_C6214();
  sub_C5524(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  sub_C5524(v20);

  return 0x2D626D756874;
}

id sub_4EE20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset()
{
  result = qword_107258;
  if (!qword_107258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_4EF28()
{
  v1 = sub_3CB0(&qword_106068);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_C43A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_106060);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_C4504();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_40E20(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v15 = &qword_106060;
    v16 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_C44F4();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_3CB0(&qword_106070);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_CE5B0;
    (*(v5 + 16))(v19 + v18, v7, v4);
    v20 = sub_4F45C(v19);
    swift_setDeallocating();
    v21 = *(v5 + 8);
    v21(v19 + v18, v4);
    swift_deallocClassInstance();
    v21(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v20;
  }

  (*(v12 + 8))(v14, v11);
  v15 = &qword_106068;
  v16 = v3;
LABEL_7:
  sub_C060(v16, v15);
  return 0;
}

uint64_t sub_4F3A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4F3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_106060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_4F45C(double *a1)
{
  v166 = a1;
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_3CB0(&qword_107320);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v127 - v5;
  v133 = sub_3CB0(&qword_107328);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v127 - v6;
  v136 = sub_3CB0(&qword_107330);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v127 - v7;
  v129 = sub_C4BF4();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v142 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v16 = __chkstk_darwin(v13);
  v141 = &v127 - v17;
  __chkstk_darwin(v16);
  v19 = &v127 - v18;
  v165 = sub_C43A4();
  v20 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3CB0(&qword_104800);
  v24 = __chkstk_darwin(v23 - 8);
  v147 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v127 - v27;
  v29 = __chkstk_darwin(v26);
  v146 = &v127 - v30;
  v31 = __chkstk_darwin(v29);
  v161 = &v127 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v36 = *(v10 + 56);
  v149 = &v127 - v37;
  v36();
  v150 = v35;
  v167 = v9;
  v151 = v36;
  v152 = v10 + 56;
  (v36)(v35, 1, 1, v9);
  v38 = *(v166 + 2);
  if (v38)
  {
    v145 = v15;
    v39 = *(v20 + 16);
    v40 = v20 + 16;
    v41 = v166 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v156 = (v10 + 32);
    v157 = v39;
    v143 = (v10 + 8);
    v42 = _swiftEmptyArrayStorage;
    v43 = *(v40 + 56);
    v159 = v28;
    v160 = v40;
    v154 = (v40 - 8);
    v155 = v43;
    v44 = &unk_CDE60;
    v153 = _swiftEmptyArrayStorage;
    v45 = v19;
    v144 = v19;
    v158 = v22;
    v164 = (v10 + 48);
    v39(v22, v41, v165);
    while (1)
    {
      v46 = sub_C4384();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_484B8(0, *(v42 + 2) + 1, 1, v42);
        }

        v51 = *(v42 + 2);
        v50 = *(v42 + 3);
        if (v51 >= v50 >> 1)
        {
          v42 = sub_484B8((v50 > 1), v51 + 1, 1, v42);
        }

        *(v42 + 2) = v51 + 1;
        v52 = &v42[2 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v49;
      }

      v53 = sub_C42F4();
      v166 = v42;
      if (v54 >> 60 != 15)
      {
        v55 = v53;
        v56 = v54;
        sub_177E0();
        v57 = sub_C5D14();
        sub_1D580(v55, v56);
        if (v57)
        {
          v58 = [v57 _addressFormattedAsSinglelineAddress];
          if (v58 || (v58 = [v57 name]) != 0)
          {
            v59 = v58;
            v148 = sub_C5484();
            v61 = v60;
          }

          else
          {
            v98 = sub_C4384();
            if (!v99)
            {

              goto LABEL_22;
            }

            v61 = v99;
            v148 = v98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_484B8(0, *(v153 + 2) + 1, 1, v153);
          }

          v63 = *(v153 + 2);
          v62 = *(v153 + 3);
          if (v63 >= v62 >> 1)
          {
            v153 = sub_484B8((v62 > 1), v63 + 1, 1, v153);
          }

          v64 = v153;
          *(v153 + 2) = v63 + 1;
          v65 = &v64[2 * v63];
          *(v65 + 4) = v148;
          *(v65 + 5) = v61;
        }
      }

LABEL_22:
      v66 = v161;
      sub_C4324();
      v67 = *v164;
      v68 = (*v164)(v66, 1, v167);
      v162 = v41;
      v163 = v38;
      if (v68 == 1)
      {
        sub_C060(v66, &qword_104800);
LABEL_26:
        v42 = v166;
        v76 = v159;
        goto LABEL_31;
      }

      v69 = v66;
      v70 = *v156;
      v71 = v44;
      v72 = v167;
      (*v156)(v45, v69, v167);
      v73 = v149;
      v74 = v146;
      sub_B954(v149, v146, &qword_104800);
      if (v67(v74, 1, v72) == 1)
      {
        sub_C060(v73, &qword_104800);
        sub_C060(v74, &qword_104800);
        v75 = v167;
        v70(v73, v45, v167);
        (v151)(v73, 0, 1, v75);
        v22 = v158;
        v44 = v71;
        v41 = v162;
        v38 = v163;
        goto LABEL_26;
      }

      v77 = v141;
      v78 = v74;
      v79 = v167;
      v70(v141, v78, v167);
      v80 = sub_C3C24();
      v81 = *v143;
      (*v143)(v77, v79);
      if (v80)
      {
        v82 = v149;
        sub_C060(v149, &qword_104800);
        v83 = v167;
        v70(v82, v45, v167);
        (v151)(v82, 0, 1, v83);
        v44 = &unk_CDE60;
        v42 = v166;
        v22 = v158;
        v76 = v159;
      }

      else
      {
        v81(v45, v167);
        v42 = v166;
        v22 = v158;
        v76 = v159;
        v44 = &unk_CDE60;
      }

      v41 = v162;
      v38 = v163;
LABEL_31:
      sub_C4314();
      if (v67(v76, 1, v167) == 1)
      {
        (*v154)(v22, v165);
        sub_C060(v76, &qword_104800);
      }

      else
      {
        v84 = v76;
        v85 = *v156;
        v86 = v145;
        v87 = v167;
        (*v156)(v145, v84, v167);
        v88 = v150;
        v89 = v44;
        v90 = v147;
        sub_B954(v150, v147, &qword_104800);
        if (v67(v90, 1, v87) == 1)
        {
          v91 = v158;
          (*v154)(v158, v165);
          sub_C060(v88, &qword_104800);
          sub_C060(v90, &qword_104800);
          v85(v88, v86, v87);
          (v151)(v88, 0, 1, v87);
          v45 = v144;
          v42 = v166;
          v41 = v162;
          v38 = v163;
          v22 = v91;
          v44 = v89;
        }

        else
        {
          v92 = v142;
          v85(v142, v90, v87);
          v93 = sub_C3C14();
          v94 = *v143;
          (*v143)(v92, v87);
          v22 = v158;
          (*v154)(v158, v165);
          if (v93)
          {
            v95 = v150;
            sub_C060(v150, &qword_104800);
            v96 = v167;
            v85(v95, v86, v167);
            v97 = v96;
            v44 = &unk_CDE60;
            (v151)(v95, 0, 1, v97);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
          }

          else
          {
            v94(v86, v167);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
            v44 = &unk_CDE60;
          }
        }
      }

      v41 += v155;
      if (!--v38)
      {
        goto LABEL_41;
      }

      v157(v22, v41, v165);
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_41:
  v100 = v127;
  sub_C4B24();
  v101 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v167 = [v101 initWithContentType:isa];

  (*(v128 + 8))(v100, v129);
  v168 = v42;
  v103 = v132;
  v104 = v130;
  v105 = v133;
  (*(v132 + 104))(v130, enum case for ListFormatStyle.ListType.and<A, B>(_:), v133);
  v106 = v137;
  v107 = v135;
  v108 = v138;
  (*(v137 + 104))(v135, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v138);
  sub_3CB0(&qword_1063B0);
  sub_517B0(&qword_107338, &qword_1063B0);
  v109 = v131;
  sub_C34E4();
  (*(v106 + 8))(v107, v108);
  (*(v103 + 8))(v104, v105);
  sub_517B0(&qword_107340, &qword_107330);
  v110 = v136;
  sub_C55C4();
  (*(v134 + 8))(v109, v110);

  v111 = v169;
  v112 = v170;
  v168 = v153;
  sub_517B0(&qword_106B08, &qword_1063B0);
  v113 = sub_C5324();
  v115 = v114;

  v116 = v167;
  sub_7578C(v111, v112, v113, v115);

  sub_C53B4();
  sub_C3D44();
  v117 = sub_C54A4();
  v119 = v118;
  sub_3CB0(&qword_106628);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_CE5B0;
  v121 = v149;
  v122 = sub_75B7C(v117, v119, v149);
  v124 = v123;

  *(v120 + 32) = v122;
  *(v120 + 40) = v124;
  v125 = sub_C5664().super.isa;

  [v116 setAlternateNames:v125];

  sub_C060(v150, &qword_104800);
  sub_C060(v121, &qword_104800);
  return v116;
}

uint64_t sub_5054C(uint64_t a1)
{
  v3 = sub_C4614();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_105EA8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  sub_B954(a1, v32, &qword_104818);
  v11 = v33;
  if (v33)
  {
    v12 = sub_13DC4(v32, v33);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_C6224();
    (*(v13 + 8))(v15, v11);
    sub_BED0(v32);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for MultiPinMapAsset();
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "isEqual:", v16);
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_17;
  }

  sub_B954(a1, v32, &qword_104818);
  if (!v33)
  {
    sub_C060(v32, &qword_104818);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v29;
  v20 = v30;
  if (!*&v1[OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata])
  {
LABEL_10:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  sub_40A7C(v10);

  if ((*(v19 + 48))(v10, 1, v3))
  {
    sub_C060(v10, &qword_105EA8);
    goto LABEL_10;
  }

  v25 = v28;
  (*(v19 + 16))(v28, v10, v3);
  sub_C060(v10, &qword_105EA8);
  v21 = sub_C45D4();
  (*(v19 + 8))(v25, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*&v20[OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata])
  {

    sub_40A7C(v8);

    if ((*(v19 + 48))(v8, 1, v3))
    {
      sub_C060(v8, &qword_105EA8);
    }

    else
    {
      v26 = v28;
      (*(v19 + 16))(v28, v8, v3);
      sub_C060(v8, &qword_105EA8);
      v22 = sub_C45D4();
      (*(v19 + 8))(v26, v3);
      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v23 = sub_509F8(v21, v22);

  return v23 & 1;
}

uint64_t sub_509F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_C43A4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_51884(&qword_107350, &type metadata accessor for VisitAssetMetadata);
    v21 = sub_C53A4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_50C94()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_105EA8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata))
  {

    sub_40A7C(v5);

    v6 = sub_C4614();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_C060(v5, &qword_105EA8);
    }

    else
    {
      v7 = sub_C45F4();
      v3 = sub_C060(v5, &qword_105EA8);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_3CB0(&qword_107348);
    sub_C5C54();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

char *sub_50E64(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_3CB0(&qword_105EA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation());
  sub_44E44(v15);
  sub_517F8(v15, v16 + qword_1153D8);
  v17 = v6;

  return sub_67BD4(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_50F70(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_3CB0(&qword_105EA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_C3D14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC20JournalNotifications5Asset_id, v10);
  v30 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata))
  {

    sub_40A7C(v9);

    v14 = sub_C4614();
    v15 = 1;
    if ((*(*(v14 - 8) + 48))(v9, 1, v14))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_C4604();
      v15 = v17;
    }

    sub_C060(v9, &qword_105EA8);
  }

  else
  {
    v16 = 0;
    v15 = 1;
  }

  v33 = 0x2D626D756874;
  v34 = 0xE600000000000000;
  sub_51884(&qword_104A58, &type metadata accessor for UUID);
  v35._countAndFlagsBits = sub_C6214();
  sub_C5524(v35);

  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_C5524(v36);
  v32._countAndFlagsBits = a1;
  v37._countAndFlagsBits = sub_C6214();
  sub_C5524(v37);

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  sub_C5524(v38);
  v18 = 0x656772614C78;
  v19 = 0xE500000000000000;
  v20 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v20 = 0x657263536C6C7566;
    v19 = 0xEA00000000006E65;
  }

  v21 = 0xE600000000000000;
  v22 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v22 = 0x61546D756964656DLL;
    v21 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v20 = v22;
    v19 = v21;
  }

  v23 = 0xEA00000000006564;
  v24 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v24 = 0x656772616CLL;
    v23 = 0xE500000000000000;
  }

  if (a2)
  {
    v25 = 0xE600000000000000;
  }

  else
  {
    v18 = 0x6154656772614C78;
    v25 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v23 = v25;
  }

  else
  {
    v18 = v24;
  }

  if (a2 <= 3u)
  {
    v26._countAndFlagsBits = v18;
  }

  else
  {
    v26._countAndFlagsBits = v20;
  }

  if (a2 <= 3u)
  {
    v27 = v23;
  }

  else
  {
    v27 = v19;
  }

  v26._object = v27;
  sub_C5524(v26);

  if ((v15 & 1) == 0)
  {
    v32._countAndFlagsBits = 45;
    v32._object = 0xE100000000000000;
    v31 = v16;
    v39._countAndFlagsBits = sub_C6214();
    sub_C5524(v39);

    sub_C5524(v32);
  }

  v32._countAndFlagsBits = 45;
  v32._object = 0xE100000000000000;
  v31 = v30;
  v40._countAndFlagsBits = sub_C6214();
  sub_C5524(v40);

  sub_C5524(v32);

  v28 = v33;
  (*(v11 + 8))(v13, v10);
  return v28;
}

id sub_51410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiPinMapAsset()
{
  result = qword_1072D0;
  if (!qword_1072D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_51518()
{
  v1 = sub_3CB0(&qword_105EA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_C4614();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_40A7C(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_C060(v3, &qword_105EA8);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_C45D4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_4F45C(v8);

    return v9;
  }

  return 0;
}

uint64_t sub_517B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_28D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_517F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51884(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_518DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioAsset()
{
  result = qword_107380;
  if (!qword_107380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_519E4()
{
  v36 = sub_C4814();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3CB0(&qword_106C80);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  sub_46280(v32 - v4);
  v6 = sub_C4264();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_C060(v5, &qword_106C80);
    return 0;
  }

  v8 = sub_C4254();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_525F8(0, v9, 0);
    v10 = v37;
    v12 = *(v0 + 16);
    v11 = v0 + 16;
    v13 = *(v11 + 64);
    v32[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v33 = *(v11 + 56);
    v34 = v12;
    v35 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v36;
      v34(v2, v14, v36);
      v17 = sub_C4804();
      v19 = v18;
      (*v15)(v2, v16);
      v37 = v10;
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_525F8((v20 > 1), v21 + 1, 1);
        v10 = v37;
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[2 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v14 += v33;
      --v9;
    }

    while (v9);

    v24 = v10[2];
    if (v24 != 0.0)
    {
LABEL_12:
      v25 = 0;
      v26 = 0;
      v27 = (v10 + 5);
      v28 = 0xE000000000000000;
      while (v26 < *(v10 + 2))
      {
        ++v26;
        v30 = *(v27 - 1);
        v29 = *v27;
        v37 = v25;
        v38 = v28;

        v39._countAndFlagsBits = v30;
        v39._object = v29;
        sub_C5524(v39);

        v25 = v37;
        v28 = v38;
        v27 += 2;
        if (*&v24 == v26)
        {
          v31 = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24 != 0.0)
    {
      goto LABEL_12;
    }
  }

  v31 = 0;
LABEL_18:

  return v31;
}

id sub_51D44()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C4264();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_106C80);
  __chkstk_darwin(v8 - 8);
  v10 = v51 - v9;
  v11 = sub_3CB0(&qword_104800);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = sub_C4BF4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v21 = sub_519E4();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v51[1] = v3;
      sub_C4B84();
      v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
      isa = sub_C4B54().super.isa;
      v28 = [v26 initWithContentType:isa];

      (*(v17 + 8))(v19, v16);
      sub_7578C(0, 0, v23, v24);

      v29 = v55;
      if (*(v20 + OBJC_IVAR____TtC20JournalNotifications10AudioAsset_metadata))
      {

        sub_42EE4(v10);

        v31 = v53;
        v30 = v54;
        if (!(*(v53 + 48))(v10, 1, v54))
        {
          v39 = v52;
          (*(v31 + 16))(v52, v10, v30);
          sub_C060(v10, &qword_106C80);
          sub_C4244();
          (*(v31 + 8))(v39, v30);
          v40 = sub_C3CB4();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v29, 1, v40) != 1)
          {
            (*(v41 + 32))(v15, v29, v40);
            (*(v41 + 56))(v15, 0, 1, v40);
LABEL_19:
            sub_C53B4();
            sub_C3D44();
            v42 = sub_C54A4();
            v44 = v43;
            sub_3CB0(&qword_106628);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_CE5B0;
            v46 = sub_75B7C(v42, v44, v15);
            v48 = v47;

            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            v49 = sub_C5664().super.isa;

            [v28 setAlternateNames:v49];

            sub_C060(v15, &qword_104800);
            return v28;
          }

LABEL_9:
          v33 = *(v20 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
          if (v33 && (v34 = [v33 entry]) != 0)
          {
            v35 = v34;
            sub_C4034();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = sub_C3CB4();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v15, v36, 1, v37);
          if ((*(v38 + 48))(v29, 1, v37) != 1)
          {
            sub_C060(v29, &qword_104800);
          }

          goto LABEL_19;
        }

        sub_C060(v10, &qword_106C80);
      }

      v32 = sub_C3CB4();
      (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_524B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_524F8(char *a1, int64_t a2, char a3)
{
  result = sub_3A060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52518(size_t a1, int64_t a2, char a3)
{
  result = sub_3A154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52538(size_t a1, int64_t a2, char a3)
{
  result = sub_3A17C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_52558(double *a1, int64_t a2, char a3)
{
  result = sub_3A1A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_52578(double *a1, int64_t a2, char a3)
{
  result = sub_3A1B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52598(size_t a1, int64_t a2, char a3)
{
  result = sub_3A2E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_525B8(double *a1, int64_t a2, char a3)
{
  result = sub_3A308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_525D8(char *a1, int64_t a2, char a3)
{
  result = sub_3A418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_525F8(double *a1, int64_t a2, char a3)
{
  result = sub_3A544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_52618(double *a1, int64_t a2, char a3)
{
  result = sub_3A650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52638(size_t a1, int64_t a2, char a3)
{
  result = sub_3A770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52658(size_t a1, int64_t a2, char a3)
{
  result = sub_3A974(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_52678(size_t a1, int64_t a2, char a3)
{
  result = sub_3A51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_52698(double *a1, int64_t a2, char a3)
{
  result = sub_3AB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_526B8()
{
  v98 = sub_C4A44();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_3CB0(&qword_107448);
  v2 = *(v100 - 8);
  v3 = __chkstk_darwin(v100);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v70 - v7;
  v9 = __chkstk_darwin(v6);
  v73 = v70 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v70 - v12;
  v14 = __chkstk_darwin(v11);
  v78 = v70 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = v70 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v70 - v19;
  v21 = __chkstk_darwin(v18);
  v77 = v70 - v22;
  __chkstk_darwin(v21);
  v99 = v70 - v23;
  v24 = sub_3CB0(&qword_107450);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = v70 - v28;
  v29 = [v0 itemType];
  if (v29)
  {
    v30 = v29;
    v81 = sub_C5484();
    v82 = v31;
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  v32 = [v0 siteName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_C5484();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v70[3] = " result type display";
  v70[2] = "/\\bspotify|pandora\\b/";
  v70[1] = "/\\bbook|books\\b/";
  ++v94;
  v95 = (v2 + 32);
  v93 = (v2 + 8);
  v37 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v37 = v81;
  }

  v38 = 7;
  if (((v82 >> 60) & ((v81 & 0x800000000000000) == 0)) != 0)
  {
    v39 = 11;
  }

  else
  {
    v39 = 7;
  }

  v75 = v39 | (v37 << 16);
  v40 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v40 = v34;
  }

  v80 = v36;
  v70[5] = v34;
  if (((v36 >> 60) & ((v34 & 0x800000000000000) == 0)) != 0)
  {
    v38 = 11;
  }

  v70[4] = v38 | (v40 << 16);
  v74 = v5;
  v41 = 0;
  v91 = v13;
  v71 = v27;
  v79 = v8;
  v72 = v20;
  while (1)
  {
    v42 = *(&off_F05F0 + v41 + 32);
    v92 = v42;
    v86 = v41;
    sub_C4A54();
    v43 = v77;
    v44 = v100;
    v89 = *v95;
    v89(v77, v20, v100);
    v45 = v96;
    sub_C4A74();
    v46 = v97;
    sub_C4A34();
    sub_C4A84();
    v88 = *v94;
    v88(v46, v98);
    v47 = *v93;
    (*v93)(v45, v44);
    v90 = v47;
    v47(v43, v44);
    sub_C55A4();
    v48 = sub_54068();
    v49 = v78;
    v87 = v48;
    sub_C4A24();
    v50 = v76;
    sub_C4A64();

    v51 = v100;
    v52 = v90;
    v90(v49, v100);
    v52(v99, v51);
    v53 = sub_3CB0(&qword_107460);
    v54 = *(v53 - 8);
    v55 = v54;
    v56 = *(v54 + 48);
    v57 = v54 + 48;
    v58 = v56(v50, 1, v53);
    v59 = v79;
    if (v58 != 1)
    {

      v69 = v50;
      goto LABEL_23;
    }

    sub_C060(v50, &qword_107450);
    v90 = v53;
    v84 = v57;
    v85 = v56;
    v83 = v55;
    sub_C4A54();
    v60 = v73;
    v61 = v100;
    v89(v73, v59, v100);
    v62 = v96;
    sub_C4A74();
    v63 = v97;
    sub_C4A34();
    sub_C4A84();
    v88(v63, v98);
    v52(v62, v61);
    v52(v60, v61);
    sub_C55A4();
    v64 = v74;
    sub_C4A24();
    v65 = v71;
    sub_C4A64();

    v52(v64, v61);
    v52(v91, v61);
    v66 = v86;
    v67 = v85(v65, 1, v90);
    v20 = v72;
    if (v67 != 1)
    {
      break;
    }

    v41 = v66 + 1;
    sub_C060(v65, &qword_107450);
    if (v41 == 6)
    {

      return 6;
    }
  }

  v69 = v65;
LABEL_23:
  sub_C060(v69, &qword_107450);
  return v92;
}

id sub_53274()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LinkAsset()
{
  result = qword_1073F8;
  if (!qword_1073F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_53384()
{
  v1 = sub_3CB0(&qword_104800);
  v2 = __chkstk_darwin(v1 - 8);
  v113 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v95 - v4;
  v6 = sub_C3D54();
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C5414();
  __chkstk_darwin(v9 - 8);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3CB0(&qword_1063B8);
  v12 = __chkstk_darwin(v11 - 8);
  v109 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v110 = &v95 - v14;
  v15 = sub_C3934();
  v111 = *(v15 - 8);
  __chkstk_darwin(v15);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_C4BF4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_C41F4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v114 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3CB0(&qword_106CA8);
  v25 = __chkstk_darwin(v24 - 8);
  __chkstk_darwin(v25);
  v28 = &v95 - v27;
  v112 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications9LinkAsset_metadata))
  {
    return 0;
  }

  v105 = v15;
  v106 = OBJC_IVAR____TtC20JournalNotifications9LinkAsset_metadata;
  v104 = v26;

  sub_43288(v28);

  v29 = v22[6];
  if (!v29(v28, 1, v21))
  {
    v101 = v29;
    v102 = v22 + 6;
    v100 = v8;
    v103 = v5;
    v32 = v114;
    v96 = v22[2];
    v97 = v22 + 2;
    v96(v114, v28, v21);
    sub_C060(v28, &qword_106CA8);
    v33 = sub_C41D4();
    v35 = v34;
    v36 = v22[1];
    v98 = v22 + 1;
    v36(v32, v21);
    isa = sub_C3974().super.isa;
    v38 = [objc_opt_self() metadataWithDataRepresentation:isa];

    sub_BF1C(v33, v35);
    if (!v38)
    {
      return 0;
    }

    sub_C4B74();
    v39 = objc_allocWithZone(CSSearchableItemAttributeSet);
    v40 = sub_C4B54().super.isa;
    v99 = [v39 initWithContentType:v40];

    (*(v18 + 8))(v20, v17);
    v41 = [v38 title];
    if (v41)
    {
      v42 = v41;
      v43 = sub_C5484();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v109;
    v47 = [v38 appleSummary];
    if (v47 || (v47 = [v38 summary]) != 0)
    {
      v48 = v38;
      v49 = v47;
      v50 = sub_C5484();
      v52 = v51;

      v38 = v48;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = v50;
    v30 = v99;
    sub_7578C(v43, v45, v53, v52);

    v54 = [v38 imageMetadata];
    v55 = v103;
    v109 = v36;
    if (v54)
    {
      v56 = v54;
      v57 = [v54 URL];

      v58 = v105;
      v59 = v111;
      if (v57)
      {
        sub_C38F4();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v62 = v112;
      (*(v59 + 56))(v46, v60, 1, v58);
      v61 = v110;
      sub_53FF8(v46, v110);
      if ((*(v59 + 48))(v61, 1, v58) != 1)
      {
        v71 = v107;
        (*(v59 + 32))(v107, v61, v58);
        sub_C38D4(v72);
        v74 = v73;
        [v30 setThumbnailURL:v73];

        (*(v59 + 8))(v71, v58);
        v64 = v113;
        goto LABEL_23;
      }
    }

    else
    {
      v61 = v110;
      (*(v111 + 56))(v110, 1, 1, v105);
      v62 = v112;
    }

    sub_C060(v61, &qword_1063B8);
    v63 = [v38 image];
    v64 = v113;
    if (v63)
    {
      v65 = v63;
      v66 = [v63 data];

      if (v66)
      {
        v67 = sub_C3984();
        v69 = v68;

        v70 = sub_C3974().super.isa;
        [v30 setThumbnailData:v70];

        sub_BF1C(v67, v69);
      }
    }

LABEL_23:
    if (sub_526B8() == 6)
    {
      sub_C53B4();
      sub_C3D44();
      v75 = sub_C54A4();
    }

    else
    {
      v75 = sub_32310();
    }

    v77 = v75;
    v78 = v76;
    if (*(v62 + v106))
    {

      v79 = v104;
      sub_43288(v104);

      if (!v101(v79, 1, v21))
      {
        v87 = v114;
        v96(v114, v79, v21);
        sub_C060(v79, &qword_106CA8);
        sub_C41E4();
        v109(v87, v21);
        v88 = sub_C3CB4();
        v89 = *(v88 - 8);
        if ((*(v89 + 48))(v64, 1, v88) != 1)
        {
          (*(v89 + 32))(v55, v64, v88);
          (*(v89 + 56))(v55, 0, 1, v88);
LABEL_38:
          sub_3CB0(&qword_106628);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_CE5B0;
          v91 = sub_75B7C(v77, v78, v55);
          v93 = v92;

          *(v90 + 32) = v91;
          *(v90 + 40) = v93;
          v94 = sub_C5664().super.isa;

          [v30 setAlternateNames:v94];

          sub_C060(v55, &qword_104800);
          return v30;
        }

LABEL_30:
        v81 = *(v62 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
        if (v81 && (v82 = [v81 entry]) != 0)
        {
          v83 = v82;
          sub_C4034();

          v84 = 0;
        }

        else
        {
          v84 = 1;
        }

        v85 = sub_C3CB4();
        v86 = *(v85 - 8);
        (*(v86 + 56))(v55, v84, 1, v85);
        if ((*(v86 + 48))(v64, 1, v85) != 1)
        {
          sub_C060(v64, &qword_104800);
        }

        goto LABEL_38;
      }

      sub_C060(v79, &qword_106CA8);
    }

    v80 = sub_C3CB4();
    (*(*(v80 - 8) + 56))(v64, 1, 1, v80);
    goto LABEL_30;
  }

  sub_C060(v28, &qword_106CA8);
  return 0;
}

uint64_t sub_53FB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C41F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_53FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_1063B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_54068()
{
  result = qword_107458;
  if (!qword_107458)
  {
    sub_28D98(&qword_107448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107458);
  }

  return result;
}

id sub_540DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReflectionAsset()
{
  result = qword_107490;
  if (!qword_107490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_541E4()
{
  v1 = v0;
  v2 = sub_C3D54();
  __chkstk_darwin(v2 - 8);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_C4BF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3CB0(&qword_106CC8);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_C4524();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_464C0(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_C060(v15, &qword_106CC8);
    return 0;
  }

  v49 = v8;
  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_C4514();
  if (v21 >> 60 == 15 || (v22 = v20, v23 = v21, v24 = sub_C3954(), sub_1D580(v22, v23), !v24))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v25 = [v24 string];

  v48 = sub_C5484();
  v27 = v26;

  sub_C4B74();
  v28 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v30 = [v28 initWithContentType:isa];

  (*(v10 + 8))(v12, v9);
  v31 = v30;
  sub_7578C(v48, v27, 0, 0);

  v32 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v32)
  {
    v33 = [v32 entry];
    v34 = v49;
    if (v33)
    {
      v35 = v33;
      sub_C4034();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v49;
  }

  v38 = sub_C3CB4();
  (*(*(v38 - 8) + 56))(v34, v36, 1, v38);
  sub_C53B4();
  sub_C3D44();
  v39 = sub_C54A4();
  v41 = v40;
  sub_3CB0(&qword_106628);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_CE5B0;
  v43 = sub_75B7C(v39, v41, v34);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_C5664().super.isa;

  [v31 setAlternateNames:v46];

  sub_C060(v34, &qword_104800);
  (*(v17 + 8))(v19, v16);
  return v31;
}

uint64_t sub_547F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_5484C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DrawingAsset()
{
  result = qword_107508;
  if (!qword_107508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_54954()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_106CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36[-v3];
  v5 = sub_C3D54();
  __chkstk_darwin(v5 - 8);
  v6 = sub_C5414();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = sub_C4BF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_C4B74();
  v14 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v16 = [v14 initWithContentType:isa];

  (*(v11 + 8))(v13, v10);
  sub_7578C(0x676E6977617264, 0xE700000000000000, 0, 0);
  v17 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v17 && (v18 = [v17 entry]) != 0)
  {
    v19 = v18;
    sub_C4034();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_C3CB4();
  (*(*(v21 - 8) + 56))(v9, v20, 1, v21);
  sub_C53B4();
  sub_C3D44();
  v22 = sub_C54A4();
  v24 = v23;
  sub_3CB0(&qword_106628);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_CE5B0;
  v26 = sub_75B7C(v22, v24, v9);
  v28 = v27;

  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_C5664().super.isa;

  [v16 setAlternateNames:v29];

  sub_C060(v9, &qword_104800);
  sub_46700(v4);
  v30 = sub_C43F4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v4, 1, v30) == 1)
  {
    sub_C060(v4, &qword_106CF0);
LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  sub_C43E4();
  v33 = v32;
  (*(v31 + 8))(v4, v30);
  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = sub_C5444();

LABEL_10:
  [v16 setTextContent:v34];

  return v16;
}

uint64_t sub_54E98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C43F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_54EDC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_54F88(int a1)
{
  v49 = a1;
  v2 = sub_C3D54();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C4634();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_525F8(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < *(v7 + 2))
    {
      v50 = v7[v9 + 4];
      sub_5551C(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_525F8((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_484B8(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_5796C(v25, v28, 0);
              sub_C53B4();
              sub_C3D44();
              result = sub_C5494();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_484B8((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = v10[v24 + 6];
          v40 = v10[v24 + 7];
          v27 = HIBYTE(*&v40) & 0xFLL;
          if ((*&v40 & 0x2000000000000000) == 0)
          {
            v27 = *&v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[2 * v25 + 4];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_57810(v10);
              }

              v44 = &v10[2 * v25];
              v44[4] = v41;
              v44[5] = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_1041E0 != -1)
      {
        swift_once();
      }

      sub_3CB0(&qword_106600);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_CE0A0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_3C4B4();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = sub_C5454();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_1041D8 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_3CB0(&qword_1063B0);
  sub_485C4();
  v38 = sub_C5324();
LABEL_59:

  return v38;
}

uint64_t sub_5551C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_C3D54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5414();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1ALL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
      sub_C53B4();
      sub_C3D44();
      result = sub_C5494();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_562C8(int a1)
{
  v49 = a1;
  v2 = sub_C3D54();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C4644();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_525F8(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < *(v7 + 2))
    {
      v50 = v7[v9 + 4];
      sub_5685C(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_525F8((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_484B8(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_5796C(v25, v28, 0);
              sub_C53B4();
              sub_C3D44();
              result = sub_C5494();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_484B8((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = v10[v24 + 6];
          v40 = v10[v24 + 7];
          v27 = HIBYTE(*&v40) & 0xFLL;
          if ((*&v40 & 0x2000000000000000) == 0)
          {
            v27 = *&v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[2 * v25 + 4];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_57810(v10);
              }

              v44 = &v10[2 * v25];
              v44[4] = v41;
              v44[5] = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_1041E0 != -1)
      {
        swift_once();
      }

      sub_3CB0(&qword_106600);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_CE0A0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_3C4B4();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = sub_C5454();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_1041D8 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_3CB0(&qword_1063B0);
  sub_485C4();
  v38 = sub_C5324();
LABEL_59:

  return v38;
}

uint64_t sub_5685C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_C3D54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5414();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
      sub_C53B4();
      sub_C3D44();
      result = sub_C5494();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

id sub_56F74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAsset()
{
  result = qword_107580;
  if (!qword_107580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_5707C()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v47[2] = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v47[1] = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106D18);
  __chkstk_darwin(v15 - 8);
  v17 = v47 - v16;
  v18 = sub_C4654();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = v0;
  sub_46940(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_C060(v17, &qword_106D18);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_54F88(0);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  sub_C4B74();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_54F88(0);
  v29 = sub_C5444();

  [v28 setDisplayName:v29];

  sub_562C8(0);
  v30 = sub_C5444();

  [v28 setContentDescription:v30];

  sub_C4624();
  v31 = sub_C3CB4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v8, 1, v31) == 1)
  {
    v34 = *(v47[0] + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v34)
    {
      v47[0] = v33;
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        sub_C4034();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v33 = v47[0];
    }

    else
    {
      v37 = 1;
    }

    (*(v32 + 56))(v10, v37, 1, v31);
    if (v33(v8, 1, v31) != 1)
    {
      sub_C060(v8, &qword_104800);
    }
  }

  else
  {
    (*(v32 + 32))(v10, v8, v31);
    (*(v32 + 56))(v10, 0, 1, v31);
  }

  sub_C53B4();
  sub_C3D44();
  v38 = sub_C54A4();
  v40 = v39;
  sub_3CB0(&qword_106628);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_CE5B0;
  v42 = sub_75B7C(v38, v40, v10);
  v44 = v43;

  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  v45 = sub_C5664().super.isa;

  [v28 setAlternateNames:v45];

  sub_C060(v10, &qword_104800);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_57790(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4654();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_57824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_5796C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

id sub_57A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UnknownAsset()
{
  result = qword_1075F8;
  if (!qword_1075F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_57AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderAsset()
{
  result = qword_107630;
  if (!qword_107630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_57B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutIconAsset()
{
  result = qword_107668;
  if (!qword_107668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_57C94()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v131 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v6 - 8);
  v132 = &v117 - v7;
  v8 = sub_C4884();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB0(&qword_104800);
  v11 = __chkstk_darwin(v10 - 8);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v117 - v14;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_C4BF4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3CB0(&qword_106D40);
  __chkstk_darwin(v21 - 8);
  v23 = &v117 - v22;
  v24 = sub_C46F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications16WorkoutIconAsset_metadata))
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_6;
  }

  sub_44118(v23);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_C060(v23, &qword_106D40);
    return 0;
  }

  v122 = v24;
  v123 = v3;
  v121 = v25;
  v28 = *(v25 + 32);
  v29 = v27;
  v28(v27, v23);
  sub_C4B74();
  v30 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v32 = [v30 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v33 = sub_C46A4();
  if (!v34)
  {
    v35 = v33;
    v36 = [objc_opt_self() mainBundle];
    v116._countAndFlagsBits = 0x80000000000CA4F0;
    v137._countAndFlagsBits = 0x74756F6B726F57;
    v137._object = 0xE700000000000000;
    v138.value._countAndFlagsBits = v35;
    v138.value._object = 0;
    v37.super.isa = v36;
    v139._countAndFlagsBits = 0;
    v139._object = 0xE000000000000000;
    sub_C3734(v137, v138, v37, v139, v116);
  }

  v38 = v132;
  v39 = v133;
  v40 = sub_C5444();

  [v32 setDisplayName:v40];

  sub_C46E4();
  v41 = sub_C3CB4();
  v42 = *(v41 - 8);
  v124 = *(v42 + 48);
  v125 = v41;
  v119 = v42 + 48;
  v43 = 0;
  if (v124(v16, 1) != 1)
  {
    v43 = sub_C3C04().super.isa;
    (*(v42 + 8))(v16, v125);
  }

  [v32 setTimestamp:v43];

  v44 = sub_C4674();
  v120 = v42;
  if ((v45 & 1) == 0)
  {
    v52 = v44;
    if (qword_1041F0 != -1)
    {
      swift_once();
    }

    sub_3CB0(&qword_106600);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_CE5B0;
    *(v53 + 56) = &type metadata for Int;
    *(v53 + 64) = &protocol witness table for Int;
    *(v53 + 32) = v52;
    sub_C5454();

    v54 = sub_C5444();

    [v32 setDisplayName:v54];

    v46 = sub_58AC8(v29, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter);
    v118 = v55;
    v50 = sub_C4664();
    goto LABEL_16;
  }

  v46 = sub_58AC8(v29, &WorkoutIconAssetMetadata.calories.getter, &WorkoutIconAssetMetadata.caloriesBurnt.getter);
  v118 = v47;
  v48 = sub_C46D4();
  if (v49)
  {
    sub_58FE4();
LABEL_16:
    v56 = *&v50;
    v57 = v51;
    goto LABEL_18;
  }

  v56 = *&v48;
  v57 = 0;
LABEL_18:
  v58 = sub_C46C4();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    v62 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v62 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v117 = v32;
      v63 = v29;
      v64 = v38;
      v65 = v46;
      v66 = sub_484B8(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_484B8((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[2 * v68];
      *(v69 + 4) = v60;
      *(v69 + 5) = v61;
      v39 = v133;
      v46 = v65;
      v38 = v64;
      v29 = v63;
      v32 = v117;
      if (v57)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  v66 = _swiftEmptyArrayStorage;
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v56 > 0.0)
  {
    v70 = v39;
    sub_C6404();
    v71 = sub_C63D4();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v129;
    v76 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_484B8(0, *(v66 + 2) + 1, 1, v66);
    }

    v78 = *(v66 + 2);
    v77 = *(v66 + 3);
    if (v78 >= v77 >> 1)
    {
      v66 = sub_484B8((v77 > 1), v78 + 1, 1, v66);
    }

    *(v66 + 2) = v78 + 1;
    v79 = &v66[2 * v78];
    *(v79 + 4) = v71;
    *(v79 + 5) = v73;
    v46 = v76;
    v39 = v70;
    v38 = v132;
    v80 = v118;
    if (!v118)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_35:
  v75 = v129;
  v80 = v118;
  if (v118)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_484B8(0, *(v66 + 2) + 1, 1, v66);
    }

    v82 = *(v66 + 2);
    v81 = *(v66 + 3);
    if (v82 >= v81 >> 1)
    {
      v66 = sub_484B8((v81 > 1), v82 + 1, 1, v66);
    }

    *(v66 + 2) = v82 + 1;
    v83 = &v66[2 * v82];
    *(v83 + 4) = v46;
    *(v83 + 5) = v80;
  }

LABEL_41:
  v84 = sub_C4684();
  if ((v85 & 1) == 0 || (v84 = sub_C4694(), (v86 & 1) == 0))
  {
    v134 = v84;
    v87 = v126;
    sub_C34B4();
    sub_59FD8();
    sub_5A34C(&qword_1076C0, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v88 = v128;
    sub_C5294();
    (*(v127 + 8))(v87, v88);
    v89 = v135;
    v90 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_484B8(0, *(v66 + 2) + 1, 1, v66);
    }

    v92 = *(v66 + 2);
    v91 = *(v66 + 3);
    if (v92 >= v91 >> 1)
    {
      v66 = sub_484B8((v91 > 1), v92 + 1, 1, v66);
    }

    *(v66 + 2) = v92 + 1;
    v93 = &v66[2 * v92];
    *(v93 + 4) = v89;
    *(v93 + 5) = v90;
  }

  sub_594E8(0, 1, v38);
  v94 = sub_C3934();
  v95 = *(v94 - 8);
  v97 = 0;
  if ((*(v95 + 48))(v38, 1, v94) != 1)
  {
    sub_C38D4(v96);
    v97 = v98;
    (*(v95 + 8))(v38, v94);
  }

  [v32 setThumbnailURL:v97];

  v135 = v66;
  sub_3CB0(&qword_1063B0);
  sub_517B0(&qword_106B08, &qword_1063B0);
  sub_C5324();

  v99 = sub_C5444();

  [v32 setContentDescription:v99];

  sub_C46E4();
  v100 = v125;
  if ((v124)(v39, 1, v125) == 1)
  {
    v101 = *(v75 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    v102 = v130;
    if (v101 && (v103 = [v101 entry]) != 0)
    {
      v104 = v103;
      sub_C4034();

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    (*(v120 + 56))(v102, v105, 1, v100);
    if ((v124)(v39, 1, v100) != 1)
    {
      sub_C060(v39, &qword_104800);
    }
  }

  else
  {
    v106 = v120;
    v102 = v130;
    (*(v120 + 32))(v130, v39, v100);
    (*(v106 + 56))(v102, 0, 1, v100);
  }

  sub_C53B4();
  sub_C3D44();
  v107 = sub_C54A4();
  v109 = v108;
  sub_3CB0(&qword_106628);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_CE5B0;
  v111 = sub_75B7C(v107, v109, v102);
  v113 = v112;

  *(v110 + 32) = v111;
  *(v110 + 40) = v113;
  v114 = sub_C5664().super.isa;

  [v32 setAlternateNames:v114];

  sub_C060(v102, &qword_104800);
  (*(v121 + 8))(v29, v122);
  return v32;
}

uint64_t sub_58AC8(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v42 = a3;
  v43 = a2;
  v3 = sub_C3D54();
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_1076C8);
  __chkstk_darwin(v5 - 8);
  v40 = &v32 - v6;
  v7 = sub_3CB0(&qword_1076D0);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_3CB0(&qword_1076D8);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_3CB0(&qword_1076E0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = sub_3CB0(&qword_1076E8);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v32 - v20;
  result = v43(v19);
  if (!v23)
  {
    v32 = v21;
    v33 = v12;
    v34 = v16;
    v35 = v18;
    v36 = v14;
    v43 = v10;
    v24 = v40;
    v42(result);
    if (v25)
    {
      return 0;
    }

    else
    {
      v26 = [objc_opt_self() kilocalories];
      sub_BE28(0, &qword_1076F0);
      v27 = v32;
      sub_C3504();
      v28 = v33;
      sub_C3514();
      sub_C3834();
      sub_C3D24();
      sub_59FD8();
      sub_C3804();
      v29 = sub_3CB0(&qword_1076F8);
      (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
      v30 = v34;
      sub_C34D4();
      sub_C060(v24, &qword_1076C8);
      (*(v38 + 8))(v9, v39);
      (*(v37 + 8))(v28, v43);
      sub_517B0(&qword_107700, &qword_1076E0);
      sub_C3524();
      (*(v36 + 8))(v30, v13);
      v31 = sub_C54D4();

      (*(v35 + 8))(v27, v17);
      return v31;
    }
  }

  return result;
}

double sub_58FE4()
{
  v0 = sub_C3EA4();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C36C4();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_C3CB4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_C46E4();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_C3CA4();
    if (v18(v10, 1, v11) != 1)
    {
      sub_C060(v10, &qword_104800);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_C46B4();
  if (v18(v8, 1, v11) == 1)
  {
    sub_C3CA4();
    if (v18(v8, 1, v11) != 1)
    {
      sub_C060(v8, &qword_104800);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_C3E64();
  sub_3CB0(&qword_107708);
  v19 = sub_C3E84();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_CE5B0;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_5A02C(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v28;
  sub_C3DA4();

  (*(v31 + 8))(v2, v32);
  v24 = sub_C36A4();
  (*(v29 + 8))(v23, v30);
  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v17, v11);
  return v24;
}

uint64_t sub_594E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v66 = a3;
  v5 = sub_3CB0(&qword_106940);
  __chkstk_darwin(v5 - 8);
  v70 = &v56[-v6];
  v69 = sub_C4BF4();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v61 = &v56[-v10];
  v65 = sub_C44D4();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v75);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v56[-v16];
  v17 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v17 - 8);
  v79 = &v56[-v18];
  v81 = sub_C3934();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for AssetAttachment.AssetType(0);
  v22 = __chkstk_darwin(v21);
  v82 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v56[-v24];
  v26 = *(v3 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachments);
  if (v26 >> 62)
  {
LABEL_47:
    v27 = sub_C60E4();
  }

  else
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v28 = v81;
  if (v27)
  {
    v29 = v11;
    v11 = 0;
    v87 = v26 & 0xFFFFFFFFFFFFFF8;
    v88 = v26 & 0xC000000000000001;
    v77 = (v72 + 56);
    v60 = (v29 + 8);
    v73 = (v72 + 32);
    v76 = (v72 + 48);
    v63 = (v7 + 48);
    v59 = (v7 + 32);
    v58 = (v7 + 8);
    v62 = (v72 + 8);
    v78 = a2;
    v74 = v15;
    v67 = v20;
    v84 = v21;
    v85 = v27;
    v86 = v26;
    while (1)
    {
      if (v88)
      {
        v7 = sub_C5FE4();
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = *(v26 + 8 * v11 + 32);

        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }
      }

      v31 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
      sub_3ED7C(v7 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v25, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_3ECB8(v25, v33);
      if (a2)
      {
LABEL_42:

LABEL_43:
        sub_7BFE8(v66);
      }

      v41 = *(v7 + 16);
LABEL_20:
      if (v41 == v83)
      {
        goto LABEL_42;
      }

      v21 = v84;
LABEL_6:
      v26 = v86;
      ++v11;
      if (v30 == v85)
      {
        goto LABEL_41;
      }
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {

      sub_3ECB8(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v34 = v82;
    sub_3ED7C(v7 + v31, v82, type metadata accessor for AssetAttachment.AssetType);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35;
    if (v35 <= 1)
    {
      v38 = v34;
      v39 = v80;
      if (v36)
      {
        sub_3ECB8(v82, type metadata accessor for AssetAttachment.AssetType);
        v46 = 1;
        v42 = v79;
LABEL_27:
        (*v77)(v42, v46, 1, v28);
        v47 = *(sub_3CB0(&qword_106948) + 48);
        if ((*v76)(v42, 1, v28) == 1)
        {

          sub_C060(v42, &qword_1063B8);
          v21 = v84;
          goto LABEL_37;
        }

        v71 = v47;
        (*v73)(v20, v42, v28);
        sub_C38A4();
        v48 = v68;
        sub_C4B64();
        v49 = v70;
        sub_C4B34();
        v50 = v69;
        if ((*v63)(v49, 1, v69) == 1)
        {

          v28 = v81;
          (*v62)(v20, v81);
          sub_C060(v49, &qword_106940);
          goto LABEL_36;
        }

        v51 = v61;
        (*v59)(v61, v49, v50);
        sub_C4B94();
        v57 = sub_C4BD4();
        v52 = *v58;
        (*v58)(v48, v50);
        v53 = v51;
        v20 = v67;
        v52(v53, v50);
        v28 = v81;
        (*v62)(v20, v81);
        if ((v57 & 1) == 0)
        {

LABEL_36:
          v15 = v74;
          v21 = v84;
          v47 = v71;
LABEL_37:
          sub_3ECB8(&v25[v47], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          a2 = v78;
          goto LABEL_6;
        }

        v15 = v74;
        v54 = v71;
        if (v78)
        {

          sub_3ECB8(&v25[v54], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          goto LABEL_43;
        }

        v41 = *(v7 + 16);
        sub_3ECB8(&v25[v71], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        a2 = v78;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = v35 - 2;
      v38 = v34;
      v39 = v80;
      if (v37 >= 2)
      {
        v40 = v82;

        v38 = &v40[*(sub_3CB0(&qword_106948) + 48)];
      }
    }

    sub_3ED18(v38, v39);
    sub_3ED7C(v39, v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_3ECB8(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v42 = v79;
      (*v73)(v79, v15, v28);
    }

    else
    {
      v43 = v64;
      sub_C44C4();
      v44 = v79;
      sub_C4494();
      v28 = v81;

      v45 = v43;
      v15 = v74;
      (*v60)(v45, v65);
      v42 = v44;
      v20 = v67;
      sub_3ECB8(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_41:

  return (*(v72 + 56))(v66, 1, 1, v28);
}

unint64_t sub_59FD8()
{
  result = qword_1076B8;
  if (!qword_1076B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1076B8);
  }

  return result;
}

void *sub_5A02C(uint64_t a1)
{
  v2 = sub_C3E84();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_3CB0(&qword_107710);
    v9 = sub_C5FA4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_5A34C(&qword_107718, &type metadata accessor for Calendar.Component);
      v16 = sub_C52F4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_5A34C(&qword_107720, &type metadata accessor for Calendar.Component);
          v23 = sub_C53A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_5A34C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_5A394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB0(&qword_107748);
    v3 = sub_C5FA4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_C62F4();

      sub_C5514();
      result = sub_C6344();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_C6244();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

void sub_5A544(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_C60E4();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_3CB0(a2);
      v6 = sub_C5FA4();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_C60E4();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = sub_C5FE4();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_C5D34(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_BE28(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = sub_C5D44();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = sub_C5D34(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_BE28(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = sub_C5D44();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int sub_5A844(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_3CB0(a2);
    v4 = sub_C5FA4();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_C62F4();
      sub_C6304(v11);
      result = sub_C6344();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

double sub_5A978(unsigned __int8 a1)
{
  v2 = sub_C4004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v16 = CGRectGetWidth(v42) + -40.0 + -4.0;
  v17 = v16 * 0.25 + -2.0;
  v18 = [v6 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  Width = CGRectGetWidth(v43);
  v28 = [v6 mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  v37 = CGRectGetWidth(v44);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        v17 = v37 + -90.0;
        v38 = Width + -40.0;
        (*(v3 + 104))(v5, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
        v39 = sub_C3FF4();
        (*(v3 + 8))(v5, v2);
        if ((v39 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else if (a1 == 4)
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return v16;
    }

    else
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else
  {
    return v16;
  }

  return v17;
}

char *sub_5AC40(int a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_3CB0(&qword_105700);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for WorkoutRouteThumbnailCacheOperation());
  sub_45084(v14);
  sub_5C730(v14, v15 + qword_115308);
  v16 = sub_C5B74();
  v17 = v6;

  return sub_67BD4(v17, a1, a2, a3 & 1, a4, a5, v16);
}

uint64_t sub_5AD70(uint64_t a1, unsigned __int8 a2)
{
  sub_C3D14();
  sub_5C6E8(&qword_104A58, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_C6214();
  sub_C5524(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_C5524(v15);
  v16._countAndFlagsBits = sub_C6214();
  sub_C5524(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_C5524(v17);
  v3 = 0x656772614C78;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v5 = 0x657263536C6C7566;
    v4 = 0xEA00000000006E65;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v7 = 0x61546D756964656DLL;
    v6 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000006564;
  v9 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6154656772614C78;
    v10 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v10;
  }

  else
  {
    v3 = v9;
  }

  if (a2 <= 3u)
  {
    v11._countAndFlagsBits = v3;
  }

  else
  {
    v11._countAndFlagsBits = v5;
  }

  if (a2 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  v11._object = v12;
  sub_C5524(v11);

  v18._countAndFlagsBits = sub_C6214();
  sub_C5524(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_C5524(v19);

  return 0x2D626D756874;
}

id sub_5AFFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutRouteAsset()
{
  result = qword_107780;
  if (!qword_107780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_5B104()
{
  v1 = sub_C5414();
  __chkstk_darwin(v1 - 8);
  v133 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C3D54();
  __chkstk_darwin(v3 - 8);
  v136 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_1076C8);
  __chkstk_darwin(v5 - 8);
  v126 = &v112 - v6;
  v7 = sub_3CB0(&qword_1076D0);
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v122 = &v112 - v8;
  v121 = sub_3CB0(&qword_1076D8);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v112 - v9;
  v123 = sub_3CB0(&qword_1076E0);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v112 - v10;
  v135 = sub_3CB0(&qword_1076E8);
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v112 - v11;
  v12 = sub_C4884();
  v127 = *(v12 - 8);
  v128 = v12;
  __chkstk_darwin(v12);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_104800);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v131 = &v112 - v19;
  __chkstk_darwin(v18);
  v21 = &v112 - v20;
  v22 = sub_C4BF4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3CB0(&qword_105700);
  __chkstk_darwin(v26 - 8);
  v28 = &v112 - v27;
  v29 = sub_C47D4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalNotifications17WorkoutRouteAsset_metadata))
  {
    (*(v30 + 56))(v28, 1, 1, v29);
    goto LABEL_6;
  }

  sub_411C4(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_6:
    sub_C060(v28, &qword_105700);
    return 0;
  }

  v113 = v30;
  v33 = *(v30 + 32);
  v114 = v29;
  v33(v32, v28);
  sub_C4B74();
  v34 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v36 = [v34 initWithContentType:isa];

  (*(v23 + 8))(v25, v22);
  v37 = sub_C4764();
  if (!v38)
  {
    v39 = v37;
    v40 = [objc_opt_self() mainBundle];
    v111._countAndFlagsBits = 0x80000000000CA4F0;
    v140._countAndFlagsBits = 0x74756F6B726F57;
    v140._object = 0xE700000000000000;
    v141.value._countAndFlagsBits = v39;
    v141.value._object = 0;
    v41.super.isa = v40;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    sub_C3734(v140, v141, v41, v142, v111);
  }

  v42 = sub_C5444();

  [v36 setDisplayName:v42];

  sub_C47C4();
  v43 = sub_C3CB4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v116 = v44 + 48;
  v115 = v45;
  v46 = 0;
  if (v45(v21, 1, v43) != 1)
  {
    v46 = sub_C3C04().super.isa;
    (*(v44 + 8))(v21, v43);
  }

  [v36 setTimestamp:v46];

  v47 = sub_C47A4();
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = sub_484B8(0, 1, 1, _swiftEmptyArrayStorage);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_484B8((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[2 * v53];
    *(v54 + 4) = v49;
    *(v54 + 5) = v50;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  sub_C47B4();
  if (v55)
  {
    sub_5C0E8();
  }

  sub_C6404();
  v56 = sub_C63D4();
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_484B8(0, *(v51 + 2) + 1, 1, v51);
  }

  v60 = *(v51 + 2);
  v59 = *(v51 + 3);
  if (v60 >= v59 >> 1)
  {
    v51 = sub_484B8((v59 > 1), v60 + 1, 1, v51);
  }

  v112 = v44;
  *(v51 + 2) = v60 + 1;
  v61 = &v51[2 * v60];
  *(v61 + 4) = v56;
  *(v61 + 5) = v58;
  v62 = sub_C4754();
  if (v63)
  {
    v64 = v135;
  }

  else
  {
    v137 = v62;
    sub_C34B4();
    sub_59FD8();
    sub_5C6E8(&qword_1076C0, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v65 = v128;
    sub_C5294();
    (*(v127 + 8))(v14, v65);
    v66 = v138;
    v67 = v139;
    v69 = *(v51 + 2);
    v68 = *(v51 + 3);
    v64 = v135;
    if (v69 >= v68 >> 1)
    {
      v51 = sub_484B8((v68 > 1), v69 + 1, 1, v51);
    }

    *(v51 + 2) = v69 + 1;
    v70 = &v51[2 * v69];
    *(v70 + 4) = v66;
    *(v70 + 5) = v67;
  }

  sub_C4744();
  v71 = [objc_opt_self() kilocalories];
  sub_5C69C();
  v72 = v134;
  sub_C3504();
  v73 = sub_C4794();
  if (!v74)
  {
    v75 = v117;
    sub_C3514();
    v76 = v122;
    sub_C3834();
    sub_C3D24();
    sub_59FD8();
    v77 = v126;
    sub_C3804();
    v78 = sub_3CB0(&qword_1076F8);
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = v43;
    v80 = v118;
    sub_C34D4();
    sub_C060(v77, &qword_1076C8);
    (*(v124 + 8))(v76, v125);
    v81 = v75;
    v64 = v135;
    (*(v119 + 8))(v81, v121);
    sub_517B0(&qword_107700, &qword_1076E0);
    v82 = v123;
    sub_C3524();
    v83 = v80;
    v43 = v79;
    (*(v120 + 8))(v83, v82);
    v84 = sub_C54D4();
    v86 = v85;

    v74 = v86;
    v73 = v84;
  }

  v88 = *(v51 + 2);
  v87 = *(v51 + 3);
  if (v88 >= v87 >> 1)
  {
    v108 = v73;
    v109 = v74;
    v110 = sub_484B8((v87 > 1), v88 + 1, 1, v51);
    v74 = v109;
    v72 = v134;
    v51 = v110;
    v73 = v108;
  }

  *(v51 + 2) = v88 + 1;
  v89 = &v51[2 * v88];
  *(v89 + 4) = v73;
  *(v89 + 5) = v74;
  v138 = v51;
  sub_3CB0(&qword_1063B0);
  sub_517B0(&qword_106B08, &qword_1063B0);
  sub_C5324();

  v90 = sub_C5444();

  [v36 setContentDescription:v90];

  v91 = v130;
  sub_C47C4();
  if (v115(v91, 1, v43) == 1)
  {
    v92 = *(v129 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    v93 = v131;
    if (v92 && (v94 = [v92 entry]) != 0)
    {
      v95 = v94;
      sub_C4034();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    (*(v112 + 56))(v93, v96, 1, v43);
    if (v115(v91, 1, v43) != 1)
    {
      sub_C060(v91, &qword_104800);
    }
  }

  else
  {
    v97 = v112;
    v93 = v131;
    (*(v112 + 32))(v131, v91, v43);
    (*(v97 + 56))(v93, 0, 1, v43);
  }

  sub_C53B4();
  sub_C3D44();
  v98 = sub_C54A4();
  v100 = v99;
  sub_3CB0(&qword_106628);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_CE5B0;
  v102 = sub_75B7C(v98, v100, v93);
  v103 = v93;
  v105 = v104;

  *(v101 + 32) = v102;
  *(v101 + 40) = v105;
  v106 = sub_C5664().super.isa;

  [v36 setAlternateNames:v106];

  sub_C060(v103, &qword_104800);
  (*(v132 + 8))(v72, v64);
  (*(v113 + 8))(v32, v114);
  return v36;
}

double sub_5C0E8()
{
  v0 = sub_C3EA4();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C36C4();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_C3CB4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_C47C4();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_C3CA4();
    if (v18(v10, 1, v11) != 1)
    {
      sub_C060(v10, &qword_104800);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_C4784();
  if (v18(v8, 1, v11) == 1)
  {
    sub_C3CA4();
    if (v18(v8, 1, v11) != 1)
    {
      sub_C060(v8, &qword_104800);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_C3E64();
  sub_3CB0(&qword_107708);
  v19 = sub_C3E84();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_CE5B0;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_5A02C(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  sub_C3DA4();

  (*(v32 + 8))(v2, v33);
  v24 = sub_C36A4();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

unint64_t sub_5C69C()
{
  result = qword_1076F0;
  if (!qword_1076F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1076F0);
  }

  return result;
}

uint64_t sub_5C6E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5C730(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_5C7B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreakEventAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StreakEventAsset()
{
  result = qword_1077F8;
  if (!qword_1077F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5C8F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C40D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_5C974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaAsset()
{
  result = qword_107870;
  if (!qword_107870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_5CA7C()
{
  v1 = sub_3CB0(&qword_104800);
  v2 = __chkstk_darwin(v1 - 8);
  v73 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v65 - v4;
  v6 = sub_C40E4();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106D78);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_C4924();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  sub_46B80(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_C060(v17, &qword_106D78);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_C4B84();
    v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_C4B54().super.isa;
    v22 = [v23 initWithContentType:isa];

    (*(v12 + 8))(v14, v11);
    sub_C48D4();
    v67 = v18;
    v68 = v5;
    if (v25 || (sub_C48F4(), v26))
    {
      v27 = sub_C5444();
    }

    else
    {
      v27 = 0;
    }

    [v22 setDisplayName:v27];

    v75 = sub_C48F4();
    v76[0] = v28;
    v29 = 0;
    v76[1] = sub_C48C4();
    v76[2] = v30;
    v31 = _swiftEmptyArrayStorage;
    v66 = v19;
LABEL_7:
    v32 = &v76[2 * v29];
    while (++v29 != 3)
    {
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_484B8(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_484B8((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[2 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_7;
      }
    }

    sub_3CB0(&qword_104950);
    swift_arrayDestroy();
    v74 = v31;
    sub_3CB0(&qword_1063B0);
    sub_485C4();
    sub_C5324();

    v39 = sub_C5444();

    [v22 setContentDescription:v39];

    sub_C48E4();
    v40 = sub_C3934();
    v41 = *(v40 - 8);
    v43 = 0;
    if ((*(v41 + 48))(v10, 1, v40) != 1)
    {
      sub_C38D4(v42);
      v43 = v44;
      (*(v41 + 8))(v10, v40);
    }

    [v22 setThumbnailURL:v43];

    v45 = v70;
    sub_C4904();
    v46 = sub_28E48();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v49 = v73;
    sub_C4914();
    v50 = v49;
    v51 = sub_C3CB4();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v49, 1, v51) == 1)
    {
      v54 = *(v69 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
      if (v54)
      {
        v55 = [v54 entry];
        if (v55)
        {
          v56 = v55;
          v57 = v68;
          sub_C4034();

          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v68;
        }

        v50 = v73;
      }

      else
      {
        v58 = 1;
        v57 = v68;
      }

      (*(v52 + 56))(v57, v58, 1, v51);
      if (v53(v50, 1, v51) != 1)
      {
        sub_C060(v50, &qword_104800);
      }
    }

    else
    {
      v57 = v68;
      (*(v52 + 32))(v68, v50, v51);
      (*(v52 + 56))(v57, 0, 1, v51);
    }

    sub_3CB0(&qword_106628);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_CE5B0;
    v60 = sub_75B7C(v46, v48, v57);
    v62 = v61;

    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = sub_C5664().super.isa;

    [v22 setAlternateNames:v63];

    sub_C060(v57, &qword_104800);
    (*(v66 + 8))(v21, v67);
  }

  return v22;
}

uint64_t sub_5D350(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4924();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_5D3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoAsset()
{
  result = qword_1078E8;
  if (!qword_1078E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_5D4AC()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104800);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_C4BF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_C4734();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_46DC0(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_C060(v17, &qword_106B90);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_C4724();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  sub_C4B94();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_C4B54().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_7578C(v24, v25, 0, 0);

  v29 = v52;
  sub_C4714();
  v30 = v29;
  v31 = sub_C3CB4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        sub_C4034();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_C060(v30, &qword_104800);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  sub_C53B4();
  sub_C3D44();
  v39 = sub_C54A4();
  v41 = v40;
  sub_3CB0(&qword_106628);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_CE5B0;
  v43 = sub_75B7C(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_C5664().super.isa;

  [v28 setAlternateNames:v46];

  sub_C060(v37, &qword_104800);
  (*(v19 + 8))(v21, v18);
  return v28;
}

void sub_5DAF8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

uint64_t sub_5DBF0(uint64_t a1, double a2)
{
  *(v3 + 160) = v2;
  *(v3 + 152) = a2;
  v5 = sub_C4C24();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_C4CD4();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  v7 = sub_C4C54();
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_C5724();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v3 + 248) = v8;
  *(v3 + 256) = v10;

  return _swift_task_switch(sub_5DDB4, v8, v10);
}

uint64_t sub_5DDB4()
{
  if (qword_104240 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_B680(v3, qword_107930);
  (*(v2 + 16))(v1, v4, v3);
  sub_C4C34();
  sub_C4C14();
  v5 = sub_C4C44();
  v6 = sub_C5BA4();
  if (sub_C5D84())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_C4C04();
    _os_signpost_emit_with_name_impl(&dword_0, v5, v6, v8, "createThumbnail", "", v7, 2u);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);

  (*(v12 + 16))(v9, v10, v11);
  sub_C4C94();
  swift_allocObject();
  *(v0 + 264) = sub_C4C84();
  (*(v12 + 8))(v10, v11);
  [v13 size];
  v14 = *(v0 + 152);
  v17 = v16 < v15;
  v18 = v16 / v15 * v14;
  v19 = v15 / v16 * v14;
  if (v17)
  {
    v20 = *(v0 + 152);
  }

  else
  {
    v20 = v18;
  }

  if (v17)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v0 + 152);
  }

  v22 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_5E07C;
  v23 = swift_continuation_init();
  *(v0 + 136) = sub_3CB0(&qword_107948);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_5E7EC;
  *(v0 + 104) = &unk_F2640;
  *(v0 + 112) = v23;
  [v22 prepareThumbnailOfSize:v0 + 80 completionHandler:{v21, v20}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_5E07C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_5E184, v2, v1);
}

uint64_t sub_5E184()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  sub_5E550(v1, "createThumbnail", 15, 2);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_5E268()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_107930);
  v1 = sub_B680(v0, qword_107930);
  if (qword_1042F8 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

UIImage *sub_5E330(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (![a1 imageOrientation] || (objc_msgSend(a1, "size"), UIGraphicsBeginImageContext(v5), objc_msgSend(a1, "drawAtPoint:", 0.0, 0.0), v3 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v3))
  {
    v3 = a1;
  }

  sub_5E3D8(Current);
  return v3;
}

void sub_5E3D8(double a1)
{
  if (qword_104240 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107930);
  oslog = sub_C4CB4();
  v3 = sub_C5A64();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    v6 = sub_C6444();
    v8 = sub_BA920(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = CFAbsoluteTimeGetCurrent() - a1;
    _os_log_impl(&dword_0, oslog, v3, "%s.fixImageOrientationIfNeeded took %f seconds", v4, 0x16u);
    sub_BED0(v5);
  }
}

uint64_t sub_5E550(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_C4C64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_C4C24();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_C4C44();
  sub_C4C74();
  v20 = sub_C5B94();
  result = sub_C5D84();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_C4CA4();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_C4C04();
      _os_signpost_emit_with_name_impl(&dword_0, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_5E7EC(uint64_t a1, void *a2)
{
  v3 = sub_13DC4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_5E868()
{
  v1 = v0;
  if (qword_104248 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107950);
  v3 = sub_C4CB4();
  v4 = sub_C5A34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

uint64_t sub_5E988()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_107950);
  v1 = sub_B680(v0, qword_107950);
  if (qword_1042E0 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_115680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_5EA84()
{
  v1 = sub_3CB0(&qword_107A90);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_3CB0(&qword_107A98);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_3CB0(&qword_107AA0);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_3CB0(&qword_107AA8);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_3CB0(&qword_107AB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = sub_C5BD4();
  v13 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v79 - v21;
  __chkstk_darwin(v20);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_propertiesToRefresh] = &_swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_104248;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_C4CD4();
  sub_B680(v30, qword_107950);
  v31 = v29;
  v32 = sub_C4CB4();
  v33 = sub_C5A34();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&dword_0, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_60738(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  sub_C59F4();
  sub_C5BE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_606E4(&qword_107AB8, &qword_107AB0);
  v39 = v31;
  sub_C5BC4();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_488C8(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_488C8(v44 > 1, v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  sub_C5A04();
  v50 = v80;
  sub_C5BE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_606E4(&qword_107AC0, &qword_107AA8);
  v51 = v82;
  sub_C5BC4();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_488C8(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_488C8(v54 > 1, v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  sub_C5A14();
  v58 = v83;
  sub_C5BE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_606E4(&qword_107AC8, &qword_107AA0);
  v59 = v85;
  sub_C5BC4();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_488C8(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_488C8(v62 > 1, v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  sub_C59E4();
  v65 = v86;
  sub_C5BE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_606E4(&qword_107AD0, &qword_107A98);
  v66 = v88;
  sub_C5BC4();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_488C8(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_488C8(v69 > 1, v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  sub_C59D4();
  v72 = v89;
  sub_C5BE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_606E4(&qword_107AD8, &qword_107A90);
  v73 = v91;
  sub_C5BC4();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_488C8(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_488C8(v76 > 1, v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_5F7B0(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_104248 != -1)
    {
      swift_once();
    }

    v6 = sub_C4CD4();
    sub_B680(v6, qword_107950);
    v7 = v5;
    v8 = sub_C4CB4();
    v9 = sub_C5A34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&dword_0, v8, v9, a3, v10, 0x16u);
      sub_60738(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_5F934(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_104248 != -1)
    {
      swift_once();
    }

    v6 = sub_C4CD4();
    sub_B680(v6, qword_107950);
    v7 = v5;
    v8 = sub_C4CB4();
    v9 = sub_C5A34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&dword_0, v8, v9, a3, v10, 0x16u);
      sub_60738(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_5FAE4();
  }
}

uint64_t sub_5FAE4()
{
  v1 = OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_propertiesToRefresh;
  result = swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      sub_28E30(*(v0 + OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_didUndoOrRedo));

      v3(v4);
      sub_2881C(v3);
    }

    *(v0 + v1) = &_swiftEmptySetSingleton;

    *(*(v0 + OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }

  return result;
}

id sub_5FBB4()
{
  v1 = v0;
  if (qword_104248 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107950);
  v3 = sub_C4CB4();
  v4 = sub_C5A34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_5E868();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

void sub_5FD00()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_104248 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107950);
  v3 = v0;
  v4 = sub_C4CB4();
  v5 = sub_C5A34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&dword_0, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_5FE9C()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_104248 != -1)
    {
      swift_once();
    }

    v7 = sub_C4CD4();
    sub_B680(v7, qword_107950);
    v11 = v0;
    oslog = sub_C4CB4();
    v8 = sub_C5A34();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&dword_0, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_104248 != -1)
    {
      swift_once();
    }

    v2 = sub_C4CD4();
    sub_B680(v2, qword_107950);
    v3 = v0;
    v4 = sub_C4CB4();
    v5 = sub_C5A34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&dword_0, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_60174()
{
  v1 = v0;
  if (qword_104248 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107950);
  v3 = sub_C4CB4();
  v4 = sub_C5A34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_5E868();
  result = sub_6026C();
  *(*(v1 + OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_6026C()
{
  v1 = v0;
  if (qword_104248 != -1)
  {
    swift_once();
  }

  v2 = sub_C4CD4();
  sub_B680(v2, qword_107950);
  v3 = sub_C4CB4();
  v4 = sub_C5A34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_60388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for UndoableActivity.Component(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UndoableActivity.Component(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_605A4()
{
  result = qword_107A88;
  if (!qword_107A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107A88);
  }

  return result;
}

uint64_t sub_605F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_606E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_28D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_60738(uint64_t a1)
{
  v2 = sub_3CB0(&qword_1050F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_607A0()
{
  v0 = sub_C3D64();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C3EA4();
  sub_C0CC(v4, qword_115548);
  sub_B680(v4, qword_115548);
  (*(v1 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v0);
  sub_C3D74();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_608C0()
{
  sub_3CB0(&qword_107708);
  v0 = sub_C3E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_D07C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Calendar.Component.era(_:), v0);
  v6(v5 + v2, enum case for Calendar.Component.year(_:), v0);
  v6(v5 + 2 * v2, enum case for Calendar.Component.month(_:), v0);
  v6(v5 + 3 * v2, enum case for Calendar.Component.day(_:), v0);
  v7 = sub_672A8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_115560 = v7;
  return result;
}

uint64_t sub_60A54(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_C62F4();
  sub_C6304(a2);
  v6 = sub_C6344();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_63AAC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_60B4C(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_C62F4();
  sub_B208(a2);
  sub_C5514();

  v6 = sub_C6344();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_63C0C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_48;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1954047348;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x64724F7465737361;
        v10 = 0xED0000676E697265;
        break;
      case 2:
        v11 = 0xD000000000000015;
        v10 = 0x80000000000C7A70;
        break;
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x656C746974;
        break;
      case 4:
        v11 = 0x7461447972746E65;
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        break;
      case 6:
        v10 = 0xEA00000000006574;
        v11 = 0x6144656C646E7562;
        break;
      case 7:
        v11 = 0x72756F5365746164;
        v10 = 0xEA00000000006563;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x64656767616C66;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0xA:
        v11 = 0xD000000000000013;
        v10 = 0x80000000000C7AD0;
        break;
      case 0xB:
        v11 = 0xD000000000000011;
        v10 = 0x80000000000C7AF0;
        break;
      case 0xC:
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1954047348;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000676E697265;
        if (v11 == 0x64724F7465737361)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        v12 = 0x80000000000C7A70;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 3:
        v12 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v12 = 0xE900000000000065;
        if (v11 != 0x7461447972746E65)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v12 = 0xE800000000000000;
        if (v11 != 0x6449656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v12 = 0xEA00000000006574;
        if (v11 != 0x6144656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        v12 = 0xEA00000000006563;
        if (v11 != 0x72756F5365746164)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v12 = 0xE700000000000000;
        if (v11 != 0x64656767616C66)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v12 = 0xE600000000000000;
        if (v11 != 0x74706D6F7270)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000000000C7AD0;
        goto LABEL_38;
      case 11:
        v12 = 0x80000000000C7AF0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v12 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
LABEL_38:
        if (v11 != v13)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v10 != v12)
        {
LABEL_40:
          v14 = sub_C6244();

          if (v14)
          {
            goto LABEL_47;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}