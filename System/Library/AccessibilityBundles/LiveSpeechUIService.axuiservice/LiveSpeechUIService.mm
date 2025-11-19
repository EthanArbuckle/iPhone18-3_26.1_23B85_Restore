id LCLog()
{
  if (qword_FC218 != -1)
  {
    sub_B8EF8();
  }

  v1 = qword_FC210;

  return v1;
}

void sub_241C(id a1)
{
  qword_FC210 = os_log_create("com.apple.Accessibility", "AXLiveTranscriptionUI");

  _objc_release_x1();
}

void sub_2634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2820(uint64_t a1)
{
  v2 = sub_2870();
  result = dlsym(v2, "AXHasCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_FC220 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2870()
{
  v3[0] = 0;
  if (!qword_FC228)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_2970;
    v3[4] = &unk_EF538;
    v3[5] = v3;
    v4 = off_EF520;
    v5 = 0;
    qword_FC228 = _sl_dlopen();
  }

  v0 = qword_FC228;
  v1 = v3[0];
  if (!qword_FC228)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_2970()
{
  result = _sl_dlopen();
  qword_FC228 = result;
  return result;
}

Class sub_29E4(uint64_t a1)
{
  sub_2870();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_FC230 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_B8F30();
    return sub_2A3C(v3);
  }

  return result;
}

Class sub_2A3C(uint64_t a1)
{
  sub_2870();
  result = objc_getClass("AXUserEventTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_FC238 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_B8F58();
    return sub_2A94(v3);
  }

  return result;
}

void sub_2A94()
{
  v0 = sub_BAFA0();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_F8228 = v1;
}

Swift::String __swiftcall LiveSpeechCaptionsLocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_F8220 != -1)
  {
    swift_once();
  }

  if (qword_F8228)
  {
    v3 = qword_F8228;
    v4 = sub_BAFA0();
    v5 = sub_BAFA0();
    v6 = sub_BAFA0();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_BAFD0();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t LiveSpeechCaptionsResourceURL(for:fileExtension:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2E50(&qword_F8388);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_F8220 != -1)
  {
    swift_once();
  }

  if (qword_F8228)
  {
    v5 = qword_F8228;
    v6 = sub_BAFA0();
    v7 = sub_BAFA0();
    v8 = [v5 URLForResource:v6 withExtension:v7];

    if (v8)
    {
      sub_B9190();

      v9 = sub_B91B0();
      (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    }

    else
    {

      v13 = sub_B91B0();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    }

    return sub_2E98(v4, a1);
  }

  else
  {
    v10 = sub_B91B0();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_2E50(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_F8388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t variable initialization expression of LiveSpeechCategoryPhrasesListView_iOS.maxDynamicTypeSize@<X0>(uint64_t a1@<X8>)
{
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v2 = sub_B9E30();
  v3 = sub_3CB8(v2, qword_100DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_3160()
{
  type metadata accessor for LiveSpeechStore(0);
  sub_3E98(&qword_F8390, type metadata accessor for LiveSpeechStore);

  return sub_B9FB0();
}

uint64_t sub_3214(uint64_t a1)
{
  sub_2E50(&qword_F8530);
  __chkstk_darwin();
  sub_57A0(a1, &v4 - v2, &qword_F8530);
  return sub_BA0D0();
}

uint64_t sub_32D8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2E50(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_3364@<X0>(uint64_t a1@<X8>)
{
  result = sub_BA0A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id variable initialization expression of AXLTCaptionsProvider.transcription()
{
  v0 = objc_allocWithZone(AXLTLiveTranscription);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.liveCaptions()
{
  v0 = objc_allocWithZone(sub_B97E0());

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.dateFormatter()
{
  v0 = objc_allocWithZone(NSDateFormatter);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.lockScreenObserver()
{
  v0 = objc_allocWithZone(AXLTLockScreenObserver);

  return [v0 init];
}

uint64_t sub_372C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void variable initialization expression of LiveSpeechStore._inputMode(uint64_t a1@<X8>)
{
  sub_B9980();
  v2 = sub_B9950();
  v3 = sub_B9940();

  v4 = *(v3 + 16);

  if (v4)
  {
    v8 = sub_B9950();
    sub_B9960();
  }

  else
  {
    v5 = enum case for LiveSpeechInputMode.keyboard(_:);
    v6 = sub_B99C0();
    v7 = *(*(v6 - 8) + 104);

    v7(a1, v5, v6);
  }
}

uint64_t variable initialization expression of LiveSpeechStore._currentTextInputSupportedLocales()
{
  type metadata accessor for LiveSpeechTextInputSupportedLocales(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_3954(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

int64x2_t variable initialization expression of AudioHistogramConfig._histogram()
{
  v0 = sub_BB120();
  v0[1].i64[0] = 16;
  result = vdupq_n_s64(0x3FB999999999999AuLL);
  v0[2] = result;
  v0[3] = result;
  v0[4] = result;
  v0[5] = result;
  v0[6] = result;
  v0[7] = result;
  v0[8] = result;
  v0[9] = result;
  return result;
}

uint64_t variable initialization expression of AXLTAudioHistogramViewGenerator.config()
{
  type metadata accessor for AudioHistogramConfig();
  swift_allocObject();
  return sub_87840();
}

uint64_t variable initialization expression of LiveSpeechCaptionsCallManager.callQueue()
{
  v0 = sub_BB380();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BB360();
  __chkstk_darwin(v4);
  v5 = sub_BAEF0();
  __chkstk_darwin(v5 - 8);
  sub_5470();
  sub_BAEE0();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_3E98(&qword_F83E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2E50(&qword_F83F0);
  sub_54BC();
  sub_BB510();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_BB3C0();
}

id variable initialization expression of LiveSpeechCaptionsCallManager.newObservers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

uint64_t sub_3CB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3CF0()
{
  if (sub_B8A30(2, 26, 4, 0))
  {
    sub_B9E00();
  }

  else
  {
    sub_B9D70();
  }

  return sub_B9EE0();
}

uint64_t sub_3D58()
{
  if (sub_B8A30(2, 26, 4, 0))
  {
    sub_B9E00();
    sub_B9EE0();
    sub_3E4C();
  }

  else
  {
    sub_B9D70();
    sub_B9EE0();
    sub_3E98(&qword_F83B8, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_3E4C()
{
  result = qword_F83B0;
  if (!qword_F83B0)
  {
    sub_B9E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F83B0);
  }

  return result;
}

uint64_t sub_3E98(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_3F00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3F24(uint64_t a1, uint64_t a2)
{
  result = sub_B9320();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_3F78(uint64_t a1, uint64_t a2)
{
  v3 = sub_B9330();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_3FD0@<X0>(void *a1@<X8>)
{
  result = sub_B9340();
  *a1 = v3;
  return result;
}

uint64_t sub_3FF8(uint64_t a1, id *a2)
{
  result = sub_BAFB0();
  *a2 = 0;
  return result;
}

uint64_t sub_4070(uint64_t a1, id *a2)
{
  v3 = sub_BAFC0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_40F0@<X0>(void *a1@<X8>)
{
  sub_BAFD0();
  v2 = sub_BAFA0();

  *a1 = v2;
  return result;
}

uint64_t sub_4138()
{
  sub_3E98(&qword_F84B8, type metadata accessor for UIContentSizeCategory);
  sub_3E98(&qword_F84C0, type metadata accessor for UIContentSizeCategory);

  return sub_BB6A0();
}

uint64_t sub_41F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BAFD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_4224()
{
  sub_3E98(&qword_F8630, type metadata accessor for Name);
  sub_3E98(&qword_F8638, type metadata accessor for Name);

  return sub_BB6A0();
}

uint64_t sub_42E0()
{
  sub_3E98(&qword_F8640, type metadata accessor for Key);
  sub_3E98(&qword_F8648, type metadata accessor for Key);

  return sub_BB6A0();
}

double sub_439C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_43A8()
{
  sub_3E98(&qword_F85F8, type metadata accessor for Weight);
  sub_3E98(&qword_F8600, type metadata accessor for Weight);
  sub_5D40();
  return sub_BB6A0();
}

uint64_t sub_4470()
{
  sub_3E98(&qword_F8620, type metadata accessor for AttributeName);
  sub_3E98(&qword_F8628, type metadata accessor for AttributeName);

  return sub_BB6A0();
}

uint64_t sub_452C@<X0>(void *a1@<X8>)
{
  v2 = sub_BAFA0();

  *a1 = v2;
  return result;
}

uint64_t sub_4574()
{
  sub_3E98(&qword_F8610, type metadata accessor for TraitKey);
  sub_3E98(&qword_F8618, type metadata accessor for TraitKey);

  return sub_BB6A0();
}

uint64_t sub_4630()
{
  sub_BAFD0();
  v0 = sub_BB080();

  return v0;
}

uint64_t sub_466C()
{
  sub_BAFD0();
  sub_BB030();
}

Swift::Int sub_46C0()
{
  sub_BAFD0();
  sub_BB790();
  sub_BB030();
  v0 = sub_BB7D0();

  return v0;
}

void sub_473C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_BB7C0(*&v1);
}

uint64_t sub_4778(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_4790()
{
  v0 = sub_BAFD0();
  v2 = v1;
  if (v0 == sub_BAFD0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_BB700();
  }

  return v5 & 1;
}

unint64_t sub_482C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F8520);
    v3 = sub_BB690();
    v4 = a1 + 32;

    while (1)
    {
      sub_57A0(v4, &v13, &qword_F8528);
      v5 = v13;
      v6 = v14;
      result = sub_7CF4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_5790(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_495C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F8508);
    v3 = sub_BB690();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_80E88();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_4A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F84F8);
    v3 = sub_BB690();
    v4 = a1 + 32;

    while (1)
    {
      sub_57A0(v4, &v11, &qword_F8500);
      v5 = v11;
      result = sub_80E88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_5790(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_4B74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F84C8);
    v3 = sub_BB690();
    v4 = a1 + 32;

    while (1)
    {
      sub_57A0(v4, &v11, &qword_F84D0);
      v5 = v11;
      result = sub_80E88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_5790(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_4C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F8510);
    v3 = sub_BB690();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v12 = *i;
      v5 = *(i - 1);
      v6 = v12;
      result = sub_7D09C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_4DA4()
{
  if (sub_B8A30(2, 26, 0, 0))
  {
    sub_BA580();

    return sub_B9EE0();
  }

  else
  {
    sub_B9F60();
    swift_getWitnessTable();
    sub_BA4C0();
    sub_B9EE0();
    sub_BB4D0();
    swift_getWitnessTable();
    sub_B9F60();
    swift_getWitnessTable();
    sub_BA4C0();
    return sub_B9EE0();
  }
}

uint64_t sub_4F08()
{
  if (sub_B8A30(2, 26, 0, 0))
  {
    sub_BA580();
    sub_B9EE0();
  }

  else
  {
    sub_B9F60();
    swift_getWitnessTable();
    sub_BA4C0();
    sub_B9EE0();
    sub_BB4D0();
    swift_getWitnessTable();
    sub_B9F60();
    swift_getWitnessTable();
    sub_BA4C0();
    sub_B9EE0();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_5108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F84D8);
    v3 = sub_BB690();
    v4 = a1 + 32;

    while (1)
    {
      sub_57A0(v4, v13, &qword_F84E0);
      result = sub_7D058(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_5790(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F8518);
    v3 = sub_BB690();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_7CF4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2E50(&qword_F84E8);
    v3 = sub_BB690();
    v4 = a1 + 32;

    while (1)
    {
      sub_57A0(v4, v13, &qword_F84F0);
      result = sub_7D058(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5470()
{
  result = qword_F83E0;
  if (!qword_F83E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F83E0);
  }

  return result;
}

unint64_t sub_54BC()
{
  result = qword_F83F8;
  if (!qword_F83F8)
  {
    sub_5520(&qword_F83F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F83F8);
  }

  return result;
}

uint64_t sub_5520(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_55E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_55F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5610(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_5650(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_565C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_567C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_OWORD *sub_5790(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_57A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2E50(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_58BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_5D40()
{
  result = qword_F8608;
  if (!qword_F8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8608);
  }

  return result;
}

__n128 LiveSpeechPhrasesListView_iOS.init()@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for LiveSpeechStore(0);
  sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
  v2 = sub_B9FB0();
  v4 = v3;
  sub_2E50(&qword_F86B0);
  sub_BABC0();
  result = v6;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1] = v6;
  a1[2].n128_u64[0] = v7;
  return result;
}

__n128 LiveSpeechPhrasesListView_iOS.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_2E50(&qword_F86B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v36 = sub_2E50(&qword_F86C0);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - v7;
  v33 = sub_2E50(&qword_F86C8);
  __chkstk_darwin(v33);
  v10 = &v32 - v9;
  v34 = sub_2E50(&qword_F86D0);
  __chkstk_darwin(v34);
  v12 = &v32 - v11;
  sub_BA630();
  v38 = v2;
  sub_2E50(&qword_F86D8);
  sub_D150(&qword_F86E0, &qword_F86D8);
  sub_B9BF0();
  sub_D150(&qword_F86E8, &qword_F86B8);
  sub_BA9B0();
  (*(v4 + 8))(v6, v3);
  v13 = [objc_opt_self() mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  CGRectGetHeight(v49);
  sub_BADE0();
  sub_B9F70();
  (*(v35 + 32))(v10, v8, v36);
  v22 = &v10[*(v33 + 36)];
  v23 = v44;
  *(v22 + 4) = v43;
  *(v22 + 5) = v23;
  *(v22 + 6) = v45;
  v24 = v40;
  *v22 = v39;
  *(v22 + 1) = v24;
  v25 = v42;
  *(v22 + 2) = v41;
  *(v22 + 3) = v25;
  sub_66B8(v10, v12, &qword_F86C8);
  *&v12[*(v34 + 36)] = 256;
  sub_2E50(&qword_F86F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_BDB40;
  sub_BAAF0();
  v27 = sub_BAB10();

  *(v26 + 32) = v27;
  *(v26 + 40) = sub_BAAF0();
  sub_BAD30();
  sub_BAE70();
  sub_B9DB0();
  v28 = v46;
  v29 = v37;
  sub_66B8(v12, v37, &qword_F86D0);
  v30 = v29 + *(sub_2E50(&qword_F86F8) + 36);
  *v30 = v28;
  result = v47;
  *(v30 + 24) = v48;
  *(v30 + 8) = result;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_6440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_BA330();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = *a1;
  if (*a1)
  {
    sub_2E50(&qword_F8AA8);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_B9B10();

    v6 = v15;
    v15 = *(a1 + 16);
    v7 = *(a1 + 32);
    v13[2] = v6;
    v14 = v7;
    v8 = swift_allocObject();
    v9 = *(a1 + 16);
    *(v8 + 16) = *a1;
    *(v8 + 32) = v9;
    *(v8 + 48) = *(a1 + 32);
    v10 = v5;
    sub_57A0(&v15, v13, &qword_F86B0);
    sub_57A0(&v14, v13, &qword_F8AB0);
    sub_2E50(&qword_F8AB8);
    sub_2E50(&qword_F8AC0);
    sub_D150(&qword_F8AC8, &qword_F8AB8);
    v11 = sub_C4B0();
    v13[0] = &type metadata for LiveSpeechPhraseView;
    v13[1] = v11;
    swift_getOpaqueTypeConformance2();
    sub_D198();
    return sub_BACE0();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_66B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2E50(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6720(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v11 = a1[2];
  v12 = *a1;
  v13 = a1[3];
  v4 = *(a2 + 32);

  sub_2E50(&qword_F8A70);
  sub_BABF0();
  v5 = *a2;
  if (*a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_B9B10();

    *&v14 = v12;
    *(&v14 + 1) = v3;
    v15 = v19;
    v16 = v20;
    v17 = v19;
    v18 = v20;
    v24 = *(a2 + 16);
    v25 = v4;
    v7 = swift_allocObject();
    v8 = *(a2 + 16);
    *(v7 + 16) = *a2;
    *(v7 + 32) = v8;
    *(v7 + 48) = *(a2 + 32);
    *(v7 + 56) = v12;
    *(v7 + 64) = v3;
    *(v7 + 72) = v11;
    *(v7 + 80) = v13;

    v9 = v6;
    sub_57A0(&v24, &v19, &qword_F86B0);
    sub_57A0(&v25, &v19, &qword_F8AB0);
    sub_C4B0();

    sub_BA860();

    v21 = v16;
    v22 = v17;
    v23 = v18;
    v19 = v14;
    v20 = v15;
    return sub_CB88(&v19);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_B99C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v17[0] = a2;
  v17[1] = a3;

  sub_2E50(&qword_F8A70);
  sub_BABE0();
  v14 = *a1;
  if (*a1)
  {
    (*(v11 + 104))(v13, enum case for LiveSpeechInputMode.favoritePhrases(_:), v10);
    v15 = v14;
    LiveSpeechStore.commitTextToSpeechQueue(_:mode:preferredSpeechLanguage:interruptCurrentQueue:)(a2, a3, v13, a4, a5, 1);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t _s19LiveSpeechUIService0aB19PhrasesListView_iOSV14selectedPhraseSSSgvpfP_0()
{
  sub_2E50(&qword_F86B0);
  sub_BABC0();
  return v1;
}

uint64_t LiveSpeechCategoryPhrasesListView_iOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_BA4F0();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BA1F0();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_BA470();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E50(&qword_F8700);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_2E50(&qword_F8708);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v43 = sub_2E50(&qword_F8710);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v16 = &v43 - v15;
  v47 = sub_2E50(&qword_F8718);
  __chkstk_darwin(v47);
  v18 = &v43 - v17;
  v19 = sub_2E50(&qword_F8720);
  v55 = *(v19 - 8);
  v56 = v19;
  __chkstk_darwin(v19);
  v46 = &v43 - v20;
  v54 = sub_2E50(&qword_F8728);
  __chkstk_darwin(v54);
  v53 = &v43 - v21;
  v61 = v1;
  sub_2E50(&qword_F8730);
  sub_7DD8();
  sub_BA730();
  sub_BA4A0();
  v22 = sub_BA4B0();
  (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
  sub_BA660();
  v23 = sub_D150(&qword_F8788, &qword_F8708);
  sub_BA980();
  sub_C5E8(v10, &qword_F8700);
  (*(v12 + 8))(v14, v11);
  sub_BA460();
  sub_BA630();
  *&v62 = v11;
  *(&v62 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v43;
  sub_BA970();
  (*(v48 + 8))(v7, v49);
  (*(v44 + 8))(v16, v24);
  v25 = v50;
  sub_BA1E0();
  v26 = *(sub_2E50(&qword_F8790) + 36);
  v27 = v51;
  v28 = v52;
  (*(v51 + 16))(&v18[v26], v25, v52);
  v29 = v27;
  v30 = *(v27 + 56);
  v30(&v18[v26], 0, 1, v28);
  KeyPath = swift_getKeyPath();
  v32 = &v18[*(v47 + 36)];
  v33 = *(sub_2E50(&qword_F8798) + 28);
  (*(v29 + 32))(v32 + v33, v25, v28);
  v30(v32 + v33, 0, 1, v28);
  *v32 = KeyPath;
  v34 = v46;
  sub_BA6A0();
  v35 = v57;
  sub_BA4E0();
  sub_AE98();
  sub_BA8C0();
  v36 = v45;
  (*(v58 + 8))(v35, v59);
  sub_C5E8(v18, &qword_F8718);
  v37 = *v36;
  if (*v36)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v37;
    sub_B9B10();

    sub_BADE0();
    sub_B9CF0();
    v39 = v53;
    (*(v55 + 32))(v53, v34, v56);
    v40 = (v39 + *(v54 + 36));
    v41 = v63;
    *v40 = v62;
    v40[1] = v41;
    v40[2] = v64;
    sub_B0C4();
    sub_BA9B0();
    return sub_C5E8(v39, &qword_F8728);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_7534@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_2E50(&qword_F8758);
  __chkstk_darwin(v57);
  v4 = &v46 - v3;
  v54 = sub_2E50(&qword_F8960);
  __chkstk_darwin(v54);
  v56 = &v46 - v5;
  v55 = sub_2E50(&qword_F8748);
  __chkstk_darwin(v55);
  v52 = &v46 - v6;
  v46 = sub_2E50(&qword_F8968);
  __chkstk_darwin(v46);
  v8 = &v46 - v7;
  v47 = sub_2E50(&qword_F8970);
  v9 = __chkstk_darwin(v47);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v46 - v11;
  v12 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_2E50(&qword_F8978);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v46 - v19;
  v20 = a1;
  v21 = *a1;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_B9B10();

    if (v59)
    {
      sub_97F4();
      sub_57A0(v4, v56, &qword_F8758);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F8740, &qword_F8748);
      sub_7E90();
      sub_BA430();
      return sub_C5E8(v4, &qword_F8758);
    }

    else
    {
      v24 = v22;
      v25 = LiveSpeechStore.selectedCategoryPhrases.getter();

      v59 = v25;
      swift_getKeyPath();
      sub_C0BC(v20, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v27 = swift_allocObject();
      sub_C124(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
      sub_2E50(&qword_FA5E0);
      sub_2E50(&qword_F8980);
      sub_D150(&qword_F8988, &qword_FA5E0);
      sub_C8D4(&qword_F8990, &type metadata accessor for LiveSpeechPhrase);
      sub_C208();
      v28 = v53;
      sub_BACD0();
      *v8 = sub_BA1C0();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v29 = sub_2E50(&qword_F8A20);
      sub_99A4(v20, &v8[*(v29 + 44)]);
      sub_B9CB0();
      sub_D150(&qword_F8A28, &qword_F8968);
      v30 = v48;
      sub_BA8F0();
      sub_C5E8(v8, &qword_F8968);
      v59 = sub_BAAE0();
      v31 = sub_BAC70();
      *(v30 + *(sub_2E50(&qword_F8A30) + 36)) = v31;
      v32 = v30 + *(sub_2E50(&qword_F8A38) + 36);
      *v32 = xmmword_BDB50;
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0;
      LOBYTE(v31) = sub_BA660();
      sub_B9B90();
      v33 = v30 + *(v47 + 36);
      *v33 = v31;
      *(v33 + 8) = v34;
      *(v33 + 16) = v35;
      *(v33 + 24) = v36;
      *(v33 + 32) = v37;
      *(v33 + 40) = 0;
      v38 = v50;
      v39 = *(v50 + 16);
      v40 = v28;
      v41 = v51;
      v39(v18, v40, v51);
      v42 = v49;
      sub_57A0(v30, v49, &qword_F8970);
      v43 = v52;
      v39(v52, v18, v41);
      v44 = sub_2E50(&qword_F8A40);
      sub_57A0(v42, v43 + *(v44 + 48), &qword_F8970);
      sub_C5E8(v42, &qword_F8970);
      v45 = *(v38 + 8);
      v45(v18, v41);
      sub_57A0(v43, v56, &qword_F8748);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F8740, &qword_F8748);
      sub_7E90();
      sub_BA430();
      sub_C5E8(v43, &qword_F8748);
      sub_C5E8(v30, &qword_F8970);
      return (v45)(v53, v41);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

unint64_t sub_7DD8()
{
  result = qword_F8738;
  if (!qword_F8738)
  {
    sub_5520(&qword_F8730);
    sub_D150(&qword_F8740, &qword_F8748);
    sub_7E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8738);
  }

  return result;
}

unint64_t sub_7E90()
{
  result = qword_F8750;
  if (!qword_F8750)
  {
    sub_5520(&qword_F8758);
    sub_5520(&qword_F8760);
    sub_7F58();
    swift_getOpaqueTypeConformance2();
    sub_8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8750);
  }

  return result;
}

unint64_t sub_7F58()
{
  result = qword_F8768;
  if (!qword_F8768)
  {
    sub_5520(&qword_F8760);
    sub_8010();
    sub_D150(&qword_F8770, &qword_F8778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8768);
  }

  return result;
}

unint64_t sub_8010()
{
  result = qword_F99B0;
  if (!qword_F99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F99B0);
  }

  return result;
}

unint64_t sub_8064()
{
  result = qword_F8780;
  if (!qword_F8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8780);
  }

  return result;
}

uint64_t sub_80B8()
{
  sub_2E50(&qword_F89A8);
  sub_C298();
  return sub_BAD10();
}

uint64_t sub_812C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v64 = v6;
  v66 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2E50(&qword_F89C8);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v49 - v7;
  v58 = sub_2E50(&qword_F89B8);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v49 - v8;
  v60 = sub_2E50(&qword_F89B0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49 - v9;
  v65 = sub_2E50(&qword_F8A68);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v49 - v10;
  v68 = a1;
  v11 = [a1 text];
  v51 = sub_BAFD0();
  v13 = v12;

  v14 = *(a2 + 32);
  v69 = *(a2 + 16);
  *&v70 = v14;
  sub_2E50(&qword_F8A70);
  sub_BABF0();
  v15 = a2;
  v16 = *a2;
  if (*a2)
  {
    v17 = v74;
    v18 = v75;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v16;
    sub_B9B10();

    *&v69 = v51;
    *(&v69 + 1) = v13;
    v70 = v17;
    v71 = v18;
    v72 = v74;
    v73 = v75;
    __chkstk_darwin(v20);
    v21 = a2;
    v22 = v68;
    *(&v49 - 2) = v15;
    *(&v49 - 1) = v22;
    v23 = sub_2E50(&qword_F89D0);
    v24 = sub_C4B0();
    v25 = sub_D150(&qword_F89E0, &qword_F89D0);
    v26 = v52;
    sub_BA870();
    v76 = v71;
    v77 = v72;
    v78 = v73;
    v74 = v69;
    v75 = v70;
    v27 = sub_CB88(&v74);
    v51 = &v49;
    __chkstk_darwin(v27);
    v50 = v21;
    *(&v49 - 2) = v21;
    *(&v49 - 1) = v22;
    v28 = sub_2E50(&qword_F89C0);
    *&v69 = &type metadata for LiveSpeechPhraseView;
    *(&v69 + 1) = v23;
    *&v70 = v24;
    *(&v70 + 1) = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_C504();
    v31 = v54;
    v32 = v55;
    sub_BA870();
    v33 = (v53[1])(v26, v32);
    v53 = &v49;
    __chkstk_darwin(v33);
    *(&v49 - 2) = v21;
    *(&v49 - 1) = v22;
    *&v69 = v32;
    *(&v69 + 1) = v28;
    *&v70 = OpaqueTypeConformance2;
    *(&v70 + 1) = v30;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = v57;
    v36 = v58;
    sub_BA870();
    (*(v56 + 8))(v31, v36);
    v37 = v66;
    sub_C0BC(v50, v66);
    v38 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v39 = (v64 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    sub_C124(v37, v40 + v38);
    v41 = v68;
    *(v40 + v39) = v68;
    v42 = v41;
    *&v69 = v36;
    *(&v69 + 1) = v28;
    *&v70 = v34;
    *(&v70 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    v43 = v61;
    v44 = v60;
    sub_BA860();

    (*(v59 + 8))(v35, v44);
    v45 = [objc_opt_self() secondarySystemFillColor];
    *&v69 = sub_BAA70();
    v46 = sub_BAC70();
    v47 = v67;
    (*(v63 + 32))(v67, v43, v65);
    result = sub_2E50(&qword_F89A8);
    *(v47 + *(result + 36)) = v46;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_89C8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_2E50(&qword_F8A90);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_B9B60();
  v10 = sub_B9B80();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_C0BC(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_C124(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = a2;
  sub_2E50(&qword_F8A98);
  sub_D150(&qword_F8AA0, &qword_F8A98);
  return sub_BAC10();
}

void sub_8BEC(id *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = *a1;
    sub_68B2C(a2);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_8CA4()
{
  v0._object = 0x80000000000C40E0;
  v0._countAndFlagsBits = 0xD000000000000012;
  LiveSpeechLocString(_:)(v0);
  sub_B320();
  return sub_BABB0();
}

uint64_t sub_8D18(id *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [a2 text];
    sub_BAFD0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    v6 = a2;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_B9B20();
    type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
    sub_2E50(&qword_F8A48);
    return sub_B9BA0();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_8F34@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2E50(&qword_F8A88);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BAB60();
  sub_BA6F0();
  v6 = sub_BA6E0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_BA700();
  sub_C5E8(v4, &qword_F8A88);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_9058@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_C0BC(a1, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_C124(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = a2;
  sub_2E50(&qword_F8A78);
  sub_CCA8();
  v14 = sub_BAC20();
  v15 = a3(v14);
  KeyPath = swift_getKeyPath();
  v20[1] = v15;
  v17 = sub_B9D00();
  result = sub_2E50(&qword_F89C0);
  v19 = (a4 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  return result;
}

void sub_920C(id *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [a2 text];
    sub_BAFD0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    v6 = a2;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    sub_B9B20();
    type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
    sub_2E50(&qword_F8A48);
    sub_B9BA0();
    v8 = v7;
    v9 = sub_BAE20();
    __chkstk_darwin(v9);
    sub_B9D80();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_9460@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2E50(&qword_F8A88);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BAB80();
  sub_BA6F0();
  v6 = sub_BA6E0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_BA700();
  sub_C5E8(v4, &qword_F8A88);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_958C(uint64_t a1, void *a2)
{
  v4 = sub_B99C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 text];
  v9 = sub_BAFD0();
  v11 = v10;

  v12 = *(a1 + 32);
  v25 = *(a1 + 16);
  v26 = v12;
  v24[0] = v9;
  v24[1] = v11;
  sub_2E50(&qword_F8A70);
  sub_BABE0();
  if (*a1)
  {
    v13 = *a1;
    v14 = [a2 text];
    v15 = sub_BAFD0();
    v17 = v16;

    (*(v5 + 104))(v7, enum case for LiveSpeechInputMode.favoritePhrases(_:), v4);
    v18 = [a2 inputID];
    if (v18)
    {
      v19 = v18;
      v20 = sub_BAFD0();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    LiveSpeechStore.commitTextToSpeechQueue(_:mode:preferredSpeechLanguage:interruptCurrentQueue:)(v15, v17, v7, v20, v22, 1);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_97F4()
{
  type metadata accessor for LiveSpeechStore(0);
  sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
  v1 = sub_B9FB0();
  swift_getKeyPath();
  if (*v0)
  {
    v2 = *v0;
    sub_B9A90();
    type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
    sub_2E50(&qword_F8A48);
    sub_B9BB0();
    sub_2E50(&qword_F8760);
    sub_7F58();
    sub_BA9E0();
  }

  else
  {
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_99A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2E50(&qword_F8A50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15._object = 0x80000000000C4080;
  v15._countAndFlagsBits = 0xD000000000000012;
  v16 = LiveSpeechLocString(_:)(v15);
  sub_C0BC(a1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_C124(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *v8 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v19 = v6[13];
  *(v8 + v19) = sub_BA710();
  *(v8 + v6[15]) = 0x4020000000000000;
  *(v8 + v6[16]) = 0x4000000000000000;
  *(v8 + v6[17]) = 0x4040000000000000;
  *(v8 + v6[18]) = 0x402E000000000000;
  *(v8 + v6[19]) = 0x4024000000000000;
  v20 = v6[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v21 = sub_B9E30();
  v22 = sub_3CB8(v21, qword_100DA8);
  (*(*(v21 - 8) + 16))(v8 + v20, v22, v21);
  *(v8 + v6[5]) = xmmword_BDB60;
  *(v8 + v6[6]) = v16;
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 0;
  *(v8 + v6[10]) = 0;
  *(v8 + v6[11]) = 0;
  v23 = v8 + v6[12];
  *v23 = 0;
  v23[8] = 1;
  v24 = (v8 + v6[14]);
  *v24 = sub_C874;
  v24[1] = v18;
  v25._countAndFlagsBits = 0xD000000000000015;
  v25._object = 0x80000000000C40A0;
  v31 = LiveSpeechLocString(_:)(v25);
  sub_C8D4(&qword_F8A58, type metadata accessor for HUDButton);
  sub_B320();
  sub_BA900();

  sub_C91C(v8);
  sub_57A0(v14, v12, &qword_F8A50);
  v26 = v30;
  sub_57A0(v12, v30, &qword_F8A50);
  v27 = v26 + *(sub_2E50(&qword_F8A60) + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_C5E8(v14, &qword_F8A50);
  return sub_C5E8(v12, &qword_F8A50);
}

void sub_9E04(void **a1)
{
  v2 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-v3];
  v5 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = 0;
    v19 = 0xE000000000000000;
    v6 = v5;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = 1;
    v7 = v6;
    sub_B9B20();
    v8 = a1 + *(type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS() + 32);
    v9 = *v8;
    v10 = *(v8 + 1);
    LOBYTE(v8) = v8[16];
    LOBYTE(v18) = v9;
    v19 = v10;
    v20 = v8;
    v17[7] = 1;
    sub_2E50(&qword_F8A48);
    sub_B9BA0();
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v7;
    sub_B9B10();

    if (v18 > 1u || v18)
    {
      v12 = sub_BB700();

      if ((v12 & 1) == 0)
      {
        v13 = sub_BB1A0();
        (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
        sub_BB170();
        v14 = v11;
        v15 = sub_BB160();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v14;
        sub_6A2B8(0, 0, v4, &unk_BE120, v16);
      }
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_A160@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LiveSpeechStore(0);
  sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
  *a1 = sub_B9FB0();
  *(a1 + 8) = v2;
  sub_2E50(&qword_F86B0);
  sub_BABC0();
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  v3 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v4 = v3[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_2E50(&unk_F83A0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v3[8];
  *v6 = _s19LiveSpeechUIService0aB11HUDView_iOSV23_isTextInputViewFocused33_F2BA035E101D43293F5F7FB749375E867SwiftUI10FocusStateVySbGvpfi_0() & 1;
  *(v6 + 8) = v7;
  *(v6 + 16) = v8 & 1;
  v9 = a1 + v3[9];
  sub_BABC0();
  *v9 = v16;
  *(v9 + 8) = *(&v16 + 1);
  v10 = (a1 + v3[10]);
  sub_BABC0();
  *v10 = v16;
  v11 = (a1 + v3[11]);
  sub_BABC0();
  *v11 = v16;
  v12 = v3[12];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v13 = sub_B9E30();
  v14 = sub_3CB8(v13, qword_100DA8);
  return (*(*(v13 - 8) + 16))(a1 + v12, v14, v13);
}

void LiveSpeechPhraseView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v23 = sub_BA5E0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2E50(&qword_F87D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_BA320();
  v24 = v2;
  sub_A780(v2, &v33);
  v21 = v34;
  v22 = v33;
  v11 = v35;
  v12 = objc_opt_self();
  if (qword_F8368 != -1)
  {
    v20 = v12;
    swift_once();
    v12 = v20;
  }

  v13 = [v12 preferredFontDescriptorWithTextStyle:qword_100D98];
  v14 = [v13 fontDescriptorWithSymbolicTraits:2];

  if (v14)
  {
    v32 = 1;
    v31 = v11;
    v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];

    v16 = sub_BA720();
    KeyPath = swift_getKeyPath();
    v28 = v10;
    v29[0] = 1;
    *&v29[24] = v21;
    *&v29[8] = v22;
    v29[40] = v11;
    *&v30 = KeyPath;
    *(&v30 + 1) = v16;
    sub_BA5C0();
    v18 = sub_2E50(&qword_F87D8);
    v19 = sub_B23C();
    sub_BA950();
    (*(v3 + 8))(v5, v23);
    v35 = *&v29[16];
    v36 = *&v29[32];
    v37 = v30;
    v33 = v28;
    v34 = *v29;
    sub_C5E8(&v33, &qword_F87D8);
    v28 = *v24;
    v26 = v18;
    v27 = v19;
    swift_getOpaqueTypeConformance2();
    sub_B320();
    sub_BA900();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_A780@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = *a1;
  v70 = a1[2];

  sub_2E50(&qword_F8948);
  sub_BAC80();
  if (!v68)
  {
    goto LABEL_18;
  }

  if (v72 == v67 && v68 == *(&v72 + 1))
  {

    v6 = *(a1 + 7);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_18:
    v69 = v72;
    sub_B320();
    v51 = sub_BA800();
    v53 = v52;
    v55 = v54;
    sub_BAB20();
    sub_BA770();

    sub_C004(v51, v53, v55 & 1);

    goto LABEL_19;
  }

  v5 = sub_BB700();

  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 7);
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_8:
  v7 = *(a1 + 6);
  v8 = *(a1 + 9);
  sub_C014(&v72);
  sub_BB0A0();
  sub_BB0A0();
  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 7;
  if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v11 = v10 | (v9 << 16);
  v12 = 4 * v9;
  if (v12 <= v8 >> 14)
  {
    result = v11;
  }

  else
  {
    result = v8;
  }

  if (v12 >= result >> 14)
  {
    v14 = sub_BB0A0();
    v65 = v15;
    v66 = v14;
    v63 = v17;
    v64 = v16;
    sub_C068();
    v18 = sub_BA800();
    v20 = v19;
    v22 = v21;
    v62 = objc_opt_self();
    v23 = [v62 tertiaryLabelColor];
    sub_BAA70();
    v24 = sub_BA770();
    v57 = v25;
    v58 = v24;
    v56 = v26;

    sub_C004(v18, v20, v22 & 1);

    v27 = sub_BA800();
    v29 = v28;
    v31 = v30;
    sub_BAB20();
    v32 = sub_BA770();
    v34 = v33;
    v36 = v35;

    sub_C004(v27, v29, v31 & 1);

    v37 = sub_BA780();
    v60 = v38;
    v61 = v37;
    v59 = v39;
    sub_C004(v32, v34, v36 & 1);

    sub_C004(v58, v57, v56 & 1);

    *&v69 = v66;
    *(&v69 + 1) = v65;
    *&v70 = v64;
    *(&v70 + 1) = v63;
    v40 = sub_BA800();
    v42 = v41;
    v44 = v43;
    v45 = [v62 tertiaryLabelColor];
    sub_BAA70();
    v46 = sub_BA770();
    v48 = v47;
    v50 = v49;

    sub_C004(v40, v42, v44 & 1);

    sub_BA780();
    sub_C004(v46, v48, v50 & 1);

    sub_C004(v61, v60, v59 & 1);

LABEL_19:
    result = sub_BA430();
    *a2 = v69;
    *(a2 + 16) = v70;
    *(a2 + 32) = v71;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_ACD8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_AD58(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_ADEC(uint64_t a1)
{
  v2 = sub_2E50(&qword_F8958);
  __chkstk_darwin(v2 - 8);
  sub_57A0(a1, &v5 - v3, &qword_F8958);
  return sub_BA090();
}

unint64_t sub_AE98()
{
  result = qword_F87A0;
  if (!qword_F87A0)
  {
    sub_5520(&qword_F8718);
    sub_AF50();
    sub_D150(&qword_F87C0, &qword_F8798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F87A0);
  }

  return result;
}

unint64_t sub_AF50()
{
  result = qword_F87A8;
  if (!qword_F87A8)
  {
    sub_5520(&qword_F8790);
    sub_5520(&qword_F8710);
    sub_5520(&qword_F8708);
    sub_D150(&qword_F8788, &qword_F8708);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F87B0, &qword_F87B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F87A8);
  }

  return result;
}

unint64_t sub_B0C4()
{
  result = qword_F87C8;
  if (!qword_F87C8)
  {
    sub_5520(&qword_F8728);
    sub_5520(&qword_F8718);
    sub_AE98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F87C8);
  }

  return result;
}

uint64_t sub_B18C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BA0E0();
  *a1 = result;
  return result;
}

uint64_t sub_B1B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BA0E0();
  *a1 = result;
  return result;
}

unint64_t sub_B23C()
{
  result = qword_F87E0;
  if (!qword_F87E0)
  {
    sub_5520(&qword_F87D8);
    sub_D150(&qword_F87E8, &qword_F87F0);
    sub_D150(&qword_F87F8, &qword_F8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F87E0);
  }

  return result;
}

unint64_t sub_B320()
{
  result = qword_F8808;
  if (!qword_F8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8808);
  }

  return result;
}

__n128 sub_B3C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_B3DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_B438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_B4B8(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_2E50(&qword_F8810);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_2E50(&qword_F8818);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_B9E30();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

char *sub_B65C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_2E50(&qword_F8810);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2E50(&qword_F8818);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_B9E30();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS()
{
  result = qword_F8878;
  if (!qword_F8878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B82C()
{
  sub_B998();
  if (v0 <= 0x3F)
  {
    sub_BA2C();
    if (v1 <= 0x3F)
    {
      sub_BA90(319, &qword_F8898, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_BA90(319, &qword_F88A0, &type metadata accessor for Locale);
        if (v3 <= 0x3F)
        {
          sub_BAE4();
          if (v4 <= 0x3F)
          {
            sub_BB3C(319, &qword_F88B0);
            if (v5 <= 0x3F)
            {
              sub_BB3C(319, &unk_F88B8);
              if (v6 <= 0x3F)
              {
                sub_B9E30();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_B998()
{
  if (!qword_F8888)
  {
    type metadata accessor for LiveSpeechStore(255);
    sub_C8D4(&qword_F8390, type metadata accessor for LiveSpeechStore);
    v0 = sub_B9FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_F8888);
    }
  }
}

void sub_BA2C()
{
  if (!qword_F8890)
  {
    sub_5520(&qword_F86B0);
    v0 = sub_BAC00();
    if (!v1)
    {
      atomic_store(v0, &qword_F8890);
    }
  }
}

void sub_BA90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_B9C70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_BAE4()
{
  if (!qword_F88A8)
  {
    v0 = sub_B9BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_F88A8);
    }
  }
}

void sub_BB3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_BAC00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_BB88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_BBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_BBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_BC54()
{
  result = qword_F8908;
  if (!qword_F8908)
  {
    sub_5520(&qword_F86F8);
    sub_BD0C();
    sub_D150(&qword_F8920, &qword_F8928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8908);
  }

  return result;
}

unint64_t sub_BD0C()
{
  result = qword_F8910;
  if (!qword_F8910)
  {
    sub_5520(&qword_F86D0);
    sub_BD98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8910);
  }

  return result;
}

unint64_t sub_BD98()
{
  result = qword_F8918;
  if (!qword_F8918)
  {
    sub_5520(&qword_F86C8);
    sub_5520(&qword_F86B8);
    sub_D150(&qword_F86E8, &qword_F86B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8918);
  }

  return result;
}

uint64_t sub_BE94()
{
  sub_5520(&qword_F8728);
  sub_B0C4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_BEFC()
{
  result = qword_F8930;
  if (!qword_F8930)
  {
    sub_5520(&qword_F8938);
    sub_5520(&qword_F87D8);
    sub_B23C();
    swift_getOpaqueTypeConformance2();
    sub_C8D4(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8930);
  }

  return result;
}

uint64_t sub_C004(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_C068()
{
  result = qword_F8950;
  if (!qword_F8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8950);
  }

  return result;
}

uint64_t sub_C0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C188()
{
  type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();

  return sub_80B8();
}

unint64_t sub_C208()
{
  result = qword_F8998;
  if (!qword_F8998)
  {
    sub_5520(&qword_F8980);
    sub_C298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8998);
  }

  return result;
}

unint64_t sub_C298()
{
  result = qword_F89A0;
  if (!qword_F89A0)
  {
    sub_5520(&qword_F89A8);
    sub_5520(&qword_F89B0);
    sub_5520(&qword_F89B8);
    sub_5520(&qword_F89C0);
    sub_5520(&qword_F89C8);
    sub_5520(&qword_F89D0);
    sub_C4B0();
    sub_D150(&qword_F89E0, &qword_F89D0);
    swift_getOpaqueTypeConformance2();
    sub_C504();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F8A10, &qword_F8A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F89A0);
  }

  return result;
}

unint64_t sub_C4B0()
{
  result = qword_F89D8;
  if (!qword_F89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F89D8);
  }

  return result;
}

unint64_t sub_C504()
{
  result = qword_F89E8;
  if (!qword_F89E8)
  {
    sub_5520(&qword_F89C0);
    sub_D150(&qword_F89F0, &qword_F89F8);
    sub_D150(&qword_F8A00, &qword_F8A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F89E8);
  }

  return result;
}

uint64_t sub_C5E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2E50(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_C650()
{
  v1 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E30();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_2E50(&unk_F83A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_B92F0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[12];
  v11 = sub_B9E30();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_C874()
{
  v1 = *(type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_9E04(v2);
}

uint64_t sub_C8D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C91C(uint64_t a1)
{
  v2 = type metadata accessor for HUDButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C988()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C9C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_CA7C;

  return sub_76BEC(a1, v4, v5, v6);
}

uint64_t sub_CA7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_CCA8()
{
  result = qword_F8A80;
  if (!qword_F8A80)
  {
    sub_5520(&qword_F8A78);
    sub_D150(&qword_F87F8, &qword_F8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8A80);
  }

  return result;
}

uint64_t sub_CD60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BA100();
  *a1 = result;
  return result;
}

uint64_t sub_CE08()
{
  v1 = type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E30();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_2E50(&unk_F83A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_B92F0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[12];
  v12 = sub_B9E30();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_D058(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for LiveSpeechCategoryPhrasesListView_iOS() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_D100()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D150(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_D198()
{
  result = qword_F8AD0;
  if (!qword_F8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8AD0);
  }

  return result;
}

uint64_t sub_D1EC()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_D278@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BA180();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FA6E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  sub_57A0(v1 + *(v10 + 24), v9, &qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_66B8(v9, a1, &qword_F8530);
  }

  sub_BB310();
  v12 = sub_BA610();
  sub_B99F0();

  sub_BA170();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_D460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BA180();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_F8398);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  sub_57A0(v1 + *(v10 + 28), v9, &qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B9E30();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_BB310();
    v13 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_D68C()
{
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  v1 = static LiveSpeechCaptionsCallManager.shared;

  return v1;
}

uint64_t sub_D6EC()
{
  v1 = sub_BA180();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LiveSpeechHUDView_iOS(0) + 36);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_BB310();
    v9 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();
    sub_E538(v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

uint64_t sub_D898()
{
  type metadata accessor for CGSize(0);
  sub_BABC0();
  return v1;
}

double LiveSpeechHUDView_iOS.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = _s19LiveSpeechUIService0aB11HUDView_iOSV23_isTextInputViewFocused33_F2BA035E101D43293F5F7FB749375E867SwiftUI10FocusStateVySbGvpfi_0() & 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3 & 1;
  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  *(a1 + 24) = sub_B9FB0();
  *(a1 + 32) = v4;
  v5 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v6 = v5[6];
  *(a1 + v6) = swift_getKeyPath();
  sub_2E50(&qword_FA6E0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a1 + v7) = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v5[8];
  *v8 = sub_D68C;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = a1 + v5[9];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v5[10];
  sub_BABC0();
  *v10 = v15;
  *(v10 + 8) = *(&v15 + 1);
  v11 = a1 + v5[11];
  type metadata accessor for CGSize(0);
  sub_BABC0();
  *v11 = v15;
  *(v11 + 16) = v16;
  v12 = (a1 + v5[12]);
  sub_BABC0();
  *v12 = v15;
  v13 = a1 + v5[13];
  sub_BABC0();
  result = *&v15;
  *v13 = v15;
  *(v13 + 16) = v16;
  return result;
}

uint64_t LiveSpeechHUDView_iOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v4 = v3 - 8;
  v25 = *(v3 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = v1 + *(v4 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v29) = v7;
  *(&v29 + 1) = v8;
  sub_2E50(&qword_F8AD8);
  sub_BABF0();
  v9 = v26;
  v10 = v27;
  v11 = v1 + *(v4 + 60);
  v12 = *(v11 + 16);
  v29 = *v11;
  v30 = v12;
  sub_2E50(&qword_F8AE0);
  sub_BABF0();
  v13 = v26;
  v14 = v27;
  v15 = v28;
  sub_21104(v1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_21310(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LiveSpeechHUDView_iOS);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = sub_E544;
  *(a1 + 104) = v17;
  type metadata accessor for CGSize(0);
  v29 = 0uLL;
  sub_BABC0();
  v18 = v27;
  *(a1 + 112) = v26;
  *(a1 + 128) = v18;
  v29 = 0uLL;
  sub_BABC0();
  v19 = v27;
  *(a1 + 136) = v26;
  *(a1 + 152) = v19;
  IsPad = AXDeviceIsPad();
  v21 = 500.0;
  if (IsPad)
  {
    v21 = 1000.0;
  }

  *(a1 + 160) = v21;
  v22 = *(sub_2E50(&qword_F8AE8) + 64);
  *(a1 + v22) = swift_getKeyPath();
  sub_2E50(&qword_F8AF0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_DDD8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_B99C0();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v52 - v8;
  v9 = sub_2E50(&qword_F8E50);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_2E50(&qword_F8E58);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v52 = sub_2E50(&qword_F8E60);
  __chkstk_darwin(v52);
  v16 = &v52 - v15;
  v53 = sub_2E50(&qword_F8E68);
  __chkstk_darwin(v53);
  v55 = &v52 - v17;
  *v11 = sub_BA320();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_2E50(&qword_F8E70);
  sub_E5C4(a2, a1, &v11[*(v18 + 44)]);
  v19 = sub_BAE20();
  v54 = a2;
  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = &v14[*(v12 + 36)];
    sub_2E50(&qword_F8E78);
    v23 = v20;
    sub_B9B10();

    *v22 = v21;
    sub_66B8(v11, v14, &qword_F8E50);
    v24 = sub_BAE20();
    v25 = v23;
    v26 = LiveSpeechStore.selectedCategory.getter();

    sub_57A0(v14, v16, &qword_F8E58);
    v27 = &v16[*(v52 + 36)];
    *v27 = v24;
    v27[1] = v26;
    sub_C5E8(v14, &qword_F8E58);
    v28 = v54 + *(type metadata accessor for LiveSpeechHUDView_iOS(0) + 40);
    v29 = *v28;
    v30 = *(v28 + 8);
    LOBYTE(v65) = v29;
    *(&v65 + 1) = v30;
    sub_2E50(&qword_F8AD8);
    sub_BABD0();
    sub_BADE0();
    sub_B9F70();
    v31 = v16;
    v32 = v55;
    sub_66B8(v31, v55, &qword_F8E60);
    v33 = (v32 + *(v53 + 36));
    v34 = v70;
    v33[4] = v69;
    v33[5] = v34;
    v33[6] = v71;
    v35 = v66;
    *v33 = v65;
    v33[1] = v35;
    v36 = v68;
    v33[2] = v67;
    v33[3] = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v25;
    v38 = v56;
    sub_B9B10();

    v40 = v58;
    v39 = v59;
    v41 = v57;
    (*(v58 + 104))(v57, enum case for LiveSpeechInputMode.favoritePhrases(_:), v59);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v63 == v61 && v64 == v62)
    {
      v42 = *(v40 + 8);
      v42(v41, v39);
      v42(v38, v39);

      v43 = v60;
    }

    else
    {
      v44 = sub_BB700();
      v45 = *(v40 + 8);
      v45(v41, v39);
      v45(v38, v39);

      v43 = v60;
      if ((v44 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v37;
    sub_B9B10();

    if ((v63 & 1) == 0)
    {
      v47 = sub_BA660();
      goto LABEL_9;
    }

LABEL_7:
    v47 = sub_BA680();
LABEL_9:
    v48 = v47;
    v49 = sub_B9EF0();
    sub_66B8(v32, v43, &qword_F8E68);
    result = sub_2E50(&qword_F8E80);
    v51 = v43 + *(result + 36);
    *v51 = v49;
    *(v51 + 8) = v48;
    return result;
  }

  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  result = sub_B9FA0();
  __break(1u);
  return result;
}

uint64_t sub_E528(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_E538(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_E544@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DDD8(a1, v6, a2);
}

uint64_t sub_E5C4@<X0>(uint64_t a1@<X0>, double a2@<X1>, void *a3@<X8>)
{
  v165 = a3;
  v5 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v6 = a1 + *(v5 + 40);
  v8 = *(v6 + 8);
  LOBYTE(v189) = *v6;
  v7 = v189;
  *(&v189 + 1) = v8;
  v172 = sub_2E50(&qword_F8AD8);
  sub_BABD0();
  sub_BADE0();
  sub_B9CF0();
  v162 = v183;
  v161 = v185;
  v160 = v187;
  v159 = v188;
  v182 = 1;
  v181 = v184;
  v180 = v186;
  v164 = &v125;
  v155 = sub_2E50(&qword_F8E88);
  __chkstk_darwin(v155);
  v158 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = &v125;
  v156 = v9;
  __chkstk_darwin(v10);
  v154 = &v125 - v11;
  v12 = sub_2E50(&qword_F8E90);
  v157 = &v125;
  v153 = v12;
  v152 = *(v12 - 8);
  __chkstk_darwin(v12);
  v151 = &v125 - v13;
  v14 = sub_2E50(&qword_F8E98);
  v150 = &v125;
  v149 = v14;
  __chkstk_darwin(v14);
  v148 = &v125 - v15;
  v16 = sub_2E50(&qword_F8EA0);
  v147 = &v125;
  v146 = v16;
  v145 = *(v16 - 8);
  __chkstk_darwin(v16);
  v144 = &v125 - v17;
  v18 = sub_2E50(&qword_F83C0);
  v143 = &v125;
  v140 = v18;
  __chkstk_darwin(v18);
  v166 = &v125 - v19;
  v20 = sub_2E50(&qword_F8EA8);
  v139 = &v125;
  v137 = v20;
  __chkstk_darwin(v20);
  v138 = &v125 - v21;
  v22 = sub_2E50(&qword_F8EB0);
  v136 = &v125;
  v134 = v22;
  __chkstk_darwin(v22);
  v135 = &v125 - v23;
  v24 = sub_2E50(&qword_F8EB8);
  v133 = &v125;
  v132 = v24;
  v131 = *(v24 - 8);
  __chkstk_darwin(v24);
  v130 = &v125 - v25;
  v26 = sub_2E50(&qword_F8EC0);
  v129 = &v125;
  v128 = v26;
  __chkstk_darwin(v26);
  v28 = &v125 - v27;
  v29 = sub_2E50(&qword_F8EC8);
  v127 = &v125;
  v30 = v29 - 8;
  __chkstk_darwin(v29);
  v32 = (&v125 - v31);
  *v32 = sub_BADE0();
  v32[1] = v33;
  v34 = v32 + *(sub_2E50(&qword_F8ED0) + 44);
  v171 = a2;
  v35 = sub_FB9C(a1, a2, v34);
  v126 = v5;
  v36 = *(v5 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v167 = a1;
  sub_21104(a1, &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v38 = *(v36 + 80);
  v39 = (v38 + 16) & ~v38;
  v169 = v37;
  v168 = v38;
  v141 = v39 + v37;
  v170 = v38 | 7;
  v40 = swift_allocObject();
  v142 = v39;
  sub_21310(&v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for LiveSpeechHUDView_iOS);
  v41 = sub_BADE0();
  v43 = v42;
  v44 = (v32 + *(sub_2E50(&qword_F8ED8) + 36));
  *v44 = sub_B58F8;
  v44[1] = 0;
  v44[2] = v41;
  v44[3] = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_21AD0;
  *(v45 + 24) = v40;
  v46 = (v32 + *(v30 + 44));
  *v46 = sub_21B98;
  v46[1] = v45;
  v174 = v7;
  LOBYTE(v189) = v7;
  v173 = v8;
  *(&v189 + 1) = v8;
  sub_BABD0();
  if (v177 == 1)
  {
    if (qword_F8240 != -1)
    {
      swift_once();
    }

    if (qword_F8250 != -1)
    {
      swift_once();
    }
  }

  LOBYTE(v189) = v174;
  *(&v189 + 1) = v173;
  sub_BABD0();
  if (v177 == 1 && qword_F8240 != -1)
  {
    swift_once();
  }

  sub_BADE0();
  sub_B9CF0();
  v47 = v28;
  sub_66B8(v32, v28, &qword_F8EC8);
  v48 = v128;
  v49 = (v47 + *(v128 + 36));
  v50 = v190;
  *v49 = v189;
  v49[1] = v50;
  v49[2] = v191;
  v51 = sub_BAD80();
  v127 = &v125;
  __chkstk_darwin(v51);
  v52 = v167;
  __chkstk_darwin(v53);
  sub_2E50(&qword_F8EE0);
  sub_2E50(&qword_F8EE8);
  v54 = sub_21BB0();
  v55 = sub_21DD8();
  *&v177 = v48;
  *(&v177 + 1) = &type metadata for AnyShape;
  v178 = v54;
  v179 = v55;
  swift_getOpaqueTypeConformance2();
  sub_21E2C();
  v56 = v130;
  sub_BAA20();
  sub_C5E8(v47, &qword_F8EC0);
  sub_B9D20();
  sub_11BE4(&v177);
  v57 = v177;
  v58 = v135;
  (*(v131 + 32))(v135, v56, v132);
  v59 = v58 + *(v134 + 36);
  *v59 = v57;
  *(v59 + 8) = 256;
  v60 = *(v52 + 24);
  if (v60)
  {
    v61 = ~v168;
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v60;
    sub_B9B10();

    v63 = 0;
    if (v177)
    {
      v64 = 1.0;
    }

    else
    {
      v64 = 0.0;
    }

    v65 = v138;
    sub_66B8(v58, v138, &qword_F8EB0);
    *(v65 + *(v137 + 36)) = v64;
    LOBYTE(v177) = v174;
    *(&v177 + 1) = v173;
    sub_BABD0();
    v66 = 0;
    v67 = v166;
    if (v175 == 1)
    {
      v68 = v52 + *(v126 + 52);
      v69 = *(v68 + 16);
      v177 = *v68;
      v178 = v69;
      sub_2E50(&qword_F8AE0);
      sub_BABD0();
      v63 = v175;
      v66 = v176;
    }

    sub_66B8(v65, v67, &qword_F8EA8);
    v70 = (v67 + *(v140 + 9));
    *v70 = v63;
    v70[1] = v66;
    v71 = sub_BB1A0();
    v140 = &v125;
    v72 = *(v71 - 8);
    v73 = *(v72 + 64);
    __chkstk_darwin(v71);
    v138 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
    v74 = &v125 - v138;
    v75 = sub_BB180();
    v139 = &v125;
    v76 = v169;
    __chkstk_darwin(v75);
    v77 = &v125 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_21104(v52, v77, type metadata accessor for LiveSpeechHUDView_iOS);
    sub_BB170();
    v78 = sub_BB160();
    v79 = (v168 + 32) & v61;
    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    *(v80 + 24) = &protocol witness table for MainActor;
    sub_21310(v77, v80 + v79, type metadata accessor for LiveSpeechHUDView_iOS);
    if (sub_B8A30(2, 26, 4, 0))
    {
      v137 = sub_B9E00();
      v168 = &v125;
      v81 = *(v137 - 8);
      __chkstk_darwin(v137);
      v83 = &v125 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v177 = 0;
      *(&v177 + 1) = 0xE000000000000000;
      sub_BB570(17);

      *&v177 = 0xD00000000000003CLL;
      *(&v177 + 1) = 0x80000000000C4190;
      v175 = 116;
      v192._countAndFlagsBits = sub_BB6D0();
      sub_BB060(v192);

      v85 = __chkstk_darwin(v84);
      (*(v72 + 16))(&v125 - v138, v74, v71, v85);
      sub_B9DF0();
      (*(v72 + 8))(v74, v71);
      v52 = v167;
      v86 = v144;
      sub_66B8(v166, v144, &qword_F83C0);
      v87 = sub_2E50(&qword_F83C8);
      v88 = (*(v81 + 32))(v86 + *(v87 + 36), v83, v137);
      v89 = v86;
    }

    else
    {
      v90 = sub_2E50(&qword_F83D0);
      v89 = v144;
      v91 = (v144 + *(v90 + 36));
      v92 = sub_B9D70();
      (*(v72 + 32))(&v91[*(v92 + 20)], v74, v71);
      *v91 = &unk_BE900;
      *(v91 + 1) = v80;
      v88 = sub_66B8(v67, v89, &qword_F83C0);
    }

    __chkstk_darwin(v88);
    v94 = &v125 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_21104(v52, v94, type metadata accessor for LiveSpeechHUDView_iOS);
    v95 = sub_B9D40();
    v96 = *(v95 - 8);
    v97 = *(v96 + 64);
    v98 = __chkstk_darwin(v95);
    v99 = &v125 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v99, COERCE_DOUBLE(*&v171), v95, v98);
    v100 = (v141 + *(v96 + 80)) & ~*(v96 + 80);
    v101 = swift_allocObject();
    sub_21310(v94, v101 + v142, type metadata accessor for LiveSpeechHUDView_iOS);
    (*(v96 + 32))(v101 + v100, v99, v95);
    v102 = v148;
    (*(v145 + 32))(v148, v89, v146);
    v103 = (v102 + *(v149 + 36));
    *v103 = sub_2252C;
    v103[1] = v101;
    v103[2] = 0;
    v103[3] = 0;
    sub_225F8();
    v104 = v151;
    sub_BA930();
    sub_C5E8(v102, &qword_F8E98);
    LOBYTE(v177) = v174;
    *(&v177 + 1) = v173;
    sub_BABD0();
    LOBYTE(v94) = sub_BA640();
    sub_B9B90();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v113 = v154;
    (*(v152 + 32))(v154, v104, v153);
    v114 = v113 + *(v155 + 36);
    *v114 = v94;
    *(v114 + 8) = v106;
    *(v114 + 16) = v108;
    *(v114 + 24) = v110;
    *(v114 + 32) = v112;
    *(v114 + 40) = 0;
    v115 = v158;
    v116 = sub_66B8(v113, v158, &qword_F8E88);
    v117 = v182;
    v118 = v181;
    LOBYTE(v96) = v180;
    __chkstk_darwin(v116);
    v120 = &v125 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_57A0(v115, v120, &qword_F8E88);
    v121 = v165;
    *v165 = 0;
    *(v121 + 8) = v117;
    v121[2] = v162;
    *(v121 + 24) = v118;
    v121[4] = v161;
    *(v121 + 40) = v96;
    v122 = v159;
    v121[6] = v160;
    v121[7] = v122;
    v123 = sub_2E50(&qword_F8F88);
    sub_57A0(v120, v121 + *(v123 + 48), &qword_F8E88);
    sub_C5E8(v115, &qword_F8E88);
    return sub_C5E8(v120, &qword_F8E88);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_FB9C@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v178 = a2;
  v199 = a3;
  v179 = type metadata accessor for LiveSpeechCaptionsPipView();
  v189 = *(v179 - 8);
  __chkstk_darwin(v179);
  v190 = v4;
  v191 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_F8FA0);
  __chkstk_darwin(v5 - 8);
  v184 = &v157 - v6;
  v185 = sub_2E50(&qword_F8FA8);
  v183 = *(v185 - 8);
  __chkstk_darwin(v185);
  v182 = &v157 - v7;
  v188 = sub_2E50(&qword_F8FB0);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v157 - v8;
  v181 = sub_B9A10();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v194 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_2E50(&qword_F8FB8);
  __chkstk_darwin(v198);
  v11 = &v157 - v10;
  v196 = sub_2E50(&qword_F8FC0);
  __chkstk_darwin(v196);
  v197 = &v157 - v12;
  v169 = sub_2E50(&qword_F8FC8);
  __chkstk_darwin(v169);
  v173 = &v157 - v13;
  v176 = sub_2E50(&qword_F8FD0);
  __chkstk_darwin(v176);
  v170 = &v157 - v14;
  v174 = sub_2E50(&qword_F8FD8);
  __chkstk_darwin(v174);
  v175 = &v157 - v15;
  v168 = sub_2E50(&qword_F8FE0);
  v16 = __chkstk_darwin(v168);
  v172 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v157 = &v157 - v18;
  v165 = sub_2E50(&qword_F8FE8);
  v19 = __chkstk_darwin(v165);
  v158 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v161 = &v157 - v21;
  v163 = sub_2E50(&qword_F8FF0);
  __chkstk_darwin(v163);
  v164 = &v157 - v22;
  v23 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v192 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v177 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v25;
  __chkstk_darwin(v24);
  v167 = &v157 - v26;
  v171 = sub_2E50(&qword_F8FF8);
  v27 = __chkstk_darwin(v171);
  v166 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v159 = &v157 - v29;
  v162 = sub_2E50(&qword_F9000);
  v30 = __chkstk_darwin(v162);
  v160 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v157 - v32;
  v34 = sub_2E50(&qword_F9008);
  __chkstk_darwin(v34);
  v36 = (&v157 - v35);
  v37 = sub_2E50(&qword_F8530);
  v38 = __chkstk_darwin(v37 - 8);
  v40 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v157 - v41;
  v195 = sub_2E50(&qword_F9010);
  __chkstk_darwin(v195);
  v44 = &v157 - v43;
  v45 = v23;
  v46 = *(v23 + 40);
  v47 = a1;
  v48 = (a1 + v46);
  v49 = *v48;
  v50 = *(v48 + 1);
  LOBYTE(v203) = v49;
  *(&v203 + 1) = v50;
  sub_2E50(&qword_F8AD8);
  sub_BABD0();
  if (!LOBYTE(v200))
  {
    v189 = v33;
    v190 = v36;
    v191 = v34;
    v194 = v44;
    sub_D278(v42);
    v100 = sub_BA500();
    v101 = *(v100 - 8);
    v102 = (*(v101 + 48))(v42, 1, v100);
    v103 = v47;
    v104 = v42;
    v105 = v173;
    v106 = v172;
    if (v102 != 1)
    {
      sub_57A0(v42, v40, &qword_F8530);
      if ((*(v101 + 88))(v40, v100) == enum case for UserInterfaceSizeClass.regular(_:))
      {
        if (AXDeviceSupportsLiveSpeechCategory())
        {
          v107 = sub_BAD80();
          v108 = __chkstk_darwin(v107);
          __chkstk_darwin(v108);
          v188 = sub_2E50(&qword_F9090);
          v187 = sub_2E50(&qword_F90A0);
          sub_D150(&qword_F9088, &qword_F9090);
          sub_D150(&qword_F9098, &qword_F90A0);
          v109 = v159;
          sub_BAD90();
          v110 = v167;
          sub_21104(v47, v167, type metadata accessor for LiveSpeechHUDView_iOS);
          v111 = (*(v192 + 80) + 16) & ~*(v192 + 80);
          v112 = swift_allocObject();
          sub_21310(v110, v112 + v111, type metadata accessor for LiveSpeechHUDView_iOS);
          v113 = (v109 + *(v171 + 36));
          *v113 = sub_24B98;
          v113[1] = v112;
          sub_BADE0();
          sub_B9F70();
          v114 = v160;
          sub_66B8(v109, v160, &qword_F8FF8);
          v115 = (v114 + *(v162 + 36));
          v116 = v208;
          v115[4] = v207;
          v115[5] = v116;
          v115[6] = v209;
          v118 = v204;
          v117 = v205;
          *v115 = v203;
          v115[1] = v118;
          v119 = v206;
          v115[2] = v117;
          v115[3] = v119;
          v120 = &qword_F9000;
          v121 = v189;
          sub_66B8(v114, v189, &qword_F9000);
          sub_57A0(v121, v164, &qword_F9000);
        }

        else
        {
          v150 = v157;
          sub_12634(v47, v157);
          sub_BADE0();
          sub_B9F70();
          v151 = v158;
          sub_66B8(v150, v158, &qword_F8FE0);
          v152 = (v151 + *(v165 + 36));
          v153 = v208;
          v152[4] = v207;
          v152[5] = v153;
          v152[6] = v209;
          v155 = v204;
          v154 = v205;
          *v152 = v203;
          v152[1] = v155;
          v156 = v206;
          v152[2] = v154;
          v152[3] = v156;
          v120 = &qword_F8FE8;
          v121 = v161;
          sub_66B8(v151, v161, &qword_F8FE8);
          sub_57A0(v121, v164, &qword_F8FE8);
        }

        swift_storeEnumTagMultiPayload();
        sub_22CE8();
        sub_22F44();
        v146 = v190;
        sub_BA430();
        sub_C5E8(v121, v120);
        v148 = &qword_F9008;
        sub_57A0(v146, v175, &qword_F9008);
        swift_storeEnumTagMultiPayload();
        sub_22C5C();
        sub_23158();
        v149 = v194;
LABEL_19:
        sub_BA430();
        sub_C5E8(v146, v148);
        sub_C5E8(v104, &qword_F8530);
        sub_57A0(v149, v197, &qword_F9010);
        swift_storeEnumTagMultiPayload();
        sub_22BD0();
        sub_23210();
        sub_BA430();
        return sub_C5E8(v149, &qword_F9010);
      }

      (*(v101 + 8))(v40, v100);
    }

    if (AXDeviceSupportsLiveSpeechCategory())
    {
      v138 = sub_BAD80();
      v190 = &v157;
      v139 = __chkstk_darwin(v138);
      __chkstk_darwin(v139);
      v189 = sub_2E50(&qword_F9090);
      v188 = sub_2E50(&qword_F90A0);
      sub_D150(&qword_F9088, &qword_F9090);
      v104 = v42;
      sub_D150(&qword_F9098, &qword_F90A0);
      v140 = v166;
      sub_BAD90();
      v141 = v167;
      sub_21104(v103, v167, type metadata accessor for LiveSpeechHUDView_iOS);
      v142 = (*(v192 + 80) + 16) & ~*(v192 + 80);
      v143 = swift_allocObject();
      sub_21310(v141, v143 + v142, type metadata accessor for LiveSpeechHUDView_iOS);
      v144 = (v140 + *(v171 + 36));
      *v144 = sub_232DC;
      v144[1] = v143;
      v145 = &qword_F8FF8;
      sub_57A0(v140, v105, &qword_F8FF8);
      swift_storeEnumTagMultiPayload();
      sub_22D74();
      sub_22FFC(&qword_F90C0, &qword_F8FE0, &unk_BE9C0, sub_23078);
      v146 = v170;
      sub_BA430();
      v147 = v140;
    }

    else
    {
      sub_12634(v47, v106);
      v145 = &qword_F8FE0;
      sub_57A0(v106, v105, &qword_F8FE0);
      swift_storeEnumTagMultiPayload();
      sub_22D74();
      sub_22FFC(&qword_F90C0, &qword_F8FE0, &unk_BE9C0, sub_23078);
      v146 = v170;
      sub_BA430();
      v147 = v106;
    }

    sub_C5E8(v147, v145);
    v148 = &qword_F8FD0;
    sub_57A0(v146, v175, &qword_F8FD0);
    swift_storeEnumTagMultiPayload();
    sub_22C5C();
    sub_23158();
    v149 = v194;
    goto LABEL_19;
  }

  sub_B9D10();
  v52 = v51;
  sub_B9D10();
  v54 = v53;
  sub_B9D20();
  v56 = v55;
  v57 = sub_B9D20();
  v59 = LiveSpeechStore.SpeechContext.init(text:highlightRange:)(v57, v52, v54, v56, v58);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = (a1 + *(v45 + 48));
  v67 = *v66;
  v68 = *(v66 + 1);
  v200 = v67;
  v201 = v68;
  sub_2E50(&qword_F9018);
  sub_BABF0();
  v175 = *(&v203 + 1);
  v69 = v203;
  v70 = v204;
  v71 = (a1 + *(v45 + 52));
  v72 = *(v71 + 1);
  v73 = *(v71 + 2);
  v178 = *v71;
  v200 = v178;
  v201 = v72;
  v202 = v73;
  v176 = sub_2E50(&qword_F8AE0);
  sub_BABF0();
  v74 = v203;
  v75 = v204;
  v76 = v177;
  sub_21104(a1, v177, type metadata accessor for LiveSpeechHUDView_iOS);
  v77 = (*(v192 + 80) + 16) & ~*(v192 + 80);
  v78 = swift_allocObject();
  sub_21310(v76, v78 + v77, type metadata accessor for LiveSpeechHUDView_iOS);
  type metadata accessor for CGSize(0);
  v201 = 0;
  v200 = 0.0;
  sub_BABC0();
  v79 = v204;
  *(v11 + 8) = v203;
  *(v11 + 18) = v79;
  *(v11 + 21) = 0x4024000000000000;
  v200 = 0.0;
  sub_2E50(&qword_F9020);
  sub_BABC0();
  *(v11 + 11) = v203;
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  *(v11 + 24) = *&qword_100BF0 / 1.2;
  *(v11 + 25) = 0x3FF0000000000000;
  v80 = v179;
  v81 = *(v179 + 64);
  *&v11[v81] = swift_getKeyPath();
  sub_2E50(&qword_F8AF0);
  swift_storeEnumTagMultiPayload();
  v82 = *(v80 + 68);
  v83 = [objc_allocWithZone(type metadata accessor for ForeheadWindow()) init];
  *&v11[v82] = v83;
  v193 = *(v80 + 72);
  *&v11[v193] = 0;
  v84 = v83;
  v85 = v194;
  sub_B95F0();

  v86 = sub_B9A00();
  v87 = sub_BB2F0();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v192 = v73;
    v89 = v88;
    *&v90 = COERCE_DOUBLE(swift_slowAlloc());
    v179 = v78;
    v200 = *&v90;
    *v89 = 136315650;
    LOBYTE(v203) = 0;
    v91 = sub_BAFF0();
    v177 = v69;
    v93 = sub_7A1D8(v91, v92, &v200);

    *(v89 + 4) = v93;
    *(v89 + 12) = 2080;
    v203 = v74;
    v204 = v75;

    sub_2E50(&qword_F9110);
    v94 = sub_BAFF0();
    v96 = sub_7A1D8(v94, v95, &v200);

    *(v89 + 14) = v96;
    *(v89 + 22) = 2080;
    *&v203 = v59;
    *(&v203 + 1) = v61;
    *&v204 = v63;
    *(&v204 + 1) = v65;
    type metadata accessor for CGRect(0);
    v97 = sub_BAFF0();
    v99 = sub_7A1D8(v97, v98, &v200);

    *(v89 + 24) = v99;
    v69 = v177;
    _os_log_impl(&dword_0, v86, v87, "Pip init %s iconOffset %s containerRect: %s", v89, 0x20u);
    swift_arrayDestroy();
    v78 = v179;

    v73 = v192;

    (*(v180 + 8))(v194, v181);
  }

  else
  {

    (*(v180 + 8))(v85, v181);
  }

  *v11 = 0;
  *(v11 + 8) = v59;
  *(v11 + 9) = v61;
  *(v11 + 10) = v63;
  *(v11 + 11) = v65;
  *(v11 + 12) = sub_22974;
  *(v11 + 13) = v78;
  *(v11 + 14) = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  *(v11 + 15) = 0;
  v122 = v175;
  *(v11 + 1) = v69;
  *(v11 + 2) = v122;
  *(v11 + 3) = v70;
  *(v11 + 2) = v74;
  *(v11 + 3) = v75;
  LOBYTE(v200) = 1;

  sub_BABC0();
  v123 = *(&v203 + 1);
  v11[152] = v203;
  *(v11 + 20) = v123;
  swift_beginAccess();
  sub_2E50(&qword_FA700);
  v124 = v182;
  sub_B9AE0();
  swift_endAccess();

  v125 = [objc_opt_self() mainRunLoop];
  *&v203 = v125;
  v126 = sub_BB4B0();
  v127 = v184;
  (*(*(v126 - 8) + 56))(v184, 1, 1, v126);
  sub_2298C();
  sub_D150(&qword_F9030, &qword_F8FA8);
  sub_2090C(&qword_F9038, sub_2298C);
  v128 = v186;
  v129 = v185;
  sub_B9B40();
  sub_C5E8(v127, &qword_F8FA0);

  (*(v183 + 8))(v124, v129);
  v130 = v191;
  sub_21104(v11, v191, type metadata accessor for LiveSpeechCaptionsPipView);
  v131 = (v189[80] + 16) & ~v189[80];
  v132 = swift_allocObject();
  sub_21310(v130, v132 + v131, type metadata accessor for LiveSpeechCaptionsPipView);
  sub_D150(&qword_F9040, &qword_F8FB0);
  v133 = v188;
  v134 = sub_B9B50();

  (*(v187 + 8))(v128, v133);
  *&v11[v193] = v134;
  *&v203 = v178;
  *(&v203 + 1) = v72;
  *&v204 = v73;
  sub_BABD0();
  sub_3A414(v200);
  v135 = &v11[*(v198 + 36)];
  *v135 = v136;
  *(v135 + 1) = 0;
  sub_57A0(v11, v197, &qword_F8FB8);
  swift_storeEnumTagMultiPayload();
  sub_22BD0();
  sub_23210();
  sub_BA430();
  return sub_C5E8(v11, &qword_F8FB8);
}

uint64_t sub_11900()
{
  sub_BAE30();
  sub_B9D80();
}

void sub_1196C()
{
  type metadata accessor for LiveSpeechHUDView_iOS(0);
  sub_2E50(&qword_F8AD8);
  sub_BABE0();
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  sub_BABD0();
  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);
}

uint64_t sub_11A58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (qword_F8258 != -1)
  {
    v7 = a2;
    v8 = a1;
    swift_once();
    a1 = v8;
    a2 = v7;
  }

  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechFrame(_:)(a1, a2, a3, a4);
  type metadata accessor for LiveSpeechHUDView_iOS(0);
  sub_2E50(&qword_F8AE0);
  return sub_BABE0();
}

uint64_t sub_11B38()
{
  sub_B9D20();
  sub_11BE4(&v1);
  sub_2E50(&qword_F8EC0);
  sub_21BB0();
  sub_21DD8();
  sub_BA810();
}

uint64_t sub_11BE4@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v2 = sub_B9F50();
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2E50(&qword_F8F90);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_BA6D0();
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v22 = sub_BA310();
  __chkstk_darwin(v22);
  v9 = (v1 + *(type metadata accessor for LiveSpeechHUDView_iOS(0) + 40));
  v10 = *v9;
  v11 = *(v9 + 1);
  v25 = *v9;
  v26 = v11;
  sub_2E50(&qword_F8AD8);
  sub_BABD0();
  if (v24 == 1)
  {
    if (qword_F8248 != -1)
    {
      swift_once();
    }

    v12 = qword_100C00;
    goto LABEL_11;
  }

  v25 = v10;
  v26 = v11;
  sub_BABD0();
  if (v24 == 2)
  {
    v13 = sub_D6EC();
    if ((v14 & 1) == 0)
    {
      v12 = v13;
LABEL_11:
      v15 = *(v2 + 20);
      v16 = enum case for RoundedCornerStyle.continuous(_:);
      v17 = sub_BA270();
      (*(*(v17 - 8) + 104))(v4 + v15, v16, v17);
      *v4 = v12;
      v4[1] = v12;
      sub_2090C(&qword_F8E40, &type metadata accessor for RoundedRectangle);
      goto LABEL_12;
    }

LABEL_10:
    v12 = 0x4038000000000000;
    goto LABEL_11;
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_10;
  }

  sub_BA6C0();
  (*(v20 + 56))(v7, 0, 1, v21);
  sub_BA6B0();
  sub_C5E8(v7, &qword_F8F90);
  sub_BA300();
  sub_2090C(&qword_F8F98, &type metadata accessor for ConcentricRectangle);
LABEL_12:
  result = sub_BAD20();
  *v23 = result;
  return result;
}

uint64_t sub_11F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_2E50(&qword_F8EE8) + 36);
  sub_BAD40();
  sub_B9D20();
  sub_11BE4(&v8);
  v5 = v8;
  v6 = sub_2E50(&qword_F8F50);
  *(v4 + *(v6 + 52)) = v5;
  *(v4 + *(v6 + 56)) = 256;
  return sub_57A0(a1, a2, &qword_F8EC0);
}

uint64_t sub_12054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  sub_BB170();
  *(v3 + 32) = sub_BB160();
  v5 = sub_BB140();

  return _swift_task_switch(sub_120EC, v5, v4);
}

uint64_t sub_120EC()
{
  v1 = v0[3];

  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 categories];
    sub_BB3E0();
    v6 = sub_BB0F0();

    swift_getKeyPath();
    swift_getKeyPath();
    v0[2] = v6;
    sub_B9B20();
    v7 = v4;
    LiveSpeechStore.sortCategories()();

    v8 = v0[1];

    return v8();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);

    return sub_B9FA0();
  }
}

uint64_t sub_1226C(uint64_t a1)
{
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = *(a1 + 24);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_B9B10();

    (*(v3 + 104))(v5, enum case for LiveSpeechInputMode.keyboard(_:), v2);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v28 == *&v31.width && v29 == *&v31.height)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_BB700();
    }

    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v8, v2);

    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    LOBYTE(v28) = *a1;
    v29 = v13;
    LOBYTE(v30) = v14;
    LOBYTE(v31.width) = v11 & 1;
    sub_2E50(&qword_F8A48);
    sub_B9BA0();
    height = CGSizeZero.height;
    v16 = (a1 + *(type metadata accessor for LiveSpeechHUDView_iOS(0) + 52));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v28 = *v16;
    v29 = v18;
    v30 = v19;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v32.width = CGSizeZero.width;
    v32.height = height;
    result = CGSizeEqualToSize(v32, v31);
    if (result)
    {
      sub_B9D20();
      if (qword_F8240 != -1)
      {
        v26 = v21;
        swift_once();
        v21 = v26;
      }

      v22 = v21 - *&qword_100BF8;
      sub_B9D20();
      sub_363B8(1, 0.0, v22, v23);
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31.width = v24;
      v31.height = v25;
      return sub_BABE0();
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_12634@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_2E50(&qword_F90F0);
  __chkstk_darwin(v25);
  v4 = v24 - v3;
  v5 = sub_2E50(&qword_F9300);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_2E50(&qword_F90E0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_2E50(&qword_F8530);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  sub_D278(v24 - v15);
  v17 = sub_BA500();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_5;
  }

  v24[1] = v8;
  sub_57A0(v16, v14, &qword_F8530);
  if ((*(v18 + 88))(v14, v17) != enum case for UserInterfaceSizeClass.regular(_:))
  {
    (*(v18 + 8))(v14, v17);
LABEL_5:
    *v4 = sub_BA320();
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v22 = sub_2E50(&qword_F9308);
    sub_139AC(a1, &v4[*(v22 + 44)]);
    v20 = &qword_F90F0;
    sub_57A0(v4, v7, &qword_F90F0);
    swift_storeEnumTagMultiPayload();
    sub_D150(&qword_F90D8, &qword_F90E0);
    sub_D150(&qword_F90E8, &qword_F90F0);
    sub_BA430();
    v21 = v4;
    goto LABEL_6;
  }

  *v10 = sub_BA320();
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  v19 = sub_2E50(&qword_F9310);
  sub_12A90(a1, &v10[*(v19 + 44)]);
  v20 = &qword_F90E0;
  sub_57A0(v10, v7, &qword_F90E0);
  swift_storeEnumTagMultiPayload();
  sub_D150(&qword_F90D8, &qword_F90E0);
  sub_D150(&qword_F90E8, &qword_F90F0);
  sub_BA430();
  v21 = v10;
LABEL_6:
  sub_C5E8(v21, v20);
  return sub_C5E8(v16, &qword_F8530);
}

uint64_t sub_12A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = sub_2E50(&qword_F9318);
  __chkstk_darwin(v51);
  v4 = &v44 - v3;
  v54 = sub_2E50(&qword_F9320);
  __chkstk_darwin(v54);
  v55 = &v44 - v5;
  v48 = sub_2E50(&qword_F9328);
  __chkstk_darwin(v48);
  v50 = &v44 - v6;
  v53 = sub_2E50(&qword_F9330);
  __chkstk_darwin(v53);
  v52 = &v44 - v7;
  v49 = sub_2E50(&qword_F9338);
  __chkstk_darwin(v49);
  v47 = &v44 - v8;
  v44 = sub_2E50(&qword_F9340);
  v9 = __chkstk_darwin(v44);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_2E50(&qword_F9348);
  v15 = __chkstk_darwin(v14 - 8);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v46 = (&v44 - v17);
  v18 = sub_B99C0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = *(a1 + 24);
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v23;
    sub_B9B10();

    v25 = (*(v19 + 88))(v21, v18);
    if (v25 == enum case for LiveSpeechInputMode.keyboard(_:))
    {
      *v4 = sub_BA1A0();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v26 = sub_2E50(&qword_F9368);
      sub_1340C(v22, &v4[*(v26 + 44)]);
      sub_57A0(v4, v50, &qword_F9318);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F9358, &qword_F9338);
      sub_D150(&qword_F9360, &qword_F9318);
      v27 = v52;
      sub_BA430();
      sub_57A0(v27, v55, &qword_F9330);
      swift_storeEnumTagMultiPayload();
      sub_24178();
      sub_BA430();
      sub_C5E8(v27, &qword_F9330);
      return sub_C5E8(v4, &qword_F9318);
    }

    else if (v25 == enum case for LiveSpeechInputMode.favoritePhrases(_:))
    {
      v29 = sub_BA190();
      v30 = v46;
      *v46 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      v31 = v30 + *(sub_2E50(&qword_F9370) + 44);
      *v13 = sub_BA1C0();
      *(v13 + 1) = 0x4028000000000000;
      v13[16] = 0;
      v32 = sub_2E50(&qword_F9378);
      sub_19D58(v22, 1, &v13[*(v32 + 44)]);
      *&v13[v44[9]] = 1;
      sub_57A0(v13, v11, &qword_F9340);
      *v31 = 0;
      *(v31 + 8) = 1;
      v33 = sub_2E50(&qword_F9380);
      sub_57A0(v11, v31 + *(v33 + 48), &qword_F9340);
      sub_C5E8(v13, &qword_F9340);
      sub_C5E8(v11, &qword_F9340);
      type metadata accessor for LiveSpeechStore(0);
      sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
      v34 = sub_B9FB0();
      v36 = v35;
      v57 = 0;
      v58 = 0;
      sub_2E50(&qword_F86B0);
      sub_BABC0();
      v37 = v59;
      v38 = v60;
      v39 = v61;
      v40 = v45;
      sub_57A0(v30, v45, &qword_F9348);
      v41 = v47;
      sub_57A0(v40, v47, &qword_F9348);
      v42 = (v41 + *(sub_2E50(&qword_F9388) + 48));
      *v42 = v34;
      v42[1] = v36;
      v42[2] = v37;
      v42[3] = v38;
      v42[4] = v39;
      v44 = v34;

      sub_C5E8(v40, &qword_F9348);
      sub_57A0(v41, v50, &qword_F9338);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F9358, &qword_F9338);
      sub_D150(&qword_F9360, &qword_F9318);
      v43 = v52;
      sub_BA430();
      sub_57A0(v43, v55, &qword_F9330);
      swift_storeEnumTagMultiPayload();
      sub_24178();
      sub_BA430();

      sub_C5E8(v43, &qword_F9330);
      sub_C5E8(v41, &qword_F9338);
      return sub_C5E8(v30, &qword_F9348);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_24178();
      sub_BA430();
      return (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1340C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2E50(&qword_F9340);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_2E50(&qword_F92E8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_13644(&v20 - v15);
  *v10 = sub_BA1C0();
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  v17 = sub_2E50(&qword_F9378);
  sub_19D58(a1, 1, &v10[*(v17 + 44)]);
  *&v10[*(v5 + 44)] = 1;
  sub_57A0(v16, v14, &qword_F92E8);
  sub_57A0(v10, v8, &qword_F9340);
  sub_57A0(v14, a2, &qword_F92E8);
  v18 = sub_2E50(&qword_F93A0);
  sub_57A0(v8, a2 + *(v18 + 48), &qword_F9340);
  sub_C5E8(v10, &qword_F9340);
  sub_C5E8(v16, &qword_F92E8);
  sub_C5E8(v8, &qword_F9340);
  return sub_C5E8(v14, &qword_F92E8);
}

uint64_t sub_13644@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v22 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v24 = v3;
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2E50(&qword_F92F8);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v21 - v4;
  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  v6 = sub_B9FB0();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = *(v1 + 24);
  if (v10)
  {
    v11 = KeyPath;
    v21 = v10;
    v12 = sub_B9A90();
    v31 = v6;
    v32 = v8;
    v33 = v11;
    v34 = 0;
    v35 = v12;
    v36 = v10;
    v13 = *(v1 + 8);
    v14 = *(v1 + 16);
    v28 = *v1;
    v29 = v13;
    v30 = v14;
    sub_2E50(&qword_F8A48);
    sub_B9BB0();
    sub_2E50(&qword_F8760);
    sub_7F58();
    sub_BA9E0();

    v15 = v26;
    sub_21104(v1, v26, type metadata accessor for LiveSpeechHUDView_iOS);
    v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v17 = swift_allocObject();
    sub_21310(v15, v17 + v16, type metadata accessor for LiveSpeechHUDView_iOS);
    v18 = v27;
    (*(v23 + 32))(v27, v5, v25);
    result = sub_2E50(&qword_F92E8);
    v20 = (v18 + *(result + 36));
    *v20 = sub_24160;
    v20[1] = v17;
    v20[2] = 0;
    v20[3] = 0;
  }

  else
  {
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_139AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_2E50(&qword_F9278);
  __chkstk_darwin(v3 - 8);
  v61 = (&v60 - v4);
  v64 = sub_2E50(&qword_F9280);
  v5 = __chkstk_darwin(v64);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v60 - v8;
  v67 = sub_2E50(&qword_F93A8);
  __chkstk_darwin(v67);
  v68 = &v60 - v9;
  v63 = sub_2E50(&qword_F93B0);
  __chkstk_darwin(v63);
  v11 = (&v60 - v10);
  v66 = sub_2E50(&qword_F93B8);
  __chkstk_darwin(v66);
  v65 = &v60 - v12;
  v13 = sub_B99C0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2E50(&qword_F93C0);
  v18 = __chkstk_darwin(v17 - 8);
  v71 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v70 = &v60 - v20;
  v21 = sub_2E50(&qword_F93C8);
  v22 = __chkstk_darwin(v21 - 8);
  v69 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v60 - v24;
  *v25 = sub_BA1C0();
  *(v25 + 1) = 0x4028000000000000;
  v25[16] = 0;
  v26 = sub_2E50(&qword_F93D0);
  sub_14340(a1, &v25[*(v26 + 44)]);
  v27 = a1[3];
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v27;
    sub_B9B10();

    v29 = (*(v14 + 88))(v16, v13);
    if (v29 == enum case for LiveSpeechInputMode.keyboard(_:))
    {
      v30 = v61;
      sub_197B0(a1, v61);
      sub_2E50(&qword_F8E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_BDB40;
      v32 = sub_BA670();
      *(inited + 32) = v32;
      v33 = sub_BA690();
      *(inited + 33) = v33;
      v34 = sub_BA680();
      sub_BA680();
      if (sub_BA680() != v32)
      {
        v34 = sub_BA680();
      }

      sub_BA680();
      if (sub_BA680() != v33)
      {
        v34 = sub_BA680();
      }

      v35 = v70;
      sub_B9B90();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      sub_66B8(v30, v7, &qword_F9278);
      v44 = &v7[*(v64 + 36)];
      *v44 = v34;
      *(v44 + 1) = v37;
      *(v44 + 2) = v39;
      *(v44 + 3) = v41;
      *(v44 + 4) = v43;
      v44[40] = 0;
      v45 = v62;
      sub_66B8(v7, v62, &qword_F9280);
      sub_57A0(v45, v11, &qword_F9280);
      swift_storeEnumTagMultiPayload();
      sub_242E8();
      sub_2433C();
      v46 = v65;
      sub_BA430();
      sub_57A0(v46, v68, &qword_F93B8);
      swift_storeEnumTagMultiPayload();
      sub_2425C();
      sub_BA430();
      sub_C5E8(v46, &qword_F93B8);
      sub_C5E8(v45, &qword_F9280);
    }

    else if (v29 == enum case for LiveSpeechInputMode.favoritePhrases(_:))
    {
      type metadata accessor for LiveSpeechStore(0);
      sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
      v47 = sub_B9FB0();
      v49 = v48;
      v73 = 0;
      v74 = 0;
      sub_2E50(&qword_F86B0);
      sub_BABC0();
      v50 = v75;
      v51 = v76;
      v52 = v77;
      *v11 = v47;
      v11[1] = v49;
      v11[2] = v50;
      v11[3] = v51;
      v11[4] = v52;
      swift_storeEnumTagMultiPayload();
      sub_242E8();
      sub_2433C();
      v53 = v47;

      v54 = v65;
      sub_BA430();
      sub_57A0(v54, v68, &qword_F93B8);
      swift_storeEnumTagMultiPayload();
      sub_2425C();
      v35 = v70;
      sub_BA430();

      sub_C5E8(v54, &qword_F93B8);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2425C();
      v35 = v70;
      sub_BA430();
      (*(v14 + 8))(v16, v13);
    }

    v55 = v69;
    sub_57A0(v25, v69, &qword_F93C8);
    v56 = v71;
    sub_57A0(v35, v71, &qword_F93C0);
    v57 = v72;
    sub_57A0(v55, v72, &qword_F93C8);
    v58 = sub_2E50(&qword_F9408);
    sub_57A0(v56, v57 + *(v58 + 48), &qword_F93C0);
    sub_C5E8(v35, &qword_F93C0);
    sub_C5E8(v25, &qword_F93C8);
    sub_C5E8(v56, &qword_F93C0);
    return sub_C5E8(v55, &qword_F93C8);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_14340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v71 = sub_2E50(&qword_F8A50);
  __chkstk_darwin(v71);
  v62 = &v60 - v3;
  v4 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v4 - 8);
  v63 = &v60 - v5;
  v67 = sub_2E50(&qword_F91F8);
  __chkstk_darwin(v67);
  v64 = &v60 - v6;
  v68 = sub_2E50(&qword_F9200);
  __chkstk_darwin(v68);
  v70 = &v60 - v7;
  v66 = sub_2E50(&qword_F9208);
  __chkstk_darwin(v66);
  v9 = &v60 - v8;
  v69 = sub_2E50(&qword_F9210);
  __chkstk_darwin(v69);
  v11 = &v60 - v10;
  v12 = sub_2E50(&qword_F9218);
  v13 = __chkstk_darwin(v12 - 8);
  v73 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v65 = type metadata accessor for HUDButton(0);
  v17 = __chkstk_darwin(v65);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v75 = &v60 - v21;
  v22 = __chkstk_darwin(v20);
  v76 = (&v60 - v23);
  v24 = __chkstk_darwin(v22);
  v26 = (&v60 - v25);
  __chkstk_darwin(v24);
  v72 = &v60 - v27;
  sub_1509C(1, (&v60 - v27));
  v28 = *(a1 + 24);
  if (v28)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v28;
    sub_B9B10();

    if (v79 == 2)
    {

LABEL_5:
      v31 = v26;
      sub_15B48(&static Color.red.getter, sub_23BB0, v26, xmmword_BE340);
      sub_21104(v26, v9, type metadata accessor for HUDButton);
      swift_storeEnumTagMultiPayload();
      sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
      sub_D150(&qword_F9238, &qword_F91F8);
      sub_BA430();
      sub_57A0(v11, v70, &qword_F9210);
      swift_storeEnumTagMultiPayload();
      sub_239DC();
      sub_23AC4();
      sub_BA430();
      sub_C5E8(v11, &qword_F9210);
      v32 = v26;
LABEL_13:
      sub_23DFC(v32, type metadata accessor for HUDButton);
      goto LABEL_14;
    }

    v30 = sub_BB700();

    if (v30)
    {
      goto LABEL_5;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v29;
    sub_B9B10();

    if (v78 > 2u)
    {
    }

    else
    {
      v34 = sub_BB700();

      if ((v34 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v35 = v33;
        sub_B9B10();

        if (v77 > 1u)
        {
          v31 = v26;
        }

        else
        {
          v31 = v26;
          if (!v77)
          {

LABEL_18:
            swift_getKeyPath();
            swift_getKeyPath();
            v55 = v35;
            v56 = v63;
            sub_B9B10();

            SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
            v42 = 1;
            v58 = (*(*(SpokenContext - 8) + 48))(v56, 1, SpokenContext);
            sub_C5E8(v56, &qword_F91F0);
            if (v58 == 1)
            {
              goto LABEL_15;
            }

            v59 = v62;
            sub_15DE0();
            sub_57A0(v59, v70, &qword_F8A50);
            swift_storeEnumTagMultiPayload();
            sub_239DC();
            sub_23AC4();
            sub_BA430();
            sub_C5E8(v59, &qword_F8A50);
LABEL_14:
            v42 = 0;
LABEL_15:
            v43 = sub_2E50(&qword_F9220);
            (*(*(v43 - 8) + 56))(v16, v42, 1, v43);
            sub_16178(v31);
            v44 = v72;
            v45 = v31;
            v46 = v76;
            sub_21104(v72, v76, type metadata accessor for HUDButton);
            v47 = v73;
            sub_57A0(v16, v73, &qword_F9218);
            v48 = v16;
            v49 = v75;
            sub_21104(v31, v75, type metadata accessor for HUDButton);
            v50 = v74;
            sub_21104(v46, v74, type metadata accessor for HUDButton);
            v51 = sub_2E50(&qword_F9410);
            v52 = v50 + v51[12];
            *v52 = 0;
            *(v52 + 8) = 1;
            sub_57A0(v47, v50 + v51[16], &qword_F9218);
            sub_21104(v49, v50 + v51[20], type metadata accessor for HUDButton);
            sub_23DFC(v45, type metadata accessor for HUDButton);
            sub_C5E8(v48, &qword_F9218);
            sub_23DFC(v44, type metadata accessor for HUDButton);
            sub_23DFC(v49, type metadata accessor for HUDButton);
            sub_C5E8(v47, &qword_F9218);
            return sub_23DFC(v46, type metadata accessor for HUDButton);
          }
        }

        v54 = sub_BB700();

        if ((v54 & 1) == 0)
        {
          v42 = 1;
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    v61 = v26;
    sub_15798(v26);
    v36 = v76;
    sub_15B48(&static Color.blue.getter, sub_23CF8, v76, xmmword_BE330);
    v37 = v16;
    v38 = v75;
    sub_21104(v26, v75, type metadata accessor for HUDButton);
    sub_21104(v36, v19, type metadata accessor for HUDButton);
    v39 = v64;
    sub_21104(v38, v64, type metadata accessor for HUDButton);
    v40 = sub_2E50(&qword_F9248);
    sub_21104(v19, v39 + *(v40 + 48), type metadata accessor for HUDButton);
    sub_23DFC(v19, type metadata accessor for HUDButton);
    v41 = v38;
    v16 = v37;
    sub_23DFC(v41, type metadata accessor for HUDButton);
    sub_57A0(v39, v9, &qword_F91F8);
    swift_storeEnumTagMultiPayload();
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F9238, &qword_F91F8);
    sub_BA430();
    sub_57A0(v11, v70, &qword_F9210);
    swift_storeEnumTagMultiPayload();
    sub_239DC();
    sub_23AC4();
    sub_BA430();
    sub_C5E8(v11, &qword_F9210);
    v31 = v61;
    sub_C5E8(v39, &qword_F91F8);
    sub_23DFC(v36, type metadata accessor for HUDButton);
    v32 = v31;
    goto LABEL_13;
  }

  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  result = sub_B9FA0();
  __break(1u);
  return result;
}

uint64_t sub_1509C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v58 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v59 = v6;
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_B99C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = &v49 - v12;
  v13 = __chkstk_darwin(v11);
  v50 = &v49 - v14;
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = sub_B9E30();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D460(v20);
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v21 = sub_3CB8(v17, qword_100DA8);
  sub_2090C(&qword_F9250, &type metadata accessor for DynamicTypeSize);
  v57 = v21;
  v22 = sub_BAF80();
  v62 = v18;
  (*(v18 + 8))(v20, v17);
  v61 = v3;
  v23 = *(v3 + 24);
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v23;
    sub_B9B10();

    v25 = sub_B99A0();
    v53 = v26;
    v54 = v25;
    v27 = *(v8 + 8);
    v27(v16, v7);
    if (v52 & v22)
    {
      swift_getKeyPath();
      v49 = v8;
      swift_getKeyPath();
      v28 = v24;
      v29 = v50;
      sub_B9B10();

      v8 = v49;

      v30 = sub_B99B0();
      v51 = v31;
      v52 = v30;
      v27(v29, v7);
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v50 = sub_BAAE0();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v24;
    v33 = v56;
    sub_B9B10();

    v34 = v55;
    (*(v8 + 16))(v55, v33, v7);
    v35 = (*(v8 + 88))(v34, v7);
    if (v35 == enum case for LiveSpeechInputMode.keyboard(_:))
    {
      v36 = sub_BAAB0();
    }

    else if (v35 == enum case for LiveSpeechInputMode.favoritePhrases(_:))
    {
      v36 = sub_BAB00();
    }

    else
    {
      v36 = sub_BAAE0();
      v27(v33, v7);
      v33 = v34;
    }

    v27(v33, v7);
    v37 = v60;
    sub_21104(v61, v60, type metadata accessor for LiveSpeechHUDView_iOS);
    v38 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v39 = swift_allocObject();
    sub_21310(v37, v39 + v38, type metadata accessor for LiveSpeechHUDView_iOS);
    *a2 = swift_getKeyPath();
    sub_2E50(&qword_F8398);
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for HUDButton(0);
    v41 = v40[13];
    *(a2 + v41) = sub_BA710();
    *(a2 + v40[15]) = 0x4020000000000000;
    *(a2 + v40[16]) = 0x4000000000000000;
    *(a2 + v40[17]) = 0x4040000000000000;
    *(a2 + v40[18]) = 0x402E000000000000;
    *(a2 + v40[19]) = 0x4024000000000000;
    result = (*(v62 + 16))(a2 + v40[20], v57, v17);
    v43 = (a2 + v40[5]);
    v44 = v53;
    *v43 = v54;
    v43[1] = v44;
    v45 = (a2 + v40[6]);
    v46 = v51;
    *v45 = v52;
    v45[1] = v46;
    *(a2 + v40[7]) = 0;
    *(a2 + v40[8]) = 1;
    *(a2 + v40[9]) = 0;
    *(a2 + v40[10]) = v50;
    *(a2 + v40[11]) = v36;
    v47 = a2 + v40[12];
    *v47 = 0;
    v47[8] = 1;
    v48 = (a2 + v40[14]);
    *v48 = sub_23EEC;
    v48[1] = v39;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

double sub_15798@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_B9E30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D460(v9);
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v10 = sub_3CB8(v6, qword_100DA8);
  sub_2090C(&qword_F9250, &type metadata accessor for DynamicTypeSize);
  v11 = sub_BAF80();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v12._object = 0x80000000000C4250;
    v12._countAndFlagsBits = 0xD000000000000011;
    v13 = LiveSpeechLocString(_:)(v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v15 = sub_BAAA0();
  sub_21104(v2, &countAndFlagsBits - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_21310(&countAndFlagsBits - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LiveSpeechHUDView_iOS);
  *a1 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for HUDButton(0);
  v19 = v18[13];
  *(a1 + v19) = sub_BA710();
  *(a1 + v18[15]) = 0x4020000000000000;
  *(a1 + v18[16]) = 0x4000000000000000;
  *(a1 + v18[17]) = 0x4040000000000000;
  *(a1 + v18[18]) = 0x402E000000000000;
  *(a1 + v18[19]) = 0x4024000000000000;
  (*(v7 + 16))(a1 + v18[20], v10, v6);
  result = 5.30583539e199;
  *(a1 + v18[5]) = xmmword_BE350;
  v21 = (a1 + v18[6]);
  *v21 = countAndFlagsBits;
  v21[1] = object;
  *(a1 + v18[7]) = 0;
  *(a1 + v18[8]) = 0;
  *(a1 + v18[9]) = 0;
  *(a1 + v18[10]) = v15;
  *(a1 + v18[11]) = 0;
  v22 = a1 + v18[12];
  *v22 = 0;
  v22[8] = 1;
  v23 = (a1 + v18[14]);
  *v23 = sub_23D10;
  v23[1] = v17;
  return result;
}

double sub_15B48@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v25 = a4;
  v7 = v4;
  v9 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = a1(v12);
  sub_21104(v7, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  sub_21310(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LiveSpeechHUDView_iOS);
  *a3 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for HUDButton(0);
  v17 = v16[13];
  *(a3 + v17) = sub_BA710();
  *(a3 + v16[15]) = 0x4020000000000000;
  *(a3 + v16[16]) = 0x4000000000000000;
  *(a3 + v16[17]) = 0x4040000000000000;
  *(a3 + v16[18]) = 0x402E000000000000;
  *(a3 + v16[19]) = 0x4024000000000000;
  v18 = v16[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v19 = sub_B9E30();
  v20 = sub_3CB8(v19, qword_100DA8);
  (*(*(v19 - 8) + 16))(a3 + v18, v20, v19);
  result = v25.n128_f64[0];
  *(a3 + v16[5]) = v25;
  v22 = (a3 + v16[6]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v16[7]) = 0;
  *(a3 + v16[8]) = 0;
  *(a3 + v16[9]) = 0;
  *(a3 + v16[10]) = v13;
  *(a3 + v16[11]) = 0;
  v23 = a3 + v16[12];
  *v23 = 0;
  v23[8] = 1;
  v24 = (a3 + v16[14]);
  *v24 = a2;
  v24[1] = v15;
  return result;
}

uint64_t sub_15DE0()
{
  v1 = v0;
  v2 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v6);
  v8 = (&v22._countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_BAAB0();
  sub_21104(v1, v5, type metadata accessor for LiveSpeechHUDView_iOS);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21310(v5, v11 + v10, type metadata accessor for LiveSpeechHUDView_iOS);
  *v8 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v12 = v6[13];
  *(v8 + v12) = sub_BA710();
  *(v8 + v6[15]) = 0x4020000000000000;
  *(v8 + v6[16]) = 0x4000000000000000;
  *(v8 + v6[17]) = 0x4040000000000000;
  *(v8 + v6[18]) = 0x402E000000000000;
  *(v8 + v6[19]) = 0x4024000000000000;
  v13 = v6[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v14 = sub_B9E30();
  v15 = sub_3CB8(v14, qword_100DA8);
  (*(*(v14 - 8) + 16))(v8 + v13, v15, v14);
  v16 = (v8 + v6[5]);
  *v16 = 0xD000000000000014;
  v16[1] = 0x80000000000C4270;
  v17 = (v8 + v6[6]);
  *v17 = 0;
  v17[1] = 0;
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 0;
  *(v8 + v6[10]) = v9;
  *(v8 + v6[11]) = 0;
  v18 = v8 + v6[12];
  *v18 = 0;
  v18[8] = 1;
  v19 = (v8 + v6[14]);
  *v19 = sub_23DE4;
  v19[1] = v11;
  v20._object = 0x80000000000C4290;
  v20._countAndFlagsBits = 0xD000000000000012;
  v22 = LiveSpeechLocString(_:)(v20);
  sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
  sub_B320();
  sub_BA900();

  return sub_23DFC(v8, type metadata accessor for HUDButton);
}

double sub_16178@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_21104(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21310(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LiveSpeechHUDView_iOS);
  *a1 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for HUDButton(0);
  v9 = v8[13];
  *(a1 + v9) = sub_BA710();
  *(a1 + v8[15]) = 0x4020000000000000;
  *(a1 + v8[16]) = 0x4000000000000000;
  *(a1 + v8[17]) = 0x4040000000000000;
  *(a1 + v8[18]) = 0x402E000000000000;
  *(a1 + v8[19]) = 0x4024000000000000;
  v10 = v8[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v11 = sub_B9E30();
  v12 = sub_3CB8(v11, qword_100DA8);
  (*(*(v11 - 8) + 16))(a1 + v10, v12, v11);
  *&result = 0x6B72616D78;
  *(a1 + v8[5]) = xmmword_BE360;
  v14 = (a1 + v8[6]);
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v8[7]) = 0;
  *(a1 + v8[8]) = 0;
  *(a1 + v8[9]) = 0;
  *(a1 + v8[10]) = 0;
  *(a1 + v8[11]) = 0;
  v15 = a1 + v8[12];
  *v15 = 0;
  v15[8] = 1;
  v16 = (a1 + v8[14]);
  *v16 = sub_23E5C;
  v16[1] = v7;
  return result;
}

uint64_t sub_163FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_BA320();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_2E50(&qword_F9268);
  return sub_18DC8(a1, a2 + *(v4 + 44));
}

uint64_t sub_16454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_BA320();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2E50(&qword_F9260);
  return sub_164AC(a1, a2 + *(v4 + 44));
}

uint64_t sub_164AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2E50(&qword_F9090);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_2E50(&qword_F9120);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  *v16 = sub_BA320();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_2E50(&qword_F9118);
  sub_16C48(a1, &v16[*(v17 + 44)]);
  v18 = sub_BA660();
  sub_B9B90();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = sub_BA320();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v24 = sub_2E50(&qword_F9268);
  sub_18DC8(a1, &v9[*(v24 + 44)]);
  sub_57A0(v16, v14, &qword_F9120);
  sub_57A0(v9, v7, &qword_F9090);
  sub_57A0(v14, a2, &qword_F9120);
  v25 = sub_2E50(&qword_F9270);
  sub_57A0(v7, a2 + *(v25 + 48), &qword_F9090);
  sub_C5E8(v9, &qword_F9090);
  sub_C5E8(v16, &qword_F9120);
  sub_C5E8(v7, &qword_F9090);
  return sub_C5E8(v14, &qword_F9120);
}

uint64_t sub_16728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_BA320();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2E50(&qword_F9118);
  sub_16C48(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_BA660();
  sub_B9B90();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_2E50(&qword_F9120);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_167DC()
{
  v1 = v0;
  v26 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B99C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_B95B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for AccessibilityFeatureFlags.LiveSpeechLanguageAwareness(_:), v11);
  v15 = sub_B95A0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = *(v1 + 24);
    if (!v16)
    {
      type metadata accessor for LiveSpeechStore(0);
      sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
      result = sub_B9FA0();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_B9B10();

    (*(v5 + 104))(v8, enum case for LiveSpeechInputMode.keyboard(_:), v4);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v29 == v27 && v30 == v28)
    {
      v18 = *(v5 + 8);
      v18(v8, v4);
      v18(v10, v4);

      goto LABEL_7;
    }

    v19 = sub_BB700();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);

    if (v19)
    {
LABEL_7:
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = v17;
      sub_B9B10();

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_23DFC(v3, type metadata accessor for LiveSpeechTextInputSupportedLocales);
      if (EnumCaseMultiPayload)
      {
        v23 = *(sub_B9360() + 16);

        return v23 > 1;
      }
    }
  }

  return 0;
}

uint64_t sub_16C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v75 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v76 = v4;
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_BA470();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2E50(&qword_F9128);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v68 - v6;
  v7 = sub_2E50(&qword_F9130);
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v72 = &v68 - v8;
  v9 = sub_B99C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v68 - v13;
  v14 = sub_2E50(&qword_F9138);
  v15 = __chkstk_darwin(v14 - 8);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v68 - v17;
  v18 = sub_2E50(&qword_F9140);
  __chkstk_darwin(v18 - 8);
  v20 = &v68 - v19;
  v21 = sub_2E50(&qword_F9148);
  v22 = __chkstk_darwin(v21);
  v81 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v68 - v25;
  __chkstk_darwin(v24);
  v80 = &v68 - v27;
  *v20 = sub_BA1C0();
  *(v20 + 1) = 0x4028000000000000;
  v20[16] = 0;
  v28 = &v20[*(sub_2E50(&qword_F9150) + 44)];
  v86 = a1;
  sub_177F8(a1, v28);
  sub_2E50(&qword_F8E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BE370;
  LOBYTE(a1) = sub_BA670();
  *(inited + 32) = a1;
  v30 = sub_BA690();
  *(inited + 33) = v30;
  v31 = sub_BA650();
  *(inited + 34) = v31;
  v32 = sub_BA680();
  sub_BA680();
  if (sub_BA680() != a1)
  {
    v32 = sub_BA680();
  }

  sub_BA680();
  if (sub_BA680() != v30)
  {
    v32 = sub_BA680();
  }

  v33 = v78;

  sub_BA680();
  if (sub_BA680() != v31)
  {
    v32 = sub_BA680();
  }

  v34 = v80;
  sub_B9B90();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_66B8(v20, v26, &qword_F9140);
  v43 = &v26[*(v21 + 36)];
  *v43 = v32;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_66B8(v26, v34, &qword_F9148);
  v44 = v86;
  v45 = *(v86 + 24);
  if (v45)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v45;
    v47 = v79;
    sub_B9B10();

    (*(v10 + 104))(v33, enum case for LiveSpeechInputMode.favoritePhrases(_:), v9);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v90 == v88 && v91 == v89)
    {
      v48 = *(v10 + 8);
      v48(v33, v9);
      v48(v47, v9);
    }

    else
    {
      v49 = sub_BB700();
      v50 = *(v10 + 8);
      v50(v33, v9);
      v50(v47, v9);

      if ((v49 & 1) == 0)
      {
        v62 = 1;
        v59 = v85;
        v61 = v82;
        goto LABEL_14;
      }
    }

    v51 = sub_BA620();
    __chkstk_darwin(v51);
    *(&v68 - 2) = v44;
    sub_2E50(&qword_F9160);
    sub_23358();
    v52 = v68;
    sub_B9BF0();
    v53 = v71;
    sub_BA460();
    sub_BA620();
    sub_D150(&qword_F9180, &qword_F9128);
    v54 = v72;
    v55 = v70;
    sub_BA970();
    (*(v73 + 8))(v53, v74);
    (*(v69 + 8))(v52, v55);
    v56 = v77;
    sub_21104(v44, v77, type metadata accessor for LiveSpeechHUDView_iOS);
    v57 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v58 = swift_allocObject();
    sub_21310(v56, v58 + v57, type metadata accessor for LiveSpeechHUDView_iOS);
    v59 = v85;
    v60 = (v54 + *(v85 + 36));
    *v60 = sub_23410;
    v60[1] = v58;
    v60[2] = 0;
    v60[3] = 0;
    v61 = v82;
    sub_66B8(v54, v82, &qword_F9130);
    v62 = 0;
LABEL_14:
    (*(v84 + 56))(v61, v62, 1, v59);
    v63 = v81;
    sub_57A0(v34, v81, &qword_F9148);
    v64 = v83;
    sub_57A0(v61, v83, &qword_F9138);
    v65 = v87;
    sub_57A0(v63, v87, &qword_F9148);
    v66 = sub_2E50(&qword_F9158);
    sub_57A0(v64, v65 + *(v66 + 48), &qword_F9138);
    sub_C5E8(v61, &qword_F9138);
    sub_C5E8(v34, &qword_F9148);
    sub_C5E8(v64, &qword_F9138);
    return sub_C5E8(v63, &qword_F9148);
  }

  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  result = sub_B9FA0();
  __break(1u);
  return result;
}

void sub_1774C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1;
    LiveSpeechStore.sortCategories()();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_177F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2E50(&qword_F91D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_2E50(&qword_F91D8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_17A28(&v20 - v14);
  *v9 = sub_BA1C0();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v16 = sub_2E50(&qword_F91E0);
  sub_17D74(a1, &v9[*(v16 + 44)]);
  sub_57A0(v15, v13, &qword_F91D8);
  sub_57A0(v9, v7, &qword_F91D0);
  sub_57A0(v13, a2, &qword_F91D8);
  v17 = sub_2E50(&qword_F91E8);
  v18 = a2 + *(v17 + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_57A0(v7, a2 + *(v17 + 64), &qword_F91D0);
  sub_C5E8(v9, &qword_F91D0);
  sub_C5E8(v15, &qword_F91D8);
  sub_C5E8(v7, &qword_F91D0);
  return sub_C5E8(v13, &qword_F91D8);
}

uint64_t sub_17A28@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v2);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2E50(&qword_F9258);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_2E50(&qword_F8A50);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = *(v1 + 24);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_B9B10();

    if (v15)
    {
      sub_1BE0C(v10);
      sub_57A0(v10, v7, &qword_F8A50);
      swift_storeEnumTagMultiPayload();
      sub_23AC4();
      sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
      sub_BA430();
      return sub_C5E8(v10, &qword_F8A50);
    }

    else
    {
      sub_1509C(1, v4);
      sub_21104(v4, v7, type metadata accessor for HUDButton);
      swift_storeEnumTagMultiPayload();
      sub_23AC4();
      sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
      sub_BA430();
      return sub_23DFC(v4, type metadata accessor for HUDButton);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_17D74(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v84 = sub_2E50(&qword_F8A50);
  __chkstk_darwin(v84);
  v71 = v70 - v3;
  v4 = sub_B99C0();
  v73 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v75 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = v70 - v7;
  v8 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v8 - 8);
  v76 = v70 - v9;
  v80 = sub_2E50(&qword_F91F8);
  __chkstk_darwin(v80);
  v77 = v70 - v10;
  v81 = sub_2E50(&qword_F9200);
  __chkstk_darwin(v81);
  v83 = v70 - v11;
  v12 = sub_2E50(&qword_F9208);
  __chkstk_darwin(v12);
  v14 = v70 - v13;
  v82 = sub_2E50(&qword_F9210);
  __chkstk_darwin(v82);
  v16 = v70 - v15;
  v79 = type metadata accessor for HUDButton(0);
  v17 = __chkstk_darwin(v79);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = (v70 - v24);
  __chkstk_darwin(v23);
  v90 = (v70 - v26);
  v27 = sub_2E50(&qword_F9218);
  v28 = __chkstk_darwin(v27 - 8);
  v87 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v91 = v70 - v30;
  v31 = sub_167DC();
  v89 = v25;
  v74 = v4;
  if (v31)
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    v85 = sub_B9FB0();
    v86 = v32;
    v33 = v85;
  }

  else
  {
    v85 = &dword_0 + 1;
    v86 = 0;
  }

  v34 = *(a1 + 24);
  if (v34)
  {
    v78 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v34;
    sub_B9B10();

    if (v94 == 2)
    {

LABEL_8:
      v37 = v90;
      sub_15B48(&static Color.red.getter, sub_23BB0, v90, xmmword_BE340);
      sub_21104(v37, v14, type metadata accessor for HUDButton);
      swift_storeEnumTagMultiPayload();
      sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
      sub_D150(&qword_F9238, &qword_F91F8);
      sub_BA430();
      sub_57A0(v16, v83, &qword_F9210);
      swift_storeEnumTagMultiPayload();
      sub_239DC();
      sub_23AC4();
      v38 = v91;
      sub_BA430();
      sub_C5E8(v16, &qword_F9210);
      sub_23DFC(v37, type metadata accessor for HUDButton);
LABEL_9:
      v39 = 0;
LABEL_10:
      v40 = v89;
LABEL_18:
      v48 = sub_2E50(&qword_F9220);
      (*(*(v48 - 8) + 56))(v38, v39, 1, v48);
      sub_16178(v37);
      v49 = v87;
      sub_57A0(v38, v87, &qword_F9218);
      sub_21104(v37, v40, type metadata accessor for HUDButton);
      v50 = v37;
      v51 = v88;
      v52 = v85;
      v53 = v86;
      *v88 = v85;
      v51[1] = v53;
      v54 = v40;
      v55 = sub_2E50(&qword_F9228);
      sub_57A0(v49, v51 + *(v55 + 48), &qword_F9218);
      sub_21104(v54, v51 + *(v55 + 64), type metadata accessor for HUDButton);
      sub_239B4(v52);
      sub_239C4(v52);
      sub_23DFC(v50, type metadata accessor for HUDButton);
      sub_C5E8(v91, &qword_F9218);
      sub_23DFC(v54, type metadata accessor for HUDButton);
      sub_C5E8(v49, &qword_F9218);
      sub_239C4(v52);
      return;
    }

    v36 = sub_BB700();

    if (v36)
    {
      goto LABEL_8;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v35;
    sub_B9B10();

    if (v94 > 2u)
    {
    }

    else
    {
      v42 = sub_BB700();

      if ((v42 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v43 = v41;
        sub_B9B10();

        if (v94 > 1u)
        {
          v37 = v90;
          v38 = v91;
        }

        else
        {
          v37 = v90;
          v38 = v91;
          if (!v94)
          {

LABEL_21:
            swift_getKeyPath();
            swift_getKeyPath();
            v57 = v43;
            v58 = v76;
            sub_B9B10();

            SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
            v39 = 1;
            v60 = (*(*(SpokenContext - 8) + 48))(v58, 1, SpokenContext);
            sub_C5E8(v58, &qword_F91F0);
            v40 = v89;
            if (v60 == 1)
            {
              goto LABEL_18;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v61 = v57;
            sub_B9B10();

            if (v94)
            {
              v39 = 1;
              goto LABEL_18;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v62 = v61;
            v63 = v72;
            sub_B9B10();

            v64 = v73;
            v65 = v74;
            (*(v73 + 104))(v75, enum case for LiveSpeechInputMode.keyboard(_:), v74);
            sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
            sub_BB0C0();
            sub_BB0C0();
            if (v94 == v92 && v95 == v93)
            {
              v66 = *(v64 + 8);
              v66(v75, v65);
              v66(v63, v65);

LABEL_28:
              v69 = v71;
              sub_15DE0();
              sub_57A0(v69, v83, &qword_F8A50);
              swift_storeEnumTagMultiPayload();
              sub_239DC();
              sub_23AC4();
              sub_BA430();
              sub_C5E8(v69, &qword_F8A50);
              goto LABEL_9;
            }

            v67 = sub_BB700();
            v68 = *(v64 + 8);
            v68(v75, v65);
            v68(v63, v65);

            if (v67)
            {
              goto LABEL_28;
            }

LABEL_29:
            v39 = 1;
            goto LABEL_10;
          }
        }

        v56 = sub_BB700();

        if ((v56 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    v44 = v90;
    v70[1] = a1;
    sub_15798(v90);
    v45 = v89;
    sub_15B48(&static Color.blue.getter, sub_23CF8, v89, xmmword_BE330);
    sub_21104(v44, v22, type metadata accessor for HUDButton);
    sub_21104(v45, v19, type metadata accessor for HUDButton);
    v46 = v77;
    sub_21104(v22, v77, type metadata accessor for HUDButton);
    v47 = sub_2E50(&qword_F9248);
    sub_21104(v19, v46 + *(v47 + 48), type metadata accessor for HUDButton);
    sub_23DFC(v19, type metadata accessor for HUDButton);
    sub_23DFC(v22, type metadata accessor for HUDButton);
    sub_57A0(v46, v14, &qword_F91F8);
    swift_storeEnumTagMultiPayload();
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F9238, &qword_F91F8);
    sub_BA430();
    sub_57A0(v16, v83, &qword_F9210);
    swift_storeEnumTagMultiPayload();
    sub_239DC();
    sub_23AC4();
    v38 = v91;
    sub_BA430();
    v40 = v45;
    sub_C5E8(v16, &qword_F9210);
    v37 = v90;
    sub_C5E8(v46, &qword_F91F8);
    sub_23DFC(v45, type metadata accessor for HUDButton);
    sub_23DFC(v37, type metadata accessor for HUDButton);
    v39 = 0;
    goto LABEL_18;
  }

  type metadata accessor for LiveSpeechStore(0);
  sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
  sub_B9FA0();
  __break(1u);
}

uint64_t sub_18DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_2E50(&qword_F9278);
  __chkstk_darwin(v3 - 8);
  v61 = (&v60 - v4);
  v60 = sub_2E50(&qword_F9280);
  __chkstk_darwin(v60);
  v6 = &v60 - v5;
  v7 = sub_2E50(&qword_F9288);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v68 = sub_2E50(&qword_F9290);
  v10 = __chkstk_darwin(v68);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v60 - v12;
  v70 = sub_2E50(&qword_F9298);
  __chkstk_darwin(v70);
  v71 = &v60 - v13;
  v64 = sub_2E50(&qword_F92A0);
  __chkstk_darwin(v64);
  v66 = &v60 - v14;
  v69 = sub_2E50(&qword_F92A8);
  __chkstk_darwin(v69);
  v67 = &v60 - v15;
  v65 = sub_2E50(&qword_F92B0);
  __chkstk_darwin(v65);
  v17 = &v60 - v16;
  v18 = sub_B99C0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v22;
    sub_B9B10();

    v24 = (*(v19 + 88))(v21, v18);
    if (v24 == enum case for LiveSpeechInputMode.keyboard(_:))
    {
      *v9 = sub_BA320();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v25 = v61;
      sub_197B0(a1, v61);
      sub_2E50(&qword_F8E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_BDB40;
      v27 = sub_BA670();
      *(inited + 32) = v27;
      v28 = sub_BA690();
      *(inited + 33) = v28;
      v29 = sub_BA680();
      sub_BA680();
      if (sub_BA680() != v27)
      {
        v29 = sub_BA680();
      }

      sub_BA680();
      if (sub_BA680() != v28)
      {
        v29 = sub_BA680();
      }

      v30 = *(sub_2E50(&qword_F92D8) + 44);
      sub_B9B90();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      sub_66B8(v25, v6, &qword_F9278);
      v39 = &v6[*(v60 + 36)];
      *v39 = v29;
      *(v39 + 1) = v32;
      *(v39 + 2) = v34;
      *(v39 + 3) = v36;
      *(v39 + 4) = v38;
      v39[40] = 0;
      sub_66B8(v6, &v9[v30], &qword_F9280);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_BE370;
      v41 = sub_BA670();
      *(v40 + 32) = v41;
      v42 = sub_BA690();
      *(v40 + 33) = v42;
      v43 = sub_BA660();
      *(v40 + 34) = v43;
      v44 = sub_BA680();
      sub_BA680();
      if (sub_BA680() != v41)
      {
        v44 = sub_BA680();
      }

      sub_BA680();
      if (sub_BA680() != v42)
      {
        v44 = sub_BA680();
      }

      sub_BA680();
      if (sub_BA680() != v43)
      {
        v44 = sub_BA680();
      }

      sub_B9B90();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v62;
      sub_66B8(v9, v62, &qword_F9288);
      v54 = v53 + *(v68 + 36);
      *v54 = v44;
      *(v54 + 8) = v46;
      *(v54 + 16) = v48;
      *(v54 + 24) = v50;
      *(v54 + 32) = v52;
      *(v54 + 40) = 0;
      v55 = v63;
      sub_66B8(v53, v63, &qword_F9290);
      sub_57A0(v55, v66, &qword_F9290);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F92C0, &qword_F92B0);
      sub_23FBC();
      v56 = v67;
      sub_BA430();
      sub_57A0(v56, v71, &qword_F92A8);
      swift_storeEnumTagMultiPayload();
      sub_23F04();
      sub_BA430();
      sub_C5E8(v56, &qword_F92A8);
      return sub_C5E8(v55, &qword_F9290);
    }

    else if (v24 == enum case for LiveSpeechInputMode.favoritePhrases(_:))
    {
      *v17 = sub_BA320();
      *(v17 + 1) = 0;
      v17[16] = 1;
      v58 = sub_2E50(&qword_F92E0);
      sub_A160(&v17[*(v58 + 44)]);
      sub_57A0(v17, v66, &qword_F92B0);
      swift_storeEnumTagMultiPayload();
      sub_D150(&qword_F92C0, &qword_F92B0);
      sub_23FBC();
      v59 = v67;
      sub_BA430();
      sub_57A0(v59, v71, &qword_F92A8);
      swift_storeEnumTagMultiPayload();
      sub_23F04();
      sub_BA430();
      sub_C5E8(v59, &qword_F92A8);
      return sub_C5E8(v17, &qword_F92B0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_23F04();
      sub_BA430();
      return (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_197B0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2E50(&qword_F92E8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = a1[3];
  if (v10)
  {
    v22[1] = a1;
    v11 = v10;
    v12 = LiveSpeechStore.shouldShowSecondarySpeechPlaybackView.getter();

    if (v12)
    {
      type metadata accessor for LiveSpeechStore(0);
      sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
      v13 = sub_B9FB0();
      v15 = v14;
      KeyPath = swift_getKeyPath();
      v22[0] = v11;
      v17 = sub_B9A90();
      v18 = v13;

      v19 = v22[0];
      v20 = 256;
    }

    else
    {
      v13 = 0;
      v15 = 0;
      KeyPath = 0;
      v20 = 0;
      v17 = 0;
      v10 = 0;
    }

    sub_13644(v9);
    sub_57A0(v9, v7, &qword_F92E8);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = KeyPath;
    a2[3] = v20;
    a2[4] = v17;
    a2[5] = v10;
    v21 = sub_2E50(&qword_F92F0);
    sub_57A0(v7, a2 + *(v21 + 48), &qword_F92E8);
    sub_24074(v13, v15, KeyPath, v20, v17, v10);
    sub_240E4(v13, v15, KeyPath, v20, v17, v10);
    sub_C5E8(v9, &qword_F92E8);
    sub_C5E8(v7, &qword_F92E8);
    sub_240E4(v13, v15, KeyPath, v20, v17, v10);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_19A8C(uint64_t a1)
{
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 24);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_B9B10();

    (*(v3 + 104))(v6, enum case for LiveSpeechInputMode.keyboard(_:), v2);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v17 == v20 && v18 == v21)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_BB700();
    }

    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v8, v2);

    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    LOBYTE(v17) = *a1;
    v18 = v13;
    v19 = v14;
    LOBYTE(v20) = v11 & 1;
    sub_2E50(&qword_F8A48);
    return sub_B9BA0();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_19D58@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a3;
  v4 = sub_2E50(&qword_F9390);
  v5 = __chkstk_darwin(v4 - 8);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v61 - v7;
  v71 = sub_2E50(&qword_F8A50);
  __chkstk_darwin(v71);
  v62 = (&v61 - v8);
  v9 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v9 - 8);
  v63 = &v61 - v10;
  v67 = sub_2E50(&qword_F91F8);
  __chkstk_darwin(v67);
  v65 = &v61 - v11;
  v68 = sub_2E50(&qword_F9200);
  __chkstk_darwin(v68);
  v70 = &v61 - v12;
  v66 = sub_2E50(&qword_F9208);
  __chkstk_darwin(v66);
  v14 = &v61 - v13;
  v69 = sub_2E50(&qword_F9210);
  __chkstk_darwin(v69);
  v16 = &v61 - v15;
  v17 = type metadata accessor for HUDButton(0);
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = __chkstk_darwin(v17);
  v64 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v61 - v21;
  v23 = __chkstk_darwin(v20);
  v78 = (&v61 - v24);
  __chkstk_darwin(v23);
  v26 = (&v61 - v25);
  v27 = sub_2E50(&qword_F9218);
  v28 = __chkstk_darwin(v27 - 8);
  v74 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v61 - v30;
  v80 = a1;
  v32 = *(a1 + 24);
  if (!v32)
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v32;
  sub_B9B10();

  if (v83 == 2)
  {

LABEL_5:
    sub_15B48(&static Color.red.getter, sub_23BB0, v26, xmmword_BE340);
    sub_21104(v26, v14, type metadata accessor for HUDButton);
    swift_storeEnumTagMultiPayload();
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F9238, &qword_F91F8);
    v35 = v73;
    sub_BA430();
    sub_57A0(v16, v70, &qword_F9210);
    swift_storeEnumTagMultiPayload();
    sub_239DC();
    sub_23AC4();
    sub_BA430();
    sub_C5E8(v16, &qword_F9210);
    v36 = v26;
LABEL_13:
    sub_23DFC(v36, type metadata accessor for HUDButton);
    goto LABEL_14;
  }

  v34 = sub_BB700();

  if (v34)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v33;
  sub_B9B10();

  if (v82 > 2u)
  {

    goto LABEL_12;
  }

  v38 = sub_BB700();

  if (v38)
  {
LABEL_12:
    sub_15798(v26);
    v62 = v26;
    v63 = v31;
    v40 = v78;
    sub_15B48(&static Color.blue.getter, sub_23CF8, v78, xmmword_BE330);
    sub_21104(v62, v22, type metadata accessor for HUDButton);
    v41 = v64;
    sub_21104(v40, v64, type metadata accessor for HUDButton);
    v42 = v65;
    sub_21104(v22, v65, type metadata accessor for HUDButton);
    v43 = sub_2E50(&qword_F9248);
    sub_21104(v41, v42 + *(v43 + 48), type metadata accessor for HUDButton);
    sub_23DFC(v41, type metadata accessor for HUDButton);
    sub_23DFC(v22, type metadata accessor for HUDButton);
    sub_57A0(v42, v14, &qword_F91F8);
    swift_storeEnumTagMultiPayload();
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F9238, &qword_F91F8);
    v35 = v73;
    sub_BA430();
    sub_57A0(v16, v70, &qword_F9210);
    swift_storeEnumTagMultiPayload();
    sub_239DC();
    sub_23AC4();
    sub_BA430();
    sub_C5E8(v16, &qword_F9210);
    sub_C5E8(v42, &qword_F91F8);
    v26 = v62;
    v31 = v63;
    sub_23DFC(v78, type metadata accessor for HUDButton);
    v36 = v26;
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v37;
  sub_B9B10();

  if (v81 > 1u)
  {
    v35 = v73;
LABEL_19:
    v55 = sub_BB700();

    if ((v55 & 1) == 0)
    {
      v44 = 1;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v35 = v73;
  if (v81)
  {
    goto LABEL_19;
  }

LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v39;
  v57 = v63;
  sub_B9B10();

  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  v44 = 1;
  v59 = (*(*(SpokenContext - 8) + 48))(v57, 1, SpokenContext);
  sub_C5E8(v57, &qword_F91F0);
  if (v59 == 1)
  {
    goto LABEL_15;
  }

  v60 = v62;
  sub_15DE0();
  sub_57A0(v60, v70, &qword_F8A50);
  swift_storeEnumTagMultiPayload();
  sub_239DC();
  sub_23AC4();
  sub_BA430();
  sub_C5E8(v60, &qword_F8A50);
LABEL_14:
  v44 = 0;
LABEL_15:
  v45 = sub_2E50(&qword_F9220);
  v46 = 1;
  (*(*(v45 - 8) + 56))(v31, v44, 1, v45);
  if (v75)
  {
    sub_1509C(0, v26);
    sub_21310(v26, v79, type metadata accessor for HUDButton);
    v46 = 0;
  }

  v47 = v79;
  (*(v72 + 56))(v79, v46, 1, v35);
  sub_16178(v26);
  v48 = v74;
  sub_57A0(v31, v74, &qword_F9218);
  v49 = v77;
  sub_57A0(v47, v77, &qword_F9390);
  v50 = v31;
  v51 = v78;
  sub_21104(v26, v78, type metadata accessor for HUDButton);
  v52 = v76;
  sub_57A0(v48, v76, &qword_F9218);
  v53 = sub_2E50(&qword_F9398);
  sub_57A0(v49, v52 + *(v53 + 48), &qword_F9390);
  sub_21104(v51, v52 + *(v53 + 64), type metadata accessor for HUDButton);
  sub_23DFC(v26, type metadata accessor for HUDButton);
  sub_C5E8(v47, &qword_F9390);
  sub_C5E8(v50, &qword_F9218);
  sub_23DFC(v51, type metadata accessor for HUDButton);
  sub_C5E8(v49, &qword_F9390);
  return sub_C5E8(v48, &qword_F9218);
}

uint64_t sub_1ABA8(uint64_t a1)
{
  v2 = sub_2E50(&qword_F8388);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_B91B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B99C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (AXDeviceSupportsLiveSpeechCategory())
  {
    return sub_1B0C4();
  }

  v36 = v8;
  v37 = v4;
  v38 = v6;
  v39 = v5;
  v16 = *(a1 + 24);
  if (!v16)
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_B9B10();

  (*(v10 + 104))(v13, enum case for LiveSpeechInputMode.keyboard(_:), v9);
  sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v42 == v40 && v43 == v41)
  {
    v18 = *(v10 + 8);
    v18(v13, v9);
    v18(v15, v9);
  }

  else
  {
    v19 = sub_BB700();
    v20 = *(v10 + 8);
    v20(v13, v9);
    v20(v15, v9);

    if ((v19 & 1) == 0)
    {
      return sub_1B0C4();
    }
  }

  sub_B9980();
  v21 = v17;
  v22 = sub_B9950();
  v23 = sub_B9940();

  v24 = *(v23 + 16);

  if (v24)
  {
    return sub_1B0C4();
  }

  v26 = v37;
  sub_B91A0();
  v28 = v38;
  v27 = v39;
  if ((*(v38 + 48))(v26, 1, v39) == 1)
  {
    return sub_C5E8(v26, &qword_F8388);
  }

  v29 = v36;
  (*(v28 + 32))(v36, v26, v27);
  v30 = [objc_opt_self() defaultWorkspace];
  if (v30)
  {
    v32 = v30;
    sub_B9180(v31);
    v34 = v33;
    sub_482C(&_swiftEmptyArrayStorage);
    isa = sub_BAF30().super.isa;

    [v32 openSensitiveURL:v34 withOptions:isa];
  }

  return (*(v28 + 8))(v29, v27);
}

uint64_t sub_1B0C4()
{
  v1 = v0;
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  sub_1B410();
  v9 = *(v0 + 24);
  if (v9)
  {
    v10 = v9;
    v11 = sub_BAE20();
    __chkstk_darwin(v11);
    *(&v18 - 2) = v10;
    sub_B9D80();

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v10;
    sub_B9B10();

    (*(v3 + 104))(v6, enum case for LiveSpeechInputMode.keyboard(_:), v2);
    sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v18 == v21 && v19 == v22)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_BB700();
    }

    v14 = *(v3 + 8);
    v14(v6, v2);
    v14(v8, v2);

    v15 = *(v1 + 8);
    v16 = *(v1 + 16);
    LOBYTE(v18) = *v1;
    v19 = v15;
    v20 = v16;
    LOBYTE(v21) = v13 & 1;
    sub_2E50(&qword_F8A48);
    return sub_B9BA0();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_1B410()
{
  v1 = sub_B99C0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *(v0 + 24);
  if (!v8)
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  sub_B9B10();

  (*(v2 + 104))(v5, enum case for LiveSpeechInputMode.favoritePhrases(_:), v1);
  sub_2090C(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v17 == v16[0] && v18 == v16[1])
  {
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
  }

  else
  {
    v11 = sub_BB700();
    v12 = *(v2 + 8);
    v12(v5, v1);
    v12(v7, v1);

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v9;
  sub_B9B10();

  if (v17 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = 0;
    v18 = 0xE000000000000000;
    v14 = v13;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v17) = 0;
    v15 = v14;
    sub_B9B20();
  }
}

void sub_1B7A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_71730();
    [v3 continueSpeaking];
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_1B864(uint64_t a1)
{
  v2 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  v6 = *(SpokenContext - 8);
  __chkstk_darwin(SpokenContext);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_B9B10();

    if ((*(v6 + 48))(v4, 1, SpokenContext) == 1)
    {
      return sub_C5E8(v4, &qword_F91F0);
    }

    else
    {
      sub_21310(v4, v8, type metadata accessor for LiveSpeechStore.LastSpokenContext);
      v12 = v10;
      LiveSpeechStore.replaySpeech(_:)(v8);

      return sub_23DFC(v8, type metadata accessor for LiveSpeechStore.LastSpokenContext);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_1BAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = sub_BB1A0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_BB170();
    v10 = v8;
    v11 = sub_BB160();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_6A2B8(0, 0, v7, a3, v12);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_1BC30(uint64_t a1)
{
  v2 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v13[8] = *a1;
  v14 = v5;
  v15 = v6;
  v13[7] = 0;
  sub_2E50(&qword_F8A48);
  sub_B9BA0();
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = sub_BB1A0();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_BB170();
    v9 = v7;
    v10 = sub_BB160();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_6A2B8(0, 0, v4, &unk_BEC80, v11);

    return _AXSLiveSpeechSetEnabled();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v6);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9._object = 0x80000000000C42B0;
  v9._countAndFlagsBits = 0xD000000000000012;
  v10 = LiveSpeechLocString(_:)(v9);
  v11 = sub_BAAB0();
  sub_21104(v2, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_21310(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LiveSpeechHUDView_iOS);
  *v8 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v14 = v6[13];
  *(v8 + v14) = sub_BA710();
  *(v8 + v6[15]) = 0x4020000000000000;
  *(v8 + v6[16]) = 0x4000000000000000;
  *(v8 + v6[17]) = 0x4040000000000000;
  *(v8 + v6[18]) = 0x402E000000000000;
  *(v8 + v6[19]) = 0x4024000000000000;
  v15 = v6[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v16 = sub_B9E30();
  v17 = sub_3CB8(v16, qword_100DA8);
  (*(*(v16 - 8) + 16))(v8 + v15, v17, v16);
  v18 = (v8 + v6[5]);
  *v18 = 0;
  v18[1] = 0;
  *(v8 + v6[6]) = v10;
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 0;
  *(v8 + v6[10]) = v11;
  *(v8 + v6[11]) = 0;
  v19 = v8 + v6[12];
  *v19 = 0;
  v19[8] = 1;
  v20 = (v8 + v6[14]);
  *v20 = sub_23EBC;
  v20[1] = v13;
  v21._object = 0x80000000000C42B0;
  v21._countAndFlagsBits = 0xD000000000000012;
  v24 = LiveSpeechLocString(_:)(v21);
  sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
  sub_B320();
  sub_BA900();

  return sub_23DFC(v8, type metadata accessor for HUDButton);
}

uint64_t sub_1C1A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    return sub_B9B20();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C338()
{
  v1 = v0;
  v2 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v5);
  v7 = (&v20._countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8._object = 0x80000000000C41D0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v9 = LiveSpeechLocString(_:)(v8);
  sub_21104(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21310(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LiveSpeechHUDView_iOS);
  *v7 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v12 = v5[13];
  *(v7 + v12) = sub_BA710();
  *(v7 + v5[15]) = 0x4020000000000000;
  *(v7 + v5[16]) = 0x4000000000000000;
  *(v7 + v5[17]) = 0x4040000000000000;
  *(v7 + v5[18]) = 0x402E000000000000;
  *(v7 + v5[19]) = 0x4024000000000000;
  v13 = v5[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v14 = sub_B9E30();
  v15 = sub_3CB8(v14, qword_100DA8);
  (*(*(v14 - 8) + 16))(v7 + v13, v15, v14);
  *(v7 + v5[5]) = xmmword_BDB60;
  *(v7 + v5[6]) = v9;
  *(v7 + v5[7]) = 1;
  *(v7 + v5[8]) = 0;
  *(v7 + v5[9]) = 0;
  *(v7 + v5[10]) = 0;
  *(v7 + v5[11]) = 0;
  v16 = v7 + v5[12];
  *v16 = 0;
  v16[8] = 1;
  v17 = (v7 + v5[14]);
  *v17 = sub_23604;
  v17[1] = v11;
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x80000000000C41F0;
  v20 = LiveSpeechLocString(_:)(v18);
  sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
  sub_B320();
  sub_BA900();

  return sub_23DFC(v7, type metadata accessor for HUDButton);
}

uint64_t sub_1C6E0(uint64_t a1)
{
  v2 = sub_2E50(&qword_F8388);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-v3];
  v5 = sub_B91B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-v10];
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v26[8] = *a1;
  v27 = v12;
  v28 = v13;
  v26[7] = 0;
  sub_2E50(&qword_F8A48);
  sub_B9BA0();
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = sub_BB1A0();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_BB170();
    v16 = v14;
    v17 = sub_BB160();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    sub_6A2B8(0, 0, v11, &unk_BE120, v18);

    _AXSLiveSpeechSetEnabled();
    sub_B91A0();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_C5E8(v4, &qword_F8388);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v20 = [objc_opt_self() defaultWorkspace];
      if (v20)
      {
        v22 = v20;
        sub_B9180(v21);
        v24 = v23;
        sub_482C(&_swiftEmptyArrayStorage);
        isa = sub_BAF30().super.isa;

        [v22 openSensitiveURL:v24 withOptions:isa];
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2E50(&qword_F9178);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  *v6 = sub_BA1C0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_2E50(&qword_F9188);
  sub_1CC90(a1, &v6[*(v7 + 44)]);
  sub_2E50(&qword_F8E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BDB40;
  v9 = sub_BA670();
  *(inited + 32) = v9;
  v10 = sub_BA690();
  *(inited + 33) = v10;
  v11 = sub_BA680();
  sub_BA680();
  if (sub_BA680() != v9)
  {
    v11 = sub_BA680();
  }

  sub_BA680();
  if (sub_BA680() != v10)
  {
    v11 = sub_BA680();
  }

  sub_B9B90();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_66B8(v6, a2, &qword_F9178);
  result = sub_2E50(&qword_F9160);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_1CC90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_2E50(&qword_F8A50);
  v4 = __chkstk_darwin(v3 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v31 = sub_2E50(&qword_F9190);
  v11 = *(v31 - 8);
  v12 = __chkstk_darwin(v31);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = v17;
    v19 = LiveSpeechStore.categoryOptions.getter();

    v34 = v19;
    sub_21104(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    sub_21310(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for LiveSpeechHUDView_iOS);
    sub_2E50(&unk_FA5D0);
    sub_2E50(&qword_F9198);
    sub_D150(&qword_F91A0, &unk_FA5D0);
    sub_2351C();
    sub_2090C(&qword_F91C0, &type metadata accessor for LiveSpeechCategory);
    sub_BACE0();
    sub_1C338();
    v22 = v11;
    v23 = *(v11 + 16);
    v24 = v31;
    v23(v14, v16, v31);
    v25 = v33;
    sub_57A0(v7, v33, &qword_F8A50);
    v26 = v7;
    v27 = v32;
    v23(v32, v14, v24);
    v28 = sub_2E50(&qword_F91C8);
    sub_57A0(v25, &v27[*(v28 + 48)], &qword_F8A50);
    sub_C5E8(v26, &qword_F8A50);
    v29 = *(v22 + 8);
    v29(v16, v24);
    sub_C5E8(v25, &qword_F8A50);
    return (v29)(v14, v24);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D128@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = [*a1 symbol];
  v13 = sub_BAFD0();
  v71 = v14;
  v72 = v13;

  v15 = [v11 localizedName];
  v16 = sub_BAFD0();
  v68 = v17;
  v69 = v16;

  v67 = a2;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v18;
    v20 = LiveSpeechStore.selectedCategory.getter();
    v70 = v19;

    v21 = [v20 categoryID];
    v22 = sub_BAFD0();
    v24 = v23;

    v25 = [v11 categoryID];
    v26 = sub_BAFD0();
    v28 = v27;

    if (v22 == v26 && v24 == v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_BB700();
    }

    v31 = v66;
    v30 = v67;

    sub_21104(v30, &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechHUDView_iOS);
    v32 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v33 = (v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_21310(v7, v34 + v32, type metadata accessor for LiveSpeechHUDView_iOS);
    *(v34 + v33) = v11;
    *v10 = swift_getKeyPath();
    sub_2E50(&qword_F8398);
    swift_storeEnumTagMultiPayload();
    v35 = v8[13];
    v36 = v11;
    *(v10 + v35) = sub_BA710();
    *(v10 + v8[15]) = 0x4020000000000000;
    *(v10 + v8[16]) = 0x4000000000000000;
    *(v10 + v8[17]) = 0x4040000000000000;
    *(v10 + v8[18]) = 0x402E000000000000;
    *(v10 + v8[19]) = 0x4024000000000000;
    v37 = v8[20];
    if (qword_F8378 != -1)
    {
      swift_once();
    }

    v38 = sub_B9E30();
    v39 = sub_3CB8(v38, qword_100DA8);
    (*(*(v38 - 8) + 16))(v10 + v37, v39, v38);
    v40 = (v10 + v8[5]);
    v41 = v71;
    *v40 = v72;
    v40[1] = v41;
    v42 = (v10 + v8[6]);
    v43 = v68;
    *v42 = v69;
    v42[1] = v43;
    *(v10 + v8[7]) = 1;
    *(v10 + v8[8]) = 0;
    *(v10 + v8[9]) = v29 & 1;
    *(v10 + v8[10]) = 0;
    *(v10 + v8[11]) = 0;
    v44 = v10 + v8[12];
    *v44 = 0;
    v44[8] = 1;
    v45 = (v10 + v8[14]);
    *v45 = sub_23898;
    v45[1] = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v70;
    sub_B9B10();

    v47 = 0;
    if (v74)
    {
      v48 = v46;
      v49 = LiveSpeechStore.selectedCategory.getter();

      v50 = [v49 categoryID];
      v51 = sub_BAFD0();
      v53 = v52;

      v54 = [v36 categoryID];
      v55 = sub_BAFD0();
      v57 = v56;

      if (v51 == v55 && v53 == v57)
      {

        v47 = 0;
      }

      else
      {
        v58 = sub_BB700();

        v47 = v58 ^ 1;
      }
    }

    KeyPath = swift_getKeyPath();
    v60 = swift_allocObject();
    *(v60 + 16) = v47 & 1;
    v61 = v10;
    v62 = v73;
    sub_21310(v61, v73, type metadata accessor for HUDButton);
    result = sub_2E50(&qword_F9198);
    v64 = (v62 + *(result + 36));
    *v64 = KeyPath;
    v64[1] = sub_2398C;
    v64[2] = v60;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D750(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    v5 = a2;
    return sub_B9B20();
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_2090C(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BA180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E50(&qword_F8398);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_57A0(v2, &v14 - v9, &qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B9E30();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_BB310();
    v13 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1DA2C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_B9F40();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v58 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BA2D0();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2E50(&qword_F8D80);
  __chkstk_darwin(v62);
  v7 = &v46 - v6;
  v8 = type metadata accessor for HUDButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v63 = sub_2E50(&qword_F8D88);
  __chkstk_darwin(v63);
  v12 = &v46 - v11;
  v13 = sub_2E50(&qword_F8D90);
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_2E50(&qword_F8D98);
  __chkstk_darwin(v16 - 8);
  v52 = &v46 - v17;
  v55 = sub_2E50(&qword_F8DA0);
  __chkstk_darwin(v55);
  v51 = &v46 - v18;
  sub_21104(v1, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HUDButton);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_21310(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for HUDButton);
  v64 = v1;
  sub_2E50(&qword_F8DA8);
  sub_D150(&qword_F8DB0, &qword_F8DA8);
  sub_BAC20();
  v48 = v8;
  v21 = *(v8 + 52);
  v50 = v1;
  v22 = *(v1 + v21);
  v23 = v63;
  KeyPath = swift_getKeyPath();
  v25 = &v12[*(v23 + 36)];
  *v25 = KeyPath;
  v25[1] = v22;
  v26 = enum case for DynamicTypeSize.xxxLarge(_:);
  v27 = sub_B9E30();
  (*(*(v27 - 8) + 104))(v7, v26, v27);
  sub_2090C(&qword_F8DB8, &type metadata accessor for DynamicTypeSize);

  result = sub_BAF90();
  if (result)
  {
    v29 = sub_214B4();
    v30 = sub_D150(&qword_F8DD8, &qword_F8D80);
    v47 = v15;
    sub_BA8D0();
    sub_C5E8(v7, &qword_F8D80);
    sub_C5E8(v12, &qword_F8D88);
    v31 = *(v50 + *(v48 + 36));
    if (v31 == 1)
    {
      sub_2E50(&qword_F8E08);
      v32 = v49;
      v33 = v56;
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_BDB40;
      sub_BA2C0();
      sub_BA280();
      v65 = v34;
      sub_2090C(&qword_F8E10, &type metadata accessor for AccessibilityTraits);
      sub_2E50(&qword_F8E18);
      sub_D150(&qword_F8E20, &qword_F8E18);
      v35 = v57;
      sub_BB510();
    }

    else
    {
      v32 = v49;
      sub_BA2C0();
      v33 = v56;
      v35 = v57;
    }

    v65 = v63;
    v66 = v62;
    v67 = v29;
    v68 = v30;
    swift_getOpaqueTypeConformance2();
    v36 = v52;
    v37 = v54;
    v38 = v47;
    sub_BA990();
    (*(v33 + 8))(v32, v35);
    (*(v53 + 8))(v38, v37);
    if (v31)
    {
      v39 = sub_BAAD0();
    }

    else
    {
      v39 = sub_BAB20();
    }

    v40 = v39;
    v41 = swift_getKeyPath();
    v42 = v51;
    sub_66B8(v36, v51, &qword_F8D98);
    v43 = (v42 + *(v55 + 36));
    *v43 = v41;
    v43[1] = v40;
    v44 = v58;
    sub_B9F30();
    sub_215B4();
    sub_2090C(&qword_F8E00, &type metadata accessor for PlainButtonStyle);
    v45 = v61;
    sub_BA840();
    (*(v60 + 8))(v44, v45);
    return sub_C5E8(v42, &qword_F8DA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E2C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = sub_BACC0();
  __chkstk_darwin(v48);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_B9F50();
  __chkstk_darwin(v46);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HUDButton(0);
  v7 = v6;
  v8 = *(a1 + *(v6 + 44));
  v9 = 60;
  if (!v8)
  {
    v9 = 64;
  }

  v51 = *(a1 + *(v6 + v9));
  v50 = sub_BA1C0();
  v71 = 0;
  sub_1E850(a1, &v53);
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v69[0] = v53;
  v69[1] = v54;
  v69[2] = v55;
  v69[3] = v56;
  v69[4] = v57;
  v69[5] = v58;
  v69[6] = v59;
  v69[7] = v60;
  sub_57A0(&v61, v52, &qword_F8E28);
  sub_C5E8(v69, &qword_F8E28);
  *&v70[71] = v65;
  *&v70[87] = v66;
  *&v70[103] = v67;
  *&v70[119] = v68;
  *&v70[7] = v61;
  *&v70[23] = v62;
  *&v70[39] = v63;
  *&v70[55] = v64;
  v49 = v71;
  sub_2E50(&qword_F8E30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_BDB40;
  v11 = sub_BA670();
  *(v10 + 32) = v11;
  v12 = sub_BA690();
  *(v10 + 33) = v12;
  v13 = sub_BA680();
  sub_BA680();
  if (sub_BA680() != v11)
  {
    v13 = sub_BA680();
  }

  sub_BA680();
  if (sub_BA680() != v12)
  {
    v13 = sub_BA680();
  }

  if (!v8)
  {
    sub_1EDAC();
  }

  sub_B9B90();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v52[0] = 0;
  if (!*(a1 + v7[6] + 8) && (*(a1 + v7[12] + 8) & 1) != 0)
  {
    sub_1EFD8();
  }

  if (*(a1 + v7[12] + 8))
  {
    sub_1EFD8();
  }

  sub_BADE0();
  sub_B9CF0();
  *(&v72[2] + 7) = v55;
  *(&v72[1] + 7) = v54;
  *(v72 + 7) = v53;
  if (*(a1 + v7[9]) == 1)
  {
    v22 = sub_BAAF0();
LABEL_16:
    v23 = v22;
    goto LABEL_22;
  }

  v23 = *(a1 + v7[10]);
  if (v23)
  {
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v24 = [objc_opt_self() secondarySystemFillColor];
      v22 = sub_BAA70();
      goto LABEL_16;
    }

    sub_BAAF0();
    v23 = sub_BAB10();
  }

LABEL_22:
  if (*(a1 + v7[7]))
  {
    v25 = *(v46 + 20);
    v26 = enum case for RoundedCornerStyle.continuous(_:);
    v27 = sub_BA270();
    v28 = v45;
    (*(*(v27 - 8) + 104))(&v45[v25], v26, v27);
    __asm { FMOV            V0.2D, #12.0 }

    *v28 = _Q0;
    sub_2090C(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  }

  else
  {
    v34 = enum case for RoundedCornerStyle.continuous(_:);
    v35 = sub_BA270();
    (*(*(v35 - 8) + 104))(v47, v34, v35);
    sub_2090C(&qword_F8E38, &type metadata accessor for Capsule);
  }

  v36 = sub_BAD20();
  v37 = *&v70[64];
  *(a2 + 97) = *&v70[80];
  v38 = *&v70[112];
  *(a2 + 113) = *&v70[96];
  *(a2 + 129) = v38;
  v39 = *v70;
  *(a2 + 33) = *&v70[16];
  v40 = *&v70[48];
  *(a2 + 49) = *&v70[32];
  *(a2 + 65) = v40;
  *(a2 + 81) = v37;
  v41 = v51;
  *a2 = v50;
  *(a2 + 8) = v41;
  *(a2 + 16) = v49;
  *(a2 + 144) = *&v70[127];
  *(a2 + 17) = v39;
  *(a2 + 152) = v13;
  *(a2 + 160) = v15;
  *(a2 + 168) = v17;
  *(a2 + 176) = v19;
  *(a2 + 184) = v21;
  *(a2 + 192) = 0;
  v42 = v72[1];
  *(a2 + 193) = v72[0];
  *(a2 + 209) = v42;
  result = *&v72[2];
  *(a2 + 225) = v72[2];
  *(a2 + 240) = *(&v72[2] + 15);
  *(a2 + 248) = v23;
  *(a2 + 256) = v36;
  *(a2 + 264) = 256;
  return result;
}

uint64_t sub_1E850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_B9E30();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v53 = &v46[-v7];
  v8 = type metadata accessor for HUDButton(0);
  if (!*(a1 + v8[5] + 8))
  {
    *v75 = 0u;
    v73 = 0u;
    memset(v74, 0, sizeof(v74));
    v72 = 0u;
    goto LABEL_14;
  }

  v50 = sub_BAB80();
  v51 = v4;
  v9 = *(a1 + v8[11]);
  if (v9 && (*(a1 + v8[12] + 8) & 1) != 0)
  {
    sub_1EFD8();
  }

  v10 = a1 + v8[12];
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == 1)
  {
    sub_1EFD8();
  }

  sub_BADE0();
  sub_B9CF0();
  v13 = v67;
  v14 = v68;
  v15 = v69;
  v16 = v70;
  v17 = v71;
  v18 = *(a1 + v8[8]);
  if ((v12 & 1) == 0)
  {
    v22 = v11;
    v4 = v51;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_12:
    v49 = v17;
    v24 = v13;
    v25 = v15;
    v23 = sub_BAAE0();
    v15 = v25;
    v13 = v24;
    v17 = v49;
    goto LABEL_13;
  }

  v49 = v71;
  v19 = v67;
  v20 = v69;
  v21 = sub_1EFD8();
  v15 = v20;
  v13 = v19;
  v22 = v21;
  v17 = v49;
  v4 = v51;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = v9;
LABEL_13:
  LOBYTE(v66[0]) = v14;
  LOBYTE(v61) = v16;
  *&v72 = v50;
  *(&v72 + 1) = v13;
  LOBYTE(v73) = v14;
  *(&v73 + 1) = v15;
  LOBYTE(v74[0]) = v16;
  *(v74 + 8) = v17;
  BYTE8(v74[1]) = v18;
  v75[0] = v22;
  *&v75[1] = v23;

LABEL_14:
  v26 = (a1 + v8[6]);
  v27 = v26[1];
  if (v27)
  {
    *&v66[0] = *v26;
    *(&v66[0] + 1) = v27;
    sub_B320();

    v27 = sub_BA800();
    v29 = v28;
    v31 = v30;
    v33 = v32 & 1;
    sub_21808(v27, v28, v32 & 1);

    LODWORD(v34) = 1;
  }

  else
  {
    v29 = 0;
    v33 = 0;
    v31 = 0;
    LODWORD(v34) = 0;
  }

  if (*(a1 + v8[8]) == 1)
  {
    v47 = v34;
    v48 = v31;
    *&v49 = v29;
    v50 = v27;
    v35 = v52;
    sub_1D828(v52);
    v36 = v8[20];
    v37 = sub_B9E20();
    v38 = v35;
    v34 = *(v4 + 8);
    v39 = v54;
    v34(v38, v54);
    if (v37)
    {
      v40 = v53;
      sub_1D828(v53);
    }

    else
    {
      v40 = v53;
      (*(v4 + 16))(v53, a1 + v36, v39);
    }

    sub_2090C(&qword_F8DB8, &type metadata accessor for DynamicTypeSize);
    v42 = sub_BAF90();
    v34(v40, v39);
    LOWORD(v34) = v47;
    if (v42)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_BAB80();
    }

    v27 = v50;
    v31 = v48;
    v29 = v49;
  }

  else
  {
    v41 = 0;
  }

  v57 = v74[0];
  v58 = v74[1];
  v59 = *v75;
  v60[2] = v74[0];
  v60[3] = v74[1];
  v55 = v72;
  v56 = v73;
  v60[0] = v72;
  v60[1] = v73;
  v64 = v74[1];
  v65 = *v75;
  v62 = v73;
  v63 = v74[0];
  v60[4] = *v75;
  v61 = v72;
  sub_57A0(&v72, v66, &qword_F8E48);
  sub_57A0(v60, v66, &qword_F8E48);
  sub_217C4(v27, v29, v33, v31);

  sub_21818(v27, v29, v33, v31);

  sub_C5E8(&v72, &qword_F8E48);
  v43 = v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = v43;
  *(a2 + 64) = v65;
  v44 = v62;
  *a2 = v61;
  *(a2 + 16) = v44;
  *(a2 + 80) = v27;
  *(a2 + 88) = v29;
  *(a2 + 96) = v33;
  *(a2 + 104) = v31;
  *(a2 + 112) = v34;
  *(a2 + 120) = v41;

  sub_21818(v27, v29, v33, v31);
  v66[2] = v57;
  v66[3] = v58;
  v66[4] = v59;
  v66[0] = v55;
  v66[1] = v56;
  return sub_C5E8(v66, &qword_F8E48);
}

double sub_1EDAC()
{
  v1 = sub_B9E30();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  if (qword_F8370 != -1)
  {
    swift_once();
  }

  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_100DA0];
  sub_1D828(v4);
  v8 = type metadata accessor for HUDButton(0);
  v9 = *(v8 + 80);
  v10 = sub_B9E20();
  v11 = *(v2 + 8);
  v11(v4, v1);
  if (v10)
  {
    sub_1D828(v7);
  }

  else
  {
    (*(v2 + 16))(v7, v0 + v9, v1);
  }

  v12 = *(v0 + *(v8 + 72));
  v13 = sub_1F22C();
  v14 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v13];

  v15 = v20;
  [v20 scaledValueForValue:v14 compatibleWithTraitCollection:v12];
  v17 = v16;

  v11(v7, v1);
  return v17;
}

double sub_1EFD8()
{
  v1 = v0;
  v2 = sub_B9E30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  if (qword_F8370 != -1)
  {
    swift_once();
  }

  v21 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_100DA0];
  sub_1D828(v5);
  v9 = type metadata accessor for HUDButton(0);
  v10 = v9[20];
  v11 = sub_B9E20();
  v12 = *(v3 + 8);
  v12(v5, v2);
  if (v11)
  {
    sub_1D828(v8);
  }

  else
  {
    (*(v3 + 16))(v8, v1 + v10, v2);
  }

  v13 = *(v1 + v9[17]);
  v14 = sub_1F22C();
  v15 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v14];

  v16 = v21;
  [v21 scaledValueForValue:v15 compatibleWithTraitCollection:v13];
  v18 = v17;

  v12(v8, v2);
  if (*(v1 + v9[7]) == 1)
  {
    return v18 + *(v1 + v9[19]);
  }

  return v18;
}

NSString *sub_1F22C()
{
  v1 = v0;
  v2 = sub_B9E30();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DynamicTypeSize.xSmall(_:))
  {
    v8 = &UIContentSizeCategoryExtraSmall;
  }

  else if (v7 == enum case for DynamicTypeSize.small(_:))
  {
    v8 = &UIContentSizeCategorySmall;
  }

  else if (v7 == enum case for DynamicTypeSize.medium(_:))
  {
    v8 = &UIContentSizeCategoryMedium;
  }

  else if (v7 == enum case for DynamicTypeSize.large(_:))
  {
    v8 = &UIContentSizeCategoryLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.xLarge(_:))
  {
    v8 = &UIContentSizeCategoryExtraLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.xxLarge(_:))
  {
    v8 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v8 = &UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility1(_:))
  {
    v8 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility2(_:))
  {
    v8 = &UIContentSizeCategoryAccessibilityLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility3(_:))
  {
    v8 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility4(_:))
  {
    v8 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
  }

  else
  {
    if (v7 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      v11 = *(v3 + 8);
      v12 = UIContentSizeCategoryMedium;
      v11(v6, v2);
      return v12;
    }

    v8 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  }

  v9 = *v8;

  return v9;
}

uint64_t sub_1F4F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2E50(&qword_F9438);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = sub_2E50(&qword_F9440);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  if (a2)
  {
    v23[1] = a4;
    sub_BADE0();
    sub_B9CF0();
    *&v25[6] = v35;
    *&v25[22] = v36;
    *&v25[38] = v37;

    v14 = sub_BADE0();
    v16 = v15;
    *&v26[0] = a3;
    WORD4(v26[0]) = 256;
    *(v26 + 10) = *v25;
    *(&v26[1] + 10) = *&v25[16];
    *(&v26[2] + 10) = *&v25[32];
    *(&v26[3] + 1) = *&v25[46];
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v17 = sub_2E50(&qword_F9448);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    v18 = &v13[*(v11 + 36)];
    v19 = v26[1];
    v20 = v26[3];
    *(v18 + 2) = v26[2];
    *(v18 + 3) = v20;
    *(v18 + 4) = v27;
    *v18 = v26[0];
    *(v18 + 1) = v19;
    v28 = a3;
    v29 = 256;
    v31 = *&v25[16];
    *v32 = *&v25[32];
    v30 = *v25;
    *&v32[14] = *&v25[46];
    v33 = v14;
    v34 = v16;
    sub_57A0(v26, &v24, &qword_F9468);
    sub_C5E8(&v28, &qword_F9468);
    sub_57A0(v13, v10, &qword_F9440);
    swift_storeEnumTagMultiPayload();
    sub_24990();
    sub_D150(&qword_F9458, &qword_F9448);
    sub_BA430();
    return sub_C5E8(v13, &qword_F9440);
  }

  else
  {
    v22 = sub_2E50(&qword_F9448);
    (*(*(v22 - 8) + 16))(v10, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_24990();
    sub_D150(&qword_F9458, &qword_F9448);
    return sub_BA430();
  }
}

double sub_1F8DC@<D0>(uint64_t a1@<X8>)
{
  sub_B9CB0();
  sub_2E50(&qword_F8D60);
  sub_D150(&qword_F8D68, &qword_F8D60);
  sub_BA8F0();
  sub_BAAE0();
  v2 = sub_BAC70();
  *(a1 + *(sub_2E50(&qword_F8D70) + 36)) = v2;
  v3 = a1 + *(sub_2E50(&qword_F8D78) + 36);
  *(v3 + 32) = 0;
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

uint64_t sub_1F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v30 = a6;
  type metadata accessor for TopPocketModifier();
  swift_getWitnessTable();
  v8 = sub_BA4D0();
  swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  v24 = WitnessTable;
  v35 = v8;
  v36 = &type metadata for Solarium;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = WitnessTable;
  v39 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = OpaqueTypeConformance2;
  v25 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v11 = swift_getOpaqueTypeMetadata2();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  sub_BAD80();
  v31 = a4;
  v32 = a5;
  v33 = v27;
  v34 = v28;
  v17 = swift_checkMetadataState();
  v18 = swift_checkMetadataState();
  v19 = v24;
  sub_BAA30();
  v35 = v17;
  v36 = &type metadata for Solarium;
  OpaqueTypeMetadata2 = v18;
  v38 = v19;
  v39 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = v10;
  v20 = swift_getOpaqueTypeConformance2();
  sub_B5F50(v13, v11, v20);
  v21 = *(v26 + 8);
  v21(v13, v11);
  sub_B5F50(v16, v11, v20);
  return (v21)(v16, v11);
}

uint64_t sub_1FD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v29 = a6;
  type metadata accessor for TopPocketModifier();
  swift_getWitnessTable();
  v8 = sub_BA4D0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v8;
  v35 = OpaqueTypeMetadata2;
  v36 = WitnessTable;
  v37 = OpaqueTypeConformance2;
  v12 = WitnessTable;
  v25[1] = &opaque type descriptor for <<opaque return type of View.safeAreaBar<A>(edge:alignment:spacing:content:)>>;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v25 - v18;
  v30 = a4;
  v31 = a5;
  v32 = v26;
  v33 = v27;
  sub_BA320();
  v20 = swift_checkMetadataState();
  v21 = swift_checkMetadataState();
  sub_BA850();
  v34 = v20;
  v35 = v21;
  v36 = v12;
  v37 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  sub_B5F50(v16, v13, v22);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_B5F50(v19, v13, v22);
  return (v23)(v19, v13);
}

uint64_t sub_1FFBC@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v27 = a4;
  v26 = sub_BA2F0();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  __chkstk_darwin(v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  v23[1] = &opaque type descriptor for <<opaque return type of View.scrollPocketTag_v1(style:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v23 - v18;
  v25(v17);
  sub_BA2E0();
  sub_BA920();
  (*(v24 + 8))(v7, v26);
  (*(v8 + 8))(v11, a2);
  v28 = a2;
  v29 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_B5F50(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v13 + 8);
  v21(v15, OpaqueTypeMetadata2);
  sub_B5F50(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_202DC(uint64_t a1)
{
  v2 = sub_B9E70();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_BA010();
}

uint64_t sub_203D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2E50(&qword_F8AF8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2E50(&qword_F8810);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_20534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_2E50(&qword_F8AF8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2E50(&qword_F8810);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_20670()
{
  sub_BAE4();
  if (v0 <= 0x3F)
  {
    sub_B998();
    if (v1 <= 0x3F)
    {
      sub_20954(319, &qword_F8B68, &qword_F8530);
      if (v2 <= 0x3F)
      {
        sub_209A8(319, &qword_F8898, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_20878();
          if (v4 <= 0x3F)
          {
            sub_20954(319, &qword_F8B80, &qword_F8B88);
            if (v5 <= 0x3F)
            {
              sub_20FD0(319, &qword_F8B90, &type metadata for LiveSpeechCaptionsWindowState, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_209A8(319, &unk_F8B98, type metadata accessor for CGSize, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_20FD0(319, &unk_F88B8, &type metadata for CGFloat, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20878()
{
  if (!qword_F8B70)
  {
    type metadata accessor for LiveSpeechCaptionsCallManager();
    sub_2090C(&qword_F8B78, type metadata accessor for LiveSpeechCaptionsCallManager);
    v0 = sub_B9CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_F8B70);
    }
  }
}

uint64_t sub_2090C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20954(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_5520(a3);
    v4 = sub_B9C70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_209A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20A50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20A8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2E50(&qword_F8810);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_B9E30();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 80);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2E50(&qword_F8810);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  else
  {
    v11 = sub_B9E30();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 80);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20DE0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20E18()
{
  sub_209A8(319, &qword_F8898, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_20FD0(319, &qword_F8CD8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_20FD0(319, &qword_F8CE0, &type metadata for Color, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_20FD0(319, &qword_F8CE8, &type metadata for CGFloat, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_21020();
          if (v4 <= 0x3F)
          {
            sub_B9E30();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21020()
{
  result = qword_F8CF0;
  if (!qword_F8CF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_F8CF0);
  }

  return result;
}

uint64_t sub_21104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2116C()
{
  v1 = type metadata accessor for HUDButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_B9E30();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 80);
  v7 = sub_B9E30();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_21310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_213E4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_BA620();
  sub_1E2C4(v3, __src);
  memcpy(&v6[7], __src, 0x10AuLL);
  *a1 = v4;
  return memcpy(a1 + 1, v6, 0x111uLL);
}

uint64_t sub_21454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BA130();
  *a1 = result & 1;
  return result;
}

unint64_t sub_214B4()
{
  result = qword_F8DC0;
  if (!qword_F8DC0)
  {
    sub_5520(&qword_F8D88);
    sub_D150(&qword_F8DC8, &qword_F8DD0);
    sub_D150(&qword_F87F8, &qword_F8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8DC0);
  }

  return result;
}

unint64_t sub_215B4()
{
  result = qword_F8DE0;
  if (!qword_F8DE0)
  {
    sub_5520(&qword_F8DA0);
    sub_2166C();
    sub_D150(&qword_F8DF0, &qword_F8DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8DE0);
  }

  return result;
}

unint64_t sub_2166C()
{
  result = qword_F8DE8;
  if (!qword_F8DE8)
  {
    sub_5520(&qword_F8D98);
    sub_5520(&qword_F8D88);
    sub_5520(&qword_F8D80);
    sub_214B4();
    sub_D150(&qword_F8DD8, &qword_F8D80);
    swift_getOpaqueTypeConformance2();
    sub_2090C(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8DE8);
  }

  return result;
}

uint64_t sub_217C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21808(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21808(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21818(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_C004(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2186C()
{
  v1 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_BA500();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_B9E30();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_E528(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));
  sub_E538(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_21AD0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for LiveSpeechHUDView_iOS(0);

  return sub_11A58(a1, a2, a3, a4);
}

uint64_t sub_21B60()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_21BB0()
{
  result = qword_F8EF0;
  if (!qword_F8EF0)
  {
    sub_5520(&qword_F8EC0);
    sub_21C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8EF0);
  }

  return result;
}

unint64_t sub_21C3C()
{
  result = qword_F8EF8;
  if (!qword_F8EF8)
  {
    sub_5520(&qword_F8EC8);
    sub_21CF4();
    sub_D150(&qword_F8F28, &qword_F8F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8EF8);
  }

  return result;
}

unint64_t sub_21CF4()
{
  result = qword_F8F00;
  if (!qword_F8F00)
  {
    sub_5520(&qword_F8ED8);
    sub_D150(&qword_F8F08, &qword_F8F10);
    sub_D150(&qword_F8F18, &qword_F8F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F00);
  }

  return result;
}

unint64_t sub_21DD8()
{
  result = qword_F8F38;
  if (!qword_F8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F38);
  }

  return result;
}

unint64_t sub_21E2C()
{
  result = qword_F8F40;
  if (!qword_F8F40)
  {
    sub_5520(&qword_F8EE8);
    sub_21BB0();
    sub_D150(&qword_F8F48, &qword_F8F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F40);
  }

  return result;
}

uint64_t sub_21EEC()
{
  v1 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_BA500();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_B9E30();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_E528(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));
  sub_E538(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_22158()
{
  v2 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_CA7C;

  return sub_12054(v4, v5, v0 + v3);
}

uint64_t sub_22234()
{
  v1 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v17 = sub_B9D40();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v6 = v0 + v3;

  v7 = v1[6];
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_BA500();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[7];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B9E30();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v2 | v5;
  v13 = (v3 + v15 + v5) & ~v5;
  sub_E528(*(v6 + v1[8]), *(v6 + v1[8] + 8), *(v6 + v1[8] + 16));
  sub_E538(*(v6 + v1[9]), *(v6 + v1[9] + 8), *(v6 + v1[9] + 9));

  (*(v4 + 8))(v0 + v13, v17);

  return _swift_deallocObject(v0, v13 + v16, v12 | 7);
}