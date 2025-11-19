void sub_AC750(void *a1)
{
  sub_30C1C8();
  v2 = sub_30C098();

  [a1 setBool:1 forKey:v2];
}

uint64_t sub_AC7BC()
{
  v1 = sub_302558();
  v73 = *(v1 - 8);
  v74 = v1;
  __chkstk_darwin(v1);
  v72 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3023D8();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v4;
  __chkstk_darwin(v5);
  v69 = v60 - v6;
  v7 = sub_30BA28();
  __chkstk_darwin(v7 - 8);
  v65 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v9 - 8);
  v64 = v60 - v10;
  v11 = sub_30B898();
  __chkstk_darwin(v11 - 8);
  v66 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v60 - v18;
  sub_3041B8();
  v20 = v0;
  v21 = sub_3041D8();
  v22 = sub_30C7B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v78 = v63;
    *v23 = 136315394;
    v75[0] = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
    sub_28A88();
    v24 = sub_30D6D8();
    v26 = v13;
    v27 = v16;
    v28 = v14;
    v29 = sub_191264(v24, v25, &v78);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_3032F8();
    v32 = sub_191264(v30, v31, &v78);

    *(v23 + 14) = v32;
    v14 = v28;
    v16 = v27;
    v13 = v26;
    _os_log_impl(&dword_0, v21, v22, "User tapped on the favorite button for interest with adamID: %s. The current state of the interest when the user tapped: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v14 + 8);
  v33(v19, v13);
  v34 = sub_30C678();
  if (v34)
  {
    v62 = v35;
    v63 = v34;
    if (v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState] == 2)
    {
      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      v36 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v36;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303788();
      v37 = sub_301CB8();
      v38 = v64;
      (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
      sub_302718();
      sub_30B788();
      v84[0] = v78;
      sub_EB68(v84, &unk_408130);
      v83 = v79;
      sub_EB68(&v83, &qword_3FC878);
      v82 = v80;
      sub_EB68(&v82, &qword_408140);
      sub_1EBD0(v81);

      sub_EB68(v38, &qword_3FB8E0);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A7D8();
      v77 = sub_ADC48(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A7B8();
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter])
      {
        if ((v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] & 1) == 0)
        {

          sub_309898();
        }
      }

      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      v47 = v61;
      v60[1] = v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_contentKind];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v47;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303818();
      v48 = sub_301CB8();
      v49 = v64;
      (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
      sub_302718();
      sub_30B788();
      v84[0] = v78;
      sub_EB68(v84, &unk_408130);
      v83 = v79;
      sub_EB68(&v83, &qword_3FC878);
      v82 = v80;
      sub_EB68(&v82, &qword_408140);
      sub_1EBD0(v81);

      sub_EB68(v49, &qword_3FB8E0);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A0B8();
      v77 = sub_ADC48(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A0A8();
    }

    v50 = v69;
    sub_302378();

    v52 = v70;
    v51 = v71;
    v53 = v68;
    (*(v70 + 16))(v68, v50, v71);
    v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v55 = swift_allocObject();
    (*(v52 + 32))(v55 + v54, v53, v51);
    sub_30B948();

    (*(v52 + 8))(v50, v51);
    swift_getObjectType();
    v57 = v72;
    v56 = v73;
    v58 = v74;
    (*(v73 + 104))(v72, enum case for ActionMetricsBehavior.fromAction(_:), v74);
    sub_307C38();
    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v58);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_3041B8();
    v39 = v20;
    v40 = sub_3041D8();
    v41 = sub_30C798();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v78 = v43;
      *v42 = 136315138;
      v75[0] = *&v39[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      sub_28A88();
      v44 = sub_30D6D8();
      v46 = sub_191264(v44, v45, &v78);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "Cannot perform Favorite action for button for adamID: %s because we can't get the action runner.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    return (v33)(v16, v13);
  }
}

uint64_t sub_AD50C(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

uint64_t sub_AD7E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState);
  v2 = [objc_opt_self() mainBundle];
  v3 = "onViews.FavoriteHeaderButton";
  if (v1 == 2)
  {
    v3 = "VORITE_VALUE_OFF";
    v4._countAndFlagsBits = 0xD00000000000001FLL;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000020;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_301AB8(v4, v9, v5, v10, v8);

  return v6;
}

void sub_AD8B4(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_30C0D8();
    v8 = a1;
    a3 = sub_30C098();
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

uint64_t sub_AD980()
{
}

uint64_t type metadata accessor for FavoriteHeaderButton()
{
  result = qword_400B30;
  if (!qword_400B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ADB50()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_ADBD8()
{
  sub_3023D8();

  return sub_122088();
}

uint64_t sub_ADC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ADC90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_124C4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_ADCD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ADD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ADD8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for FollowButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = ((v7 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  v9 = v8 + 1;
  v10 = v8 - 2;
  if (v9 >= 4)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_ADF94(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_ADFC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_ADFEC(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v1 = 0xD00000000000001BLL;
      v4 = "PRODUCT_FOLLOW_BUTTON_TITLE";
      goto LABEL_11;
    }

    if (a1 != 5)
    {
LABEL_8:
      v4 = "PRODUCT_FOLLOWING";
LABEL_11:
      v3 = v4 - 32;
      goto LABEL_12;
    }

    v3 = "AX_DOWNLOAD_BUTTON";
    v1 = 0xD00000000000001ELL;
LABEL_12:
    v5 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0xE000000000000000;
    v9._object = (v3 | 0x8000000000000000);
    v9._countAndFlagsBits = v1;
    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v6.super.isa = v5;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v2 = sub_301AB8(v9, v10, v6, v11, v8);

    return v2;
  }

  if (a1 == 2)
  {
    v3 = "PRODUCT_FOLLOWING";
    v1 = 0xD000000000000012;
    goto LABEL_12;
  }

  if (a1 != 3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_AE104@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = 1;
  if (a1 > 3u)
  {
    if (a1 == 5)
    {
      goto LABEL_13;
    }

    if (a1 != 4)
    {
      goto LABEL_8;
    }

    sub_302958();
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (a1)
      {
        sub_302928();
      }

      else
      {
        sub_302988();
      }

      goto LABEL_12;
    }

    sub_302978();
  }

LABEL_12:
  v3 = 0;
LABEL_13:
  v4 = sub_302AB8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

BOOL sub_AE1D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 == 3 || v2 == 5)
  {
    return 0;
  }

  v5 = *a2;
  if (v2 == 4)
  {
    return v5 == 4;
  }

  if ((v5 - 3) < 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v5 == 2;
  }

  if (v5 == 2)
  {
    return 0;
  }

  return (v5 ^ v2 ^ 1) & 1;
}

BOOL sub_AE24C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_AE290(char a1)
{
  if (a1 == 2)
  {
    return 4;
  }

  if (a1 == 3)
  {
    return 5;
  }

  v3 = sub_30CAB8();
  v4 = sub_303AC8();
  v5 = sub_303AC8();
  v6 = a1 & 1;
  if (v4 != v5)
  {
    v6 = 1;
  }

  if (v3)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t getEnumTagSinglePayload for FollowButtonState.AutoDownloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowButtonState.AutoDownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_AE480(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_AE49C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

BOOL sub_AE4C4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    return 1;
  }

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  return v6 == &dword_0 + 2 && a1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
}

id sub_AE580(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a3() & 1;

  return [a2 setSharesBackground:v4];
}

void sub_AE5CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_302F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter))
  {
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription))
    {
      v21 = v0;
      v22 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B58);
      sub_30B8C8();
      if (v25)
      {
        sub_12658(&v24, v26);
        v20 = v9;
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        (*(v5 + 104))(v7, enum case for TipGroup.headerButtons(_:), v4);
        sub_302F48();
        v14 = sub_302EF8();

        (*(v5 + 8))(v7, v4);
        *&v24 = v14;
        sub_124C4(0, &qword_3FBF20);
        v15 = sub_30C8F8();
        v23 = v15;
        v16 = sub_30C8E8();
        (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B68);
        sub_EC8C(&qword_400B70, &qword_400B68);
        sub_ADC90(&qword_3FCF68, &qword_3FBF20);
        sub_304F28();
        sub_EB68(v3, &unk_408F30);

        swift_allocObject();
        v17 = v21;
        swift_unknownObjectWeakInit();
        sub_EC8C(&qword_400B78, &qword_400B50);
        v18 = v22;
        v19 = sub_304F58();

        (*(v20 + 8))(v12, v18);
        *(v17 + v13) = v19;

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        sub_EB68(&v24, &qword_400B60);
      }
    }
  }
}

uint64_t sub_AEA84(uint64_t result)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState;
  v3 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState];
  if (v3 == 6)
  {
    if (result == 6)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (result == 6)
  {
    result = sub_AFEFC(v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState]);
LABEL_14:
    v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
    if (v16)
    {
      v17 = v1[v2];

      v16(v17);
      return sub_1EBD0(v16);
    }

    return result;
  }

  if (v3 == 3 || v3 == 5)
  {
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    if (result == 4)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((result - 3) < 3u)
  {
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (result == 2 || ((v3 ^ result) & 1) != 0)
  {
LABEL_11:
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    *v7 = sub_B06FC;
    v7[1] = v6;

    sub_1EBD0(v8);
    if ((v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] & 1) == 0)
    {
      v9 = v3 == 5;
      v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 1;
      [v1 layoutIfNeeded];
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v9;
      v22 = sub_B0740;
      v23 = v11;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_914CC;
      v21 = &block_descriptor_15;
      v12 = _Block_copy(&v18);
      v13 = v1;

      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = sub_B0764;
      v23 = v14;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_2504C4;
      v21 = &block_descriptor_47_0;
      v15 = _Block_copy(&v18);

      [v10 animateWithDuration:65540 delay:v12 options:v15 animations:0.2 completion:0.0];
      _Block_release(v15);
      _Block_release(v12);
    }

    goto LABEL_14;
  }

  return result;
}

void sub_AEDD4(uint64_t a1)
{
  sub_ADD1C(a1, &v5);
  if (v6)
  {
    sub_12658(&v5, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_AEEE8(v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_EB68(&v5, &qword_400B80);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter] && (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] & 1) == 0)
      {
        v4 = v3;

        sub_309898();
      }

      else
      {
      }
    }
  }
}

void *sub_AEEE8(void *result)
{
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter])
  {
    v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID];
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] == 1 && v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] == 4)
    {
      v3 = __swift_project_boxed_opaque_existential_1Tm(result, result[3]);
      v4 = __chkstk_darwin(v3);
      (*(v6 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

      v7 = v1;
      sub_30ADE8();
      v8 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_userDefaults];
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v10 = v13;
      v11 = v8;
      sub_1EBD0(v10);
      v13 = sub_B11A4;
      v14 = v9;
      sub_3098A8();

      *v2 = v12[0];
      v2[8] = 0;
      return sub_ADDCC(v12);
    }
  }

  return result;
}

void sub_AF0B8(void *a1)
{
  sub_30C1B8();
  v2 = sub_30C098();

  [a1 setBool:1 forKey:v2];
}

uint64_t sub_AF124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC140);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState) == 4)
  {
    v10 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v10 notificationOccurred:0];

    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter))
    {
      if ((*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8) & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  v11 = sub_302268();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_3022E8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_309F08();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_309D38();
  sub_EB68(v3, &unk_3FC140);
  sub_EB68(v6, &qword_3FC1B0);
  return sub_EB68(v9, &unk_4090C0);
}

uint64_t sub_AF438(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

void *sub_AF57C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v0 - 8);
  v2 = v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = sub_3022E8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 56);
    v16 = v14 + 56;
    v15(v11, 1, 1, v13);
    v17 = Strong;
    if (sub_30CE68())
    {
      *v5 = v17;
      size = CGRectNull.size;
      *(v5 + 8) = CGRectNull.origin;
      *(v5 + 24) = size;
      v26 = v15;
      v19 = enum case for PresentationSource.Position.view(_:);
      v20 = sub_3022D8();
      v25[1] = v16;
      v21 = v20;
      v22 = *(v20 - 8);
      (*(v22 + 104))(v5, v19, v20);
      (*(v22 + 56))(v5, 0, 1, v21);
      sub_3022A8();
      sub_EB68(v11, &qword_3FC1B0);
      v26(v8, 0, 1, v13);
      sub_AB300(v8, v11);
    }

    else
    {
    }

    v23 = sub_302268();
    (*(*(v23 - 8) + 56))(v2, 1, 1, v23);
    Strong = sub_309D28();
    sub_EB68(v2, &unk_4090C0);
    sub_EB68(v11, &qword_3FC1B0);
  }

  return Strong;
}

uint64_t sub_AF97C()
{
  v0 = sub_306E58();
  __swift_allocate_value_buffer(v0, qword_400B88);
  *__swift_project_value_buffer(v0, qword_400B88) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_AFA0C(uint64_t a1)
{
  v3 = sub_306EA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback))
  {

    sub_306EC8();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_124C4(0, &qword_3FBF20);
    v12 = sub_30C8F8();
    sub_306E98();
    if (qword_3FAA08 != -1)
    {
      swift_once();
    }

    v13 = sub_306E58();
    __swift_project_value_buffer(v13, qword_400B88);
    sub_306EF8();
    v14 = *(v4 + 8);
    v14(v6, v3);
    sub_30C8D8();

    return (v14)(v9, v3);
  }

  return result;
}

uint64_t sub_AFC20()
{
  sub_1EBD0(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate));
}

uint64_t type metadata accessor for FollowHeaderButton()
{
  result = qword_400C00;
  if (!qword_400C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AFE2C(char a1)
{
  sub_AFA0C(0);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState;
  v4 = sub_AE290(a1);
  v5 = *(v1 + v3);
  *(v1 + v3) = v4;

  return sub_AEA84(v5);
}

void sub_AFEA0(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_AFEFC(a2);
  }
}

id sub_AFEFC(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v31[-v4];
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  sub_AE104(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_EB68(v5, &qword_3FE8A8);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_24E704(v9);
    (*(v7 + 8))(v12, v6);
  }

  if (a1 == 4)
  {
    v13 = [objc_opt_self() mainBundle];
    v30._countAndFlagsBits = 0x8000000000339450;
    v32._object = 0x8000000000339430;
    v32._countAndFlagsBits = 0xD000000000000017;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v14.super.isa = v13;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v15 = sub_301AB8(v32, v33, v14, v34, v30);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  swift_beginAccess();
  *v18 = v15;
  v18[1] = v17;

  v19 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  v20 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 8];
  v21 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16];
  v22 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24];

  sub_2506C4(v15, v17, v19, v20, v21, v22);

  v23 = 0;
  if (a1 == 5)
  {
    v23 = [objc_allocWithZone(type metadata accessor for Spinner()) initWithActivityIndicatorStyle:100];
    [v23 startAnimating];
  }

  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v25 = *&v1[v24];
  if (v25)
  {
    [v25 removeFromSuperview];
    v26 = *&v1[v24];
  }

  else
  {
    v26 = 0;
  }

  *&v1[v24] = v23;
  v27 = v23;

  sub_250E38();
  v28 = (a1 - 6) < 0xFDu;
  [v1 setShowsMenuAsPrimaryAction:v28];
  return [v1 setContextMenuInteractionEnabled:v28];
}

unint64_t sub_B032C()
{
  sub_30D558(40);

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState);
  if ((v1 - 3) < 2)
  {
    v2 = 0xEC000000676E6977;
    v3._countAndFlagsBits = 0x6F6C6C6F46746F6ELL;
  }

  else if (v1 == 6)
  {
    v2 = 0xE700000000000000;
    v3._countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  else if (v1 == 5)
  {
    v2 = 0xE700000000000000;
    v3._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  else
  {
    v2 = 0xE900000000000067;
    v3._countAndFlagsBits = 0x6E69776F6C6C6F66;
  }

  v3._object = v2;
  sub_30C238(v3);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  sub_30C238(v5);
  return 0xD000000000000025;
}

id sub_B05DC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for Spinner();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_B0630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Spinner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B068C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B06C4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_B0708()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_B0774(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v60 = a3;
  v65 = a4;
  v61 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v8 - 8);
  v67 = &v59 - v9;
  v10 = sub_302AB8();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_309D48();
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_30C7D8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] = 6;
  v19 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID];
  *v20 = 0;
  v20[8] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_objectGraph] = a1;
  sub_3098F8();

  sub_30B8C8();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter] = v69;
  sub_124C4(0, &qword_400B40);
  (*(v16 + 104))(v18, enum case for NSUserDefaults.Name.shared(_:), v15);
  sub_ADC90(&qword_400B48, &qword_400B40);
  sub_30B958();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_userDefaults] = v69;
  v64 = a2;
  sub_B104C(a2, v14);
  sub_309D88();
  swift_allocObject();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_presenter] = sub_309D68();
  if (v61 == 2)
  {
    v21 = _UISolariumEnabled() ^ 1;
    if (v60 != 1)
    {
      v21 = 1;
    }

    v65 = v21;
  }

  sub_302958();
  v22 = sub_3029E8();
  v23 = *(*(v22 - 8) + 56);
  v23(v67, 1, 1, v22);
  if (_UISolariumEnabled())
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  v61 = v24;
  v25 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v25 = 0;
  v25[1] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v27 = objc_opt_self();
  v28 = [v27 systemGray6Color];
  v29 = [v27 systemGray5Color];
  v30 = sub_30CFB8();

  *&v5[v26] = v30;
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v5[v31] = [objc_allocWithZone(UIImageView) init];
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v33 = [objc_allocWithZone(UIView) init];
  [v33 setClipsToBounds:1];
  [v33 setUserInteractionEnabled:0];
  *&v5[v32] = v33;
  v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v35 = [objc_opt_self() effectWithStyle:16];
  v36 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v35];

  v37 = v36;
  [v37 setUserInteractionEnabled:0];
  [v37 setClipsToBounds:1];

  *&v5[v34] = v37;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v38 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v38 = 0;
  v38[1] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v23(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v22);
  v41 = v62;
  v40 = v63;
  v42 = v66;
  (*(v62 + 16))(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v66, v63);
  swift_beginAccess();
  v43 = v67;
  sub_A8088(v67, &v5[v39]);
  swift_endAccess();
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = v61;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v44 = *&v5[v31];
  v45 = sub_250990(v65 & 1, v44);
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *v52 = v45;
  *(v52 + 1) = v47;
  *(v52 + 2) = v49;
  v52[24] = v51 & 1;
  v53 = type metadata accessor for GlyphButton();
  v68.receiver = v5;
  v68.super_class = v53;
  v54 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  sub_24F788(0, 0, 1);

  sub_EB68(v43, &unk_4080B0);
  (*(v41 + 8))(v42, v40);
  if (_UISolariumEnabled())
  {
    [v54 _setMonochromaticTreatment:2];
    [v54 _setEnableMonochromaticTreatment:1];
  }

  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground;
  swift_beginAccess();
  *(v54 + v55) = 0;
  v56 = v54;
  sub_24E1B8();
  sub_B10B0();
  v57 = v56;

  sub_309D78();

  [v57 addTarget:v57 action:"primaryActionTriggered" forControlEvents:0x2000];

  sub_AE5CC();
  sub_B1108(v64);
  return v57;
}

void sub_B0FA0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState) = 6;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_B104C(uint64_t a1, uint64_t a2)
{
  v4 = sub_309D48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_B10B0()
{
  result = qword_400C38;
  if (!qword_400C38)
  {
    type metadata accessor for FollowHeaderButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C38);
  }

  return result;
}

uint64_t sub_B1108(uint64_t a1)
{
  v2 = sub_309D48();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B116C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void (*UINavigationBar.navBarTintColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 tintColor];
  return sub_B12A0;
}

void sub_B12A0(id *a1)
{
  v1 = *a1;
  [a1[1] setTintColor:?];
}

Class sub_B1360(uint64_t a1, void *a2, uint64_t a3)
{
  v137 = a3;
  v139 = a2;
  v140 = a1;
  v3 = sub_309B58();
  __chkstk_darwin(v3 - 8);
  v4 = sub_307678();
  v138 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v129 - v8;
  v132 = sub_3041E8();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_302AB8();
  __chkstk_darwin(v11 - 8);
  v133 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_309D48();
  __chkstk_darwin(v13 - 8);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v129 - v17;
  v135 = sub_307BE8();
  v134 = *(v135 - 8);
  v18 = *(v134 + 64);
  __chkstk_darwin(v135);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v129 - v21;
  v23 = sub_308BD8();
  __chkstk_darwin(v23);
  v25 = (&v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B4644(v141, v25, &type metadata accessor for HeaderButtonItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v27 = v138;
    v28 = v139;
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v50 = v6;
        v51 = v4;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C40);
        v53 = *(v52 + 64);
        v54 = *(v25 + *(v52 + 48));
        (*(v27 + 32))(v9, v25, v51);
        sub_EB68(v25 + v53, &qword_3FE8B0);
        _UISolariumEnabled();
        sub_124C4(0, &unk_409000);
        v55 = v50;
        (*(v27 + 16))(v50, v9, v51);
        v56 = v140;

        v43.super.super.isa = sub_6C8C8(v55, v54, v56);
        (*(v27 + 8))(v9, v51);
        return v43.super.super.isa;
      }

      v83 = *v25;
      v84 = *(v25 + 8);
      if (_UISolariumEnabled())
      {
        objc_allocWithZone(type metadata accessor for FavoriteBarButtonItemView());
        v85 = v140;

        v86 = v28;
        v87 = sub_B8634(v85, v83, v84, v86);

LABEL_37:
        v43.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v87];

        return v43.super.super.isa;
      }

      objc_allocWithZone(type metadata accessor for FavoriteHeaderButton());

      v82 = sub_AB44C(v110, v83, v84, 0, 0, 1);
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v57 = sub_308BB8();
        v59 = v58;
        if (v57 == sub_308BB8() && v59 == v60)
        {

          if (v137 != 1)
          {
            return 0;
          }
        }

        else
        {
          v107 = sub_30D728();

          if ((v107 & 1) != 0 && v137 != 1)
          {
            return 0;
          }
        }

        sub_309B48();
        v108 = objc_allocWithZone(sub_309B68());

        v109 = sub_309B38();
        v43.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v109];
        [(objc_class *)v43.super.super.isa _setPrefersNoPlatter:1];

        return v43.super.super.isa;
      }

      if (EnumCaseMultiPayload == 9)
      {
        sub_12658(v25, v145);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);
        v29 = v140;
        sub_30B8E8();
        __swift_project_boxed_opaque_existential_1Tm(v144, v144[3]);
        v141 = v146;
        v30 = v146;
        v31 = __swift_project_boxed_opaque_existential_1Tm(v145, v146);
        *&v143[3] = v141;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v143);
        (*(*(v30 - 8) + 16))(boxed_opaque_existential_0Tm, v31, v30);
        v33 = sub_30A8B8();
        __swift_destroy_boxed_opaque_existential_1(v143);
        if (v33)
        {
          sub_124C4(0, &unk_409000);
          v34 = [objc_opt_self() mainBundle];
          v128._countAndFlagsBits = 0xE000000000000000;
          v150._countAndFlagsBits = 0x6572616853;
          v150._object = 0xE500000000000000;
          v152.value._countAndFlagsBits = 0;
          v152.value._object = 0;
          v35.super.isa = v34;
          v153._countAndFlagsBits = 0;
          v153._object = 0xE000000000000000;
          v36 = sub_301AB8(v150, v152, v35, v153, v128);
          v38 = v37;

          v39 = sub_30C098();
          v40 = [objc_opt_self() systemImageNamed:v39];

          sub_124C4(0, &qword_408080);
          sub_12670(v144, v143);
          sub_12670(v145, v142);
          v41 = swift_allocObject();
          *(v41 + 16) = v28;
          sub_12658(v143, v41 + 24);
          *(v41 + 64) = v29;
          sub_12658(v142, v41 + 72);

          v42 = v28;
          v147.is_nil = sub_30D0C8();
          v151.value._countAndFlagsBits = v36;
          v151.value._object = v38;
          v147.value.super.isa = v40;
          v148.value.super.super.isa = 0;
          v43.super.super.isa = sub_30C828(v151, v147, v148, v149).super.super.isa;
          __swift_destroy_boxed_opaque_existential_1(v144);
LABEL_29:
          __swift_destroy_boxed_opaque_existential_1(v145);
          return v43.super.super.isa;
        }

        __swift_destroy_boxed_opaque_existential_1(v144);
LABEL_46:
        __swift_destroy_boxed_opaque_existential_1(v145);
        return 0;
      }

      sub_B4A64(v140, 28.0, 28.0);
    }

    v87 = v82;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v72 = v136;
      sub_B45E0(v25, v136);
      sub_B4644(v72, v15, &type metadata accessor for FollowButtonPresenter.Data);
      v73 = objc_allocWithZone(type metadata accessor for FollowHeaderButton());

      v75 = sub_B0774(v74, v15, v137, 2);

      v43.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v75];
      v76 = sub_30C098();
      [(objc_class *)v43.super.super.isa setIdentifier:v76];

      if (_UISolariumEnabled())
      {
        v77 = swift_allocObject();
        *(v77 + 16) = v75;
        v78 = v75;
        v79 = [v78 traitCollection];
        v80 = [v79 horizontalSizeClass];

        if (v80 == &dword_0 + 1)
        {
          v81 = 1;
        }

        else
        {
          v111 = [v78 traitCollection];
          v112 = [v111 horizontalSizeClass];

          v81 = v112 == &dword_0 + 2 && v78[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
        }

        [(objc_class *)v43.super.super.isa setSharesBackground:v81];
        sub_B46C0(v72, &type metadata accessor for FollowButtonPresenter.Data);
        v122 = swift_allocObject();
        v122[2].super.super.isa = v43.super.super.isa;
        v122[3].super.super.isa = sub_B46AC;
        v122[4].super.super.isa = v77;
        v123 = &v78[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v124 = *&v78[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v125 = *&v78[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
        *v123 = sub_B46B4;
        v123[1] = v122;
        v126 = v43.super.super.isa;
        sub_2B8D4(v124, v125);
      }

      else
      {
        sub_B46C0(v72, &type metadata accessor for FollowButtonPresenter.Data);
      }

      return v43.super.super.isa;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v45 = *v25;
      v44 = *(v25 + 1);
      v46 = objc_allocWithZone(UIBarButtonItem);

      v47 = [v46 initWithBarButtonSystemItem:0 target:0 action:0];
      sub_124C4(0, &qword_408080);
      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      *(v48 + 24) = v44;

      v43.super.super.isa = v47;
      v49 = sub_30D0C8();
      [(objc_class *)v43.super.super.isa setPrimaryAction:v49];

      return v43.super.super.isa;
    }

    sub_12658(v25, v145);
    if (!_UISolariumEnabled())
    {
      v88 = type metadata accessor for ContextMenuButton();
      v89 = v146;
      v90 = __swift_project_boxed_opaque_existential_1Tm(v145, v146);
      v91 = v133;
      v92 = sub_302948();
      v93 = __chkstk_darwin(v92);
      v95 = &v129 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v96 + 16))(v95, v90, v89, v93);

      v98 = sub_A8F5C(v97, v95, v91, v88, v89, *(&v89 + 1));
      if (v98)
      {
        v99 = v98;
        [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
        v100 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_317F20;
        v102 = [v99 widthAnchor];
        v103 = [v102 constraintEqualToConstant:28.0];

        *(v101 + 32) = v103;
        v104 = [v99 heightAnchor];
        v105 = [v104 constraintEqualToConstant:28.0];

        *(v101 + 40) = v105;
        sub_124C4(0, &qword_403000);
        isa = sub_30C358().super.isa;

        [v100 activateConstraints:isa];

        v43.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v99];
        goto LABEL_29;
      }

      sub_124C4(0, &qword_3FC1C0);
      v113 = v130;
      sub_30D348();
      sub_12670(v145, v144);
      v114 = sub_3041D8();
      v115 = sub_30C7A8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *&v142[0] = v117;
        *v116 = 136315138;
        sub_12670(v144, v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C48);
        v118 = sub_30C148();
        v120 = v119;
        __swift_destroy_boxed_opaque_existential_1(v144);
        v121 = sub_191264(v118, v120, v142);

        *(v116 + 4) = v121;
        _os_log_impl(&dword_0, v114, v115, "Error loading context menu, model didn't work: %s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v144);
      }

      (*(v131 + 8))(v113, v132);
    }

    goto LABEL_46;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_B46C0(v25, &type metadata accessor for HeaderButtonItem);
    return 0;
  }

  v61 = v134;
  v62 = *(v134 + 32);
  v63 = v22;
  v64 = v135;
  v62(v22, v25, v135);
  sub_307BC8();
  *&v141 = v65;
  (*(v61 + 16))(v19, v22, v64);
  v66 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v140;
  v62((v67 + v66), v19, v64);
  v68 = objc_allocWithZone(UIBarButtonItem);

  v69 = [v68 init];
  sub_124C4(0, &qword_408080);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_B476C;
  *(v70 + 24) = v67;
  v43.super.super.isa = v69;

  v71 = sub_30D0C8();
  [(objc_class *)v43.super.super.isa setPrimaryAction:v71];

  (*(v61 + 8))(v63, v64);
  return v43.super.super.isa;
}

uint64_t sub_B25A8()
{
  v0 = sub_308668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v4 - 8);
  v6 = v9 - v5;
  sub_3093A8();

  sub_30B9B8();
  v7 = sub_302268();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  memset(v9, 0, 32);
  sub_309388();

  sub_EB68(v9, &unk_3FBB70);
  sub_EB68(v6, &unk_4090C0);
  sub_307BD8();

  sub_308678();
  sub_308658();

  return (*(v1 + 8))(v3, v0);
}

id sub_B27C4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = sub_302268();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3022E8();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v41 - v20);
  v22 = [a1 presentationSourceItem];
  if (v22)
  {
    *v21 = v22;
    v23 = enum case for PresentationSource.Position.sourceItem(_:);
    v24 = sub_3022D8();
    *&v45 = v14;
    v25 = a3;
    v26 = v11;
    v27 = v9;
    v28 = a5;
    v29 = a2;
    v30 = v24;
    v31 = *(v24 - 8);
    (*(v31 + 104))(v21, v23, v24);
    v32 = v30;
    a2 = v29;
    a5 = v28;
    v9 = v27;
    v11 = v26;
    a3 = v25;
    v14 = v45;
    (*(v31 + 56))(v21, 0, 1, v32);
  }

  else
  {
    v33 = sub_3022D8();
    (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  }

  sub_EB00(v21, v17, &qword_406BB0);
  v34 = a2;
  sub_3022A8();
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  v45 = *(a5 + 24);
  v35 = v45;
  v36 = __swift_project_boxed_opaque_existential_1Tm(a5, v45);
  v47 = v45;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_0Tm, v36, v35);
  result = [v34 view];
  if (result)
  {
    v39 = result;
    sub_30CE78();

    v40 = sub_30A858();
    (*(v9 + 8))(v11, v42);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v40)
    {
      sub_3022C8();
    }

    (*(v43 + 8))(v14, v44);
    return sub_EB68(v21, &qword_406BB0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B2C14()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return _swift_deallocObject(v0, 112, 7);
}

Class sub_B2C78(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_309D48();
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_308BD8();
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_B1360(a1, a2, a3);
  if (result)
  {
    v17 = result;
    sub_B4644(v3, v15, &type metadata accessor for HeaderButtonItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_31BF90;
      *(v29 + 32) = v17;
      v30 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_124C4(0, &unk_409000);
      v31 = v17;
      isa = sub_30C358().super.isa;

      v33 = [v30 initWithBarButtonItems:isa representativeItem:0];

      return v33;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_B45E0(v15, v12);
      sub_B4644(v12, v9, &type metadata accessor for FollowButtonPresenter.Data);
      v19 = objc_allocWithZone(type metadata accessor for FollowHeaderButton());

      v21 = sub_B0774(v20, v9, a3, 0);

      v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v21];
      v23 = sub_30C098();
      [v22 setIdentifier:v23];

      if (_UISolariumEnabled())
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        v25 = v21;
        v26 = [v25 traitCollection];
        v27 = [v26 horizontalSizeClass];

        if (v27 == &dword_0 + 1)
        {
          v28 = 1;
        }

        else
        {
          v34 = [v25 traitCollection];
          v35 = [v34 horizontalSizeClass];

          v28 = v35 == &dword_0 + 2 && v25[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
        }

        [v22 setSharesBackground:v28];
        v36 = swift_allocObject();
        *(v36 + 2) = v22;
        *(v36 + 3) = sub_B4A60;
        *(v36 + 4) = v24;
        v37 = &v25[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v38 = *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v39 = *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
        *v37 = sub_B4A5C;
        v37[1] = v36;
        v40 = v22;
        sub_2B8D4(v38, v39);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_31BF90;
      *(v41 + 32) = v17;
      v42 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_124C4(0, &unk_409000);
      v43 = v17;
      v44 = sub_30C358().super.isa;

      v45 = [v42 initWithBarButtonItems:v44 representativeItem:v22];

      sub_B46C0(v12, &type metadata accessor for FollowButtonPresenter.Data);
      return v45;
    }

    else
    {

      sub_B46C0(v15, &type metadata accessor for HeaderButtonItem);
      return 0;
    }
  }

  return result;
}

Class sub_B3158(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v113 = a1;
  v2 = sub_3041E8();
  v111 = *(v2 - 8);
  v112 = v2;
  __chkstk_darwin(v2);
  v110 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_309B58();
  __chkstk_darwin(v4 - 8);
  v118 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_302AB8();
  __chkstk_darwin(v6 - 8);
  v117 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v8 - 8);
  v116 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8B0);
  __chkstk_darwin(v10 - 8);
  v106 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_307678();
  v115 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v106 - v19;
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v24 = sub_309D48();
  __chkstk_darwin(v24 - 8);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v107 = &v106 - v28;
  v29 = sub_307BE8();
  v108 = *(v29 - 8);
  v109 = v29;
  v30 = *(v108 + 64);
  __chkstk_darwin(v29);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v114 = &v106 - v33;
  v34 = sub_308BD8();
  __chkstk_darwin(v34);
  v36 = (&v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B4644(v120, v36, &type metadata accessor for HeaderButtonItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    v120 = v20;
    v52 = v116;
    v51 = v117;
    v53 = v115;
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C40);
        LODWORD(v117) = *(v36 + v54[12]);
        v55 = v54[16];
        LODWORD(v118) = *(v36 + v54[20]);
        (*(v53 + 32))(v23, v36, v15);
        sub_B48A4(v36 + v55, v14);
        sub_307638();
        v56 = sub_3031C8();
        LODWORD(v55) = (*(*(v56 - 8) + 48))(v52, 1, v56);
        sub_EB68(v52, &unk_402FF0);
        if (v55 == 1 && (v57 = sub_302A98(), (*(*(v57 - 8) + 48))(v14, 1, v57) == 1))
        {
          sub_124C4(0, &qword_3FE8A0);
          (*(v53 + 16))(v120, v23, v15);

          v46.super.super.super.super.isa = sub_30D2C8();
          (*(v53 + 8))(v23, v15);
          sub_EB68(v14, &qword_3FE8B0);
        }

        else
        {
          (*(v53 + 16))(v17, v23, v15);
          type metadata accessor for GlyphButton();
          v92 = v106;
          sub_EB00(v14, v106, &qword_3FE8B0);
          v93 = v119;

          v46.super.super.super.super.isa = sub_6D980(v17, v117, v92, v93);
          v94 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
          swift_beginAccess();
          *(v46.super.super.super.super.isa + v94) = v118;
          sub_24E1B8();
          (*(v53 + 8))(v23, v15);
          sub_EB68(v14, &qword_3FE8B0);
        }

        return v46.super.super.super.super.isa;
      }

      sub_12658(v36, aBlock);
      v71 = type metadata accessor for ContextMenuButton();
      v72 = v122;
      v73 = v123;
      v74 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v122);
      v75 = sub_3029A8();
      v76 = __chkstk_darwin(v75);
      v78 = &v106 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v79 + 16))(v78, v74, v72, v76);

      v46.super.super.super.super.isa = sub_A8F5C(v80, v78, v51, v71, v72, v73);
      if (!v46.super.super.super.super.isa)
      {
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return v46.super.super.super.super.isa;
      }

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      goto LABEL_37;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v81 = *v36;
      v82 = *(v36 + 8);
      objc_allocWithZone(type metadata accessor for FavoriteHeaderButton());

      v84 = sub_AB44C(v83, v81, v82, 2, 0, 1);
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_27;
      }

      v58 = sub_308BB8();
      v60 = v59;
      if (v58 == sub_308BB8() && v60 == v61)
      {

        if (v113 != 1)
        {
          return 0;
        }
      }

      else
      {
        v95 = sub_30D728();

        if ((v95 & 1) != 0 && v113 != 1)
        {
          return 0;
        }
      }

      sub_309B48();
      v96 = objc_allocWithZone(sub_309B68());

      v84 = sub_309B38();
    }

    v46.super.super.super.super.isa = v84;
LABEL_37:
    swift_getObjectType();
    v97 = swift_conformsToProtocol2();
    if (v97 && v46.super.super.super.super.isa)
    {
      v98 = v97;
      ObjectType = swift_getObjectType();
      v100 = objc_allocWithZone(UIColor);
      v123 = sub_AB208;
      v124 = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2EB7C;
      v122 = &block_descriptor_16;
      v101 = _Block_copy(aBlock);
      v102 = v46.super.super.super.super.isa;
      v103 = [v100 initWithDynamicProvider:v101];
      _Block_release(v101);

      (*(v98 + 72))(v103, ObjectType, v98);
    }

    return v46.super.super.super.super.isa;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
LABEL_30:
      sub_B46C0(v36, &type metadata accessor for HeaderButtonItem);
      return 0;
    }

    if (!EnumCaseMultiPayload)
    {
      v39 = v108;
      v38 = v109;
      v40 = *(v108 + 32);
      v41 = v114;
      v40(v114, v36, v109);
      v120 = sub_124C4(0, &qword_3FE8A0);
      sub_124C4(0, &qword_408080);
      (*(v39 + 16))(v31, v41, v38);
      v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v119;
      v44 = v43 + v42;
      v45 = v38;
      v40(v44, v31, v38);

      v125.value.super.super.isa = sub_30D0C8();
      v46.super.super.super.super.isa = sub_30D2B8(UIButtonTypeSystem, v125).super.super.super.super.isa;
      sub_307BC8();
      v47 = sub_30C098();

      [(objc_class *)v46.super.super.super.super.isa setTitle:v47 forState:0];

      v48 = [(objc_class *)v46.super.super.super.super.isa titleLabel];
      if (v48)
      {
        v49 = v48;
        v50 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v49 setFont:v50];
      }

      (*(v39 + 8))(v114, v45);
      return v46.super.super.super.super.isa;
    }

LABEL_27:
    sub_124C4(0, &qword_3FC1C0);
    v88 = v110;
    sub_30D348();
    v89 = sub_3041D8();
    v90 = sub_30C7A8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "Button of this type is not supported in standard button mode", v91, 2u);
    }

    (*(v111 + 8))(v88, v112);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v85 = v107;
    sub_B45E0(v36, v107);
    sub_B4644(v85, v26, &type metadata accessor for FollowButtonPresenter.Data);
    v86 = objc_allocWithZone(type metadata accessor for FollowHeaderButton());

    v46.super.super.super.super.isa = sub_B0774(v87, v26, v113, 2);

    sub_B46C0(v85, &type metadata accessor for FollowButtonPresenter.Data);
  }

  else
  {
    v63 = *v36;
    v62 = *(v36 + 1);
    sub_124C4(0, &qword_3FE8A0);
    sub_124C4(0, &qword_408080);
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;

    v126.value.super.super.isa = sub_30D0C8();
    v46.super.super.super.super.isa = sub_30D2B8(UIButtonTypeSystem, v126).super.super.super.super.isa;
    v65 = [objc_opt_self() mainBundle];
    v105._countAndFlagsBits = 0xE000000000000000;
    v127._countAndFlagsBits = 1701736260;
    v127._object = 0xE400000000000000;
    v128.value._countAndFlagsBits = 0;
    v128.value._object = 0;
    v66.super.isa = v65;
    v129._countAndFlagsBits = 0;
    v129._object = 0xE000000000000000;
    sub_301AB8(v127, v128, v66, v129, v105);

    v67 = sub_30C098();

    [(objc_class *)v46.super.super.super.super.isa setTitle:v67 forState:0];

    v68 = [(objc_class *)v46.super.super.super.super.isa titleLabel];
    if (v68)
    {
      v69 = v68;
      v70 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
      [v69 setFont:v70];
    }
  }

  return v46.super.super.super.super.isa;
}

uint64_t sub_B40B8()
{
  v0 = sub_308668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v4 - 8);
  v6 = v9 - v5;
  sub_3093A8();

  sub_30B9B8();
  v7 = sub_302268();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  memset(v9, 0, 32);
  sub_309388();

  sub_EB68(v9, &unk_3FBB70);
  sub_EB68(v6, &unk_4090C0);
  sub_307BD8();

  sub_308678();
  sub_308658();

  return (*(v1 + 8))(v3, v0);
}

void sub_B42D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 leftBarButtonItems];
  if (v5)
  {
    v6 = v5;
    sub_124C4(0, &unk_409000);
    v7 = sub_30C368();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = [v3 rightBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_124C4(0, &unk_409000);
    v10 = sub_30C368();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_14A38C(v10);
  if (v7 >> 62)
  {
LABEL_29:
    v11 = sub_30D668();
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_30:
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v11 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_9:
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = sub_30D578();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = [v15 customView];

      if (v17)
      {
        break;
      }

LABEL_12:
      ++v14;
      if (v12 == v11)
      {
        goto LABEL_31;
      }
    }

    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (!v18)
    {

      goto LABEL_12;
    }

    v32 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_CA690(0, v13[2] + 1, 1, v13);
    }

    v21 = v13[2];
    v20 = v13[3];
    v22 = v32;
    if (v21 >= v20 >> 1)
    {
      v13 = sub_CA690((v20 > 1), v21 + 1, 1, v13);
      v22 = v32;
    }

    v13[2] = v21 + 1;
    v23 = &v13[2 * v21];
    v23[4] = v17;
    v23[5] = v22;
  }

  while (v12 != v11);
LABEL_31:

  v24 = v13[2];
  if (v24)
  {
    v25 = 0;
    v26 = v13 + 5;
    while (v25 < v13[2])
    {
      ++v25;
      v27 = *(v26 - 1);
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 96);
      v31 = v27;

      v30(a1, a2, ObjectType, v28);

      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
  }
}

uint64_t sub_B45E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_309D48();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B46C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B4720()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B476C()
{
  sub_307BE8();

  return sub_B25A8();
}

uint64_t sub_B47D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B4810()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_5Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B48A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_307BE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B49D8()
{
  sub_307BE8();

  return sub_B40B8();
}

void sub_B4A64(uint64_t a1, double a2, double a3)
{
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v5 - 8);
  v66 = &v56 - v6;
  v7 = sub_302AB8();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_30B898();
  __chkstk_darwin(v9 - 8);
  v10 = sub_30AA18();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_30A4E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_308778();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowDestination.prototypeUpNextSettings(_:), v19);
  (*(v15 + 104))(v17, enum case for FlowPresentationContext.presentPopover(_:), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v23 = sub_30AF68();
  *(inited + 32) = v23;
  v24 = sub_30AF98();
  *(inited + 33) = v24;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v23)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v24)
  {
    sub_30AFB8();
  }

  (*(v11 + 104))(v13, enum case for FlowDestinationPageHeader.standard(_:), v10);
  sub_30B868();
  sub_3076F8();
  swift_allocObject();
  sub_307708();
  v25 = sub_30AF68();
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v25)
  {
    sub_30AFB8();
  }

  v57 = sub_308498();
  swift_allocObject();
  v58 = sub_308488();
  v26 = v63;
  sub_3029D8();
  v27 = sub_3029E8();
  v28 = *(v27 - 8);
  v60 = *(v28 + 56);
  v61 = v28 + 56;
  v29 = v66;
  v60(v66, 1, 1, v27);
  v62 = type metadata accessor for GlyphButton();
  v30 = objc_allocWithZone(v62);
  v31 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v31 = 0;
  v31[1] = 0;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v33 = objc_opt_self();
  v34 = [v33 systemGray6Color];
  v35 = [v33 systemGray5Color];
  v36 = sub_30CFB8();

  *&v30[v32] = v36;
  v37 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v30[v37] = [objc_allocWithZone(UIImageView) init];
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v39 = [objc_allocWithZone(UIView) init];
  [v39 setClipsToBounds:1];
  [v39 setUserInteractionEnabled:0];
  *&v30[v38] = v39;
  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v41 = [objc_opt_self() effectWithStyle:16];
  v42 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v41];

  v43 = v42;
  v44 = v26;
  [v43 setUserInteractionEnabled:0];
  [v43 setClipsToBounds:1];

  *&v30[v40] = v43;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v45 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v45 = 0;
  v45[1] = 0;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v60(&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v27);
  v47 = v64;
  v48 = v26;
  v49 = v65;
  (*(v64 + 16))(&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v48, v65);
  swift_beginAccess();
  sub_A8088(v29, &v30[v46]);
  swift_endAccess();
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 2;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v50 = *&v30[v37];
  v51 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v51 + 1) = 0;
  *(v51 + 2) = 0;
  *v51 = v50;
  v51[24] = 0;
  v68.receiver = v30;
  v68.super_class = v62;
  v52 = v50;
  v53 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, a2, a3);
  sub_24DE30();
  if (*(v53 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24))
  {
    __break(1u);
  }

  else
  {
    v54 = objc_opt_self();
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;
    [v54 activateConstraints:isa];

    sub_A80F8(v29);
    (*(v47 + 8))(v44, v49);
    v67[3] = v57;
    v67[4] = sub_B5370();
    v67[0] = v58;

    sub_30D388();

    __swift_destroy_boxed_opaque_existential_1(v67);
  }
}

unint64_t sub_B5370()
{
  result = qword_400C50;
  if (!qword_400C50)
  {
    sub_308498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C50);
  }

  return result;
}

void sub_B53C8(uint64_t a1, void *a2)
{
  v58 = a2;
  v59 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v63 = sub_302AB8();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v61 = *(v8 + 56);
  v62 = v8 + 56;
  v61(v4, 1, 1, v7);
  v64 = type metadata accessor for GlyphButton();
  v9 = objc_allocWithZone(v64);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  v23 = v60;
  [v22 setUserInteractionEnabled:0];
  v24 = v63;
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v25 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v61(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v7);
  (*(v23 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v24);
  swift_beginAccess();
  sub_A8088(v4, &v9[v26]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v27 = *&v9[v16];
  v28 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = v27;
  v28[24] = 0;
  v67.receiver = v9;
  v67.super_class = v64;
  v29 = v27;
  v30 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if ((*(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24) & 1) == 0)
  {
    v31 = objc_opt_self();
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;
    [v31 activateConstraints:isa];

    sub_A80F8(v4);
    (*(v23 + 8))(v6, v24);
    v33 = ObjectType;
    v34 = v57;
    *&v57[v55] = v30;
    v66.receiver = v34;
    v66.super_class = v33;
    v35 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
    v37 = *&v35[OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton];
    v38 = v35;
    v39 = v37;
    v40 = sub_30C098();
    [v39 setAccessibilityIdentifier:v40];

    v41 = *&v35[v36];
    v42 = v58;
    if (v58)
    {
      v43 = v58;
      [v41 setTintColor:v43];
      v44 = *&v35[v36];
      v45 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
      swift_beginAccess();
      v46 = v44[v45];
      v44[v45] = 1;
      if (v46 != 1)
      {
        v47 = v44;
        sub_24E1B8();

        v43 = v47;
      }
    }

    else
    {
      v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
      swift_beginAccess();
      v49 = v41[v48];
      v41[v48] = 2;
      if (v49 == 2)
      {
LABEL_8:
        v50 = *&v35[v36];
        v51 = sub_309298();
        swift_allocObject();
        v52 = v50;
        v53 = sub_309288();
        v65[3] = v51;
        v65[4] = sub_B6864();
        v65[0] = v53;
        sub_30D388();

        __swift_destroy_boxed_opaque_existential_1(v65);
        [v38 addSubview:*&v35[v36]];
        [*&v35[v36] setAlpha:1.0];
        [v38 setBackButtonAlpha:0.0];

        return;
      }

      v43 = v41;
      sub_24E1B8();
    }

    goto LABEL_8;
  }

  __break(1u);
}

id sub_B5AC4()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  [v1 layoutMargins];
  v4 = v3;
  v6 = v5;
  [v1 safeAreaInsets];
  if (v2 == &dword_0 + 1)
  {
    v9 = v6 - v8;
  }

  else
  {
    v9 = v4 - v7;
  }

  [v1 floatingTabBarHeight];
  if (v10 <= 0.0)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v43);
  }

  else
  {
    [v1 floatingTabBarHeight];
    v12 = v11;
    [v1 layoutMargins];
    Height = v12 + v13;
  }

  v15 = v9 + 8.0;
  v16 = [v1 overlays];
  if (v2 == &dword_0 + 1)
  {
    if (v16)
    {
      v17 = v16;
      sub_30CBF8();
      v18 = v38;
      v19 = v39;
      v20 = v40;
      v21 = v41;

      v22 = 0.0;
      if (v42)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v18;
      }

      if (v42)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v19;
      }

      if (v42)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v20;
      }

      if ((v42 & 1) == 0)
      {
        v22 = v21;
      }
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v22 = 0.0;
    }

    v35 = CGRectGetMaxX(*(&v22 - 3)) + -28.0 - v15;
  }

  else
  {
    if (v16)
    {
      v26 = v16;
      sub_30CBF8();
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;

      v31 = 0.0;
      if (v42)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v27;
      }

      if (v42)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v28;
      }

      if (v42)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v29;
      }

      if ((v42 & 1) == 0)
      {
        v31 = v30;
      }
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v31 = 0.0;
    }

    v35 = v15 + CGRectGetMinX(*(&v31 - 3));
  }

  return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton] setFrame:{v35, (Height + -28.0) * 0.5, 28.0, 28.0}];
}

uint64_t sub_B5E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v0 - 8);
  v2 = v35 - v1;
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v36 = *(v8 + 56);
  v37 = v8 + 56;
  v36(v2, 1, 1, v7);
  v40 = type metadata accessor for GlyphButton();
  v9 = objc_allocWithZone(v40);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  [v22 setUserInteractionEnabled:0];
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  v23 = v38;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v24 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v26 = v7;
  v27 = v39;
  v36(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v26);
  (*(v27 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v23);
  swift_beginAccess();
  sub_A8088(v2, &v9[v25]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v28 = *&v9[v16];
  v29 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = v28;
  v29[24] = 0;
  v41.receiver = v9;
  v41.super_class = v40;
  v30 = v28;
  v31 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v31[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
  }

  v32 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v32 activateConstraints:isa];

  sub_A80F8(v2);
  (*(v27 + 8))(v6, v23);
  *(v35[1] + v35[0]) = v31;
  result = sub_30D648();
  __break(1u);
  return result;
}

uint64_t sub_B6334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v0 - 8);
  v2 = v35 - v1;
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v36 = *(v8 + 56);
  v37 = v8 + 56;
  v36(v2, 1, 1, v7);
  v40 = type metadata accessor for GlyphButton();
  v9 = objc_allocWithZone(v40);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  [v22 setUserInteractionEnabled:0];
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  v23 = v38;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v24 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v26 = v7;
  v27 = v39;
  v36(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v26);
  (*(v27 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v23);
  swift_beginAccess();
  sub_A8088(v2, &v9[v25]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v28 = *&v9[v16];
  v29 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = v28;
  v29[24] = 0;
  v41.receiver = v9;
  v41.super_class = v40;
  v30 = v28;
  v31 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v31[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
  }

  v32 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v32 activateConstraints:isa];

  sub_A80F8(v2);
  (*(v27 + 8))(v6, v23);
  *(v35[1] + v35[0]) = v31;
  result = sub_30D648();
  __break(1u);
  return result;
}

unint64_t sub_B6864()
{
  result = qword_400C88;
  if (!qword_400C88)
  {
    sub_309298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C88);
  }

  return result;
}

void sub_B68BC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  sub_302918();
  v5 = v4;
  v6 = [v1 traitCollection];
  v7 = sub_30C968();

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 7;
  }

  v12 = [objc_opt_self() configurationWithPointSize:v8 weight:3 scale:v5];
  if (v3 == 2)
  {
    v9 = sub_30C098();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v12];

    if (v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v11 = sub_30C098();
  v10 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v12];

  if (!v10)
  {
    __break(1u);
    return;
  }

LABEL_8:
  [v2 setImage:v10 forState:0];
}

void sub_B6A58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_302F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter))
  {
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription))
    {
      v21 = v0;
      v22 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B58);
      sub_30B8C8();
      if (v25)
      {
        sub_12658(&v24, v26);
        v20 = v9;
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        (*(v5 + 104))(v7, enum case for TipGroup.headerButtons(_:), v4);
        sub_302F58();
        v14 = sub_302EF8();

        (*(v5 + 8))(v7, v4);
        *&v24 = v14;
        sub_124C4(0, &qword_3FBF20);
        v15 = sub_30C8F8();
        v23 = v15;
        v16 = sub_30C8E8();
        (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B68);
        sub_EC8C(&qword_400B70, &qword_400B68);
        sub_ADC90(&qword_3FCF68, &qword_3FBF20);
        sub_304F28();
        sub_EB68(v3, &unk_408F30);

        swift_allocObject();
        v17 = v21;
        swift_unknownObjectWeakInit();
        sub_EC8C(&qword_400B78, &qword_400B50);
        v18 = v22;
        v19 = sub_304F58();

        (*(v20 + 8))(v12, v18);
        *(v17 + v13) = v19;

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        sub_EB68(&v24, &qword_400B60);
      }
    }
  }
}

uint64_t sub_B6F5C(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

uint64_t sub_B70A0()
{
  v1 = sub_302558();
  v73 = *(v1 - 8);
  v74 = v1;
  __chkstk_darwin(v1);
  v72 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3023D8();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v4;
  __chkstk_darwin(v5);
  v69 = v60 - v6;
  v7 = sub_30BA28();
  __chkstk_darwin(v7 - 8);
  v65 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v9 - 8);
  v64 = v60 - v10;
  v11 = sub_30B898();
  __chkstk_darwin(v11 - 8);
  v66 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v60 - v18;
  sub_3041B8();
  v20 = v0;
  v21 = sub_3041D8();
  v22 = sub_30C7B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v78 = v63;
    *v23 = 136315394;
    v75[0] = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
    sub_28A88();
    v24 = sub_30D6D8();
    v26 = v13;
    v27 = v16;
    v28 = v14;
    v29 = sub_191264(v24, v25, &v78);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_3032F8();
    v32 = sub_191264(v30, v31, &v78);

    *(v23 + 14) = v32;
    v14 = v28;
    v16 = v27;
    v13 = v26;
    _os_log_impl(&dword_0, v21, v22, "User tapped on the favorite button for interest with adamID: %s. The current state of the interest when the user tapped: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v14 + 8);
  v33(v19, v13);
  v34 = sub_30C678();
  if (v34)
  {
    v62 = v35;
    v63 = v34;
    if (v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] == 2)
    {
      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      v36 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v36;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303788();
      v37 = sub_301CB8();
      v38 = v64;
      (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
      sub_302718();
      sub_30B788();
      v84[0] = v78;
      sub_EB68(v84, &unk_408130);
      v83 = v79;
      sub_EB68(&v83, &qword_3FC878);
      v82 = v80;
      sub_EB68(&v82, &qword_408140);
      sub_1EBD0(v81);

      sub_EB68(v38, &qword_3FB8E0);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A7D8();
      v77 = sub_ADC48(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A7B8();
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
      {
        if ((v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
        {

          sub_309898();
        }
      }

      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      v47 = v61;
      v60[1] = v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_contentKind];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v47;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303818();
      v48 = sub_301CB8();
      v49 = v64;
      (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
      sub_302718();
      sub_30B788();
      v84[0] = v78;
      sub_EB68(v84, &unk_408130);
      v83 = v79;
      sub_EB68(&v83, &qword_3FC878);
      v82 = v80;
      sub_EB68(&v82, &qword_408140);
      sub_1EBD0(v81);

      sub_EB68(v49, &qword_3FB8E0);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A0B8();
      v77 = sub_ADC48(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A0A8();
    }

    v50 = v69;
    sub_302378();

    v52 = v70;
    v51 = v71;
    v53 = v68;
    (*(v70 + 16))(v68, v50, v71);
    v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v55 = swift_allocObject();
    (*(v52 + 32))(v55 + v54, v53, v51);
    sub_30B948();

    (*(v52 + 8))(v50, v51);
    swift_getObjectType();
    v57 = v72;
    v56 = v73;
    v58 = v74;
    (*(v73 + 104))(v72, enum case for ActionMetricsBehavior.fromAction(_:), v74);
    sub_307C38();
    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v58);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_3041B8();
    v39 = v20;
    v40 = sub_3041D8();
    v41 = sub_30C798();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v78 = v43;
      *v42 = 136315138;
      v75[0] = *&v39[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      sub_28A88();
      v44 = sub_30D6D8();
      v46 = sub_191264(v44, v45, &v78);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "Cannot perform Favorite action for button for adamID: %s because we can't get the action runner.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    return (v33)(v16, v13);
  }
}

void sub_B7DF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_303A88();
    v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState;
    v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] = v2;
    v4 = sub_3032F8();
    v6 = v5;
    if (v4 == sub_3032F8() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_30D728();

      if ((v9 & 1) == 0)
      {
        sub_B68BC(v1[v3]);
      }
    }
  }
}

void sub_B7EEC(uint64_t a1)
{
  sub_ADD1C(a1, &v5);
  if (v6)
  {
    sub_12658(&v5, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_B8000(v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_EB68(&v5, &qword_400B80);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter] && (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
      {
        v4 = v3;

        sub_309898();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_B8000(uint64_t result)
{
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
  {
    return result;
  }

  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] != 1)
  {
    return result;
  }

  v3 = result;

  v4 = sub_303108();
  v6 = v5;
  if (v4 == sub_303108() && v6 == v7)
  {

    goto LABEL_12;
  }

  v9 = sub_30D728();

  if (v9)
  {
LABEL_12:
    v10 = __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
    v11 = __chkstk_darwin(v10);
    (*(v13 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

    v14 = v1;
    sub_30ADE8();
    v15 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_userDefaults];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = v20;
    v18 = v15;
    sub_1EBD0(v17);
    v20 = sub_ADDC4;
    v21 = v16;
    sub_3098A8();

    *v2 = v19[0];
    v2[8] = 0;
    return sub_ADDCC(v19);
  }
}

uint64_t sub_B84DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState);
  v2 = [objc_opt_self() mainBundle];
  v3 = "onViews.FavoriteHeaderButton";
  if (v1 == 2)
  {
    v3 = "VORITE_VALUE_OFF";
    v4._countAndFlagsBits = 0xD00000000000001FLL;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000020;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_301AB8(v4, v9, v5, v10, v8);

  return v6;
}

uint64_t sub_B85AC()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_B8634(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_30C7D8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_objectGraph] = a1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID] = a2;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_contentKind] = a3;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_sourceViewController] = a4;
  sub_124C4(0, &qword_400B40);
  (*(v11 + 104))(v13, enum case for NSUserDefaults.Name.shared(_:), v10);
  sub_ADC90(&qword_400B48, &qword_400B40);

  v15 = a4;
  sub_30B958();
  (*(v11 + 8))(v13, v10);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_userDefaults] = v21;
  sub_3098F8();
  sub_30B8C8();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter] = v21;
  sub_303BA8();
  sub_30B8E8();
  v16 = sub_303B98();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_stateMachine] = v16;

  LOBYTE(a1) = sub_303A88();

  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] = a1;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (_UISolariumEnabled())
  {
    [v17 _setMonochromaticTreatment:2];
    [v17 _setEnableMonochromaticTreatment:1];
  }

  [v17 addTarget:v17 action:"primaryActionTriggered" forControlEvents:{0x2000, ObjectType}];
  sub_B68BC(*(v17 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState));
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_303A68();

  sub_B6A58();
  return v17;
}

uint64_t sub_B89A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B89EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_B8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_B9734;
  v16 = &block_descriptor_6;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_B9784;
  v16 = &block_descriptor_3;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1EBD0(a4);
  sub_1EBD0(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_B8C20(void (*a1)(char *, char *, uint64_t), double a2, double a3)
{
  v4 = v3;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v53 = sub_302268();
  v57 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3022E8();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_308CB8();
  v60 = *(v63 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v63);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_307678();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v69.receiver = v4;
  v69.super_class = ObjectType;

  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_model;
  sub_12670(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_model], aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
  v24 = swift_dynamicCast();
  v25 = v17[7];
  if (v24)
  {
    v25(v15, 0, 1, v16);
    v61 = v17[4];
    v26 = v16;
    v51 = v16;
    v27 = v17;
    v28 = v22;
    v52 = v22;
    v61(v22, v15, v26);
    v29 = v62;
    sub_308CA8();
    v59 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_objectGraph];
    v30 = v60;
    v31 = v58;
    (*(v60 + 16))(v58, v29, v63);
    v32 = v27;
    v33 = v27[2];
    v34 = v51;
    v33(v19, v28, v51);
    v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v36 = v32;
    v37 = (v10 + *(v32 + 80) + v35) & ~*(v32 + 80);
    v38 = swift_allocObject();
    v39 = v38 + v35;
    v40 = v63;
    (*(v30 + 32))(v39, v31, v63);
    v61((v38 + v37), v19, v34);
    *(v38 + ((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v41 = objc_opt_self();
    v66 = sub_B9648;
    v67 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_B9784;
    v65 = &block_descriptor_17;
    v42 = _Block_copy(aBlock);

    v43 = [v41 configurationWithIdentifier:0 previewProvider:0 actionProvider:v42];

    _Block_release(v42);
    (*(v30 + 8))(v62, v40);
    (v36[1])(v52, v34);
    return v43;
  }

  v25(v15, 1, 1, v16);
  sub_B9484(v15);
  sub_12670(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_episodeController], aBlock);
  __swift_project_boxed_opaque_existential_1Tm(aBlock, v65);
  sub_12670(&v4[v23], v68);
  v44 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_sourceViewController];
  v45 = v4;
  v46 = v59;
  sub_302298();
  result = [v44 view];
  if (result)
  {
    v48 = result;
    v49 = v55;
    sub_30CE78();

    v43 = sub_30A9D8();
    (*(v57 + 8))(v49, v53);
    (*(v54 + 8))(v46, v56);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return v43;
  }

  __break(1u);
  return result;
}

uint64_t sub_B9484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B94EC()
{
  v1 = sub_308CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_307678();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_B9648()
{
  sub_308CB8();
  sub_307678();
  return sub_308C98();
}

id sub_B9734(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_B9784(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_B981C();
  v2 = sub_30C368();

  v3 = v1(v2);

  return v3;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_B981C()
{
  result = qword_408010;
  if (!qword_408010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_408010);
  }

  return result;
}

uint64_t ModernPageViewController.anyPresenter.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + qword_400D60);
  a1[3] = *(&stru_20.filesize + (swift_isaMask & *v1));
  *a1 = v2;
  return swift_unknownObjectRetain();
}

char *ModernPageViewController.showcaseView.getter()
{
  v1 = sub_301F38();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_400D58;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 40);
  sub_301EE8();
  isa = sub_301EA8().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for UberCollectionViewCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
    v12 = v11;
    if (!v11)
    {
      v12 = v10;
      v13 = v10;
    }

    v14 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t ModernPageViewController.actionDispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_4290C8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModernPageViewController.pageHeaderHint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_4290D0;
  swift_beginAccess();
  v4 = sub_30AA18();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ModernPageViewController.pageHeaderHint.setter(uint64_t a1)
{
  v3 = qword_4290D0;
  swift_beginAccess();
  v4 = sub_30AA18();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_B9CC0(uint64_t a1)
{
  v3 = sub_301988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  __chkstk_darwin(v6 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401140);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = qword_400DC0;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_EB00(v1 + v15, v14, &unk_4067B0);
  sub_EB00(a1, &v14[v16], &unk_4067B0);
  v17 = *(v4 + 48);
  if (v17(v14, 1, v3) == 1)
  {
    if (v17(&v14[v16], 1, v3) == 1)
    {
      sub_EB68(v14, &unk_4067B0);
      return;
    }
  }

  else
  {
    sub_EB00(v14, v10, &unk_4067B0);
    if (v17(&v14[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v14[v16], v3);
      sub_CEB6C(&unk_408FF0, &type metadata accessor for EntityIdentifier);
      v21 = sub_30C018();
      v22 = *(v4 + 8);
      v22(v20, v3);
      v22(v10, v3);
      sub_EB68(v14, &unk_4067B0);
      if (v21)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v10, v3);
  }

  sub_EB68(v14, &qword_401140);
LABEL_7:
  if ([v1 isViewLoaded])
  {
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      sub_EB00(v1 + v15, v25, &unk_4067B0);
      sub_30CEC8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_BA098(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-v4];
  v6 = qword_400DC0;
  swift_beginAccess();
  sub_EB00(v1 + v6, v5, &unk_4067B0);
  swift_beginAccess();
  sub_CF528(a1, v1 + v6);
  swift_endAccess();
  sub_B9CC0(v5);
  sub_EB68(a1, &unk_4067B0);
  return sub_EB68(v5, &unk_4067B0);
}

uint64_t sub_BA1D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  return v1;
}

uint64_t sub_BA294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_304E28();
}

uint64_t sub_BA354()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018);
  sub_304E08();
  return swift_endAccess();
}

uint64_t sub_BA3C8(char a1)
{
  v2 = a1 & 1;
  result = *(v1 + qword_400E98);
  if (result != v2)
  {
    return sub_309688();
  }

  return result;
}

uint64_t ModernPageViewController.navigationTabIdentifier.getter()
{
  v1 = sub_302218();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ModernPageViewController.interactionContextPage.getter();
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    return 6;
  }

  sub_CEBB4(v3, &type metadata accessor for InteractionContext.Page);
  v4 = *(v0 + qword_400D68);
  sub_BA528(v4);
  return v4;
}

uint64_t ModernPageViewController.navigationTabIdentifier.setter(uint64_t a1)
{
  v2 = *(v1 + qword_400D68);
  *(v1 + qword_400D68) = a1;
  return sub_BA54C(v2);
}

uint64_t sub_BA528(uint64_t result)
{
  if (result != 19)
  {
    return sub_BA538(result);
  }

  return result;
}

uint64_t sub_BA538(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_BA54C(uint64_t result)
{
  if (result != 19)
  {
    return sub_1DB3C(result);
  }

  return result;
}

uint64_t (*ModernPageViewController.navigationTabIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ModernPageViewController.navigationTabIdentifier.getter();
  return sub_BA5A4;
}

uint64_t sub_BA5A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_BA528(*a1);
    v4 = *(v3 + qword_400D68);
    *(v3 + qword_400D68) = v2;
    sub_BA54C(v4);
  }

  else
  {
    v5 = *(v3 + qword_400D68);
    *(v3 + qword_400D68) = v2;
    v2 = v5;
  }

  return sub_BA54C(v2);
}

uint64_t sub_BA610()
{
  v0 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v0 == 19)
  {
    sub_30D708();
    return 0;
  }

  else
  {
    v2 = v0;
    v3 = sub_3083D8();
    sub_BA54C(v2);
    return v3;
  }
}

uint64_t sub_BA6D0(void *a1)
{
  v1 = a1;
  v2 = ModernPageViewController.preferredStatusBarStyle.getter();

  return v2;
}

uint64_t ModernPageViewController.preferredStatusBarStyle.getter()
{
  sub_309568();
  sub_304D58();

  if (v5 >> 5 != 2 || ((v5 << 32) & 0x100000000) != 0)
  {
    sub_BA7E8(v2, v3, v4 | (v5 << 32));
  }

  else
  {
    v0 = UIAccessibilityDarkerSystemColorsEnabled();
    sub_BA7E8(v2, v3, v4 | (v5 << 32));
    if (!v0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_BA7E8(void *a1, id a2, unint64_t a3)
{
  if (((a3 >> 37) & 7) > 5)
  {
    if (((a3 >> 37) & 7) == 6)
    {
    }
  }

  else
  {
  }
}

uint64_t ModernPageViewController.representedFlowDestinations.getter()
{
  sub_CBC88();
}

uint64_t ModernPageViewController.representedFlowDestinations.setter(uint64_t a1)
{
  v3 = qword_4290D8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *ModernPageViewController.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_CDAE4(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

void *ModernPageViewController.init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_CBCCC(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

void sub_BAA50(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_BAB08(a1, a2, a3);
  }

  else
  {
    v8 = sub_309F08();
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

void sub_BAB08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_409030);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v9 - 8);
  v49 = v41 - v10;
  v51 = sub_307108();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_301F38();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_308598();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  v20 = qword_400D58;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!v21)
  {
    v29 = sub_309F08();
    (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
    return;
  }

  v45 = v16;
  v46 = v14;
  v47 = v13;
  v22 = *(v21 + 40);
  sub_CA074(v55, v22);
  if ((v24 & 0x100) != 0)
  {
    v30 = sub_309F08();
    (*(*(v30 - 8) + 56))(a3, 1, 1, v30);

    return;
  }

  v25 = v24;
  v41[1] = v23;
  v42 = v22;
  v43 = v8;
  v44 = a3;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_30A1C8();
  if ((v25 & 1) == 0)
  {
    v31 = v52;
    sub_301EC8();
    v28 = v44;
    v32 = v43;
    if (*(v3 + v20))
    {

      sub_95E58(&v56);

      v61[2] = v58;
      v61[3] = v59;
      v61[4] = v60;
      v61[0] = v56;
      v61[1] = v57;
      v33 = v51;
      v34 = v50;
      v35 = v49;
      if (v57)
      {
        (v57)(v31);
      }

      else
      {
        (*(v50 + 56))(v49, 1, 1, v51);
      }

      v36 = v47;
      v37 = v46;
      sub_A0044(v61);
      if ((*(v34 + 48))(v35, 1, v33) != 1)
      {
        v39 = v48;
        (*(v34 + 32))(v48, v35, v33);
        (*(v37 + 16))(v45, v19, v36);
        sub_306FA8();
        (*(v37 + 56))(v32, 0, 1, v36);
        sub_309EE8();

        (*(v34 + 8))(v39, v33);
        goto LABEL_15;
      }
    }

    else
    {
      v35 = v49;
      (*(v50 + 56))(v49, 1, 1, v51);
      v36 = v47;
      v37 = v46;
    }

    v38 = v42;
    sub_EB68(v35, &unk_4004A0);
    (*(v37 + 16))(v45, v19, v36);
    (*(v37 + 56))(v32, 1, 1, v36);
    sub_309EE8();

LABEL_15:
    (*(v53 + 8))(v31, v54);
    (*(v37 + 8))(v19, v36);
    goto LABEL_16;
  }

  v26 = v46;
  v27 = v47;
  (*(v46 + 16))(v45, v19, v47);
  (*(v26 + 56))(v43, 1, 1, v27);
  v28 = v44;
  sub_309EE8();

  (*(v26 + 8))(v19, v27);
LABEL_16:
  v40 = sub_309F08();
  (*(*(v40 - 8) + 56))(v28, 0, 1, v40);
}

void sub_BB298(uint64_t a1)
{
  v2 = sub_307B08();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_CEC14(a1, v4, &type metadata accessor for PageContent);
    sub_BB364(v4);
  }
}

uint64_t sub_BB364(uint64_t a1)
{
  v3 = sub_307B08();
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = qword_400DB0;
  swift_beginAccess();
  sub_CEC14(v1 + v6, v5, &type metadata accessor for PageContent);
  swift_beginAccess();
  sub_CF598(a1, v1 + v6);
  swift_endAccess();
  sub_BC624(v5);
  sub_CEBB4(a1, &type metadata accessor for PageContent);
  return sub_CEBB4(v5, &type metadata accessor for PageContent);
}

void sub_BB470()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_400D88);
    v2 = Strong;

    if (v1)
    {
      sub_3024F8();
    }
  }
}

void sub_BB4F4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_400ED0) = v1;

    sub_BF880();
  }
}

void sub_BB574(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(a1 + 8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v1;
      sub_BB5EC(v5, v2);
    }
  }
}

uint64_t sub_BB5EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v57 = qword_400E20;
  if (*&v2[qword_400E20])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      result = swift_unknownObjectRelease();
      if (v6 == a1)
      {
        return result;
      }
    }
  }

  result = [v3 collectionView];
  if (!result)
  {
    goto LABEL_52;
  }

  v8 = result;
  [result _setVisibleRectEdgeInsets:{-10000.0, 0.0, 0.0, 0.0}];

  v9 = *&v3[qword_400DA8];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v58 = v9;
  v11 = *(v9 + v10);
  v12 = v11[2];
  if (!v12)
  {
LABEL_9:
    v15 = v12;
    goto LABEL_14;
  }

  type metadata accessor for ModernUberScrollCoordinator();
  v13 = 0;
  v14 = 32;
  while (1)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      break;
    }

    ++v13;
    v14 += 16;
    if (v12 == v13)
    {
      goto LABEL_9;
    }
  }

  v15 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v15 != v12)
  {
    v43 = v14 + 16;
    while (v15 < v12)
    {
      v60 = *(v11 + v43);
      result = swift_dynamicCastClass();
      if (!result)
      {
        if (v15 != v13)
        {
          if (v13 >= v12)
          {
            goto LABEL_48;
          }

          v55 = *&v11[2 * v13 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v58 + v10) = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_17EE18(v11);
            *(v58 + v10) = v11;
          }

          *&v11[2 * v13 + 4] = v60;
          result = swift_unknownObjectRelease();
          *(v58 + v10) = v11;
          if (v15 >= v11[2])
          {
            goto LABEL_49;
          }

          *(v11 + v43) = v55;
          result = swift_unknownObjectRelease();
          *(v58 + v10) = v11;
        }

        ++v13;
      }

      ++v15;
      v12 = v11[2];
      v43 += 16;
      if (v15 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = v12;
LABEL_13:
  v12 = v13;
  if (v15 < v13)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_14:
  sub_17FAE0(v12, v15);
  swift_endAccess();
  if (sub_BDC48())
  {
    v17 = v16;
    _UISolariumEnabled();
  }

  else
  {
    v41 = *&v3[qword_400D70];
    v17 = *&v3[qword_400D70 + 8];
    swift_unknownObjectRetain();
    result = _UISolariumEnabled();
    if ((result & 1) == 0 && !v41)
    {
      return result;
    }
  }

  v53 = v17;
  v18 = v3;
  v19 = *&v3[qword_400E80];

  v59 = [v18 navigationItem];
  v54 = [v18 collectionView];
  v52 = v18;
  swift_unknownObjectWeakInit();
  v20 = type metadata accessor for ModernUberScrollCoordinator();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = a1;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active;
  v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth] = 0;
  v26 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_statusBarStyleHandler];
  *v26 = 0;
  v26[1] = 0;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cell + 8] = 0;
  v27 = swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations] = 0;
  *(v27 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v21[v24] = 1;
  v28 = v23;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_pageNavigationItem] = v19;
  *(v22 + 1) = v53;
  swift_unknownObjectWeakAssign();
  v29 = v54;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain();
  [v23 frame];
  *&v21[v25] = v30;
  v31 = *v26;
  *v26 = UINavigationBar.overrideBackButtonStyle.setter;
  v26[1] = 0;
  sub_1EBD0(v31);
  v61.receiver = v21;
  v61.super_class = v20;
  v32 = objc_msgSendSuper2(&v61, "init");
  v33 = v32;
  if (v54)
  {
    v34 = v32;
    v35 = v58;
    if ((_UISolariumEnabled() & 1) != 0 || v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] == 1)
    {
      v36 = swift_unknownObjectWeakLoadStrong();
      v37 = v52;
      if (!v36)
      {
        v38 = &v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = *(v38 + 1);
          ObjectType = swift_getObjectType();
          v36 = (*(v39 + 152))(ObjectType, v39);
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
        }

        v29 = v54;
      }

      sub_14C6EC(v29, v36);

      v34 = v36;
    }

    else
    {

      v37 = v52;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectWeakDestroy();
    v42 = &PlayControlsStackView;
  }

  else
  {
    swift_unknownObjectWeakDestroy();

    swift_unknownObjectRelease();

    v42 = &PlayControlsStackView;
    v35 = v58;
    v37 = v52;
  }

  v45 = *&v37[v57];
  *&v37[v57] = v33;
  v46 = v33;

  v47 = v46;
  sub_17F310(v47, v35);

  result = [v37 *&v42[396]];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v48 = result;
  v49 = [result refreshControl];

  if (v49)
  {
    v50 = [v28 contentView];
    v51 = [v50 overrideUserInterfaceStyle];

    [v49 setOverrideUserInterfaceStyle:v51];
  }

  *&v37[qword_400EC0] = 2;
  sub_BF764();
  return swift_unknownObjectRelease();
}

void sub_BBC54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_BBCD8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL);
  }
}

void sub_BBCD8(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = a3 & 0xFFFFFFFFFFLL;
  v10 = sub_307798();
  v11 = v9;
  v12 = (v5 >> 37) & 7;
  if (((v5 >> 37) & 7) <= 2)
  {
    if (!v12)
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      a1 = 0;
      v17 = 1;
      goto LABEL_23;
    }

    if (v12 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      a1 = 0;
      goto LABEL_23;
    }

    v52 = v9;
    v19 = [objc_allocWithZone(UINavigationBarAppearance) init];
    if ((v8 & 0x100000000) != 0 || UIAccessibilityDarkerSystemColorsEnabled())
    {
      [v19 configureWithDefaultBackground];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315430;
      *(inited + 32) = NSFontAttributeName;
      v22 = sub_124C4(0, &qword_408100);
      v23 = NSFontAttributeName;
      v24 = sub_30CC98();
      *(inited + 64) = v22;
      *(inited + 40) = v24;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      sub_EB68(inited + 32, &unk_3FFD50);
    }

    else
    {
      v34 = v19;
      [v34 configureWithTransparentBackground];
      v35 = [objc_allocWithZone(UIColor) initWithRed:v5 / 255.0 green:BYTE1(v5) / 255.0 blue:BYTE2(v5) / 255.0 alpha:BYTE3(v5) / 255.0];
      [v34 setBackgroundColor:v35];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_315420;
      *(v36 + 32) = NSForegroundColorAttributeName;
      v37 = objc_opt_self();
      v38 = NSForegroundColorAttributeName;
      v39 = [v37 whiteColor];
      v40 = sub_124C4(0, &qword_3FFD48);
      *(v36 + 40) = v39;
      *(v36 + 64) = v40;
      *(v36 + 72) = NSFontAttributeName;
      v41 = sub_124C4(0, &qword_408100);
      v42 = NSFontAttributeName;
      v43 = sub_30CC98();
      *(v36 + 104) = v41;
      *(v36 + 80) = v43;
      sub_2D6CB0(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
      swift_arrayDestroy();
    }

    type metadata accessor for Key(0);
    sub_CEB6C(&qword_3FB410, type metadata accessor for Key);
    isa = sub_30BF88().super.isa;

    [v19 setTitleTextAttributes:isa];

    sub_BEFBC(a1, a2, v8);
    v45 = v19;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    a1 = 0;
    v20 = 2;
    v11 = v52;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else if (((v5 >> 37) & 7) > 4)
  {
    if (v12 != 5)
    {

      v25 = a1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_23;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    a1 = 0;
    v16 = 1;
    v20 = 3;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v12 == 3)
    {
      v13 = [v4 traitCollection];
      if (v5 == 4)
      {
        v14 = v13;
        v15 = [v13 horizontalSizeClass];

        if (v15 == &dword_0 + 1)
        {
          LOBYTE(v5) = 2;
        }

        else
        {
          LOBYTE(v5) = 5;
        }
      }

      else
      {
      }

      sub_BE8F0(0, v5);
      v16 = 0;
      v17 = 0;
      v19 = 0;
      a1 = 0;
      v18 = 1;
LABEL_23:
      v20 = 2;
      if (_UISolariumEnabled())
      {
        goto LABEL_24;
      }

LABEL_28:
      v46 = a1;
      sub_BF4A4(v10, v11, a1);
      v47 = &v4[qword_400EC8];
      v47[16] = 0;
      *v47 = 0;
      *(v47 + 1) = 0;

      goto LABEL_29;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    a1 = 0;
    v16 = 1;
    v20 = 1;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

LABEL_24:
  v26 = v19;
  v27 = a1;
  v28 = v11;
  v29 = qword_400E80;
  v53 = v20;
  v30 = *&v4[qword_400E80];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  sub_120F0();
  v51 = v16;
  *(v30 + 42) = (sub_30D398() & 1) == 0;

  *(*&v4[v29] + 44) = v18;

  sub_CF698();

  v31 = *&v4[v29];
  *(v31 + 24) = v10;
  *(v31 + 32) = v28;
  a1 = v27;
  v19 = v26;

  v20 = v53;

  sub_CF698();

  *(*&v4[v29] + 40) = v17;

  sub_CF698();

  *(*&v4[v29] + 41) = v51;

  sub_CF698();

  v32 = &v4[qword_400EC8];
  v32[16] = 0;
  *v32 = 0;
  *(v32 + 1) = 0;

  v33 = v4[qword_400EF0];
  v4[qword_400EF0] = 1;
  if (v33 != v4[qword_400EF0])
  {
    [v4 isViewLoaded];
  }

LABEL_29:
  *&v4[qword_400EC0] = v20;
  sub_BF764();
  if (v19)
  {
    v48 = v19;
    v49 = [v4 navigationItem];
    [v49 setStandardAppearance:v48];

    v50 = [v4 navigationItem];
    [v50 setScrollEdgeAppearance:v48];
  }

  [v4 setNeedsStatusBarAppearanceUpdate];
}

void sub_BC3D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isViewLoaded])
    {
      v2 = [v1 collectionView];
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = v2;
      [v2 reloadData];

      v1 = v3;
    }
  }
}

void sub_BC470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_EB00(a1, v4, &unk_4067B0);
    sub_BA098(v4);
  }
}

void sub_BC540(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong contentScrollView];
    [v4 scrollToTopAnimated:v1];
  }
}

uint64_t sub_BC624(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_307B08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_306EE8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20);
  *v14 = sub_30C8F8();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_306F18();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = qword_400DB0;
    swift_beginAccess();
    sub_CEC14(v2 + v17, v10, &type metadata accessor for PageContent);
    sub_BC900(v10);
    sub_CEBB4(v10, &type metadata accessor for PageContent);
    sub_CEC14(v2 + v17, v10, &type metadata accessor for PageContent);
    sub_CEC14(a1, v6, &type metadata accessor for PageContent);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_BCC0C(v10, v6);
    sub_EB68(v6, &qword_400D80);
    return sub_CEBB4(v10, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BC900(uint64_t a1)
{
  v2 = sub_307788();
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30A078();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_307B08();
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CEC14(a1, v11, &type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_CF1E4(v11, v4, &type metadata accessor for ModernPage);
    v16 = sub_CEB6C(&qword_401080, &type metadata accessor for ModernPage);
    v17 = sub_CEB6C(&qword_401088, &type metadata accessor for ModernPage);
    sub_C84D8(v4, v2, v16, v17);
    v18 = &type metadata accessor for ModernPage;
    v19 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v6 + 32))(v8, v11, v5);
      v13 = sub_CEB6C(&qword_401090, &type metadata accessor for ContentUnavailablePage);
      v14 = sub_CEB6C(&unk_409010, &type metadata accessor for ContentUnavailablePage);
      sub_C84D8(v8, v5, v13, v14);
      return (*(v6 + 8))(v8, v5);
    }

    v18 = &type metadata accessor for PageContent;
    v19 = v11;
  }

  return sub_CEBB4(v19, v18);
}

id sub_BCC0C(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v110 = swift_isaMask & *v2;
  v116 = sub_30BB28();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = &v91 - v6;
  __chkstk_darwin(v7);
  v9 = &v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80);
  __chkstk_darwin(v10 - 8);
  v109 = &v91 - v11;
  v102 = sub_307788();
  __chkstk_darwin(v102);
  v108 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_304338();
  __chkstk_darwin(v13 - 8);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_30A078();
  v106 = *(v16 - 8);
  v107 = v16;
  __chkstk_darwin(v16);
  v103 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v91 - v19;
  v100 = sub_306E68();
  __chkstk_darwin(v100);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_3042E8();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v91 - v23;
  v25 = sub_307B08();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  sub_CDEB8(0);
  result = [v2 isViewLoaded];
  if (result)
  {
    v93 = v15;
    v94 = v9;
    v33 = *(v2 + qword_400D88);
    v96 = v2;
    v104 = v25;
    v34 = *(v2 + qword_400E30);
    sub_CEC14(a1, v31, &type metadata accessor for PageContent);
    v92 = v26;
    v35 = a1;
    v36 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v95 = v33;
    *(v38 + 16) = v33;
    v39 = v38 + v36;
    v40 = v35;
    sub_CF1E4(v31, v39, &type metadata accessor for PageContent);
    v112 = v38;
    *(v38 + v37) = v34;
    sub_CEC14(v35, v28, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v49 = v115;
      if (EnumCaseMultiPayload == 2)
      {
        v52 = v105;
        v51 = v106;
        v53 = v107;
        (*(v106 + 32))(v105, v28, v107);
        v43 = v96;
        v54 = *&v96[qword_400D90];
        v55 = v103;
        (*(v51 + 16))(v103, v52, v53);
        *(&v118 + 1) = sub_304A38();
        v119 = &protocol witness table for UIContentUnavailableConfiguration;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&aBlock);

        UIContentUnavailableConfiguration.init(asPartOf:for:)(v54, v55, boxed_opaque_existential_0Tm);
        sub_30C8A8();
        sub_CDF68(0);
        v57 = qword_400D58;
        swift_beginAccess();
        v50 = v116;
        if (*&v43[v57])
        {
          swift_endAccess();
          v58 = v112;

          sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v58);

          (*(v51 + 8))(v52, v53);
        }

        else
        {
          (*(v51 + 8))(v52, v53);
          swift_endAccess();
        }
      }

      else
      {
        v63 = v108;
        sub_CF1E4(v28, v108, &type metadata accessor for ModernPage);
        v119 = 0;
        aBlock = 0u;
        v118 = 0u;

        v43 = v96;
        sub_30C8A8();
        sub_CDF68(0);
        v64 = sub_309618();
        v50 = v116;
        if (v64)
        {
          v65 = v111;
          v66 = sub_307AD8();
        }

        else
        {
          v66 = 0;
          v65 = v111;
        }

        v73 = v92;
        v74 = qword_400D58;
        swift_beginAccess();
        if (*&v43[v74])
        {
          v75 = *(v63 + *(v102 + 24));
          v76 = v43;
          v77 = v112;

          v78 = v75;
          v65 = v111;
          sub_997C4(v78, v66 & 1, sub_CF154, v77);

          v43 = v76;
        }

        v79 = v109;
        sub_EB00(v65, v109, &qword_400D80);
        if ((*(v73 + 48))(v79, 1, v104) == 1)
        {
          sub_CEBB4(v63, &type metadata accessor for ModernPage);
          sub_EB68(v79, &qword_400D80);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            sub_CEBB4(v63, &type metadata accessor for ModernPage);
            v80 = &type metadata accessor for PageContent;
            v81 = v79;
          }

          else
          {
            UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
            v80 = &type metadata accessor for ModernPage;
            v81 = v63;
          }

          sub_CEBB4(v81, v80);
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v119 = 0;
      aBlock = 0u;
      v118 = 0u;

      v43 = v96;
      sub_30C8A8();
      swift_errorRetain();
      sub_304328();
      v59 = objc_allocWithZone(sub_304358());

      v60 = sub_304348();
      sub_CDF68(v60);

      v61 = qword_400D58;
      swift_beginAccess();
      v50 = v116;
      if (*&v43[v61])
      {
        v62 = v112;

        sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v62);
      }

      else
      {
      }

      v49 = v115;
    }

    else
    {
      v42 = *v28;
      v43 = v96;
      if (v42)
      {
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = swift_allocObject();
        v46 = v110;
        v45[2] = *(v110 + 80);
        v45[3] = *(v46 + 88);
        v45[4] = v44;
        v47 = v112;
        v45[5] = sub_CF154;
        v45[6] = v47;
        v119 = sub_CF28C;
        v120 = v45;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v118 = sub_914CC;
        *(&v118 + 1) = &block_descriptor_93;
        _Block_copy(&aBlock);
        v121 = _swiftEmptyArrayStorage;
        sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
        sub_EC8C(&qword_40D770, &qword_408860);
        sub_30D488();
        sub_306ED8();
        swift_allocObject();
        v48 = sub_306EB8();

        sub_CDEB8(v48);

        v49 = v115;
        v50 = v116;
      }

      else
      {
        v119 = 0;
        aBlock = 0u;
        v118 = 0u;
        v67 = v95;

        sub_30C8A8();
        sub_3042D8();
        v68 = v98;
        v69 = v99;
        (*(v98 + 16))(v97, v24, v99);
        if (v67)
        {
          sub_302518();
        }

        sub_304318();
        v70 = sub_3042F8();
        (*(v68 + 8))(v24, v69);
        sub_CDF68(v70);

        v71 = qword_400D58;
        swift_beginAccess();
        v49 = v115;
        v50 = v116;
        if (*&v43[v71])
        {

          v72 = v112;

          sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v72);
        }
      }
    }

    result = [v43 collectionView];
    if (result)
    {
      v82 = result;
      sub_BA610();
      aBlock = 0u;
      v118 = 0u;
      v83 = v113;
      sub_30BAD8();

      sub_EB68(&aBlock, &unk_3FBB70);
      v84 = sub_307AE8();
      *(&v118 + 1) = &type metadata for String;
      *&aBlock = v84;
      *(&aBlock + 1) = v85;
      sub_30BB08();
      v116 = v40;
      v86 = v49;
      v87 = *(v114 + 8);
      v87(v83, v50);
      sub_EB68(&aBlock, &unk_3FBB70);
      result = [v43 collectionView];
      if (result)
      {
        v88 = result;
        v89 = [result numberOfSections];

        *(&v118 + 1) = &type metadata for Int;
        *&aBlock = v89;
        v90 = v94;
        sub_30BB08();
        v87(v86, v50);
        sub_EB68(&aBlock, &unk_3FBB70);
        sub_30CED8();

        v87(v90, v50);
        sub_BE3E8(v116);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_BDB84()
{
  v3 = *&v0[qword_4290E0];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];

    sub_302758();
  }

  else
  {
    __break(1u);
  }
}

id sub_BDC48()
{
  v1 = sub_303098();
  v2 = [v0 navigationController];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      v4 = [v2 navigationBar];

      return v4;
    }
  }

  else if (v2)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = v7;
      v10 = v3;
      v11 = v8(ObjectType, v9);

      return v11;
    }
  }

  return 0;
}

Swift::Void __swiftcall ModernPageViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willMoveToParentViewController:", isa);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = &protocol witness table for UINavigationBar;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = &v1[qword_400D70];
  *v7 = v5;
  *(v7 + 1) = v6;
  swift_unknownObjectRelease();
}

void sub_BDE04(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  ModernPageViewController.willMove(toParent:)(v9);
}

void sub_BDE70()
{
  v1 = sub_306E58();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_306EA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  if (*(v0 + qword_400EB0))
  {

    sub_306E98();
    *v4 = 500;
    (*(v2 + 104))(v4, enum case for DispatchTimeInterval.milliseconds(_:), v1);
    sub_306EF8();
    (*(v2 + 8))(v4, v1);
    v12 = *(v6 + 8);
    v12(v8, v5);
    sub_124C4(0, &qword_3FBF20);
    v13 = sub_30C8F8();
    sub_30C8D8();

    v12(v11, v5);
  }
}

uint64_t sub_BE0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_307B08();
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v11 - v6;
  if (a1)
  {
    sub_CEC14(a2, &v11 - v6, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = &type metadata accessor for PageContent;
    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401040);
      sub_3024A8();
      v9 = &type metadata accessor for ModernPage;
    }

    sub_CEBB4(v7, v9);
  }

  return sub_3098B8();
}

void sub_BE1B8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = sub_3042E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = Strong;
    sub_30C8A8();

    sub_3042D8();
    v14 = *&v13[qword_400D88];
    (*(v6 + 16))(v8, v11, v5);
    if (v14)
    {

      sub_302518();
    }

    sub_304318();
    v15 = sub_3042F8();

    (*(v6 + 8))(v11, v5);
    sub_CDF68(v15);

    v16 = qword_400D58;
    swift_beginAccess();
    if (*&v13[v16])
    {

      sub_997C4(_swiftEmptyArrayStorage, 1, a2, a3);
    }

    else
    {
    }
  }
}

uint64_t sub_BE3E8(uint64_t a1)
{
  v3 = sub_30BE68();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v9 = sub_30A078();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = sub_307B08();
  __chkstk_darwin(v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  sub_CEC14(a1, &v50 - v19, &type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v51 = v1;
    sub_CEC14(v20, v17, &type metadata accessor for PageContent);
    (*(v10 + 16))(v14, v17, v9);
    sub_30A048();
    v21 = sub_3034F8();
    v23 = v22;
    v24 = sub_303328();
    v52 = v9;
    v26 = v25;
    v56 = v21;
    v57 = v23;
    v58._countAndFlagsBits = 95;
    v58._object = 0xE100000000000000;
    sub_30C238(v58);
    v59._countAndFlagsBits = v24;
    v59._object = v26;
    sub_30C238(v59);

    sub_30BE48();
    LOBYTE(v26) = sub_30BE38();
    v27 = v55;
    v28 = *(v54 + 8);
    v28(v5, v55);
    v28(v8, v27);
    if (v26)
    {
      v29 = v52;
      v30 = [v51 collectionView];
      if (v30)
      {
        v31 = v30;
        [v30 setScrollEnabled:0];
      }

      v32 = *(v10 + 8);
      v32(v14, v29);
      v32(v17, v29);
      return sub_CEBB4(v20, &type metadata accessor for PageContent);
    }

    v33 = *(v10 + 8);
    v34 = v52;
    v54 = v10 + 8;
    v50 = v33;
    v33(v14, v52);
    v35 = v53;
    (*(v10 + 32))(v53, v17, v34);
    sub_30A048();
    v36 = sub_3034F8();
    v38 = v37;
    v39 = sub_303338();
    v41 = v40;
    v56 = v36;
    v57 = v38;
    v60._countAndFlagsBits = 95;
    v60._object = 0xE100000000000000;
    sub_30C238(v60);
    v61._countAndFlagsBits = v39;
    v61._object = v41;
    sub_30C238(v61);

    sub_30BE48();
    LOBYTE(v36) = sub_30BE38();
    v42 = v55;
    v28(v5, v55);
    v28(v8, v42);
    if (v36)
    {
      v43 = v50;
      v44 = v52;
      v45 = [v51 collectionView];
      if (v45)
      {
        v46 = v45;
        [v45 setScrollEnabled:0];
      }

      v43(v35, v44);
      return sub_CEBB4(v20, &type metadata accessor for PageContent);
    }

    v50(v35, v52);
    v1 = v51;
  }

  v47 = [v1 collectionView];
  if (v47)
  {
    v48 = v47;
    [v47 setScrollEnabled:1];
  }

  return sub_CEBB4(v20, &type metadata accessor for PageContent);
}

id sub_BE8F0(char a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for UberScrollConfiguration();
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (result)
  {
    if (*&v2[qword_400E20])
    {
      return result;
    }

    if (_UISolariumEnabled())
    {
      goto LABEL_4;
    }

    if (a2 <= 7u)
    {
      if (((1 << a2) & 0xC) != 0)
      {
LABEL_4:
        if (qword_3FAB60 != -1)
        {
          swift_once();
        }

        v10 = qword_4293A8;
LABEL_7:
        __swift_project_value_buffer(v6, v10);
LABEL_17:
      }

      if (((1 << a2) & 0x30) != 0)
      {
        if (qword_3FAB68 != -1)
        {
          swift_once();
        }

        v10 = qword_4293C0;
        goto LABEL_7;
      }

      if (((1 << a2) & 0xC0) != 0)
      {
        if (qword_3FAB70 != -1)
        {
          swift_once();
        }

        v10 = qword_4293D8;
        goto LABEL_7;
      }
    }

    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v10 = qword_429390;
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  result = sub_BDC48();
  if (!result)
  {
    return result;
  }

  v12 = v11;
  v13 = [v2 navigationItem];

  if (a1)
  {
    [v13 _setManualScrollEdgeAppearanceEnabled:0];
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(ObjectType, v12, 1.0);
    (*(v12 + 40))(ObjectType, v12, 1.0);
    v15 = [v13 titleView];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for UberNavigationTitleView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        [v17 setHideStandardTitle:0];
      }
    }

    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v18 = qword_40DB80;
    v19 = *(v12 + 64);
    v20 = qword_40DB80;
    v19(v18, ObjectType, v12);
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  [v13 _setManualScrollEdgeAppearanceEnabled:1];
  v21 = objc_allocWithZone(type metadata accessor for UberNavigationTitleView());

  sub_154000(v22);
  v24 = v23;
  [v13 setTitleView:v23];
  if (_UISolariumEnabled())
  {
    goto LABEL_21;
  }

  if (a2 > 7u)
  {
LABEL_60:
    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v25 = qword_429390;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (((1 << a2) & 0xC) == 0)
  {
    if (((1 << a2) & 0x30) != 0)
    {
      if (qword_3FAB68 != -1)
      {
        swift_once();
      }

      v25 = qword_4293C0;
      goto LABEL_24;
    }

    if (((1 << a2) & 0xC0) != 0)
    {
      if (qword_3FAB70 != -1)
      {
        swift_once();
      }

      v25 = qword_4293D8;
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_21:
  if (qword_3FAB60 != -1)
  {
    swift_once();
  }

  v25 = qword_4293A8;
LABEL_24:
  v26 = __swift_project_value_buffer(v6, v25);
  sub_CEC14(v26, v8, type metadata accessor for UberScrollConfiguration);
  v27 = v8[80];
  sub_CEBB4(v8, type metadata accessor for UberScrollConfiguration);
  if (v27 == 1)
  {
    v28 = swift_getObjectType();
    (*(v12 + 40))(v28, v12, 0.0);
  }

  v29 = 1.0;
  v30 = 0.0;
  v31 = 0.0;
  if (((1 << a2) & 0xD7) == 0)
  {
    v32 = [v24 traitCollection];
    v33 = sub_30C9D8();

    if (v33)
    {
      v30 = 20.0;
    }

    else
    {
      v30 = -20.0;
    }

    v31 = 1.0;
    v29 = 0.0;
  }

  swift_unknownObjectWeakInit();
  sub_154994(v31, v29, v30);

  swift_unknownObjectWeakDestroy();

  v34 = *&v3[qword_400E20];
  if (v34)
  {
    v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 1;
    v35 = v34;
    result = [v3 collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v36 = result;

    v37 = [v3 navigationItem];
    sub_14C6EC(v36, v37);
  }

  return swift_unknownObjectRelease();
}

void sub_BEFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xE000000000) != 0x4000000000)
  {
    return;
  }

  v4 = a3 & 0xFFFFFFFFFFLL;
  if ((a3 & 0x100000000) != 0)
  {
    v45 = 0;
    if (_UISolariumEnabled())
    {
LABEL_46:

      return;
    }
  }

  else
  {
    v45 = [objc_opt_self() whiteColor];
    if (_UISolariumEnabled())
    {
      goto LABEL_46;
    }
  }

  if ((v4 & 0x100000000) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v44 = v5;
  v6 = [v3 navigationItem];
  v7 = [v6 leftBarButtonItems];

  if (v7)
  {
    sub_124C4(0, &unk_409000);
    v8 = sub_30C368();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = [v3 navigationItem];
  v10 = [v9 rightBarButtonItems];

  if (v10)
  {
    sub_124C4(0, &unk_409000);
    v11 = sub_30C368();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_14A38C(v11);
  if (v8 >> 62)
  {
LABEL_39:
    v12 = sub_30D668();
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_40:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_18:
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = v14;
    v16 = v13;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = sub_30D578();
      }

      else
      {
        if (v16 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(v8 + 8 * v16 + 32);
      }

      v18 = v17;
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = [v17 customView];

      if (v19)
      {
        break;
      }

LABEL_21:
      ++v16;
      if (v13 == v12)
      {
        v14 = v15;
        goto LABEL_41;
      }
    }

    swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (!v20)
    {

      goto LABEL_21;
    }

    v21 = v20;
    v22 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_CA6B4(0, v15[2] + 1, 1, v15, &qword_401008, &unk_31E900, &qword_401010);
    }

    v25 = v22[2];
    v24 = v22[3];
    v26 = v22;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_CA6B4((v24 > 1), v25 + 1, 1, v22, &qword_401008, &unk_31E900, &qword_401010);
    }

    v26[2] = v25 + 1;
    v14 = v26;
    v27 = &v26[2 * v25];
    v27[4] = v19;
    v27[5] = v21;
  }

  while (v13 != v12);
LABEL_41:

  v28 = v14[2];
  if (!v28)
  {
LABEL_45:

    v38 = [v43 navigationItem];
    v39 = *&v43[qword_400D90];
    v40 = objc_allocWithZone(type metadata accessor for CustomBackButtonNavigationBarTitleView());

    v41 = v45;
    sub_B53C8(v39, v45);
    v45 = v42;
    [v38 setTitleView:v42];

    goto LABEL_46;
  }

  v29 = 0;
  v30 = v14 + 5;
  while (v29 < v14[2])
  {
    ++v29;
    v31 = *(v30 - 1);
    v32 = *v30;
    v33 = v14;
    ObjectType = swift_getObjectType();
    v35 = *(v32 + 24);
    v36 = v31;
    v35(v44, ObjectType, v32);
    v37 = [objc_opt_self() effectWithStyle:16];
    v14 = v33;
    (*(v32 + 8))();

    [v36 setTintColor:v45];
    v30 += 2;
    if (v28 == v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
}

void sub_BF4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_400EB8);
  v5 = *(v3 + qword_400EB8 + 16);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;

  sub_BF4F4();
}

void sub_BF4F4()
{
  if (sub_303098())
  {
    v1 = [v0 navigationItem];
    if (*&v0[qword_400EB8 + 8])
    {

      v2 = sub_30C098();
    }

    else
    {
      v2 = 0;
    }

    [v1 setTitle:v2];
  }

  else
  {
    if (*&v0[qword_400EB8 + 8])
    {

      v2 = sub_30C098();
    }

    else
    {
      v2 = 0;
    }

    [v0 setTitle:v2];
  }

  sub_BF600();
}

void sub_BF600()
{
  if ((sub_303098() & 1) == 0 && *(v0 + qword_400DF8) == 1)
  {
    if (sub_BDC48())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      v4 = *(v0 + qword_400EB8);
      v5 = *(v0 + qword_400EB8 + 8);
      v6 = *(v0 + qword_400EB8 + 16);
      v7 = *(v2 + 88);
      v8 = v6;

      v7(v4, v5, v6, ObjectType, v2);
      swift_unknownObjectRelease();
    }

    if (sub_BDC48())
    {
      v10 = v9;
      v11 = swift_getObjectType();

      v13 = sub_C01F8(v12);

      (*(v10 + 112))(v13, v11, v10);
      swift_unknownObjectRelease();
    }

    sub_C1548();
  }
}

void sub_BF764()
{
  v1 = _UISolariumEnabled();
  v2 = qword_400EC0;
  v3 = *&v0[qword_400EC0];
  if ((v1 & 1) == 0 && v3 == 3)
  {
    v4 = [v0 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == &dword_0 + 1)
    {
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 1;
    }
  }

  v6 = [v0 navigationItem];
  v7 = [v6 largeTitleDisplayMode];

  v8 = [v0 navigationItem];
  [v8 setLargeTitleDisplayMode:v3];

  if (v7 != v3 && (_UISolariumEnabled() & 1) == 0)
  {

    sub_BF880();
  }
}

void sub_BF880()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v6 = sub_308BD8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  if (!_UISolariumEnabled() || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    if (v20 == &dword_0 + 3)
    {
      v21 = *&v1[qword_400ED0];
      if (v21)
      {
        v50 = qword_400ED0;
        v51 = v2;
        v22 = *(v21 + 16);

        if (v22)
        {
          v23 = 0;
          while (v23 < *(v21 + 16))
          {
            sub_CEC14(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v9, &type metadata accessor for HeaderButtonItem);
            if (sub_308BC8())
            {

              sub_CF1E4(v9, v5, &type metadata accessor for HeaderButtonItem);
              (*(v7 + 56))(v5, 0, 1, v6);
              sub_EB68(v5, &qword_401058);
              v44 = [v1 traitCollection];
              v45 = sub_30C968();

              if (v45)
              {
                goto LABEL_18;
              }

              v46 = [v1 navigationItem];
              [v46 setRightBarButtonItems:0];

              v47 = *&v1[v50];
              if (v47 && *(v47 + 16))
              {
                v48 = *&v1[qword_400D90];
                objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

                v24 = sub_268170(v47, v48);
                v26.super.isa = [v1 navigationItem];
                [(objc_class *)v26.super.isa _setLargeTitleAccessoryView:v24 alignToBaseline:v24[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
                goto LABEL_19;
              }

              goto LABEL_20;
            }

            ++v23;
            sub_CEBB4(v9, &type metadata accessor for HeaderButtonItem);
            if (v22 == v23)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_36;
        }

LABEL_16:
      }

      (*(v7 + 56))(v5, 1, 1, v6);
      sub_EB68(v5, &qword_401058);
    }

LABEL_18:
    v24 = [v1 navigationItem];

    sub_C01F8(v25);

    sub_124C4(0, &unk_409000);
    v26.super.isa = sub_30C358().super.isa;

    [v24 setRightBarButtonItems:v26.super.isa];
LABEL_19:

LABEL_20:
    v27 = [v1 navigationItem];
    v28 = [v1 navigationController];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 navigationBar];

      v31 = [v30 _backdropViewLayerGroupName];
      if (v31)
      {
        v32 = sub_30C0D8();
        v34 = v33;

        v28 = v32;
        goto LABEL_25;
      }

      v28 = 0;
    }

    v34 = 0;
LABEL_25:
    sub_B42D4(v28, v34);

    if (_UISolariumEnabled())
    {
      return;
    }

    goto LABEL_26;
  }

  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    while (1)
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
LABEL_8:

        goto LABEL_29;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      sub_CEC14(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15++, v12, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_CEBB4(v12, &type metadata accessor for HeaderButtonItem);
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v16 = 0;
LABEL_29:
  v1[qword_400ED8] = v16;
  sub_C1680();
  v38 = [v1 navigationItem];

  sub_C0708(v39);

  sub_124C4(0, &unk_4019D0);
  isa = sub_30C358().super.isa;

  [v38 setTrailingItemGroups:isa];

  sub_C13EC();
  v41 = [v1 navigationItem];

  v43 = sub_C0C24(v42);

  [v41 setAdditionalOverflowItems:v43];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_C1548();
    sub_309568();
    sub_304D58();

    v35 = v52;
    v36 = v53;
    v37 = v54 | (v55 << 32);
    sub_BEFBC(v52, v53, v37);
    sub_BA7E8(v35, v36, v37);
  }
}

id sub_BFFE0()
{
  v1 = v0;
  v2 = sub_302B48();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  [result safeAreaInsets];
  v10 = v9;
  v12 = v11;

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  CGRectGetWidth(v30);
  sub_302B08();
  sub_302B28();
  v23 = v22;
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result effectiveUserInterfaceLayoutDirection];

  if (v25 == &dword_0 + 1)
  {
    v26 = v12;
  }

  else
  {
    v26 = v10;
  }

  v27 = v23 + v26;
  v28 = [v1 navigationItem];
  [v28 _setTitleMinimumMargins:{0.0, v27, 0.0, 0.0}];

  return (*(v3 + 8))(v6, v2);
}

void *sub_C01F8(uint64_t a1)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(a1 + 16);
  v27 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = _swiftEmptyArrayStorage;
    v4 = v2;
    do
    {
      --v4;
      while (1)
      {
        if (v4 >= v2)
        {
          __break(1u);
          goto LABEL_15;
        }

        sub_308BD8();
        sub_C0658(v1, &v26);
        if (v26)
        {
          break;
        }

        if (--v4 == -1)
        {
          goto LABEL_16;
        }
      }

      sub_30C348();
      if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
      v3 = v27;
    }

    while (v4);
  }

  else
  {
LABEL_15:
    v3 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v27 = _swiftEmptyArrayStorage;
    if (v3 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      --v2;
      v25 = i;
      v24 = v2;
      while (v7)
      {
        v10 = sub_30D578();
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_33;
        }

LABEL_25:
        v12 = v10;
        sub_30C348();
        if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        if (v6 >= v2)
        {
          v9 = v27;
        }

        else
        {
          v13 = [objc_allocWithZone(UIView) init];
          [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
          v14 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_317F20;
          v16 = [v13 widthAnchor];
          v17 = [v16 constraintEqualToConstant:0.0];

          *(v15 + 32) = v17;
          v18 = [v13 heightAnchor];
          v19 = [v18 constraintEqualToConstant:1.0];

          *(v15 + 40) = v19;
          sub_124C4(0, &qword_403000);
          isa = sub_30C358().super.isa;

          [v14 activateConstraints:isa];

          v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v13];
          v22 = v21;
          sub_30C348();
          if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_30C378();
          }

          sub_30C3C8();

          v9 = v27;
          v7 = v3 & 0xC000000000000001;
          v2 = v24;
          v8 = v3 & 0xFFFFFFFFFFFFFF8;
          i = v25;
        }

        ++v6;
        if (v11 == i)
        {
          goto LABEL_37;
        }
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_34;
      }

      v10 = *(v3 + 8 * v6 + 32);
      v11 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_37:

    return v9;
  }

  return v3;
}

uint64_t sub_C0658@<X0>(char *a1@<X1>, Class *a2@<X8>)
{
  v4 = *&a1[qword_400D90];

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = sub_B1360(v4, a1, v6);

  *a2 = v7;
  return result;
}

void *sub_C0708(uint64_t a1)
{
  v2 = v1;
  v4 = sub_308BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v50 = _swiftEmptyArrayStorage;
  v9 = objc_allocWithZone(UIBarButtonItemGroup);
  v10 = sub_124C4(0, &unk_409000);
  isa = sub_30C358().super.isa;
  v12 = [v9 initWithBarButtonItems:isa representativeItem:0];

  v13 = *(a1 + 16);
  if (!v13)
  {

    return _swiftEmptyArrayStorage;
  }

  v45 = v12;
  v14 = 0;
  v47 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v48 = _swiftEmptyArrayStorage;
  v46 = *(v5 + 72);
  v15 = &selRef_registerImage_withTraitCollection_;
  v16 = &PlayControlsStackView;
  v42 = v13;
  v43 = v10;
  v17 = qword_400D90;
  v44 = qword_400D90;
  while (1)
  {
    sub_CEC14(v47 + v46 * v14, v7, &type metadata accessor for HeaderButtonItem);
    v19 = *&v2[v17];

    v20 = [v2 v15[241]];
    v21 = [v20 *&v16[328]];

    v22 = sub_B2C78(v19, v2, v21);

    if (!v22)
    {
      break;
    }

    v18 = v22;
    sub_30C348();
    if (*(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v50 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
      v17 = v44;
    }

    sub_30C3C8();

    sub_CEBB4(v7, &type metadata accessor for HeaderButtonItem);
    v48 = v50;
LABEL_7:
    v15 = &selRef_registerImage_withTraitCollection_;
LABEL_8:
    v16 = &PlayControlsStackView;
    if (++v14 == v13)
    {

      return v48;
    }
  }

  v23 = *&v2[v17];

  v24 = [v2 v15[241]];
  v25 = [v24 *&v16[328]];

  v26 = sub_B1360(v23, v2, v25);

  if (!v26)
  {
    sub_CEBB4(v7, &type metadata accessor for HeaderButtonItem);
    goto LABEL_8;
  }

  v27 = v48;
  if (!(v48 >> 62))
  {
    v28 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
    v29 = v45;
    if (v28)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  result = sub_30D668();
  v27 = v48;
  v28 = result;
  v29 = v45;
  if (!result)
  {
LABEL_26:
    v35 = v29;
    sub_30C348();
    if (*(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v50 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v48 = v50;
LABEL_29:
    v13 = v42;
    v36 = v26;
    v37 = v45;
    v38 = [v45 barButtonItems];
    v39 = sub_30C368();

    v49 = v39;
    sub_30C348();
    v17 = v44;
    if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
      v17 = v44;
    }

    sub_30C3C8();
    v40 = sub_30C358().super.isa;

    [v37 setBarButtonItems:v40];

    sub_CEBB4(v7, &type metadata accessor for HeaderButtonItem);
    goto LABEL_7;
  }

LABEL_13:
  v30 = 0;
  v31 = v27 & 0xC000000000000001;
  v32 = v27 & 0xFFFFFFFFFFFFFF8;
  v33 = v27 + 32;
  while (1)
  {
    while (v31)
    {
      result = sub_30D578();
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_37;
      }

      v41 = result;
      result = swift_unknownObjectRelease();
      if (v41 == v29)
      {
        goto LABEL_29;
      }

      if (v30 == v28)
      {
        goto LABEL_26;
      }
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v30 >= *(v32 + 16))
    {
      goto LABEL_36;
    }

    if (*(v33 + 8 * v30) == v29)
    {
      goto LABEL_29;
    }

    if (++v30 == v28)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

id sub_C0C24(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_308BD8();
  __chkstk_darwin(v4);
  v6 = &aBlock[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&aBlock[-2] - v9);
  if (a1)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v13 = *(v8 + 72);
      while (1)
      {
        sub_CEC14(v12, v6, &type metadata accessor for HeaderButtonItem);
        if (sub_308B98())
        {
          break;
        }

        sub_CEBB4(v6, &type metadata accessor for HeaderButtonItem);
        v12 += v13;
        if (!--v11)
        {
          return 0;
        }
      }

      sub_CF1E4(v6, v10, &type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_12658(v10, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);

        sub_30B8E8();

        __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
        v26 = v34;
        v14 = v34;
        v15 = __swift_project_boxed_opaque_existential_1Tm(v33, v34);
        v28 = v26;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
        (*(*(v14 - 8) + 16))(boxed_opaque_existential_0Tm, v15, v14);

        v17 = sub_30A8C8();

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        if (v17)
        {
          v18 = objc_opt_self();
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_12670(v32, v31);
          sub_12670(v33, v30);
          v20 = swift_allocObject();
          v20[2] = *(v3 + 80);
          v20[3] = *(v3 + 88);
          v20[4] = v19;
          sub_12658(v31, (v20 + 5));
          sub_12658(v30, (v20 + 10));
          *(&v28 + 1) = sub_CEB20;
          v29 = v20;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1FA234;
          *&v28 = &block_descriptor_39;
          v21 = _Block_copy(aBlock);

          v22 = [v18 elementWithUncachedProvider:v21];
          _Block_release(v21);
          v23 = v22;
          v24 = sub_30C098();
          [v23 setAccessibilityIdentifier:v24];

          __swift_destroy_boxed_opaque_existential_1(v32);
          __swift_destroy_boxed_opaque_existential_1(v33);
          return v23;
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_CEBB4(v10, &type metadata accessor for HeaderButtonItem);
      }
    }
  }

  return 0;
}

id sub_C10AC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33 = a2;
  v8 = sub_302268();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v11 - 8);
  v13 = v28 - v12;
  v14 = sub_3022E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = a4[3];
    v28[2] = a4[4];
    v29 = a1;
    v28[1] = __swift_project_boxed_opaque_existential_1Tm(a4, v20);
    v30 = *(a5 + 24);
    v21 = v30;
    v22 = __swift_project_boxed_opaque_existential_1Tm(a5, v30);
    v35 = v30;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);
    v24 = sub_3022D8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

    v25 = v19;
    sub_3022A8();
    result = [v25 view];
    if (result)
    {
      v26 = result;
      sub_30CE78();

      v27 = sub_30A878();

      (*(v31 + 8))(v10, v32);
      (*(v15 + 8))(v17, v14);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v29(v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_C13EC()
{
  v1 = [v0 navigationItem];
  v2 = [v1 trailingItemGroups];

  sub_124C4(0, &unk_4019D0);
  v3 = sub_30C368();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = v6;
      sub_C1980(&v10, v0);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_C1548()
{
  v1 = v0;
  sub_309568();
  sub_304D58();

  sub_BA7E8(v7, v8, v9 | (v10 << 32));
  if (v10 >> 5 == 3)
  {
    v2 = *&v0[qword_400E20];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 collectionView];
      if (v4)
      {
        v5 = v4;

        v6 = [v1 navigationItem];
        sub_14C6EC(v5, v6);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_C1680()
{
  sub_C16D4();
  v1 = *(v0 + qword_400EE0);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = *(v0 + qword_400ED8);
  }

  return sub_C13EC();
}

void sub_C16D4()
{
  if (*(v0 + qword_400ED8) == 1)
  {
    v1 = qword_400EE0;
    if (!*(v0 + qword_400EE0))
    {
      v2 = swift_isaMask & *v0;
      v3 = [objc_allocWithZone(type metadata accessor for ConfigurableScrollCoordinator()) init];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      *(v5 + 2) = *(v2 + 80);
      *(v5 + 3) = *(v2 + 88);
      *(v5 + 4) = v4;
      v6 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
      v7 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
      *v6 = sub_CEB34;
      v6[1] = v5;

      sub_1EBD0(v7);

      v8 = *(v0 + qword_400DA8);
      v10 = v3;
      sub_17F304(v10, v8);
      v9 = *(v0 + v1);
      *(v0 + v1) = v10;

      sub_C18BC();
    }
  }
}

void sub_C1868()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_C18BC();
  }
}

void sub_C18BC()
{
  v4 = v0[qword_400ED8] == 1 && (v1 = [v0 navigationItem], objc_msgSend(v1, "_manualScrollEdgeAppearanceProgress"), v3 = v2, v1, v3 >= 1.0) && !UIAccessibilityIsVoiceOverRunning();
  v5 = v0[qword_400EE8];
  v0[qword_400EE8] = v4;
  if (v5 != v0[qword_400EE8])
  {

    sub_C13EC();
  }
}

uint64_t sub_C1980(id *a1, uint64_t a2)
{
  v3 = [*a1 barButtonItems];
  sub_124C4(0, &unk_409000);
  v4 = sub_30C368();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_30D578();
      }

      else
      {
        if (j >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 setHidden:*(a2 + qword_400EE8)];

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

Swift::Void __swiftcall ModernPageViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v109 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D78);
  v113 = *(v7 - 8);
  v114 = v7;
  __chkstk_darwin(v7);
  v112 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970);
  v110 = *(v9 - 8);
  v111 = v9;
  __chkstk_darwin(v9);
  v109 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80);
  __chkstk_darwin(v11 - 8);
  v13 = &v109 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50);
  __chkstk_darwin(v131);
  v116 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v117 = &v109 - v16;
  __chkstk_darwin(v17);
  v115 = &v109 - v18;
  v19 = sub_307B08();
  v128 = *(v19 - 8);
  v129 = v19;
  __chkstk_darwin(v19);
  v130 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D0);
  v22 = __chkstk_darwin(v21 - 8);
  v132 = &v109 - v23;
  v138.receiver = v0;
  v138.super_class = ObjectType;
  objc_msgSendSuper2(&v138, "viewDidLoad", v22);
  if (*&v0[qword_400D88])
  {
    sub_302488();
  }

  v24 = qword_400D90;

  sub_C2C50(v25);

  v26 = [v0 collectionView];
  if (!v26)
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26;
  [v26 setKeyboardDismissMode:1];

  v28 = [v1 collectionView];
  if (!v28)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  v125 = v13;
  v126 = v6;
  v127 = ObjectType;
  v30 = [objc_opt_self() systemBackgroundColor];
  [v29 setBackgroundColor:v30];

  v31 = [v1 traitCollection];
  v32 = [v31 horizontalSizeClass];

  *&v1[qword_400D98] = v32;
  v33 = [v1 splitViewController];
  if (v33)
  {
    v34 = v33;
    [v33 isCollapsed];
    v36 = *(v3 + 80);
    v35 = *(v3 + 88);
    sub_309688();
    v37 = [v34 isCollapsed];
    v38 = v1[qword_400E98];
    v1[qword_400E98] = v37;
    sub_BA3C8(v38);

    v39 = v35;
  }

  else
  {
    v36 = *(v3 + 80);
    v39 = *(v3 + 88);
  }

  v40 = *&v1[qword_400D60];
  sub_309698();
  *&v137[0] = [v1 tab];
  sub_304D68();

  sub_30BC68();
  v41 = v1;
  v42 = *&v1[v24];
  v43 = *&v41[qword_400DA0];

  v44 = [v41 collectionView];
  if (!v44)
  {
    goto LABEL_26;
  }

  v45 = v39;
  v46 = v44;
  v119 = v41;
  v47 = *&v41[qword_400DA8];
  v48 = v132;
  sub_309608();
  v123 = v36;
  v124 = v40;
  v122 = v45;
  v49 = sub_309658();
  type metadata accessor for CollectionController(0);
  v50 = swift_allocObject();
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 80) = 1;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = 0;
  v51 = v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
  v52 = *(v131 + 48);
  v53 = sub_30B0B8();
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  *(v51 + v52) = 0;
  *(v50 + 16) = v42;
  *(v50 + 24) = v43;
  *(v50 + 32) = v47;
  *(v50 + 40) = v46;
  sub_302818();

  v118 = v47;
  v120 = v46;
  v54 = v46;
  sub_30B8E8();
  *(v50 + 48) = *&v137[0];
  sub_302448();
  sub_30B8E8();
  *(v50 + 56) = *&v137[0];
  [v54 setKeyboardDismissMode:1];
  v55 = sub_95540();
  swift_allocObject();
  swift_weakInit();

  sub_304A58();

  sub_96FEC(v48);
  if (v49)
  {
    swift_allocObject();
    swift_weakInit();

    sub_30A788();

    [*(v50 + 40) setAllowsMultipleSelectionDuringEditing:1];
    v121 = v49;
  }

  else
  {
    [*(v50 + 40) setAllowsMultipleSelection:1];
    v121 = 0;
  }

  v56 = sub_95898();
  [v54 setCollectionViewLayout:v56];

  sub_95E58(v134);
  swift_beginAccess();
  v57 = v43[2];
  v58 = v43[3];
  v59 = v43[5];
  v135[3] = v43[4];
  v135[4] = v59;
  v135[1] = v57;
  v135[2] = v58;
  v135[0] = v43[1];
  v60 = v134[4];
  v43[4] = v134[3];
  v43[5] = v60;
  v61 = v134[2];
  v43[2] = v134[1];
  v43[3] = v61;
  v43[1] = v134[0];
  sub_A0044(v135);
  sub_95E58(v136);
  v62 = v118;
  v63 = &v118[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter];
  swift_beginAccess();
  v137[0] = *v63;
  v64 = *(v63 + 1);
  v65 = *(v63 + 2);
  v66 = *(v63 + 4);
  v137[3] = *(v63 + 3);
  v137[4] = v66;
  v137[1] = v64;
  v137[2] = v65;
  v67 = v136[3];
  *(v63 + 2) = v136[2];
  *(v63 + 3) = v67;
  *(v63 + 4) = v136[4];
  v68 = v136[1];
  *v63 = v136[0];
  *(v63 + 1) = v68;
  sub_A0044(v137);
  v69 = *(v50 + 72);
  v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v71 = *(v43 + v70);
  *(v43 + v70) = v120;
  v72 = v69;

  type metadata accessor for ShelfBackgroundView();
  v73 = v54;
  static ShelfBackgroundView.register(layout:)(v72);

  v74 = objc_allocWithZone(type metadata accessor for CollectionController.CollectionViewBackgroundAdjustHackView());

  v75 = v73;
  v76 = sub_9DCE0(v43, v75);
  [v75 setBackgroundView:v76];

  [v75 setDelegate:v62];

  sub_EB68(v132, &qword_4005D0);
  v77 = qword_400D58;
  v78 = v119;
  swift_beginAccess();
  *&v78[v77] = v50;

  v79 = qword_400DB0;
  swift_beginAccess();
  v80 = v130;
  sub_CEC14(&v78[v79], v130, &type metadata accessor for PageContent);
  sub_BC900(v80);
  sub_CEBB4(v80, &type metadata accessor for PageContent);
  v81 = *&v78[v77];
  if (v81)
  {
    v82 = v115;
    sub_EB00(&v78[qword_400DB8], v115, &unk_408F50);
    v83 = v131;
    v84 = *(v82 + *(v131 + 48));
    v85 = v82;
    v86 = v117;
    sub_CDB68(v85, v117);
    *(v86 + *(v83 + 48)) = v84;
    v87 = v116;
    sub_EB00(v86, v116, &unk_408F50);
    v88 = *(v87 + *(v83 + 48));
    v89 = v81 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
    swift_beginAccess();

    sub_A32A0(v87, v89, &qword_400450);
    *(v89 + *(v83 + 48)) = v88;
    swift_endAccess();
    sub_99060();

    sub_EB68(v86, &unk_408F50);
  }

  sub_CEC14(&v78[v79], v80, &type metadata accessor for PageContent);
  v90 = v125;
  (*(v128 + 56))(v125, 1, 1, v129);
  sub_BCC0C(v80, v90);
  sub_EB68(v90, &qword_400D80);
  sub_CEBB4(v80, &type metadata accessor for PageContent);
  v91 = v124;
  swift_getObjectType();
  v92 = swift_conformsToProtocol2();
  v94 = v126;
  v93 = v127;
  if (v92 && v91)
  {
    swift_getObjectType();
    swift_unknownObjectRetain_n();
    v133 = sub_308D88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
    sub_EC8C(&qword_400DF0, &unk_401980);
    v95 = v109;
    sub_304F48();

    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    v98 = v122;
    v97[2] = v123;
    v97[3] = v98;
    v97[4] = v96;
    sub_EC8C(&unk_401990, &unk_401970);
    v99 = v111;
    sub_304F58();

    (*(v110 + 8))(v95, v99);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getObjectType();
    v133 = sub_309B78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400DC8);
    sub_EC8C(&qword_400DD0, &qword_400DC8);
    sub_CDBF0();
    v100 = v112;
    sub_304F48();

    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = swift_allocObject();
    v103 = v122;
    v102[2] = v123;
    v102[3] = v103;
    v102[4] = v101;
    sub_EC8C(&qword_400DE0, &qword_400D78);
    v104 = v114;
    sub_304F58();

    (*(v113 + 8))(v100, v104);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v105 = [v78 view];
  if (v105)
  {
    v106 = v105;
    v107 = qword_400DC0;
    swift_beginAccess();
    sub_EB00(&v78[v107], v94, &unk_4067B0);
    sub_30CEC8();

    [v78 isViewLoaded];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004E0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_315430;
    *(v108 + 32) = sub_304BB8();
    *(v108 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(swift_allocObject() + 16) = v93;
    sub_30C898();
    swift_unknownObjectRelease();

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_C2C50(uint64_t a1)
{
  v70 = a1;
  v4 = *v1;
  v5 = swift_isaMask;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401098);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010A0);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v54 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010A8);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v54 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010B0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v54 - v9;
  v10 = *&v1[qword_400D60];
  v11 = *(&stru_20.filesize + (v5 & v4));
  v71 = v1;
  v12 = *(&stru_20.maxprot + (v5 & v4));
  v13 = sub_3095B8();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {
    v68 = v11;
    v60 = v12;
    if (!i)
    {
      break;
    }

    *&v74 = _swiftEmptyArrayStorage;
    v16 = &v74;
    sub_1751E4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v54 = v10;
    v10 = 0;
    v5 = 0;
    v3 = v74;
    v2 = v14 & 0xC000000000000001;
    v69 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v2)
      {
        v17 = sub_30D578();
      }

      else
      {
        if (v10 >= *(v69 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v14 + 8 * v10 + 32);
      }

      *&v72 = v17;
      sub_C9800(&v72, v71, v70, &v76);

      *&v74 = v3;
      v11 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v11 >= v18 >> 1)
      {
        sub_1751E4((v18 > 1), v11 + 1, 1);
        v3 = v74;
      }

      *(v3 + 16) = v11 + 1;
      sub_1DA94(&v76, (v3 + 32 * v11 + 32));
      ++v10;
      if (v12 == i)
      {

        v11 = v68;
        v10 = v54;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_16:
  v5 = qword_400E48;
  v19 = v71;
  swift_beginAccess();
  sub_14A3E4(v3);
  swift_endAccess();
  v20 = [v19 traitCollection];
  LODWORD(v3) = sub_30C968();

  *&v76 = v10;
  sub_D45D0(&v76, v11, &v74);
  if (!v75)
  {
    return sub_EB68(&v74, &qword_4010B8);
  }

  sub_12658(&v74, &v76);
  i = swift_allocObject();
  *(i + 16) = 0u;
  v2 = i + 16;
  *(i + 32) = 0u;
  *(i + 48) = 0;
  if (v3 & 1) == 0 || (sub_303088())
  {
    LODWORD(v69) = v3;
    v21 = i;
    v23 = v77;
    v22 = v78;
    v24 = __swift_project_boxed_opaque_existential_1Tm(&v76, v77);
    v25 = v71;
    v26 = [v71 navigationItem];
    v27 = [v25 navigationItem];
    v28 = [v27 _bottomPalette];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for MultiViewHostingPalette();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        goto LABEL_23;
      }
    }

    v30 = [objc_allocWithZone(type metadata accessor for MultiViewHostingPalette()) init];
    [v27 _setBottomPalette:v30];

LABEL_23:
    (*(v22 + 16))(&v72, v26, v30, v23, v22);

    if (!v73)
    {
      sub_EB68(&v72, &qword_400E58);
      i = v21;
      LOBYTE(v3) = v69;
      goto LABEL_30;
    }

    sub_12658(&v72, &v74);
    v31 = v75;
    v32 = __swift_project_boxed_opaque_existential_1Tm(&v74, v75);
    v73 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v72);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_0Tm, v32, v31);
    v34 = v71;
    swift_beginAccess();
    v16 = *&v34[v5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v5] = v16;
    i = v21;
    LOBYTE(v3) = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_35:
      v16 = sub_CB35C(0, *(v16 + 2) + 1, 1, v16);
      *&v71[v5] = v16;
    }

    v37 = *(v16 + 2);
    v36 = *(v16 + 3);
    if (v37 >= v36 >> 1)
    {
      v16 = sub_CB35C((v36 > 1), v37 + 1, 1, v16);
    }

    *(v16 + 2) = v37 + 1;
    sub_1DA94(&v72, &v16[32 * v37 + 32]);
    *&v71[v5] = v16;
    swift_endAccess();
    sub_EB68(v2, &qword_400E58);
    sub_12670(&v74, v2);
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

LABEL_30:
  v39 = v77;
  v40 = v78;
  __swift_project_boxed_opaque_existential_1Tm(&v76, v77);
  *&v74 = (*(v40 + 8))(v39, v40);
  v41 = v55;
  sub_BA354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
  sub_EC8C(&qword_400DF0, &unk_401980);
  sub_EC8C(&qword_4010C0, &qword_401098);
  v42 = v58;
  v43 = v57;
  sub_304EB8();
  (*(v56 + 8))(v41, v43);

  v44 = swift_allocObject();
  *(v44 + 16) = v3 & 1;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_CF2EC;
  *(v45 + 24) = v44;
  sub_EC8C(&qword_4010C8, &qword_4010A0);
  v46 = v59;
  v47 = v63;
  sub_304ED8();

  (*(v61 + 8))(v42, v47);
  sub_EC8C(&qword_4010D0, &qword_4010A8);
  v48 = v65;
  v49 = v64;
  sub_304F48();
  (*(v62 + 8))(v46, v49);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_12670(&v76, &v74);
  v51 = swift_allocObject();
  v52 = v60;
  *(v51 + 16) = v68;
  *(v51 + 24) = v52;
  *(v51 + 32) = v50;
  *(v51 + 40) = v3 & 1;
  sub_12658(&v74, v51 + 48);
  *(v51 + 88) = v70;
  *(v51 + 96) = i;
  sub_EC8C(&qword_4010D8, &qword_4010B0);

  v53 = v67;
  sub_304F58();

  (*(v66 + 8))(v48, v53);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(&v76);
}

void sub_C3830(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ModernPageViewController.setEditing(_:animated:)(v1, 1);
  }
}

Swift::Void __swiftcall ModernPageViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "setEditing:animated:", _, animated);
  if (animated)
  {
    v5 = [v2 collectionView];
    if (v5)
    {
      v6 = v5;
      [v5 setEditing:_];

      v7 = 0;
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = _;
  v10 = swift_allocObject();
  v7 = sub_CDCD4;
  *(v10 + 16) = sub_CDCD4;
  *(v10 + 24) = v9;
  v15[4] = sub_293C0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_19D688;
  v15[3] = &block_descriptor_18;
  v11 = _Block_copy(v15);
  v12 = v2;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  v13 = *&v2[qword_400D60];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v13)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_308D88();
    sub_304D58();

    v14 = _;
    if (LOBYTE(v15[0]) == v14)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_308D88();
      LOBYTE(v15[0]) = v14;
      sub_304D48();
      swift_unknownObjectRelease();
    }
  }

  sub_1EBD0(v7);
}

void sub_C3B38(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_C3B94(v1);
  }
}

void sub_C3B94(char a1)
{
  v3 = sub_306E68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_306E88();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainSystem];
  [v11 setNeedsRevalidate];

  v12 = [v1 collectionView];
  if (v12)
  {
    v22 = v12;
    if (a1)
    {
      v13 = sub_C9CCC();
      if (v13)
      {
        v14 = v13;
        if ((sub_3088E8() & 1) == 0)
        {
          sub_124C4(0, &qword_3FBF20);
          v21 = sub_30C8F8();
          v16 = swift_allocObject();
          *(v16 + 16) = v14;
          aBlock[4] = sub_CEEC8;
          aBlock[5] = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_914CC;
          aBlock[3] = &block_descriptor_60;
          v19 = _Block_copy(aBlock);
          v20 = v14;

          sub_306E78();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
          sub_EC8C(&qword_40D770, &qword_408860);
          sub_30D488();
          v17 = v19;
          v18 = v21;
          sub_30C908();
          _Block_release(v17);

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v10, v7);
          return;
        }

        if (([v14 isRefreshing] & 1) == 0)
        {
          [v14 beginRefreshing];
        }
      }
    }

    else
    {
      [v12 setRefreshControl:0];
    }

    v15 = v22;
  }
}

void sub_C3F84(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  sub_C4030(v4, v5);
}

void sub_C4030(void *a1, void *a2)
{
  v5 = sub_306E68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_306E88();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307B08();
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_30CAD8() & 1) == 0)
  {
    if ((sub_30CAD8() & 1) == 0)
    {
      return;
    }

    v21 = a2;
    goto LABEL_10;
  }

  v15 = a1;
  if ((sub_30CAD8() & 1) == 0)
  {
    if (!v15)
    {
      return;
    }

    v42 = v9;
    v43 = v15;
    goto LABEL_14;
  }

  v16 = a2;
  if (!v15)
  {
LABEL_10:
    if (!a2)
    {
      return;
    }

    v42 = v9;
    v43 = 0;
    goto LABEL_15;
  }

  v42 = v9;
  v43 = v15;
  if (!v16)
  {
LABEL_14:
    a2 = 0;
    goto LABEL_15;
  }

  v40 = v16;
  v41 = v6;
  v17 = sub_30C0D8();
  v19 = v18;
  if (v17 != sub_30C0D8() || v19 != v20)
  {
    v38 = sub_30D728();

    if (v38)
    {
      goto LABEL_23;
    }

    v6 = v41;
LABEL_15:
    v22 = qword_400DB0;
    swift_beginAccess();
    v23 = v2;
    sub_CEC14(v2 + v22, v14, &type metadata accessor for PageContent);
    v24 = sub_307AF8();
    sub_CEBB4(v14, &type metadata accessor for PageContent);
    if ((v24 & 1) == 0)
    {

      return;
    }

    v41 = v6;
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    v27 = v23;
    *(v26 + 16) = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_CEF70;
    *(v28 + 24) = v26;
    v40 = v26;
    v49 = sub_74D04;
    v50 = v28;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_19D688;
    v48 = &block_descriptor_77;
    v29 = _Block_copy(&aBlock);
    v30 = v27;

    [v25 performWithoutAnimation:v29];
    _Block_release(v29);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v31 = [v30 collectionView];
      if (v31)
      {
        v32 = v31;
        [v31 reloadData];

        sub_124C4(0, &qword_3FBF20);
        v33 = sub_30C8F8();
        v34 = [v30 collectionView];
        if (v34)
        {
          v35 = v34;
          v36 = swift_allocObject();
          *(v36 + 16) = v35;
          v49 = sub_CEF78;
          v50 = v36;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v47 = sub_914CC;
          v48 = &block_descriptor_83;
          v37 = _Block_copy(&aBlock);

          sub_306E78();
          aBlock = _swiftEmptyArrayStorage;
          sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
          sub_EC8C(&qword_40D770, &qword_408860);
          sub_30D488();
          sub_30C908();
          _Block_release(v37);

          (*(v41 + 8))(v8, v5);
          (*(v42 + 8))(v11, v44);

          return;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_23:

  v39 = v40;
}

void sub_C4694(void *a1)
{
  v1 = a1;
  ModernPageViewController.viewDidLoad()();
}

Swift::Void __swiftcall ModernPageViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = swift_isaMask;
  v7 = sub_3026D8();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = *(&stru_20.filesize + (v6 & v5));
  v14 = *(&stru_20.maxprot + (v6 & v5));
  [v2 setClearsSelectionOnViewWillAppear:sub_309678() & 1];
  v32.receiver = v2;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewWillAppear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_3024B8();
  }

  v2[qword_400DF8] = 1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_BF600();
    sub_C4B34();
  }

  sub_C4E28();
  sub_BA294();

  sub_308EB8();

  sub_30BC88();
  v15 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v15 == 19)
  {
    v31 = swift_getObjectType();
    swift_getMetatypeMetadata();
    sub_30C148();
  }

  else
  {
    v16 = v15;
    sub_3083F8();
    sub_BA54C(v16);
  }

  sub_302708();
  v17 = sub_3026F8();
  v28 = v12;
  sub_3026E8();

  v27 = sub_3095C8();
  v31 = v27;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v14;
  v20 = v29;
  v21 = v12;
  v22 = v30;
  (*(v29 + 16))(v9, v21, v30);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v19;
  (*(v20 + 32))(v25 + v23, v9, v22);
  *(v25 + v24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400E08);
  sub_EC8C(&qword_400E10, &qword_400E08);
  sub_304F58();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  (*(v20 + 8))(v28, v22);
}

uint64_t sub_C4B34()
{
  v1 = v0;
  v2 = sub_30AA18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  sub_309568();
  sub_304D58();

  v9 = v29 | (v30 << 32);
  if (v30 >> 5 == 3)
  {
    v10 = v29;
    sub_BA7E8(v27, v28, v29 | (v30 << 32));
    v11 = [v1 traitCollection];
    if (v10 == 4)
    {
      v12 = v11;
      v13 = [v11 horizontalSizeClass];

      if (v13 == &dword_0 + 1)
      {
        LOBYTE(v9) = 2;
      }

      else
      {
        LOBYTE(v9) = 5;
      }
    }

    else
    {
    }

    v18 = 0;
    v19 = v9;
    return sub_BE8F0(v18, v19);
  }

  v26 = v5;
  sub_BA7E8(v27, v28, v9);
  v14 = qword_4290D0;
  swift_beginAccess();
  v25 = v3[2];
  v25(v8, &v1[v14], v2);
  v24 = v3[11];
  v15 = v24(v8, v2);
  v16 = enum case for FlowDestinationPageHeader.uber(_:);
  v17 = v3[1];
  v17(v8, v2);
  if (v15 == v16)
  {
    v18 = 0;
LABEL_14:
    v19 = 2;
    return sub_BE8F0(v18, v19);
  }

  v20 = v26;
  v25(v26, &v1[v14], v2);
  v21 = v24(v20, v2);
  v22 = enum case for FlowDestinationPageHeader.largeTitle(_:);
  v17(v20, v2);
  if (v21 == v22)
  {
    *&v1[qword_400EC0] = 3;
    sub_BF764();
  }

  result = _UISolariumEnabled();
  if ((result & 1) == 0)
  {
    v18 = 1;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_C4E28()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401068);
    swift_unknownObjectRetain();

    sub_30B8C8();

    if (v4)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_3087B8();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_C4F2C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v64 = a3;
  v71 = a2;
  v4 = sub_306E68();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_306E88();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3026D8();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = v8;
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_306EA8();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v12 = sub_302478();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v57 = v18;
  v20 = __chkstk_darwin(v19);
  v22 = &v54 - v21;
  v23 = v13[2];
  v72 = a1;
  v75 = v23;
  (v23)(&v54 - v21, a1, v12, v20);
  v24 = v13[11];
  v25 = v24(v22, v12);
  v26 = enum case for ExtendedLaunchStatus.loading(_:);
  v59 = v13;
  v27 = v13[1];
  v27(v22, v12);
  if (v25 != v26)
  {
    v28 = v72;
    v75(v17, v72, v12);
    v29 = v24(v17, v12);
    v30 = enum case for ExtendedLaunchStatus.notImplementedError(_:);
    v27(v17, v12);
    if (v29 == v30)
    {
      sub_124C4(0, &qword_3FBF20);
      v55 = sub_30C8F8();
      v31 = v56;
      sub_306E98();
      sub_303CF8();
      sub_303CE8();
      sub_306F08();
      v32 = *(v76 + 8);
      v76 += 8;
      v64 = v32;
      v32(v31, v74);
      v34 = v62;
      v33 = v63;
      v35 = v61;
      (*(v62 + 16))(v61, v71, v63);
      v36 = v58;
      v75(v58, v28, v12);
      v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v38 = v59;
      v39 = (v60 + *(v59 + 80) + v37) & ~*(v59 + 80);
      v40 = swift_allocObject();
      (*(v34 + 32))(v40 + v37, v35, v33);
      (v38[4])(v40 + v39, v36, v12);
      aBlock[4] = sub_CEDC4;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_54;
      v41 = _Block_copy(aBlock);

      v42 = v65;
      sub_306E78();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
      sub_EC8C(&qword_40D770, &qword_408860);
      v43 = v67;
      v44 = v70;
      sub_30D488();
      v45 = v73;
      v46 = v55;
      sub_30C8C8();
      _Block_release(v41);

      (*(v69 + 8))(v43, v44);
      (*(v66 + 8))(v42, v68);
      v64(v45, v74);
    }

    else
    {
      v47 = sub_3026C8();
      v48 = sub_302468();
      if (v48)
      {
        v49 = v48;
        sub_302458();
        sub_CEB6C(&qword_401078, &type metadata accessor for ExtendedLaunchStatus.ExtendedLaunchError);
        v50 = swift_allocError();
        *v51 = v49;
      }

      else
      {
        v50 = 0;
      }

      v47(v50);

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v53 = Strong;
        sub_C5814(0x6F43646564616F4CLL, 0xED0000746E65746ELL, 1, 1);
      }
    }
  }
}

uint64_t sub_C573C()
{
  v0 = sub_3026C8();
  v1 = sub_302468();
  if (v1)
  {
    v2 = v1;
    sub_302458();
    sub_CEB6C(&qword_401078, &type metadata accessor for ExtendedLaunchStatus.ExtendedLaunchError);
    v3 = swift_allocError();
    *v4 = v2;
  }

  else
  {
    v3 = 0;
  }

  v0(v3);
}

uint64_t sub_C5814(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v5 = v4;
  LODWORD(v61) = a3;
  v56 = a1;
  v57 = a2;
  v7 = sub_302258();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401070);
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE0);
  __chkstk_darwin(v12 - 8);
  v58 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v55 = &v50[-v15];
  __chkstk_darwin(v16);
  v54 = &v50[-v17];
  __chkstk_darwin(v18);
  v20 = &v50[-v19];
  v62 = sub_302218();
  v21 = *(v62 - 8);
  __chkstk_darwin(v62);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v50[-v25];
  ModernPageViewController.interactionContextPage.getter();
  if ((v61 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = a4;
  v53 = v7;
  v61 = v26;
  sub_CEC14(v26, v20, &type metadata accessor for InteractionContext.Page);
  v27 = *(v21 + 56);
  v28 = v21;
  v29 = v62;
  v27(v20, 0, 1, v62);
  v30 = qword_400E90;
  swift_beginAccess();
  v31 = *(v9 + 48);
  sub_EB00(v20, v11, &qword_3FBDE0);
  v52 = v4;
  v32 = v4 + v30;
  v33 = v29;
  v21 = v28;
  sub_EB00(v32, &v11[v31], &qword_3FBDE0);
  v34 = *(v28 + 48);
  if (v34(v11, 1, v33) == 1)
  {
    sub_EB68(v20, &qword_3FBDE0);
    v35 = v34(&v11[v31], 1, v33);
    v26 = v61;
    if (v35 == 1)
    {
      sub_EB68(v11, &qword_3FBDE0);
      return sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
    }

    goto LABEL_7;
  }

  v36 = v54;
  sub_EB00(v11, v54, &qword_3FBDE0);
  if (v34(&v11[v31], 1, v33) == 1)
  {
    sub_EB68(v20, &qword_3FBDE0);
    sub_CEBB4(v36, &type metadata accessor for InteractionContext.Page);
    v26 = v61;
LABEL_7:
    sub_EB68(v11, &qword_401070);
    v5 = v52;
    v7 = v53;
    LOBYTE(a4) = v51;
    goto LABEL_8;
  }

  sub_CF1E4(&v11[v31], v23, &type metadata accessor for InteractionContext.Page);
  v49 = sub_3021F8();
  sub_CEBB4(v23, &type metadata accessor for InteractionContext.Page);
  sub_EB68(v20, &qword_3FBDE0);
  sub_CEBB4(v36, &type metadata accessor for InteractionContext.Page);
  sub_EB68(v11, &qword_3FBDE0);
  v5 = v52;
  v7 = v53;
  v26 = v61;
  LOBYTE(a4) = v51;
  if (v49)
  {
    return sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
  }

LABEL_8:
  if (a4)
  {
    v37 = qword_400E90;
    swift_beginAccess();
    v38 = v5 + v37;
    v39 = v55;
    sub_EB00(v38, v55, &qword_3FBDE0);
    if ((*(v21 + 48))(v39, 1, v62) == 1)
    {
      sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
      return sub_EB68(v39, &qword_3FBDE0);
    }

    sub_EB68(v39, &qword_3FBDE0);
  }

  v41 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v41 == 19)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    v63 = 32;
    v64 = 0xE100000000000000;
    v44 = v41;
    sub_BA528(v41);
    v65._countAndFlagsBits = sub_3083D8();
    sub_30C238(v65);

    sub_BA54C(v44);
    sub_BA54C(v44);
    v42 = v63;
    v43 = v64;
  }

  v45 = v7;
  v63 = v56;
  v64 = v57;

  v66._countAndFlagsBits = v42;
  v66._object = v43;
  sub_30C238(v66);

  v46 = v59;
  ModernPageViewController.interactionContextOrigin.getter();
  sub_302208();

  (*(v60 + 8))(v46, v45);
  v47 = v58;
  sub_CF1E4(v26, v58, &type metadata accessor for InteractionContext.Page);
  (*(v21 + 56))(v47, 0, 1, v62);
  v48 = qword_400E90;
  swift_beginAccess();
  sub_A32A0(v47, v5 + v48, &qword_3FBDE0);
  return swift_endAccess();
}

void sub_C5F3C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_302498();
  }

  sub_BA294();
  sub_30BC78();

  sub_308EB8();

  sub_C5814(0x4164694477656976, 0xED00007261657070, 0, 0);
  sub_302798();
  sub_302788();
  sub_302778();

  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v2 selector:"appEnteredWhileAppeared" name:MTApplicationDidBecomeActiveNotification object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v2 selector:"appExitedWhileAppeared" name:MTApplicationDidEnterBackgroundNotification object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v2 selector:"increaseContrastSettingDidChange" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

  if ((sub_303098() & 1) == 0)
  {
    sub_309568();
    sub_304D58();

    sub_BBCD8(v8, v9, v10 | (v11 << 32));
    sub_BA7E8(v8, v9, v10 | (v11 << 32));
  }
}

void sub_C6218(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_3024C8();
  }

  sub_C63E0();
  sub_BA294();
  sub_30BC98();

  sub_308EB8();

  v4 = [v2 tabBarController];
  if (v4)
  {
    v5 = v4;
    v6 = UITabBarController.currentNavigationTab.getter();

    if (v6 != 19)
    {
      v7 = ModernPageViewController.navigationTabIdentifier.getter();
      if (v7 != 19)
      {
        v8 = v7;
        if ((sub_308428() & 1) == 0)
        {
          sub_309638();
        }

        sub_BA54C(v8);
      }

      sub_BA54C(v6);
    }
  }
}

uint64_t sub_C63E0()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401068);
    swift_unknownObjectRetain();

    sub_30B8C8();

    if (v6)
    {
      swift_getObjectType();
      v4 = sub_3087A8();
      if (v4 && (v5 = v4, swift_unknownObjectRelease(), v1 == v5))
      {
        sub_3087B8();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_C6500(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  ObjectType = swift_getObjectType();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400E18);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = v24 - v5;
  v7 = sub_30B898();
  __chkstk_darwin(v7 - 8);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_302F68();
  v9 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_30BCF8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v26 = v3;
  objc_msgSendSuper2(&v29, "viewWillDisappear:", v3, v14);
  if (*&v2[qword_400D88])
  {
    sub_30BCC8();
    sub_3024D8();
    (*(v13 + 8))(v16, v12);
  }

  v2[qword_400DF8] = 0;
  sub_BA294();
  sub_30BCD8();
  sub_30BCA8();
  (*(v13 + 8))(v16, v12);
  v17 = *&v2[qword_400E20];
  if (v17)
  {
    *(v17 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active) = 0;
  }

  sub_308EB8();

  [*&v2[qword_400E28] clearSharedItems];
  sub_C6AB4();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:MTApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:MTApplicationDidEnterBackgroundNotification object:0];

  v21 = [v18 defaultCenter];
  [v21 removeObserver:v2 name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

  sub_3098C8(v26);
  (*(v9 + 104))(v11, enum case for TipGroup.headerButtons(_:), v24[0]);
  sub_30B868();
  v28[3] = sub_302F38();
  v28[4] = sub_CEB6C(&qword_400E38, &type metadata accessor for RequestTipProviderRefreshAction);
  __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_302F28();
  v22 = v25;
  v23 = v27;
  (*(v25 + 104))(v6, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  sub_30B9F8();

  (*(v22 + 8))(v6, v23);
  __swift_destroy_boxed_opaque_existential_1(v28);
}