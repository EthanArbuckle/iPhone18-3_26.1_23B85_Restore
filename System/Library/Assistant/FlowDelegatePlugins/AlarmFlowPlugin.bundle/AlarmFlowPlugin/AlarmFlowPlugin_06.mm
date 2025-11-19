void *sub_ABEB8()
{
  if (sub_105910())
  {
    sub_105C90();
  }

  if (sub_106220())
  {
    isa = sub_105F20().super.isa;
    v1 = INDateComponentsRange.alarmRepeatSchedule.getter();

    if (v1 >> 62)
    {
      v2 = sub_107270();
    }

    else
    {
      v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v2)
    {
      v3 = sub_105F20().super.isa;
      v4 = INDateComponentsRange.alarmRepeatSchedule.getter();

      return v4;
    }

    else
    {
      v14 = sub_84190();

      return v14;
    }
  }

  else
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_106D20();
    sub_135C4(v6, qword_139A90);

    v7 = sub_106D10();
    v8 = sub_106FC0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;

      sub_25E4(&qword_139AA8, "FW");
      v11 = sub_106E30();
      v13 = sub_722E8(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Can NOT get recurringTime from recurringDateTime: %s", v9, 0xCu);
      sub_2738(v10);
    }

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_AC114()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139A90);
  sub_135C4(v0, qword_139A90);
  return sub_106A80();
}

uint64_t sub_AC160()
{
  v0 = sub_105A10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_139AF0, &qword_10A2A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_25E4(&qword_139AF8, &qword_10A2B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  if (sub_105820())
  {
    sub_105A00();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v18 = *(v4 + 48);
  sub_14994(v17, v7, &qword_139AF8, &qword_10A2B0);
  sub_14994(v15, &v7[v18], &qword_139AF8, &qword_10A2B0);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) != 1)
  {
    sub_14994(v7, v12, &qword_139AF8, &qword_10A2B0);
    if (v19(&v7[v18], 1, v0) != 1)
    {
      v21 = v25;
      (*(v1 + 32))(v25, &v7[v18], v0);
      sub_ADB60(&qword_139B00, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
      v20 = sub_106E00();
      v22 = *(v1 + 8);
      v22(v21, v0);
      sub_16F70(v15, &qword_139AF8, &qword_10A2B0);
      sub_16F70(v17, &qword_139AF8, &qword_10A2B0);
      v22(v12, v0);
      sub_16F70(v7, &qword_139AF8, &qword_10A2B0);
      return v20 & 1;
    }

    sub_16F70(v15, &qword_139AF8, &qword_10A2B0);
    sub_16F70(v17, &qword_139AF8, &qword_10A2B0);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_16F70(v15, &qword_139AF8, &qword_10A2B0);
  sub_16F70(v17, &qword_139AF8, &qword_10A2B0);
  if (v19(&v7[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_16F70(v7, &qword_139AF0, &qword_10A2A8);
    v20 = 0;
    return v20 & 1;
  }

  sub_16F70(v7, &qword_139AF8, &qword_10A2B0);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_AC5E0()
{
  v0 = sub_105B30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_1376F8, &qword_1080F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_25E4(&qword_137700, &qword_108100);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  if (sub_105830())
  {
    sub_105B20();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:), v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v18 = *(v4 + 48);
  sub_14994(v17, v7, &qword_137700, &qword_108100);
  sub_14994(v15, &v7[v18], &qword_137700, &qword_108100);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) != 1)
  {
    sub_14994(v7, v12, &qword_137700, &qword_108100);
    if (v19(&v7[v18], 1, v0) != 1)
    {
      v21 = v25;
      (*(v1 + 32))(v25, &v7[v18], v0);
      sub_ADB60(&qword_137708, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues);
      v20 = sub_106E00();
      v22 = *(v1 + 8);
      v22(v21, v0);
      sub_16F70(v15, &qword_137700, &qword_108100);
      sub_16F70(v17, &qword_137700, &qword_108100);
      v22(v12, v0);
      sub_16F70(v7, &qword_137700, &qword_108100);
      return v20 & 1;
    }

    sub_16F70(v15, &qword_137700, &qword_108100);
    sub_16F70(v17, &qword_137700, &qword_108100);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_16F70(v15, &qword_137700, &qword_108100);
  sub_16F70(v17, &qword_137700, &qword_108100);
  if (v19(&v7[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_16F70(v7, &qword_1376F8, &qword_1080F8);
    v20 = 0;
    return v20 & 1;
  }

  sub_16F70(v7, &qword_137700, &qword_108100);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_ACA60()
{
  v0 = sub_105590();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_ACBCC();
  v6 = v1[13];
  v6(v4, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesNotSet(_:), v0);
  v7 = sub_AB75C(v4, v5);
  v8 = v1[1];
  v8(v4, v0);
  if (v7)
  {

    return 2;
  }

  else
  {
    v6(v4, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSet(_:), v0);
    v10 = sub_AB75C(v4, v5);

    v8(v4, v0);
    return v10;
  }
}

char *sub_ACBCC()
{
  v0 = sub_25E4(&qword_139AB8, "FW");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_105590();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1058E0();
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v11 = 0;
    v27 = v8 & 0xC000000000000001;
    v12 = (v22 + 48);
    v23 = (v22 + 32);
    v21 = (v22 + 56);
    v13 = _swiftEmptyArrayStorage;
    v25 = i;
    v26 = v9;
    while (v27)
    {
      sub_1071C0();
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_24;
      }

LABEL_11:
      sub_105810();
      if (v28)
      {
        sub_105600();
      }

      sub_1055A0();
      sub_1059C0();

      if (v29)
      {
        sub_105580();

        if ((*v12)(v3, 1, v4) != 1)
        {
          v16 = *v23;
          (*v23)(v24, v3, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_AD868(0, *(v13 + 2) + 1, 1, v13, &qword_139AC0, "FW", &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
          }

          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          if (v18 >= v17 >> 1)
          {
            v13 = sub_AD868(v17 > 1, v18 + 1, 1, v13, &qword_139AC0, "FW", &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
          }

          *(v13 + 2) = v18 + 1;
          v16(&v13[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18], v24, v4);
          goto LABEL_7;
        }
      }

      else
      {

        (*v21)(v3, 1, 1, v4);
      }

      sub_16F70(v3, &qword_139AB8, "FW");
LABEL_7:
      ++v11;
      v9 = v26;
      if (v15 == v25)
      {
        goto LABEL_28;
      }
    }

    if (v11 >= *(v9 + 16))
    {
      goto LABEL_25;
    }

    v14 = *(v8 + 8 * v11 + 32);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_28:

  return v13;
}

uint64_t sub_ACF8C()
{
  v0 = sub_25E4(&qword_139AE8, &qword_10A2A0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  if (!sub_1058F0() || (v7 = sub_105980(), , !v7) || (v8 = sub_1058B0(), , !v8))
  {
    if (!sub_1058F0() || (v9 = sub_105970(), , !v9))
    {
      v14 = sub_105B50();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      goto LABEL_10;
    }
  }

  sub_105B40();

  v10 = sub_105B50();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    sub_14994(v6, v4, &qword_139AE8, &qword_10A2A0);
    v13 = (*(v11 + 88))(v4, v10);
    if (v13 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Afternoon(_:))
    {
      v12 = 2;
      goto LABEL_11;
    }

    if (v13 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Night(_:))
    {
      v12 = 4;
      goto LABEL_11;
    }

    if (v13 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Evening(_:))
    {
      v12 = 3;
      goto LABEL_11;
    }

    if (v13 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Morning(_:))
    {
      v12 = 1;
      goto LABEL_11;
    }

    (*(v11 + 8))(v4, v10);
LABEL_10:
    v12 = 0;
  }

LABEL_11:
  sub_16F70(v6, &qword_139AE8, &qword_10A2A0);
  return v12;
}

uint64_t sub_AD230()
{
  if (sub_1058F0())
  {
    sub_105960();
  }

  v0 = sub_106230();

  if (v0)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v1 = sub_106D20();
    sub_135C4(v1, qword_139A90);

    v2 = sub_106D10();
    v3 = sub_106FC0();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime);
    v6 = sub_107340();
    v8 = sub_722E8(v6, v7, &v15);

    *(v4 + 4) = v8;
    v9 = "Got time range from endDateTime: %s";
LABEL_15:
    _os_log_impl(&dword_0, v2, v3, v9, v4, 0xCu);
    sub_2738(v5);

LABEL_16:

    return v0;
  }

  if (sub_105910())
  {
    sub_105C90();
  }

  v0 = sub_106230();

  if (v0)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_139A90);

    v2 = sub_106D10();
    v3 = sub_106FC0();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime);
    v11 = sub_107340();
    v13 = sub_722E8(v11, v12, &v15);

    *(v4 + 4) = v13;
    v9 = "Got time range from recurringDateTime: %s";
    goto LABEL_15;
  }

  return v0;
}

char *sub_AD590(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_1376D0, &unk_1080E0);
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

char *sub_AD6C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_139620, &qword_109D18);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_AD868(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_25E4(a5, a6);
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

char *sub_ADA44(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_139B08, &qword_10A2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_ADB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ADBA8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_106960();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1307E0 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_ADC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1065A0();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = sub_1053C0();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v10 = sub_1053E0();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v13 = sub_105380();
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_ADE38, 0, 0);
}

uint64_t sub_ADE38()
{
  v175 = v0;
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 88);
  v5 = sub_106D20();
  sub_135C4(v5, qword_139B10);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v174[0] = v170;
    *v13 = 136315138;
    sub_B0A94(&unk_1374D0, &type metadata accessor for Input);
    v14 = sub_107340();
    v16 = v15;
    v171 = *(v11 + 8);
    v171(v10, v12);
    v17 = sub_722E8(v14, v16, v174);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "AlarmDisambiguation.parsePromptResult(input:items:) parsing input: %s", v13, 0xCu);
    sub_2738(v170);
  }

  else
  {

    v171 = *(v11 + 8);
    v171(v10, v12);
  }

  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 88);
  sub_105360();
  v22 = (*(v19 + 88))(v18, v20);
  if (v22 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_7;
  }

  if (v22 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v23 = *(v0 + 200);
    (*(*(v0 + 184) + 96))(v23, *(v0 + 176));
    v24 = *(v23 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    v25 = sub_105E80();
    (*(*(v25 - 8) + 8))(v23, v25);
LABEL_10:
    v6(*(v0 + 224), *(v0 + 88), *(v0 + 208));
    v26 = sub_106D10();
    v27 = sub_106FC0();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v31 = *(v0 + 208);
    if (v28)
    {
      v32 = *(v0 + 192);
      v33 = *(v0 + 176);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v174[0] = v35;
      *v34 = 136315138;
      sub_105360();
      v36 = sub_106E30();
      v38 = v37;
      v171(v30, v31);
      v39 = sub_722E8(v36, v38, v174);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v26, v27, "AlarmDisambiguation.parsePromptResult(input:items:) nlv3 parse: %s", v34, 0xCu);
      sub_2738(v35);
    }

    else
    {

      v171(v30, v31);
    }

    v40 = sub_AFEDC(*(v0 + 88));
    if (v40)
    {
      v41 = v40;
      v42 = sub_106D10();
      v43 = sub_106FC0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v174[0] = v172;
        *v44 = 136315138;
        v45 = v41;
        v46 = [v45 description];
        v47 = sub_106E20();
        v49 = v48;

        v50 = sub_722E8(v47, v49, v174);

        *(v44 + 4) = v50;
        _os_log_impl(&dword_0, v42, v43, "AlarmDisambiguation.parsePromptResult(input:items:) Using parsed AlarmSearch: %s", v44, 0xCu);
        sub_2738(v172);
      }

      [v41 alarmReferenceType];
      v51 = sub_106970();
      if (v51 == sub_106970())
      {
        v52 = sub_106D10();
        v53 = sub_106FC0();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_0, v52, v53, "AlarmDisambiguation.parsePromptResult(input:items:) User mentioned .all for disambiguation", v54, 2u);
        }

        v55 = *(v0 + 96);

        goto LABEL_34;
      }

      v59 = v41;
      v60 = sub_106D10();
      v61 = sub_106FC0();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v174[0] = v63;
        *v62 = 136315138;
        v64 = v59;
        v65 = [v64 description];
        v66 = sub_106E20();
        v68 = v67;

        v69 = sub_722E8(v66, v68, v174);

        *(v62 + 4) = v69;
        _os_log_impl(&dword_0, v60, v61, "AlarmDisambiguation.parsePromptResult(input:items:) Filtering disambiguation results using alarmSearch: %s", v62, 0xCu);
        sub_2738(v63);
      }

      v70 = *(v0 + 104);
      *(v0 + 72) = *(v0 + 96);
      v71 = swift_task_alloc();
      *(v71 + 16) = v70;
      *(v71 + 24) = v59;
      sub_106F40();

      swift_getWitnessTable();
      v55 = sub_1071F0();

      v72 = sub_106F30();
      if (v72 >= 2 && (v73 = *(v0 + 104), sub_106F30() == v72))
      {
      }

      else
      {
        *(v0 + 80) = v55;
        swift_getWitnessTable();
        v94 = sub_106F90();

        if ((v94 & 1) == 0)
        {
LABEL_34:
          v96 = *(v0 + 232);
          v95 = *(v0 + 240);
          v97 = *(v0 + 224);
          v99 = *(v0 + 192);
          v98 = *(v0 + 200);
          v101 = *(v0 + 160);
          v100 = *(v0 + 168);
          v102 = *(v0 + 152);
          v103 = *(v0 + 128);

          v104 = *(v0 + 8);

          return v104(v55);
        }
      }
    }

    else
    {
      v56 = sub_106D10();
      v57 = sub_106FC0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "AlarmDisambiguation.parsePromptResult(input:items:) No AlarmSearch from parse", v58, 2u);
      }
    }

    v55 = 0;
    goto LABEL_34;
  }

  if (v22 == enum case for Parse.directInvocation(_:))
  {
    v74 = *(v0 + 200);
    v76 = *(v0 + 160);
    v75 = *(v0 + 168);
    v78 = *(v0 + 136);
    v77 = *(v0 + 144);
    (*(*(v0 + 184) + 96))(v74, *(v0 + 176));
    (*(v77 + 32))(v75, v74, v78);
    v79 = *(v77 + 16);
    v79(v76, v75, v78);
    v80 = sub_106D10();
    v81 = sub_106FC0();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 160);
    if (v82)
    {
      v84 = *(v0 + 144);
      v85 = *(v0 + 152);
      v86 = *(v0 + 136);
      v87 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v174[0] = v173;
      *v87 = 136315138;
      v79(v85, v83, v86);
      v88 = sub_106E30();
      v90 = v89;
      v91 = *(v84 + 8);
      v91(v83, v86);
      v92 = sub_722E8(v88, v90, v174);
      v93 = v91;

      *(v87 + 4) = v92;
      _os_log_impl(&dword_0, v80, v81, "AlarmDisambiguation.parsePromptResult(input:items:) direct invocation: %s", v87, 0xCu);
      sub_2738(v173);
    }

    else
    {
      v121 = *(v0 + 136);
      v120 = *(v0 + 144);

      v93 = *(v120 + 8);
      v93(v83, v121);
    }

    v122 = *(v0 + 168);
    v123 = sub_1053B0();
    if (v123)
    {
      v124 = v123;
      v125 = *(v0 + 120);
      v126 = *(v0 + 128);
      v127 = *(v0 + 112);
      (*(v125 + 104))(v126, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v127);
      v128 = sub_106590();
      v130 = v129;
      (*(v125 + 8))(v126, v127);
      if (*(v124 + 16))
      {
        v131 = sub_32658(v128, v130);
        v133 = v132;

        if (v133)
        {
          sub_135FC(*(v124 + 56) + 32 * v131, v0 + 16);

          if (*(v0 + 40))
          {
            if (swift_dynamicCast())
            {
              v134 = *(v0 + 48);
              v135 = *(v0 + 56);
              v136 = sub_106A30();
              v138 = v137;

              if (v138)
              {

                v139 = sub_106D10();
                v140 = sub_106FA0();

                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v142 = swift_slowAlloc();
                  v174[0] = v142;
                  *v141 = 136315138;

                  v143 = sub_722E8(v136, v138, v174);

                  *(v141 + 4) = v143;
                  _os_log_impl(&dword_0, v139, v140, "AlarmDisambiguation.parsePromptResult(input:items:) Direct invocation alarm ID: %s", v141, 0xCu);
                  sub_2738(v142);
                }

                v144 = *(v0 + 168);
                v145 = *(v0 + 136);
                v146 = *(v0 + 144);
                v147 = *(v0 + 104);
                *(v0 + 64) = *(v0 + 96);
                v148 = swift_task_alloc();
                v148[2] = v147;
                v148[3] = v136;
                v148[4] = v138;
                sub_106F40();

                swift_getWitnessTable();
                v55 = sub_1071F0();

                v93(v144, v145);
                goto LABEL_34;
              }
            }

            goto LABEL_55;
          }

LABEL_54:
          sub_16F70(v0 + 16, &qword_137490, qword_108C80);
LABEL_55:
          v149 = sub_106D10();
          v150 = sub_106FB0();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            *v151 = 0;
            _os_log_impl(&dword_0, v149, v150, "AlarmDisambiguation.parsePromptResult(input:items:) No alarmId in direct invocation", v151, 2u);
          }

          v152 = *(v0 + 168);
          v153 = *(v0 + 136);
          v154 = *(v0 + 144);

          sub_25E4(&qword_137DD8, &unk_1085D0);
          sub_26E48();
          swift_allocError();
          *v155 = 0;
          swift_willThrow();
          v93(v152, v153);
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_54;
  }

  if (v22 == enum case for Parse.NLv4IntentOnly(_:) || v22 == enum case for Parse.uso(_:))
  {
LABEL_7:
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
    goto LABEL_10;
  }

  v6(*(v0 + 232), *(v0 + 88), *(v0 + 208));
  v106 = sub_106D10();
  v107 = sub_106FB0();
  v108 = os_log_type_enabled(v106, v107);
  v109 = *(v0 + 232);
  v111 = *(v0 + 208);
  v110 = *(v0 + 216);
  if (v108)
  {
    v112 = *(v0 + 192);
    v113 = *(v0 + 176);
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v174[0] = v115;
    *v114 = 136315138;
    sub_105360();
    v116 = sub_106E30();
    v118 = v117;
    v171(v109, v111);
    v119 = sub_722E8(v116, v118, v174);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_0, v106, v107, "AlarmDisambiguation.parsePromptResult(input:items:) Unsupported parse: %s", v114, 0xCu);
    sub_2738(v115);
  }

  else
  {

    v171(v109, v111);
  }

  v156 = *(v0 + 200);
  v157 = *(v0 + 176);
  v158 = *(v0 + 184);
  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_26E48();
  swift_allocError();
  *v159 = 0;
  swift_willThrow();
  (*(v158 + 8))(v156, v157);
LABEL_60:
  v161 = *(v0 + 232);
  v160 = *(v0 + 240);
  v162 = *(v0 + 224);
  v164 = *(v0 + 192);
  v163 = *(v0 + 200);
  v166 = *(v0 + 160);
  v165 = *(v0 + 168);
  v167 = *(v0 + 152);
  v168 = *(v0 + 128);

  v169 = *(v0 + 8);

  return v169();
}

void sub_AEF38(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_105380();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = *(v112 + 64);
  __chkstk_darwin(v3);
  v111 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1065A0();
  v115 = *(v6 - 8);
  v116 = v6;
  v7 = *(v115 + 64);
  __chkstk_darwin(v6);
  v114 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1053C0();
  v118 = *(v9 - 1);
  v119 = v9;
  v10 = *(v118 + 64);
  __chkstk_darwin(v9);
  v117 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_105460();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  __chkstk_darwin(v12);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_105410();
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  __chkstk_darwin(v108);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1053E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v106 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v106 - v24;
  v26 = sub_105E80();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v106 - v32;
  v120 = a1;
  sub_105360();
  v34 = (*(v20 + 88))(v25, v19);
  if (v34 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v20 + 96))(v25, v19);
LABEL_5:
    v36 = *(v27 + 32);
    v36(v33, v25, v26);
    v36(v31, v33, v26);
    v37 = type metadata accessor for AlarmNLIntent();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_B3800(v31);
    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v41 = sub_106D20();
    sub_135C4(v41, qword_139B10);

    v42 = sub_106D10();
    v43 = sub_106FC0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v123 = v45;
      *v44 = 136315138;
      v122 = v40;
      sub_B0A94(&qword_137480, type metadata accessor for AlarmNLIntent);
      v46 = sub_105620();
      v48 = sub_722E8(v46, v47, &v123);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "AlarmDisambiguation.determineWindowInputType(input:) alarmNLIntent: %s", v44, 0xCu);
      sub_2738(v45);
    }

    v49 = sub_B372C();
    if (v49 <= 1)
    {
      if (v49)
      {
        sub_1052F0();
      }

      else
      {
        sub_105300();
      }

      goto LABEL_28;
    }

    if (v49 == 2)
    {
      sub_105310();
LABEL_28:

      return;
    }

    goto LABEL_46;
  }

  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v20 + 96))(v25, v19);
    v35 = *&v25[*(sub_25E4(&qword_13B010, &unk_1087A0) + 48)];

    goto LABEL_5;
  }

  if (v34 != enum case for Parse.directInvocation(_:))
  {
    if (v34 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v20 + 96))(v25, v19);
      v77 = *v25;
      sub_106650();
      swift_unknownObjectRelease();
      return;
    }

    if (v34 == enum case for Parse.uso(_:))
    {
      (*(v20 + 96))(v25, v19);
      v78 = v107;
      v79 = v108;
      (*(v107 + 32))(v18, v25, v108);
      sub_105400();
      sub_105450();
      (*(v109 + 8))(v15, v110);
      sub_106640();

      (*(v78 + 8))(v18, v79);
      return;
    }

    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v80 = sub_106D20();
    sub_135C4(v80, qword_139B10);
    v82 = v111;
    v81 = v112;
    v83 = v113;
    (*(v112 + 16))(v111, v120, v113);
    v84 = sub_106D10();
    v85 = sub_106FB0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v123 = v119;
      *v86 = 136315138;
      LODWORD(v118) = v85;
      sub_105360();
      v87 = sub_106E30();
      v88 = v82;
      v90 = v89;
      (*(v81 + 8))(v88, v83);
      v91 = sub_722E8(v87, v90, &v123);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_0, v84, v118, "AlarmDisambiguation.determineWindowInputType(input:) Received an unsupported parse for disambiguation window prompt: %s", v86, 0xCu);
      sub_2738(v119);
    }

    else
    {

      (*(v81 + 8))(v82, v83);
    }

    (*(v20 + 8))(v25, v19);
    goto LABEL_46;
  }

  (*(v20 + 96))(v25, v19);
  v51 = v117;
  v50 = v118;
  v52 = v25;
  v53 = v119;
  (*(v118 + 32))(v117, v52, v119);
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v54 = sub_106D20();
  sub_135C4(v54, qword_139B10);
  v55 = sub_106D10();
  v56 = sub_106FC0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "AlarmDisambiguation.determineWindowInputType(input:) Received directInvocation", v57, 2u);
  }

  v58 = sub_1053B0();
  if (!v58)
  {
    (*(v50 + 8))(v51, v53);
    v123 = 0u;
    v124 = 0u;
LABEL_42:
    sub_16F70(&v123, &qword_137490, qword_108C80);
    goto LABEL_46;
  }

  v59 = v58;
  v61 = v114;
  v60 = v115;
  v62 = v116;
  (*(v115 + 104))(v114, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v116);
  v63 = sub_106590();
  v65 = v64;
  (*(v60 + 8))(v61, v62);
  if (!*(v59 + 16))
  {

    goto LABEL_40;
  }

  v66 = sub_32658(v63, v65);
  v68 = v67;

  if ((v68 & 1) == 0)
  {
LABEL_40:

    v123 = 0u;
    v124 = 0u;
    goto LABEL_41;
  }

  sub_135FC(*(v59 + 56) + 32 * v66, &v123);

  if (!*(&v124 + 1))
  {
LABEL_41:
    (*(v50 + 8))(v51, v53);
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    v69 = sub_106A30();
    v71 = v70;

    if (v71)
    {

      v72 = sub_106D10();
      v73 = sub_106FA0();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v123 = v75;
        *v74 = 136315138;
        v76 = sub_722E8(v69, v71, &v123);

        *(v74 + 4) = v76;
        _os_log_impl(&dword_0, v72, v73, "AlarmDisambiguation.determineWindowInputType(input:) Direct invocation alarm ID: %s", v74, 0xCu);
        sub_2738(v75);
      }

      else
      {
      }

      sub_105300();
      (*(v50 + 8))(v51, v53);
      return;
    }
  }

  (*(v50 + 8))(v51, v53);
LABEL_46:
  v92 = sub_AFEDC(v120);
  if (v92)
  {
    v93 = v92;
    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v94 = sub_106D20();
    sub_135C4(v94, qword_139B10);
    v95 = v93;
    v96 = sub_106D10();
    v97 = sub_106FA0();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v123 = v99;
      *v98 = 136315138;
      v100 = v95;
      v101 = [v100 description];
      v102 = sub_106E20();
      v104 = v103;

      v105 = sub_722E8(v102, v104, &v123);

      *(v98 + 4) = v105;
      _os_log_impl(&dword_0, v96, v97, "AlarmDisambiguation.determineWindowInputType(input:) Parsed AlarmSearch: %s", v98, 0xCu);
      sub_2738(v99);
    }

    sub_105300();
  }

  else
  {
    sub_1052E0();
  }
}

uint64_t sub_AFD8C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139B10);
  sub_135C4(v0, qword_139B10);
  return sub_106A80();
}

uint64_t sub_AFDD8(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_106E20();
  }

  v7 = sub_106A30();
  v9 = v8;

  if (v9)
  {
    if (v7 == a2 && v9 == a3)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_107370();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_AFEDC(uint64_t *a1)
{
  v105 = a1;
  v92 = sub_105460();
  v95 = *(v92 - 8);
  v1 = *(v95 + 64);
  __chkstk_darwin(v92);
  v94 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_105410();
  v91 = *(v93 - 8);
  v3 = *(v91 + 64);
  v4 = __chkstk_darwin(v93);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v90 = &v86 - v7;
  __chkstk_darwin(v6);
  v96 = &v86 - v8;
  v104 = sub_1053E0();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v104);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v86 - v14);
  v16 = sub_105380();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v98 = &v86 - v22;
  __chkstk_darwin(v21);
  v24 = &v86 - v23;
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v25 = sub_106D20();
  v26 = sub_135C4(v25, qword_139B10);
  v99 = v17[2];
  v100 = v17 + 2;
  v99(v24, v105, v16);
  v102 = v26;
  v27 = sub_106D10();
  v28 = sub_106FC0();
  v29 = os_log_type_enabled(v27, v28);
  v101 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v97 = v9;
    v31 = v30;
    v87 = swift_slowAlloc();
    v106[0] = v87;
    *v31 = 136315138;
    sub_B0A94(&unk_1374D0, &type metadata accessor for Input);
    v32 = sub_107340();
    v88 = v15;
    v34 = v33;
    v35 = v17[1];
    v35(v24, v16);
    v36 = sub_722E8(v32, v34, v106);
    v15 = v88;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v27, v28, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) parsing input: %s", v31, 0xCu);
    sub_2738(v87);

    v9 = v97;
  }

  else
  {

    v35 = v17[1];
    v35(v24, v16);
  }

  sub_105360();
  v37 = (*(v9 + 88))(v15, v104);
  v38 = v103;
  if (v37 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v9 + 8))(v15, v104);
    goto LABEL_10;
  }

  if (v37 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v9 + 96))(v15, v104);
    v39 = *(v15 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    v40 = sub_105E80();
    (*(*(v40 - 8) + 8))(v15, v40);
LABEL_10:
    v41 = v98;
    v99(v98, v105, v16);
    v42 = sub_106D10();
    v43 = sub_106FC0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v16;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v106[0] = v46;
      *v45 = 136315138;
      sub_105360();
      v47 = sub_106E30();
      v48 = v13;
      v50 = v49;
      v35(v41, v44);
      v51 = sub_722E8(v47, v50, v106);
      v13 = v48;

      *(v45 + 4) = v51;
      _os_log_impl(&dword_0, v42, v43, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) nlv3 parse: %s", v45, 0xCu);
      sub_2738(v46);
    }

    else
    {

      v35(v41, v16);
    }

    sub_105360();
    v52 = type metadata accessor for AlarmNLIntent();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    result = sub_B3EE4(v13);
    if (result)
    {
      v56 = sub_B68AC();

      return v56;
    }

    return result;
  }

  if (v37 == enum case for Parse.directInvocation(_:))
  {
    v57 = sub_106D10();
    v58 = sub_106FC0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) direct invocation", v59, 2u);
    }

    (*(v9 + 8))(v15, v104);
  }

  else
  {
    if (v37 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v9 + 96))(v15, v104);
      v60 = *v15;
      swift_getObjectType();
      v56 = SIRINLUUserDialogAct.alarmSearch.getter();
      swift_unknownObjectRelease();
      return v56;
    }

    if (v37 == enum case for Parse.uso(_:))
    {
      (*(v9 + 96))(v15, v104);
      v61 = v91;
      v62 = v96;
      v63 = v93;
      (*(v91 + 32))(v96, v15, v93);
      v64 = *(v61 + 16);
      v65 = v90;
      v64(v90, v62, v63);
      v66 = sub_106D10();
      v67 = sub_106FC0();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v106[0] = v105;
        *v68 = 136315138;
        v64(v89, v65, v63);
        v69 = sub_106E30();
        v71 = v70;
        v72 = *(v61 + 8);
        v72(v65, v63);
        v73 = sub_722E8(v69, v71, v106);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_0, v66, v67, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) USO parse: %s", v68, 0xCu);
        sub_2738(v105);
      }

      else
      {

        v72 = *(v61 + 8);
        v72(v65, v63);
      }

      v84 = v94;
      v85 = v96;
      sub_105400();
      v56 = Siri_Nlu_External_UserParse.alarmSearch.getter();
      (*(v95 + 8))(v84, v92);
      v72(v85, v63);
      return v56;
    }

    v97 = v9;
    v99(v103, v105, v16);
    v74 = sub_106D10();
    v75 = sub_106FB0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v16;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v106[0] = v78;
      *v77 = 136315138;
      sub_105360();
      v79 = sub_106E30();
      v80 = v38;
      v82 = v81;
      v35(v80, v76);
      v83 = sub_722E8(v79, v82, v106);

      *(v77 + 4) = v83;
      _os_log_impl(&dword_0, v74, v75, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) Unsupported parse: %s", v77, 0xCu);
      sub_2738(v78);
    }

    else
    {

      v35(v38, v16);
    }

    (*(v97 + 8))(v15, v104);
  }

  return 0;
}

uint64_t sub_B0A5C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  return sub_106A90() & 1;
}

uint64_t sub_B0A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_B0ADC(unint64_t a1)
{
  v72 = sub_105240();
  v71 = *(v72 - 8);
  v2 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_139B28, &qword_10A2C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v81 = (&v69 - v9);
  v10 = sub_104E30();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  v12 = __chkstk_darwin(v10);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v80 = (&v69 - v15);
  v16 = __chkstk_darwin(v14);
  *&v79 = &v69 - v17;
  __chkstk_darwin(v16);
  v77 = &v69 - v18;
  v19 = sub_104D80();
  v82 = *(v19 - 8);
  v20 = *(v82 + 64);
  v21 = __chkstk_darwin(v19);
  v78 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v89 = &v69 - v23;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v86 = v10;
    v73 = v8;
    v25 = 0;
    v91 = a1 & 0xFFFFFFFFFFFFFF8;
    v92 = a1 & 0xC000000000000001;
    v84 = a1;
    v85 = 0x800000000010C460;
    v87 = (v74 + 32);
    v75 = (v74 + 8);
    v76 = (v74 + 16);
    v26 = (v82 + 32);
    v90 = _swiftEmptyArrayStorage;
    v88 = i;
    do
    {
      if (v92)
      {
        v28 = sub_1071C0();
      }

      else
      {
        if (v25 >= *(v91 + 16))
        {
          goto LABEL_40;
        }

        v28 = *(v84 + 8 * v25 + 32);
      }

      v29 = v28;
      a1 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v30 = [v28 label];
      if (v30)
      {
        v31 = v30;
        sub_106E20();

        v93 = 0;
        v94 = 0xE000000000000000;
        sub_107190(20);

        v93 = 0xD000000000000012;
        v94 = v85;
        v95._countAndFlagsBits = sub_106E60();
        sub_106E80(v95);

        v32 = v79;
        sub_104E20();
        v33 = v86;
        v34 = v77;
        (*v87)(v77, v32, v86);
        sub_7AA9C(v81);
        (*v76)(v80, v34, v33);
        v35 = v78;
        sub_104D70();

        (*v75)(v34, v33);
        v10 = *v26;
        (*v26)(v89, v35, v19);
        v36 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_AD7F0(0, v36[2] + 1, 1, v36);
        }

        v38 = v36[2];
        v37 = v36[3];
        v90 = v36;
        v8 = (v38 + 1);
        i = v88;
        if (v38 >= v37 >> 1)
        {
          v90 = sub_AD7F0(v37 > 1, v38 + 1, 1, v90);
        }

        v39 = v89;
        v40 = v90;
        v90[2] = v8;
        (v10)(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v38, v39, v19);
      }

      else
      {
      }

      ++v25;
    }

    while (a1 != i);
    v10 = 0;
    v81 = (v74 + 48);
    v82 = v74 + 56;
    v41 = _swiftEmptyArrayStorage;
    *&v27 = 136315138;
    v79 = v27;
    v42 = v84;
    v43 = v73;
    v44 = v86;
    while (1)
    {
      if (v92)
      {
        v45 = sub_1071C0();
      }

      else
      {
        if (v10 >= *(v91 + 16))
        {
          goto LABEL_42;
        }

        v45 = *(v42 + 8 * v10 + 32);
      }

      v46 = v45;
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v47 = [v45 identifier];
      v89 = v41;
      if (v47)
      {
        v48 = v47;
        sub_106E20();

        v93 = 0;
        v94 = 0xE000000000000000;
        v8 = &v93;
        sub_107190(20);

        v93 = 0xD000000000000012;
        v94 = v85;
        a1 = 0x64496D72616C61;
        v96._countAndFlagsBits = sub_106E60();
        sub_106E80(v96);
        v44 = v86;

        sub_104E20();
        v49 = 0;
      }

      else
      {
        if (qword_136D28 != -1)
        {
          swift_once();
        }

        v50 = sub_106D20();
        sub_135C4(v50, qword_138C90);
        v51 = v46;
        v8 = sub_106D10();
        v52 = sub_106FB0();

        if (os_log_type_enabled(v8, v52))
        {
          v53 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v93 = v80;
          *v53 = v79;
          v54 = v51;
          v55 = [v54 description];
          v56 = sub_106E20();
          v58 = v57;

          v59 = v56;
          v43 = v73;
          v60 = sub_722E8(v59, v58, &v93);
          v42 = v84;

          *(v53 + 4) = v60;
          _os_log_impl(&dword_0, v8, v52, "DisplayHints failed to extract alarm ID from alarm: %s", v53, 0xCu);
          a1 = v80;
          sub_2738(v80);

          v44 = v86;
        }

        v49 = 1;
      }

      (*v82)(v43, v49, 1, v44);

      v61 = (*v81)(v43, 1, v44);
      v62 = v88;
      v41 = v89;
      if (v61 == 1)
      {
        sub_16F70(v43, &qword_139B28, &qword_10A2C8);
      }

      else
      {
        a1 = *v87;
        (*v87)(v83, v43, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_AD818(0, *(v41 + 2) + 1, 1, v41);
        }

        v64 = *(v41 + 2);
        v63 = *(v41 + 3);
        v8 = (v64 + 1);
        if (v64 >= v63 >> 1)
        {
          v41 = sub_AD818(v63 > 1, v64 + 1, 1, v41);
        }

        *(v41 + 2) = v8;
        (a1)(&v41[((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v64], v83, v44);
      }

      ++v10;
      if (v19 == v62)
      {
        v65 = v90;
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v65 = _swiftEmptyArrayStorage;
LABEL_45:
  v66 = v70;
  sub_105220();
  v67 = sub_105230();

  (*(v71 + 8))(v66, v72);
  v93 = v65;
  sub_728A8(v67);
  return v93;
}

uint64_t sub_B14FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139B30);
  sub_135C4(v0, qword_139B30);
  return sub_106A60();
}

uint64_t sub_B1548()
{
  v0 = sub_25E4(&qword_139F60, &qword_10A8A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8E0 = result;
  return result;
}

uint64_t sub_B15AC()
{
  v0 = sub_25E4(&qword_139F70, &qword_10A8B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8E8 = result;
  return result;
}

uint64_t sub_B1614()
{
  v0 = sub_25E4(&qword_139F60, &qword_10A8A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8F0 = result;
  return result;
}

uint64_t sub_B167C()
{
  v0 = sub_25E4(&qword_139F60, &qword_10A8A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8F8 = result;
  return result;
}

uint64_t sub_B16EC()
{
  v0 = sub_25E4(&qword_139F60, &qword_10A8A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B900 = result;
  return result;
}

uint64_t sub_B1754()
{
  v0 = sub_25E4(&qword_139F90, &qword_10A8C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B908 = result;
  return result;
}

uint64_t sub_B17BC()
{
  v0 = sub_25E4(&qword_139F90, &qword_10A8C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B910 = result;
  return result;
}

uint64_t sub_B1828()
{
  v0 = sub_25E4(&qword_139FA0, &qword_10A8C8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B918 = result;
  return result;
}

uint64_t sub_B1898()
{
  v0 = sub_25E4(&qword_139F80, &qword_10A8B8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B920 = result;
  return result;
}

uint64_t sub_B1908()
{
  v0 = sub_25E4(&qword_139FB0, &qword_10A8D0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B928 = result;
  return result;
}

uint64_t sub_B19AC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      return 0x6874666966;
    case 5:
      return 0x6874786973;
    case 6:
      return 0x68746E65766573;
    case 7:
      return 0x687468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      return 0x68746E6574;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      return 0x6874666C657774;
    case 12:
      v4 = 1919510644;
      goto LABEL_25;
    case 13:
      v4 = 1920298854;
      goto LABEL_25;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v4 = 1751607653;
      goto LABEL_25;
    case 18:
      v4 = 1701734766;
LABEL_25:
      result = v4 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B1D7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B19AC(*a1);
  v5 = v4;
  if (v3 == sub_B19AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_107370();
  }

  return v8 & 1;
}

Swift::Int sub_B1E04()
{
  v1 = *v0;
  sub_107400();
  sub_B19AC(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_B1E68()
{
  sub_B19AC(*v0);
  sub_106E70();
}

Swift::Int sub_B1EBC()
{
  v1 = *v0;
  sub_107400();
  sub_B19AC(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_B1F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_B8A14();
  *a2 = result;
  return result;
}

uint64_t sub_B1F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B19AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B1F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_B8A68();
  v5 = sub_B8ABC();
  v6 = sub_B8B10();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

uint64_t sub_B2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a4();
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

uint64_t sub_B20AC()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
  if (result == 12)
  {
    if (qword_136DD0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B2180()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if (qword_136DC8 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    v4 = v8;
    v5 = *v1;
    v6 = v1[1];
    *v1 = v8;
    v1[1] = v9;

    sub_B8854(v5, v6);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B2290()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_B8930();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_B8854(v5, v6);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B2324()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if (qword_136DE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    v4 = v10;
    if (v11)
    {
      v4 = sub_106E60();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;

    sub_B8854(v7, v8);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B245C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E4(&qword_139FC0, &qword_10A8D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  swift_beginAccess();
  sub_14994(v2 + v11, v10, &qword_139FC0, &qword_10A8D8);
  v12 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_7C278(v10, a1, &qword_13AFE0, &qword_10A320);
  }

  sub_16F70(v10, &qword_139FC0, &qword_10A8D8);
  if (qword_136DF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1055E0();
  sub_B26B0(v14, v15, a1);

  sub_14994(a1, v8, &qword_13AFE0, &qword_10A320);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_57A78(v8, v2 + v11, &qword_139FC0, &qword_10A8D8);
  return swift_endAccess();
}

uint64_t sub_B26B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a1;
  v119 = a2;
  v115 = a3;
  v3 = sub_105700();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v99 - v9;
  __chkstk_darwin(v8);
  v103 = &v99 - v11;
  v12 = sub_25E4(&qword_13A048, &qword_10A948);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v106 = &v99 - v14;
  v109 = sub_105790();
  v108 = *(v109 - 8);
  v15 = *(v108 + 64);
  v16 = __chkstk_darwin(v109);
  v104 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v105 = &v99 - v18;
  v19 = sub_25E4(&qword_13A050, &qword_10A950);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v117 = &v99 - v21;
  v110 = sub_105800();
  v116 = *(v110 - 8);
  v22 = *(v116 + 64);
  v23 = __chkstk_darwin(v110);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v107 = &v99 - v26;
  v27 = sub_25E4(&qword_13A058, &qword_10A958);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v99 - v29;
  v31 = sub_105860();
  v113 = *(v31 - 8);
  v114 = v31;
  v32 = *(v113 + 64);
  __chkstk_darwin(v31);
  v112 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25E4(&qword_137488, &qword_10A960);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v99 - v36;
  sub_105E70();
  v38 = sub_1058A0();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_16F70(v37, &qword_137488, &qword_10A960);
    if (qword_136DC0 != -1)
    {
LABEL_44:
      swift_once();
    }

    v40 = sub_106D20();
    sub_135C4(v40, qword_139B30);
    v41 = v119;

    v42 = sub_106D10();
    v43 = sub_106FC0();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v115;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v122[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_722E8(v118, v41, v122);
      _os_log_impl(&dword_0, v42, v43, "No child nodes found when searching for node: %s)", v46, 0xCu);
      sub_2738(v47);
    }

    v48 = v4[7];
    v49 = v45;
    v50 = 1;
    v51 = v3;
    return v48(v49, v50, 1, v51);
  }

  v100 = v4;
  v101 = v3;
  v4 = sub_105890();
  (*(v39 + 8))(v37, v38);
  v3 = v4[2];
  v53 = v119;
  if (v3)
  {
    v54 = 0;
    v55 = (v4 + 4);
    while (1)
    {
      if (v54 >= v4[2])
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_262C(v55, &v120);
      sub_1A8E0(&v120, v121);
      v53 = v119;
      if (sub_1055F0() == v118 && v56 == v53)
      {
        break;
      }

      v58 = sub_107370();

      if (v58)
      {
        goto LABEL_18;
      }

      ++v54;
      sub_2738(&v120);
      v55 += 40;
      if (v3 == v54)
      {
        goto LABEL_16;
      }
    }

LABEL_18:

    sub_1AD44(&v120, v122);
    sub_25E4(&qword_13A060, &qword_10A968);
    v59 = v114;
    v60 = swift_dynamicCast();
    v61 = v113;
    (*(v113 + 56))(v30, v60 ^ 1u, 1, v59);
    if ((*(v61 + 48))(v30, 1, v59) == 1)
    {
      goto LABEL_19;
    }

    (*(v61 + 32))(v112, v30, v59);
    v71 = sub_105850();
    v72 = *(v71 + 16);
    v73 = v110;
    if (v72)
    {
      v3 = 0;
      v111 = (v116 + 8);
      v4 = &qword_10A950;
      while (v3 < *(v71 + 16))
      {
        (*(v116 + 16))(v25, v71 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v3, v73);
        sub_105720();
        v74 = v117;
        v75 = sub_105710();
        if ((*(*(v75 - 8) + 48))(v74, 1, v75) != 1)
        {

          sub_16F70(v74, &qword_13A050, &qword_10A950);
          v78 = v107;
          (*(v116 + 32))(v107, v25, v73);
          v79 = v106;
          sub_1057A0();
          v80 = v108;
          v81 = v109;
          v82 = (*(v108 + 48))(v79, 1, v109);
          v76 = v101;
          v77 = v100;
          if (v82 == 1)
          {
            (*v111)(v78, v73);
            (*(v113 + 8))(v112, v114);
            sub_16F70(v79, &qword_13A048, &qword_10A948);
            goto LABEL_30;
          }

          v83 = v105;
          (*(v80 + 32))(v105, v79, v81);
          v84 = v104;
          (*(v80 + 16))(v104, v83, v81);
          if ((*(v80 + 88))(v84, v81) != enum case for TerminalElement.Value.dateTime(_:))
          {
            v97 = *(v80 + 8);
            v97(v83, v81);
            (*v111)(v78, v110);
            (*(v113 + 8))(v112, v114);
            v97(v84, v81);
            goto LABEL_30;
          }

          (*(v80 + 96))(v84, v81);
          v85 = v103;
          v116 = v77[4];
          v117 = (v77 + 4);
          (v116)(v103, v84, v76);
          if (qword_136DC0 != -1)
          {
            swift_once();
          }

          v86 = sub_106D20();
          sub_135C4(v86, qword_139B30);
          v87 = v77[2];
          v88 = v10;
          v87(v10, v85, v76);
          v89 = v119;

          v90 = sub_106D10();
          v91 = sub_106FC0();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v122[0] = swift_slowAlloc();
            *v92 = 136315394;
            *(v92 + 4) = sub_722E8(v118, v89, v122);
            *(v92 + 12) = 2080;
            v87(v102, v88, v76);
            v93 = sub_106E30();
            v95 = v94;
            (v77[1])(v88, v76);
            v96 = sub_722E8(v93, v95, v122);

            *(v92 + 14) = v96;
            _os_log_impl(&dword_0, v90, v91, "Extracted original dateTime value for node named: %s) – %s", v92, 0x16u);
            swift_arrayDestroy();
            v85 = v103;
          }

          else
          {

            (v77[1])(v88, v76);
          }

          (*(v108 + 8))(v105, v109);
          (*v111)(v107, v110);
          (*(v113 + 8))(v112, v114);
          v98 = v115;
          (v116)(v115, v85, v76);
          v48 = v77[7];
          v49 = v98;
          v50 = 0;
          goto LABEL_31;
        }

        ++v3;
        (*v111)(v25, v73);
        sub_16F70(v74, &qword_13A050, &qword_10A950);
        if (v72 == v3)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_43;
    }

LABEL_29:
    (*(v113 + 8))(v112, v114);

    v76 = v101;
    v77 = v100;
LABEL_30:
    v49 = v115;
    v48 = v77[7];
    v50 = 1;
LABEL_31:
    v51 = v76;
    return v48(v49, v50, 1, v51);
  }

LABEL_16:

  (*(v113 + 56))(v30, 1, 1, v114);
LABEL_19:
  sub_16F70(v30, &qword_13A058, &qword_10A958);
  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v62 = sub_106D20();
  sub_135C4(v62, qword_139B30);

  v63 = sub_106D10();
  v64 = sub_106FC0();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v101;
  v67 = v100;
  v68 = v115;
  if (v65)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v122[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_722E8(v118, v53, v122);
    _os_log_impl(&dword_0, v63, v64, "No dateTime value for node named: %s)", v69, 0xCu);
    sub_2738(v70);
  }

  return (v67[7])(v68, 1, 1, v66);
}

uint64_t sub_B3584()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes);
  if (result == 15)
  {
    if (qword_136E00 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B3658()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference);
  if (result == 36)
  {
    if (qword_136E08 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B372C()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation);
  if (result == 4)
  {
    if (qword_136E10 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent();
    sub_B8664(&qword_139F48);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B3800(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode;
  sub_25E4(&qword_139F58, &qword_10A8A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  if (qword_136DC8 != -1)
  {
    swift_once();
  }

  v6 = qword_13B8E0;
  v7 = sub_25E4(&qword_139F60, &qword_10A8A8);
  *(v5 + 56) = v7;
  v8 = sub_B880C(&qword_139F68, &qword_139F60, &qword_10A8A8);
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = qword_136DD0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_13B8E8;
  *(v5 + 96) = sub_25E4(&qword_139F70, &qword_10A8B0);
  *(v5 + 104) = sub_B880C(&qword_139F78, &qword_139F70, &qword_10A8B0);
  *(v5 + 72) = v10;
  v11 = qword_136DD8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_13B8F0;
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = v12;
  v13 = qword_136DE0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_13B8F8;
  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = v14;
  v15 = qword_136DE8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_13B900;
  *(v5 + 216) = v7;
  *(v5 + 224) = v8;
  *(v5 + 192) = v16;
  v17 = qword_136E08;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_13B920;
  *(v5 + 256) = sub_25E4(&qword_139F80, &qword_10A8B8);
  *(v5 + 264) = sub_B880C(&qword_139F88, &qword_139F80, &qword_10A8B8);
  *(v5 + 232) = v18;
  v19 = qword_136DF0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_13B908;
  v21 = sub_25E4(&qword_139F90, &qword_10A8C0);
  *(v5 + 296) = v21;
  v22 = sub_B880C(&qword_139F98, &qword_139F90, &qword_10A8C0);
  *(v5 + 304) = v22;
  *(v5 + 272) = v20;
  v23 = qword_136DF8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_13B910;
  *(v5 + 336) = v21;
  *(v5 + 344) = v22;
  *(v5 + 312) = v24;
  v25 = qword_136E00;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_13B918;
  *(v5 + 376) = sub_25E4(&qword_139FA0, &qword_10A8C8);
  *(v5 + 384) = sub_B880C(&qword_139FA8, &qword_139FA0, &qword_10A8C8);
  *(v5 + 352) = v26;
  v27 = qword_136E10;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_13B928;
  *(v5 + 416) = sub_25E4(&qword_139FB0, &qword_10A8D0);
  *(v5 + 424) = sub_B880C(&qword_139FB8, &qword_139FB0, &qword_10A8D0);
  *(v5 + 392) = v28;
  v29 = sub_1055C0();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v2 + v4) = sub_1055B0();
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb) = 12;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel) = xmmword_10A2D0;
  v32 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  v33 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v34 = *(*(v33 - 8) + 56);
  v34(v2 + v32, 1, 1, v33);
  v34(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, 1, 1, v33);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes) = 15;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) = 36;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation) = 4;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime) = 1;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime) = 1;
  v35 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  v36 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v36 - 8) + 56))(v2 + v35, 1, 1, v36);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange) = 1;
  v37 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v38 = sub_105E80();
  (*(*(v38 - 8) + 32))(v2 + v37, a1, v38);
  return v2;
}

uint64_t sub_B3EE4(char *a1)
{
  v2 = v1;
  v4 = sub_1053E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v70 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v71 = &v70 - v10;
  __chkstk_darwin(v9);
  v12 = &v70 - v11;
  v13 = sub_105E80();
  v73 = *(v13 - 1);
  v74 = v13;
  v14 = *(v73 + 64);
  __chkstk_darwin(v13);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode;
  sub_25E4(&qword_139F58, &qword_10A8A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_109670;
  if (qword_136DC8 != -1)
  {
    swift_once();
  }

  v76 = a1;
  v17 = qword_13B8E0;
  v18 = sub_25E4(&qword_139F60, &qword_10A8A8);
  *(v16 + 56) = v18;
  v19 = sub_B880C(&qword_139F68, &qword_139F60, &qword_10A8A8);
  *(v16 + 64) = v19;
  *(v16 + 32) = v17;
  v20 = qword_136DD0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_13B8E8;
  *(v16 + 96) = sub_25E4(&qword_139F70, &qword_10A8B0);
  *(v16 + 104) = sub_B880C(&qword_139F78, &qword_139F70, &qword_10A8B0);
  *(v16 + 72) = v21;
  v22 = qword_136DD8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_13B8F0;
  *(v16 + 136) = v18;
  *(v16 + 144) = v19;
  *(v16 + 112) = v23;
  v24 = qword_136DE0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_13B8F8;
  *(v16 + 176) = v18;
  *(v16 + 184) = v19;
  *(v16 + 152) = v25;
  v26 = qword_136DE8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_13B900;
  *(v16 + 216) = v18;
  *(v16 + 224) = v19;
  *(v16 + 192) = v27;
  v28 = qword_136E08;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_13B920;
  *(v16 + 256) = sub_25E4(&qword_139F80, &qword_10A8B8);
  *(v16 + 264) = sub_B880C(&qword_139F88, &qword_139F80, &qword_10A8B8);
  *(v16 + 232) = v29;
  v30 = qword_136DF0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_13B908;
  v32 = sub_25E4(&qword_139F90, &qword_10A8C0);
  *(v16 + 296) = v32;
  v33 = sub_B880C(&qword_139F98, &qword_139F90, &qword_10A8C0);
  *(v16 + 304) = v33;
  *(v16 + 272) = v31;
  v34 = qword_136DF8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_13B910;
  *(v16 + 336) = v32;
  *(v16 + 344) = v33;
  *(v16 + 312) = v35;
  v36 = qword_136E00;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_13B918;
  *(v16 + 376) = sub_25E4(&qword_139FA0, &qword_10A8C8);
  *(v16 + 384) = sub_B880C(&qword_139FA8, &qword_139FA0, &qword_10A8C8);
  *(v16 + 352) = v37;
  v38 = qword_136E10;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_13B928;
  *(v16 + 416) = sub_25E4(&qword_139FB0, &qword_10A8D0);
  *(v16 + 424) = sub_B880C(&qword_139FB8, &qword_139FB0, &qword_10A8D0);
  *(v16 + 392) = v39;
  v40 = sub_1055C0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  *(v2 + v75) = sub_1055B0();
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb) = 12;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel) = xmmword_10A2D0;
  v43 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  v44 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v45 = *(*(v44 - 8) + 56);
  v45(v2 + v43, 1, 1, v44);
  v45(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, 1, 1, v44);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes) = 15;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) = 36;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation) = 4;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime) = 1;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime) = 1;
  v46 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  v47 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v47 - 8) + 56))(v2 + v46, 1, 1, v47);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange) = 1;
  v48 = *(v5 + 16);
  v49 = v76;
  v48(v12, v76, v4);
  v50 = (*(v5 + 88))(v12, v4);
  if (v50 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v5 + 8))(v49, v4);
    (*(v5 + 96))(v12, v4);
LABEL_25:
    v52 = v72;
    v53 = *(v73 + 32);
    v54 = v74;
    v53(v72, v12, v74);
    v53((v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent), v52, v54);
    return v2;
  }

  if (v50 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v5 + 8))(v49, v4);
    (*(v5 + 96))(v12, v4);
    v51 = *&v12[*(sub_25E4(&qword_13B010, &unk_1087A0) + 48)];

    goto LABEL_25;
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v75 = v12;
  v55 = sub_106D20();
  sub_135C4(v55, qword_139B30);
  v56 = v71;
  v48(v71, v49, v4);
  v57 = sub_106D10();
  v58 = sub_106FB0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77 = v74;
    *v59 = 136315138;
    v48(v70, v56, v4);
    v60 = sub_106E30();
    v62 = v61;
    v63 = *(v5 + 8);
    v63(v56, v4);
    v64 = sub_722E8(v60, v62, &v77);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_0, v57, v58, "Unknown parse type: %s", v59, 0xCu);
    sub_2738(v74);

    v65 = v76;
  }

  else
  {

    v63 = *(v5 + 8);
    v63(v49, v4);
    v65 = v56;
  }

  v63(v65, v4);
  v63(v75, v4);
  v66 = *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode);

  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8));
  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8));
  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8));
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime, &qword_139FC0, &qword_10A8D8);
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, &qword_139FC0, &qword_10A8D8);
  sub_B8868(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime));
  sub_B8878(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime));
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime, &qword_139FC8, &unk_10A8E0);
  sub_B8878(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange));
  type metadata accessor for AlarmNLIntent();
  v67 = *(*v2 + 48);
  v68 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_B4AF8()
{
  v1 = v0;
  v2 = sub_B20AC();
  if (v2 <= 6)
  {
    if (v2 > 2)
    {
      if ((v2 - 3) >= 2)
      {
        v3 = [objc_allocWithZone(sub_1067A0()) init];
        v4 = sub_B68AC();
        [v3 setAlarmSearch:v4];

        [v3 setOperation:sub_B75C0()];
LABEL_14:

        return v3;
      }

      goto LABEL_17;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v3 = [objc_allocWithZone(sub_106840()) init];
        v7 = sub_B68AC();
        [v3 setAlarmSearch:v7];

        goto LABEL_14;
      }

LABEL_18:
      sub_1068D0();

      return sub_23088();
    }

LABEL_15:
    sub_106800();

    return sub_22C8C();
  }

  if (v2 <= 8)
  {
    if (v2 == 7)
    {
LABEL_17:
      sub_106870();

      v8 = sub_232D4();

      return v8;
    }

    goto LABEL_18;
  }

  if (v2 == 9)
  {
    if (qword_136DC0 != -1)
    {
      swift_once();
    }

    v9 = sub_106D20();
    sub_135C4(v9, qword_139B30);

    v10 = sub_106D10();
    v11 = sub_106FB0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v17 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
      sub_25E4(&qword_137568, &qword_10A8F0);
      v14 = sub_106E30();
      v16 = sub_722E8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Received unexpected alarmVerb %s, return createAlarmIntent anyways.", v12, 0xCu);
      sub_2738(v13);
    }

    return [objc_allocWithZone(sub_106800()) init];
  }

  else
  {
    if (v2 != 10)
    {
      goto LABEL_15;
    }

    v5 = objc_allocWithZone(sub_1068B0());

    return [v5 init];
  }
}

uint64_t sub_B4E38()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_25E4(&qword_13A018, &qword_10A8F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_25E4(&qword_13A038, &qword_10A938);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_25E4(&qword_13A040, &qword_10A940);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  sub_B245C(v8);
  if ((*(v1 + 48))(v8, 1, v0))
  {
    v24 = &qword_13AFE0;
    v25 = &qword_10A320;
    v26 = v8;
LABEL_7:
    sub_16F70(v26, v24, v25);
    v31 = sub_1057B0();
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  (*(v1 + 16))(v4, v8, v0);
  sub_16F70(v8, &qword_13AFE0, &qword_10A320);
  sub_105680();
  (*(v1 + 8))(v4, v0);
  v27 = sub_105780();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    v24 = &qword_13A018;
    v25 = &qword_10A8F8;
    v26 = v12;
    goto LABEL_7;
  }

  sub_105770();
  (*(v28 + 8))(v12, v27);
  v29 = sub_105740();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v16, 1, v29) == 1)
  {
    v24 = &qword_13A038;
    v25 = &qword_10A938;
    v26 = v16;
    goto LABEL_7;
  }

  sub_105730();
  (*(v30 + 8))(v16, v29);
  v34 = sub_1057B0();
  v35 = *(v34 - 8);
  v32 = 0;
  if ((*(v35 + 48))(v23, 1, v34) != 1)
  {
    sub_14994(v23, v21, &qword_13A040, &qword_10A940);
    v36 = (*(v35 + 88))(v21, v34);
    if (v36 == enum case for TerminalElement.Period.morning(_:))
    {
      v32 = 1;
      goto LABEL_9;
    }

    if (v36 == enum case for TerminalElement.Period.noon(_:))
    {
      v32 = 5;
      goto LABEL_9;
    }

    if (v36 == enum case for TerminalElement.Period.afternoon(_:))
    {
      v32 = 2;
      goto LABEL_9;
    }

    if (v36 == enum case for TerminalElement.Period.evening(_:))
    {
      v32 = 3;
      goto LABEL_9;
    }

    v32 = 4;
    if (v36 != enum case for TerminalElement.Period.night(_:) && v36 != enum case for TerminalElement.Period.tonight(_:))
    {
      (*(v35 + 8))(v21, v34);
      goto LABEL_8;
    }
  }

LABEL_9:
  sub_16F70(v23, &qword_13A040, &qword_10A940);
  return v32;
}

Class sub_B53C4()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime;
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime);
  v3 = v2;
  if (v2 == (&dword_0 + 1))
  {
    v3 = sub_B5434();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_B8868(v4);
  }

  sub_B8CC4(v2);
  return v3;
}

Class sub_B5434()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_B245C(&v13 - v7);
  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
    v10 = sub_105690();
    (*(v1 + 8))(v4, v0);
    if (v10)
    {

      v11 = sub_106220();

      if (v11)
      {
        isa = sub_105F20().super.isa;

        return isa;
      }
    }
  }

  return 0;
}

uint64_t sub_B5640()
{
  v0 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_105700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_B245C(v3);
  if ((*(v5 + 48))(v3, 1, v4))
  {
    sub_16F70(v3, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v5 + 16))(v9, v3, v4);
    sub_16F70(v3, &qword_13AFE0, &qword_10A320);
    sub_B583C(v11);
    v12 = *(v5 + 8);
    v12(v9, v4);
    sub_105690();
    v12(v11, v4);
  }

  v13 = sub_106220();

  return v13;
}

uint64_t sub_B583C@<X0>(uint64_t a1@<X8>)
{
  v25[3] = a1;
  v1 = sub_25E4(&qword_13A020, &unk_10A910);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_25E4(&qword_13A018, &qword_10A8F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v25[0] = v25 - v8;
  v9 = sub_25E4(&qword_13A028, &qword_10BB50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v25[1] = v25 - v11;
  v12 = sub_25E4(&unk_13AFD0, &qword_10A920);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v25[2] = v25 - v14;
  v15 = sub_25E4(&unk_13AFC0, &qword_10A928);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_25E4(&qword_13A030, &qword_10A930);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  sub_105650();
  v22 = sub_105750();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_1056E0();
  sub_1056F0();
  sub_1056A0();
  sub_105660();
  v23 = sub_105780();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_1056C0();
  sub_1056B0();
  sub_1056D0();
  return sub_105670();
}

uint64_t sub_B5BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (sub_B5620())
  {
    v12.super.isa = sub_105F20().super.isa;
    v13 = sub_1045E0();
    v14 = *(*(v13 - 8) + 56);
    v15 = 1;
    v14(v11, 1, 1, v13);
    v16 = [(objc_class *)v12.super.isa startDateComponents];
    if (v16)
    {
      v17 = v16;
      sub_104570();

      v15 = 0;
    }

    v14(v9, v15, 1, v13);
    v18 = [(objc_class *)v12.super.isa recurrenceRule];
    v19 = objc_allocWithZone(INDateComponentsRange);
    v20 = sub_B86A8(v11, v9, v18);
    v21 = [v20 endDateComponents];
    if (v21)
    {
      v22 = v21;
      sub_104570();

      v23 = 0;
      v12.super.isa = v20;
      v20 = v22;
    }

    else
    {

      v23 = 1;
    }

    v14(v6, v23, 1, v13);
    return sub_7C278(v6, a1, &qword_137500, &qword_107E10);
  }

  else
  {
    v24 = sub_1045E0();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

uint64_t sub_B5E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E4(&qword_139FC8, &unk_10A8E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  swift_beginAccess();
  sub_14994(v1 + v10, v9, &qword_139FC8, &unk_10A8E0);
  v11 = sub_25E4(&qword_137500, &qword_107E10);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_7C278(v9, a1, &qword_137500, &qword_107E10);
  }

  sub_16F70(v9, &qword_139FC8, &unk_10A8E0);
  sub_B6070(a1);
  sub_14994(a1, v7, &qword_137500, &qword_107E10);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_57A78(v7, v1 + v10, &qword_139FC8, &unk_10A8E0);
  return swift_endAccess();
}

uint64_t sub_B6070@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v44 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v44 - v11;
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_105700();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v44 - v22;
  sub_B245C(&v44 - v22);
  if ((*(v16 + 48))(v23, 1, v15))
  {
    sub_16F70(v23, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v16 + 16))(v19, v23, v15);
    sub_16F70(v23, &qword_13AFE0, &qword_10A320);
    v30 = sub_105690();
    (*(v16 + 8))(v19, v15);
    if (v30)
    {

      v31 = sub_106220();

      v45 = a1;
      if (v31)
      {
        v32.super.isa = sub_105F20().super.isa;
      }

      else
      {
        v32.super.isa = 0;
      }

      v33 = sub_1045E0();
      v34 = *(*(v33 - 8) + 56);
      v34(v14, 1, 1, v33);
      if (v32.super.isa)
      {
        v35 = [(objc_class *)v32.super.isa startDateComponents];
        if (v35)
        {
          v36 = v35;
          sub_104570();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        v34(v9, v37, 1, v33);
        sub_7C278(v9, v12, &qword_137500, &qword_107E10);
      }

      else
      {
        v34(v12, 1, 1, v33);
      }

      v38 = [(objc_class *)v32.super.isa recurrenceRule];
      v39 = objc_allocWithZone(INDateComponentsRange);
      v40 = sub_B86A8(v14, v12, v38);
      v41 = [v40 endDateComponents];
      if (v41)
      {
        v42 = v41;
        sub_104570();

        v43 = 0;
        v40 = v42;
      }

      else
      {
        v43 = 1;
      }

      v34(v6, v43, 1, v33);
      return sub_7C278(v6, v45, &qword_137500, &qword_107E10);
    }
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v24 = sub_106D20();
  sub_135C4(v24, qword_139B30);
  v25 = sub_106D10();
  v26 = sub_106FC0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "No alarmTime node in parse in alarmNewDateTimeFromStartTime", v27, 2u);
  }

  v28 = sub_1045E0();
  return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
}

uint64_t sub_B65C0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;

    sub_B8878(v6);
  }

  sub_B8CB4(v4);
  return v5;
}

uint64_t sub_B6630()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  sub_B245C(&v16 - v7);
  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
    v14 = sub_105690();
    (*(v1 + 8))(v4, v0);
    if (v14)
    {

      v15 = sub_106230();

      return v15;
    }
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v9 = sub_106D20();
  sub_135C4(v9, qword_139B30);
  v10 = sub_106D10();
  v11 = sub_106FC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "No alarmTime node in parse in inferredDateTimeRange", v12, 2u);
  }

  return 0;
}

id sub_B68AC()
{
  v1 = v0;
  v2 = sub_105700();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  __chkstk_darwin(v2);
  v101 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v97 - v7;
  v9 = sub_25E4(&qword_13A018, &qword_10A8F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v97 - v11;
  v12 = sub_1045E0();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_106290();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25E4(&qword_1376F0, &unk_10A900);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v97 - v22;
  v24 = sub_B3658();
  if (v24 == 35)
  {
    goto LABEL_10;
  }

  if (sub_B19AC(v24) == 6647407 && v25 == 0xE300000000000000)
  {
  }

  else
  {
    v26 = sub_107370();

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = sub_105B10();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_105B00();
  v30 = sub_105950();

  if (!v30)
  {
LABEL_10:
    if (sub_B65A0() && (v33 = sub_105F80(), , v33))
    {
      v34 = sub_105F00();

      v35 = v34 ^ 1;
    }

    else
    {
      v35 = 1;
    }

    if (qword_136DC0 != -1)
    {
      swift_once();
    }

    v103 = v8;
    v36 = sub_106D20();
    sub_135C4(v36, qword_139B30);

    v37 = sub_106D10();
    v38 = sub_106FC0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v107 = v40;
      *v39 = 136315138;
      v106 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);

      sub_25E4(&qword_139AA8, "FW");
      v41 = sub_106E30();
      v43 = sub_722E8(v41, v42, &v107);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "inferredDateTimeRange: %s", v39, 0xCu);
      sub_2738(v40);
    }

    v44 = sub_106D10();
    v45 = sub_106FC0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v35;
      v47 = 7104878;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v107 = v49;
      *v48 = 136315394;
      v50 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);
      if (v50 && (v51 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange), , v52 = sub_105F80(), sub_B8878(v50), v52))
      {
        v53 = sub_105F00();

        if (v53)
        {
          v47 = 1702195828;
        }

        else
        {
          v47 = 0x65736C6166;
        }

        if (v53)
        {
          v54 = 0xE400000000000000;
        }

        else
        {
          v54 = 0xE500000000000000;
        }
      }

      else
      {
        v54 = 0xE300000000000000;
      }

      v55 = sub_722E8(v47, v54, &v107);

      *(v48 + 4) = v55;
      *(v48 + 12) = 1024;
      *(v48 + 14) = v46 & 1;
      _os_log_impl(&dword_0, v44, v45, "In alarmNLv3Intent.alarmSearch: SiriInference.meridiemSetByUser = %s, isMeridianInferred = %{BOOL}d", v48, 0x12u);
      sub_2738(v49);
    }

    sub_B2180();
    if (v56)
    {
      v57 = sub_106E10();
    }

    else
    {
      v57 = 0;
    }

    sub_106A50();
    v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v59 = sub_106E10();
    v60 = [v58 initWithIdentifier:v57 displayString:v59];

    if (sub_B3584())
    {
      v61 = 2 * (*(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) == 27);
    }

    else
    {
      v61 = 3;
    }

    [v60 setAlarmReferenceType:v61];
    if (sub_B4E38())
    {
      [v60 setTime:0];
      v62 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);
      if (v62)
      {
        v63 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);

        v64 = sub_105F10(1);
        sub_B8878(v62);
      }

      else
      {
        v64 = 0;
      }

      [v60 setTimeRange:v64];
    }

    else
    {
      v65 = v103;
      sub_B245C(v103);
      v66 = v104;
      v67 = v105;
      if ((*(v104 + 48))(v65, 1, v105))
      {
        sub_16F70(v65, &qword_13AFE0, &qword_10A320);
        isa = 0;
      }

      else
      {
        v69 = v101;
        (*(v66 + 16))(v101, v65, v67);
        sub_16F70(v65, &qword_13AFE0, &qword_10A320);
        v70 = v102;
        sub_105680();
        (*(v66 + 8))(v69, v67);
        v71 = sub_105780();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          sub_16F70(v70, &qword_13A018, &qword_10A8F8);
          isa = 0;
        }

        else
        {
          sub_105760();
          (*(v72 + 8))(v70, v71);
          v73 = v98;
          sub_105EE0();

          isa = sub_104560().super.isa;
          (*(v99 + 8))(v73, v100);
        }
      }

      [v60 setTime:isa];

      [v60 setTimeRange:0];
    }

    sub_B2290();
    if (v74)
    {
      v75 = sub_106E10();
    }

    else
    {
      v75 = 0;
    }

    [v60 setLabel:v75];

    v76 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes;
    v77 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes);
    if (v77 == 5)
    {
      v78 = 1;
    }

    else
    {
      v78 = 2 * (v77 == 6);
    }

    [v60 setAlarmSearchStatus:v78];
    v79 = *(v1 + v76) == 11;
    sub_1F7B8();
    v80 = sub_107090(v79).super.super.isa;
    [v60 setIncludeSleepAlarm:v80];

    [v60 setPeriod:sub_B4E38()];
    v81 = sub_106F50();
    [v60 setIsMeridianInferred:v81];
    goto LABEL_53;
  }

  sub_106280();
  sub_106270();
  (*(v16 + 8))(v19, v15);
  v31 = sub_106D80();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v23, 1, v31) == 1)
  {

    sub_16F70(v23, &qword_1376F0, &unk_10A900);
    goto LABEL_10;
  }

  sub_106AA0();
  v83 = sub_106D50();
  (*(v32 + 8))(v23, v31);
  if (!v83)
  {

    goto LABEL_10;
  }

  v84 = [v83 identifier];
  if (!v84)
  {

    goto LABEL_10;
  }

  v85 = v84;
  v86 = sub_106E20();
  v88 = v87;
  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v89 = sub_106D20();
  sub_135C4(v89, qword_139B30);

  v90 = sub_106D10();
  v91 = sub_106FC0();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v107 = v93;
    *v92 = 136315138;
    v94 = sub_722E8(v86, v88, &v107);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_0, v90, v91, "Resolved alarm from SRR. Using its id %s to search alarm.", v92, 0xCu);
    sub_2738(v93);
  }

  else
  {
  }

  sub_106A50();
  v95 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v96 = sub_106E10();
  v60 = [v95 initWithIdentifier:v85 displayString:v96];

  sub_1F7B8();
  v81 = sub_107090(1).super.super.isa;
  [v60 setIncludeSleepAlarm:v81];

LABEL_53:
  return v60;
}

uint64_t sub_B75C0()
{
  v1 = v0;
  v2 = sub_B20AC();
  if (v2 == 5)
  {
    return 1;
  }

  if (v2 == 6)
  {
    return 2;
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v4 = sub_106D20();
  sub_135C4(v4, qword_139B30);

  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v12 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
    sub_25E4(&qword_137568, &qword_10A8F0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Invalid alarmChangeStatusOperation based on alarmVerb %s", v7, 0xCu);
    sub_2738(v8);
  }

  return 0;
}

uint64_t sub_B7768()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v2 = sub_105E80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode);

  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8));
  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8));
  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime, &qword_139FC0, &qword_10A8D8);
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, &qword_139FC0, &qword_10A8D8);
  sub_B8868(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime));
  sub_B8878(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime, &qword_139FC8, &unk_10A8E0);
  sub_B8878(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange));
  return v0;
}

uint64_t sub_B78AC()
{
  sub_B7768();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlarmNLIntent()
{
  result = qword_139BD8;
  if (!qword_139BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B7958()
{
  v0 = sub_105E80();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_B7ADC(319, &qword_139BE8, &qword_13AFE0, &qword_10A320);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_B7ADC(319, &unk_139BF0, &qword_137500, &qword_107E10);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_B7ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_14EB0(a3, a4);
    v5 = sub_1070E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B7F34()
{
  result = qword_139EA8;
  if (!qword_139EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EA8);
  }

  return result;
}

unint64_t sub_B7FD0()
{
  result = qword_139EC0;
  if (!qword_139EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EC0);
  }

  return result;
}

unint64_t sub_B8028()
{
  result = qword_139EC8;
  if (!qword_139EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EC8);
  }

  return result;
}

unint64_t sub_B8080()
{
  result = qword_139ED0;
  if (!qword_139ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139ED0);
  }

  return result;
}

unint64_t sub_B811C()
{
  result = qword_139EE8;
  if (!qword_139EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EE8);
  }

  return result;
}

unint64_t sub_B8174()
{
  result = qword_139EF0;
  if (!qword_139EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EF0);
  }

  return result;
}

unint64_t sub_B81CC()
{
  result = qword_139EF8;
  if (!qword_139EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EF8);
  }

  return result;
}

unint64_t sub_B8268()
{
  result = qword_139F10;
  if (!qword_139F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F10);
  }

  return result;
}

unint64_t sub_B82C0()
{
  result = qword_139F18;
  if (!qword_139F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F18);
  }

  return result;
}

unint64_t sub_B8318()
{
  result = qword_139F20;
  if (!qword_139F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F20);
  }

  return result;
}

unint64_t sub_B83B4()
{
  result = qword_139F38;
  if (!qword_139F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F38);
  }

  return result;
}

unint64_t sub_B840C()
{
  result = qword_139F40;
  if (!qword_139F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F40);
  }

  return result;
}

uint64_t sub_B8460@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v5 = sub_105E80();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_B84F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_B8554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_B85A8()
{
  swift_getWitnessTable();

  return sub_105620();
}

uint64_t sub_B8664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlarmNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_B86A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1045E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  isa = 0;
  if (v10(a1, 1, v8) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_104560().super.isa;
    (*(v9 + 8))(a2, v8);
  }

  v13 = [v4 initWithStartDateComponents:isa endDateComponents:v12 recurrenceRule:a3];

  return v13;
}

uint64_t sub_B880C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B8854(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_B8868(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_B8878(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_B8888()
{
  result = qword_139FD0;
  if (!qword_139FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FD0);
  }

  return result;
}

unint64_t sub_B88DC()
{
  result = qword_139FD8;
  if (!qword_139FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FD8);
  }

  return result;
}

uint64_t sub_B8930()
{
  if (qword_136DD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AlarmNLIntent();
  sub_B8664(&qword_139F48);
  sub_105870();
  if (!v3)
  {
    return 0;
  }

  result = v2;
  v1 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v1 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    return 0;
  }

  return result;
}

uint64_t sub_B8A14()
{
  v0 = sub_107390();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_B8A68()
{
  result = qword_139FE0;
  if (!qword_139FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FE0);
  }

  return result;
}

unint64_t sub_B8ABC()
{
  result = qword_139FE8;
  if (!qword_139FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FE8);
  }

  return result;
}

unint64_t sub_B8B10()
{
  result = qword_139FF0;
  if (!qword_139FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FF0);
  }

  return result;
}

unint64_t sub_B8B64()
{
  result = qword_139FF8;
  if (!qword_139FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FF8);
  }

  return result;
}

unint64_t sub_B8BB8()
{
  result = qword_13A000;
  if (!qword_13A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A000);
  }

  return result;
}

unint64_t sub_B8C0C()
{
  result = qword_13A008;
  if (!qword_13A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A008);
  }

  return result;
}

unint64_t sub_B8C60()
{
  result = qword_13A010;
  if (!qword_13A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A010);
  }

  return result;
}

uint64_t sub_B8CB4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_B8CC4(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_B8CD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for ChangeAlarmStatusCATsSimple()
{
  result = qword_13A068;
  if (!qword_13A068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B8D8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B8DAC, 0, 0);
}

uint64_t sub_B8DAC()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_107FC0;
  *(v2 + 32) = 0x616C417065656C73;
  *(v2 + 40) = 0xEA00000000006D72;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_B8EF8;
  v6 = v0[3];

  return v8(0xD00000000000002DLL, 0x800000000010DF40, v2);
}

uint64_t sub_B8EF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_B9618, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_B9050(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B9070, 0, 0);
}

uint64_t sub_B9070()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_107FC0;
  *(v2 + 32) = 0x616C417065656C73;
  *(v2 + 40) = 0xEA00000000006D72;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_B91BC;
  v6 = v0[3];

  return v8(0xD00000000000002CLL, 0x800000000010DF10, v2);
}

uint64_t sub_B91BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_B9314, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_B9314()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_B9378(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_B9500(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_106180();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_B9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B9700(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa()
{
  result = qword_13A128;
  if (!qword_13A128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B97FC()
{
  sub_1B2C0();
  if (v0 <= 0x3F)
  {
    sub_B9880();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_B9880()
{
  if (!qword_13A138)
  {
    sub_106630();
    v0 = sub_1070E0();
    if (!v1)
    {
      atomic_store(v0, &qword_13A138);
    }
  }
}

uint64_t sub_B98D8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A0B8);
  sub_135C4(v0, qword_13A0B8);
  return sub_106A80();
}

uint64_t sub_B9924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (qword_136E18 != -1)
  {
    swift_once();
  }

  v10 = sub_106D20();
  sub_135C4(v10, qword_13A0B8);
  v11 = sub_106D10();
  v12 = sub_106FC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "SnoozeAlarm.ConfirmIntentStrategy.actionForInput() called.", v13, 2u);
  }

  v14 = *(_s21ConfirmIntentStrategyVMa() + 20);
  v15 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v16 = sub_106450();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  sub_3D83C(a1, v3 + v14, 0, v9, a2);
  return sub_16F70(v9, &unk_1374C0, &unk_1087B0);
}

uint64_t sub_B9B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_25E4(&unk_137460, &unk_108C60) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1050D0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_B9C20, 0, 0);
}

uint64_t sub_B9C20()
{
  if (qword_136E18 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A0B8);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SnoozeAlarm.ConfirmIntentStrategy.parseConfirmationResponse() called.", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  sub_1174C(v10, v5);
  (*(v6 + 16))(v7, v5, v8);
  (*(v6 + 56))(v7, 0, 1, v8);
  sub_25E4(&qword_139638, &unk_109D20);
  sub_105170();
  sub_1068B0();
  sub_105080();
  (*(v6 + 8))(v5, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_B9E08(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_25E4(&qword_1375A8, &qword_10AA90) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_105030();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(sub_104D60() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_1051E0();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_106D20();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = sub_106300();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = sub_106320();
  v2[23] = v17;
  v18 = *(v17 - 8);
  v2[24] = v18;
  v19 = *(v18 + 64) + 15;
  v2[25] = swift_task_alloc();
  v20 = sub_106370();
  v2[26] = v20;
  v21 = *(v20 - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v23 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v24 = sub_104FF0();
  v2[33] = v24;
  v25 = *(v24 - 8);
  v2[34] = v25;
  v26 = *(v25 + 64) + 15;
  v2[35] = swift_task_alloc();
  v27 = sub_106960();
  v2[36] = v27;
  v28 = *(v27 - 8);
  v2[37] = v28;
  v29 = *(v28 + 64) + 15;
  v2[38] = swift_task_alloc();
  v30 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_BA25C, 0, 0);
}

uint64_t sub_BA25C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 64);
  v3 = *(_s21ConfirmIntentStrategyVMa() + 20);
  sub_14994(v2 + v3, v1, &qword_1374F0, &qword_1080F0);
  v4 = sub_106630();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 328);
  if (v7 == 1)
  {
    sub_16F70(*(v0 + 328), &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v9 = sub_106520();
    (*(v5 + 8))(v8, v4);
    if (v9)
    {
      v99 = sub_106C00();

      goto LABEL_6;
    }
  }

  v99 = 0;
LABEL_6:
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);
  (*(*(v0 + 296) + 104))(v11, enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:), *(v0 + 288));
  sub_BD9B4(v11, v12);
  sub_14994(v2 + v3, v10, &qword_1374F0, &qword_1080F0);
  v13 = v6(v10, 1, v4);
  v14 = *(v0 + 320);
  v95 = v5;
  v101 = v3;
  if (v13 == 1)
  {
    v15 = v6;
    v16 = v2;
    sub_16F70(v14, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v17 = sub_106520();
    (*(v5 + 8))(v14, v4);
    if (v17)
    {
      sub_106C50();
      v19 = v18;

      if (v19)
      {
        v15 = v6;
        v16 = v2;
        v20 = *(v0 + 256);
        sub_106E50();

        v21 = 0;
        goto LABEL_13;
      }
    }

    v15 = v6;
    v16 = v2;
  }

  v21 = 1;
LABEL_13:
  v22 = *(v0 + 312);
  v23 = *(v0 + 256);
  v24 = sub_106160();
  v97 = *(v24 - 8);
  v25 = *(v97 + 56);
  v26 = v23;
  v27 = v24;
  v25(v26, v21, 1);
  sub_14994(v16 + v101, v22, &qword_1374F0, &qword_1080F0);
  v28 = v15(v22, 1, v4);
  v29 = *(v0 + 312);
  if (v28 == 1)
  {
    sub_16F70(*(v0 + 312), &qword_1374F0, &qword_1080F0);
    v30 = 1;
    v31 = v27;
  }

  else
  {
    v32 = sub_106520();
    (*(v95 + 8))(v29, v4);
    v31 = v27;
    if (v32 && (sub_106C60(), v34 = v33, v32, v34))
    {
      v35 = *(v0 + 248);
      sub_106E50();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  v37 = *(v0 + 216);
  v36 = *(v0 + 224);
  v38 = *(v0 + 208);
  (v25)(*(v0 + 248), v30, 1, v31);
  sub_106360();
  v39 = sub_106350();
  (*(v37 + 8))(v36, v38);
  if (v39)
  {
    v40 = sub_105040();

    v42 = sub_1070B0();
    v44 = v43;

    *(v0 + 336) = v44;
    if (v44)
    {
      v45 = sub_105040();
      v47 = v46;

      v48 = sub_1070B0();
      v50 = v49;

      *(v0 + 344) = v50;
      if (v50)
      {
        (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
        if (qword_136E18 != -1)
        {
          swift_once();
        }

        v51 = *(v0 + 200);
        v52 = *(v0 + 176);
        v53 = *(v0 + 144);
        v54 = *(v0 + 152);
        v55 = *(v0 + 136);
        v56 = sub_135C4(v55, qword_13A0B8);
        (*(v53 + 16))(v54, v56, v55);
        mach_absolute_time();
        sub_106330();
        if (qword_136D20 != -1)
        {
          swift_once();
        }

        v57 = swift_task_alloc();
        *(v0 + 352) = v57;
        v57[1] = vextq_s8(*(v0 + 248), *(v0 + 248), 8uLL);
        v57[2].i64[0] = v48;
        v57[2].i64[1] = v50;
        v57[3].i64[0] = v42;
        v57[3].i64[1] = v44;
        v58 = swift_task_alloc();
        *(v0 + 360) = v58;
        *v58 = v0;
        v58[1] = sub_BAD7C;

        return sub_7CF48(v99 & 1, (v99 & 1) == 0, sub_BCA0C, v57);
      }
    }

    if (qword_136E18 != -1)
    {
      swift_once();
    }

    sub_135C4(*(v0 + 136), qword_13A0B8);
    v75 = sub_106D10();
    v76 = sub_106FB0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Could not create direct invocation for confirm or reject actions.", v77, 2u);
    }

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v78 = 0;
    swift_willThrow();
    v79 = *(v0 + 328);
    v86 = *(v0 + 320);
    v87 = *(v0 + 312);
    v81 = *(v0 + 272);
    v80 = *(v0 + 280);
    v83 = *(v0 + 256);
    v82 = *(v0 + 264);
    v84 = *(v0 + 248);
    v88 = *(v0 + 240);
    v89 = *(v0 + 232);
    v90 = *(v0 + 224);
    v91 = *(v0 + 200);
    v92 = *(v0 + 176);
    v93 = *(v0 + 152);
    v94 = *(v0 + 128);
    v96 = *(v0 + 104);
    v98 = *(v0 + 96);
    v100 = *(v0 + 72);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    sub_16F70(v84, &qword_137598, &unk_107EB0);
    sub_16F70(v83, &qword_137598, &unk_107EB0);
    (*(v81 + 8))(v80, v82);

    v85 = *(v0 + 8);

    return v85();
  }

  else
  {
    if (qword_136D18 != -1)
    {
      swift_once();
    }

    v60 = *(v0 + 256);
    v61 = *(v0 + 240);
    sub_25E4(&qword_137880, &unk_108290);
    v62 = swift_allocObject();
    *(v0 + 400) = v62;
    *(v62 + 16) = xmmword_108210;
    *(v62 + 32) = 0x6E6F737265507369;
    *(v62 + 40) = 0xEA00000000006C61;
    *(v62 + 48) = (v99 & 1) == 0;
    *(v62 + 72) = &type metadata for Bool;
    *(v62 + 80) = 0x6E756D6D6F437369;
    *(v62 + 88) = 0xEA00000000006C61;
    *(v62 + 96) = v99 & 1;
    *(v62 + 120) = &type metadata for Bool;
    *(v62 + 128) = 0x614E656369766564;
    *(v62 + 136) = 0xEA0000000000656DLL;
    sub_14994(v60, v61, &qword_137598, &unk_107EB0);
    v63 = *(v97 + 48);
    v64 = v63(v61, 1, v31);
    v65 = *(v0 + 240);
    if (v64 == 1)
    {
      sub_16F70(*(v0 + 240), &qword_137598, &unk_107EB0);
      *(v62 + 144) = 0u;
      *(v62 + 160) = 0u;
    }

    else
    {
      *(v62 + 168) = v31;
      v66 = sub_1A924((v62 + 144));
      (*(v97 + 32))(v66, v65, v31);
    }

    v67 = *(v0 + 248);
    v68 = *(v0 + 232);
    *(v62 + 176) = 0x656D614E6D6F6F72;
    *(v62 + 184) = 0xE800000000000000;
    sub_14994(v67, v68, &qword_137598, &unk_107EB0);
    v69 = v63(v68, 1, v31);
    v70 = *(v0 + 232);
    if (v69 == 1)
    {
      sub_16F70(*(v0 + 232), &qword_137598, &unk_107EB0);
      *(v62 + 192) = 0u;
      *(v62 + 208) = 0u;
    }

    else
    {
      *(v62 + 216) = v31;
      v71 = sub_1A924((v62 + 192));
      (*(v97 + 32))(v71, v70, v31);
    }

    v72 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
    v102 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
    v73 = swift_task_alloc();
    *(v0 + 408) = v73;
    *v73 = v0;
    v73[1] = sub_BB368;
    v74 = *(v0 + 96);

    return v102(v74, 0xD000000000000024, 0x800000000010DFE0, v62);
  }
}

uint64_t sub_BAD7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = v1;

  v7 = v4[44];
  v8 = v4[43];
  v9 = v4[42];
  if (v1)
  {

    v10 = sub_BBCAC;
  }

  else
  {
    v4[47] = a1;

    v10 = sub_BAF0C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_BAF0C()
{
  v1 = v0[35];
  v2 = v0[16];
  v3 = v0[13];
  sub_104D00();
  *(swift_task_alloc() + 16) = v1;
  sub_1051B0();

  v4 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_BB008;
  v6 = v0[47];
  v7 = v0[25];
  v8 = v0[16];
  v9 = v0[7];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_BB008()
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 392) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_BBE7C;
  }

  else
  {
    v7 = sub_BB198;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_BB198()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[40];
  v4 = v0[41];
  v12 = v0[39];
  v13 = v0[38];
  v6 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v14 = v0[30];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[9];
  sub_16F70(v0[31], &qword_137598, &unk_107EB0);
  sub_16F70(v9, &qword_137598, &unk_107EB0);
  (*(v6 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_BB368()
{
  v2 = *(*v1 + 408);
  v3 = *v1;
  v3[52] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BBAEC, 0, 0);
  }

  else
  {
    v4 = v3[50];

    v5 = swift_task_alloc();
    v3[53] = v5;
    *v5 = v3;
    v5[1] = sub_BB4FC;
    v6 = v3[38];

    return sub_863DC(v6);
  }
}

uint64_t sub_BB4FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v7 = sub_BB91C;
  }

  else
  {
    *(v4 + 440) = a1;
    v7 = sub_BB624;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_BB624()
{
  v24 = *(v0 + 440);
  v34 = *(v0 + 304);
  v1 = *(v0 + 280);
  v30 = *(v0 + 296);
  v32 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v22 = *(v0 + 96);
  v4 = *(v0 + 72);
  v26 = *(v0 + 88);
  v28 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v6[4];
  sub_1A8E0(v6, v6[3]);
  sub_104CC0();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v8 = sub_105430();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v8;
  v5[4] = &protocol witness table for AceOutput;
  sub_1A924(v5);
  sub_104EE0();

  sub_16F70(v0 + 16, &qword_1375B0, &qword_107EC0);
  sub_16F70(v4, &qword_1375A8, &qword_10AA90);
  (*(v26 + 8))(v22, v28);
  (*(v30 + 8))(v34, v32);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v17 = *(v0 + 312);
  v18 = *(v0 + 304);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 224);
  v23 = *(v0 + 200);
  v25 = *(v0 + 176);
  v27 = *(v0 + 152);
  v29 = *(v0 + 128);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);
  v35 = *(v0 + 72);
  sub_16F70(*(v0 + 248), &qword_137598, &unk_107EB0);
  sub_16F70(v14, &qword_137598, &unk_107EB0);
  (*(v11 + 8))(v12, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_BB91C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v21 = v0[54];
  v1 = v0[41];
  v9 = v0[40];
  v10 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v11 = v0[30];
  v12 = v0[29];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[9];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v6, &qword_137598, &unk_107EB0);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_BBAEC()
{
  v1 = v0[50];

  v22 = v0[52];
  v2 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v12 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[9];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v7, &qword_137598, &unk_107EB0);
  sub_16F70(v6, &qword_137598, &unk_107EB0);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BBCAC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v21 = v0[46];
  v1 = v0[41];
  v9 = v0[40];
  v10 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v11 = v0[30];
  v12 = v0[29];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[9];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v6, &qword_137598, &unk_107EB0);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_BBE7C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v21 = v0[49];
  v1 = v0[41];
  v9 = v0[40];
  v10 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v11 = v0[30];
  v12 = v0[29];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[9];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v6, &qword_137598, &unk_107EB0);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_BC04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  sub_7C2E0(a2, a1 + v10[5]);
  sub_7C2E0(a3, a1 + v10[8]);

  sub_106130();
  v11 = sub_106160();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  sub_1A814(v9, a1);

  sub_106130();
  v12(v9, 0, 1, v11);
  return sub_1A814(v9, a1 + v10[9]);
}

uint64_t sub_BC1CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  sub_1051D0();
  v7 = sub_104FF0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_1051C0();
}

uint64_t sub_BC2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_B9B24(a1, a2, a3);
}

uint64_t sub_BC388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_BC430;

  return sub_B9E08(a1);
}

uint64_t sub_BC430()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BC564, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_BC564()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_BC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA94;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_BCA0C(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  return sub_BC04C(a1, v1[2], v1[3]);
}

uint64_t sub_BCA84()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  strcpy((v5 + 32), "isMixedAlarms");
  *(v5 + 46) = -4864;
  *(v5 + 48) = *v0;
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 80) = 0xD000000000000010;
  *(v5 + 88) = 0x800000000010C5B0;
  *(v5 + 96) = v0[1];
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = 0xD000000000000018;
  *(v5 + 136) = 0x800000000010C5D0;
  *(v5 + 144) = v0[2];
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 176) = 0xD000000000000012;
  *(v5 + 184) = 0x800000000010C5F0;
  *(v5 + 192) = v0[3];
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 224) = 0xD000000000000016;
  *(v5 + 232) = 0x800000000010C610;
  *(v5 + 240) = v0[4];
  *(v5 + 264) = &type metadata for Bool;
  *(v5 + 272) = 0xD000000000000016;
  *(v5 + 280) = 0x800000000010C630;
  *(v5 + 288) = v0[5];
  *(v5 + 312) = &type metadata for Bool;
  *(v5 + 320) = 0xD000000000000017;
  *(v5 + 328) = 0x800000000010C650;
  *(v5 + 336) = v0[6];
  *(v5 + 360) = &type metadata for Bool;
  *(v5 + 368) = 0x68637461577369;
  *(v5 + 376) = 0xE700000000000000;
  *(v5 + 384) = v0[7];
  *(v5 + 408) = &type metadata for Bool;
  *(v5 + 416) = 0xD000000000000012;
  *(v5 + 424) = 0x800000000010C670;
  v6 = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  sub_14994(&v0[*(v6 + 48)], v4, &qword_137598, &unk_107EB0);
  v7 = sub_106160();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v7;
    v9 = sub_1A924((v5 + 432));
    (*(v8 + 32))(v9, v4, v7);
  }

  *(v5 + 464) = 0xD000000000000011;
  *(v5 + 472) = 0x800000000010C690;
  v10 = *&v0[*(v6 + 52)];
  if (v10)
  {
    v11 = sub_1060A0();
  }

  else
  {
    v11 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
  }

  *(v5 + 480) = v10;
  *(v5 + 504) = v11;

  return v5;
}

uint64_t sub_BCDA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_BCF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_BD070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = a2;
  }

  return result;
}

uint64_t sub_BD14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BD1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_BD274()
{
  sub_7EC90(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_BD2FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A2F8);
  sub_135C4(v0, qword_13A2F8);
  return sub_106A80();
}

uint64_t sub_BD348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a2;
    sub_106AA0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = objc_allocWithZone(ObjCClassFromMetadata);

      v10 = sub_106E10();
      v11 = sub_106E10();
      [v9 initWithIdentifier:v10 displayString:v11];

      sub_106EC0();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v12 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      v6 += 2;
      --v2;
    }

    while (v2);
    a2 = v4;
  }

  sub_BD4A4(&_swiftEmptyArrayStorage, a2);
}

uint64_t sub_BD4A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_1376F0, &unk_10A900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v48 = sub_106D80();
  v44 = *(v48 - 8);
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v11;
  v45 = sub_1046B0();
  v42 = *(v45 - 1);
  v12 = *(v42 + 64);
  __chkstk_darwin(v45);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  sub_104FE0();
  v50 = &_swiftEmptyArrayStorage;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    v16 = sub_107270();
  }

  else
  {
    v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v17 = 0;
  v49 = a1 & 0xC000000000000001;
  while (v16 != v17)
  {
    if (v49)
    {
      v18 = sub_1071C0();
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_783D0();
    v22 = v21;

    ++v17;
    if (v22)
    {
      sub_106EC0();
      if (*(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v50 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v23 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      v17 = v20;
    }
  }

  sub_104F80();
  sub_1046A0();
  v46 = sub_104690();
  v25 = v24;
  (*(v42 + 8))(v14, v45);
  if (v16)
  {
    v26 = 0;
    v45 = (v44 + 48);
    v27 = (v44 + 32);
    v14 = &_swiftEmptyArrayStorage;
    v41 = v7;
    v42 = a1;
    v40 = v25;
    do
    {
      if (v49)
      {
        v28 = sub_1071C0();
      }

      else
      {
        if (v26 >= *(v15 + 16))
        {
          goto LABEL_33;
        }

        v28 = *(a1 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_32;
      }

      sub_7BCB0(v46, v25, v26, 0, v7);

      v31 = v48;
      if ((*v45)(v7, 1, v48) == 1)
      {
        sub_16F70(v7, &qword_1376F0, &unk_10A900);
      }

      else
      {
        v32 = v16;
        v33 = v15;
        v34 = *v27;
        v35 = v43;
        (*v27)(v43, v7, v31);
        v34(v47, v35, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_AD69C(0, *(v14 + 2) + 1, 1, v14);
        }

        v37 = *(v14 + 2);
        v36 = *(v14 + 3);
        v15 = v33;
        if (v37 >= v36 >> 1)
        {
          v14 = sub_AD69C(v36 > 1, v37 + 1, 1, v14);
        }

        v16 = v32;
        *(v14 + 2) = v37 + 1;
        v34(&v14[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37], v47, v48);
        v7 = v41;
        a1 = v42;
        v25 = v40;
      }

      ++v26;
    }

    while (v30 != v16);
  }

  return sub_104F40();
}

uint64_t sub_BD9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_13A328, "*Q");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_105560();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  sub_BEB14(a2);
  v19 = sub_105B10();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_105B00();
  sub_BFE60(a1, v22);

  sub_106500();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_16F70(v7, &qword_13A328, "*Q");
  }

  v35 = a2;
  (*(v9 + 32))(v18, v7, v8);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v24 = sub_106D20();
  sub_135C4(v24, qword_13A310);
  v25 = *(v9 + 16);
  v25(v16, v18, v8);
  v26 = sub_106D10();
  v27 = sub_106FC0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v28 = 136315138;
    v25(v13, v16, v8);
    v33 = sub_106E30();
    v30 = v29;
    v31 = *(v9 + 8);
    v31(v16, v8);
    v32 = sub_722E8(v33, v30, &v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v26, v27, "Submitting NLv4 dialog act: %s", v28, 0xCu);
    sub_2738(v34);
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v16, v8);
  }

  sub_104F20();
  return (v31)(v18, v8);
}

uint64_t sub_BDD88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v107 = a1;
  v7 = sub_25E4(&qword_1376F0, &unk_10A900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v106 = &v94 - v9;
  v112 = sub_106D80();
  v105 = *(v112 - 8);
  v10 = *(v105 + 64);
  v11 = __chkstk_darwin(v112);
  v111 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v104 = &v94 - v13;
  v109 = sub_1046B0();
  v99 = *(v109 - 8);
  v14 = *(v99 + 64);
  __chkstk_darwin(v109);
  v108 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_25E4(&qword_13A328, "*Q");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v98 = &v94 - v18;
  v110 = sub_105560();
  v19 = *(v110 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v110);
  v95 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v96 = &v94 - v24;
  __chkstk_darwin(v23);
  v103 = &v94 - v25;
  sub_104FE0();
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_107190(20);

  v113 = 0xD000000000000012;
  v114 = 0x800000000010C460;
  v115._countAndFlagsBits = sub_106E60();
  sub_106E80(v115);

  sub_104FA0();
  sub_104F70();
  v26 = sub_25E4(&qword_1376D0, &unk_1080E0);
  v27 = swift_allocObject();
  v100 = xmmword_107FC0;
  *(v27 + 16) = xmmword_107FC0;
  *(v27 + 32) = sub_2D40();
  *(v27 + 40) = v28;
  v102 = a4;
  sub_104F90();
  v101 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_108210;
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_107190(20);

  v113 = 0xD000000000000012;
  v114 = 0x800000000010C460;
  v116._countAndFlagsBits = sub_106E60();
  sub_106E80(v116);

  v30 = v114;
  *(v29 + 32) = v113;
  *(v29 + 40) = v30;
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_107190(20);

  v113 = 0xD000000000000012;
  v114 = 0x800000000010C460;
  v117._countAndFlagsBits = sub_106E60();
  sub_106E80(v117);

  v31 = v114;
  *(v29 + 48) = v113;
  *(v29 + 56) = v31;
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_107190(20);

  v113 = 0xD000000000000012;
  v114 = 0x800000000010C460;
  v118._countAndFlagsBits = sub_106E60();
  sub_106E80(v118);

  v32 = v114;
  *(v29 + 64) = v113;
  *(v29 + 72) = v32;
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_107190(20);

  v113 = 0xD000000000000012;
  v114 = 0x800000000010C460;
  v119._countAndFlagsBits = sub_106E60();
  sub_106E80(v119);

  v33 = v114;
  *(v29 + 80) = v113;
  *(v29 + 88) = v33;
  if (a3)
  {
    v97 = a2;
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_107190(20);

    v113 = 0xD000000000000012;
    v114 = 0x800000000010C460;
    v120._countAndFlagsBits = sub_106E60();
    sub_106E80(v120);

    v34 = v113;
    v35 = v114;
    v37 = *(v29 + 16);
    v36 = *(v29 + 24);
    if (v37 >= v36 >> 1)
    {
      v29 = sub_AD590((v36 > 1), v37 + 1, 1, v29);
    }

    v38 = v110;
    *(v29 + 16) = v37 + 1;
    v39 = v29 + 16 * v37;
    *(v39 + 32) = v34;
    *(v39 + 40) = v35;
    v113 = _swiftEmptyArrayStorage;
    sub_83424(0, 2, 0);
    v40 = v113;
    v41 = sub_2D40();
    v44 = v40[2];
    v43 = v40[3];
    if (v44 >= v43 >> 1)
    {
      v90 = v41;
      v91 = v42;
      sub_83424((v43 > 1), v44 + 1, 1);
      v42 = v91;
      v41 = v90;
      v40 = v113;
    }

    v40[2] = v44 + 1;
    v45 = &v40[2 * v44];
    v45[4] = v41;
    v45[5] = v42;
    v46 = sub_2D40();
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      v92 = v46;
      v93 = v47;
      sub_83424((v48 > 1), v49 + 1, 1);
      v47 = v93;
      v46 = v92;
      v40 = v113;
    }

    v40[2] = v49 + 1;
    v50 = &v40[2 * v49];
    v50[4] = v46;
    v50[5] = v47;
    sub_104FB0();
    a2 = v97;
  }

  else
  {
    v38 = v110;
  }

  v97 = v29;

  v51 = sub_104FC0();
  __chkstk_darwin(v51);
  *(&v94 - 2) = a2;
  sub_BE954(sub_C03B0, (&v94 - 4), v107);
  v52 = v98;
  sub_105530();

  if ((*(v19 + 48))(v52, 1, v38) == 1)
  {
    sub_16F70(v52, &qword_13A328, "*Q");
    v53 = v107;
  }

  else
  {
    v54 = v103;
    (*(v19 + 32))(v103, v52, v38);
    if (qword_136E28 != -1)
    {
      swift_once();
    }

    v55 = sub_106D20();
    sub_135C4(v55, qword_13A310);
    v56 = *(v19 + 16);
    v57 = v96;
    v56(v96, v54, v38);
    v58 = sub_106D10();
    v59 = sub_106FC0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v113 = v61;
      *v60 = 136315138;
      v56(v95, v57, v38);
      v62 = sub_106E30();
      v64 = v63;
      v65 = *(v19 + 8);
      v65(v57, v110);
      v66 = sub_722E8(v62, v64, &v113);

      *(v60 + 4) = v66;
      v38 = v110;
      _os_log_impl(&dword_0, v58, v59, "Submitting Alarm Disambiguation NLv4 dialog act: %s", v60, 0xCu);
      sub_2738(v61);
    }

    else
    {

      v65 = *(v19 + 8);
      v65(v57, v38);
    }

    v53 = v107;
    v67 = v103;
    sub_104F20();
    v65(v67, v38);
  }

  v68 = v106;
  sub_B0ADC(v53);
  sub_104F50();
  v69 = swift_allocObject();
  *(v69 + 16) = v100;
  *(v69 + 32) = sub_2D40();
  *(v69 + 40) = v70;
  sub_104FD0();
  v71 = v108;
  sub_1046A0();
  v72 = sub_104690();
  v74 = v73;
  (*(v99 + 8))(v71, v109);
  if (v53 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v76 = 0;
    v109 = v53 & 0xFFFFFFFFFFFFFF8;
    v110 = v53 & 0xC000000000000001;
    v108 = (v105 + 48);
    v77 = (v105 + 32);
    v78 = _swiftEmptyArrayStorage;
    v103 = i;
    while (1)
    {
      if (v110)
      {
        v79 = sub_1071C0();
      }

      else
      {
        if (v76 >= *(v109 + 16))
        {
          goto LABEL_35;
        }

        v79 = *(v53 + 8 * v76 + 32);
      }

      v80 = v79;
      v81 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      sub_7BCB0(v72, v74, v76, 0, v68);

      v82 = v112;
      if ((*v108)(v68, 1, v112) == 1)
      {
        sub_16F70(v68, &qword_1376F0, &unk_10A900);
      }

      else
      {
        v83 = v72;
        v84 = v74;
        v85 = *v77;
        v86 = v104;
        (*v77)(v104, v68, v82);
        v85(v111, v86, v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_AD69C(0, *(v78 + 2) + 1, 1, v78);
        }

        v88 = *(v78 + 2);
        v87 = *(v78 + 3);
        v74 = v84;
        if (v88 >= v87 >> 1)
        {
          v78 = sub_AD69C(v87 > 1, v88 + 1, 1, v78);
        }

        v72 = v83;
        *(v78 + 2) = v88 + 1;
        v85(&v78[((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v88], v111, v112);
        v68 = v106;
        v53 = v107;
        i = v103;
      }

      ++v76;
      if (v81 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return sub_104F40();
}

void *sub_BE954(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    sub_107220();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_1071C0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_107200();
      v12 = v16[2];
      sub_107230();
      sub_107240();
      sub_107210();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_BEAC8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A310);
  sub_135C4(v0, qword_13A310);
  return sub_106A80();
}

uint64_t sub_BEB14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_105480();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_105520();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  v7 = __chkstk_darwin(v5);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v47 - v9;
  v10 = sub_1054B0();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  v12 = __chkstk_darwin(v10);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v47 - v14;
  v15 = sub_105560();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  __chkstk_darwin(v15);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_104FE0();
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_107190(20);

  v62 = 0xD000000000000012;
  v63 = 0x800000000010C460;
  v64._countAndFlagsBits = sub_106E60();
  sub_106E80(v64);

  sub_104FA0();
  v60 = a1;
  sub_104F70();
  v61 = _swiftEmptyArrayStorage;
  sub_83424(0, 3, 0);
  v18 = 0;
  v19 = v61;
  do
  {
    v20 = *(&off_12F558 + v18 + 32);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_107190(20);

    v62 = 0xD000000000000012;
    v63 = 0x800000000010C460;
    v65._countAndFlagsBits = sub_106E60();
    sub_106E80(v65);

    v66._countAndFlagsBits = 0x2E65756C61562ELL;
    v66._object = 0xE700000000000000;
    sub_106E80(v66);
    v21 = sub_106E40();
    v23 = v22;

    v67._countAndFlagsBits = v21;
    v67._object = v23;
    sub_106E80(v67);

    v24 = v62;
    v25 = v63;
    v61 = v19;
    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      sub_83424((v26 > 1), v27 + 1, 1);
      v19 = v61;
    }

    ++v18;
    v19[2] = v27 + 1;
    v28 = &v19[2 * v27];
    v28[4] = v24;
    v28[5] = v25;
  }

  while (v18 != 3);
  sub_104FB0();
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v29 = swift_allocObject();
  v59 = xmmword_107FC0;
  *(v29 + 16) = xmmword_107FC0;
  *(v29 + 32) = sub_2D40();
  *(v29 + 40) = v30;
  sub_104F90();
  v31 = swift_allocObject();
  *(v31 + 16) = v59;
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_107190(20);

  v62 = 0xD000000000000012;
  v63 = 0x800000000010C460;
  v68._countAndFlagsBits = sub_106E60();
  sub_106E80(v68);

  v32 = v63;
  *(v31 + 32) = v62;
  *(v31 + 40) = v32;
  sub_104FC0();
  v33 = v48;
  sub_105550();
  v34 = v53;
  sub_1054A0();
  v35 = v56;
  sub_105510();
  sub_105470();
  sub_105500();
  v37 = v57;
  v36 = v58;
  (*(v57 + 16))(v49, v35, v58);
  sub_105490();
  v39 = v54;
  v38 = v55;
  (*(v54 + 16))(v47, v34, v55);
  sub_105540();
  sub_25E4(&qword_13A330, "*Q");
  v40 = v51;
  v41 = *(v51 + 72);
  v42 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v59;
  v44 = v43 + v42;
  v45 = v52;
  (*(v40 + 16))(v44, v33, v52);
  sub_104F60();
  (*(v37 + 8))(v35, v36);
  (*(v39 + 8))(v34, v38);
  return (*(v40 + 8))(v33, v45);
}

uint64_t sub_BF168@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_1054B0();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = __chkstk_darwin(v3);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  v39 = sub_105560();
  v35 = *(v39 - 8);
  v9 = v35;
  v10 = *(v35 + 64);
  __chkstk_darwin(v39);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_105480();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v33 = sub_105520();
  v40 = *(v33 - 8);
  v15 = *(v40 + 64);
  v16 = __chkstk_darwin(v33);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v31 - v19;
  sub_104FE0();
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_107190(20);

  v41 = 0xD000000000000012;
  v42 = 0x800000000010C460;
  v43._countAndFlagsBits = sub_106E60();
  sub_106E80(v43);

  v31[1] = a2;
  sub_104FA0();
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v21 = swift_allocObject();
  v32 = xmmword_107FC0;
  *(v21 + 16) = xmmword_107FC0;
  *(v21 + 32) = sub_2B5C();
  *(v21 + 40) = v22;
  sub_104FC0();
  sub_104F70();
  sub_105510();
  sub_105470();
  sub_105500();
  sub_105550();
  sub_1054A0();
  v23 = v33;
  (*(v40 + 16))(v18, v20, v33);
  sub_105490();
  v24 = v37;
  v25 = v38;
  (*(v37 + 16))(v36, v8, v38);
  sub_105540();
  sub_25E4(&qword_13A330, "*Q");
  v26 = *(v35 + 72);
  v27 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  v29 = v39;
  (*(v9 + 16))(v28 + v27, v12, v39);
  sub_104F60();
  (*(v24 + 8))(v8, v25);
  (*(v9 + 8))(v12, v29);
  return (*(v40 + 8))(v20, v23);
}

uint64_t sub_BF604@<X0>(int a1@<W0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25E4(&qword_13A328, "*Q");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v46 - v12;
  v14 = sub_105560();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v50 = &v46 - v20;
  __chkstk_darwin(v19);
  v22 = &v46 - v21;
  sub_BF168(a1, a5);
  v23 = a2(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  a3();
  v26 = sub_105B10();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_105B00();
  v30 = sub_105C00();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_105BF0();
  sub_105AE0();

  a4(v29);
  sub_1064F0();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_16F70(v13, &qword_13A328, "*Q");
  }

  v48 = a5;
  (*(v15 + 32))(v22, v13, v14);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v34 = sub_106D20();
  sub_135C4(v34, qword_13A310);
  v35 = *(v15 + 16);
  v36 = v50;
  v35(v50, v22, v14);
  v37 = sub_106D10();
  v38 = sub_106FC0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v47 = v22;
    v40 = v39;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v40 = 136315138;
    v35(v49, v36, v14);
    v41 = sub_106E30();
    v43 = v42;
    v44 = *(v15 + 8);
    v44(v36, v14);
    v45 = sub_722E8(v41, v43, &v51);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Submitting NLv4 dialog act: %s", v40, 0xCu);
    sub_2738(v46);

    v22 = v47;
  }

  else
  {

    v44 = *(v15 + 8);
    v44(v36, v14);
  }

  sub_104F20();
  return (v44)(v22, v14);
}

uint64_t sub_BFA60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_13A328, "*Q");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_105560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  sub_BF168(6, a1);
  v17 = sub_105D30();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_105D20();
  v20 = sub_105B10();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_105B00();
  sub_105AF0();
  sub_105E10();
  sub_1064F0();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_16F70(v5, &qword_13A328, "*Q");
  }

  v35 = a1;
  (*(v7 + 32))(v16, v5, v6);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v24 = sub_106D20();
  sub_135C4(v24, qword_13A310);
  v25 = *(v7 + 16);
  v25(v14, v16, v6);
  v26 = sub_106D10();
  v27 = sub_106FC0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v28 = 136315138;
    v25(v11, v14, v6);
    v33 = sub_106E30();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v14, v6);
    v32 = sub_722E8(v33, v30, &v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v26, v27, "Submitting NLv4 dialog act: %s", v28, 0xCu);
    sub_2738(v34);
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v14, v6);
  }

  sub_104F20();
  return (v31)(v16, v6);
}

uint64_t sub_BFE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v57 - v10;
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_13A310);
  v61 = *(v5 + 16);
  v61(v11, a1, v4);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v59 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v58 = v9;
    v18 = v17;
    v62 = v17;
    *v16 = 136315138;
    v19 = sub_106950();
    v60 = a2;
    v21 = v20;
    (*(v5 + 8))(v11, v4);
    v22 = sub_722E8(v19, v21, &v62);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "In alarmNLBuilderForVerb, verb = %s", v16, 0xCu);
    sub_2738(v18);
    v9 = v58;

    a1 = v59;
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  v61(v9, a1, v4);
  v23 = (*(v5 + 88))(v9, v4);
  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
  {
    goto LABEL_7;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    v28 = sub_105E30();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_105E20();
LABEL_10:
    v27 = v31;
    sub_105C70();
    return v27;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    v32 = sub_105CB0();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    return sub_105CA0();
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    v36 = sub_105CD0();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v31 = sub_105CC0();
    goto LABEL_10;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
    goto LABEL_17;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_19;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:))
  {
    v45 = sub_105C20();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v31 = sub_105C10();
    goto LABEL_10;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
  {
LABEL_7:
    v24 = sub_105D70();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_105D60();
    sub_105DF0();
    return v27;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
  {
    v48 = sub_105D10();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v31 = sub_105D00();
    goto LABEL_10;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    v51 = sub_105DA0();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v31 = sub_105D90();
    goto LABEL_10;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {
    v54 = sub_105D30();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v27 = sub_105D20();
    sub_105E00();
    return v27;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
    goto LABEL_7;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
  {
    goto LABEL_17;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
  {
LABEL_19:
    v42 = sub_105CF0();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v31 = sub_105CE0();
    goto LABEL_10;
  }

  if (v23 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
  {
LABEL_17:
    v39 = sub_105D50();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v31 = sub_105D40();
    goto LABEL_10;
  }

  result = sub_107360();
  __break(1u);
  return result;
}

uint64_t sub_C03B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = sub_7B448();
  v7 = sub_BFE60(v4, v6);

  *a2 = v7;
  return result;
}

void *sub_C040C()
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v6 = sub_105200();
  v7 = [v6 disambiguationItems];

  v8 = sub_106EE0();
  v9 = sub_C18B0(v8);

  if (v9)
  {
    v10 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_13A618);
    v12 = v10;
    v13 = sub_106D10();
    v14 = sub_106FC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = v15;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v15 = 136315138;
      v16 = v12;
      v37 = v0;
      v17 = v16;
      v18 = [v16 description];
      v33 = v14;
      v19 = v2;
      v20 = v1;
      v21 = v18;
      v22 = v12;
      v23 = v9;
      v24 = sub_106E20();
      v36 = v5;
      v26 = v25;

      v1 = v20;
      v2 = v19;
      v27 = v24;
      v9 = v23;
      v12 = v22;
      v28 = sub_722E8(v27, v26, &v38);
      v5 = v36;

      v29 = v34;
      *(v34 + 1) = v28;
      _os_log_impl(&dword_0, v13, v33, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v29, 0xCu);
      sub_2738(v35);
    }

    (*(v2 + 104))(v5, enum case for AlarmNLv4Constants.AlarmVerb.update(_:), v1);
    sub_25E4(&qword_1375E0, &unk_107FB0);
    swift_allocObject();
    return sub_C0F58(v9, v12, v5, &qword_13A390, &qword_10ABD0, &qword_13A398, &qword_10ABD8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }
}

void *sub_C07CC()
{
  v1 = sub_106960();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_1385D0, &qword_108F80);
  v5 = sub_105200();
  v6 = [v5 disambiguationItems];

  v7 = sub_106EE0();
  v8 = sub_C18B0(v7);

  if (v8)
  {
    v9 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_13A618);
    v11 = v9;
    v12 = sub_106D10();
    v13 = sub_106FC0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v14 = 136315138;
      v15 = v11;
      v34 = v0;
      v16 = v15;
      v17 = [v15 description];
      v31 = v13;
      v18 = v1;
      v19 = v17;
      v20 = v8;
      v21 = sub_106E20();
      v33 = v4;
      v23 = v22;

      v1 = v18;
      v24 = v21;
      v8 = v20;
      v25 = sub_722E8(v24, v23, &v36);
      v4 = v33;

      *(v14 + 4) = v25;
      _os_log_impl(&dword_0, v12, v31, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v14, 0xCu);
      sub_2738(v32);
    }

    v26 = [v11 operation];
    v27 = &enum case for AlarmNLv4Constants.AlarmVerb.disable(_:);
    if (v26 != &dword_0 + 2)
    {
      v27 = &enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
    }

    (*(v35 + 104))(v4, *v27, v1);
    sub_25E4(&qword_1396D8, &unk_109E40);
    swift_allocObject();
    return sub_C0F58(v8, v11, v4, &qword_13A378, &qword_10ABC0, &qword_13A380, &qword_10ABC8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
    swift_allocError();
    *v29 = 1;
    return swift_willThrow();
  }
}

void *sub_C0B98()
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_1381F0, &qword_108A90);
  v6 = sub_105200();
  v7 = [v6 disambiguationItems];

  v8 = sub_106EE0();
  v9 = sub_C18B0(v8);

  if (v9)
  {
    v10 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_13A618);
    v12 = v10;
    v13 = sub_106D10();
    v14 = sub_106FC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = v15;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v15 = 136315138;
      v16 = v12;
      v37 = v0;
      v17 = v16;
      v18 = [v16 description];
      v33 = v14;
      v19 = v2;
      v20 = v1;
      v21 = v18;
      v22 = v12;
      v23 = v9;
      v24 = sub_106E20();
      v36 = v5;
      v26 = v25;

      v1 = v20;
      v2 = v19;
      v27 = v24;
      v9 = v23;
      v12 = v22;
      v28 = sub_722E8(v27, v26, &v38);
      v5 = v36;

      v29 = v34;
      *(v34 + 1) = v28;
      _os_log_impl(&dword_0, v13, v33, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v29, 0xCu);
      sub_2738(v35);
    }

    (*(v2 + 104))(v5, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v1);
    sub_25E4(&qword_13A340, &qword_10ABA8);
    swift_allocObject();
    return sub_C0F58(v9, v12, v5, &qword_13A368, &qword_10ABB0, &qword_13A370, &qword_10ABB8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }
}

void *sub_C0F58(unint64_t a1, void *a2, char *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v56 = a6;
  v57 = a7;
  v54 = a4;
  v60 = a3;
  v11 = sub_106960();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  __chkstk_darwin();
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105180();
  v14 = sub_105010();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_105000();
  v62 = v14;
  v63 = &protocol witness table for ResponseFactory;
  v61 = v17;
  v18 = sub_104A00();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1049F0();
  v7[8] = v18;
  v7[9] = &protocol witness table for PatternFlowProvider;
  v7[5] = v21;
  v7[10] = 0xD000000000000018;
  v7[11] = 0x800000000010CEA0;
  v22 = v7;
  if (qword_136CF8 != -1)
  {
    swift_once();
  }

  v23 = sub_106D20();
  sub_135C4(v23, qword_1385F0);

  v24 = a2;
  v25 = sub_106D10();
  v26 = sub_106FC0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64 = v52;
    *v27 = 134218242;
    v53 = a5;
    if (a1 >> 62)
    {
      v28 = sub_107270();
    }

    else
    {
      v28 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v27 + 4) = v28;

    *(v27 + 12) = 2080;
    v29 = v24;
    v30 = [v29 description];
    v31 = sub_106E20();
    v33 = v32;

    v34 = sub_722E8(v31, v33, &v64);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_0, v25, v26, "ResponseAlarmDisambiguationFlowProvider.init with %ld items and intent: %s", v27, 0x16u);
    sub_2738(v52);

    a5 = v53;
  }

  else
  {
  }

  v35 = v22;
  v22[2] = a1;
  v22[12] = v24;
  v36 = v58;
  v37 = v59;
  v38 = v55;
  (*(v58 + 16))(v55, v60, v59);
  v39 = sub_25E4(v54, a5);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = qword_138690;
  v44 = sub_1052B0();
  v45 = *(*(v44 - 8) + 56);
  v45(v42 + v43, 1, 1, v44);
  *(v42 + qword_138698) = 0x8000000000000000;
  *(v42 + qword_1386A0) = 0;
  *(v42 + 16) = a1;
  v46 = *(v36 + 32);
  v46(v42 + qword_138688, v38, v37);
  v35[3] = v42;
  v47 = sub_25E4(v56, v57);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v45(v50 + qword_138690, 1, 1, v44);
  *(v50 + qword_138698) = 0x8000000000000000;
  *(v50 + qword_1386A0) = 0;
  *(v50 + 16) = a1;
  v46(v50 + qword_138688, v60, v37);
  v35[4] = v50;
  swift_bridgeObjectRetain_n();
  return v35;
}

uint64_t sub_C13DC(uint64_t *a1)
{
  sub_106840();
  sub_106820();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13A338, &qword_10AB98);
  sub_104AC0();
  sub_25E4(&qword_13A340, &qword_10ABA8);
  sub_B880C(&qword_13A348, &qword_13A340, &qword_10ABA8);
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_C1708();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v4);
  _s21ConfirmIntentStrategyCMa();
  v2 = swift_allocObject();
  sub_1AD44(v4, v2 + 16);
  *&v4[0] = v2;
  sub_C175C();
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v4);
  sub_C17B4();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_C1808(v4);
  return sub_C185C(v5);
}

uint64_t sub_C1618(void *a1)
{
  *a1 = sub_C0B98();
  v2 = *(v1 + 8);

  return v2();
}

BOOL sub_C16A4()
{
  sub_25E4(&qword_1385B0, &unk_10B2D0);
  v0 = sub_105150();
  sub_106810();

  v1 = sub_106830();
  return v1 == sub_106830();
}

unint64_t sub_C1708()
{
  result = qword_13A350;
  if (!qword_13A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A350);
  }

  return result;
}

unint64_t sub_C175C()
{
  result = qword_13A358;
  if (!qword_13A358)
  {
    _s21ConfirmIntentStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A358);
  }

  return result;
}

unint64_t sub_C17B4()
{
  result = qword_13A360;
  if (!qword_13A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A360);
  }

  return result;
}

void *sub_C18B0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_107220();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_135FC(i, v6);
    sub_106AA0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_107200();
    v4 = v7[2];
    sub_107230();
    sub_107240();
    sub_107210();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_C199C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A3A0);
  sub_135C4(v0, qword_13A3A0);
  return sub_106A80();
}

double sub_C19E8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v2 = sub_107270();
        goto LABEL_3;
      }

      v8 = [v5 sleepAlarmAttribute];
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = [v6 enabled];
      sub_1F7B8();
      v10.super.super.isa = sub_107090(1).super.super.isa;
      isa = v10.super.super.isa;
      if (!v9)
      {

        goto LABEL_6;
      }

      v12 = sub_1070A0();

      if (v12)
      {
LABEL_5:
        sub_107200();
        v4 = _swiftEmptyArrayStorage[2];
        sub_107230();
        sub_107240();
        sub_107210();
      }

      else
      {
      }

LABEL_6:
      ++v3;
    }

    while (v7 != v2);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v13 = sub_107270();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage[2];
  }

  return v13;
}

double sub_C1BC8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = sub_107270();
        goto LABEL_3;
      }

      v7 = [v4 enabled];
      sub_1F7B8();
      v8.super.super.isa = sub_107090(1).super.super.isa;
      isa = v8.super.super.isa;
      if (v7)
      {
        v10 = sub_1070A0();

        if (v10)
        {
          sub_107200();
          v11 = _swiftEmptyArrayStorage[2];
          sub_107230();
          sub_107240();
          sub_107210();
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_7:
      ++v3;
    }

    while (v6 != v2);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v12 = sub_107270();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage[2];
  }

  return v12;
}

void *sub_C1D80()
{
  v1 = sub_104670();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v17 = v6;
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_1071C0();
      }

      else
      {
        if (v8 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 sleepAlarmAttribute];
      if (v12)
      {
        v14 = v12;

        sub_106210();
        v15 = sub_75DD4(0, v4, 0);

        (*(v17 + 8))(v4, v1);
        return v15;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

uint64_t sub_C1F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_106560();
  sub_106550();
  sub_106540();

  *(v2 + 72) = 0xD000000000000018;
  *(v2 + 80) = 0x800000000010E0A0;
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_13A3A0);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SearchAlarm.ResultSetProvider init", v9, 2u);
  }

  *(v3 + 56) = a2;
  *(v3 + 64) = a1;
  return v3;
}

uint64_t sub_C20AC()
{
  v1 = v0[4];
  sub_105180();
  v2 = sub_105010();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_105000();
  v5 = sub_104A00();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1049F0();
  v0[5] = v8;
  v0[2] = v8;
  v0[3] = v1;
  v9 = async function pointer to PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = _s17ResultSetProviderCMa();
  v13 = sub_CBFA8(&qword_13A568, v12, _s17ResultSetProviderCMa);
  *v10 = v0;
  v10[1] = sub_C221C;

  return PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 3, v5, v11, &protocol witness table for PatternFlowProvider, v13);
}

uint64_t sub_C221C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(v6 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_C2380, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_C2398()
{
  v1[2] = v0;
  v2 = *(*(sub_104D60() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1051E0();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  NotFoundParameters = type metadata accessor for SearchQueryNotFoundParameters(0);
  v1[8] = NotFoundParameters;
  v8 = *(*(NotFoundParameters - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_106D20();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = sub_106300();
  v1[13] = v12;
  v13 = *(v12 - 8);
  v1[14] = v13;
  v14 = *(v13 + 64) + 15;
  v1[15] = swift_task_alloc();
  v15 = sub_106320();
  v1[16] = v15;
  v16 = *(v15 - 8);
  v1[17] = v16;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_C2600, 0, 0);
}

uint64_t sub_C2600()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v29 = sub_135C4(v0[10], qword_13A3A0);
  v1 = sub_106D10();
  v2 = sub_106FC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchAlarm.ResultSetProvider makeEmptyResultsFlow()", v3, 2u);
  }

  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[2];

  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v10 + 16))(v8, v29, v9);
  mach_absolute_time();
  sub_106330();
  v12 = *(v11 + 64);
  if (v12)
  {
    v13 = sub_CF1C4();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (qword_136D88 != -1)
  {
    swift_once();
  }

  v15 = v0[8];
  v14 = v0[9];
  v16 = sub_106160();
  v17 = *(*(v16 - 8) + 56);
  v18 = 1;
  v17(v14, 1, 1, v16);
  *(v14 + v15[5]) = 1;
  *(v14 + v15[6]) = v13;
  v19 = v15[7];
  *(v14 + v19) = 0;
  if (v12)
  {
    *(v14 + v19) = sub_1CE68();
    v20 = [v12 label];
    if (v20)
    {
      v21 = v0[7];
      v22 = v20;
      sub_106E20();

      sub_106E50();

      v18 = 0;
    }
  }

  v23 = v0[9];
  v24 = v0[7];
  v17(v24, v18, 1, v16);
  sub_1A814(v24, v23);
  v25 = sub_A7D44();
  v0[19] = v25;
  v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v30 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_C2950;

  return v30(0xD000000000000014, 0x800000000010E190, v25);
}

uint64_t sub_C2950(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v8 = sub_C2DE0;
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = sub_C2A9C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_C2A9C()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_CBF48(v0[9], type metadata accessor for SearchQueryNotFoundParameters);
  sub_104CF0();
  sub_1051B0();
  v3 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_C2B8C;
  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[6];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v7, v6);
}

uint64_t sub_C2B8C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 192) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_C2D04, 0, 0);
}

uint64_t sub_C2D04()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v7 = v0[1];
  v8 = v0[24];

  return v7(v8);
}

uint64_t sub_C2DE0()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  sub_CBF48(v0[9], type metadata accessor for SearchQueryNotFoundParameters);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[21];

  return v9();
}

uint64_t sub_C2EE0()
{
  v1[17] = v0;
  v2 = sub_1051E0();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  SuccessSingleParameters = type metadata accessor for SearchQuerySuccessSingleParameters(0);
  v1[21] = SuccessSingleParameters;
  v6 = *(*(SuccessSingleParameters - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = sub_106D20();
  v1[23] = v7;
  v8 = *(v7 - 8);
  v1[24] = v8;
  v9 = *(v8 + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = sub_106300();
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v13 = sub_106320();
  v1[29] = v13;
  v14 = *(v13 - 8);
  v1[30] = v14;
  v15 = *(v14 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v16 = sub_104FF0();
  v1[33] = v16;
  v17 = *(v16 - 8);
  v1[34] = v17;
  v18 = *(v17 + 64) + 15;
  v1[35] = swift_task_alloc();
  v19 = sub_104D60();
  v1[36] = v19;
  v20 = *(v19 - 8);
  v1[37] = v20;
  v21 = *(v20 + 64) + 15;
  v1[38] = swift_task_alloc();
  v22 = *(*(sub_25E4(&qword_137DC0, &unk_10A0A0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v23 = sub_106AE0();
  v1[40] = v23;
  v24 = *(v23 - 8);
  v1[41] = v24;
  v25 = *(v24 + 64) + 15;
  v1[42] = swift_task_alloc();
  v26 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v27 = sub_104670();
  v1[46] = v27;
  v28 = *(v27 - 8);
  v1[47] = v28;
  v29 = *(v28 + 64) + 15;
  v1[48] = swift_task_alloc();
  v30 = sub_106370();
  v1[49] = v30;
  v31 = *(v30 - 8);
  v1[50] = v31;
  v32 = *(v31 + 64) + 15;
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_C3344, 0, 0);
}

uint64_t sub_C3344()
{
  v1 = *(*(v0 + 136) + 56);
  if (!(v1 >> 62))
  {
    if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_60:
    *(v0 + 600) = 3;
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
    goto LABEL_61;
  }

  if (v1 < 0)
  {
    v89 = *(*(v0 + 136) + 56);
  }

  if (!sub_107270())
  {
    goto LABEL_60;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_66;
    }

    v2 = *(v1 + 32);
  }

  *(v0 + 416) = v2;
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v3 = sub_135C4(*(v0 + 184), qword_13A3A0);
  *(v0 + 424) = v3;
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "SearchAlarm.ResultSetProvider makeSingleItemFlow()", v6, 2u);
  }

  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 392);

  sub_106360();
  v10 = sub_106340();
  (*(v7 + 8))(v8, v9);
  if (!v10)
  {
    v23 = *(v0 + 248);
    v24 = *(v0 + 200);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 208));
    (*(v25 + 16))(v24, v3, v26);
    mach_absolute_time();
    sub_106330();
    if (qword_136D88 == -1)
    {
LABEL_18:
      v27 = *(*(v0 + 136) + 64);
      v28 = [v27 isMeridianInferred];
      sub_1F7B8();
      v29.super.super.isa = sub_107090(1).super.super.isa;
      if (v28)
      {
        v105 = sub_1070A0();
      }

      else
      {
        v105 = 0;
      }

      v109 = v27;
      if (v27)
      {
        [v27 alarmSearchStatus];
        v34 = sub_106920();
        v35 = v34 == sub_106920();
        v36 = [v27 includeSleepAlarm];
        v37.super.super.isa = sub_107090(1).super.super.isa;
        if (v36)
        {
          v38 = sub_1070A0();
        }

        else
        {
          v38 = 0;
        }

        BYTE4(v101) = v38;

        LOBYTE(v101) = v35;
      }

      else
      {
        v101 = 0;
      }

      v42 = *(v0 + 376);
      v43 = *(v0 + 384);
      v102 = *(v0 + 368);
      v44 = *(v0 + 168);
      v45 = *(v0 + 176);
      v46 = *(v0 + 136);
      v47 = v44[11];
      v48 = sub_106160();
      v49 = (*(v48 - 8) + 56);
      v107 = v47;
      v103 = *v49;
      (*v49)(v45 + v47, 1, 1, v48);
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      *(v45 + 24) = 1;
      *(v45 + 25) = v105 & 1;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = 1;
      *(v45 + 49) = v101;
      *(v45 + v44[12]) = BYTE4(v101) & 1;
      v50 = v44[13];
      *(v45 + v50) = 0;
      sub_106210();
      v51 = sub_75DD4(0, v43, 0);
      (*(v42 + 8))(v43, v102);
      *v45 = v51;
      *(v45 + 40) = sub_C19E8();
      *(v45 + 48) = 0;
      *(v45 + 16) = sub_C1BC8();
      *(v45 + 24) = 0;
      *(v45 + 32) = sub_C1D80();
      if (v109)
      {
        v113 = v48;
        v52 = [v109 label];
        if (v52)
        {
          v53 = *(v0 + 344);
          v54 = v50;
          v55 = v52;
          sub_106E20();

          v50 = v54;
          sub_106E50();

          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v59 = *(v0 + 344);
        v103(v59, v56, 1, v113);
        sub_1A814(v59, v45 + v107);
        v58 = sub_1CE68();
      }

      else
      {
        v57 = *(v0 + 344);
        v103(v57, 1, 1, v48);
        sub_1A814(v57, v45 + v107);
        v58 = 0;
      }

      *(v45 + v50) = v58;
      sub_106100();
      if (qword_136E48 != -1)
      {
        swift_once();
      }

      v60 = *(v0 + 176);

      *(v45 + 8) = sub_1060F0();
      v61 = sub_A84A0();
      *(v0 + 552) = v61;
      v62 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v114 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v63 = swift_task_alloc();
      *(v0 + 560) = v63;
      *v63 = v0;
      v63[1] = sub_C5870;
      v64 = 0xD000000000000019;
      v65 = 0x800000000010E0F0;
      v66 = v61;
      goto LABEL_54;
    }

LABEL_66:
    swift_once();
    goto LABEL_18;
  }

  v11 = *(v0 + 376);
  v12 = *(v0 + 384);
  v13 = *(v0 + 368);
  sub_106210();
  v14 = sub_75DD4(0, v12, 0);
  *(v0 + 432) = v14;
  (*(v11 + 8))(v12, v13);
  if (v14)
  {
    if (qword_136D80 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 136);

    v16 = sub_C19E8();
    v17 = sub_C1BC8();
    v18 = *(v15 + 64);
    if (v18)
    {
      v19 = [v18 label];
      if (v19)
      {
        v20 = *(v0 + 360);
        v21 = v19;
        sub_106E20();

        sub_106E50();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v67 = *(v0 + 360);
      v68 = sub_106160();
      (*(*(v68 - 8) + 56))(v67, v22, 1, v68);
      v41 = sub_1CE68();
      [v18 alarmSearchStatus];
      v69 = sub_106920();
      v112 = v69 == sub_106920();
      v70 = [v18 includeSleepAlarm];
      sub_1F7B8();
      v71.super.super.isa = sub_107090(1).super.super.isa;
      isa = v71.super.super.isa;
      if (v70)
      {
        v110 = sub_1070A0();
      }

      else
      {

        v110 = 0;
      }
    }

    else
    {
      v39 = *(v0 + 360);
      v40 = sub_106160();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      v110 = 0;
      v41 = 0;
      v112 = 0;
    }

    v73 = [v18 isMeridianInferred];
    sub_1F7B8();
    v74.super.super.isa = sub_107090(1).super.super.isa;
    if (v73)
    {
      v75 = sub_1070A0();
    }

    else
    {
      v75 = 0;
    }

    v76 = *(v0 + 352);
    v77 = *(v0 + 360);
    sub_25E4(&qword_137880, &unk_108290);
    v78 = swift_allocObject();
    *(v0 + 440) = v78;
    *(v78 + 16) = xmmword_10ABE0;
    *(v78 + 32) = 0x6D72616C61;
    *(v78 + 40) = 0xE500000000000000;
    v79 = type metadata accessor for AlarmAlarm(0);
    *(v78 + 48) = v14;
    *(v78 + 72) = v79;
    *(v78 + 80) = 0xD000000000000010;
    *(v78 + 88) = 0x800000000010DB70;
    *(v78 + 96) = v16;
    *(v78 + 120) = &type metadata for Double;
    *(v78 + 128) = 0xD000000000000012;
    *(v78 + 136) = 0x800000000010DB30;
    *(v78 + 144) = v17;
    *(v78 + 168) = &type metadata for Double;
    *(v78 + 176) = 0xD000000000000012;
    *(v78 + 184) = 0x800000000010C670;
    sub_826B8(v77, v76);
    v80 = sub_106160();
    v81 = *(v80 - 8);
    v82 = (*(v81 + 48))(v76, 1, v80);
    v83 = *(v0 + 352);
    if (v82 == 1)
    {

      sub_16F70(v83, &qword_137598, &unk_107EB0);
      *(v78 + 192) = 0u;
      *(v78 + 208) = 0u;
    }

    else
    {
      *(v78 + 216) = v80;
      v84 = sub_1A924((v78 + 192));
      (*(v81 + 32))(v84, v83, v80);
    }

    *(v78 + 224) = 0xD000000000000011;
    *(v78 + 232) = 0x800000000010C690;
    v85 = 0;
    if (v41)
    {
      v85 = sub_1060A0();
    }

    else
    {
      *(v78 + 248) = 0;
      *(v78 + 256) = 0;
    }

    *(v0 + 448) = v41;
    *(v78 + 240) = v41;
    *(v78 + 264) = v85;
    *(v78 + 272) = 0xD000000000000014;
    *(v78 + 280) = 0x800000000010DB90;
    *(v78 + 288) = v112;
    *(v78 + 312) = &type metadata for Bool;
    *(v78 + 320) = 0xD000000000000012;
    *(v78 + 328) = 0x800000000010DBB0;
    *(v78 + 336) = v110 & 1;
    *(v78 + 360) = &type metadata for Bool;
    *(v78 + 368) = 0xD000000000000012;
    *(v78 + 376) = 0x800000000010DB50;
    *(v78 + 408) = &type metadata for Bool;
    *(v78 + 384) = v75 & 1;
    v86 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v114 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v87 = swift_task_alloc();
    *(v0 + 456) = v87;
    *v87 = v0;
    v87[1] = sub_C4140;
    v64 = 0xD00000000000002CLL;
    v65 = 0x800000000010E110;
    v66 = v78;
LABEL_54:

    return v114(v64, v65, v66);
  }

  v30 = sub_106D10();
  v31 = sub_106FB0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Can NOT retrieve alarm data.", v32, 2u);
  }

  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
  swift_allocError();
  *v33 = 3;
  swift_willThrow();

LABEL_61:
  v90 = *(v0 + 408);
  v91 = *(v0 + 384);
  v93 = *(v0 + 352);
  v92 = *(v0 + 360);
  v95 = *(v0 + 336);
  v94 = *(v0 + 344);
  v97 = *(v0 + 304);
  v96 = *(v0 + 312);
  v98 = *(v0 + 280);
  v99 = *(v0 + 256);
  v104 = *(v0 + 248);
  v106 = *(v0 + 224);
  v108 = *(v0 + 200);
  v111 = *(v0 + 176);
  v115 = *(v0 + 160);

  v100 = *(v0 + 8);

  return v100();
}

uint64_t sub_C4140(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v11 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  v5 = v3[55];
  if (v1)
  {

    v6 = sub_C488C;
  }

  else
  {
    v7 = v3[56];
    v8 = v3[54];
    v9 = v3[45];

    sub_16F70(v9, &qword_137598, &unk_107EB0);
    v6 = sub_C429C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_C429C()
{
  v1 = [*(v0 + 416) sleepAlarmAttribute];
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 480) = v2;
    *v2 = v0;
    v2[1] = sub_C49F8;

    return sub_EEDD4();
  }

  else
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v7 = *(v0 + 312);
    sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v7);
    swift_bridgeObjectRelease_n();
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = *(v0 + 424);
      sub_16F70(*(v0 + 312), &qword_137DC0, &unk_10A0A0);
      v9 = sub_106D10();
      v10 = sub_106FB0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "Can NOT retrieve alarm snippet model.", v11, 2u);
      }

      v12 = *(v0 + 464);
      v13 = *(v0 + 432);
      v14 = *(v0 + 416);

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
      swift_allocError();
      *v15 = 3;
      swift_willThrow();

      v16 = *(v0 + 408);
      v17 = *(v0 + 384);
      v19 = *(v0 + 352);
      v18 = *(v0 + 360);
      v21 = *(v0 + 336);
      v20 = *(v0 + 344);
      v23 = *(v0 + 304);
      v22 = *(v0 + 312);
      v24 = *(v0 + 280);
      v25 = *(v0 + 256);
      v49 = *(v0 + 248);
      v51 = *(v0 + 224);
      v53 = *(v0 + 200);
      v55 = *(v0 + 176);
      v57 = *(v0 + 160);

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v27 = *(v0 + 416);
      v28 = *(v0 + 328);
      v29 = *(v0 + 336);
      v30 = *(v0 + 320);
      v31 = *(v0 + 304);
      v32 = *(v0 + 280);
      v58 = *(v0 + 424);
      v59 = *(v0 + 256);
      v33 = *(v0 + 216);
      v50 = *(v0 + 224);
      v52 = *(v0 + 208);
      v34 = *(v0 + 192);
      v54 = *(v0 + 200);
      v56 = *(v0 + 184);
      (*(v28 + 32))(v29, *(v0 + 312), v30);
      sub_104CF0();
      sub_25E4(&qword_137DD0, &unk_108920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_108470;
      *(inited + 32) = v27;
      v36 = v27;
      sub_BD4A4(inited, v32);
      swift_setDeallocating();
      v37 = *(inited + 16);
      swift_arrayDestroy();
      v38 = sub_106AF0();
      *(v0 + 120) = v38;
      *(v0 + 128) = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels);
      v39 = sub_1A924((v0 + 96));
      sub_25E4(&qword_137DF0, qword_1085E0);
      v40 = *(v28 + 72);
      v41 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_107FC0;
      (*(v28 + 16))(v42 + v41, v29, v30);
      sub_106930();
      (*(*(v38 - 8) + 104))(v39, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v38);
      (*(v33 + 104))(v50, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v52);
      (*(v34 + 16))(v54, v58, v56);
      mach_absolute_time();
      sub_106330();
      v43 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
      v44 = swift_task_alloc();
      *(v0 + 544) = v44;
      *v44 = v0;
      v44[1] = sub_C54A4;
      v45 = *(v0 + 464);
      v46 = *(v0 + 304);
      v47 = *(v0 + 280);
      v48 = *(v0 + 256);

      return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 16, v46, v47, v0 + 96, v48, 0, 0, 0);
    }
  }
}