id sub_15E4()
{
  v1 = OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController____lazy_storage___appSystemSettingsSpecifierProvider;
  v2 = *(v0 + OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController____lazy_storage___appSystemSettingsSpecifierProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController____lazy_storage___appSystemSettingsSpecifierProvider);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_bundleIdentifier);
    v5 = *(v0 + OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_bundleIdentifier + 8);
    v6 = objc_allocWithZone(AUSystemSettingsSpecifiersProvider);
    v7 = sub_3864();
    v8 = [v6 initWithApplicationBundleIdentifier:v7];

    [v8 setDelegate:v0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_182C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for VisionCompanionSettingsController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  sub_37D4();
  v1 = sub_3864();

  v2 = [objc_opt_self() bundleWithIdentifier:v1];

  if (v2)
  {
    v3 = [v0 navigationItem];
    v7._countAndFlagsBits = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v9._object = 0x8000000000004730;
    v9._countAndFlagsBits = 0xD000000000000010;
    v4.super.isa = v2;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    sub_3784(v9, v10, v4, v11, v7);
    v5 = sub_3864();

    [v3 setTitle:v5];

    v6 = [v0 navigationItem];
    [v6 setStyle:0];
  }

  else
  {
    sub_3934();
    __break(1u);
  }
}

uint64_t sub_1A24()
{
  v1 = v0;
  v2 = [v0 vcs_getSpecifiersIvar];
  if (!v2)
  {
    v36 = &_swiftEmptyArrayStorage;
    v3 = sub_15E4();
    v4 = [v3 specifiers];

    v5 = sub_2B90();
    v6 = sub_38A4();

    sub_2BDC(v6);
    sub_37D4();
    v7 = sub_3864();

    v8 = [objc_opt_self() bundleWithIdentifier:v7];

    if (v8)
    {
      v33[1] = v5;
      v31._countAndFlagsBits = 0xE000000000000000;
      v37._object = 0x80000000000046E0;
      v37._countAndFlagsBits = 0xD000000000000012;
      v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v39.value._object = 0xEB00000000656C62;
      v9.super.isa = v8;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      sub_3784(v37, v39, v9, v41, v31);
      v10 = type metadata accessor for VisionCompanionSettingsController();
      v35[3] = v10;
      v35[0] = v1;
      v34 = v1;
      v11 = sub_3864();

      if (v10)
      {
        v12 = sub_2CCC(v35, v10);
        v13 = *(v10 - 8);
        v14 = *(v13 + 64);
        __chkstk_darwin(v12, v12);
        v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v16);
        v17 = sub_3954();
        (*(v13 + 8))(v16, v10);
        sub_2A9C(v35);
      }

      else
      {
        v17 = 0;
      }

      v18 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v17 set:0 get:0 detail:0 cell:13 edit:0];

      swift_unknownObjectRelease();
      if (v18)
      {
        [v18 setButtonAction:"showPrivacySheet"];
        isa = sub_38D4().super.super.isa;
        [v18 setProperty:isa forKey:PSAllowMultilineTitleKey];

        v20 = objc_opt_self();
        v32._countAndFlagsBits = 0xE000000000000000;
        v38._countAndFlagsBits = 0x5F59434156495250;
        v38._object = 0xEF474E4944414548;
        v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v40.value._object = 0xEB00000000656C62;
        v21.super.isa = v8;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        sub_3784(v38, v40, v21, v42, v32);
        v22 = sub_3864();

        v23 = [v20 groupSpecifierWithName:v22];

        if (v23)
        {
          sub_3884();
          if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v29 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
            sub_38B4();
          }

          sub_38C4();
          v24 = v18;
          sub_3884();
          if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v30 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
            sub_38B4();
          }

          sub_38C4();
          v25 = sub_3894().super.isa;

          [v34 vcs_setSpecifiersIvar:v25];

          goto LABEL_14;
        }

        __break(1u);
      }
    }

    result = sub_3934();
    __break(1u);
    return result;
  }

LABEL_14:
  v26 = [v1 vcs_getSpecifiersIvar];
  if (v26)
  {
    sub_2B90();
    v27 = sub_38A4();

    v26 = sub_1F60(v27);
  }

  return v26;
}

char *sub_1F60(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3944();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_2D10(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_3904();
        sub_2B90();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_2D10((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_2D30(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2B90();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_2D10((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_2D30(v12, &v3[4 * v11 + 4]);
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

void sub_219C()
{
  v1 = *&v0[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_privacyBundleIdentifier];
  v2 = *&v0[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_privacyBundleIdentifier + 8];
  v3 = sub_3864();
  v9 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v3];

  if (v9)
  {
    [v9 setPresentingViewController:v0];
    [v9 present];
  }

  else
  {
    if (qword_C548 != -1)
    {
      swift_once();
    }

    v4 = sub_3824();
    sub_24BC(v4, qword_C758);
    v5 = v0;
    v9 = sub_3804();
    v6 = sub_38E4();

    if (os_log_type_enabled(v9, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_24F4(v1, v2, &v10);
      _os_log_impl(&dword_0, v9, v6, "Privacy presenter could not be created with identifier: %s", v7, 0xCu);
      sub_2A9C(v8);
    }
  }
}

id sub_2400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionCompanionSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_24BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C0(v11, 0, 0, 1, a1, a2);
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
    sub_2AE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2A9C(v11);
  return v7;
}

unint64_t sub_25C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26CC(a5, a6);
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
    result = sub_3924();
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

char *sub_26CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2718(a1, a2);
  sub_2848(&off_8418);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2718(uint64_t a1, unint64_t a2)
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

  v6 = sub_2934(v5, 0);
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

  result = sub_3924();
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
        v10 = sub_3874();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2934(v10, 0);
        result = sub_38F4();
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

uint64_t sub_2848(uint64_t result)
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

  result = sub_29A8(result, v12, 1, v3);
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

void *sub_2934(uint64_t a1, uint64_t a2)
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

  sub_2B44(&qword_C5F0, ">\n");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B44(&qword_C5F0, ">\n");
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

uint64_t sub_2A9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2B44(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2B90()
{
  result = qword_C5F8;
  if (!qword_C5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5F8);
  }

  return result;
}

uint64_t sub_2BDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_3944();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_3944();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2E50(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2EF0(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2CCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_2D10(char *a1, int64_t a2, char a3)
{
  result = sub_2D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_2D30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_2D40(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B44(&qword_C600, &qword_3EE0);
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

uint64_t sub_2E50(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_3944();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_3914();
  *v1 = result;
  return result;
}

uint64_t sub_2EF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3944();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_3944();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_30F8();
          for (i = 0; i != v6; ++i)
          {
            sub_2B44(&qword_C608, qword_3EE8);
            v9 = sub_3070(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2B90();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_3070(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3904();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_30F0;
  }

  __break(1u);
  return result;
}

unint64_t sub_30F8()
{
  result = qword_C610;
  if (!qword_C610)
  {
    sub_315C(&qword_C608, qword_3EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C610);
  }

  return result;
}

uint64_t sub_315C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_31A4()
{
  result = sub_37E4();
  qword_C680 = result;
  *algn_C688 = v1;
  return result;
}

uint64_t sub_31C8()
{
  v0 = sub_3824();
  sub_3280(v0, qword_C758);
  sub_24BC(v0, qword_C758);
  if (qword_C540 != -1)
  {
    swift_once();
  }

  return sub_3814();
}

uint64_t *sub_3280(uint64_t a1, uint64_t *a2)
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

unint64_t sub_331C()
{
  result = qword_C728;
  if (!qword_C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C728);
  }

  return result;
}

uint64_t sub_338C()
{
  v0 = sub_37C4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_37A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VisionCompanionSettingsController();
  sub_37B4();
  sub_3794();
  v9 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v21._object = 0x8000000000004730;
  v21._countAndFlagsBits = 0xD000000000000010;
  v10.super.isa = v9;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v11 = sub_3784(v21, v22, v10, v23, v19);
  v13 = v12;

  v20[2] = v11;
  v20[3] = v13;
  sub_36A8();
  v14 = sub_3834();
  v16 = v15;
  LOBYTE(v13) = v17;
  sub_3650();
  sub_3844();
  sub_36FC(v14, v16, v13 & 1);

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_35A8()
{
  sub_2B44(&qword_C730, &qword_3FB8);
  sub_37A4();
  sub_3650();
  swift_getOpaqueTypeConformance2();
  return sub_3854();
}

unint64_t sub_3650()
{
  result = qword_C738;
  if (!qword_C738)
  {
    sub_37A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C738);
  }

  return result;
}

unint64_t sub_36A8()
{
  result = qword_C740;
  if (!qword_C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C740);
  }

  return result;
}

uint64_t sub_36FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_3720()
{
  result = qword_C748;
  if (!qword_C748)
  {
    sub_315C(&qword_C750, &qword_3FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C748);
  }

  return result;
}