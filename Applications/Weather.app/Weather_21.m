unint64_t sub_1002388F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = UVIndex.ExposureCategory.rawValue.getter();
    v7 = v6;
    if (v5 == UVIndex.ExposureCategory.rawValue.getter() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_100238A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100020DF0();
  sub_100071C18();
  v12 = v11;
  sub_10000E724();
  sub_1002381F4(v12, v13, sub_10023861C);
  sub_10001E5DC();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  sub_10022C350(&qword_100CA3A78);
  v19 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20))
  {
    sub_10000E724();
    sub_1002381F4(v12, v21, sub_10023861C);
    sub_100013444();
    if (!v23)
    {
      goto LABEL_14;
    }

    v17 = v22;
  }

  if (v18)
  {
    v24 = *(*v10 + 56);
    type metadata accessor for Tips.Status();
    sub_1000037E8();
    sub_1000212DC(v24 + *(v25 + 72) * v17);
    sub_1000212EC();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    sub_1000212EC();

    return sub_10023A0DC(v35, v36, v37, v38);
  }
}

_OWORD *sub_100238B64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100031B34();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10022C350(&qword_100CA39A0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100031B34();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100006F14(v21);

    return sub_100166170(a1, v21);
  }

  else
  {
    sub_10023A188(v16, a2, a3, a1, v20);
  }
}

void sub_100238CAC()
{
  sub_10000C778();
  sub_10000396C();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_10000F980();
  sub_100237FB4();
  sub_10001E5DC();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100030324();
  sub_10022C350(&qword_100CA3AF0);
  v3 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4))
  {
    sub_100037064();
    sub_100237FB4();
    sub_10004E320();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1000866D8();
    sub_10000536C();
  }

  else
  {
    v7 = sub_10004958C();
    v8(v7);
    v9 = sub_1000166DC();
    sub_10005B758(v9, v10, v11, v12);
    sub_10000536C();
  }
}

void sub_100238DEC()
{
  sub_10000C778();
  v2 = v1;
  v24 = v3;
  v5 = v4;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100237FB4();
  sub_10001E5DC();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  sub_10022C350(&qword_100CA3AC8);
  if (!sub_1000D4158())
  {
    goto LABEL_5;
  }

  sub_100237FB4();
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v0;
  if (v16)
  {
    v20 = (v19[7] + 16 * v15);
    v21 = v24;
    *v20 = v5;
    v20[1] = v21;
    sub_10000536C();
  }

  else
  {
    (*(v8 + 16))(v11, v2, v6);
    sub_10023A2A8(v15, v11, v5, v24, v19);
    sub_10000536C();
  }
}

unint64_t sub_100238F80()
{
  sub_100071C18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100238064(v1);
  sub_10001E5DC();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_10022C350(&qword_100CA3AD0);
  v12 = sub_100017530();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = sub_100238064(v2);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  if (v11)
  {
    v16 = (*(*v0 + 56) + 16 * v10);
    *v16 = v6;
    v16[1] = v4;
  }

  else
  {
    sub_100016240();

    return sub_10023A368(v18, v19, v20, v21, v22);
  }
}

void sub_10023909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000C778();
  sub_10000396C();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_10000F980();
  sub_100237FB4();
  sub_10001E5DC();
  if (v16)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100030324();
  sub_10022C350(&qword_100CA3AD8);
  v17 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    sub_100037064();
    sub_100237FB4();
    sub_10004E320();
    if (!v20)
    {
      goto LABEL_12;
    }

    v13 = v19;
  }

  if (v14)
  {
    v21 = *(*v12 + 56);
    type metadata accessor for Elevation();
    sub_1000037E8();
    sub_1000212DC(v21 + *(v22 + 72) * v13);
    sub_10000536C();

    v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    v31 = sub_10004958C();
    v32(v31);
    v33 = sub_1000166DC();
    sub_10023A3B0(v33, v34, v35, v36);
    sub_10000536C();
  }
}

void sub_1002391FC()
{
  sub_100020DF0();
  sub_10001BA74(v3, v4);
  sub_100031B34();
  sub_10001E5DC();
  if (v5)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1000C86C0();
  sub_10022C350(&qword_100CA3A50);
  v6 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_10000C7C8();
    sub_100031B34();
    sub_10002C508();
    if (!v9)
    {
      goto LABEL_12;
    }

    v1 = v8;
  }

  if (v2)
  {
    v10 = sub_100024034();
    v11 = type metadata accessor for LocationWeatherDataState(v10);
    v12 = sub_100003810(v11);
    sub_10003B8FC(v12, v0 + *(v13 + 72) * v1);
    sub_1000212EC();
  }

  else
  {
    sub_100069374();
    sub_10023A4EC(v14, v15, v16, v17, v18, v19, v20);
    sub_1000212EC();
  }
}

void sub_10023935C()
{
  sub_100020DF0();
  sub_10002FD38();
  v2 = v1;
  sub_100022718(v1, v3);
  sub_100031B34();
  sub_10001E5DC();
  if (v6)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_10022C350(&qword_100CA3A68);
  v9 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    sub_100020118();
    sub_100013444();
    if (!v12)
    {
      goto LABEL_12;
    }

    v7 = v11;
  }

  if (v8)
  {
    *(*(*v0 + 56) + v7) = v2;
    sub_1000212EC();
  }

  else
  {
    v13 = sub_10003BD04();
    sub_10023A4A4(v13, v14, v15, v2, v16);
    sub_1000212EC();
  }
}

void sub_100239434()
{
  sub_100020DF0();
  sub_10002FD38();
  v2 = v1;
  sub_100022718(v1, v3);
  sub_100031B34();
  sub_10001E5DC();
  if (v6)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_10022C350(&qword_100CA3A70);
  v9 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    sub_100020118();
    sub_100013444();
    if (!v12)
    {
      goto LABEL_12;
    }

    v7 = v11;
  }

  if (v8)
  {
    *(*(*v0 + 56) + 8 * v7) = v2;
    sub_1000212EC();
  }

  else
  {
    v13 = sub_10003BD04();
    sub_100087CF4(v13, v14, v15, v2, v16);
    sub_1000212EC();
  }
}

void sub_10023950C()
{
  sub_100020DF0();
  sub_10001BA74(v3, v4);
  sub_100031B34();
  sub_10001E5DC();
  if (v5)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1000C86C0();
  sub_10022C350(&qword_100CA39F0);
  v6 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_10000C7C8();
    sub_100031B34();
    sub_10002C508();
    if (!v9)
    {
      goto LABEL_12;
    }

    v1 = v8;
  }

  if (v2)
  {
    v10 = sub_100024034();
    v11 = type metadata accessor for WeatherData(v10);
    v12 = sub_100003810(v11);
    sub_10003B8FC(v12, v0 + *(v13 + 72) * v1);
    sub_1000212EC();
  }

  else
  {
    sub_100069374();
    sub_10023A4EC(v14, v15, v16, v17, v18, v19, v20);
    sub_1000212EC();
  }
}

unint64_t sub_100239630()
{
  sub_100020DF0();
  sub_100071C18();
  v2 = v1;
  v4 = v3;
  sub_100238288();
  sub_10001E5DC();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_10022C350(&qword_100CA39E8);
  v10 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100238288();
    sub_100013444();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v9)
  {
    v14 = (*(*v0 + 56) + 16 * v8);
    *v14 = v4;
    v14[1] = v2;
    sub_1000212EC();
  }

  else
  {
    sub_100016240();
    sub_1000212EC();

    return sub_10023A578(v17, v18, v19, v20);
  }
}

void sub_100239720()
{
  sub_10000C778();
  v2 = v1;
  v4 = sub_100022718(v1, v3);
  sub_1002380B0(v4);
  sub_10001E5DC();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  sub_10022C350(&qword_100CA3AC0);
  if (!sub_1000D4158())
  {
    goto LABEL_5;
  }

  v10 = sub_10000C7C8();
  v11 = sub_1002380B0(v10);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    *(*(*v0 + 56) + v8) = v2 & 1;
    sub_10000536C();
  }

  else
  {
    sub_100069374();
    sub_10023A5B8(v13, v14, v15, v16, v17, v18);
    sub_10000536C();
  }
}

void sub_10023981C()
{
  sub_100020DF0();
  sub_10001BA74(v3, v4);
  sub_100031B34();
  sub_10001E5DC();
  if (v5)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1000C86C0();
  sub_10022C350(&qword_100CA3A28);
  v6 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_10000C7C8();
    sub_100031B34();
    sub_10002C508();
    if (!v9)
    {
      goto LABEL_12;
    }

    v1 = v8;
  }

  if (v2)
  {
    v10 = sub_100024034();
    v11 = type metadata accessor for ListLocationViewModel.CacheEntry(v10);
    v12 = sub_100003810(v11);
    sub_10003B8FC(v12, v0 + *(v13 + 72) * v1);
    sub_1000212EC();
  }

  else
  {
    sub_100069374();
    sub_10023A4EC(v14, v15, v16, v17, v18, v19, v20);
    sub_1000212EC();
  }
}

void sub_10023997C()
{
  sub_100020DF0();
  sub_10001BA74(v3, v4);
  sub_100031B34();
  sub_10001E5DC();
  if (v5)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1000C86C0();
  sub_10022C350(&qword_100CA3A58);
  v6 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_10000C7C8();
    sub_100031B34();
    sub_10002C508();
    if (!v9)
    {
      goto LABEL_12;
    }

    v1 = v8;
  }

  if (v2)
  {
    v10 = sub_100024034();
    v11 = type metadata accessor for LocationAvailableDataSetState(v10);
    v12 = sub_100003810(v11);
    sub_10003B8FC(v12, v0 + *(v13 + 72) * v1);
    sub_1000212EC();
  }

  else
  {
    sub_100069374();
    sub_10023A4EC(v14, v15, v16, v17, v18, v19, v20);
    sub_1000212EC();
  }
}

void sub_100239AA0()
{
  sub_100020DF0();
  v3 = sub_10001BA74(v1, v2);
  sub_1000B8384(v3, v4);
  sub_10001E5DC();
  if (v6)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v5;
  sub_10022C350(&qword_100CA3A30);
  v8 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    v10 = sub_100003984();
    sub_1000B8384(v10, v11);
    sub_10002C508();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v7)
  {
    sub_100024034();
    v13 = type metadata accessor for ContentStatusBanner();
    sub_100003810(v13);
    sub_100037938();
    sub_10023A9E0(v0, v14, v15);
    sub_1000212EC();
  }

  else
  {
    sub_100069374();
    sub_10023A608(v16, v17, v18, v19, v20);
    sub_100003984();
    sub_1000212EC();

    sub_10010ABD0(v21, v22);
  }
}

void sub_100239B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v15 = *v7;
  sub_100031B34();
  sub_10001E5DC();
  if (v18)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  sub_10022C350(&qword_100CA3A10);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a7 & 1, v15))
  {
    sub_100031B34();
    sub_10004E320();
    if (!v22)
    {
      goto LABEL_12;
    }

    v19 = v21;
  }

  v23 = *v8;
  if (v20)
  {
    v24 = (v23[7] + 32 * v19);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
    v24[3] = a4;
    sub_100020DD4();
  }

  else
  {
    sub_10023A684(v19, a5, a6, a1, a2, a3, a4, v23);
    sub_100020DD4();
  }
}

void sub_100239CD4()
{
  sub_10000C778();
  sub_10000396C();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_10000F980();
  sub_100237FB4();
  sub_10001E5DC();
  if (v4)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100030324();
  sub_10022C350(&qword_100CA3AE0);
  v5 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v5, v6))
  {
    sub_100037064();
    sub_100237FB4();
    sub_10004E320();
    if (!v8)
    {
      goto LABEL_11;
    }

    v1 = v7;
  }

  if (v2)
  {
    v9 = *(*v0 + 56);
    v10 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
    v11 = sub_100003810(v10);
    sub_10003B8FC(v11, v9 + *(v12 + 72) * v1);
  }

  else
  {
    v13 = sub_10004958C();
    v14(v13);
    sub_1000166DC();
    sub_10023A6D4();
  }

  sub_10000536C();
}

void sub_100239E38()
{
  sub_10000C778();
  sub_10000396C();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_10000F980();
  sub_100237FB4();
  sub_10001E5DC();
  if (v4)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100030324();
  sub_10022C350(&qword_100CA3AE8);
  v5 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v5, v6))
  {
    sub_100037064();
    sub_100237FB4();
    sub_10004E320();
    if (!v8)
    {
      goto LABEL_11;
    }

    v1 = v7;
  }

  if (v2)
  {
    v9 = *(*v0 + 56);
    v10 = type metadata accessor for MonthSunAverage(0);
    v11 = sub_100003810(v10);
    sub_10003B8FC(v11, v9 + *(v12 + 72) * v1);
  }

  else
  {
    v13 = sub_10004958C();
    v14(v13);
    sub_1000166DC();
    sub_10023A6D4();
  }

  sub_10000536C();
}

void sub_100239F9C()
{
  sub_10000C778();
  sub_10000396C();
  type metadata accessor for VFXEffectViewID();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_10000F980();
  sub_100238398();
  sub_10001E5DC();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100030324();
  sub_10022C350(&qword_100CA3AA8);
  v3 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4))
  {
    sub_100037064();
    sub_100238398();
    sub_10004E320();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1000866D8();
    sub_10000536C();
  }

  else
  {
    v7 = sub_10004958C();
    v8(v7);
    v9 = sub_1000166DC();
    sub_10005B758(v9, v10, v11, v12);
    sub_10000536C();
  }
}

uint64_t sub_10023A0DC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Tips.Status();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_10023A188(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100166170(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10023A1F4()
{
  result = qword_100CA39B0;
  if (!qword_100CA39B0)
  {
    sub_10022E824(&unk_100CB2CF0);
    sub_10005B6CC(&qword_100CA39B8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA39B0);
  }

  return result;
}

uint64_t sub_10023A2A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_10023A368(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a5;
  v5 = (a4[7] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10023A3B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Elevation();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_10023A4A4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_10023A4EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v11 = sub_1000140C8(a1, a5 + 8 * (a1 >> 6));
  sub_100041860(v11, v12, v13, v14, v15);
  v17 = *(v16 + 56);
  v19 = v18(0);
  sub_100003810(v19);
  sub_1001A0F38(a4, v17 + *(v20 + 72) * a1, a7);
  sub_1000B984C();
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v21;
  }
}

unint64_t sub_10023A578(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 56) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

unint64_t sub_10023A5B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void sub_10023A608(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000140C8(a1, a5 + 8 * (a1 >> 6));
  sub_100041860(v7, v8, v9, v10, v11);
  v12 = type metadata accessor for ContentStatusBanner();
  sub_100003810(v12);
  sub_100037938();
  sub_1001A0F38(a4, v13, v14);
  sub_1000B984C();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

unint64_t sub_10023A684(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

void sub_10023A6D4()
{
  sub_100020DF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1000140C8(v10, v4 + 8 * (v10 >> 6));
  v13 = *(v12 + 48);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v14 + 32))(v13 + *(v14 + 72) * v11, v9);
  v15 = *(v5 + 56);
  v16 = v3(0);
  sub_100003810(v16);
  sub_1001A0F38(v7, v15 + *(v17 + 72) * v11, v1);
  sub_1000B984C();
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v18;
    sub_1000212EC();
  }
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10023A880()
{
  result = qword_100CA3A80;
  if (!qword_100CA3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3A80);
  }

  return result;
}

unint64_t sub_10023A8D8()
{
  result = qword_100CA3A88;
  if (!qword_100CA3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3A88);
  }

  return result;
}

unint64_t sub_10023A930()
{
  result = qword_100CA3A90;
  if (!qword_100CA3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3A90);
  }

  return result;
}

uint64_t sub_10023A9E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_10023AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for WeatherDataLoadMonitoringAction;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  Dictionary.init(dictionaryLiteral:)();
  a3[3] = sub_10022C350(&qword_100CA3B00);
  a3[4] = sub_10023AC00();
  sub_100042FB0(a3);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10023AB6C()
{
  sub_10023AC64();

  return ShortDescribable.description.getter();
}

unint64_t sub_10023ABAC()
{
  result = qword_100CA3AF8;
  if (!qword_100CA3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3AF8);
  }

  return result;
}

unint64_t sub_10023AC00()
{
  result = qword_100CA3B08;
  if (!qword_100CA3B08)
  {
    sub_10022E824(&qword_100CA3B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3B08);
  }

  return result;
}

unint64_t sub_10023AC64()
{
  result = qword_100CA3B10;
  if (!qword_100CA3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3B10);
  }

  return result;
}

void sub_10023ACB8(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0x8000000100ABB9E0;
  v4._countAndFlagsBits = 0x612074726F706552;
  v4._object = 0xEF6575737349206ELL;
  v5._object = 0x8000000100ABB9C0;
  v15._countAndFlagsBits = 0xD00000000000003ELL;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v3, v4, v15);

  v7 = [v2 mainBundle];
  v16._object = 0x8000000100ABBA80;
  v8._countAndFlagsBits = 0xD000000000000053;
  v8._object = 0x8000000100ABBA20;
  v16._countAndFlagsBits = 0xD000000000000041;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v16);

  v11 = [v2 mainBundle];
  v17._object = 0x8000000100ABBAD0;
  v12._countAndFlagsBits = 0x65726F4D20656553;
  v17._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0xE800000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x8000000100ABB9A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = v14;
}

uint64_t sub_10023AEA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023AEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10023AF44@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationHeaderView(0);
  sub_1000302D8(v1 + *(v13 + 24), v12, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

double sub_10023B124()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = 0.0;
  if ((static Solarium.isEnabled.getter() & 1) == 0)
  {
    return v5;
  }

  v6 = type metadata accessor for LocationHeaderView(0);
  if ((*(v0 + *(v6 + 56) + 130) & 1) == 0)
  {
    v9 = v6;
    v10 = v0 + *(v6 + 44);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v11, 0);
      (*(v2 + 8))(v4, v1);
      if (v14[15] != 1)
      {
        goto LABEL_3;
      }
    }

    return *(v0 + *(v9 + 84));
  }

LABEL_3:
  v7 = COERCE_DOUBLE(sub_10015532C());
  if ((v8 & 1) == 0 && v7 > 20.0)
  {
    return v7 + -20.0;
  }

  return v5;
}

uint64_t sub_10023B2E8()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 5)
  {
    static Font.Weight.thin.getter();
    v14 = type metadata accessor for Font.Design();
    sub_10001B350(v11, 1, 1, v14);
    v15 = static Font.system(size:weight:design:)();
    sub_10003FDA0(v11, &qword_100CA4020);
  }

  else
  {
    v16 = *v0;
    if (*(v0 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v16, 0);
      (*(v6 + 8))(v8, v5);
    }

    static Font.Weight.thin.getter();
    v18 = type metadata accessor for Font.Design();
    sub_10001B350(v11, 1, 1, v18);
    static Font.system(size:weight:design:)();
    sub_10003FDA0(v11, &qword_100CA4020);
    (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v2 + 8))(v4, v1);
  }

  return v15;
}

uint64_t sub_10023B68C()
{
  type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  return v2;
}

uint64_t sub_10023B6F8()
{
  v0 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationHeaderView(0);
  sub_1000FC9C8();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = *(v2 + 1);
  sub_1000DFD78(v2, type metadata accessor for DisplayMetrics);
  if (v4)
  {
    if (v5 == 2)
    {
      return 0x4034000000000000;
    }

    else
    {
      return 0x402C000000000000;
    }
  }

  else if (v5 >= 3)
  {
    return 0;
  }

  else
  {
    return qword_100A2EB40[v5];
  }
}

uint64_t sub_10023B80C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  type metadata accessor for LocationHeaderView(0);
  sub_10022C350(&qword_100CA3BF0);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.light.getter();
  v7 = type metadata accessor for Font.Design();
  sub_10001B350(v6, 1, 1, v7);
  static Font.system(size:weight:design:)();
  sub_10003FDA0(v6, &qword_100CA4020);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v8 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_10023B9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v30 = a3;
  v28 = a1;
  v29 = a2;
  v32 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v27 - v10);
  v12 = (v5 + *(type metadata accessor for LocationHeaderView(0) + 56));
  v13 = v12[11];
  v27 = v12[10];

  v14 = sub_10023B2E8();
  v15 = sub_10023BC6C();
  KeyPath = swift_getKeyPath();
  *(a5 + *(type metadata accessor for LocationHeaderTemperatureView(0) + 32)) = KeyPath;
  sub_10022C350(&qword_100CA3EE8);
  swift_storeEnumTagMultiPayload();
  v17 = v28;
  v18 = v29;
  *a5 = v28;
  *(a5 + 8) = v18;
  v19 = v30 & 1;
  *(a5 + 16) = v30 & 1;
  v20 = v27;
  *(a5 + 24) = v31;
  *(a5 + 32) = v20;
  *(a5 + 40) = v13;
  *(a5 + 48) = v14;
  *(a5 + 56) = v15;
  sub_10010CD54(v17, v18, v19);

  v21 = sub_100159880();
  v22 = (a5 + *(sub_10022C350(&qword_100CA3F58) + 36));
  *v22 = v21;
  v22[1] = 0.0;
  v23 = v12[9];
  *v11 = v12[8];
  v11[1] = v23;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000A3C14(v11, v8, type metadata accessor for AutomationInfo);
  v24 = a5 + *(sub_10022C350(&qword_100CA3F28) + 36);
  v25 = type metadata accessor for AutomationInfoProperty();
  sub_1000A3C14(v8, v24 + *(v25 + 24), type metadata accessor for AutomationInfo);

  sub_1000DFD78(v8, type metadata accessor for AutomationInfo);
  sub_1000DFD78(v11, type metadata accessor for AutomationInfo);
  *v24 = 0;
  *(v24 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v24 + 16) = result;
  *(v24 + 24) = 0;
  return result;
}

uint64_t sub_10023BC6C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  static Font.Weight.light.getter();
  v9 = type metadata accessor for Font.Design();
  sub_10001B350(v6, 1, 1, v9);
  if (v8 == 5)
  {
    v10 = static Font.system(size:weight:design:)();
    sub_10003FDA0(v6, &qword_100CA4020);
  }

  else
  {
    static Font.system(size:weight:design:)();
    sub_10003FDA0(v6, &qword_100CA4020);
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v10 = Font.leading(_:)();

    (*(v1 + 8))(v3, v0);
  }

  return v10;
}

uint64_t sub_10023BE88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SummaryDividerView(0);
  __chkstk_darwin(v84);
  v89 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = (&v77 - v8);
  v9 = type metadata accessor for Text.Scale();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationHeaderView(0);
  v14 = (a1 + *(v13 + 56));
  object = v14[5]._object;
  v83 = v14;
  if (object)
  {
    countAndFlagsBits = v14[5]._countAndFlagsBits;
    v17 = a1 + *(v13 + 60);
    v18 = *v17;
    v81 = *(v17 + 8);
    v82 = v18;
    LODWORD(v80) = *(v17 + 16);
    v79 = *(v17 + 24);
    v90 = countAndFlagsBits;
    v91 = object;
    sub_10002D5A4();

    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    static Text.Scale.secondary.getter();
    v24 = Text.textScale(_:isEnabled:)();
    v86 = a1;
    v25 = v24;
    v78 = v26;
    v28 = v27;
    v85 = v5;
    sub_10010CD64(v19, v21, v23 & 1);

    (*(v10 + 8))(v12, v9);
    v29 = v78;
    v30 = static Text.+ infix(_:_:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_10010CD64(v25, v29, v28 & 1);
  }

  else
  {
    v37 = a1 + *(v13 + 60);
    v30 = *v37;
    v32 = *(v37 + 8);
    v34 = *(v37 + 16);
    v36 = *(v37 + 24);
    sub_10010CD54(*v37, v32, *(v37 + 16));
  }

  v77 = v32;
  v82 = v36;
  LODWORD(v85) = v34;
  v86 = v30;
  sub_100153D5C();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;

  static Color.black.getter();
  Color.opacity(_:)();

  v81 = Text.shadow(color:radius:x:y:)();
  v80 = v43;
  LODWORD(v78) = v44;
  v79 = v45;

  sub_10010CD64(v38, v40, v42 & 1);

  v46 = sub_100153D5C();
  KeyPath = swift_getKeyPath();
  v48 = v88;
  *(v88 + *(v84 + 20)) = KeyPath;
  sub_10022C350(&qword_100CA3EE8);
  swift_storeEnumTagMultiPayload();
  *v48 = v46;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v83[3]);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
  LocalizedStringKey.init(stringInterpolation:)();
  v51 = Text.init(_:tableName:bundle:comment:)();
  v53 = v52;
  v55 = v54;
  sub_100153D5C();
  v56 = Text.font(_:)();
  v58 = v57;
  v60 = v59;

  sub_10010CD64(v51, v53, v55 & 1);

  static Color.black.getter();
  Color.opacity(_:)();

  v83 = Text.shadow(color:radius:x:y:)();
  v84 = v61;
  v63 = v62;
  v65 = v64;

  sub_10010CD64(v56, v58, v60 & 1);

  v66 = v78 & 1;
  LOBYTE(v90) = v78 & 1;
  v67 = v89;
  sub_1000A3C14(v48, v89, type metadata accessor for SummaryDividerView);
  LOBYTE(v56) = v65 & 1;
  v92 = v65 & 1;
  v68 = v87;
  v69 = v81;
  v70 = v80;
  *v87 = v81;
  v68[1] = v70;
  *(v68 + 16) = v66;
  v68[3] = v79;
  v71 = sub_10022C350(&qword_100CA3EF0);
  sub_1000A3C14(v67, v68 + *(v71 + 48), type metadata accessor for SummaryDividerView);
  v72 = v68 + *(v71 + 64);
  v73 = v69;
  sub_10010CD54(v69, v70, v66);

  v74 = v83;
  sub_10010CD54(v83, v63, v56);
  v75 = v84;

  sub_10010CD54(v73, v70, v66);

  sub_10010CD54(v74, v63, v56);

  sub_10010CD64(v86, v77, v85 & 1);

  sub_10010CD64(v73, v70, v66);

  sub_10010CD64(v74, v63, v56);
  *v72 = v74;
  *(v72 + 1) = v63;
  v72[16] = v56;
  *(v72 + 3) = v75;

  sub_1000DFD78(v88, type metadata accessor for SummaryDividerView);
  sub_10010CD64(v74, v63, v92);

  sub_1000DFD78(v89, type metadata accessor for SummaryDividerView);
  sub_10010CD64(v73, v70, v90);
}

uint64_t sub_10023C5A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA3EE8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryDividerView(0);
  sub_1000302D8(v1 + *(v10 + 20), v9, &qword_100CA3EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_10023C7B0@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Font.Context();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = _Q0;
  sub_10023C5A8(v5);
  Font.capHeight(in:)();
  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = &a1[*(sub_10022C350(&qword_100CA4750) + 36)];
  v15 = v17[1];
  *v14 = v17[0];
  *(v14 + 1) = v15;
  result = *&v18;
  *(v14 + 2) = v18;
  return result;
}

uint64_t sub_10023C95C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA3EE8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LocationHeaderTemperatureView(0);
  sub_1000302D8(v1 + *(v10 + 32), v9, &qword_100CA3EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10023CB68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10023CC48();
  v4 = v3;
  v6 = v5;
  static Color.black.getter();
  Color.opacity(_:)();

  v7 = Text.shadow(color:radius:x:y:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10023CC48()
{
  v1 = type metadata accessor for Font.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = *v0;
    v33 = *(v0 + 8);
    v34 = v6;
    v32 = *(v0 + 16);
    v7 = *(v0 + 32);
    v31 = *(v0 + 24);
    v35 = v7;
    v36 = v5;
    sub_10002D5A4();

    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    v13 = Text.font(_:)();
    v29 = v14;
    v30 = v13;
    v16 = v15;
    v28 = v17;
    sub_10010CD64(v8, v10, v12 & 1);

    sub_10023C95C(v4);
    Font.capHeight(in:)();
    v18 = *(v2 + 8);
    v18(v4, v1);
    sub_10023C95C(v4);
    Font.capHeight(in:)();
    v18(v4, v1);
    v20 = v29;
    v19 = v30;
    v21 = Text.baselineOffset(_:)();
    v23 = v22;
    v25 = v24;
    sub_10010CD64(v19, v20, v16 & 1);

    v26 = static Text.+ infix(_:_:)();
    sub_10010CD64(v21, v23, v25 & 1);
  }

  else
  {
    v26 = *v0;
    sub_10010CD54(*v0, *(v0 + 8), *(v0 + 16));
  }

  return v26;
}

uint64_t sub_10023CED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = a3 + *(sub_10022C350(&qword_100CA46D0) + 36);
  *v13 = *(a2 + *(type metadata accessor for TranslationAndGradientBackgroundViewModifier(0) + 40));
  *(v13 + 8) = 0;
  sub_10022C350(&qword_100CA4748);
  sub_10023D000(a2, a4, a5);
  v14 = (v13 + *(sub_10022C350(&qword_100CA46F0) + 36));
  *v14 = v10;
  v14[1] = v12;
  v15 = sub_10022C350(&qword_100CA46B8);
  v16 = *(*(v15 - 8) + 16);

  return v16(a3, a1, v15);
}

uint64_t sub_10023D000(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = 0;
  v35 = v30;
  v34 = v32;
  v22 = KeyPath;
  v23 = 0;
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  sub_1000A3C14(a1, v9, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1001540E8(v9, v13 + v11, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  *(v13 + v12) = a2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_10022C350(&qword_100CA4718);
  sub_10022C350(&qword_100CA4738);
  sub_10023F734();
  v14 = sub_10022E824(&qword_100CA4740);
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v20 = v15;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v14;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10023D2DC()
{
  v0 = sub_10022C350(&qword_100CA4740);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  v4 = type metadata accessor for NamedCoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v5 + 8))(v7, v4);
  if ((v13 & 1) == 0)
  {
    CGRectGetMinY(v12);
  }

  type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  static UnitPoint.top.getter();
  v8 = type metadata accessor for EmptyVisualEffect();
  v9 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.scaleEffect(x:y:anchor:)();
  v11[1] = v8;
  v11[2] = v9;
  swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10023D5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = a3 + *(sub_10022C350(&qword_100CA46D8) + 36);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_10022C350(&qword_100CA4710);
  sub_10023D6F8(a2, a4, a5);
  v14 = (v13 + *(sub_10022C350(&qword_100CA4708) + 36));
  *v14 = v10;
  v14[1] = v12;
  v15 = sub_10022C350(&qword_100CA46B8);
  v16 = *(*(v15 - 8) + 16);

  return v16(a3, a1, v15);
}

uint64_t sub_10023D6F8(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = 0;
  v37 = v32;
  v36 = v34;
  v24 = KeyPath;
  v25 = 0;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  sub_1000A3C14(a1, v9, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1001540E8(v9, v13 + v11, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_10022C350(&qword_100CA4718);
  sub_10022C350(&qword_100CA4720);
  sub_10023F734();
  v14 = sub_10022E824(&qword_100CA4738);
  v15 = sub_10022E824(&qword_100CA4740);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v22 = v16;
  v23 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v15;
  v23 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v22 = v14;
  v23 = v19;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10023DA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CA4740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_10022C350(&qword_100CA4738);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  sub_100163114(a2, a3, *(a3 + *(v13 + 28)), *(a3 + *(v13 + 28) + 8));
  static UnitPoint.center.getter();
  v14 = type metadata accessor for EmptyVisualEffect();
  v15 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.scaleEffect(x:y:anchor:)();
  v18 = v14;
  v19 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  (*(v6 + 8))(v8, v5);
  v18 = v5;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v10 + 8))(v12, v9);
}

void (*sub_10023DD14(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

void sub_10023DD88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10023DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100151E08(&qword_100CA4660, type metadata accessor for LocationHeaderViewMeasurements);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10023DE64()
{
  swift_getKeyPath();
  sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10023DF2C(double a1, double a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10023DFE4();
  }
}

uint64_t sub_10023E0B4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for NamedCoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = 0xD000000000000012;
  v19[1] = 0x8000000100ABBD00;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v21 = CGRectIntegral(v20);
  v16 = v21.origin.y - a2;
  result = GeometryProxy.size.getter();
  *a1 = v16;
  *(a1 + 8) = v18;
  return result;
}

uint64_t sub_10023E278(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v13 = *(a1 + 8);
  v10 = v14;

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDA0(&v13, &unk_100CA4658);
    (*(v7 + 8))(v9, v6);
  }

  sub_10023DF2C(a2, a3);
}

unint64_t sub_10023E40C()
{
  result = qword_100CA3D88;
  if (!qword_100CA3D88)
  {
    sub_10022E824(&qword_100CA3D18);
    sub_10023FBF4(&qword_100CA3D90, &unk_100CA3D98);
    sub_10015A530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3D88);
  }

  return result;
}

unint64_t sub_10023E4C4()
{
  result = qword_100CA3EA8;
  if (!qword_100CA3EA8)
  {
    sub_10022E824(&qword_100CA3E50);
    sub_10023E580();
    sub_100151E08(&qword_100CA3EE0, type metadata accessor for ConditionSummaryModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3EA8);
  }

  return result;
}

unint64_t sub_10023E580()
{
  result = qword_100CA3EB0;
  if (!qword_100CA3EB0)
  {
    sub_10022E824(&qword_100CA3E40);
    sub_10023E60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3EB0);
  }

  return result;
}

unint64_t sub_10023E60C()
{
  result = qword_100CA3EB8;
  if (!qword_100CA3EB8)
  {
    sub_10022E824(&qword_100CA3EA0);
    sub_10023FBF4(&qword_100CA3EC0, &unk_100CA3EC8);
    sub_10023FBF4(&qword_100CA3ED0, &unk_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3EB8);
  }

  return result;
}

unint64_t sub_10023E710()
{
  result = qword_100CA3F40;
  if (!qword_100CA3F40)
  {
    sub_10022E824(&qword_100CA3F30);
    sub_10023E7CC();
    sub_100151E08(&qword_100CA3F70, type metadata accessor for TemperatureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3F40);
  }

  return result;
}

unint64_t sub_10023E7CC()
{
  result = qword_100CA3F48;
  if (!qword_100CA3F48)
  {
    sub_10022E824(&qword_100CA3F28);
    sub_10023E888();
    sub_100151E08(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3F48);
  }

  return result;
}

unint64_t sub_10023E888()
{
  result = qword_100CA3F50;
  if (!qword_100CA3F50)
  {
    sub_10022E824(&qword_100CA3F58);
    sub_100151E08(&qword_100CA3F60, type metadata accessor for LocationHeaderTemperatureView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3F50);
  }

  return result;
}

unint64_t sub_10023E964()
{
  result = qword_100CA3FB8;
  if (!qword_100CA3FB8)
  {
    sub_10022E824(&qword_100CA3FA0);
    sub_10023E9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3FB8);
  }

  return result;
}

unint64_t sub_10023E9F0()
{
  result = qword_100CA3FC0;
  if (!qword_100CA3FC0)
  {
    sub_10022E824(&qword_100CA3E68);
    sub_10023EA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3FC0);
  }

  return result;
}

unint64_t sub_10023EA7C()
{
  result = qword_100CA3FC8;
  if (!qword_100CA3FC8)
  {
    sub_10022E824(&qword_100CA3FD0);
    sub_10023EB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3FC8);
  }

  return result;
}

unint64_t sub_10023EB00()
{
  result = qword_100CA3FD8;
  if (!qword_100CA3FD8)
  {
    sub_10022E824(&qword_100CA3FE0);
    sub_100151E08(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3FD8);
  }

  return result;
}

uint64_t sub_10023EBBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TranslationAndGradientBackgroundViewModifier.ScrollAdjustments(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10023EC90(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[57])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023ECDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_10023ED80()
{
  sub_10013D7AC(319, &qword_100CA4348, &type metadata accessor for Font.Context);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10023EE7C(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    if (v2 > 1)
    {
      return (v2 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10022C350(&qword_100CA4170);
    v4 = sub_1000039C8();

    return sub_100024D10(v4, v5, v6);
  }
}

void sub_10023EF14()
{
  sub_100003A00();
  if (v2 == 254)
  {
    *(v1 + 8) = -v0;
  }

  else
  {
    sub_10022C350(&qword_100CA4170);
    v3 = sub_1000039C8();

    sub_10001B350(v3, v4, v0, v5);
  }
}

void sub_10023EFB8()
{
  sub_10009BDF4(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10013D7AC(319, &qword_100CA4348, &type metadata accessor for Font.Context);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for LocationNameModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationNameModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10023F128()
{
  result = qword_100CA4600;
  if (!qword_100CA4600)
  {
    sub_10022E824(&qword_100CA3DC8);
    sub_10023F1B4();
    sub_100151CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4600);
  }

  return result;
}

unint64_t sub_10023F1B4()
{
  result = qword_100CA4608;
  if (!qword_100CA4608)
  {
    sub_10022E824(&qword_100CA3D58);
    sub_10023F26C();
    sub_10023FBF4(&qword_100CA4630, &qword_100CA3DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4608);
  }

  return result;
}

unint64_t sub_10023F26C()
{
  result = qword_100CA4610;
  if (!qword_100CA4610)
  {
    sub_10022E824(&qword_100CA3D50);
    sub_10023FBF4(&qword_100CA4618, &qword_100CA3D48);
    sub_10023FBF4(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4610);
  }

  return result;
}

__n128 sub_10023F3D8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_10023F3E8(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);

  v4 = v1 + v3 + v2[7];
  sub_10022C350(&qword_100CA3DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for LocationHeaderViewMeasurements(0) + 32);
    v6 = v5 + *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10023F554()
{
  result = qword_100CA46E0;
  if (!qword_100CA46E0)
  {
    sub_10022E824(&qword_100CA46D0);
    sub_10022E824(&qword_100CA46C0);
    sub_10022E824(&qword_100CA4680);
    sub_10023FBF4(&qword_100CA46C8, &qword_100CA46C0);
    type metadata accessor for EmptyVisualEffect();
    sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CA46E8, &unk_100CA46F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA46E0);
  }

  return result;
}

unint64_t sub_10023F734()
{
  result = qword_100CA4728;
  if (!qword_100CA4728)
  {
    sub_10022E824(&qword_100CA4718);
    sub_100160DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4728);
  }

  return result;
}

uint64_t sub_10023F7C0()
{
  type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + *(v0 + 20);
  sub_10022C350(&qword_100CA3DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for LocationHeaderViewMeasurements(0) + 32);
    v6 = v5 + *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  sub_1000EBD74(*(v3 + *(v0 + 24)), *(v3 + *(v0 + 24) + 8));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for ChartTickValueKind(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartTickValueKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_10023F9C8()
{
  result = qword_100CA4790;
  if (!qword_100CA4790)
  {
    sub_10022E824(&qword_100CA4650);
    sub_10023FBF4(&qword_100CA4798, &qword_100CA4648);
    sub_10023FBF4(&qword_100CA47A0, &unk_100CA47A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4790);
  }

  return result;
}

unint64_t sub_10023FAAC()
{
  result = qword_100CA47B0;
  if (!qword_100CA47B0)
  {
    sub_10022E824(&qword_100CA4750);
    sub_100151E08(&qword_100CA47B8, &type metadata accessor for RoundedRectangle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA47B0);
  }

  return result;
}

unint64_t sub_10023FB6C()
{
  result = qword_100CA47D8;
  if (!qword_100CA47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA47D8);
  }

  return result;
}

void *sub_10023FBC0(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_10023FBF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10023FC38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA48C8);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v20, v21);
      __chkstk_darwin(v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for AirQualityDetailInteractor();
      v19[3] = v11;
      v19[4] = &off_100C57960;
      v19[0] = v10;
      v12 = type metadata accessor for AirQualityDetailModule();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v19, v11);
      __chkstk_darwin(v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_100C57960;
      v13[2] = v18;
      v13[7] = v5;
      sub_100006F14(v19);
      result = sub_100006F14(v20);
      a2[3] = v12;
      a2[4] = &off_100C60720;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10023FEB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AirQualityDetailViewStateReducer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C56FB0;
  *a1 = result;
  return result;
}

uint64_t sub_10023FEFC()
{
  sub_10022C350(&qword_100CA48B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA48B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA48C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA48C8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100240028@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for AirQualityDetailTracker;
      a2[4] = &off_100C55410;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100240170@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v25;
  if (v25)
  {
    v21 = v26;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA48B0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v24)
    {
      v6 = sub_10002D7F8(v23, v24);
      __chkstk_darwin(v6);
      v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v22[3] = &type metadata for AirQualityDetailTracker;
      v22[4] = &off_100C55410;
      v10 = swift_allocObject();
      v22[0] = v10;
      v11 = v8[1];
      v10[1] = *v8;
      v10[2] = v11;
      v10[3] = v8[2];
      v12 = type metadata accessor for AirQualityDetailInteractor();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v22, &type metadata for AirQualityDetailTracker);
      __chkstk_darwin(v14);
      v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v13[7] = &type metadata for AirQualityDetailTracker;
      v13[8] = &off_100C55410;
      v18 = swift_allocObject();
      v19 = v16[1];
      v18[1] = *v16;
      v18[2] = v19;
      v18[3] = v16[2];
      v13[2] = v5;
      v13[3] = v21;
      v13[4] = v18;
      sub_100006F14(v22);
      result = sub_100006F14(v23);
      a2[3] = v12;
      a2[4] = &off_100C57960;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100240434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4908);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v21)
    {
      v5 = sub_10002D7F8(v20, v21);
      __chkstk_darwin(v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for NewsArticleComponentViewModelFactory();
      v19[3] = v10;
      v19[4] = &off_100C60578;
      v19[0] = v9;
      v11 = type metadata accessor for AirQualityDetailViewModelFactory();
      v12 = swift_allocObject();
      v13 = sub_10002D7F8(v19, v10);
      __chkstk_darwin(v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_100C60578;
      v12[2] = v17;
      sub_100013188(&v22, (v12 + 7));
      sub_100006F14(v19);
      result = sub_100006F14(v20);
      a2[3] = v11;
      a2[4] = &off_100C6A920;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002406B0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v15;
  if (v15)
  {
    v5 = v17;
    v4 = v18;
    v6 = v16;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA48C0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v14)
    {
      v7 = *sub_1000161C0(v13, v14);
      v12[3] = type metadata accessor for AirQualityDetailViewModelFactory();
      v12[4] = &off_100C6A920;
      v12[0] = v7;
      sub_100035B30(v12, v11);
      v8 = swift_allocObject();
      sub_100013188(v11, v8 + 16);

      sub_100006F14(v12);
      sub_100006F14(v13);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100240918;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10009F868;
      *(v10 + 24) = v9;
      sub_10022C350(&qword_100CA48C8);
      swift_allocObject();
      return sub_10024A174(v3, v6, v5, v4, sub_10001BAA8, 0, sub_10026AB30, 0, sub_10026AB64, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100240920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000019, 0x8000000100ABBD50, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026ABF4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C46DE8;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100240C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x617465446E6F6F4DLL, 0xEF7475706E496C69, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000013, 0x8000000100ABBE40, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026AC60;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C46F78;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100241000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000016, 0x8000000100ABBE60, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026ACF8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C470E0;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBE80, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBEA0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026ADB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47248;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_1002416DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABBEC0, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABBEE0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026AE60;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C473B0;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100241A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x656B636950796144, 0xEE007475706E4972, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000012, 0x8000000100ABBF00, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026AF7C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47518;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100241DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000010, 0x8000000100ABBF20, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B014;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47680;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000010, 0x8000000100ABBF40, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000014, 0x8000000100ABBF60, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B080;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C477E8;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABBF80, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABBFA0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B114;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47950;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024280C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBFC0, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBFE0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B1C8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47AB8;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100242B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC000, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC020, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B234;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47C20;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100242EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000020, 0x8000000100ABC040, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000024, 0x8000000100ABC070, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B2A0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C47D88;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x75706E497473694CLL, 0xE900000000000074, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0x776569567473694CLL, 0xED00006C65646F4DLL, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B39C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48490;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_1002435D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0x6956686372616553, 0xEF6C65646F4D7765, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B4B4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C485F8;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100243948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC190, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABC1B0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B594;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48760;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100243CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC1D0, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC1F0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B654;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48A30;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100244028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC210, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC230, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B6C0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48B98;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100244398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABC250, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001CLL, 0x8000000100ABC270, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B72C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48D00;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100244708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x756E654D7473694CLL, 0xED00007475706E49, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC290, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B808;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48E68;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100244A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC2B0, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC2D0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B8FC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48FD0;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_100244DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD00000000000001ALL, 0x8000000100ABC2F0, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001ELL, 0x8000000100ABC310, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B968;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C49138;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void sub_10024515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABC330, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABC350, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026BA20;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C492A0;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

void (*sub_1002454CC())(void *__return_ptr)
{
  v0 = type metadata accessor for AirQualityDetailViewModel(0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CA48D8);
  v2 = __chkstk_darwin(v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = (&v12 - v5);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_10022C350(&qword_100CA48F0);
      v9 = *v6;
      sub_1001AFB34(v6 + *(v8 + 48), type metadata accessor for AirQualityDetailViewModel);
    }

    else
    {
      sub_1000180EC(v6, &qword_100CA48D8);
      return 0;
    }
  }

  else
  {
    v10 = v6[2];
    (*v6)(&v13);
    v10(&v13);

    sub_10022C350(&qword_100CA48F0);
    v9 = v13;
    *v4 = v13;
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100097AA4();
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_100245758@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MoonDetailViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for MoonDetailInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4920);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4940) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for MoonDetailViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4920);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4940);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

void (*sub_100245AB0())(void *__return_ptr, uint64_t)
{
  swift_beginAccess();
  memcpy(__dst, v0 + 16, 0x69uLL);
  v1 = __dst[0];
  v2 = __dst[2];
  if (LOBYTE(__dst[13]))
  {
    if (LOBYTE(__dst[13]) == 1)
    {
      __src[0] = __dst[1];
      __src[1] = __dst[2];
      __src[2] = __dst[3];
      memcpy(&__src[3], v0 + 48, 0x48uLL);
      sub_100095588();
      sub_10026AD10(__src);
    }

    else
    {
      v7[0] = __dst[0];
      v7[1] = __dst[1];
      v7[2] = __dst[2];
      v7[3] = __dst[3];
      memcpy(&v7[4], v0 + 48, 0x48uLL);
      LOBYTE(v7[13]) = 2;
      sub_100095588();
      sub_1000180EC(v7, &qword_100CA4960);
      return 0;
    }
  }

  else
  {
    v3 = sub_100095588();
    v1(&v5, v3);
    v2(__src, &v5);

    v1 = v5;
    memcpy(v7, v0 + 16, 0x69uLL);
    *(v0 + 2) = v5;
    memcpy(v0 + 24, __src, 0x60uLL);
    v0[120] = 1;

    sub_1000180EC(v7, &qword_100CA4960);
  }

  return v1;
}

uint64_t sub_100245C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConditionDetailViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for ConditionDetailInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4978);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4998) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for ConditionDetailViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4978);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4998);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100245FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnitsConfigurationViewModel(0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA49B0);
  __chkstk_darwin(v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA49D0) + 48);
      v11 = v8[1];
      *a1 = *v8;
      *(a1 + 16) = v11;
      *(a1 + 32) = v8[2];
      *(a1 + 42) = *(v8 + 42);
      return sub_1001AFB34(v8 + v10, type metadata accessor for UnitsConfigurationViewModel);
    }

    else
    {
      *a1 = 1;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return sub_1000180EC(v8, &qword_100CA49B0);
    }
  }

  else
  {
    v13 = *(v8 + 2);
    (*v8)(&v20);
    v13(&v20);

    sub_10022C350(&qword_100CA49D0);
    *(v24 + 10) = *(v22 + 10);
    v14 = v20;
    v15 = v21;
    v23[0] = v20;
    v23[1] = v21;
    v16 = v22[0];
    v24[0] = v22[0];
    *(v5 + 42) = *(v22 + 10);
    *v5 = v14;
    v5[1] = v15;
    v5[2] = v16;
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_10026AE78(v23, v19);
    sub_100097AA4();
    result = swift_endAccess();
    v17 = v21;
    *a1 = v20;
    *(a1 + 16) = v17;
    *(a1 + 32) = v22[0];
    *(a1 + 42) = *(v22 + 10);
  }

  return result;
}

uint64_t sub_1002462CC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for DayPickerInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA49E8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4A08) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for DayPickerViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA49E8);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4A08);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

void (*sub_100246624())(void *__return_ptr)
{
  v0 = type metadata accessor for VFXTestViewModel();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CA4A20);
  __chkstk_darwin(v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v12 - v5);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_10022C350(&qword_100CA4A30);
      v9 = *v6;
      sub_1001AFB34(v6 + *(v8 + 48), type metadata accessor for VFXTestViewModel);
    }

    else
    {
      sub_1000180EC(v6, &qword_100CA4A20);
      return 0;
    }
  }

  else
  {
    v10 = v6[2];
    (*v6)(&v13);
    v10(&v13);

    sub_10022C350(&qword_100CA4A30);
    v9 = v13;
    *v3 = v13;
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100097AA4();
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_1002468B0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for WeatherMenuInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4A48);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4A68) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for WeatherMenuViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4A48);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4A68);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

BOOL sub_100246C08()
{
  swift_beginAccess();
  if (*(v0 + 48))
  {
    return *(v0 + 48) != 1;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v5 = v3(v4);
  v2(&v11, v5);

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  *(v0 + 16) = v11;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v10 = *(v0 + 48);
  *(v0 + 48) = 1;
  sub_10026B12C(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t sub_100246CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for LocationPreviewInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4A90);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4AB0) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for LocationPreviewViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4A90);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4AB0);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100247038@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for InteractiveMapInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4AC8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4AE8) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for InteractiveMapViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4AC8);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4AE8);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100247390@<X0>(uint64_t a1@<X8>)
{
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  __chkstk_darwin(HourPrecipitationDetailViewModel - 8);
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  __chkstk_darwin(HourPrecipitationDetailInput);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4B00);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4B20) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, HourPrecipitationDetailInput);
      return sub_1001AFB34(v8 + v10, type metadata accessor for NextHourPrecipitationDetailViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, HourPrecipitationDetailInput);
      return sub_1000180EC(v8, &qword_100CA4B00);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4B20);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, HourPrecipitationDetailInput);
  }
}

uint64_t sub_1002476E8@<X0>(uint64_t a1@<X8>)
{
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v16 = type metadata accessor for ActiveLocationInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4B38);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4B58) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for ActiveLocationModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4B38);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4B58);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100247A40@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewerViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for LocationViewerInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4BF0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4C10) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for LocationViewerViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4BF0);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4C10);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100247D98@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherConditionBackgroundModel();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA4BA8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v21 - v11);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(sub_10022C350(&qword_100CA4BC8) + 48);
      (*(v24 + 32))(a1, v12, v4);
      sub_10001B350(a1, 0, 1, v4);
      return (*(v25 + 8))(v12 + v14, v26);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v4);
      return sub_1000180EC(v12, &qword_100CA4BA8);
    }
  }

  else
  {
    v16 = *v12;
    v22 = a1;
    v17 = v12[2];
    v16();
    (v17)(v6);

    v18 = *(sub_10022C350(&qword_100CA4BC8) + 48);
    v19 = v24;
    (*(v24 + 16))(v9, v6, v4);
    (*(v25 + 32))(&v9[v18], v23, v26);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v20 = v22;
    (*(v19 + 32))(v22, v6, v4);
    return sub_10001B350(v20, 0, 1, v4);
  }
}

uint64_t sub_100248154@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for ListInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4C28);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4C48) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for ListViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4C28);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4C48);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

void (*sub_1002484AC())(void *__return_ptr)
{
  v0 = type metadata accessor for SearchViewModel(0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CA4C60);
  __chkstk_darwin(v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v12 - v5);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_10022C350(&qword_100CA4C70);
      v9 = *v6;
      sub_1001AFB34(v6 + *(v8 + 48), type metadata accessor for SearchViewModel);
    }

    else
    {
      sub_1000180EC(v6, &qword_100CA4C60);
      return 0;
    }
  }

  else
  {
    v10 = v6[2];
    (*v6)(&v13);
    v10(&v13);

    sub_10022C350(&qword_100CA4C70);
    v9 = v13;
    *v3 = v13;
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100097AA4();
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_100248738@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NotificationsOptInInput();
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4C88);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v19 = a1;
      v20 = 1;
      return sub_10001B350(v19, v20, 1, v2);
    }
  }

  else
  {
    v12 = *v10;
    v22 = a1;
    v13 = *(v10 + 2);
    v12();
    v13(&v23, v4);

    v14 = &v7[*(sub_10022C350(&qword_100CA4CA0) + 48)];
    sub_1001A7BF8();
    v15 = BYTE2(v23);
    v16 = *(&v23 + 3);
    v17 = BYTE5(v23);
    v18 = BYTE6(v23);
    *v14 = v23;
    v14[2] = v15;
    v14[5] = v17;
    *(v14 + 3) = v16;
    v14[6] = v18;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    a1 = v22;
  }

  sub_1000A0AC0();
  v19 = a1;
  v20 = 0;
  return sub_10001B350(v19, v20, 1, v2);
}

void (*sub_1002489E8())(void *__return_ptr)
{
  v0 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CA4CB8);
  v2 = __chkstk_darwin(v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = (&v12 - v5);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_10022C350(&qword_100CA4CC8);
      v9 = *v6;
      sub_1001AFB34(v6 + *(v8 + 48), type metadata accessor for MainViewModel);
    }

    else
    {
      sub_1000180EC(v6, &qword_100CA4CB8);
      return 0;
    }
  }

  else
  {
    v10 = v6[2];
    (*v6)(&v13);
    v10(&v13);

    sub_10022C350(&qword_100CA4CC8);
    v9 = v13;
    *v4 = v13;
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100097AA4();
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_100248C74@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for AveragesDetailInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4CD8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4CF8) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for AveragesDetailViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4CD8);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4CF8);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100248FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MoonScrubberViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for MoonScrubberInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4D10);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4D30) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for MoonScrubberViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4D10);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4D30);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100249324@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SunriseSunsetDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for SunriseSunsetDetailInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4D48);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4D68) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for SunriseSunsetDetailViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4D48);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4D68);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

void *sub_10024967C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v0 + 57))
  {
    if (*(v0 + 57) == 1)
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = *(v0 + 32);

    (v2)(v22, v5);
    v4(v20, v22);

    v2 = v22[0];
    v6 = v22[1];
    v7 = v23;
    v8 = v20[0];
    v9 = v20[1];
    v10 = v21;
    v11 = *(v1 + 24);
    v19 = *(v1 + 16);
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    *(v1 + 16) = v22[0];
    *(v1 + 24) = v6;
    *(v1 + 32) = v7;
    *(v1 + 40) = v8;
    *(v1 + 48) = v9;
    v15 = *(v1 + 56);
    *(v1 + 56) = v10;
    v16 = *(v1 + 57);
    *(v1 + 57) = 1;
    v17 = v2;
    sub_10026B820(v19, v11, v12, v13, v14, v15, v16);
  }

  return v2;
}

uint64_t sub_1002497C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MoonCalendarViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for MoonCalendarInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4D90);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4DB0) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for MoonCalendarViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4D90);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4DB0);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100249B18@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for HomeAndWorkRefinementInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4DC8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4DE8) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for HomeAndWorkRefinementViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4DC8);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4DE8);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t sub_100249E70@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NotificationSettingsInput();
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4E00);
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v19 - v9);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = a1;
      v13 = *(sub_10022C350(&qword_100CA4E20) + 48);
      sub_1000A0AC0();
      sub_10001B350(v12, 0, 1, v2);
      memcpy(__dst, v10 + v13, 0x61uLL);
      return sub_10026BA38(__dst);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v2);
      return sub_1000180EC(v10, &qword_100CA4E00);
    }
  }

  else
  {
    v15 = *v10;
    v20 = a1;
    v16 = v10[2];
    v15();
    (v16)(__dst, v4);

    v17 = *(sub_10022C350(&qword_100CA4E20) + 48);
    sub_1001A7BF8();
    memcpy(&v8[v17], __dst, 0x61uLL);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v18 = v20;
    sub_1000A0AC0();
    return sub_10001B350(v18, 0, 1, v2);
  }
}

uint64_t sub_10024A174(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t (*)(uint64_t a1), void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v18 = swift_allocObject();
  *(v18 + 2) = a7;
  *(v18 + 3) = a8;
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *(v18 + 6) = a3;
  *(v18 + 7) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = a9;
  *(v19 + 24) = a10;
  v20 = (v11 + *(*v11 + 120));
  *v20 = sub_10026ABA0;
  v20[1] = v18;
  v20[2] = sub_10026ABB4;
  v20[3] = v19;
  sub_10022C350(&qword_100CA48D8);
  swift_storeEnumTagMultiPayload();
  sub_100040690();

  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a9;
  v23[8] = a10;

  a3(v29, v21, sub_10026ABBC, v23);

  sub_1000161C0(v29, v29[3]);

  dispatch thunk of Disposable.dispose(on:)();

  sub_100006F14(v29);
  return v11;
}

uint64_t sub_10024C714(void (*a1)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v11);
  a1(v10, &v11, 1);

  result = v10[0];
  if (!v10[0])
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v5._countAndFlagsBits = 0xD00000000000004BLL;
    v5._object = 0x8000000100ABBDF0;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x746174536E69614DLL;
    v6._object = 0xE900000000000065;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABBD50;
    v8._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024C860(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4938);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for MoonDetailInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4938);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x617465446E6F6F4DLL;
  v12._object = 0xEF7475706E496C69;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABBE40;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024CA54(void (*a1)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v11);
  a1(v10, &v11, 1);

  result = v10[0];
  if (!v10[0])
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v5._countAndFlagsBits = 0xD00000000000004BLL;
    v5._object = 0x8000000100ABBDF0;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x746174536E69614DLL;
    v6._object = 0xE900000000000065;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABBE60;
    v8._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024CBA0(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4990);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for ConditionDetailInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4990);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABBE80;
  v12._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x8000000100ABBEA0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024CD88@<X0>(void (*a1)(__int128 *__return_ptr, _OWORD *, uint64_t)@<X0>, void (*a2)(_OWORD *__return_ptr)@<X2>, _OWORD *a3@<X8>)
{
  a2(v12);
  a1(&v14, v12, 1);

  if (v14 == 1)
  {
    v12[0] = v14;
    v12[1] = v15;
    v13[0] = v16[0];
    *(v13 + 10) = *(v16 + 10);
    sub_1000180EC(v12, &qword_100CA49C0);
    _StringGuts.grow(_:)(82);
    v7._countAndFlagsBits = 0xD00000000000004BLL;
    v7._object = 0x8000000100ABBDF0;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABBEC0;
    v8._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 8236;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD00000000000001BLL;
    v10._object = 0x8000000100ABBEE0;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v15;
    *a3 = v14;
    a3[1] = v6;
    a3[2] = v16[0];
    *(a3 + 42) = *(v16 + 10);
  }

  return result;
}

uint64_t sub_10024CF28(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4A00);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for DayPickerInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4A00);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x656B636950796144;
  v12._object = 0xEE007475706E4972;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABBF00;
  v14._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D11C(void (*a1)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v11);
  a1(v10, &v11, 1);

  result = v10[0];
  if (!v10[0])
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v5._countAndFlagsBits = 0xD00000000000004BLL;
    v5._object = 0x8000000100ABBDF0;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x746174536E69614DLL;
    v6._object = 0xE900000000000065;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABBF20;
    v8._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024D268(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4A60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for WeatherMenuInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4A60);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABBF40;
  v12._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000014;
  v14._object = 0x8000000100ABBF60;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D450(void (*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v10);
  a1(&v11, v10, 1);

  if (v11)
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v5._countAndFlagsBits = 0xD00000000000004BLL;
    v5._object = 0x8000000100ABBDF0;
    String.append(_:)(v5);
    v6._object = 0x8000000100ABBF80;
    v6._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 0xD00000000000001DLL;
    v8._object = 0x8000000100ABBFA0;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024D598(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4AA8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for LocationPreviewInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4AA8);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABBFC0;
  v12._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x8000000100ABBFE0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D780(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4AE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for InteractiveMapInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4AE0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC000;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100ABC020;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D968(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4B18);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  if (sub_100024D10(v8, 1, HourPrecipitationDetailInput) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4B18);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC040;
  v12._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x8000000100ABC070;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024DB50(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4C40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for ListInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4C40);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._object = 0x8000000100ABBDF0;
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x75706E497473694CLL;
  v12._object = 0xE900000000000074;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x776569567473694CLL;
  v14._object = 0xED00006C65646F4DLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024DD40(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4C98);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for NotificationsOptInInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4C98);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC190;
  v12._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100ABC1B0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024DF28(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4CF0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for AveragesDetailInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4CF0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC1D0;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100ABC1F0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024E110(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4D28);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for MoonScrubberInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4D28);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC210;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100ABC230;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024E2F8(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4D60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for SunriseSunsetDetailInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4D60);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC250;
  v12._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0x8000000100ABC270;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024E4E0(void (*a1)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v10);
  a1(v11, &v10, 1);

  result = v11[0];
  if (!v11[0])
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v5._countAndFlagsBits = 0xD00000000000004BLL;
    v5._object = 0x8000000100ABBDF0;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x756E654D7473694CLL;
    v6._object = 0xED00007475706E49;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABC290;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E640(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4DA8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for MoonCalendarInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4DA8);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC2B0;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100ABC2D0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024E828(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4DE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for HomeAndWorkRefinementInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4DE0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC2F0;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  v14._object = 0x8000000100ABC310;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024EA10(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4E10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for NotificationSettingsInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4E10);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC330;
  v12._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x8000000100ABC350;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024EBF8(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA48E8);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v15 = a1;
  a2(&v15, 1);
  v7 = type metadata accessor for AirQualityDetailViewModel(0);
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA48E8);
  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x746174536E69614DLL;
  v10._object = 0xE900000000000065;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABBD50;
  v12._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024EDC4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4928);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for MoonDetailViewModel(0);
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4928);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x617465446E6F6F4DLL;
  v10._object = 0xEF7475706E496C69;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABBE40;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10024EF94@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t *, uint64_t)@<X1>, void *a3@<X8>)
{
  v12 = a1;
  a2(__src, &v12, 1);
  if ((~__src[0] & 0xF000000000000006) != 0)
  {
    return memcpy(a3, __src, 0x60uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_1000180EC(__dst, &qword_100CA4958);
  _StringGuts.grow(_:)(87);
  v5._countAndFlagsBits = 0xD000000000000050;
  v5._object = 0x8000000100ABBD90;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x746174536E69614DLL;
  v6._object = 0xE900000000000065;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._object = 0x8000000100ABBE60;
  v8._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024F108(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4980);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for ConditionDetailViewModel(0);
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4980);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABBE80;
  v10._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x8000000100ABBEA0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024F2CC(_OWORD *a1, void (*a2)(_OWORD *, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA49B8);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  v17[0] = a1[2];
  *(v17 + 10) = *(a1 + 42);
  a2(v16, 1);
  v8 = type metadata accessor for UnitsConfigurationViewModel(0);
  if (sub_100024D10(v6, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA49B8);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABBEC0;
  v11._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x8000000100ABBEE0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024F4A8(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA49F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for DayPickerViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA49F0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x656B636950796144;
  v11._object = 0xEE007475706E4972;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100ABBF00;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024F678(uint64_t a1, void (*a2)(uint64_t *, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4A28);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v16 = a1;
  a2(&v16, 1, v5);
  v8 = type metadata accessor for VFXTestViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4A28);
  v15[1] = 0;
  v15[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x746174536E69614DLL;
  v11._object = 0xE900000000000065;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100ABBF20;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024F844(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4A50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for WeatherMenuViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4A50);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABBF40;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100ABBF60;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024FA08(void (*a1)(void *__return_ptr))
{
  a1(v7);
  if (LOBYTE(v7[0]) != 2)
  {
    return v7[0] & 1;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v2._countAndFlagsBits = 0xD000000000000050;
  v2._object = 0x8000000100ABBD90;
  String.append(_:)(v2);
  v3._object = 0x8000000100ABBF80;
  v3._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x8000000100ABBFA0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024FB24(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4A98);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for LocationPreviewViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4A98);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABBFC0;
  v11._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000018;
  v13._object = 0x8000000100ABBFE0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024FCE8(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4AD0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for InteractiveMapViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4AD0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC000;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100ABC020;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024FEAC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4B08);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  if (sub_100024D10(v6, 1, HourPrecipitationDetailViewModel) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4B08);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABC040;
  v10._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000024;
  v12._object = 0x8000000100ABC070;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100250070(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4C30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for ListViewModel();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4C30);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._object = 0x8000000100ABBD90;
  v9._countAndFlagsBits = 0xD000000000000050;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x75706E497473694CLL;
  v10._object = 0xE900000000000074;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x776569567473694CLL;
  v12._object = 0xED00006C65646F4DLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10025023C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4C68);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v16 = a1;
  a2(&v16, 1, v5);
  v8 = type metadata accessor for SearchViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4C68);
  v15[1] = 0;
  v15[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._object = 0x8000000100ABBD90;
  v10._countAndFlagsBits = 0xD000000000000050;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x746174536E69614DLL;
  v11._object = 0xE900000000000065;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6956686372616553;
  v13._object = 0xEF6C65646F4D7765;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10025040C(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t))
{
  a2(v8, a1, 1);
  if ((v8[0] & 0xFF0000) != 0x20000)
  {
    return (LODWORD(v8[0]) | ((WORD2(v8[0]) | (BYTE6(v8[0]) << 16)) << 32)) & 0xFF01FFFFFF01FFFFLL;
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v3._countAndFlagsBits = 0xD000000000000050;
  v3._object = 0x8000000100ABBD90;
  String.append(_:)(v3);
  v4._object = 0x8000000100ABC190;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v6._object = 0x8000000100ABC1B0;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100250540(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4CE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for AveragesDetailViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4CE0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC1D0;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100ABC1F0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100250704(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4D18);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for MoonScrubberViewModel();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4D18);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABC210;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000100ABC230;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002508C8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4D50);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for SunriseSunsetDetailViewModel();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4D50);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABC250;
  v10._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x8000000100ABC270;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100250A8C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *__return_ptr, void *, uint64_t))
{
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3 & 1;
  a4(v10, v11, 1);
  result = v10[0];
  if (!v10[0])
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    v5._countAndFlagsBits = 0xD000000000000050;
    v5._object = 0x8000000100ABBD90;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x756E654D7473694CLL;
    v6._object = 0xED00007475706E49;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 8236;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._object = 0x8000000100ABC290;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100250BC8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4D98);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  v7 = type metadata accessor for MoonCalendarViewModel();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4D98);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABC2B0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000100ABC2D0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100250D8C(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4DD0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4DD0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC2F0;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000001ELL;
  v13._object = 0x8000000100ABC310;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100250F50@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  a2(__src, a1, 1);
  if (LOBYTE(__src[12]) <= 0xFDu)
  {
    return memcpy(a3, __src, 0x61uLL);
  }

  memcpy(__dst, __src, 0x61uLL);
  sub_1000180EC(__dst, &qword_100CA4E18);
  _StringGuts.grow(_:)(87);
  v5._countAndFlagsBits = 0xD000000000000050;
  v5._object = 0x8000000100ABBD90;
  String.append(_:)(v5);
  v6._object = 0x8000000100ABC330;
  v6._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v8._object = 0x8000000100ABC350;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002510B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void), uint64_t a6, void (*a7)(uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100240920(v22, sub_10026ABD4, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026ABD4;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026ABEC;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C46D70;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025A060(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100251738(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100240C8C(v22, sub_10026AC48, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AC48;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C46F28;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025A658(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100251DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void), uint64_t a6, void (*a7)(void *__return_ptr, uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v46 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v35 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v37 = v14;
    v38 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v26[15] = v46;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v27 = qword_100CA2BF0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_100241000(v22, sub_10026ACE0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v36 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = *(v39 + 8);
        v46(v18, v45);
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10026ACE0;
        *(v28 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47090;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v31 = v42;
        v32 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v44;
        v34 = v36;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v31, v32);
        (*(v41 + 8))(v30, v43);
        v46(v33, v45);
        return sub_1000180EC(v48, &qword_100CA48E0);
      }

      sub_10025AFD0(a5, a6, v48, v22, a7);
    }

LABEL_11:

    return sub_1000180EC(v48, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100252448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024136C(v22, sub_10026ADA0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026ADA0;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C471F8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025B48C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100252AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t, void, __n128), uint64_t a6, void (*a7)(__int128 *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1002416DC(v22, sub_10026AE48, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AE48;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47360;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025BE00(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100253158(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100241A4C(v22, sub_10026AF64, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AF64;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C474C8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025C748(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_1002537E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, __n128), uint64_t a6, void (*a7)(uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100241DC0(v22, sub_10026AFFC, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AFFC;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47630;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025D0C0(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100253E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024212C(v22, sub_10026B068, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B068;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47798;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025D6B8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_1002544F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void), uint64_t a6, void (*a7)(uint64_t *__return_ptr), void (*a8)(char *, uint64_t))
{
  v46 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v35 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v37 = v14;
    v38 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v26[15] = v46;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v27 = qword_100CA2BF0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_10024249C(v22, sub_10026B0FC, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v36 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = *(v39 + 8);
        v46(v18, v45);
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10026B0FC;
        *(v28 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47900;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v31 = v42;
        v32 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v44;
        v34 = v36;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v31, v32);
        (*(v41 + 8))(v30, v43);
        v46(v33, v45);
        return sub_1000180EC(v48, &qword_100CA48E0);
      }

      sub_10025E02C(a5, a6, v48, v22, a7);
    }

LABEL_11:

    return sub_1000180EC(v48, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100254B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024280C(v22, sub_10026B1B0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B1B0;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47A68;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025E30C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100255200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100242B7C(v22, sub_10026B21C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B21C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47BD0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025EC80(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100255888(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100242EEC(v22, sub_10026B288, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B288;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47D38;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10025F5F4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100255F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024325C(v22, sub_10026B384, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B384;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48440;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10026124C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100256598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, __n128), uint64_t a6, void (*a7)(uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1002435D4(v22, sub_10026B49C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B49C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C485A8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_100261BC4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100256C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100243948(v22, sub_10026B57C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B57C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48710;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1002621C4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_1002572A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(char *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100243CB8(v22, sub_10026B63C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B63C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C489E0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_100263084(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}