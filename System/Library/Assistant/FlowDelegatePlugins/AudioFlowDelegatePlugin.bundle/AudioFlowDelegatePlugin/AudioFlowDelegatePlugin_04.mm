uint64_t sub_72240(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_720B4(*a1);
  v5 = v4;
  if (v3 == sub_720B4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_722C8()
{
  v1 = *v0;
  sub_2CEF50();
  sub_720B4(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_7232C()
{
  sub_720B4(*v0);
  sub_2CE310();
}

Swift::Int sub_72380()
{
  v1 = *v0;
  sub_2CEF50();
  sub_720B4(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_723E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_727A0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_72410@<X0>(unint64_t *a1@<X8>)
{
  result = sub_720B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlayerPersonRole(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlayerPersonRole(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_725B0()
{
  result = qword_34D848;
  if (!qword_34D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D848);
  }

  return result;
}

uint64_t sub_72614(uint64_t a1, uint64_t a2)
{
  v4 = sub_727EC();
  v5 = sub_72840();
  v6 = sub_72894();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_7268C()
{
  result = qword_34D850;
  if (!qword_34D850)
  {
    sub_2DB30(&qword_34D858, &qword_2D16B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D850);
  }

  return result;
}

unint64_t sub_726F4()
{
  result = qword_34D860;
  if (!qword_34D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D860);
  }

  return result;
}

unint64_t sub_7274C()
{
  result = qword_34D868;
  if (!qword_34D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D868);
  }

  return result;
}

uint64_t sub_727A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32F600;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_727EC()
{
  result = qword_34D870;
  if (!qword_34D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D870);
  }

  return result;
}

unint64_t sub_72840()
{
  result = qword_34D878;
  if (!qword_34D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D878);
  }

  return result;
}

unint64_t sub_72894()
{
  result = qword_34D880;
  if (!qword_34D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D880);
  }

  return result;
}

void *sub_728E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_deviceQuantifier, &qword_34DA28, qword_2D1908);
  v8 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_destinationDeviceId + 8);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_deviceType, &qword_34DA20, &qword_2D1900);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_placeHint, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_reference, &qword_34DA10, &qword_2D18F0);
  return v0;
}

uint64_t sub_729CC()
{
  sub_728E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeHomeAutomationEntityProvider()
{
  result = qword_34D8B0;
  if (!qword_34D8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_72A78()
{
  sub_72C4C(319, &qword_34D8C0, &type metadata accessor for DeviceQuantifier);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_72C4C(319, &qword_34D8C8, &type metadata accessor for DeviceType);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_72C4C(319, &qword_34D8D0, &type metadata accessor for PlaceHint);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_72C4C(319, &unk_34D8D8, &type metadata accessor for Reference);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_72C4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_72CAC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_72D58()
{
  v1 = (*v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_destinationDeviceId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_72E4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34CC98, &unk_2D3120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v16 = [v2 backingStore];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    sub_73000(a1, v7);
    v10 = sub_2CE0A0();
    v11 = *(v10 - 8);
    isa = 0;
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      isa = sub_2CE080().super.isa;
      (*(v11 + 8))(v7, v10);
    }

    v13 = INIntentSlotValueTransformToMediaDestination();

    [v9 setMediaDestination:v13];
  }

  else
  {
    v14 = v16;
  }
}

uint64_t sub_73000(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CC98, &unk_2D3120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_73070()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v5 = [v0 backingStore];
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = INIntentSlotValueTransformToMediaSearch();
      [v2 setMediaSearch:v3];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

id sub_73218()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  return result;
}

void sub_732B0(uint64_t a1, char a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = [v2 backingStore];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      sub_736BC();
      isa = sub_2CE400().super.isa;
      v8 = INIntentSlotValueTransformToMediaItemValues();

      [v6 setMediaItems:v8];
      v4 = v8;
    }

    if (a2)
    {
      v29 = [v2 backingStore];
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = [v9 privatePlayMediaIntentData];
LABEL_13:
        v17 = v10;

        if (!v17)
        {
          return;
        }

        [v17 setAudioSearchResults:0];
        v18 = v17;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v29 = [v2 backingStore];
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = v19;
          sub_736BC();
          v21 = sub_2CE400().super.isa;
          v22 = INIntentSlotValueTransformToMediaItemValues();

          [v20 setMediaItems:v22];
          v18 = v22;
LABEL_26:

          return;
        }
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          return;
        }

        v23 = [v2 backingStore];
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          sub_736BC();
          v26 = sub_2CE400().super.isa;
          v27 = INIntentSlotValueTransformToMediaItemValues();

          [v25 setMediaItems:v27];
          v23 = v27;
        }

        if ((a2 & 1) == 0)
        {
          return;
        }

        v29 = [v2 backingStore];
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v10 = [v28 privateSearchForMediaIntentData];
          goto LABEL_13;
        }
      }

LABEL_25:
      v18 = v29;
      goto LABEL_26;
    }

    v11 = [v2 backingStore];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      sub_736BC();
      v14 = sub_2CE400().super.isa;
      v15 = INIntentSlotValueTransformToMediaItemValues();

      [v13 setMediaItems:v15];
      v11 = v15;
    }

    if (a2)
    {
      v29 = [v2 backingStore];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v10 = [v16 privateAddMediaIntentData];
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }
}

unint64_t sub_736BC()
{
  result = qword_356F50;
  if (!qword_356F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_356F50);
  }

  return result;
}

uint64_t type metadata accessor for SearchForMediaViewProvider()
{
  result = qword_34DA58;
  if (!qword_34DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7378C@<X0>(void *a1@<X5>, uint64_t a2@<X8>)
{
  v86 = a2;
  v87 = a1;
  v85 = sub_2CD490();
  v80 = *(v85 - 1);
  v2 = *(v80 + 64);
  __chkstk_darwin(v85);
  v72 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20410(&qword_34CFB0, &unk_2D1000);
  v4 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v84 = &v72 - v5;
  v6 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v78 = &v72 - v11;
  __chkstk_darwin(v10);
  v79 = &v72 - v12;
  v13 = sub_2CA870();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v75 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v76 = &v72 - v26;
  v27 = __chkstk_darwin(v25);
  v73 = &v72 - v28;
  __chkstk_darwin(v27);
  v30 = &v72 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v32 = v21[2];
  v82 = v31;
  v81 = v32;
  v32(v30, v31, v20);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "PlayMediaNeedsValueStrategy#actionForInput...", v35, 2u);
  }

  v36 = v21[1];
  v37 = v20;
  v36(v30, v20);
  sub_2CA790();
  v38 = (*(v14 + 88))(v19, v13);
  if (v38 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v14 + 96))(v19, v13);
    v39 = *&v19[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v40 = sub_2CAFE0();
    (*(*(v40 - 8) + 8))(v19, v40);
    v41 = v85;
  }

  else
  {
    v42 = v38;
    v43 = enum case for Parse.pommesResponse(_:);
    (*(v14 + 8))(v19, v13);
    v41 = v85;
    if (v42 != v43)
    {
      v56 = v75;
      v81(v75, v82, v37);
      v57 = sub_2CDFE0();
      v58 = sub_2CE690();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "PlayMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v36(v56, v37);
      return sub_2C9CF0();
    }
  }

  v44 = v83;
  sub_2CA790();
  v45 = sub_D2F98(v44, &v88);
  (*(v14 + 8))(v44, v13, v45);
  if (!v89)
  {
    sub_30B8(&v88, &qword_34CF98, &unk_2D1A40);
    v56 = v76;
    v81(v76, v82, v37);
    v57 = sub_2CDFE0();
    v58 = sub_2CE690();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "PlayMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v57, v58, v60, v59, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v85 = v36;
  v87 = v21 + 1;
  sub_420A4(&v88, &v90);
  v46 = v92;
  sub_35E0(&v90, v91);
  v47 = *(v46 + 8);
  v48 = v79;
  sub_2CD480();
  v49 = v80;
  v50 = v78;
  (*(v80 + 104))(v78, enum case for CommonAudio.Confirmation.cancel(_:), v41);
  (*(v49 + 56))(v50, 0, 1, v41);
  v51 = *(v77 + 48);
  v52 = v84;
  sub_F3F4(v48, v84, &qword_34CCE8, &unk_2D0E20);
  v53 = v52;
  sub_F3F4(v50, v52 + v51, &qword_34CCE8, &unk_2D0E20);
  v54 = *(v49 + 48);
  if (v54(v52, 1, v41) == 1)
  {
    sub_30B8(v50, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v48, &qword_34CCE8, &unk_2D0E20);
    if (v54(v55 + v51, 1, v41) == 1)
    {
      sub_30B8(v55, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v68 = v73;
      v81(v73, v82, v37);
      v69 = sub_2CDFE0();
      v70 = sub_2CE690();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "PlayMediaNeedsValueStrategy#actionForInput User asked to cancel", v71, 2u);
      }

      (v85)(v68, v37);
      sub_2C9CD0();
      return sub_306C(&v90);
    }

    goto LABEL_20;
  }

  v62 = v74;
  sub_F3F4(v52, v74, &qword_34CCE8, &unk_2D0E20);
  if (v54(v52 + v51, 1, v41) == 1)
  {
    sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
    (*(v80 + 8))(v62, v41);
LABEL_20:
    sub_30B8(v55, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v63 = v80;
  v64 = v72;
  (*(v80 + 32))(v72, v53 + v51, v41);
  sub_76D1C(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation);
  v65 = v53;
  v66 = sub_2CE250();
  v67 = *(v63 + 8);
  v67(v64, v41);
  sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
  v67(v62, v41);
  sub_30B8(v65, &qword_34CCE8, &unk_2D0E20);
  if (v66)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(&v90);
}

id sub_74260(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v58 = a6;
  v59 = a5;
  v55 = a2;
  v62 = a1;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  v22 = a4;

  v23 = os_log_type_enabled(v20, v21);
  v63 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v54 = v13;
    v25 = v24;
    v26 = swift_slowAlloc();
    v64[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_3F08(v63, v22, v64);
    _os_log_impl(&dword_0, v20, v21, "PlayMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v25, 0xCu);
    sub_306C(v26);
    a3 = v63;

    v27 = v54;

    (*(v15 + 8))(v18, v14);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v27 = v13;
  }

  v28 = v55;
  v29 = v22;
  v30 = v59;
  sub_1C9250(v55, a3, v22, v27);
  v31 = v60;
  v54 = *(v60 + 16);
  v32 = v56;
  sub_F3F4(v27, v56, &unk_353020, &unk_2D0970);
  v33 = (*(v57 + 80) + 80) & ~*(v57 + 80);
  v34 = swift_allocObject();
  v34[2] = a3;
  v34[3] = v29;
  v34[4] = v30;
  v34[5] = v31;
  v35 = v62;
  v34[6] = v62;
  v34[7] = v28;
  v36 = v61;
  v34[8] = v58;
  v34[9] = v36;
  sub_14A58(v32, v34 + v33, &unk_353020, &unk_2D0970);
  v64[0] = v28;
  v37 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);

  v38 = v30;

  v39 = v28;
  v40 = v37;
  v41 = v39;

  v42 = v27;
  if (!sub_2CBFA0())
  {
    v45 = 0;
    v47 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = INMediaItemTypeGetName();
  if (result)
  {
    v44 = result;
    v45 = sub_2CE270();
    v47 = v46;

LABEL_10:
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x6574656D61726170;
    v49 = v63;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = v49;
    *(inited + 56) = v29;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x707954616964656DLL;
    *(inited + 120) = &type metadata for String;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = v45;
    *(inited + 104) = v47;

    v50 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v51 = *(v54 + 15);
    v64[3] = v40;
    v64[4] = &off_3381B8;
    v64[0] = v41;
    v52 = v41;
    sub_101AC(v50, v35, v64, sub_13DB8, v34);

    sub_30B8(v42, &unk_353020, &unk_2D0970);
    return sub_30B8(v64, &qword_34C6C0, &qword_2D0710);
  }

  __break(1u);
  return result;
}

uint64_t sub_748C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_7495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_749F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa_0();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_74A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_74B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s18NeedsValueStrategyCMa_0();
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_74BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = _s18NeedsValueStrategyCMa_0();
  *v17 = v8;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v18, a8);
}

void sub_74D28(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v213 = a6;
  v214 = a5;
  v223 = a4;
  v216 = a2;
  v217 = a1;
  v212 = sub_20410(&qword_34DBF0, &qword_2D1A38);
  v7 = *(*(v212 - 8) + 64);
  __chkstk_darwin(v212);
  v215 = (&v199 - v8);
  v9 = sub_20410(&qword_34D360, &qword_2D11E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v210 = &v199 - v11;
  v224 = sub_2CA870();
  v12 = *(v224 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v224);
  v16 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v199 - v18);
  __chkstk_darwin(v17);
  v225 = (&v199 - v20);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v203 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v211 = &v199 - v27;
  v28 = __chkstk_darwin(v26);
  v200 = &v199 - v29;
  v30 = __chkstk_darwin(v28);
  v208 = &v199 - v31;
  v32 = __chkstk_darwin(v30);
  v205 = &v199 - v33;
  v34 = __chkstk_darwin(v32);
  v202 = &v199 - v35;
  v36 = __chkstk_darwin(v34);
  v201 = &v199 - v37;
  v38 = __chkstk_darwin(v36);
  v207 = &v199 - v39;
  v40 = __chkstk_darwin(v38);
  v206 = &v199 - v41;
  v42 = __chkstk_darwin(v40);
  v204 = &v199 - v43;
  __chkstk_darwin(v42);
  v45 = &v199 - v44;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v46 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v47 = v22[2];
  v218 = v46;
  v220 = v22 + 2;
  v219 = v47;
  v47(v45, v46, v21);

  v48 = v21;
  v49 = sub_2CDFE0();
  v50 = sub_2CE690();

  v51 = os_log_type_enabled(v49, v50);
  v226 = v22;
  v209 = a3;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v231 = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_3F08(v216, a3, &v231);
    _os_log_impl(&dword_0, v49, v50, "PlayMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v52, 0xCu);
    sub_306C(v53);

    v221 = v226[1];
    v221(v45, v48);
  }

  else
  {

    v221 = v22[1];
    v221(v45, v21);
  }

  v222 = v48;
  [v217 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v54 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v55 = swift_dynamicCast();
  v56 = v225;
  if ((v55 & 1) == 0)
  {
    v235 = 0;
  }

  sub_2CA790();
  v57 = *(v12 + 88);
  v58 = v224;
  v59 = v57(v56, v224);
  v60 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v59 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v83 = enum case for Parse.pommesResponse(_:);
    if (v59 == enum case for Parse.pommesResponse(_:))
    {
      v208 = v54;
      v84 = v225;
      (*(v12 + 96))(v225, v58);
      v85 = *v84;
      v86 = sub_1B7F14();
      if (!v86)
      {
        v142 = v202;
        v143 = v222;
        v219(v202, v218, v222);
        v144 = sub_2CDFE0();
        v145 = sub_2CE680();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          _os_log_impl(&dword_0, v144, v145, "PlayMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v146, 2u);
        }

        v221(v142, v143);
        v147 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v148 = swift_allocError();
        (*(*(v147 - 8) + 104))(v149, enum case for PlaybackCode.ceGE69(_:), v147);
        v150 = v215;
        *v215 = v148;
        swift_storeEnumTagMultiPayload();
        v214(v150);

        goto LABEL_64;
      }

      v87 = v86;
      sub_2CA790();
      v88 = sub_D2F98(v19, &v229);
      (*(v12 + 8))(v19, v58, v88);
      v89 = v222;
      if (!v230)
      {
        sub_30B8(&v229, &qword_34CF98, &unk_2D1A40);
        v151 = v201;
        v219(v201, v218, v89);
        v152 = sub_2CDFE0();
        v153 = sub_2CE690();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_0, v152, v153, "PlayMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v154, 2u);
        }

        v221(v151, v89);
        v155 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v156 = swift_allocError();
        (*(*(v155 - 8) + 104))(v157, enum case for PlaybackCode.ceGE70(_:), v155);
        v150 = v215;
        *v215 = v156;
        swift_storeEnumTagMultiPayload();
        v214(v150);

        goto LABEL_64;
      }

      sub_420A4(&v229, &v231);
      v90 = v233;
      v91 = v234;
      v92 = sub_35E0(&v231, v233);
      v93 = sub_17FF0C(v92, 0, 0, v90, v91);
      sub_2CDBC0();
      sub_2CDBB0();
      v225 = v85;
      sub_2CDAE0();
      sub_2CDBA0();

      v94 = sub_2CDBD0();
      v95 = sub_2303EC(v87, v94, 2u);

      v219(v206, v218, v89);
      v96 = v95;
      v97 = sub_2CDFE0();
      v98 = sub_2CE670();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v99 = 138412290;
        *(v99 + 4) = v96;
        *v100 = v96;
        v101 = v96;
        _os_log_impl(&dword_0, v97, v98, "PlayMediaNeedsValueStrategy#parseResponseValue Updating privatePlayMediaIntentData with: %@", v99, 0xCu);
        sub_30B8(v100, &unk_34FC00, &unk_2D0150);
      }

      v221(v206, v222);
      if (v235)
      {
        v102 = v235;
        v103 = [v102 backingStore];
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (v104)
        {
          v105 = v104;
          v106 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
          [v105 setPrivatePlayMediaIntentData:v106];
        }

        else
        {
          v106 = v102;
          v102 = v103;
        }
      }

      v219(v207, v218, v222);
      v158 = v93;
      v159 = sub_2CDFE0();
      v160 = sub_2CE670();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *v161 = 138412290;
        *(v161 + 4) = v158;
        *v162 = v158;
        v163 = v158;
        _os_log_impl(&dword_0, v159, v160, "PlayMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v161, 0xCu);
        sub_30B8(v162, &unk_34FC00, &unk_2D0150);
      }

      v221(v207, v222);
      v164 = v235;
      if (v235)
      {
        v165 = v158;
        v166 = v164;
        v167 = [v166 backingStore];
        objc_opt_self();
        v168 = swift_dynamicCastObjCClass();
        v70 = v209;
        if (v168)
        {
          v169 = v168;
          v170 = INIntentSlotValueTransformToMediaSearch();
          [v169 setMediaSearch:v170];
        }

        else
        {
        }

        v68 = v222;
      }

      else
      {

        v68 = v222;
        v70 = v209;
      }

      sub_306C(&v231);
      v69 = v211;
      v71 = v235;
      if (v235)
      {
LABEL_11:
        if (v216 == 0xD000000000000012 && 0x80000000002DA150 == v70 || (sub_2CEEA0() & 1) != 0)
        {
          v72 = [v71 playbackRepeatMode];
          type metadata accessor for INPlaybackRepeatMode(0);
LABEL_15:
          v233 = v73;
          *&v231 = v72;
LABEL_16:
          sub_1DC344(v217);
          v219(v69, v218, v68);
          sub_F3F4(&v231, &v229, &qword_34CEA0, &qword_2D0FC0);
          v74 = sub_2CDFE0();
          v75 = sub_2CE690();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v228 = v77;
            *v76 = 136446210;
            sub_F3F4(&v229, v227, &qword_34CEA0, &qword_2D0FC0);
            sub_20410(&qword_34CEA0, &qword_2D0FC0);
            v78 = sub_2CE2A0();
            v80 = v79;
            sub_30B8(&v229, &qword_34CEA0, &qword_2D0FC0);
            v81 = sub_3F08(v78, v80, &v228);

            *(v76 + 4) = v81;
            _os_log_impl(&dword_0, v74, v75, "PlayMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v76, 0xCu);
            sub_306C(v77);

            v82 = v211;
          }

          else
          {

            sub_30B8(&v229, &qword_34CEA0, &qword_2D0FC0);
            v82 = v69;
          }

          v221(v82, v68);
          sub_F3F4(&v231, &v229, &qword_34CEA0, &qword_2D0FC0);
          v124 = v71;
          v125 = v215;
          sub_2CA220();
          v126 = sub_20410(&qword_34DBF8, qword_2D1A50);
          (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
          swift_storeEnumTagMultiPayload();
          v214(v125);

          sub_30B8(v125, &qword_34DBF0, &qword_2D1A38);
          v127 = &v231;
          v128 = &qword_34CEA0;
          v129 = &qword_2D0FC0;
          goto LABEL_65;
        }

        if (v216 == 0xD000000000000015 && 0x80000000002DA180 == v70 || (sub_2CEEA0() & 1) != 0)
        {
          v72 = [v71 playbackQueueLocation];
          type metadata accessor for INPlaybackQueueLocation(0);
          goto LABEL_15;
        }

        if (v216 == 0x6675685379616C70 && v70 == 0xEC00000064656C66 || (sub_2CEEA0() & 1) != 0)
        {
          v178 = v71;
          v179 = sub_2CE900();
        }

        else
        {
          if ((v216 != 0x6C50656D75736572 || v70 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
          {
            if (v216 == 0x657449616964656DLL && v70 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
            {
              v182 = [v71 mediaItems];
              if (v182)
              {
                v183 = v182;
                sub_334A0(0, &qword_356F50, INMediaItem_ptr);
                v184 = sub_2CE410();

                v182 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
              }

              else
              {
                v184 = 0;
              }

              v231 = v184;
              v232 = 0;
              v233 = v182;
              goto LABEL_16;
            }

            if ((v216 != 0x6B63616279616C70 || v70 != 0xED00006465657053) && (sub_2CEEA0() & 1) == 0)
            {
              v189 = v200;
              v219(v200, v218, v68);

              v190 = v71;
              v191 = sub_2CDFE0();
              v192 = sub_2CE680();

              if (os_log_type_enabled(v191, v192))
              {
                v193 = swift_slowAlloc();
                v194 = swift_slowAlloc();
                *&v229 = v194;
                *v193 = 136315138;
                *(v193 + 4) = sub_3F08(v216, v70, &v229);
                _os_log_impl(&dword_0, v191, v192, "PlayMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v193, 0xCu);
                sub_306C(v194);
              }

              v221(v189, v68);
              v195 = sub_2CB850();
              sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
              v196 = swift_allocError();
              (*(*(v195 - 8) + 104))(v197, enum case for PlaybackCode.ceGE73(_:), v195);
              v198 = v215;
              *v215 = v196;
              swift_storeEnumTagMultiPayload();
              v214(v198);

              v128 = &qword_34DBF0;
              v129 = &qword_2D1A38;
              v127 = v198;
              goto LABEL_65;
            }

            v185 = v71;
            v186 = sub_2CE910();
            v180 = &type metadata for Double;
            if (v187)
            {
              v188 = 0;
            }

            else
            {
              v188 = v186;
            }

            v231 = v188;
            if (v187)
            {
              v180 = 0;
            }

            v232 = 0;
            goto LABEL_72;
          }

          v181 = v71;
          v179 = sub_2CE920();
        }

        LOBYTE(v231) = v179 & 1;
        v180 = &type metadata for Bool;
LABEL_72:
        v233 = v180;
        goto LABEL_16;
      }

LABEL_61:
      v171 = v203;
      v219(v203, v218, v68);
      v172 = sub_2CDFE0();
      v173 = sub_2CE690();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_0, v172, v173, "PlayMediaNeedsValueStrategy#parseResponseValue updatedIntent nil", v174, 2u);
      }

      v221(v171, v68);
      v175 = sub_2CB850();
      sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v176 = swift_allocError();
      (*(*(v175 - 8) + 104))(v177, enum case for PlaybackCode.ceGE72(_:), v175);
      v150 = v215;
      *v215 = v176;
      swift_storeEnumTagMultiPayload();
      v214(v150);
LABEL_64:
      v128 = &qword_34DBF0;
      v129 = &qword_2D1A38;
      v127 = v150;
LABEL_65:
      sub_30B8(v127, v128, v129);
      goto LABEL_66;
    }

    sub_2CA790();
    v107 = v224;
    v108 = v57(v16, v224);
    if (v108 == v60)
    {
      (*(v12 + 96))(v16, v107);
      v109 = *&v16[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

      v110 = sub_2CAFE0();
      (*(*(v110 - 8) + 8))(v16, v110);
      v111 = v222;
      v112 = v225;
      v113 = v208;
    }

    else
    {
      v130 = v108;
      (*(v12 + 8))(v16, v107);
      v111 = v222;
      v112 = v225;
      v113 = v208;
      if (v130 != v83)
      {
LABEL_37:
        v219(v113, v218, v111);
        v135 = sub_2CDFE0();
        v136 = sub_2CE690();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_0, v135, v136, "PlayMediaNeedsValueStrategy#parseResponseValue intent not of right type", v137, 2u);
        }

        v221(v113, v111);
        sub_2CC230();
        sub_2CC1E0();
        v138 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v139 = swift_allocError();
        (*(*(v138 - 8) + 104))(v140, enum case for PlaybackCode.ceGE71(_:), v138);
        v141 = v215;
        *v215 = v139;
        swift_storeEnumTagMultiPayload();
        v214(v141);
        sub_30B8(v141, &qword_34DBF0, &qword_2D1A38);
        (*(v12 + 8))(v112, v224);
        goto LABEL_66;
      }
    }

    v131 = v205;
    v219(v205, v218, v111);
    v132 = sub_2CDFE0();
    v133 = sub_2CE680();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_0, v132, v133, "PlayMediaNeedsValueStrategy#parseResponseValue and PlayMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v134, 2u);
    }

    v221(v131, v111);
    goto LABEL_37;
  }

  (*(v12 + 96))(v56, v58);
  v61 = *&v56[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
  sub_2CA790();
  v62 = v210;
  sub_2B6170(v19, v210);
  v63 = sub_2CA830();
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = v64;
    v208 = v54;
    sub_30B8(v62, &qword_34D360, &qword_2D11E0);

    v66 = v235;
    v235 = v65;

    v67 = sub_2CAFE0();
    (*(*(v67 - 8) + 8))(v56, v67);
    v68 = v222;
    v69 = v211;
    v70 = v209;
    v71 = v235;
    if (v235)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

  v114 = v204;
  v115 = v222;
  v219(v204, v218, v222);
  v116 = sub_2CDFE0();
  v117 = sub_2CE670();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&dword_0, v116, v117, "PlayMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v118, 2u);
  }

  v221(v114, v115);
  v119 = sub_2CB850();
  sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
  v120 = swift_allocError();
  (*(*(v119 - 8) + 104))(v121, enum case for PlaybackCode.ceGE68(_:), v119);
  v122 = v215;
  *v215 = v120;
  swift_storeEnumTagMultiPayload();
  v214(v122);

  sub_30B8(v122, &qword_34DBF0, &qword_2D1A38);
  sub_30B8(v62, &qword_34D360, &qword_2D11E0);
  v123 = sub_2CAFE0();
  (*(*(v123 - 8) + 8))(v56, v123);
LABEL_66:
}

uint64_t sub_76D1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_76D74(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  v87 = a4;
  v105 = a3;
  v103 = a2;
  v5 = sub_2CE150();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  __chkstk_darwin(v5);
  v99 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2CE180();
  v98 = *(v100 - 8);
  v8 = *(v98 + 64);
  __chkstk_darwin(v100);
  v97 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2CC2B0();
  v85 = *(v104 - 8);
  v10 = *(v85 + 64);
  __chkstk_darwin(v104);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CC780();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v96 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  v92 = &v85 - v24;
  v25 = __chkstk_darwin(v23);
  v26 = __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v89 = &v85 - v28;
  __chkstk_darwin(v27);
  v30 = __chkstk_darwin(&v85 - v29);
  v31 = __chkstk_darwin(v30);
  v33 = &v85 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v85 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v85 - v38;
  v93 = v40;
  v90 = v42;
  v91 = v41;
  v88 = v37;
  v86 = v43;
  if (a1)
  {
    sub_2CC0B0();
  }

  else
  {
    v44 = sub_2CBF80();
    (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
  }

  (*(v14 + 104))(v17, enum case for CoreAnalyticsResponses.FabricatedPlayCodes.mediaItemsUnsupportedResponse(_:), v13);
  v45 = sub_2CC770();
  (*(v14 + 8))(v17, v13);
  sub_20410(&qword_34DD38, &unk_2D3B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1AB0;
  *(inited + 32) = 0x6449707061;
  v95 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_2CE260();
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  v94 = v45;
  *(inited + 72) = sub_2CE560();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  v47 = v39;
  sub_F3F4(v39, v36, &qword_34DD30, &unk_2D1BC0);
  v48 = sub_2CBF80();
  v49 = *(v48 - 8);
  v103 = *(v49 + 48);
  v50 = v103(v36, 1, v48);
  v105 = v49;
  if (v50 == 1)
  {
    sub_30B8(v36, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBEF0();
    (*(v49 + 8))(v36, v48);
  }

  *(inited + 96) = sub_2CE500();
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  sub_2CC2A0();
  sub_2CC280();
  (*(v85 + 8))(v12, v104);
  *(inited + 120) = sub_2CE560();
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  v51 = [v87 mediaItems];
  v104 = v47;
  if (v51)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v52 = sub_2CE410();

    if (v52 >> 62)
    {
      sub_2CEDA0();
    }

    else
    {
      v53 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
    }

    v54 = v103;
    v55 = v33;
  }

  else
  {
    v55 = v33;
    v54 = v103;
  }

  *(inited + 144) = sub_2CE560();
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:sub_2CE730() & 1];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  v56 = v104;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:{v54(v104, 1, v48) != 1}];
  *(inited + 200) = 0x646573557361;
  *(inited + 208) = 0xE600000000000000;
  sub_F3F4(v56, v55, &qword_34DD30, &unk_2D1BC0);
  if (v54(v55, 1, v48) == 1)
  {
    sub_30B8(v55, &qword_34DD30, &unk_2D1BC0);
    v57 = 0;
  }

  else
  {
    v57 = sub_2CBEE0();
    (*(v105 + 8))(v55, v48);
  }

  *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:v57 & 1];
  strcpy((inited + 224), "asExperimentId");
  *(inited + 239) = -18;
  v58 = v104;
  v59 = v86;
  sub_F3F4(v104, v86, &qword_34DD30, &unk_2D1BC0);
  if (v54(v59, 1, v48) == 1)
  {
    sub_30B8(v59, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF10();
    (*(v105 + 8))(v59, v48);
  }

  v60 = v88;
  v61 = sub_2CE260();

  *(inited + 240) = v61;
  strcpy((inited + 248), "asTreatmentId");
  *(inited + 262) = -4864;
  sub_F3F4(v58, v60, &qword_34DD30, &unk_2D1BC0);
  if (v54(v60, 1, v48) == 1)
  {
    sub_30B8(v60, &qword_34DD30, &unk_2D1BC0);
    v62 = v105;
  }

  else
  {
    sub_2CBF00();
    v62 = v105;
    (*(v105 + 8))(v60, v48);
  }

  v63 = v89;
  v64 = sub_2CE260();

  *(inited + 264) = v64;
  *(inited + 272) = 0x756F6C6C6F527361;
  *(inited + 280) = 0xEB00000000644974;
  sub_F3F4(v58, v63, &qword_34DD30, &unk_2D1BC0);
  if (v54(v63, 1, v48) == 1)
  {
    sub_30B8(v63, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF70();
    (*(v62 + 8))(v63, v48);
  }

  v65 = sub_2CE260();

  *(inited + 288) = v65;
  *(inited + 296) = 0x6469666E6F437361;
  *(inited + 304) = 0xEF73624165636E65;
  v66 = v90;
  sub_F3F4(v58, v90, &qword_34DD30, &unk_2D1BC0);
  if (v54(v66, 1, v48) == 1)
  {
    sub_30B8(v66, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF20();
    (*(v62 + 8))(v66, v48);
  }

  v67 = v91;
  *(inited + 312) = sub_2CE500();
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x80000000002DB4E0;
  sub_F3F4(v58, v67, &qword_34DD30, &unk_2D1BC0);
  if (v54(v67, 1, v48) == 1)
  {
    sub_30B8(v67, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF40();
    (*(v62 + 8))(v67, v48);
  }

  v68 = v92;
  *(inited + 336) = sub_2CE500();
  *(inited + 344) = 0x64497070417361;
  *(inited + 352) = 0xE700000000000000;
  sub_F3F4(v58, v68, &qword_34DD30, &unk_2D1BC0);
  if (v54(v68, 1, v48) == 1)
  {
    sub_30B8(v68, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF30();
    v54 = v103;
    (*(v62 + 8))(v68, v48);
  }

  v69 = sub_2CE260();

  *(inited + 360) = v69;
  *(inited + 368) = 0x7265735577656ELL;
  *(inited + 376) = 0xE700000000000000;
  v70 = v93;
  sub_F3F4(v58, v93, &qword_34DD30, &unk_2D1BC0);
  if (v54(v70, 1, v48) == 1)
  {
    sub_30B8(v70, &qword_34DD30, &unk_2D1BC0);
    v71 = 0;
  }

  else
  {
    v71 = sub_2CBF60();
    (*(v62 + 8))(v70, v48);
  }

  *(inited + 384) = [objc_allocWithZone(NSNumber) initWithBool:v71 & 1];
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  *(inited + 408) = sub_2CEB10(0);
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000000002DB500;
  v72 = v54(v58, 1, v48) != 1;
  *(inited + 432) = sub_2CEB10(v72);
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  v73 = v96;
  sub_F3F4(v58, v96, &qword_34DD30, &unk_2D1BC0);
  if (v54(v73, 1, v48) == 1)
  {
    sub_30B8(v73, &qword_34DD30, &unk_2D1BC0);
LABEL_40:
    v75 = 0;
    goto LABEL_41;
  }

  v74 = sub_2CBEE0();
  (*(v62 + 8))(v73, v48);
  if ((v74 & 1) == 0)
  {
    goto LABEL_40;
  }

  v75 = 1;
LABEL_41:
  *(inited + 456) = sub_2CEB10(v75);
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v107[0] = v94;
  sub_2CEE70();
  v76 = sub_2CE260();

  *(inited + 480) = v76;
  v77 = sub_90728(inited);
  swift_setDeallocating();
  sub_20410(&qword_34DD40, &unk_2D1BD0);
  swift_arrayDestroy();
  v78 = sub_2CBA10();
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  v107[4] = sub_7DD80;
  v107[5] = v79;
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 1107296256;
  v107[2] = sub_A4294;
  v107[3] = &unk_3327F8;
  v80 = _Block_copy(v107);
  v81 = v97;
  sub_2CE160();
  v106 = _swiftEmptyArrayStorage;
  sub_7DDA0(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v82 = v99;
  v83 = v102;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v80);

  (*(v101 + 8))(v82, v83);
  (*(v98 + 8))(v81, v100);
  sub_30B8(v58, &qword_34DD30, &unk_2D1BC0);
}

void sub_77EB0(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2CDFE0();
  v9 = sub_2CE670();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v12 = sub_2CE210();
    v14 = sub_3F08(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "UnsupportedValueStrategy#logCoreAnalytics recording result analytics data due to unsupported result: %s", v10, 0xCu);
    sub_306C(v11);
  }

  (*(v3 + 8))(v6, v2);
  v15 = sub_2CE260();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = CommonFlowStrategy.makeParameterMetadata(intent:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25FA38;
  aBlock[3] = &unk_332848;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_781C4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a2;
  v33 = a4;
  v37 = a3;
  v6 = sub_2CE000();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  v34 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v34 - 8) + 64);
  v15 = __chkstk_darwin(v34);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  v20 = sub_20410(&unk_3519A0, &qword_2D0980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v33 - v22);
  sub_F3F4(a1, &v33 - v22, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39[0] = *v23;
    v40 = 1;
    swift_errorRetain();
    v36(v39);

    return sub_30B8(v39, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v26 = v36;
    v25 = v37;
    sub_14A58(v23, v19, &qword_34C6E8, &unk_2D0FF0);
    sub_7861C(v33, &qword_34FCC0, INPlayMediaIntent_ptr, v13);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v38 + 16))(v9, v27, v6);
    v28 = sub_2CDFE0();
    v29 = sub_2CE690();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "UnsupportedValueStrategy#makeUnsupportedValueOutput successfully created dialog / punchout for unsafeSelfHarm", v30, 2u);
    }

    (*(v38 + 8))(v9, v6);
    sub_F3F4(v19, v17, &qword_34C6E8, &unk_2D0FF0);
    v31 = *&v17[*(v34 + 48)];
    sub_7DE54(v17, v31, v13, v26, v25);

    sub_30B8(v13, &unk_353020, &unk_2D0970);
    sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
    v32 = sub_2CA130();
    return (*(*(v32 - 8) + 8))(v17, v32);
  }
}

uint64_t sub_7861C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v5 = sub_2CDAA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v28 = v13;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "CommonNLContextProvider: makeContextForUnsupportedIntent clearing conversation state", v22, 2u);
    v13 = v28;
  }

  (*(v15 + 8))(v18, v14);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0770;
  sub_334A0(0, v29, v30);
  *(v23 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v6 + 104))(v9, enum case for PommesContext.Source.pluginDefined(_:), v5);
  sub_2CDAB0();
  v24 = sub_2CDAC0();
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  sub_2C9F20();
  v25 = sub_2CA000();
  return (*(*(v25 - 8) + 56))(a4, 0, 1, v25);
}

uint64_t sub_789F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = sub_2CDAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = v11;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "CommonNLContextProvider: makeContextForUnsupportedIntent clearing conversation state", v20, 2u);
    v11 = v26;
  }

  (*(v13 + 8))(v16, v12);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0770;
  type metadata accessor for DetermineIntent();
  *(v21 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v4 + 104))(v7, enum case for PommesContext.Source.pluginDefined(_:), v3);
  sub_2CDAB0();
  v22 = sub_2CDAC0();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  sub_2C9F20();
  v23 = sub_2CA000();
  return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
}

uint64_t sub_78DEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (*a8)(void *), uint64_t a9, char a10, char *a11)
{
  v136 = a8;
  v129 = a7;
  v139 = a6;
  v127 = a5;
  v134 = a3;
  v135 = a4;
  v133 = a2;
  v124 = a1;
  v137 = a9;
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v132 = &v114 - v13;
  v138 = sub_2CE000();
  v130 = *(v138 - 1);
  v14 = v130[8];
  v15 = __chkstk_darwin(v138);
  v115 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = &v114 - v17;
  v119 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v120 = *(v119 - 8);
  v18 = *(v120 + 64);
  v19 = __chkstk_darwin(v119);
  v122 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v131 = &v114 - v22;
  v121 = v23;
  __chkstk_darwin(v21);
  v25 = &v114 - v24;
  v26 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v126 = (&v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v118 = (&v114 - v30);
  v31 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v117 = &v114 - v33;
  v34 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v128 = &v114 - v36;
  v116 = sub_2CCB30();
  v37 = *(v116 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v116);
  v40 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2CCAC0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20410(&unk_3519A0, &qword_2D0980);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v49 = (&v114 - v48);
  sub_F3F4(v124, &v114 - v48, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v68 = v127;
    sub_14A58(v49, v25, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v123 = v25;
    v69 = v138;
    v70 = sub_3ED0(v138, static Logger.default);
    swift_beginAccess();
    v71 = v130[2];
    v71(v125, v70, v69);
    v72 = sub_2CDFE0();
    v73 = sub_2CE690();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "UnsupportedValueStrategy#makeUnsupportedValueOutput successfully created dialog / punchout for GDPR", v74, 2u);
    }

    v128 = a11;

    v75 = v130[1];
    v75(v125, v138);
    v76 = _swiftEmptyArrayStorage;
    v142 = _swiftEmptyArrayStorage;
    if (a10)
    {
      goto LABEL_23;
    }

    v77 = sub_2CCF90();
    v79 = v78;
    v80 = sub_2CBE30();
    if (v79)
    {
      if (v77 == v80 && v79 == v81)
      {

LABEL_17:
        v85 = v115;
        v71(v115, v70, v138);
        v86 = sub_2CDFE0();
        v87 = sub_2CE670();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_0, v86, v87, "UnsupportedValueStrategy#makeUnsupportedValueOutput punching out to Podcasts app for GDPR", v88, 2u);
        }

        v75(v85, v138);
        v89 = [objc_allocWithZone(SAAppsLaunchApp) init];
        sub_2CBE30();
        v90 = sub_2CE260();

        [v89 setLaunchId:v90];

        v91 = v89;
        sub_2CE3F0();
        if (*(&dword_10 + (v142 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v142 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v113 = *(&dword_10 + (v142 & 0xFFFFFFFFFFFFFF8));
          sub_2CE430();
        }

        sub_2CE460();

        v76 = v142;
        goto LABEL_23;
      }

      v84 = sub_2CEEA0();

      if (v84)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v92 = v68[14];
    sub_35E0(v68 + 10, v68[13]);
    sub_2CBC10();
    v76 = _swiftEmptyArrayStorage;
LABEL_23:
    v138 = v76;
    v126 = sub_35E0(v68 + 20, v68[23]);
    v93 = v123;
    v94 = v131;
    sub_F3F4(v123, v131, &qword_34C6E8, &unk_2D0FF0);
    v130 = *(v94 + *(v119 + 48));
    v95 = sub_2CA000();
    (*(*(v95 - 8) + 56))(v132, 1, 1, v95);
    v96 = v93;
    v97 = v122;
    sub_F3F4(v96, v122, &qword_34C6E8, &unk_2D0FF0);
    v98 = (*(v120 + 80) + 80) & ~*(v120 + 80);
    v99 = (v121 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    v101 = v134;
    v100[2] = v133;
    v100[3] = v101;
    v102 = v135;
    v100[4] = v135;
    v100[5] = v68;
    v103 = v129;
    v100[6] = v139;
    v100[7] = v103;
    v104 = v137;
    v100[8] = v136;
    v100[9] = v104;
    v105 = v103;
    sub_14A58(v97, v100 + v98, &qword_34C6E8, &unk_2D0FF0);
    *(v100 + v99) = v128;
    v106 = *v126;

    v107 = v102;

    v108 = v105;

    v110 = v130;
    v109 = v131;
    v111 = v132;
    sub_1C3480(v131, v130, v132, v138, sub_7EE9C, v100);

    sub_30B8(v111, &unk_353020, &unk_2D0970);
    sub_30B8(v123, &qword_34C6E8, &unk_2D0FF0);
    v112 = sub_2CA130();
    return (*(*(v112 - 8) + 8))(v109, v112);
  }

  v50 = *v49;
  (*(v42 + 104))(v45, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v41);
  v51 = v116;
  (*(v37 + 104))(v40, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v116);
  swift_getErrorValue();
  sub_2CEEF0();
  v135 = sub_2CCAF0();
  v138 = v52;

  (*(v37 + 8))(v40, v51);
  (*(v42 + 8))(v45, v41);
  v53 = v127[18];
  v133 = v127[19];
  v134 = sub_35E0(v127 + 15, v53);
  v54 = enum case for ActivityType.failed(_:);
  v55 = sub_2C9C20();
  v56 = *(v55 - 8);
  v57 = v128;
  (*(v56 + 104))(v128, v54, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  v58 = sub_2CA130();
  v59 = v117;
  (*(*(v58 - 8) + 56))();
  v60 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v61 = sub_2C98F0();
  v62 = *(v61 - 8);
  v63 = *(v62 + 104);
  v64 = v126;
  v63(v126, v60, v61);
  v65 = *(v62 + 56);
  v65(v64, 0, 1, v61);
  if (sub_2CE740())
  {
    sub_30B8(v126, &qword_34CB78, &unk_2D0D80);
    v66 = v118;
    v63(v118, enum case for SiriKitReliabilityCodes.ampServerError(_:), v61);
    v67 = v66;
    v65(v66, 0, 1, v61);
  }

  else
  {
    v67 = v118;
    sub_14A58(v126, v118, &qword_34CB78, &unk_2D0D80);
  }

  sub_2CE710();
  v82 = v128;
  sub_2CB4E0();

  sub_30B8(v67, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v59, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v82, &qword_34CB88, &unk_2D0D90);
  v140[0] = v50;
  v141 = 1;
  swift_errorRetain();
  v136(v140);

  return sub_30B8(v140, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_79C64(char a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v8, v9, "UnsupportedValueStrategy#makeUnsupportedValueOutput result of call to requestCapabilities %{BOOL}d", v10, 8u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_79E24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9, uint64_t a10)
{
  v103 = a8;
  v100 = a7;
  v101 = a6;
  v99 = a5;
  v97 = a4;
  v96 = a3;
  v95 = a2;
  v94 = a1;
  v102 = a9;
  v89 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v86 - v11;
  v86 = sub_2CCB20();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v86);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v91 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v93 = &v86 - v21;
  v22 = __chkstk_darwin(v20);
  v88 = &v86 - v23;
  __chkstk_darwin(v22);
  v92 = &v86 - v24;
  v25 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v87 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = &v86 - v29;
  v30 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v86 - v35;
  v37 = sub_2CCB30();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2CCAC0();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v86 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(v94, &v107, qword_34C798, &qword_2D0DA0);
  if (v108 == 1)
  {
    v47 = v107;
    (*(v43 + 104))(v46, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v42);
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v37);
    swift_getErrorValue();
    sub_2CEEF0();
    v96 = sub_2CCAF0();
    v97 = v48;

    (*(v38 + 8))(v41, v37);
    (*(v43 + 8))(v46, v42);
    v49 = v99[18];
    v94 = v99[19];
    v95 = sub_35E0(v99 + 15, v49);
    v50 = enum case for ActivityType.failed(_:);
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    (*(v52 + 104))(v36, v50, v51);
    v53 = *(v52 + 56);
    v99 = v36;
    v53(v36, 0, 1, v51);
    v54 = sub_2CA130();
    (*(*(v54 - 8) + 56))(v98, 1, 1, v54);
    v55 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = *(v57 + 104);
    v59 = v88;
    v58(v88, v55, v56);
    v60 = *(v57 + 56);
    v60(v59, 0, 1, v56);
    if (sub_2CE740())
    {
      sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
      v61 = v92;
      v58(v92, enum case for SiriKitReliabilityCodes.ampServerError(_:), v56);
      v60(v61, 0, 1, v56);
    }

    else
    {
      v81 = v59;
      v61 = v92;
      sub_14A58(v81, v92, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    v82 = v99;
    v83 = v98;
    sub_2CB4E0();

    sub_30B8(v61, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v83, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v82, &qword_34CB88, &unk_2D0D90);
    v104[0] = v47;
    v105 = 1;
    swift_errorRetain();
    v103(v104);

    return sub_30B8(v104, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v94 = a10;
    sub_F338(&v107, v106);
    (*(v43 + 104))(v46, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v42);
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v37);
    v62 = v86;
    (*(v12 + 104))(v15, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v86);
    v97 = sub_2CCB00();
    v98 = v63;
    (*(v12 + 8))(v15, v62);
    (*(v38 + 8))(v41, v37);
    (*(v43 + 8))(v46, v42);
    v64 = v99[18];
    v96 = v99[19];
    v99 = sub_35E0(v99 + 15, v64);
    v65 = enum case for ActivityType.termConditionCheck(_:);
    v66 = sub_2C9C20();
    v67 = *(v66 - 8);
    (*(v67 + 104))(v34, v65, v66);
    v68 = v34;
    (*(v67 + 56))(v34, 0, 1, v66);
    v69 = v90;
    sub_F3F4(v94, v90, &qword_34C6E8, &unk_2D0FF0);

    v70 = sub_2CA130();
    v71 = *(v70 - 8);
    v72 = v87;
    (*(v71 + 32))(v87, v69, v70);
    v73 = v72;
    (*(v71 + 56))(v72, 0, 1, v70);
    v74 = enum case for SiriKitReliabilityCodes.success(_:);
    v75 = sub_2C98F0();
    v76 = *(v75 - 8);
    v77 = *(v76 + 104);
    v78 = v91;
    v77(v91, v74, v75);
    v79 = *(v76 + 56);
    v79(v78, 0, 1, v75);
    if (sub_2CE740())
    {
      sub_30B8(v78, &qword_34CB78, &unk_2D0D80);
      v80 = v93;
      v77(v93, enum case for SiriKitReliabilityCodes.ampServerError(_:), v75);
      v79(v80, 0, 1, v75);
    }

    else
    {
      v85 = v78;
      v80 = v93;
      sub_14A58(v85, v93, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v80, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v73, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v68, &qword_34CB88, &unk_2D0D90);
    sub_EEAC(v106, v104);
    v105 = 0;
    v103(v104);
    sub_30B8(v104, qword_34C798, &qword_2D0DA0);
    return sub_306C(v106);
  }
}

uint64_t sub_7AB20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = a8;
  v129 = a7;
  v150 = a5;
  v151 = a6;
  v153 = a2;
  v154 = a4;
  v149 = a3;
  v131 = sub_2CCB20();
  v128 = *(v131 - 8);
  v9 = *(v128 + 64);
  __chkstk_darwin(v131);
  v127 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v147 - 8) + 64);
  v12 = __chkstk_darwin(v147);
  v134 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v132 = &v124 - v15;
  __chkstk_darwin(v14);
  v152 = &v124 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v133 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v124 - v25;
  __chkstk_darwin(v24);
  v135 = &v124 - v27;
  v28 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v145 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v148 = &v124 - v32;
  v33 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v144 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v146 = &v124 - v37;
  v137 = sub_2CCB30();
  v143 = *(v137 - 8);
  v38 = v143[8];
  __chkstk_darwin(v137);
  v140 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2CCAC0();
  v141 = *(v142 - 8);
  v40 = *(v141 + 64);
  __chkstk_darwin(v142);
  v139 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20410(&unk_3519A0, &qword_2D0980);
  v42 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v44 = (&v124 - v43);
  v45 = sub_2CE000();
  v46 = *(v45 - 8);
  v47 = v46[8];
  v48 = __chkstk_darwin(v45);
  v125 = &v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v51 = &v124 - v50;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v52 = sub_3ED0(v45, static Logger.default);
  swift_beginAccess();
  v53 = v46[2];
  v138 = v45;
  v124 = v53;
  v53(v51, v52, v45);
  v54 = sub_2CDFE0();
  v55 = sub_2CE690();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v126 = a1;
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "UnsupportedValueStrategy#makeUnsupportedValueOutput...", v56, 2u);
    a1 = v126;
  }

  v57 = v46[1];
  v58 = v138;
  v126 = v46 + 1;
  v57(v51, v138);
  sub_F3F4(a1, v44, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v152 = v26;
    v59 = *v44;
    v60 = v125;
    v124(v125, v52, v58);
    swift_errorRetain();
    v61 = sub_2CDFE0();
    v62 = sub_2CE680();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v155 = v59;
      v156 = v64;
      *v63 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v65 = sub_2CE2A0();
      v67 = sub_3F08(v65, v66, &v156);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_0, v61, v62, "UnsupportedValueStrategy#makeUnsupportedValueOutput makeUnsupportedDialog failed with error: %{public}s", v63, 0xCu);
      sub_306C(v64);
    }

    v57(v60, v58);
    v94 = v141;
    v95 = v139;
    v96 = v142;
    (*(v141 + 104))(v139, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v142);
    v97 = v143;
    v98 = v140;
    v99 = v137;
    (v143[13])(v140, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v137);
    swift_getErrorValue();
    sub_2CEEF0();
    v147 = sub_2CCAE0();

    (v97[1])(v98, v99);
    (*(v94 + 8))(v95, v96);
    v100 = v153[18];
    v145 = v153[19];
    v153 = sub_35E0(v153 + 15, v100);
    v101 = enum case for ActivityType.failed(_:);
    v102 = sub_2C9C20();
    v103 = *(v102 - 8);
    v104 = v146;
    (*(v103 + 104))(v146, v101, v102);
    (*(v103 + 56))(v104, 0, 1, v102);
    v105 = sub_2CA130();
    (*(*(v105 - 8) + 56))(v148, 1, 1, v105);
    v106 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v107 = sub_2C98F0();
    v108 = *(v107 - 8);
    v109 = *(v108 + 104);
    v110 = v152;
    v109(v152, v106, v107);
    v111 = *(v108 + 56);
    v111(v110, 0, 1, v107);
    if (sub_2CE740())
    {
      sub_30B8(v110, &qword_34CB78, &unk_2D0D80);
      v112 = v135;
      v109(v135, enum case for SiriKitReliabilityCodes.ampServerError(_:), v107);
      v113 = v112;
      v111(v112, 0, 1, v107);
    }

    else
    {
      v113 = v135;
      sub_14A58(v110, v135, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    v122 = v148;
    v123 = v146;
    sub_2CB4E0();

    sub_30B8(v113, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v122, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v123, &qword_34CB88, &unk_2D0D90);
    v156 = v59;
    v157 = 1;
    swift_errorRetain();
    v150(&v156);

    return sub_30B8(&v156, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_14A58(v44, v152, &qword_34C6E8, &unk_2D0FF0);
    v68 = v141;
    v69 = v139;
    v70 = v142;
    (*(v141 + 104))(v139, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v142);
    v71 = v143;
    v72 = v140;
    v73 = v137;
    (v143[13])(v140, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v137);
    v74 = v128;
    v75 = *(v128 + 104);
    v76 = v127;
    v138 = v21;
    v77 = v131;
    v75(v127, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v131);
    v146 = sub_2CCB00();
    v148 = v78;
    (*(v74 + 8))(v76, v77);
    (v71[1])(v72, v73);
    (*(v68 + 8))(v69, v70);
    v79 = v153[19];
    v143 = sub_35E0(v153 + 15, v153[18]);
    v80 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v81 = sub_2C9C20();
    v82 = *(v81 - 8);
    v83 = v138;
    v84 = v144;
    (*(v82 + 104))(v144, v80, v81);
    (*(v82 + 56))(v84, 0, 1, v81);
    v85 = v132;
    sub_F3F4(v152, v132, &qword_34C6E8, &unk_2D0FF0);

    v86 = sub_2CA130();
    v87 = *(v86 - 8);
    v88 = v145;
    (*(v87 + 32))(v145, v85, v86);
    (*(v87 + 56))(v88, 0, 1, v86);
    v89 = sub_2C98F0();
    v90 = *(v89 - 8);
    v91 = *(v90 + 56);
    v91(v83, 1, 1, v89);
    if (sub_2CE740())
    {
      sub_30B8(v83, &qword_34CB78, &unk_2D0D80);
      v92 = v133;
      (*(v90 + 104))(v133, enum case for SiriKitReliabilityCodes.ampServerError(_:), v89);
      v93 = v92;
      v91(v92, 0, 1, v89);
    }

    else
    {
      v93 = v133;
      sub_14A58(v83, v133, &qword_34CB78, &unk_2D0D80);
    }

    v114 = v154;
    sub_2CE710();
    v115 = v149;
    v116 = v144;
    v117 = v145;
    sub_2CB4E0();

    sub_30B8(v93, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v117, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v116, &qword_34CB88, &unk_2D0D90);
    v118 = v152;
    v119 = v134;
    sub_F3F4(v152, v134, &qword_34C6E8, &unk_2D0FF0);
    v120 = *(v119 + *(v147 + 48));
    sub_7BC24(v119, v120, v115, v114, v150, v151);

    sub_30B8(v118, &qword_34C6E8, &unk_2D0FF0);
    return (*(v87 + 8))(v119, v86);
  }
}

uint64_t sub_7BC24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v123 = a5;
  v124 = a6;
  v131 = a4;
  v117 = a3;
  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v118 = &v101 - v10;
  v129 = sub_2CD230();
  v121 = *(v129 - 8);
  v11 = *(v121 + 64);
  v12 = __chkstk_darwin(v129);
  v112 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v13;
  __chkstk_darwin(v12);
  v120 = &v101 - v14;
  v15 = sub_2C9B80();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2CA630();
  v122 = *(v130 - 8);
  v18 = *(v122 + 64);
  v19 = __chkstk_darwin(v130);
  v110 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v20;
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  v103 = sub_2CB260();
  v102 = *(v103 - 8);
  v23 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20410(&unk_353020, &unk_2D0970);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v127 = &v101 - v27;
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v125 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v101 - v33;
  v35 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v107 = *(v35 - 8);
  v36 = *(v107 + 64);
  v37 = __chkstk_darwin(v35);
  v116 = &v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v38;
  __chkstk_darwin(v37);
  v40 = &v101 - v39;
  v41 = sub_2CA130();
  v104 = *(v41 - 8);
  v42 = *(v104 + 16);
  v106 = v41;
  v42(v40, a1);
  v105 = v35;
  v43 = *(v35 + 48);
  v126 = v40;
  *&v40[v43] = a2;
  v44 = qword_34BF58;
  v45 = a2;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v113 = v29[2];
  v113(v34, v46, v28);
  v47 = sub_2CDFE0();
  v48 = sub_2CE690();
  v49 = os_log_type_enabled(v47, v48);
  v128 = v22;
  v114 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v132 = v51;
    *v50 = 136446210;
    v52 = sub_2CCCA0();
    v54 = sub_3F08(v52, v53, &v132);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_0, v47, v48, "UnsupportedValueStrategy#createOutput... %{public}s", v50, 0xCu);
    sub_306C(v51);
    v29 = v114;
  }

  v55 = v29[1];
  v55(v34, v28);
  v56 = v125;
  v57 = v127;
  sub_7861C(v131, &qword_34FCC0, INPlayMediaIntent_ptr, v127);
  v58 = sub_2CB460();
  if (!v58)
  {
    sub_2CB180();
    v58 = sub_2CB170();
  }

  v59 = v58;
  v113(v56, v46, v28);

  v60 = sub_2CDFE0();
  v61 = sub_2CE660();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v113 = v55;
    v64 = v59;
    v65 = v63;
    v132 = v63;
    *v62 = 136315138;
    sub_2CB130();
    v66 = v101;
    sub_2CD3C0();

    v67 = sub_2CB200();
    v69 = v68;
    (*(v102 + 8))(v66, v103);
    v70 = sub_3F08(v67, v69, &v132);

    *(v62 + 4) = v70;
    _os_log_impl(&dword_0, v60, v61, "UnsupportedValueStrategy#createOutput with responseMode = %s", v62, 0xCu);
    sub_306C(v65);
    v59 = v64;

    (v113)(v125, v28);
  }

  else
  {

    v55(v56, v28);
  }

  v71 = v128;
  v72 = sub_2C9B20();
  __chkstk_darwin(v72);
  *(&v101 - 4) = v57;
  *(&v101 - 3) = v59;
  v73 = v126;
  *(&v101 - 2) = v126;
  sub_2CA560();
  v74 = v119;
  v75 = *sub_35E0((v119 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider), *(v119 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider + 24));
  v76 = v118;
  sub_F1E7C(v117, v131, v118);
  v77 = v57;
  v78 = v121;
  v79 = v129;
  if ((*(v121 + 48))(v76, 1, v129) == 1)
  {
    sub_30B8(v76, &unk_3530C0, &unk_2D0A40);
    v80 = sub_35E0((v74 + 160), *(v74 + 184));
    v81 = v116;
    sub_F3F4(v73, v116, &qword_34C6E8, &unk_2D0FF0);
    v82 = *(v81 + *(v105 + 48));
    v83 = *v80;
    sub_1C077C(v81, v82, v77, _swiftEmptyArrayStorage, v123, v124);

    (*(v122 + 8))(v71, v130);
    (*(v104 + 8))(v81, v106);
    v84 = v77;
  }

  else
  {
    v125 = *(v78 + 32);
    v85 = v120;
    (v125)(v120, v76, v79);
    v86 = *(v78 + 16);
    v131 = v59;
    v87 = v112;
    v86(v112, v85, v79);
    v88 = v116;
    sub_F3F4(v73, v116, &qword_34C6E8, &unk_2D0FF0);
    v89 = v122;
    v90 = v110;
    (*(v122 + 16))(v110, v71, v130);
    v91 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v92 = (v111 + *(v107 + 80) + v91) & ~*(v107 + 80);
    v93 = (v108 + *(v89 + 80) + v92) & ~*(v89 + 80);
    v94 = swift_allocObject();
    v95 = v87;
    v96 = v129;
    (v125)(v94 + v91, v95, v129);
    v97 = v94 + v92;
    v73 = v126;
    sub_14A58(v88, v97, &qword_34C6E8, &unk_2D0FF0);
    v98 = v90;
    v99 = v130;
    (*(v89 + 32))(v94 + v93, v98, v130);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v78 + 8))(v120, v96);
    (*(v89 + 8))(v128, v99);
    v84 = v127;
  }

  sub_30B8(v84, &unk_353020, &unk_2D0970);
  return sub_30B8(v73, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_7C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_7C8A0, 0, 0);
}

uint64_t sub_7C8A0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_2CA080();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  v8 = sub_2CD230();
  v0[5] = v8;
  v0[6] = sub_7DDA0(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v9 = sub_F390(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v4, v8);
  sub_20410(&unk_351900, &unk_2D0960);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v10 + 32) = *(v1 + *(v2 + 48));
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2D160;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v15, v0 + 2, v10, v14);
}

uint64_t sub_7CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_2CB260();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, &v20 - v15, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 56)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  return (*(*(v18 - 8) + 8))(v10, v18);
}

uint64_t sub_7CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_7CD6C, 0, 0);
}

uint64_t sub_7CD6C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_2CA080();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  v8 = sub_2CD230();
  v0[5] = v8;
  v0[6] = sub_7DDA0(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v9 = sub_F390(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v4, v8);
  sub_20410(&unk_351900, &unk_2D0960);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v10 + 32) = *(v1 + *(v2 + 48));
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_7EF60;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v15, v0 + 2, v10, v14);
}

uint64_t *PlayMedia.UnsupportedValueStrategy.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_306C(v0 + 4);
  v3 = v0[9];

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);
  v4 = OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_featureFlagProvider;
  v5 = sub_2CC2B0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider));
  return v0;
}

uint64_t PlayMedia.UnsupportedValueStrategy.__deallocating_deinit()
{
  PlayMedia.UnsupportedValueStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_7D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PlayMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_7D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PlayMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_7D1E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v67 = a7;
  v65 = a6;
  v64 = a5;
  v68 = a4;
  v63 = *v7;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v61 - v18;
  v66 = a3;
  if (a3 == 0x657449616964656DLL && v68 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v20 = sub_2CCF90();
    if (v21)
    {
      v22 = v21;
      v61 = v20;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v62 = a1;
      v23 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v19, v23, v12);
      v24 = sub_2CDFE0();
      v25 = sub_2CE670();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "UnsupportedValueStrategy#makeUnsupportedValueOutput logCoreAnalytics...", v26, 2u);
      }

      (*(v13 + 8))(v19, v12);
      sub_2CC0E0();
      sub_2CBC60();
      sub_35E0(v69, v70);
      sub_2CBE60();
      v27 = swift_allocObject();
      v27[2] = v61;
      v27[3] = v22;
      v27[4] = a2;
      v28 = a2;
      sub_2CC0C0();

      sub_306C(v69);
      a1 = v62;
    }
  }

  if (sub_2CE790())
  {
    v29 = v8[2];
    v30 = swift_allocObject();
    v31 = v67;
    *(v30 + 16) = v65;
    *(v30 + 24) = v31;
    *(v30 + 32) = a2;
    *(v30 + 40) = v8;
    *(v30 + 48) = a1;
    v32 = a2;

    v33 = sub_112C0(_swiftEmptyArrayStorage);
    v34 = *(v29 + 120);
    v70 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v71 = &off_3381B8;
    v69[0] = v32;
    v35 = v32;
    sub_24D82C(v33, a1, v69, sub_7DD64, v30);
  }

  else
  {
    if (!sub_2CE750())
    {
      v50 = v8[2];
      v51 = swift_allocObject();
      *(v51 + 16) = v8;
      *(v51 + 24) = a1;
      v52 = v65;
      *(v51 + 32) = a2;
      *(v51 + 40) = v52;
      v53 = v66;
      *(v51 + 48) = v67;
      *(v51 + 56) = v53;
      v54 = v68;
      v55 = v64;
      *(v51 + 64) = v68;
      *(v51 + 72) = v55;
      *(v51 + 80) = v63;
      v56 = a2;

      sub_19E928(a1, v53, v54, v55, v56, sub_7DCE8, v51);
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v17, v36, v12);
    v37 = sub_2CDFE0();
    v38 = sub_2CE690();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "UnsupportedValueStrategy#makeUnsupportedValueOutput We need to prompt the user to sign GDPR", v39, 2u);
    }

    (*(v13 + 8))(v17, v12);
    v40 = sub_2CE6F0();
    v62 = v8[2];
    v41 = swift_allocObject();
    v42 = v68;
    *(v41 + 16) = v66;
    *(v41 + 24) = v42;
    v43 = v64;
    *(v41 + 32) = v64;
    *(v41 + 40) = v8;
    *(v41 + 48) = a1;
    *(v41 + 56) = a2;
    v44 = v67;
    *(v41 + 64) = v65;
    *(v41 + 72) = v44;
    v45 = v40;
    *(v41 + 80) = v45;
    *(v41 + 88) = v63;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x61667275536E6163;
    *(inited + 40) = 0xEF7055706F506563;
    v47 = a2;

    v48 = v43;
    if (sub_2CB610() & 1) != 0 || (sub_2CB5F0())
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_2CB630();
    }

    *(inited + 48) = v49 & 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000000002DB4B0;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v45;
    v58 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v59 = *(v62 + 120);
    v70 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v71 = &off_3381B8;
    v69[0] = v47;
    v60 = v47;
    sub_24D1A8(v58, a1, v69, sub_7DD20, v41);
  }

  return sub_30B8(v69, &qword_34C6C0, &qword_2D0710);
}

uint64_t type metadata accessor for PlayMedia.UnsupportedValueStrategy()
{
  result = qword_34DC38;
  if (!qword_34DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7DA68()
{
  result = sub_2CC2B0();
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

uint64_t sub_7DB3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_7C7FC(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_7DCE8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  return sub_7AB20(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_7DD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7DDA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7DDE8()
{
  result = qword_34FF30;
  if (!qword_34FF30)
  {
    sub_2DB30(&qword_34DD48, &qword_2D5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF30);
  }

  return result;
}

uint64_t sub_7DE54(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v129 = a4;
  v130 = a5;
  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v123 = &v107 - v10;
  v135 = sub_2CD230();
  v126 = *(v135 - 8);
  v11 = *(v126 + 64);
  v12 = __chkstk_darwin(v135);
  v120 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v13;
  __chkstk_darwin(v12);
  v125 = &v107 - v14;
  v15 = sub_2C9B80();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v122 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2CA630();
  v128 = *(v138 - 8);
  v18 = *(v128 + 64);
  v19 = __chkstk_darwin(v138);
  v118 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v20;
  __chkstk_darwin(v19);
  v22 = &v107 - v21;
  v111 = sub_2CB260();
  v110 = *(v111 - 8);
  v23 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v121 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v107 - v31;
  __chkstk_darwin(v30);
  v34 = &v107 - v33;
  v35 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v112 = *(v35 - 8);
  v36 = *(v112 + 64);
  v37 = __chkstk_darwin(v35);
  v124 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v38;
  __chkstk_darwin(v37);
  v40 = &v107 - v39;
  v41 = sub_2CA130();
  v115 = *(v41 - 8);
  v42 = *(v115 + 16);
  v117 = v41;
  v42(v40, a1);
  v116 = v35;
  v43 = *(v35 + 48);
  v139 = v40;
  *&v40[v43] = a2;
  v44 = qword_34BF58;
  v45 = a2;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v47 = v26[2];
  v133 = v46;
  v131 = v47;
  v47(v34, v46, v25);
  v48 = sub_2CDFE0();
  v49 = sub_2CE690();
  v50 = os_log_type_enabled(v48, v49);
  v134 = v26;
  v137 = v22;
  v127 = a3;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v140 = v52;
    *v51 = 136446210;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v140);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v48, v49, "UnsupportedValueStrategy#createSafetySelfHarmOutput... %{public}s", v51, 0xCu);
    sub_306C(v52);
    v26 = v134;
  }

  v132 = v26[1];
  v132(v34, v25);
  v56 = sub_2CB460();
  if (!v56)
  {
    sub_2CB180();
    v56 = sub_2CB170();
  }

  v57 = v56;
  v131(v32, v133, v25);

  v58 = sub_2CDFE0();
  v59 = sub_2CE660();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v108 = v32;
    v62 = v61;
    v140 = v61;
    *v60 = 136315138;
    sub_2CB130();
    v63 = v109;
    sub_2CD3C0();

    v64 = sub_2CB200();
    v65 = v57;
    v67 = v66;
    (*(v110 + 8))(v63, v111);
    v68 = sub_3F08(v64, v67, &v140);
    v57 = v65;

    *(v60 + 4) = v68;
    _os_log_impl(&dword_0, v58, v59, "UnsupportedValueStrategy#createSafetySelfHarmOutput with responseMode = %s", v60, 0xCu);
    sub_306C(v62);

    v69 = v108;
  }

  else
  {

    v69 = v32;
  }

  v132(v69, v25);
  v70 = v137;
  v71 = v123;
  v72 = sub_2C9B30();
  __chkstk_darwin(v72);
  v73 = v127;
  *(&v107 - 4) = v127;
  *(&v107 - 3) = v57;
  v74 = v139;
  *(&v107 - 2) = v139;
  sub_2CA560();
  v75 = *sub_35E0((v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider), *(v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider + 24));
  sub_F2CA4(v71);
  v76 = v126;
  v77 = v135;
  if ((*(v126 + 48))(v71, 1, v135) == 1)
  {
    sub_30B8(v71, &unk_3530C0, &unk_2D0A40);
    v78 = v121;
    v131(v121, v133, v25);
    v79 = sub_2CDFE0();
    v80 = sub_2CE680();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v140 = v82;
      *v81 = 136446210;
      v83 = sub_2CCCA0();
      v85 = sub_3F08(v83, v84, &v140);
      v74 = v139;

      *(v81 + 4) = v85;
      _os_log_impl(&dword_0, v79, v80, "UnsupportedValueStrategy#createSafetySelfHarmOutput snippet generation failed! %{public}s", v81, 0xCu);
      sub_306C(v82);

      v86 = v121;
    }

    else
    {

      v86 = v78;
    }

    v132(v86, v25);
    v102 = sub_35E0((v136 + 160), *(v136 + 184));
    v103 = v124;
    sub_F3F4(v74, v124, &qword_34C6E8, &unk_2D0FF0);
    v104 = *(v103 + *(v116 + 48));
    v105 = *v102;
    sub_1C077C(v103, v104, v73, _swiftEmptyArrayStorage, v129, v130);

    (*(v128 + 8))(v70, v138);
    (*(v115 + 8))(v103, v117);
  }

  else
  {
    v134 = *(v76 + 32);
    v87 = v125;
    (v134)(v125, v71, v77);
    v88 = v120;
    (*(v76 + 16))(v120, v87, v77);
    v89 = v124;
    sub_F3F4(v74, v124, &qword_34C6E8, &unk_2D0FF0);
    v90 = v128;
    v91 = v118;
    (*(v128 + 16))(v118, v70, v138);
    v92 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v93 = *(v112 + 80);
    v136 = v57;
    v94 = (v119 + v93 + v92) & ~v93;
    v95 = (v113 + *(v90 + 80) + v94) & ~*(v90 + 80);
    v96 = swift_allocObject();
    v97 = v96 + v92;
    v74 = v139;
    v98 = v88;
    v99 = v135;
    (v134)(v97, v98, v135);
    sub_14A58(v89, v96 + v94, &qword_34C6E8, &unk_2D0FF0);
    v100 = v91;
    v101 = v138;
    (*(v90 + 32))(v96 + v95, v100, v138);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v76 + 8))(v125, v99);
    (*(v90 + 8))(v137, v101);
  }

  return sub_30B8(v74, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_7EADC()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_7ECF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_7CCC8(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_7EE9C(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_79E24(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v4);
}

uint64_t sub_7EF68(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];

  return v1;
}

uint64_t sub_7EFAC(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];

  return v1;
}

uint64_t sub_7F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2CAB40();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_7F104(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2CEC20();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_7FF74(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t static ShazamKitMatch.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ShazamKitMatch.supportsSecureCoding = a1;
  return result;
}

uint64_t ShazamKitMatch.skId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ShazamKitMatch.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ShazamKitMatch.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ShazamKitMatch.artist.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ShazamKitMatch.appleMusicID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ShazamKitMatch.lyricsSnippet.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ShazamKitMatch.genre.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ShazamKitMatch.isrc.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc + 8);

  return v1;
}

void *ShazamKitMatch.__allocating_init(matchedSong:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return ShazamKitMatch.init(matchedSong:)(a1);
}

void *ShazamKitMatch.init(matchedSong:)(void *a1)
{
  v3 = sub_20410(&unk_3519B0, &qword_2D1230);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v87 - v9;
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  v14 = &v87 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v87 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v87 - v19;
  __chkstk_darwin(v18);
  v24 = &v87 - v23;
  if (a1)
  {
    v88 = v22;
    v89 = v21;
    v25 = [a1 shazamID];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2CE270();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v1[2] = v27;
    v1[3] = v29;
    v32 = [a1 title];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2CE270();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v1[4] = v34;
    v1[5] = v36;
    v37 = [a1 subtitle];
    if (v37)
    {
      v38 = v37;
      v39 = sub_2CE270();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v1[6] = v39;
    v1[7] = v41;
    v42 = [a1 artist];
    if (v42)
    {
      v43 = v42;
      v44 = sub_2CE270();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v1[8] = v44;
    v1[9] = v46;
    v47 = [a1 appleMusicID];
    if (v47)
    {
      v48 = v47;
      v49 = sub_2CE270();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v1[10] = v49;
    v1[11] = v51;
    v52 = [a1 lyricsSnippet];
    if (v52)
    {
      v53 = v52;
      v54 = sub_2CE270();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v1[12] = v54;
    v1[13] = v56;
    v57 = [a1 genres];
    v58 = sub_2CE410();

    if (v58[2])
    {
      v59 = v58[4];
      v60 = v58[5];
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v1[14] = v59;
    v1[15] = v60;
    v61 = [a1 webURL];
    if (v61)
    {
      v62 = v61;
      sub_2C8D60();

      v63 = sub_2C8D90();
      (*(*(v63 - 8) + 56))(v20, 0, 1, v63);
    }

    else
    {
      v64 = sub_2C8D90();
      (*(*(v64 - 8) + 56))(v20, 1, 1, v64);
    }

    sub_7FD30(v20, v24);
    sub_7FD30(v24, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL);
    v65 = [a1 artworkURL];
    if (v65)
    {
      v66 = v65;
      sub_2C8D60();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = sub_2C8D90();
    v69 = *(*(v68 - 8) + 56);
    v70 = 1;
    v69(v14, v67, 1, v68);
    sub_7FD30(v14, v17);
    sub_7FD30(v17, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL);
    v71 = [a1 videoURL];
    if (v71)
    {
      v72 = v71;
      sub_2C8D60();

      v70 = 0;
    }

    v73 = 1;
    v69(v10, v70, 1, v68);
    v74 = v88;
    sub_7FD30(v10, v88);
    sub_7FD30(v74, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL);
    v75 = [a1 appleMusicURL];
    v76 = v90;
    if (v75)
    {
      v77 = v75;
      sub_2C8D60();

      v73 = 0;
    }

    v69(v76, v73, 1, v68);
    v78 = v89;
    sub_7FD30(v76, v89);
    sub_7FD30(v78, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL);
    v79 = [a1 explicitContent];
    *(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_explicitContent) = v79;
    v80 = [a1 isrc];
    if (v80)
    {
      v81 = v80;
      v82 = sub_2CE270();
      v84 = v83;
    }

    else
    {

      v82 = 0;
      v84 = 0;
    }

    v85 = (v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
    *v85 = v82;
    v85[1] = v84;
  }

  else
  {
    type metadata accessor for ShazamKitMatch();
    v30 = *(*v1 + 48);
    v31 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void *ShazamKitMatch.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL);
  v8 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc + 8);

  return v0;
}

uint64_t ShazamKitMatch.__deallocating_deinit()
{
  ShazamKitMatch.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_7FC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShazamKitMatch()
{
  result = qword_34DD88;
  if (!qword_34DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7FD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FDA0(uint64_t a1)
{
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_7FE10()
{
  sub_7FEC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7FEC8()
{
  if (!qword_34DD98)
  {
    sub_2C8D90();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34DD98);
    }
  }
}

uint64_t sub_7FF20(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_7FF74(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_7FFC8()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);
  v3 = v0[14];

  sub_306C(v0 + 15);
  v4 = v0[21];

  return swift_deallocClassInstance();
}

uint64_t _s27NeedsDisambiguationStrategyCMa_0()
{
  result = qword_34DEA8;
  if (!qword_34DEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static AudioAceOutputHelper.makeCompletionViewOutput(templateResult:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:disableDeviceRacing:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v87 = a2;
  v88 = a6;
  LODWORD(v91) = a5;
  v90 = a4;
  v16 = a10;
  v86 = a11;
  v83 = sub_2CA3C0();
  v17 = *(v83 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v83);
  v82 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (v75 - v21);
  v89 = sub_2C8E80();
  v23 = *(v89 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v89);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_81330();
  v79 = a9;
  if (v27)
  {
    if (a3 >> 62)
    {
      goto LABEL_31;
    }

    if (!*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  v75[3] = a3;
  v30 = sub_2CA100();
  a3 = *(v30 + 16);
  if (a3)
  {
    v76 = a10;
    v75[1] = a7;
    v75[2] = a8;
    v93 = _swiftEmptyArrayStorage;
    v86 = v30;
    sub_2CED20();
    v31 = v86;
    v16 = 0;
    v32 = 0;
    v33 = *(v86 + 16);
    v84 = (v23 + 8);
    v85 = v33;
    v81 = (v17 + 88);
    v80 = enum case for BehaviorAfterSpeaking.dingAndListen(_:);
    v77 = (v17 + 96);
    v78 = (v17 + 8);
    while (1)
    {
      if (v85 == v32)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        if (!sub_2CEDA0())
        {
LABEL_32:
          v76 = v16;
          v65 = a1;
          v66 = [objc_allocWithZone(SAUIAddDialogs) init];
          sub_2C8E70();
          sub_2C8E50();
          (*(v23 + 8))(v26, v89);
          v67 = sub_2CE260();

          [v66 setAceId:v67];

          sub_81D44(v65, v91 & 1);
          sub_334A0(0, &qword_34DFC8, SADialog_ptr);
          isa = sub_2CE400().super.isa;

          [v66 setDialogs:isa];

          sub_334A0(0, &qword_353110, NSNumber_ptr);
          v69 = sub_2CEB10(v90 & 1).super.super.isa;
          [v66 setListenAfterSpeaking:v69];

          sub_2CA0E0();
          v70 = v83;
          if ((*(v17 + 88))(v22, v83) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
          {
            (*(v17 + 96))(v22, v70);
            v71 = *v22;
            v72 = v22[1];
            v73 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
            v74 = sub_2CE260();

            [v73 setStartAlertSoundID:v74];

            [v66 setListenAfterSpeakingBehavior:v73];
          }

          else
          {
            (*(v17 + 8))(v22, v70);
          }

          if (v86)
          {
            [v66 setRequestEndBehavior:?];
          }

          sub_2C9E10();

          return;
        }

LABEL_4:
        v28 = sub_81D44(a1, v91 & 1);
        sub_82014(v28, a3, (v90 & 1));

        sub_2CE270();
        v91 = sub_829E4();

        sub_2C9E30();
        v29 = v91;

        return;
      }

      if (v32 >= *(v31 + 16))
      {
        goto LABEL_29;
      }

      v34 = *(v31 + v16 + 32);
      v17 = *(v31 + v16 + 40);
      v35 = objc_allocWithZone(SAUIAssistantUtteranceView);

      v36 = a1;
      v37 = [v35 init];
      sub_2C8E70();
      sub_2C8E50();
      (*v84)(v26, v89);
      v38 = sub_2CE260();

      [v37 setAceId:v38];

      sub_2CA0D0();
      v39 = sub_2CE260();

      [v37 setDialogIdentifier:v39];

      v40 = sub_2CE260();
      [v37 setText:v40];

      v41 = v37;
      a1 = v36;
      v22 = v41;
      [v41 setCanUseServerTTS:v91 & 1];
      [v22 setDisableDeviceRacing:v88 & 1];
      if (v87)
      {
        v23 = *(sub_2CA110() + 16);

        if (v32 < v23)
        {
          v42 = sub_2CA110();
          if (v32 >= *(v42 + 16))
          {
            goto LABEL_30;
          }

          v43 = *(v42 + v16 + 32);
          v44 = *(v42 + v16 + 40);

          a1 = v36;

          v45 = sub_2CE260();

          [v22 setSpeakableText:v45];
        }
      }

      if ((v90 & 1) != 0 && (v46 = *(sub_2CA100() + 16), , v32 == v46 - 1))
      {
        sub_334A0(0, &qword_353110, NSNumber_ptr);
        v47 = sub_2CEB10(1).super.super.isa;
        [v22 setListenAfterSpeaking:v47];

        v48 = v82;
        sub_2CA0E0();
        v49 = v48;
        v50 = v48;
        v51 = v83;
        v52 = (*v81)(v50, v83);
        if (v52 != v80)
        {

          (*v78)(v49, v51);

          goto LABEL_11;
        }

        (*v77)(v49, v51);
        v53 = *v49;
        v54 = v49[1];
        v55 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
        v56 = sub_2CE260();

        [v55 setStartAlertSoundID:v56];

        [v22 setListenAfterSpeakingBehavior:v55];

        a1 = v36;
      }

      else
      {
      }

LABEL_11:
      ++v32;
      sub_2CED00();
      v23 = v93[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v16 += 16;
      v31 = v86;
      if (a3 == v32)
      {

        v57 = v93;
        goto LABEL_25;
      }
    }
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_25:
  v58 = SAUIDialogPhaseCompletionValue;
  v59 = objc_allocWithZone(SAUIAddViews);
  v60 = v58;
  v61 = [v59 init];
  if (v57 >> 62)
  {
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    v62 = sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    v62 = v57;
  }

  v92 = v62;

  sub_80E58(v63, sub_80FF0);
  sub_80E58(_swiftEmptyArrayStorage, sub_80FF0);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  v64 = sub_2CE400().super.isa;

  [v61 setViews:v64];

  [v61 setDialogPhase:v60];
  sub_2C9E30();
}

uint64_t sub_80B10(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_B8FA8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_80C08(uint64_t result)
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

  v3 = sub_B91D0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_2C9BA0();
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

uint64_t sub_80D34(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_B90C4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_80E58(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2CEDA0();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_2CEDA0();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_80F50(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(&dword_10 + v11) + 32, (*(&dword_18 + v11) >> 1) - *(&dword_10 + v11), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_80F50(uint64_t a1)
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
    sub_2CEDA0();
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
  result = sub_2CECE0();
  *v1 = result;
  return result;
}

uint64_t sub_80FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2CEDA0();
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
      result = sub_2CEDA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_82AFC(&qword_34DFF0, &qword_34DFE8, &qword_2D1D38);
          for (i = 0; i != v6; ++i)
          {
            sub_20410(&qword_34DFE8, &qword_2D1D38);
            v9 = sub_205994(v13, i, a3);
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
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
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

uint64_t sub_81190(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2CEDA0();
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
      result = sub_2CEDA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_82AFC(&qword_34DFD8, &qword_34DFD0, &qword_2D1D28);
          for (i = 0; i != v6; ++i)
          {
            sub_20410(&qword_34DFD0, &qword_2D1D28);
            v9 = sub_205A20(v13, i, a3);
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
        sub_334A0(0, &unk_351910, SFCardSection_ptr);
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

uint64_t sub_81330()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_20410(&qword_34DFF8, &qword_2D1D40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (sub_2CB460())
  {
    sub_2CB140();

    sub_2CB2C0();

    v12 = sub_2CB3A0();
    if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
    {
      sub_30B8(v11, &qword_34DFF8, &qword_2D1D40);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v13 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v5, v13, v0);
      v14 = sub_2CDFE0();
      v15 = sub_2CE670();
      if (!os_log_type_enabled(v14, v15))
      {
        v17 = 0;
        goto LABEL_19;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "AceOutputHelper found a setting for personalDomainsAuthenticationMode. Assuming companion mode and not generating Modes compatible output.", v16, 2u);
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = sub_2CB3A0();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  sub_30B8(v11, &qword_34DFF8, &qword_2D1D40);
  if (sub_2CB610() & 1) != 0 || (sub_2CB5F0() & 1) != 0 || (sub_2CB600())
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_2CB640();
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v7, v19, v0);
  v14 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (!os_log_type_enabled(v14, v20))
  {
    v5 = v7;
    goto LABEL_19;
  }

  v21 = swift_slowAlloc();
  *v21 = 67109120;
  *(v21 + 4) = v17 & 1;
  _os_log_impl(&dword_0, v14, v20, "AceOutputHelper will use Modes compatible output: %{BOOL}d", v21, 8u);
  v5 = v7;
LABEL_16:

LABEL_19:

  (*(v1 + 8))(v5, v0);
  return v17 & 1;
}

id sub_81754(uint64_t a1, int a2)
{
  LODWORD(v43) = a2;
  v2 = sub_20410(&qword_34DFE0, &qword_2D1D30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v45 = v42 - v4;
  v5 = sub_2C9DB0();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v44 = v42 - v11;
  __chkstk_darwin(v10);
  v13 = v42 - v12;
  v14 = sub_2C8E80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(SADialog) init];
  sub_2C8E70();
  sub_2C8E50();
  v20 = *(v15 + 8);
  v20(v18, v14);
  v21 = sub_2CE260();

  [v19 setAceId:v21];

  sub_2CA1E0();
  v22 = sub_2CE260();

  [v19 setDialogIdentifier:v22];

  [v19 setSpokenOnly:sub_2CA1D0() & 1];
  [v19 setCanUseServerTTS:v43 & 1];
  v23 = [objc_allocWithZone(SADialogText) init];
  sub_2C8E70();
  sub_2C8E50();
  v42[1] = v15 + 8;
  v43 = v14;
  v42[0] = v20;
  v20(v18, v14);
  v24 = sub_2CE260();

  [v23 setAceId:v24];

  sub_2CA200();
  sub_2C9DA0();
  v25 = *(v48 + 8);
  v26 = v13;
  v27 = v47;
  v25(v26, v47);
  v28 = sub_2CE260();

  [v23 setText:v28];

  v29 = v27;
  v30 = v44;
  sub_2CA200();
  sub_2C9D90();
  v32 = v31;
  v44 = v25;
  v25(v30, v29);
  if (v32)
  {
    v33 = sub_2CE260();
  }

  else
  {
    v33 = 0;
  }

  [v23 setSpeakableTextOverride:v33];

  [v19 setContent:v23];
  v34 = v45;
  sub_2CA1F0();
  v35 = v48;
  if ((*(v48 + 48))(v34, 1, v29) == 1)
  {

    sub_30B8(v34, &qword_34DFE0, &qword_2D1D30);
  }

  else
  {
    (*(v35 + 32))(v46, v34, v29);
    v36 = [objc_allocWithZone(SADialogText) init];
    sub_2C8E70();
    sub_2C8E50();
    (v42[0])(v18, v43);
    v37 = sub_2CE260();

    [v36 setAceId:v37];

    sub_2C9DA0();
    v38 = sub_2CE260();

    [v36 setText:v38];

    sub_2C9D90();
    if (v39)
    {
      v40 = sub_2CE260();
    }

    else
    {
      v40 = 0;
    }

    [v36 setSpeakableTextOverride:v40];

    [v19 setCaption:v36];
    (v44)(v46, v47);
  }

  return v19;
}

void *sub_81D44(uint64_t a1, char a2)
{
  v3 = sub_2CA210();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CA120();
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v10 = *(v4 + 16);
    v11 = *(v4 + 80);
    v15 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v16 = *(v4 + 72);
    v17 = v10;
    do
    {
      v17(v7, v12, v3);
      sub_81754(v7, a2 & 1);
      (*(v4 + 8))(v7, v3);
      sub_2CED00();
      v13 = v18[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v12 += v16;
      --v9;
    }

    while (v9);

    return v18;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_81F00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_2CEDA0();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_80F50(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1) - *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_82014(unint64_t a1, unint64_t a2, void *a3)
{
  v73 = a3;
  v74 = a1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v69 = &v66 - v11;
  __chkstk_darwin(v10);
  v13 = &v66 - v12;
  v70 = a2 >> 62;
  v14 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_90;
  }

  v15 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v16 = 0;
  v17 = a2 & 0xC000000000000001;
  while (v15 != v16)
  {
    if (v17)
    {
      v18 = sub_2CECD0();
    }

    else
    {
      if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_88;
      }

      v18 = *(a2 + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v15 = sub_2CEDA0();
      goto LABEL_3;
    }

    v20 = [v18 dialog];

    ++v16;
    if (v20)
    {

      if (qword_34BF58 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_93;
    }
  }

  v21 = v74;
  v66 = v74 >> 62;
  if (v74 >> 62)
  {
    v22 = sub_2CEDA0();
  }

  else
  {
    v22 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
  }

  v23 = v71;
  v9 = v72;
  if (v70)
  {
    v24 = sub_2CEDA0();
  }

  else
  {
    v24 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v68 = v22;
  if (v24 < v22)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v23, static Logger.default);
    swift_beginAccess();
    (*(v72 + 16))(v13, v31, v23);
    v21 = v74;

    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v67 = v15;
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      if (v66)
      {
        v35 = sub_2CEDA0();
      }

      else
      {
        v35 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
      }

      *(v34 + 4) = v35;

      *(v34 + 12) = 2048;
      if (v70)
      {
        v36 = sub_2CEDA0();
      }

      else
      {
        v36 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      }

      *(v34 + 14) = v36;

      _os_log_impl(&dword_0, v32, v33, "AceOutputHelper is applying dialogs to snippets but there are %ld dialogs and %ld snippets. We will attempt to attach dialogs to as many snippets as possible and add empty AceViews as needed.", v34, 0x16u);

      v21 = v74;
      v15 = v67;
    }

    else
    {
    }

    v9 = v72;
    (*(v72 + 8))(v13, v23);
    v22 = v68;
  }

  if (v22 < 0)
  {
    __break(1u);
LABEL_93:
    swift_once();
LABEL_17:
    v25 = v71;
    v26 = sub_3ED0(v71, static Logger.default);
    swift_beginAccess();
    v27 = v72;
    (*(v72 + 16))(v9, v26, v25);
    v28 = sub_2CDFE0();
    v29 = sub_2CE660();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "AceOutputHelper detected SADialogs on one or more snippets. Declining to modify provided snippets", v30, 2u);
    }

    (*(v27 + 8))(v9, v25);

    return a2;
  }

  v37 = _swiftEmptyArrayStorage;
  if (!v22)
  {
    goto LABEL_56;
  }

  v67 = v15;
  v38 = v24;
  v76[0] = _swiftEmptyArrayStorage;
  v13 = v76;
  sub_2CED20();
  v39 = v21 & 0xC000000000000001;
  v9 = 4;
  v40 = v22;
  do
  {
    if (v9 - 4 < v38)
    {
      if (v17)
      {
        v42 = sub_2CECD0();
        if (!v39)
        {
LABEL_43:
          v43 = *(v74 + 8 * v9);
LABEL_44:
          v44 = v43;
          [v42 setDialog:{v43, v66}];

          if (v17)
          {
            v45 = sub_2CECD0();
          }

          else
          {
            v45 = *(a2 + 8 * v9);
          }

          v50 = v45;
          sub_334A0(0, &qword_353110, NSNumber_ptr);
          isa = sub_2CEB10(v73 & 1).super.super.isa;
          [v50 setListenAfterSpeaking:isa];

          if (v17)
          {
            sub_2CECD0();
          }

          else
          {
            v52 = *(a2 + 8 * v9);
          }

          goto LABEL_38;
        }
      }

      else
      {
        if ((v9 - 4) >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_89;
        }

        v42 = *(a2 + 8 * v9);
        if (!v39)
        {
          goto LABEL_43;
        }
      }

      v43 = sub_2CECD0();
      goto LABEL_44;
    }

    v46 = [objc_allocWithZone(SAAceView) init];
    if (v39)
    {
      v47 = sub_2CECD0();
    }

    else
    {
      v47 = *(v74 + 8 * v9);
    }

    v48 = v47;
    [v46 setDialog:{v47, v66}];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v49 = sub_2CEB10(v73 & 1).super.super.isa;
    [v46 setListenAfterSpeaking:v49];

LABEL_38:
    v13 = v76;
    sub_2CED00();
    v41 = *(v76[0] + 16);
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    ++v9;
    --v40;
  }

  while (v40);
  v37 = v76[0];
  v23 = v71;
  v9 = v72;
  v24 = v38;
  v15 = v67;
  v22 = v68;
LABEL_56:
  if (v22 >= v24)
  {
    return v37;
  }

  v73 = v37;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v53 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v54 = v9;
  (*(v9 + 16))(v69, v53, v23);

  v55 = sub_2CDFE0();
  v56 = sub_2CE670();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    if (v66)
    {
      v58 = sub_2CEDA0();
    }

    else
    {
      v58 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
    }

    *(v57 + 4) = v58;

    *(v57 + 12) = 2048;
    if (v70)
    {
      v59 = sub_2CEDA0();
    }

    else
    {
      v59 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    *(v57 + 14) = v59;

    _os_log_impl(&dword_0, v55, v56, "AceOutputHelper received %ld dialogs but there are %ld snippets. Adding remaining snippets without dialog.", v57, 0x16u);

    v22 = v68;
  }

  else
  {
  }

  result = (*(v54 + 8))(v69, v23);
  if (v15 < v22)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v70)
  {
    goto LABEL_73;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (result >= v22)
  {
LABEL_75:
    if (result >= v15)
    {
      if (!v17 || v22 == v15)
      {

        if (!v70)
        {
LABEL_82:
          v63 = v14 + 32;
          v64 = (2 * v15) | 1;
LABEL_85:
          v75 = v73;
          sub_81F00(v14, v63, v22, v64);
          swift_unknownObjectRelease();
          return v75;
        }
      }

      else
      {
        if (v22 >= v15)
        {
          goto LABEL_97;
        }

        sub_334A0(0, &qword_34CD10, SAAceView_ptr);

        v61 = v22;
        do
        {
          v62 = v61 + 1;
          sub_2CECC0(v61);
          v61 = v62;
        }

        while (v15 != v62);
        if (!v70)
        {
          goto LABEL_82;
        }
      }

      v14 = sub_2CEDB0();
      v22 = v65;
      goto LABEL_85;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
LABEL_73:
  result = sub_2CEDA0();
  if (result >= v22)
  {
    result = sub_2CEDA0();
    goto LABEL_75;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

id sub_829E4()
{
  v0 = [objc_allocWithZone(SAUIAddViews) init];

  sub_80E58(v1, sub_80FF0);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  isa = sub_2CE400().super.isa;

  [v0 setViews:isa];

  v3 = sub_2CE260();
  [v0 setDialogPhase:v3];

  return v0;
}

uint64_t sub_82AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_82B50(uint64_t a1)
{
  v3 = sub_20410(&qword_34E000, &qword_2D1D48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = sub_2CE260();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  sub_2CBAA0();
  if (v11)
  {
    v12 = sub_2CE260();
  }

  else
  {
    v12 = 0;
  }

  [v10 setTitle:v12];

  sub_2CBA40();
  if (v13)
  {
    v14 = sub_2CE260();
  }

  else
  {
    v14 = 0;
  }

  [v10 setTrackArtist:v14];

  sub_2CBA20();
  if (v15)
  {
    v16 = sub_2CE260();
  }

  else
  {
    v16 = 0;
  }

  [v10 setAlbumArtist:v16];

  sub_2CBA90();
  if (v17)
  {
    v18 = sub_2CE260();
  }

  else
  {
    v18 = 0;
  }

  [v10 setAlbum:v18];

  sub_2CBAC0();
  if (v19)
  {
    v20 = sub_2CE260();
  }

  else
  {
    v20 = 0;
  }

  [v10 setContentId:v20];

  if (sub_2CBA70() == 2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_2CE480().super.super.isa;
  }

  [v10 setLyricsAvailable:isa];

  v22 = COERCE_DOUBLE(sub_2CBAB0());
  if (v23)
  {
    v22 = 0.0;
  }

  [v10 setDuration:v22];
  sub_2CBA30();
  v24 = sub_2C8E30();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v6, 1, v24) != 1)
  {
    v26 = sub_2C8DE0().super.isa;
    (*(v25 + 8))(v6, v24);
  }

  [v10 setReleaseDate:v26];

  if (sub_2CBAD0() == 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2CE480().super.super.isa;
  }

  [v10 setIsLoading:v27];

  sub_2CBA60();
  if (v28)
  {
    v29 = sub_2CE260();
  }

  else
  {
    v29 = 0;
  }

  [v10 setPlaylistTitle:v29];

  sub_2CBA50();
  if (v30)
  {
    v31 = sub_2CE260();
  }

  else
  {
    v31 = 0;
  }

  [v10 setStationTitle:v31];

  if (sub_2CBA80() == 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_2CE480().super.super.isa;
  }

  [v10 setNoAppProvidedData:v32];

  v33 = sub_2CBAF0();
  (*(*(v33 - 8) + 8))(a1, v33);
  return v10;
}

uint64_t _s23AudioFlowDelegatePlugin8AddMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So05INAddfH0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_893E8(a1, a2, v14, v13, v12, &qword_34DD28, a3, INAddMediaIntent_ptr, &protocol witness table for INAddMediaIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin8AddMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So05INAddfH0CtF_0, &unk_332A58, sub_91D58, &qword_34BF30, &static AddMedia.intentHandler, sub_27DF8);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t _s23AudioFlowDelegatePlugin14SearchForMediaO20HandleIntentStrategyC011makeSiriKitI7Handler3app6intent0lmB00lmiN0VSg0L13AppResolution0Q0C_So08INSearchfgI0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_893E8(a1, a2, v14, v13, v12, &qword_34CB98, a3, INSearchForMediaIntent_ptr, &protocol witness table for INSearchForMediaIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin14SearchForMediaO20HandleIntentStrategyC011makeSiriKitI7Handler3app6intent0lmB00lmiN0VSg0L13AppResolution0Q0C_So08INSearchfgI0CtF_0, &unk_332A30, sub_91D58, &qword_34BFF8, &static SearchForMedia.intentHandler, sub_1D3508);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_893E8(a1, a2, v14, v13, v12, &qword_34D368, a3, INUpdateMediaAffinityIntent_ptr, &protocol witness table for INUpdateMediaAffinityIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0, &unk_332A08, sub_91D58, &qword_34BFB0, &static UpdateMediaAffinity.intentHandler, sub_187554);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t _s23AudioFlowDelegatePlugin9PlayMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So06INPlayfH0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_8ABFC(a1, a2, v14, v13, v12, a3);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t sub_83764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v17, v18);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v17);
  v18 = v6;
  v19 = &protocol witness table for AirPlayRouteProvider;
  v17[0] = v9;
  v16[3] = sub_2CB9E0();
  v16[4] = &protocol witness table for DeviceProvider;
  sub_F390(v16);
  sub_2CB9C0();
  v15[3] = sub_2CC7A0();
  v15[4] = &protocol witness table for MediaRemoteAPIProvider;
  v15[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v14, v14[3]);
  v10 = sub_2CBE60();
  v12 = v11;
  sub_306C(v14);
  a3(a1, a2, v17, v16, v15, v10, v12);

  sub_306C(v15);
  sub_306C(v16);
  return sub_306C(v17);
}

uint64_t sub_838F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_8E570(a1, a2, v14, v13, v12, &qword_34D368, a3, INUpdateMediaAffinityIntent_ptr, &protocol witness table for INUpdateMediaAffinityIntent, sub_2A07EC, sub_838F8, &unk_332990, sub_91D58, &qword_34BFB0, &static UpdateMediaAffinity.intentHandler, sub_187554);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t sub_83B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_8E570(a1, a2, v14, v13, v12, &qword_34CB98, a3, INSearchForMediaIntent_ptr, &protocol witness table for INSearchForMediaIntent, sub_2A07EC, sub_83B08, &unk_332968, sub_91D58, &qword_34BFF8, &static SearchForMedia.intentHandler, sub_1D3508);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t sub_83D18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v14, v15);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2CC3D0();
  sub_306C(v14);
  v15 = v6;
  v16 = &protocol witness table for AirPlayRouteProvider;
  v14[0] = v9;
  v13[3] = sub_2CB9E0();
  v13[4] = &protocol witness table for DeviceProvider;
  sub_F390(v13);
  sub_2CB9C0();
  v12[3] = sub_2CC7A0();
  v12[4] = &protocol witness table for MediaRemoteAPIProvider;
  v12[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v11, v11[3]);
  sub_2CBE60();
  sub_306C(v11);
  sub_8E570(a1, a2, v14, v13, v12, &qword_34DD28, a3, INAddMediaIntent_ptr, &protocol witness table for INAddMediaIntent, sub_2A07EC, sub_83D18, &unk_3329B8, sub_91D58, &qword_34BF30, &static AddMedia.intentHandler, sub_27DF8);

  sub_306C(v12);
  sub_306C(v13);
  return sub_306C(v14);
}

uint64_t AddMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  v46 = a5;
  v10 = sub_2CE000();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  v14 = v5[7];
  sub_35E0(v5 + 3, v5[6]);
  if (sub_2CC4B0())
  {
    v42 = a2;
    v43 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = a3;
    v15 = v10;
    v16 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    v17 = v45;
    (*(v45 + 16))(v13, v16, v15);
    v18 = a1;

    v19 = sub_2CDFE0();
    v20 = sub_2CE670();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v17;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v18;
      v48 = v23;
      *v22 = 136315394;
      sub_2CCFB0();
      v41 = v15;
      sub_91C6C(&qword_34C170, 255, &type metadata accessor for App);
      v24 = sub_2CEE70();
      v26 = sub_3F08(v24, v25, &v48);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v27 = sub_2CCCA0();
      v29 = sub_3F08(v27, v28, &v48);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_0, v19, v20, "HandleIntentStrategy#makeIntentHandledResponseUsingRF for app: %s using RF 2.0 %{public}s", v22, 0x16u);
      swift_arrayDestroy();

      (*(v21 + 8))(v13, v41);
    }

    else
    {

      (*(v17 + 8))(v13, v15);
    }

    v32 = v5[27];
    sub_35E0(v5 + 23, v5[26]);
    v33 = swift_allocObject();
    v33[2] = v5;
    v33[3] = v18;
    v35 = v42;
    v34 = v43;
    v36 = v44;
    v33[4] = v42;
    v33[5] = v36;
    v37 = v46;
    v33[6] = v34;
    v33[7] = v37;

    v38 = v35;
    v39 = v36;

    sub_2CC2F0();
  }

  else
  {
    v30 = v46;

    return sub_869A0(a1, a2, a3, a4, v30);
  }
}

uint64_t sub_84320(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a5;
    v17 = v16;
    v31 = swift_slowAlloc();
    v36 = a1;
    v37 = v31;
    *v17 = 136315394;
    sub_2CCFB0();
    sub_91C6C(&qword_34C170, 255, &type metadata accessor for App);
    v18 = sub_2CEE70();
    v20 = sub_3F08(v18, v19, &v37);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = sub_2CCCA0();
    v23 = sub_3F08(v21, v22, &v37);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_0, v14, v15, "HandleIntentStrategy#makeIntentHandledResponseUsingRF for app: %s using RF 2.0 %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    a5 = v32;
  }

  (*(v9 + 8))(v12, v8);
  v24 = v5[27];
  sub_35E0(v5 + 23, v5[26]);
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = a1;
  v27 = v34;
  v26 = v35;
  v25[4] = v34;
  v25[5] = v26;
  v25[6] = v33;
  v25[7] = a5;

  v28 = v27;
  v29 = v26;

  sub_2CC2F0();
}

uint64_t sub_84670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    sub_2CBD30();
  }

  v14 = *(a8 + 272);
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a10;
  v15[4] = a9;
  v15[5] = a12;
  v15[6] = a13;
  v15[7] = a11;

  v16 = a10;

  v17 = a11;
  v18 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  if (v18 == 2)
  {
    v20 = 0x6D75626C61;
    v19 = 0xE500000000000000;
  }

  else if (v18 == 6)
  {
    v19 = 0xE700000000000000;
    v20 = 0x74736163646F70;
  }

  else
  {
    v20 = 0;
    v19 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1E9600();
  *(inited + 56) = v22;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954616964656DLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v20;
  *(inited + 104) = v19;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DB710;
  v23 = [v16 mediaDestination];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 mediaDestinationType];

    v26 = v25 == &dword_0 + 2;
  }

  else
  {
    v26 = 0;
  }

  *(inited + 144) = v26;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "playlistTitle");
  *(inited + 190) = -4864;
  v27 = sub_1E960C();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v27;
  *(inited + 200) = v28;
  v29 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v30 = *(v14 + 120);
  v33[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v33[4] = &off_338D38;
  v33[0] = v16;
  v31 = v16;
  sub_124608(v29, a9, v33, sub_90DF0, v15);

  return sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_84944(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v132 = a7;
  v155 = a6;
  v156 = a5;
  v153 = a4;
  v154 = a3;
  v150 = a2;
  v147 = a1;
  v136 = sub_2CCB20();
  v134 = *(v136 - 8);
  v7 = *(v134 + 64);
  __chkstk_darwin(v136);
  v133 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v143 = &v132 - v11;
  v12 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v142 = &v132 - v14;
  v138 = sub_20410(&qword_34E1C8, &qword_2D1F20);
  v15 = *(*(v138 - 8) + 64);
  v16 = __chkstk_darwin(v138);
  v139 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v149 = &v132 - v18;
  v141 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = *(*(v141 - 8) + 64);
  v20 = __chkstk_darwin(v141);
  v137 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v132 - v23;
  __chkstk_darwin(v22);
  v148 = &v132 - v24;
  v25 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v152 = &v132 - v27;
  v28 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v146 = &v132 - v30;
  v31 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v151 = &v132 - v33;
  v145 = sub_2CE000();
  v144 = *(v145 - 8);
  v34 = *(v144 + 64);
  v35 = __chkstk_darwin(v145);
  v135 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v140 = &v132 - v37;
  v38 = sub_2CCB30();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2CCAC0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20410(&unk_3519A0, &qword_2D0980);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = (&v132 - v50);
  sub_F3F4(v147, &v132 - v50, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    (*(v44 + 104))(v47, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v43);
    (*(v39 + 104))(v42, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v38);
    swift_getErrorValue();
    sub_2CEEF0();
    v149 = sub_2CCAE0();
    v157 = v53;

    (*(v39 + 8))(v42, v38);
    (*(v44 + 8))(v47, v43);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v54 = v145;
    v55 = sub_3ED0(v145, static Logger.default);
    swift_beginAccess();
    v56 = v144;
    v57 = v140;
    (*(v144 + 16))(v140, v55, v54);
    swift_errorRetain();
    v58 = sub_2CDFE0();
    v59 = sub_2CE680();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v60 = 136315394;
      swift_getErrorValue();
      v61 = sub_2CEEF0();
      v63 = sub_3F08(v61, v62, &v158);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2082;
      v64 = sub_2CCCA0();
      v66 = sub_3F08(v64, v65, &v158);

      *(v60 + 14) = v66;
      _os_log_impl(&dword_0, v58, v59, "AddMedia+HandleIntentStrategy#handleFailure with error: %s %{public}s", v60, 0x16u);
      swift_arrayDestroy();
    }

    (*(v56 + 8))(v57, v54);
    v67 = v150[12];
    sub_35E0(v150 + 8, v150[11]);
    v68 = enum case for ActivityType.failed(_:);
    v69 = sub_2C9C20();
    v70 = *(v69 - 8);
    v71 = v151;
    (*(v70 + 104))(v151, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v72 = sub_2CA130();
    v73 = v146;
    (*(*(v72 - 8) + 56))(v146, 1, 1, v72);
    v74 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v75 = sub_2C98F0();
    v76 = *(v75 - 8);
    v77 = v152;
    (*(v76 + 104))(v152, v74, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();
    sub_30B8(v77, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v73, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v71, &qword_34CB88, &unk_2D0D90);
    v158 = v52;
    v159 = 1;
    swift_errorRetain();
    v156(&v158);
    sub_30B8(&v158, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v79 = v51;
    v80 = v148;
    sub_14A58(v79, v148, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v80, v157, &qword_34C6E8, &unk_2D0FF0);
    v81 = sub_2CD230();
    v82 = v149;
    (*(*(v81 - 8) + 56))(v149, 1, 1, v81);
    swift_storeEnumTagMultiPayload();
    v83 = v139;
    sub_F3F4(v82, v139, &qword_34E1C8, &qword_2D1F20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = *v83;
      (*(v44 + 104))(v47, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v43);
      (*(v39 + 104))(v42, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v38);
      swift_getErrorValue();
      sub_2CEEF0();
      v143 = sub_2CCAE0();
      v147 = v85;

      (*(v39 + 8))(v42, v38);
      (*(v44 + 8))(v47, v43);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v86 = v145;
      v87 = sub_3ED0(v145, static Logger.default);
      swift_beginAccess();
      v88 = v144;
      v89 = v135;
      (*(v144 + 16))(v135, v87, v86);
      swift_errorRetain();
      v90 = sub_2CDFE0();
      v91 = sub_2CE680();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v92 = 136315394;
        swift_getErrorValue();
        v93 = sub_2CEEF0();
        v95 = sub_3F08(v93, v94, &v158);

        *(v92 + 4) = v95;
        *(v92 + 12) = 2082;
        v96 = sub_2CCCA0();
        v98 = sub_3F08(v96, v97, &v158);

        *(v92 + 14) = v98;
        _os_log_impl(&dword_0, v90, v91, "AddMedia+HandleIntentStrategy#handleFailure with error: %s %{public}s", v92, 0x16u);
        swift_arrayDestroy();
      }

      (*(v88 + 8))(v89, v86);
      v99 = v150[12];
      sub_35E0(v150 + 8, v150[11]);
      v100 = enum case for ActivityType.failed(_:);
      v101 = sub_2C9C20();
      v102 = *(v101 - 8);
      v103 = v151;
      (*(v102 + 104))(v151, v100, v101);
      (*(v102 + 56))(v103, 0, 1, v101);
      v104 = sub_2CA130();
      v105 = v146;
      (*(*(v104 - 8) + 56))(v146, 1, 1, v104);
      v106 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v107 = sub_2C98F0();
      v108 = *(v107 - 8);
      v109 = v152;
      (*(v108 + 104))(v152, v106, v107);
      (*(v108 + 56))(v109, 0, 1, v107);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4E0();
      sub_30B8(v109, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v105, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v103, &qword_34CB88, &unk_2D0D90);
      v158 = v84;
      v159 = 1;
      swift_errorRetain();
      v156(&v158);
      sub_30B8(&v158, qword_34C798, &qword_2D0DA0);

      sub_30B8(v149, &qword_34E1C8, &qword_2D1F20);
      sub_30B8(v157, &qword_34C6E8, &unk_2D0FF0);
      return sub_30B8(v148, &qword_34C6E8, &unk_2D0FF0);
    }

    else
    {
      sub_14A58(v83, v142, &unk_3530C0, &unk_2D0A40);
      sub_28C3E8(v154, v143);
      (*(v44 + 104))(v47, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v43);
      v110 = v38;
      (*(v39 + 104))(v42, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v38);
      v111 = v134;
      v112 = v133;
      v113 = v136;
      (*(v134 + 104))(v133, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v136);
      v147 = sub_2CCAD0();
      v146 = v114;
      (*(v111 + 8))(v112, v113);
      (*(v39 + 8))(v42, v110);
      (*(v44 + 8))(v47, v43);
      v115 = v150[12];
      v150 = sub_35E0(v150 + 8, v150[11]);
      v116 = enum case for ActivityType.completed(_:);
      v117 = sub_2C9C20();
      v118 = *(v117 - 8);
      v119 = v151;
      (*(v118 + 104))(v151, v116, v117);
      (*(v118 + 56))(v119, 0, 1, v117);
      v120 = v137;
      sub_F3F4(v157, v137, &qword_34C6E8, &unk_2D0FF0);
      v121 = *(v120 + *(v141 + 48));
      v122 = enum case for SiriKitReliabilityCodes.success(_:);
      v123 = sub_2C98F0();
      v124 = *(v123 - 8);
      v125 = v152;
      (*(v124 + 104))(v152, v122, v123);
      (*(v124 + 56))(v125, 0, 1, v123);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4D0();

      sub_30B8(v125, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v119, &qword_34CB88, &unk_2D0D90);
      v126 = sub_2CA130();
      v127 = *(*(v126 - 8) + 8);
      v127(v120, v126);
      v128 = v157;
      sub_F3F4(v157, v120, &qword_34C6E8, &unk_2D0FF0);
      v129 = *(v120 + *(v141 + 48));
      v130 = v142;
      v131 = v143;
      sub_90E20(v142, v120, v129, v143, v156, v155);

      sub_30B8(v131, &unk_353020, &unk_2D0970);
      sub_30B8(v130, &unk_3530C0, &unk_2D0A40);
      sub_30B8(v149, &qword_34E1C8, &qword_2D1F20);
      sub_30B8(v128, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v148, &qword_34C6E8, &unk_2D0FF0);
      return (v127)(v120, v126);
    }
  }
}

uint64_t sub_85F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_2CB260();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, &v20 - v15, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 56)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  (*(*(v18 - 8) + 8))(v10, v18);
  return sub_2CA610();
}

uint64_t sub_86144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = *(*(sub_20410(&unk_3530C0, &unk_2D0A40) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_2CD230();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_8627C, 0, 0);
}

uint64_t sub_8627C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_F3F4(v0[8], v3, &unk_3530C0, &unk_2D0A40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    v5 = v0[11];
    v6 = v0[9];
    sub_30B8(v0[13], &unk_3530C0, &unk_2D0A40);
    v7 = sub_2CA080();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v0[17] = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v10 = swift_allocObject();
    v0[18] = v10;
    *(v10 + 16) = xmmword_2D0770;
    sub_F3F4(v6, v4, &qword_34C6E8, &unk_2D0FF0);
    *(v10 + 32) = *(v4 + *(v5 + 48));
    v11 = sub_2CA130();
    (*(*(v11 - 8) + 8))(v4, v11);
    v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v33 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_86640;
    v14 = v0[10];
    v15 = v0[7];

    return v33(v15, v10, v14);
  }

  else
  {
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[9];
    (*(v18 + 32))(v17, v0[13], v19);
    v23 = sub_2CA080();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v0[20] = sub_2CA070();
    v0[5] = v19;
    v0[6] = sub_91C6C(&qword_34CC78, 255, &type metadata accessor for SiriAudioSnippets);
    v26 = sub_F390(v0 + 2);
    (*(v18 + 16))(v26, v17, v19);
    sub_20410(&unk_351900, &unk_2D0960);
    v27 = swift_allocObject();
    v0[21] = v27;
    *(v27 + 16) = xmmword_2D0770;
    sub_F3F4(v22, v20, &qword_34C6E8, &unk_2D0FF0);
    *(v27 + 32) = *(v20 + *(v21 + 48));
    v28 = sub_2CA130();
    (*(*(v28 - 8) + 8))(v20, v28);
    v29 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
    v34 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
    v30 = swift_task_alloc();
    v0[22] = v30;
    *v30 = v0;
    v30[1] = sub_867CC;
    v31 = v0[10];
    v32 = v0[7];

    return v34(v32, v0 + 2, v27, v31);
  }
}

uint64_t sub_86640()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v10 = *v0;

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[12];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_867CC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v6 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_86910, 0, 0);
}

uint64_t sub_86910()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_869A0(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  v6 = v5;
  v91 = a2;
  v92 = a5;
  v102 = a3;
  v103 = a4;
  v8 = sub_2CDFD0();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  v10 = __chkstk_darwin(v8);
  v93 = v11;
  v94 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v90 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v90 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v22 = v14[2];
  v97 = v14 + 2;
  v98 = v21;
  v96 = v22;
  v22(v20, v21, v13);

  v23 = sub_2CDFE0();
  v24 = sub_2CE670();

  v25 = os_log_type_enabled(v23, v24);
  v100 = v14;
  v101 = a1;
  v104 = v13;
  v99 = v18;
  if (v25)
  {
    v26 = v14;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v110[0] = v28;
    *v27 = 136315138;
    v108 = a1;
    sub_2CCFB0();
    sub_91C6C(&qword_34C170, 255, &type metadata accessor for App);
    v29 = sub_2CEE70();
    v31 = sub_3F08(v29, v30, v110);

    *(v27 + 4) = v31;
    a1 = v101;
    _os_log_impl(&dword_0, v23, v24, "AddMedia+HandleIntentStrategy#makeIntentHandledResponseUsingDialogProvider for app: %s", v27, 0xCu);
    sub_306C(v28);

    v32 = v26[1];
    v32(v20, v104);
  }

  else
  {

    v32 = v14[1];
    v32(v20, v13);
  }

  v33 = *(v6 + 272);
  v34 = swift_allocObject();
  v34[2] = v6;
  v34[3] = a1;
  v35 = v91;
  v36 = v92;
  v38 = v102;
  v37 = v103;
  v34[4] = v91;
  v34[5] = v37;
  v34[6] = v36;
  v34[7] = v38;
  v103 = v34;
  v34[8] = _swiftEmptyArrayStorage;

  v39 = v35;

  v40 = v38;
  v41 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  v95 = v32;
  if (v41 == 2)
  {
    v43 = 0x6D75626C61;
    v42 = 0xE500000000000000;
  }

  else if (v41 == 6)
  {
    v42 = 0xE700000000000000;
    v43 = 0x74736163646F70;
  }

  else
  {
    v43 = 0;
    v42 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1E9600();
  *(inited + 56) = v45;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954616964656DLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v43;
  *(inited + 104) = v42;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DB710;
  v46 = [v39 mediaDestination];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 mediaDestinationType];

    v49 = v48 == &dword_0 + 2;
  }

  else
  {
    v49 = 0;
  }

  *(inited + 144) = v49;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "playlistTitle");
  *(inited + 190) = -4864;
  v50 = sub_1E960C();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v50;
  *(inited + 200) = v51;
  v92 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v52 = *(v33 + 120);
  v110[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v110[4] = &off_338D38;
  v110[0] = v39;
  v53 = v52[4];
  v90 = v52[5];
  v91 = v53;
  v54 = v52[6];
  v102 = 0x80000000002DB730;
  v55 = qword_34BF98;
  v56 = v39;
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = qword_35F760;
  v58 = v105;
  sub_2CDFB0();
  v59 = v106;
  v60 = v107;
  v61 = v94;
  (*(v106 + 16))(v94, v58, v107);
  v62 = (*(v59 + 80) + 33) & ~*(v59 + 80);
  v63 = (v93 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *(v64 + 16) = "catServiceExecute";
  *(v64 + 24) = 17;
  *(v64 + 32) = 2;
  (*(v59 + 32))(v64 + v62, v61, v60);
  v65 = (v64 + v63);
  v66 = v103;
  *v65 = sub_91CB4;
  v65[1] = v66;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2D0E40;
  *(v67 + 56) = &type metadata for String;
  v68 = sub_1087C();
  v69 = v90;
  *(v67 + 32) = v90;
  *(v67 + 40) = v54;
  *(v67 + 96) = &type metadata for String;
  *(v67 + 104) = v68;
  *(v67 + 64) = v68;
  *(v67 + 72) = 0xD000000000000015;
  v70 = v102;
  *(v67 + 80) = v102;

  v89 = v67;
  LOBYTE(v88) = 2;
  v87 = 125;
  sub_2CDF90();

  v71 = swift_allocObject();
  *(v71 + 16) = sub_13CD4;
  *(v71 + 24) = v64;
  v72 = v99;
  v73 = v104;
  v96(v99, v98, v104);

  v74 = sub_2CDFE0();
  v75 = sub_2CE660();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v76 = 136315394;
    *(v76 + 4) = sub_3F08(v69, v54, &v108);
    *(v76 + 12) = 2080;
    *(v76 + 14) = sub_3F08(0xD000000000000015, v102, &v108);
    _os_log_impl(&dword_0, v74, v75, "Evaluating CAT family:%s id:%s...", v76, 0x16u);
    swift_arrayDestroy();

    v70 = v102;

    v77 = v72;
    v78 = v104;
  }

  else
  {

    v77 = v72;
    v78 = v73;
  }

  v95(v77, v78);
  v108 = v69;
  v109 = v54;

  v111._countAndFlagsBits = 35;
  v111._object = 0xE100000000000000;
  sub_2CE350(v111);
  v112._countAndFlagsBits = 0xD000000000000015;
  v112._object = v70;
  sub_2CE350(v112);
  v80 = v108;
  v79 = v109;
  v81 = sub_2CB460();
  if (!v81)
  {
    sub_2CB180();
    v81 = sub_2CB170();
  }

  v82 = v81;
  v83 = swift_allocObject();
  v83[2] = v82;
  v83[3] = sub_13D84;
  v83[4] = v71;
  v84 = sub_2CB180();
  __chkstk_darwin(v84);
  v85 = v92;
  *(&v90 - 10) = v91;
  *(&v90 - 9) = v85;
  *(&v90 - 8) = v101;
  *(&v90 - 7) = v110;
  *(&v90 - 6) = 0;
  *(&v90 - 5) = v80;
  v87 = v79;
  v88 = sub_3E010;
  v89 = v83;

  sub_2CB0F0();

  (*(v106 + 8))(v105, v107);
  return sub_30B8(v110, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_87434(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, void *a7, uint64_t a8)
{
  v74 = a8;
  v75 = a7;
  v90 = a6;
  v91 = a5;
  v88 = a3;
  v89 = a4;
  v82 = a2;
  v81 = a1;
  v80 = sub_2CA910();
  v79 = *(v80 - 8);
  v8 = *(v79 + 64);
  __chkstk_darwin(v80);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v83 = (&v74 - v12);
  v76 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v76 - 8) + 64);
  v14 = __chkstk_darwin(v76);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v74 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v87 = &v74 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v86 = &v74 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v85 = &v74 - v25;
  v26 = sub_2CCB30();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CCAC0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v74 - v38);
  sub_F3F4(v81, &v74 - v38, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v31);
    (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.dlgProvHandled(_:), v26);
    swift_getErrorValue();
    sub_2CEEF0();
    v84 = sub_2CCAE0();

    (*(v27 + 8))(v30, v26);
    (*(v32 + 8))(v35, v31);
    v41 = v82[12];
    v83 = sub_35E0(v82 + 8, v82[11]);
    v42 = enum case for ActivityType.failed(_:);
    v43 = sub_2C9C20();
    v44 = *(v43 - 8);
    v45 = v85;
    (*(v44 + 104))(v85, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    v46 = sub_2CA130();
    v47 = v86;
    (*(*(v46 - 8) + 56))(v86, 1, 1, v46);
    v48 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v49 = sub_2C98F0();
    v50 = *(v49 - 8);
    v51 = v87;
    (*(v50 + 104))(v87, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v51, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v47, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v45, &qword_34CB88, &unk_2D0D90);
    *&v92 = v40;
    v95 = 1;
    swift_errorRetain();
    v91(&v92);
  }

  else
  {
    v52 = v39;
    v53 = v78;
    sub_14A58(v52, v78, &qword_34C6E8, &unk_2D0FF0);
    v54 = v75;
    sub_28C3E8(v89, v83);
    sub_2CB5B0();
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    sub_2C9DC0();
    sub_30B8(&v92, &qword_34CC80, &qword_2D1520);
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v31);
    (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.dlgProvHandled(_:), v26);
    *&v92 = [v54 code];
    sub_2CEE70();
    v81 = sub_2CCAE0();
    v75 = v55;

    (*(v27 + 8))(v30, v26);
    (*(v32 + 8))(v35, v31);
    v56 = v82[12];
    v82 = sub_35E0(v82 + 8, v82[11]);
    v57 = enum case for ActivityType.completed(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v85;
    (*(v59 + 104))(v85, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = v77;
    sub_F3F4(v53, v77, &qword_34C6E8, &unk_2D0FF0);

    v62 = sub_2CA130();
    v63 = *(v62 - 8);
    v64 = v86;
    (*(v63 + 32))(v86, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = enum case for SiriKitReliabilityCodes.success(_:);
    v66 = sub_2C98F0();
    v67 = *(v66 - 8);
    v68 = v87;
    (*(v67 + 104))(v87, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v60, &qword_34CB88, &unk_2D0D90);
    v69 = v80;
    *(&v93 + 1) = v80;
    v94 = &protocol witness table for AceOutput;
    v70 = sub_F390(&v92);
    v71 = v79;
    v72 = v84;
    (*(v79 + 16))(v70, v84, v69);
    v95 = 0;
    v91(&v92);
    (*(v71 + 8))(v72, v69);
    sub_30B8(v83, &unk_353020, &unk_2D0970);
    sub_30B8(v53, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v92, qword_34C798, &qword_2D0DA0);
}

uint64_t AddMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a4;
  v36 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AddMedia+HandleIntentStrategy#makeFailureHandlingIntentResponse", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v34 = *(v6 + 272);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v20 = 0xE000000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2CECB0(39);

  v38 = 0xD000000000000022;
  v39 = 0x80000000002DB660;
  v21 = [a3 userActivity];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 activityType];

    v24 = sub_2CE270();
    v20 = v25;
  }

  else
  {
    v24 = 0;
  }

  v40._countAndFlagsBits = v24;
  v40._object = v20;
  sub_2CE350(v40);

  v41._countAndFlagsBits = 95;
  v41._object = 0xE100000000000000;
  sub_2CE350(v41);
  v37 = [a3 code];
  v42._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v42);

  v26 = v38;
  v27 = v39;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  *(v29 + 24) = a1;
  v30 = v35;
  v31 = v36;
  *(v29 + 32) = a2;
  *(v29 + 40) = v30;
  *(v29 + 48) = v31;
  *(v29 + 56) = a3;

  v32 = a2;

  sub_CEEB0(v28, a1, v32, a3, sub_8FEF4, v29);
}

uint64_t sub_883E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v73 = a7;
  v85 = a5;
  v86 = a6;
  v83 = a3;
  v84 = a4;
  v79 = a2;
  v76 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v75 = v72 - v9;
  v77 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v77 - 8) + 64);
  v11 = __chkstk_darwin(v77);
  v74 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = v72 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v82 = v72 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v81 = v72 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v80 = v72 - v22;
  v23 = sub_2CCB30();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (v72 - v35);
  sub_F3F4(v76, v72 - v35, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    swift_getErrorValue();
    sub_2CEEF0();
    v78 = sub_2CCAE0();

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v38 = v79[12];
    v79 = sub_35E0(v79 + 8, v79[11]);
    v39 = enum case for ActivityType.failed(_:);
    v40 = sub_2C9C20();
    v41 = *(v40 - 8);
    v42 = v80;
    (*(v41 + 104))(v80, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    v43 = sub_2CA130();
    v44 = v81;
    (*(*(v43 - 8) + 56))(v81, 1, 1, v43);
    v45 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v46 = sub_2C98F0();
    v47 = *(v46 - 8);
    v48 = v82;
    (*(v47 + 104))(v82, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v44, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v42, &qword_34CB88, &unk_2D0D90);
    v87[0] = v37;
    v88 = 1;
    swift_errorRetain();
    v85(v87);

    return sub_30B8(v87, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v50 = v78;
    sub_14A58(v36, v78, &qword_34C6E8, &unk_2D0FF0);
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    v87[0] = [v73 code];
    sub_2CEE70();
    v73 = sub_2CCAE0();
    v72[2] = v51;

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v52 = v79;
    v53 = v79[11];
    v72[0] = v79[12];
    v72[1] = sub_35E0(v79 + 8, v53);
    v54 = enum case for ActivityType.failed(_:);
    v55 = sub_2C9C20();
    v56 = *(v55 - 8);
    v57 = v80;
    (*(v56 + 104))(v80, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = v74;
    sub_F3F4(v50, v74, &qword_34C6E8, &unk_2D0FF0);

    v59 = sub_2CA130();
    v76 = v59;
    v60 = *(v59 - 8);
    v61 = v81;
    (*(v60 + 32))(v81, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v63 = sub_2C98F0();
    v64 = *(v63 - 8);
    v65 = v82;
    (*(v64 + 104))(v82, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v65, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v61, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v57, &qword_34CB88, &unk_2D0D90);
    v66 = sub_35E0(v52 + 13, v52[16]);
    v67 = v78;
    sub_F3F4(v78, v58, &qword_34C6E8, &unk_2D0FF0);
    v68 = *(v58 + *(v77 + 48));
    v69 = sub_2CA000();
    v70 = v75;
    (*(*(v69 - 8) + 56))(v75, 1, 1, v69);
    v71 = *v66;
    sub_1C077C(v58, v68, v70, _swiftEmptyArrayStorage, v85, v86);

    sub_30B8(v70, &unk_353020, &unk_2D0970);
    sub_30B8(v67, &qword_34C6E8, &unk_2D0FF0);
    return (*(v60 + 8))(v58, v76);
  }
}

uint64_t *AddMedia.HandleIntentStrategy.deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);
  sub_306C(v0 + 23);
  sub_306C(v0 + 28);
  v2 = v0[33];

  v3 = v0[34];

  return v0;
}

uint64_t AddMedia.HandleIntentStrategy.__deallocating_deinit()
{
  AddMedia.HandleIntentStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_88F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_89010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_8908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_89108(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v11 = *v5;
  sub_2CB450();
  v12 = v11[7];
  sub_35E0(v11 + 3, v11[6]);
  if (sub_2CC4B0())
  {
    return sub_84320(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_869A0(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_891C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_8923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_892DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_89328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_8937C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_893E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X7>, uint64_t a7@<X8>, uint64_t *a8, uint64_t a9, uint64_t (*a10)(uint64_t), void (*a11)(uint64_t, id), uint64_t a12, uint64_t a13, uint64_t *a14, void **a15, char *a16)
{
  v221 = a5;
  v227 = a4;
  v222 = a3;
  v230 = a7;
  v224 = sub_2CC760();
  v225 = *(v224 - 8);
  v19 = *(v225 + 64);
  v20 = __chkstk_darwin(v224);
  v220 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v223 = &v207 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v231 = v23;
  v232 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v228 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v226 = &v207 - v29;
  v30 = __chkstk_darwin(v28);
  v229 = &v207 - v31;
  v32 = __chkstk_darwin(v30);
  v218 = &v207 - v33;
  v34 = __chkstk_darwin(v32);
  v217 = &v207 - v35;
  v36 = __chkstk_darwin(v34);
  v219 = &v207 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v207 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v207 - v42;
  __chkstk_darwin(v41);
  v45 = &v207 - v44;
  v46 = sub_334A0(0, a6, a8);
  v237 = v46;
  v238 = a9;
  *&v236 = a2;
  sub_35E0(&v236, v46);
  v47 = a2;
  v48 = &off_34B000;
  if (!sub_2CC120())
  {
    v216 = v46;
    sub_306C(&v236);
    v60 = a10(a1);
    v61 = a1;
    v62 = v231;
    if ((v60 & 1) == 0)
    {
      goto LABEL_24;
    }

    v215 = v47;
    v63 = v227[4];
    sub_35E0(v227, v227[3]);
    v48 = &off_34B000;
    v47 = v215;
    if ((sub_2CBBC0() & 1) == 0)
    {
      v64 = v227[4];
      sub_35E0(v227, v227[3]);
      v48 = &off_34B000;
      v47 = v215;
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (!v65)
    {
      goto LABEL_24;
    }

    v66 = v65;
    v67 = sub_2CC8E0();
    v68 = v47;
    v214 = v67;
    v69 = sub_2CC8D0();
    if (!v69)
    {

LABEL_23:
      v48 = &off_34B000;
LABEL_24:
      if (v48[491] != -1)
      {
        swift_once();
      }

      v99 = sub_3ED0(v62, static Logger.default);
      swift_beginAccess();
      v100 = v232;
      v101 = v229;
      v225 = *(v232 + 16);
      (v225)(v229, v99, v62);
      v102 = v47;
      v103 = sub_2CDFE0();
      v104 = sub_2CE690();

      v105 = os_log_type_enabled(v103, v104);
      v227 = v102;
      if (v105)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v224 = v99;
        v108 = v107;
        *&v234 = v107;
        *v106 = 136315138;
        v109 = v102;
        v110 = [v109 description];
        v111 = sub_2CE270();
        v113 = v112;

        v114 = v111;
        v62 = v231;
        v115 = v232;
        v116 = sub_3F08(v114, v113, &v234);

        *(v106 + 4) = v116;
        _os_log_impl(&dword_0, v103, v104, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v106, 0xCu);
        sub_306C(v108);
        v99 = v224;

        v117 = *(v115 + 8);
        v117(v229, v62);
      }

      else
      {

        v118 = v101;
        v117 = *(v100 + 8);
        v117(v118, v62);
      }

      if ((sub_8FD94() & 1) == 0)
      {
        (v225)(v228, v99, v62);
        v129 = v227;

        v130 = sub_2CDFE0();
        v131 = sub_2CE670();

        if (os_log_type_enabled(v130, v131))
        {
          v231 = v117;
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = 138412546;
          sub_2CCF90();
          if (v134)
          {
            v135 = sub_2CE2F0();
            v137 = v136;

            sub_10C40();
            swift_allocError();
            *v138 = v135;
            v138[1] = v137;
            v139 = _swift_stdlib_bridgeErrorToNSError();
            v140 = v139;
          }

          else
          {
            v139 = 0;
            v140 = 0;
          }

          *(v132 + 4) = v139;
          *v133 = v140;
          *(v132 + 12) = 2112;
          v150 = [v129 launchId];
          if (v150)
          {
            v151 = v150;
            v152 = sub_2CE270();
            v154 = v153;

            sub_10C40();
            swift_allocError();
            *v155 = v152;
            v155[1] = v154;
            v150 = _swift_stdlib_bridgeErrorToNSError();
            v156 = v150;
          }

          else
          {
            v156 = 0;
          }

          *(v132 + 14) = v150;
          v133[1] = v156;
          _os_log_impl(&dword_0, v130, v131, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v132, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          v117 = v231;
        }

        v117(v228, v62);
        v146 = sub_2C9880();
        v147 = *(*(v146 - 8) + 56);
        v148 = v230;
        v149 = 1;
        return v147(v148, v149, 1, v146);
      }

      v229 = a16;
      v119 = v226;
      (v225)(v226, v99, v62);
      v120 = sub_2CDFE0();
      v121 = sub_2CE670();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = v117;
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v234 = v124;
        *v123 = 136315138;
        if (*a14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v125 = *a15;
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v126 = sub_2CE2A0();
        v128 = sub_3F08(v126, v127, &v234);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_0, v120, v121, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v123, 0xCu);
        sub_306C(v124);

        v122(v226, v231);
      }

      else
      {

        v117(v119, v62);
      }

      v141 = *a14;

      if (v141 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v142 = *a15;
      v143 = v227;
      v144 = v142;
      v145 = v230;
      sub_2C9870();
      v146 = sub_2C9880();
      v147 = *(*(v146 - 8) + 56);
      v148 = v145;
LABEL_41:
      v149 = 0;
      return v147(v148, v149, 1, v146);
    }

    v70 = v69;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v211 = v66;
    v213 = v61;
    v71 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v72 = v232;
    v73 = *(v232 + 16);
    v210 = v71;
    v209 = v232 + 16;
    v208 = v73;
    v73(v43, v71, v62);
    v74 = v68;

    v75 = sub_2CDFE0();
    v76 = sub_2CE670();
    v212 = v74;

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&v236 = v207;
      *v77 = 136315394;
      *&v234 = v70;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
      v78 = sub_2CEE70();
      v80 = v70;
      v81 = sub_3F08(v78, v79, &v236);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = [v211 debugDescription];
      v83 = sub_2CE270();
      v85 = v84;

      v86 = v83;
      v70 = v80;
      v87 = sub_3F08(v86, v85, &v236);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_0, v75, v76, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v77, 0x16u);
      swift_arrayDestroy();

      v88 = v232;
    }

    else
    {

      v88 = v72;
    }

    v89 = *(v88 + 8);
    v89(v43, v62);
    v90 = v224;
    v91 = v223;
    sub_2CC8B0();
    v92 = (*(v225 + 88))(v91, v90);
    if (v92 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v208(v40, v210, v62);
      v93 = sub_2CDFE0();
      v94 = sub_2CE670();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v95, 2u);
        v90 = v224;
      }

      v89(v40, v62);
      sub_2CE700();
      (*(v225 + 104))(v220, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v90);
      sub_2CC8C0();
      v96 = v222;
      v97 = v222[4];
      sub_35E0(v222, v222[3]);
      sub_EEAC(v96, &v236);
      sub_EEAC(v227, &v234);
      sub_EEAC(v221, v233);
      v98 = swift_allocObject();
      sub_F338(&v236, v98 + 16);
      sub_F338(&v234, v98 + 56);
      sub_F338(v233, v98 + 96);
      sub_2CC660();

LABEL_22:
      v47 = v215;
      goto LABEL_23;
    }

    if (v92 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v157 = v222;
      v158 = v222[4];
      sub_35E0(v222, v222[3]);
      sub_2CC690();
      v159 = v157[4];
      sub_35E0(v157, v157[3]);
      sub_2CC670();
    }

    else
    {
      if (v92 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v160 = v222;
        v161 = v222[4];
        sub_35E0(v222, v222[3]);
        sub_2CC690();
        v162 = v160[3];
        v163 = v160[4];
        v164 = v160;
      }

      else
      {
        if (v92 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v92 != enum case for AirPlayRouteSetupState.complete(_:))
          {
            if (v92 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v180 = v217;
              v208(v217, v210, v62);

              v181 = sub_2CDFE0();
              v182 = sub_2CE680();

              if (os_log_type_enabled(v181, v182))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                *&v236 = v184;
                *v183 = 136315138;
                *&v234 = v70;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
                v185 = sub_2CEE70();
                v187 = sub_3F08(v185, v186, &v236);

                *(v183 + 4) = v187;
                _os_log_impl(&dword_0, v181, v182, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v183, 0xCu);
                sub_306C(v184);

                v188 = v217;
              }

              else
              {

                v188 = v180;
              }

              v89(v188, v62);
              v204 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v204 init];
              v205 = v212;
              v206 = v230;
              sub_2C9870();

              v146 = sub_2C9880();
              v147 = *(*(v146 - 8) + 56);
              v148 = v206;
              goto LABEL_41;
            }

            v189 = v218;
            v208(v218, v210, v62);
            v190 = v212;

            v191 = sub_2CDFE0();
            v192 = sub_2CE660();

            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v222 = swift_slowAlloc();
              *&v236 = v222;
              *v193 = 136315394;
              sub_2CC8B0();
              v194 = sub_2CE2A0();
              v196 = sub_3F08(v194, v195, &v236);
              v227 = v70;
              v197 = v196;

              *(v193 + 4) = v197;
              *(v193 + 12) = 2080;
              v198 = [v190 debugDescription];
              v199 = sub_2CE270();
              v201 = v200;

              v202 = sub_3F08(v199, v201, &v236);

              *(v193 + 14) = v202;
              _os_log_impl(&dword_0, v191, v192, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v193, 0x16u);
              swift_arrayDestroy();
              v90 = v224;

              v203 = v218;
            }

            else
            {

              v203 = v189;
            }

            v89(v203, v62);
            v47 = v215;
            (*(v225 + 8))(v223, v90);
            goto LABEL_23;
          }

          v167 = v219;
          v208(v219, v210, v62);
          v168 = v212;
          v169 = sub_2CDFE0();
          v170 = sub_2CE660();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            *&v236 = v172;
            *v171 = 136315138;
            v173 = [v168 debugDescription];
            v174 = sub_2CE270();
            v227 = v70;
            v175 = v174;
            v177 = v176;

            v178 = sub_3F08(v175, v177, &v236);

            *(v171 + 4) = v178;
            _os_log_impl(&dword_0, v169, v170, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v171, 0xCu);
            sub_306C(v172);

            v179 = v219;
          }

          else
          {

            v179 = v167;
          }

          v89(v179, v62);
          goto LABEL_22;
        }

        v164 = v222;
        v162 = v222[3];
        v165 = v222[4];
      }

      sub_35E0(v164, v162);
      sub_2CC6A0();
    }

    v166 = v212;
    a11(v213, v212);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = v231;
  v50 = sub_3ED0(v231, static Logger.default);
  swift_beginAccess();
  v51 = v232;
  (*(v232 + 16))(v45, v50, v49);
  v52 = sub_2CDFE0();
  v53 = sub_2CE690();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v54, 2u);
  }

  (*(v51 + 8))(v45, v49);
  v55 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v55 init];
  v56 = v47;
  v57 = v230;
  sub_2C9870();
  v58 = sub_2C9880();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  return sub_306C(&v236);
}

uint64_t sub_8ABFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v201 = a5;
  v206 = a4;
  v202 = a3;
  v211 = a6;
  v205 = sub_2CC760();
  v204 = *(v205 - 8);
  v8 = *(v204 + 64);
  v9 = __chkstk_darwin(v205);
  v200 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v203 = &v188 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v212 = v12;
  v213 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v207 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v208 = &v188 - v18;
  v19 = __chkstk_darwin(v17);
  v209 = &v188 - v20;
  v21 = __chkstk_darwin(v19);
  v198 = &v188 - v22;
  v23 = __chkstk_darwin(v21);
  v197 = &v188 - v24;
  v25 = __chkstk_darwin(v23);
  v199 = &v188 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v188 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v188 - v31;
  __chkstk_darwin(v30);
  v34 = &v188 - v33;
  v35 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v218 = v35;
  v219 = &protocol witness table for INPlayMediaIntent;
  *&v217 = a2;
  sub_35E0(&v217, v35);
  v36 = a2;
  v210 = v35;
  if (sub_2CC120())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v212;
    v38 = sub_3ED0(v212, static Logger.default);
    swift_beginAccess();
    v39 = v213;
    (*(v213 + 16))(v34, v38, v37);
    v40 = sub_2CDFE0();
    v41 = sub_2CE690();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v42, 2u);
    }

    (*(v39 + 8))(v34, v37);
    v43 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

    [v43 init];
    v44 = v36;
    v45 = v211;
    sub_2C9870();
    v46 = sub_2C9880();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    return sub_306C(&v217);
  }

  sub_306C(&v217);
  v196 = a1;
  if (sub_2A07EC(a1))
  {
    v48 = v206[4];
    sub_35E0(v206, v206[3]);
    if (sub_2CBBC0() & 1) != 0 || (v49 = v206[4], sub_35E0(v206, v206[3]), (sub_2CBBB0()))
    {
      sub_2CC8E0();
      v50 = sub_2CC8D0();
      if (v50)
      {
        v51 = v50;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v52 = v212;
        v53 = sub_3ED0(v212, static Logger.default);
        swift_beginAccess();
        v54 = v213;
        v55 = *(v213 + 16);
        v194 = v53;
        v193 = v213 + 16;
        v192 = v55;
        v55(v32, v53, v52);
        v191 = v36;
        v56 = v36;

        v57 = sub_2CDFE0();
        v58 = sub_2CE670();

        v59 = os_log_type_enabled(v57, v58);
        v195 = v56;
        if (v59)
        {
          v60 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *&v217 = v189;
          *v60 = 136315394;
          *&v215 = v51;
          sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
          v61 = sub_2CEE70();
          v63 = sub_3F08(v61, v62, &v217);
          v190 = v51;
          v64 = v63;

          *(v60 + 4) = v64;
          *(v60 + 12) = 2080;
          v65 = [v56 debugDescription];
          v66 = sub_2CE270();
          v68 = v67;

          v51 = v190;
          v69 = sub_3F08(v66, v68, &v217);

          *(v60 + 14) = v69;
          _os_log_impl(&dword_0, v57, v58, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v60, 0x16u);
          swift_arrayDestroy();

          v54 = v213;
        }

        v70 = *(v54 + 8);
        v70(v32, v52);
        v71 = v52;
        v72 = v203;
        sub_2CC8B0();
        v73 = v204;
        v74 = v205;
        v75 = (*(v204 + 88))(v72, v205);
        if (v75 == enum case for AirPlayRouteSetupState.none(_:))
        {
          v192(v29, v194, v71);
          v76 = sub_2CDFE0();
          v77 = sub_2CE670();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_0, v76, v77, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v78, 2u);
          }

          v70(v29, v71);
          sub_2CE700();
          (*(v73 + 104))(v200, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v74);
          sub_2CC8C0();
          v79 = v202;
          v80 = v202[4];
          sub_35E0(v202, v202[3]);
          sub_EEAC(v79, &v217);
          sub_EEAC(v206, &v215);
          sub_EEAC(v201, v214);
          v81 = swift_allocObject();
          sub_F338(&v217, v81 + 16);
          sub_F338(&v215, v81 + 56);
          sub_F338(v214, v81 + 96);
          sub_2CC660();

LABEL_19:
          v36 = v191;
          goto LABEL_20;
        }

        if (v75 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
        {
          v132 = v202;
          v133 = v202[4];
          sub_35E0(v202, v202[3]);
          sub_2CC690();
          v134 = v132[4];
          sub_35E0(v132, v132[3]);
          sub_2CC670();
        }

        else
        {
          if (v75 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
          {
            v143 = v202;
            v144 = v202[4];
            sub_35E0(v202, v202[3]);
            sub_2CC690();
            v145 = v143[3];
            v146 = v143[4];
            v147 = v143;
          }

          else
          {
            if (v75 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
            {
              if (v75 == enum case for AirPlayRouteSetupState.complete(_:))
              {
                v149 = v199;
                v192(v199, v194, v71);
                v150 = v195;
                v151 = sub_2CDFE0();
                v152 = sub_2CE660();

                if (os_log_type_enabled(v151, v152))
                {
                  v153 = swift_slowAlloc();
                  v190 = v51;
                  v154 = v153;
                  v155 = swift_slowAlloc();
                  *&v217 = v155;
                  *v154 = 136315138;
                  v156 = [v150 debugDescription];
                  v157 = sub_2CE270();
                  v159 = v158;

                  v160 = sub_3F08(v157, v159, &v217);

                  *(v154 + 4) = v160;
                  _os_log_impl(&dword_0, v151, v152, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v154, 0xCu);
                  sub_306C(v155);

                  v161 = v199;
                }

                else
                {

                  v161 = v149;
                }

                v70(v161, v71);
              }

              else
              {
                if (v75 == enum case for AirPlayRouteSetupState.error(_:))
                {
                  v162 = v197;
                  v192(v197, v194, v71);

                  v163 = sub_2CDFE0();
                  v164 = v51;
                  v165 = sub_2CE680();

                  if (os_log_type_enabled(v163, v165))
                  {
                    v166 = swift_slowAlloc();
                    v167 = swift_slowAlloc();
                    *&v217 = v167;
                    *v166 = 136315138;
                    *&v215 = v164;
                    sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
                    v168 = sub_2CEE70();
                    v170 = sub_3F08(v168, v169, &v217);

                    *(v166 + 4) = v170;
                    _os_log_impl(&dword_0, v163, v165, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v166, 0xCu);
                    sub_306C(v167);

                    v171 = v197;
                  }

                  else
                  {

                    v171 = v162;
                  }

                  v70(v171, v71);
                  v186 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

                  [v186 init];
                  v187 = v195;
                  v130 = v211;
                  sub_2C9870();

LABEL_37:
                  v131 = sub_2C9880();
                  return (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
                }

                v172 = v198;
                v192(v198, v194, v71);
                v173 = v195;

                v174 = sub_2CDFE0();
                v175 = sub_2CE660();

                if (os_log_type_enabled(v174, v175))
                {
                  v176 = swift_slowAlloc();
                  *&v217 = swift_slowAlloc();
                  *v176 = 136315394;
                  sub_2CC8B0();
                  v177 = sub_2CE2A0();
                  v179 = sub_3F08(v177, v178, &v217);

                  *(v176 + 4) = v179;
                  *(v176 + 12) = 2080;
                  v180 = [v173 debugDescription];
                  v181 = sub_2CE270();
                  v183 = v182;

                  v184 = sub_3F08(v181, v183, &v217);

                  *(v176 + 14) = v184;
                  _os_log_impl(&dword_0, v174, v175, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v176, 0x16u);
                  swift_arrayDestroy();
                  v74 = v205;

                  v185 = v198;
                }

                else
                {

                  v185 = v172;
                }

                v70(v185, v71);
                (*(v204 + 8))(v203, v74);
              }

              goto LABEL_19;
            }

            v147 = v202;
            v145 = v202[3];
            v148 = v202[4];
          }

          sub_35E0(v147, v145);
          sub_2CC6A0();
        }

        _s23AudioFlowDelegatePlugin9PlayMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So06INPlayfH0CtF_0(v196, v195);
      }
    }
  }

LABEL_20:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v82 = v212;
  v83 = sub_3ED0(v212, static Logger.default);
  swift_beginAccess();
  v84 = v213;
  v85 = *(v213 + 16);
  v86 = v209;
  v85(v209, v83, v82);
  v87 = v36;
  v88 = sub_2CDFE0();
  v89 = sub_2CE690();

  v90 = os_log_type_enabled(v88, v89);
  v206 = v87;
  if (v90)
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v205 = v85;
    v93 = v92;
    *&v215 = v92;
    *v91 = 136315138;
    v94 = v87;
    v95 = [v94 description];
    v96 = sub_2CE270();
    v98 = v97;

    v82 = v212;
    v99 = sub_3F08(v96, v98, &v215);

    *(v91 + 4) = v99;
    _os_log_impl(&dword_0, v88, v89, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v91, 0xCu);
    sub_306C(v93);
    v85 = v205;
    v100 = v213;

    v101 = *(v100 + 8);
    v101(v209, v82);
  }

  else
  {

    v101 = *(v84 + 8);
    v101(v86, v82);
  }

  v102 = v208;
  if (sub_8FD94())
  {
    v85(v102, v83, v82);
    v103 = sub_2CDFE0();
    v104 = sub_2CE670();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v215 = v106;
      *v105 = 136315138;
      if (qword_34C040 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      ObjectType = swift_getObjectType();
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v107 = sub_2CE2A0();
      v109 = sub_3F08(v107, v108, &v215);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_0, v103, v104, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v105, 0xCu);
      sub_306C(v106);

      v110 = v212;
      v111 = v208;
    }

    else
    {

      v111 = v102;
      v110 = v82;
    }

    v101(v111, v110);
    v124 = qword_34C040;

    v125 = v124 == -1;
    v126 = v206;
    if (!v125)
    {
      swift_once();
    }

    swift_beginAccess();
    v127 = static PlayMedia.intentHandler;
    v128 = v126;
    v129 = v127;
    v130 = v211;
    sub_2C9870();
    goto LABEL_37;
  }

  v85(v207, v83, v82);
  v112 = v206;

  v113 = sub_2CDFE0();
  v114 = sub_2CE670();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v115 = 138412546;
    sub_2CCF90();
    if (v117)
    {
      v118 = sub_2CE2F0();
      v120 = v119;

      sub_10C40();
      swift_allocError();
      *v121 = v118;
      v121[1] = v120;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      v123 = v122;
    }

    else
    {
      v122 = 0;
      v123 = 0;
    }

    *(v115 + 4) = v122;
    *v116 = v123;
    *(v115 + 12) = 2112;
    v135 = [v112 launchId];
    if (v135)
    {
      v136 = v135;
      v137 = sub_2CE270();
      v139 = v138;

      sub_10C40();
      swift_allocError();
      *v140 = v137;
      v140[1] = v139;
      v135 = _swift_stdlib_bridgeErrorToNSError();
      v141 = v135;
    }

    else
    {
      v141 = 0;
    }

    v82 = v212;
    *(v115 + 14) = v135;
    v116[1] = v141;
    _os_log_impl(&dword_0, v113, v114, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v115, 0x16u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();
  }

  v101(v207, v82);
  v142 = sub_2C9880();
  return (*(*(v142 - 8) + 56))(v211, 1, 1, v142);
}

uint64_t sub_8C31C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a5;
  v208 = a4;
  v204 = a3;
  v213 = a6;
  v207 = sub_2CC760();
  v206 = *(v207 - 8);
  v8 = *(v206 + 64);
  v9 = __chkstk_darwin(v207);
  v202 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v205 = &v191 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v214 = v12;
  v215 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v209 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v210 = &v191 - v18;
  v19 = __chkstk_darwin(v17);
  v211 = &v191 - v20;
  v21 = __chkstk_darwin(v19);
  v200 = &v191 - v22;
  v23 = __chkstk_darwin(v21);
  v199 = &v191 - v24;
  v25 = __chkstk_darwin(v23);
  v201 = &v191 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v191 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v191 - v31;
  __chkstk_darwin(v30);
  v34 = &v191 - v33;
  v35 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v220 = v35;
  v221 = &protocol witness table for INPlayMediaIntent;
  *&v219 = a2;
  sub_35E0(&v219, v35);
  v36 = a2;
  v212 = v35;
  v37 = &off_34B000;
  if (!sub_2CC120())
  {
    sub_306C(&v219);
    v198 = a1;
    v49 = sub_2A07EC(a1);
    v50 = v215;
    if ((v49 & 1) == 0)
    {
      goto LABEL_21;
    }

    v51 = v208[4];
    sub_35E0(v208, v208[3]);
    if ((sub_2CBBC0() & 1) == 0)
    {
      v52 = v208[4];
      sub_35E0(v208, v208[3]);
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2CC8E0();
    v53 = v36;
    v54 = sub_2CC8D0();
    if (!v54)
    {

      goto LABEL_21;
    }

    v55 = v54;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v193 = v36;
    v56 = v214;
    v57 = sub_3ED0(v214, static Logger.default);
    swift_beginAccess();
    v58 = *(v50 + 16);
    v196 = v57;
    v195 = v50 + 16;
    v194 = v58;
    v58(v32, v57, v56);
    v59 = v53;

    v60 = sub_2CDFE0();
    v61 = sub_2CE670();

    v62 = os_log_type_enabled(v60, v61);
    v197 = v59;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v219 = v192;
      *v63 = 136315394;
      *&v217 = v55;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
      v64 = sub_2CEE70();
      v66 = sub_3F08(v64, v65, &v219);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      v67 = [v59 debugDescription];
      v68 = sub_2CE270();
      v70 = v69;

      v50 = v215;
      v71 = sub_3F08(v68, v70, &v219);

      *(v63 + 14) = v71;
      _os_log_impl(&dword_0, v60, v61, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v63, 0x16u);
      swift_arrayDestroy();

      v56 = v214;
    }

    v72 = *(v50 + 8);
    v72(v32, v56);
    v73 = v205;
    sub_2CC8B0();
    v74 = v206;
    v75 = v207;
    v76 = (*(v206 + 88))(v73, v207);
    if (v76 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v194(v29, v196, v56);
      v77 = sub_2CDFE0();
      v78 = sub_2CE670();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_0, v77, v78, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v79, 2u);
      }

      v72(v29, v56);
      v80 = v197;
      sub_2CE700();
      (*(v74 + 104))(v202, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v75);
      sub_2CC8C0();
      v81 = v204;
      v82 = v204[4];
      sub_35E0(v204, v204[3]);
      sub_EEAC(v81, &v219);
      sub_EEAC(v208, &v217);
      sub_EEAC(v203, v216);
      v83 = swift_allocObject();
      sub_F338(&v219, v83 + 16);
      sub_F338(&v217, v83 + 56);
      sub_F338(v216, v83 + 96);
      sub_2CC660();

LABEL_19:
      v36 = v193;
      v37 = &off_34B000;
LABEL_21:
      if (v37[491] != -1)
      {
        swift_once();
      }

      v84 = v214;
      v85 = sub_3ED0(v214, static Logger.default);
      swift_beginAccess();
      v86 = *(v50 + 16);
      v87 = v211;
      v86(v211, v85, v84);
      v88 = v36;
      v89 = sub_2CDFE0();
      v90 = sub_2CE690();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *&v217 = v208;
        *v91 = 136315138;
        v92 = v88;
        v93 = [v92 description];
        LODWORD(v207) = v90;
        v94 = v86;
        v95 = v85;
        v96 = v88;
        v97 = v93;
        v98 = sub_2CE270();
        v100 = v99;

        v88 = v96;
        v85 = v95;
        v86 = v94;
        v101 = sub_3F08(v98, v100, &v217);

        *(v91 + 4) = v101;
        _os_log_impl(&dword_0, v89, v207, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v91, 0xCu);
        sub_306C(v208);
        v84 = v214;

        v102 = *(v215 + 8);
        v102(v211, v84);
      }

      else
      {

        v102 = *(v50 + 8);
        v102(v87, v84);
      }

      v103 = v210;
      if ((sub_8FD94() & 1) == 0)
      {
        v86(v209, v85, v84);
        v111 = v88;

        v112 = sub_2CDFE0();
        v113 = sub_2CE670();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *v114 = 138412546;
          sub_2CCF90();
          if (v116)
          {
            v117 = sub_2CE2F0();
            v119 = v118;

            sub_10C40();
            swift_allocError();
            *v120 = v117;
            v120[1] = v119;
            v121 = _swift_stdlib_bridgeErrorToNSError();
            v122 = v121;
          }

          else
          {
            v121 = 0;
            v122 = 0;
          }

          *(v114 + 4) = v121;
          *v115 = v122;
          *(v114 + 12) = 2112;
          v135 = [v111 launchId];
          if (v135)
          {
            v136 = v135;
            v137 = sub_2CE270();
            v139 = v138;

            sub_10C40();
            swift_allocError();
            *v140 = v137;
            v140[1] = v139;
            v135 = _swift_stdlib_bridgeErrorToNSError();
            v141 = v135;
          }

          else
          {
            v141 = 0;
          }

          *(v114 + 14) = v135;
          v115[1] = v141;
          _os_log_impl(&dword_0, v112, v113, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v114, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();
        }

        v102(v209, v214);
        v128 = sub_2C9880();
        v129 = *(*(v128 - 8) + 56);
        v130 = v213;
        v131 = 1;
        return v129(v130, v131, 1, v128);
      }

      v86(v103, v85, v84);
      v104 = sub_2CDFE0();
      v105 = sub_2CE670();
      if (os_log_type_enabled(v104, v105))
      {
        v211 = v88;
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v217 = v107;
        *v106 = 136315138;
        if (qword_34C040 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v108 = sub_2CE2A0();
        v110 = sub_3F08(v108, v109, &v217);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_0, v104, v105, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v106, 0xCu);
        sub_306C(v107);

        v102(v210, v214);
        v88 = v211;
      }

      else
      {

        v102(v103, v84);
      }

      v123 = qword_34C040;

      if (v123 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v124 = static PlayMedia.intentHandler;
      v125 = v88;
      v126 = v124;
      v127 = v213;
      sub_2C9870();
      v128 = sub_2C9880();
      v129 = *(*(v128 - 8) + 56);
      v130 = v127;
LABEL_38:
      v131 = 0;
      return v129(v130, v131, 1, v128);
    }

    if (v76 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v132 = v204;
      v133 = v204[4];
      sub_35E0(v204, v204[3]);
      sub_2CC690();
      v134 = v132[4];
      sub_35E0(v132, v132[3]);
      sub_2CC670();
    }

    else
    {
      if (v76 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v142 = v204;
        v143 = v204[4];
        sub_35E0(v204, v204[3]);
        sub_2CC690();
        v144 = v142[3];
        v145 = v142[4];
        v146 = v142;
      }

      else
      {
        if (v76 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v76 == enum case for AirPlayRouteSetupState.complete(_:))
          {
            v208 = v55;
            v149 = v201;
            v194(v201, v196, v56);
            v150 = v197;
            v151 = sub_2CDFE0();
            v152 = sub_2CE660();

            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              *&v219 = v154;
              *v153 = 136315138;
              v155 = [v150 debugDescription];
              v156 = v56;
              v157 = sub_2CE270();
              v159 = v158;

              v160 = sub_3F08(v157, v159, &v219);

              *(v153 + 4) = v160;
              _os_log_impl(&dword_0, v151, v152, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v153, 0xCu);
              sub_306C(v154);

              v161 = v156;
              v50 = v215;
              v72(v201, v161);
            }

            else
            {

              v72(v149, v56);
            }
          }

          else
          {
            if (v76 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v162 = v199;
              v194(v199, v196, v56);

              v163 = sub_2CDFE0();
              v164 = v55;
              v165 = sub_2CE680();

              if (os_log_type_enabled(v163, v165))
              {
                v166 = swift_slowAlloc();
                v167 = swift_slowAlloc();
                *&v219 = v167;
                *v166 = 136315138;
                *&v217 = v164;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
                v168 = sub_2CEE70();
                v170 = sub_3F08(v168, v169, &v219);

                *(v166 + 4) = v170;
                _os_log_impl(&dword_0, v163, v165, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v166, 0xCu);
                sub_306C(v167);

                v171 = v199;
              }

              else
              {

                v171 = v162;
              }

              v72(v171, v56);
              v188 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v188 init];
              v189 = v197;
              v190 = v213;
              sub_2C9870();

              v128 = sub_2C9880();
              v129 = *(*(v128 - 8) + 56);
              v130 = v190;
              goto LABEL_38;
            }

            v172 = v200;
            v194(v200, v196, v56);
            v173 = v197;

            v174 = sub_2CDFE0();
            v175 = sub_2CE660();

            if (os_log_type_enabled(v174, v175))
            {
              v176 = swift_slowAlloc();
              *&v219 = swift_slowAlloc();
              *v176 = 136315394;
              v177 = v173;
              sub_2CC8B0();
              v178 = sub_2CE2A0();
              v180 = sub_3F08(v178, v179, &v219);

              *(v176 + 4) = v180;
              *(v176 + 12) = 2080;
              v181 = [v177 debugDescription];
              v182 = sub_2CE270();
              v184 = v183;

              v185 = sub_3F08(v182, v184, &v219);

              *(v176 + 14) = v185;
              _os_log_impl(&dword_0, v174, v175, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v176, 0x16u);
              swift_arrayDestroy();

              v75 = v207;

              v186 = v214;
              v187 = v200;
              v50 = v215;
            }

            else
            {

              v187 = v172;
              v186 = v56;
            }

            v72(v187, v186);
            (*(v206 + 8))(v205, v75);
          }

          goto LABEL_19;
        }

        v146 = v204;
        v144 = v204[3];
        v147 = v204[4];
      }

      sub_35E0(v146, v144);
      sub_2CC6A0();
    }

    v148 = v197;
    sub_83764(v198, v197, sub_8C31C);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = v214;
  v39 = sub_3ED0(v214, static Logger.default);
  swift_beginAccess();
  v40 = v215;
  (*(v215 + 16))(v34, v39, v38);
  v41 = sub_2CDFE0();
  v42 = sub_2CE690();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v43, 2u);
  }

  (*(v40 + 8))(v34, v38);
  v44 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v44 init];
  v45 = v36;
  v46 = v213;
  sub_2C9870();
  v47 = sub_2C9880();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  return sub_306C(&v219);
}

uint64_t sub_8DAE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v98 = a1;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v95 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v87 - v15;
  __chkstk_darwin(v14);
  v18 = &v87 - v17;
  v100 = a2;
  v19 = type metadata accessor for DetermineIntent();
  v20 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  v21 = swift_dynamicCast();
  v97 = a4;
  if (v21)
  {
    sub_F338(v101, v103);
    sub_35E0(v103, v103[3]);
    if (sub_2CC120())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v22 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      (*(v8 + 16))(v18, v22, v7);
      v23 = sub_2CDFE0();
      v24 = sub_2CE690();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v25, 2u);
      }

      (*(v8 + 8))(v18, v7);
      v26 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

      [v26 init];
      v27 = v20;
      sub_2C9870();
      v28 = sub_2C9880();
      (*(*(v28 - 8) + 56))(a4, 0, 1, v28);
      return sub_306C(v103);
    }

    sub_306C(v103);
  }

  else
  {
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_30B8(v101, &qword_3530A0, &qword_2D1EF8);
  }

  if (sub_28E988())
  {
    v30 = a3[4];
    sub_35E0(a3, a3[3]);
    if ((sub_2CBBC0() & 1) == 0)
    {
      v31 = a3[4];
      sub_35E0(a3, a3[3]);
      sub_2CBBB0();
    }
  }

  v89 = v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v33 = *(v8 + 16);
  v92 = v32;
  v91 = v8 + 16;
  v90 = v33;
  v33(v16, v32, v7);
  v34 = v20;
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v97;
  v93 = v34;
  v94 = v8;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v88 = v16;
    v40 = v39;
    v87 = swift_slowAlloc();
    *&v101[0] = v87;
    *v40 = 136315138;
    v41 = v34;
    v42 = v38;
    v43 = [v41 description];
    v44 = sub_2CE270();
    v45 = v7;
    v47 = v46;

    v38 = v42;
    v48 = sub_3F08(v44, v47, v101);
    v7 = v45;

    *(v40 + 4) = v48;
    v49 = v94;
    _os_log_impl(&dword_0, v35, v36, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v40, 0xCu);
    sub_306C(v87);

    v50 = *(v49 + 8);
    v50(v88, v45);
  }

  else
  {

    v50 = *(v8 + 8);
    v50(v16, v7);
  }

  if (sub_8FD94())
  {
    v51 = v95;
    v90(v95, v92, v7);
    v52 = sub_2CDFE0();
    v53 = sub_2CE670();
    if (os_log_type_enabled(v52, v53))
    {
      v96 = v7;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v101[0] = v55;
      *v54 = 136315138;
      if (qword_34BF80 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      ObjectType = swift_getObjectType();
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v56 = sub_2CE2A0();
      v58 = sub_3F08(v56, v57, v101);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_0, v52, v53, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v54, 0xCu);
      sub_306C(v55);

      v50(v95, v96);
    }

    else
    {

      v50(v51, v7);
    }

    v72 = qword_34BF80;

    v73 = v72 == -1;
    v74 = v93;
    if (!v73)
    {
      swift_once();
    }

    swift_beginAccess();
    v75 = static Determine.intentHandler;
    v76 = v74;
    v77 = v75;
    sub_2C9870();
    v78 = sub_2C9880();
    return (*(*(v78 - 8) + 56))(v38, 0, 1, v78);
  }

  else
  {
    v90(v96, v92, v7);
    v59 = v93;

    v60 = sub_2CDFE0();
    v61 = sub_2CE670();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v7;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412546;
      sub_2CCF90();
      if (v65)
      {
        v66 = sub_2CE2F0();
        v68 = v67;

        sub_10C40();
        swift_allocError();
        *v69 = v66;
        v69[1] = v68;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        v71 = v70;
      }

      else
      {
        v70 = 0;
        v71 = 0;
      }

      *(v63 + 4) = v70;
      *v64 = v71;
      *(v63 + 12) = 2112;
      v79 = [v59 launchId];
      if (v79)
      {
        v80 = v79;
        v81 = sub_2CE270();
        v83 = v82;

        sub_10C40();
        swift_allocError();
        *v84 = v81;
        v84[1] = v83;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        v85 = v79;
      }

      else
      {
        v85 = 0;
      }

      v7 = v62;
      *(v63 + 14) = v79;
      v64[1] = v85;
      _os_log_impl(&dword_0, v60, v61, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v63, 0x16u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();

      v38 = v97;
    }

    v50(v96, v7);
    v86 = sub_2C9880();
    return (*(*(v86 - 8) + 56))(v38, 1, 1, v86);
  }
}