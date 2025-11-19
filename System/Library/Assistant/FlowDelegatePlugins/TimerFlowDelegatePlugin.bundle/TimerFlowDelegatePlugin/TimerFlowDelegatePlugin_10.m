uint64_t sub_112E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_112F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_112FE0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

id sub_113084(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_125B8C();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  if (!a1)
  {
    v12 = v5;
    goto LABEL_8;
  }

  v6 = v5;

  sub_12432C();
  if (!v7)
  {

    goto LABEL_8;
  }

  sub_125BDC();

  v8 = objc_allocWithZone(INSpeakableString);
  v9 = sub_125B8C();

  v10 = [v8 initWithSpokenPhrase:v9];

  if (!v10)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = [v10 spokenPhrase];

  if (!v11)
  {
    sub_125B9C();
    v11 = sub_125B8C();
  }

LABEL_9:
  [v5 setLabel:v11];

  if (a1)
  {

    UsoEntity_common_Timer.duration.getter();
  }

  else
  {
    [objc_opt_self() defaultDuration];
  }

  isa = sub_125D5C().super.super.isa;
  [v5 setDuration:isa];

  if (a1)
  {

    if (sub_12430C())
    {
      sub_1243FC();
    }

    else
    {
      [objc_opt_self() defaultDuration];
    }
  }

  else
  {
    [objc_opt_self() defaultDuration];
  }

  v14 = sub_125D5C().super.super.isa;
  [v5 setRemainingTime:v14];

  if (a1)
  {

    v15 = UsoEntity_common_Timer.timerState.getter();

    [v5 setState:v15];

    v16 = UsoEntity_common_Timer.timerType.getter();

    [v5 setType:v16];

    v17.super.super.isa = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
  }

  else
  {
    [v5 setState:0];
    [v5 setType:0];
    v17.super.super.isa = 0;
  }

  [v5 setShouldMatchAny:v17.super.super.isa];

  return v5;
}

uint64_t sub_1133B8(uint64_t a1, uint64_t a2)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a1;
  v2 = sub_125CDC();
  v3 = type metadata accessor for TimerTimer(0);
  WitnessTable = swift_getWitnessTable();
  return sub_11394C(sub_116010, v7, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);
}

uint64_t sub_113460()
{
  sub_1153C8();
  v0 = sub_12438C();
  if (v0)
  {
  }

  else
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v1 = sub_125ABC();
    sub_5B30(v1, qword_162FF0);

    v2 = sub_125AAC();
    v3 = sub_125DEC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      sub_12466C();

      v6 = sub_125BAC();
      v8 = sub_8530(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, v2, v3, "Fail to build uso entity %s", v4, 0xCu);
      sub_5BB0(v5);
    }
  }

  return v0;
}

uint64_t sub_1135FC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_12513C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_163020, &qword_12B9C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = [v1 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_125B9C();
    v31 = v16;
    v32 = v15;
  }

  else
  {
    v31 = 0xE000000000000000;
    v32 = 0;
  }

  v17 = sub_123D1C();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = [v1 label];
  if (v18)
  {
    v19 = v18;
    v29 = sub_125B9C();
    v30 = v20;
  }

  else
  {
    v29 = 0x72656D6954;
    v30 = 0xE500000000000000;
  }

  v21 = [v1 duration];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v24 = v23;

    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  v25 = [v1 remainingTime];
  v26 = v25;
  if (v25)
  {
    [v25 doubleValue];
  }

  [v1 state];
  sub_1258BC();
  (*(v5 + 104))(v8, enum case for PunchOutApp.timer(_:), v4);
  sub_12512C();
  (*(v5 + 8))(v8, v4);
  return sub_124F3C();
}

uint64_t sub_11394C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_125D8C();
  if (!v26)
  {
    return sub_125CBC();
  }

  v48 = v26;
  v52 = sub_1260AC();
  v39 = sub_1260BC();
  sub_12605C(v48);
  result = sub_125D7C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_125DBC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_12609C();
      result = sub_125D9C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_113D6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_12513C();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&unk_15F170, &unk_126E00);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v84 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v88 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v19 = &v83 - v18;
  __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v83 = v22;
  if (a1)
  {
    v23 = a1;
  }

  else
  {
    v24 = type metadata accessor for TimerTimer.Builder(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v23 = sub_94508();
  }

  v27 = sub_124D6C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();

  sub_124D5C();
  v30 = [v2 duration];
  v31 = v30;
  if (v30)
  {
    [v30 doubleValue];
  }

  sub_124D4C();

  v32 = sub_124D3C();

  v33 = a2;
  v91 = v32;
  sub_124D0C();
  v34 = *(v27 + 48);
  v35 = *(v27 + 52);
  swift_allocObject();
  sub_124D5C();
  v36 = [v3 remainingTime];
  v37 = v36;
  if (v36)
  {
    [v36 doubleValue];
  }

  sub_124D4C();

  v38 = sub_124D3C();

  v87 = v33;
  v90 = v38;
  sub_124D0C();
  v39 = [v3 label];
  v89 = a2;
  if (v39)
  {
    v40 = v39;
    sub_125B9C();

    sub_125BCC();

    v41 = sub_124E4C();
    (*(*(v41 - 8) + 56))(v21, 0, 1, v41);
  }

  else
  {
    v41 = sub_124E4C();
    (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
  }

  v42 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  swift_beginAccess();
  sub_10F5E4(v21, v23 + v42);
  swift_endAccess();
  sub_5CA8(v21, &unk_15F170, &unk_126E00);
  [v3 type];
  sub_12588C();
  sub_124E4C();
  v43 = *(v41 - 8);
  v44 = *(v43 + 56);
  v45 = v43 + 56;
  v44(v19, 0, 1, v41);
  v46 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type;
  swift_beginAccess();
  sub_10F5E4(v19, v23 + v46);
  swift_endAccess();
  sub_5CA8(v19, &unk_15F170, &unk_126E00);
  [v3 state];
  sub_1258AC();
  v92 = v45;
  v93 = v44;
  v44(v19, 0, 1, v41);
  v47 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state;
  swift_beginAccess();
  sub_10F5E4(v19, v23 + v47);
  swift_endAccess();
  sub_5CA8(v19, &unk_15F170, &unk_126E00);
  v48 = *(v23 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime);
  *(v23 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime) = v90;

  v49 = *(v23 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration);
  *(v23 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration) = v91;

  v51 = v85;
  v50 = v86;
  (*(v85 + 104))(v9, enum case for PunchOutApp.timer(_:), v86);
  sub_12511C();
  (*(v51 + 8))(v9, v50);
  v52 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_action;
  swift_beginAccess();
  sub_10F5E4(v19, v23 + v52);
  swift_endAccess();
  sub_5CA8(v19, &unk_15F170, &unk_126E00);
  v53 = [v3 identifier];
  if (v53)
  {
    v54 = v53;
    sub_125B9C();
  }

  v56 = v88;
  v55 = v89;
  sub_124E2C();
  v93(v19, 0, 1, v41);
  v57 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_timerIDString;
  swift_beginAccess();
  sub_22A1C(v19, v23 + v57);
  swift_endAccess();

  v58 = [v3 device];
  if (!v58)
  {
    goto LABEL_29;
  }

  v59 = v58;
  v60 = [v58 roomName];
  if (v60)
  {
    v61 = v60;
    sub_125B9C();

    v62 = v83;
    sub_125BCC();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v83;
  }

  v64 = 1;
  v93(v62, v63, 1, v41);
  v65 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_roomName;
  swift_beginAccess();
  sub_10F5E4(v62, v23 + v65);
  swift_endAccess();
  sub_5CA8(v62, &unk_15F170, &unk_126E00);
  v66 = [v59 deviceName];
  if (v66)
  {
    v67 = v66;
    sub_125B9C();

    sub_125BCC();

    v64 = 0;
  }

  v68 = v93;
  v93(v56, v64, 1, v41);
  v69 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_deviceName;
  swift_beginAccess();
  sub_10F5E4(v56, v23 + v69);
  swift_endAccess();
  sub_5CA8(v56, &unk_15F170, &unk_126E00);
  v68(v19, 1, 1, v41);
  swift_beginAccess();
  sub_10F5E4(v19, v23 + v52);
  swift_endAccess();
  sub_5CA8(v19, &unk_15F170, &unk_126E00);
  v70 = [v59 targetMatchType];
  if (v70 == &dword_0 + 2)
  {
    v71 = v84;
    sub_125BCC();
    v55 = v89;
LABEL_25:
    v93(v71, 0, 1, v41);
    v72 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_targetDeviceType;
    swift_beginAccess();
    sub_10F5E4(v71, v23 + v72);
    swift_endAccess();
    sub_5CA8(v71, &unk_15F170, &unk_126E00);
    v73 = [v59 isInRespondingRoom];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 BOOLValue];
    }

    else
    {
      v75 = 0;
    }

    *(v23 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isInRespondingRoom) = v75;
LABEL_29:
    v76 = type metadata accessor for TimerTimer(0);
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v79 = sub_96BA0(v23);

    swift_beginAccess();
    v80 = *(v79 + 16);
    *(v79 + 16) = v55;
    v81 = v87;

    return v79;
  }

  v71 = v84;
  v55 = v89;
  if (v70 == &dword_0 + 1 || !v70)
  {
    sub_125BCC();
    goto LABEL_25;
  }

  v94 = v70;
  result = sub_1261EC();
  __break(1u);
  return result;
}

id sub_1147F8()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_125B8C();

  v3 = sub_125B8C();
  v4 = [v1 initWithIdentifier:v2 displayString:v3];

  v5 = v4;
  [v5 setLabel:0];
  v6 = objc_opt_self();
  [v6 defaultDuration];
  isa = sub_125D5C().super.super.isa;
  [v5 setDuration:isa];

  [v6 defaultDuration];
  v8 = sub_125D5C().super.super.isa;
  [v5 setRemainingTime:v8];

  [v5 setState:0];
  return v5;
}

uint64_t sub_114918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v32 - v6;
  v7 = sub_12513C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5AE8(&qword_163020, &qword_12B9C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = [v2 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_125B9C();
    v36 = v19;
    v37 = v18;
  }

  else
  {
    v36 = 0xE000000000000000;
    v37 = 0;
  }

  v20 = sub_123D1C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, a1, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  v22 = [v2 label];
  if (v22)
  {
    v23 = v22;
    v34 = sub_125B9C();
    v35 = v24;
  }

  else
  {
    v34 = 0x72656D6954;
    v35 = 0xE500000000000000;
  }

  v25 = [v2 duration];
  v26 = v25;
  if (v25)
  {
    [v25 doubleValue];
    v28 = v27;

    v33 = v28;
  }

  else
  {
    v33 = 0;
  }

  v29 = [v2 remainingTime];
  v30 = v29;
  if (v29)
  {
    [v29 doubleValue];
  }

  [v2 state];
  sub_1258BC();
  (*(v8 + 104))(v11, enum case for PunchOutApp.timer(_:), v7);
  sub_12512C();
  (*(v8 + 8))(v11, v7);
  return sub_124F3C();
}

Swift::Bool __swiftcall SiriTimer.isDefault()()
{
  v1 = [v0 duration];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_self();
  [v5 defaultDuration];
  if (v2)
  {
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = [v0 remainingTime];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  [v5 defaultDuration];
  result = 0;
  if (v10 && v12 == v13)
  {
    v14 = [v0 identifier];
    if (v14)
    {

      return 0;
    }

    else
    {
      [v0 state];
      v15 = sub_1258BC();
      return v15 == sub_1258BC();
    }
  }

  return result;
}

uint64_t sub_114E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v59 = a4;
  v10 = sub_5AE8(&qword_162C28, &qword_12B6D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v58 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v56 - v14;
  v16 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v56 - v18;
  v20 = sub_125B4C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v63 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  v24 = sub_113460();
  v64 = v20;
  if (v24)
  {
    v56[1] = a3;
    v61 = v21;
    v62 = a5;
    v25 = [v65 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_125B9C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v56[0] = a1;
    v57 = a2;
    v66[0] = v27;
    v66[1] = v29;
    sub_5AE8(&qword_162000, &qword_129F18);
    v60 = sub_125BAC();
    if (qword_15EE98 != -1)
    {
      swift_once();
    }

    v30 = sub_125ADC();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v33 = v31 + 56;
    v32(v15, 1, 1, v30);
    sub_1257EC();

    v34 = v65;
    sub_125B2C();
    v60 = v33;
    v65 = v32;
    v49 = v61;
    v50 = *(v61 + 56);
    v51 = v64;
    v50(v19, 0, 1, v64);
    v52 = *(v49 + 32);
    v53 = v63;
    v52(v63, v19, v51);
    if (v57)
    {
      if ((v59 & 1) == 0)
      {

        v54 = v58;
        sub_125ACC();
        v65(v54, 0, 1, v30);
        v53 = v63;
        sub_125B3C();
      }
    }

    v55 = v62;
    v52(v62, v53, v51);
    return (v50)(v55, 0, 1, v51);
  }

  else
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v35 = sub_125ABC();
    sub_5B30(v35, qword_162FF0);
    v36 = v65;
    v37 = sub_125AAC();
    v38 = sub_125DEC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v21;
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v39 = 136315138;
      v42 = v36;
      v43 = [v42 description];
      v44 = sub_125B9C();
      v46 = v45;

      v47 = sub_8530(v44, v46, v66);

      *(v39 + 4) = v47;
      _os_log_impl(&dword_0, v37, v38, "Fail to build rr entity from timer %s", v39, 0xCu);
      sub_5BB0(v41);
      v21 = v40;

      v20 = v64;
    }

    return (*(v21 + 56))(a5, 1, 1, v20);
  }
}

uint64_t sub_1153C8()
{
  v1 = v0;
  v2 = sub_12442C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12466C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_12465C();
  v11 = sub_12481C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_12480C();
  (*(v3 + 104))(v6, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v2);
  sub_1247FC();
  (*(v3 + 8))(v6, v2);
  v14 = [v0 duration];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  [v14 doubleValue];
  v17 = v16;
  v18 = v16;

  v19 = sub_12476C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_12475C();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_12474C();
  v23 = sub_124B3C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_124B2C();

  sub_124B0C();

  sub_124B1C();

  v26 = sub_1247EC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1247DC();

  sub_1247BC();

  sub_12463C();

LABEL_6:
  v29 = [v1 remainingTime];
  if (v29)
  {
    v30 = v29;
    [v29 doubleValue];
    v32 = v31;
    v33 = v31;

    v34 = sub_12476C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    result = sub_12475C();
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v32 > -9.22337204e18)
      {
        if (v32 < 9.22337204e18)
        {
          sub_12474C();
          v37 = sub_124B3C();
          v38 = *(v37 + 48);
          v39 = *(v37 + 52);
          swift_allocObject();
          sub_124B2C();

          sub_124B0C();

          sub_124B1C();

          v40 = sub_1247EC();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          sub_1247DC();

          sub_1247BC();

          sub_12462C();

          goto LABEL_11;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_11:
  v43 = [v1 label];
  if (v43)
  {
    v44 = v43;
    v45 = sub_125B9C();
    v47 = v46;

    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      sub_12464C();
    }
  }

  return v10;
}

id sub_11585C()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - v4;
  v6 = [objc_allocWithZone(SATimerObject) init];
  v7 = [v0 label];
  if (v7)
  {
    v8 = v7;
    v9 = sub_125B9C();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      [v6 setTitle:v8];
    }
  }

  v13 = [v1 duration];
  if (v13)
  {
    v14 = v13;
    [v13 doubleValue];
    v16 = v15;

    v17 = [objc_allocWithZone(NSNumber) initWithDouble:v16];
    [v6 setTimerValue:v17];
  }

  v18 = [v1 state];
  if (v18 == &dword_0 + 1)
  {
    v19 = &SATimerStateRunningValue;
  }

  else
  {
    v19 = &SATimerStateUndefinedValue;
  }

  if (v18 == &dword_0 + 2)
  {
    v19 = &SATimerStatePausedValue;
  }

  [v6 setState:*v19];
  v20 = [v1 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_125B9C();
    v24 = v23;

    v32 = 0;
    v33 = 0xE000000000000000;
    v25 = v6;
    sub_125FEC(25);

    v32 = 0xD000000000000017;
    v33 = 0x800000000012F1D0;
    v34._countAndFlagsBits = v22;
    v34._object = v24;
    sub_125C0C(v34);

    sub_122ECC();

    v26 = sub_122EDC();
    v27 = *(v26 - 8);
    v29 = 0;
    if ((*(v27 + 48))(v5, 1, v26) != 1)
    {
      sub_122EAC(v28);
      v29 = v30;
      (*(v27 + 8))(v5, v26);
    }

    [v25 setIdentifier:v29];
  }

  if ([v1 type] == &dword_0 + 2)
  {
    [v6 setType:SATimerTypeSleepTimerValue];
  }

  return v6;
}

uint64_t sub_115B98()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162FF0);
  sub_5B30(v0, qword_162FF0);
  return sub_12578C();
}

uint64_t sub_115BE4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for TimerTimer.Builder(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_94508();
  sub_125CBC();
  v8 = [v3 device];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 roomID];

    if (v10)
    {

      sub_125B9C();

      __chkstk_darwin(v11);
      sub_125CDC();

      swift_getWitnessTable();
      sub_12602C();
    }
  }

  v12 = [v3 label];
  if (v12)
  {
    v13 = v12;
    v14 = sub_125B9C();
    v16 = v15;

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      __chkstk_darwin(v17);
      sub_125CDC();

      swift_getWitnessTable();
      v19 = sub_125C2C();

      *(v7 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom) = (v19 & 1) == 0;
      __chkstk_darwin(a2);

      swift_getWitnessTable();
      v27 = sub_12602C();
      __chkstk_darwin(v27);
      v20 = sub_125C2C();

      *(v7 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup) = (v20 & 1) == 0;
    }
  }

  sub_125CDC();
  swift_getWitnessTable();
  v21 = sub_125DAC();

  *(v7 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom) = v21 & 1;

  v23 = sub_113D6C(v22, 0);

  *a3 = v23;
  return result;
}

uint64_t sub_116030(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 device];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 roomID];

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = sub_125B9C();
  v13 = v12;

  if (v11 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_1261BC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v16 = [v7 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_125B9C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a4 identifier];
  if (!v21)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v22 = v21;
  v23 = sub_125B9C();
  v25 = v24;

  if (!v20)
  {
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_23:
    v26 = 0;
    return v26 & 1;
  }

  if (v25)
  {
    if (v18 != v23 || v20 != v25)
    {
      v28 = sub_1261BC();

      v26 = v28 ^ 1;
      return v26 & 1;
    }

    goto LABEL_23;
  }

LABEL_22:

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_116200(id *a1, void *a2)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_125B9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a2 identifier];
  if (!v8)
  {
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = sub_125B9C();
  v12 = v11;

  if (!v7)
  {
    if (v12)
    {
LABEL_15:

      v15 = 1;
      return v15 & 1;
    }

LABEL_17:
    v15 = 0;
    return v15 & 1;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  if (v5 == v10 && v7 == v12)
  {

    goto LABEL_17;
  }

  v14 = sub_1261BC();

  v15 = v14 ^ 1;
  return v15 & 1;
}

uint64_t sub_116320(id *a1, void *a2)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_125B9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a2 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_125B9C();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_1261BC();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
LABEL_13:
    v14 = 0;
LABEL_18:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

id sub_11649C(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v30 - v4;
  v6 = sub_124F8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  sub_12408C();
  sub_124F7C();

  v11 = sub_124F5C();

  v12 = *(v7 + 8);
  v12(v10, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_124F7C();
  sub_124F6C();
  v12(v10, v6);
  v13 = sub_125B4C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {

    sub_5CA8(v5, &qword_15F5F0, &unk_12AAA0);
LABEL_12:
    sub_1257EC();

    return sub_113084(v29);
  }

  sub_1257EC();
  v15 = sub_125B1C();
  (*(v14 + 8))(v5, v13);
  if (!v15)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162FF0);
  v17 = v15;
  v18 = sub_125AAC();
  v19 = sub_125DFC();
  v20 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136315138;
    v20 = v20;
    v23 = [v20 description];
    v24 = sub_125B9C();
    v26 = v25;

    v27 = sub_8530(v24, v26, v30);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_0, v18, v19, "toSiriTimer: Resolved timer %s from SRR. Using it to search timer.", v21, 0xCu);
    sub_5BB0(v22);
  }

  return v20;
}

void *sub_11688C(uint64_t a1)
{
  v2 = sub_124F8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v70 - v8;
  v10 = sub_12470C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5AE8(&qword_163008, &qword_12B9B8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v70 - v16;
  v18 = sub_5AE8(&qword_163010, &qword_12B9C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v70 - v22;
  __chkstk_darwin(v21);
  v26 = &v70 - v25;
  if (!a1)
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v28 = sub_125ABC();
    sub_5B30(v28, qword_162FF0);
    v29 = sub_125AAC();
    v30 = sub_125DFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Failed parsing NoEntity reference: nil", v31, 2u);
    }

    return 0;
  }

  v73 = v24;
  v71 = v2;

  v77 = sub_12408C();

  v27 = sub_12421C();

  v76 = a1;
  v72 = v9;
  v70 = v3;
  if (v27)
  {
    sub_1246FC();
  }

  else
  {
    (*(v11 + 56))(v26, 1, 1, v10);
  }

  (*(v11 + 104))(v23, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v10);
  (*(v11 + 56))(v23, 0, 1, v10);
  v32 = *(v14 + 48);
  sub_1175EC(v26, v17);
  sub_1175EC(v23, &v17[v32]);
  v33 = *(v11 + 48);
  if (v33(v17, 1, v10) == 1)
  {
    sub_5CA8(v23, &qword_163010, &qword_12B9C0);
    sub_5CA8(v26, &qword_163010, &qword_12B9C0);
    if (v33(&v17[v32], 1, v10) == 1)
    {
      sub_5CA8(v17, &qword_163010, &qword_12B9C0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v34 = v73;
  sub_1175EC(v17, v73);
  if (v33(&v17[v32], 1, v10) == 1)
  {
    sub_5CA8(v23, &qword_163010, &qword_12B9C0);
    sub_5CA8(v26, &qword_163010, &qword_12B9C0);
    (*(v11 + 8))(v34, v10);
LABEL_15:
    sub_5CA8(v17, &qword_163008, &qword_12B9B8);
LABEL_21:
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v47 = sub_125ABC();
    sub_5B30(v47, qword_162FF0);

    v48 = sub_125AAC();
    v49 = sub_125DFC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78 = v51;
      *v50 = 136315138;
      sub_12439C();
      v52 = sub_12409C();
      v54 = v53;

      v55 = sub_8530(v52, v54, &v78);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_0, v48, v49, "Failed to resolve NoEntity reference to Timer entity:\n %s", v50, 0xCu);
      sub_5BB0(v51);
    }

    else
    {
    }

    return 0;
  }

  v35 = &v17[v32];
  v36 = v75;
  (*(v11 + 32))(v75, v35, v10);
  sub_11765C();
  v37 = sub_125B7C();
  v38 = *(v11 + 8);
  v38(v36, v10);
  sub_5CA8(v23, &qword_163010, &qword_12B9C0);
  sub_5CA8(v26, &qword_163010, &qword_12B9C0);
  v38(v34, v10);
  sub_5CA8(v17, &qword_163010, &qword_12B9C0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v39 = sub_12466C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_12465C();
  v42 = sub_12438C();

  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = v74;
  sub_124F7C();
  v44 = v72;
  sub_124F6C();
  (*(v70 + 8))(v43, v71);
  v45 = sub_125B4C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {

    sub_5CA8(v44, &qword_15F5F0, &unk_12AAA0);
    goto LABEL_21;
  }

  sub_1257EC();
  v57 = sub_125B1C();
  (*(v46 + 8))(v44, v45);
  if (!v57)
  {

    goto LABEL_21;
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v58 = sub_125ABC();
  sub_5B30(v58, qword_162FF0);
  v59 = v57;
  v60 = sub_125AAC();
  v61 = sub_125DFC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v78 = v63;
    *v62 = 136315138;
    v64 = v59;
    v65 = [v64 description];
    v66 = sub_125B9C();
    v68 = v67;

    v69 = sub_8530(v66, v68, &v78);

    *(v62 + 4) = v69;
    _os_log_impl(&dword_0, v60, v61, "resolvedNoEntityReference: Resolved NoEntity reference %s from SRR. Using it to search timer.", v62, 0xCu);
    sub_5BB0(v63);
  }

  return v57;
}

id sub_1172B0()
{
  v0 = sub_C5BD0();
  if (v0)
  {
    v1 = sub_11649C(v0);

    return v1;
  }

  v3 = sub_CB454();
  if (v3)
  {
    v4 = sub_11688C(v3);
    if (v4)
    {
      v5 = v4;
      if (qword_15F058 != -1)
      {
        swift_once();
      }

      v6 = sub_125ABC();
      sub_5B30(v6, qword_162FF0);
      v7 = v5;
      v8 = sub_125AAC();
      v9 = sub_125DFC();
      v10 = v7;

      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136315138;
        v10 = v10;
        v13 = [v10 description];
        v14 = sub_125B9C();
        v16 = v15;

        v17 = sub_8530(v14, v16, &v26);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_0, v8, v9, "Found NoEntity reference: %s", v11, 0xCu);
        sub_5BB0(v12);
      }

      return v10;
    }
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_162FF0);

  v19 = sub_125AAC();
  v20 = sub_125DEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    sub_124BAC();

    v23 = sub_125BAC();
    v25 = sub_8530(v23, v24, &v26);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v19, v20, "Failed to find timer reference from task: %s", v21, 0xCu);
    sub_5BB0(v22);
  }

  sub_1257EC();
  return sub_113084(0);
}

uint64_t sub_1175EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_163010, &qword_12B9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_11765C()
{
  result = qword_163018;
  if (!qword_163018)
  {
    sub_12470C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163018);
  }

  return result;
}

uint64_t sub_1176D0(uint64_t *a1)
{
  sub_12558C();
  sub_12557C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_1606C8, &qword_128190);
  sub_1233AC();
  sub_5AE8(&qword_162468, &qword_12A848);
  sub_5C60(&qword_163028, &qword_162468, &qword_12A848);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_117998();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_1179EC();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_163040, &qword_12B9D8);
  sub_5C60(&qword_163048, &qword_163040, &qword_12B9D8);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_117A40(v3);
  sub_117AA8(v4);
  return sub_117AFC(v5);
}

uint64_t sub_11790C(void *a1)
{
  *a1 = sub_DEBCC();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_117998()
{
  result = qword_163030;
  if (!qword_163030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163030);
  }

  return result;
}

unint64_t sub_1179EC()
{
  result = qword_163038;
  if (!qword_163038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163038);
  }

  return result;
}

uint64_t sub_117A40(uint64_t a1)
{
  v2 = sub_5AE8(&qword_163040, &qword_12B9D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_117B64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_12532C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_117C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_12532C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa_6()
{
  result = qword_1630C0;
  if (!qword_1630C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_117D14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163050);
  sub_5B30(v0, qword_163050);
  return sub_1257AC();
}

uint64_t sub_117D60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_5AE8(&qword_163100, &qword_12BAE8) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_1259CC();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_12590C();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_122F6C();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_117F54, 0, 0);
}

uint64_t sub_117F54()
{
  sub_12357C();
  v1 = v0[6];
  sub_23B08(v0 + 2, v0[5]);
  sub_123A7C();
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[16];
    sub_5BB0(v0 + 2);
    sub_122F2C();

    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      v12 = v0[19];
      v11 = v0[20];
      v14 = v0[17];
      v13 = v0[18];
      v15 = v0[15];
      v16 = v0[14];
      v18 = v0[11];
      v17 = v0[12];
      v34 = v17;
      v35 = v0[10];
      v36 = v0[9];
      v37 = v0[13];
      v19 = v0[8];
      v38 = v0[7];
      (*(v13 + 32))(v11, v0[16], v14);
      v20 = v19 + *(_s20HandleIntentStrategyVMa_6() + 20);
      v21 = sub_12530C();
      sub_12599C();
      sub_12598C();
      v33 = *(sub_5AE8(&qword_163118, &qword_12BB28) + 64);
      sub_5AE8(&qword_160810, &unk_127420);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_126EB0;
      *(v22 + 32) = v21;
      *v15 = v22;
      v15[1] = 0;
      (*(v13 + 16))(v12, v11, v14);
      (*(v18 + 104))(v34, enum case for ExecutionInfo.Action.timerDismiss(_:), v35);
      v23 = sub_1259BC();
      (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
      v24 = v21;
      sub_1259AC();
      (*(v16 + 104))(v15, enum case for CrossDeviceCommandExecution.started(_:), v37);
      sub_12597C();

      (*(v16 + 8))(v15, v37);
      sub_1236CC();
      sub_1236BC();

      (*(v13 + 8))(v11, v14);
      goto LABEL_11;
    }

    sub_5CA8(v0[16], &qword_15F960, &qword_12BAF0);
  }

  else
  {
    sub_5BB0(v0 + 2);
  }

  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_163050);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "DismissTimer.HandleIntentStrategy.makePreHandleIntentOutput() returning - selectedDevice not found in halInfo", v9, 2u);
  }

  v10 = v0[7];

  sub_1236CC();
  sub_1236BC();
LABEL_11:
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[12];
  v30 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_118374(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_12392C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_12368C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_1254DC();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_125ABC();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v16 = sub_124FFC();
  v3[22] = v16;
  v17 = *(v16 - 8);
  v3[23] = v17;
  v18 = *(v17 + 64) + 15;
  v3[24] = swift_task_alloc();
  v19 = sub_12501C();
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v22 = *(*(sub_5AE8(&qword_163100, &qword_12BAE8) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v23 = sub_1259CC();
  v3[30] = v23;
  v24 = *(v23 - 8);
  v3[31] = v24;
  v25 = *(v24 + 64) + 15;
  v3[32] = swift_task_alloc();
  v26 = sub_12590C();
  v3[33] = v26;
  v27 = *(v26 - 8);
  v3[34] = v27;
  v28 = *(v27 + 64) + 15;
  v3[35] = swift_task_alloc();
  v29 = sub_1258FC();
  v3[36] = v29;
  v30 = *(v29 - 8);
  v3[37] = v30;
  v31 = *(v30 + 64) + 15;
  v3[38] = swift_task_alloc();
  v32 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v33 = sub_122F6C();
  v3[40] = v33;
  v34 = *(v33 - 8);
  v3[41] = v34;
  v35 = *(v34 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1187FC, 0, 0);
}

uint64_t sub_1187FC()
{
  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 152), qword_163050);
  *(v0 + 352) = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DismissTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  sub_12357C();
  v5 = *(v0 + 48);
  sub_23B08((v0 + 16), *(v0 + 40));
  sub_123A7C();
  if (!v6)
  {
    sub_5BB0((v0 + 16));
    goto LABEL_9;
  }

  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  v9 = *(v0 + 312);
  sub_5BB0((v0 + 16));
  sub_122F2C();

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_5CA8(*(v0 + 312), &qword_15F960, &qword_12BAF0);
LABEL_9:
    v10 = *(v0 + 352);
    v60 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v19 = *(v0 + 72);
    sub_12361C();
    sub_12391C();
    LODWORD(v18) = *(_s20HandleIntentStrategyVMa_6() + 20);
    sub_12532C();
    v20 = sub_12520C() & 1;
    *(v0 + 424) = v20;
    (*(v11 + 104))(v12, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v14);
    (*(v16 + 16))(v13, v10, v15);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EEF0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *(v22 + 16) = v21;
    v23 = swift_task_alloc();
    *(v0 + 384) = v23;
    *v23 = v0;
    v23[1] = sub_119238;

    return sub_E062C(v20, sub_11B3EC, v22);
  }

  v25 = *(v0 + 336);
  v26 = *(v0 + 320);
  v27 = *(v0 + 328);
  v43 = v26;
  v44 = *(v0 + 344);
  v28 = *(v0 + 304);
  v29 = *(v0 + 296);
  v42 = *(v0 + 288);
  v30 = *(v0 + 280);
  v48 = *(v0 + 272);
  v49 = *(v0 + 264);
  v31 = *(v0 + 248);
  v45 = *(v0 + 256);
  v46 = *(v0 + 240);
  v47 = *(v0 + 232);
  v57 = *(v0 + 224);
  v50 = *(v0 + 184);
  v52 = *(v0 + 192);
  v53 = *(v0 + 176);
  v54 = *(v0 + 160);
  v55 = *(v0 + 168);
  v56 = *(v0 + 152);
  v58 = *(v0 + 144);
  v59 = *(v0 + 136);
  v61 = *(v0 + 128);
  v51 = *(v0 + 64);
  (*(v27 + 32))();
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v32 = sub_123A9C();
  sub_12569C();

  v33 = sub_1256BC();
  v34 = sub_1256BC();
  v35 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v33 != v34)
  {
    v35 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v29 + 104))(v28, *v35, v42);
  sub_12599C();
  sub_12598C();
  v36 = *(sub_5AE8(&qword_163110, &unk_12BB10) + 48);
  (*(v27 + 16))(v25, v44, v43);
  (*(v31 + 104))(v45, enum case for ExecutionInfo.Action.timerDismiss(_:), v46);
  v37 = sub_1259BC();
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  sub_1259AC();
  (*(v29 + 16))(v30 + v36, v28, v42);
  (*(v48 + 104))(v30, enum case for CrossDeviceCommandExecution.ended(_:), v49);
  sub_12597C();

  (*(v48 + 8))(v30, v49);
  (*(v50 + 104))(v52, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v53);
  (*(v54 + 16))(v55, v1, v56);
  mach_absolute_time();
  sub_12502C();
  *v58 = sub_123ABC();
  (*(v59 + 104))(v58, enum case for SiriSuggestions.Intent.inIntent(_:), v61);
  v38 = sub_E210(_swiftEmptyArrayStorage);
  *(v0 + 360) = v38;
  v39 = swift_task_alloc();
  *(v0 + 368) = v39;
  *v39 = v0;
  v39[1] = sub_118E94;
  v40 = *(v0 + 344);
  v41 = *(v0 + 144);

  return sub_11C83C(v40, v41, v38);
}

uint64_t sub_118E94()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_119008, 0, 0);
}

uint64_t sub_119008()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  sub_12500C();
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 352);
  v25 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  sub_12361C();
  sub_12391C();
  LODWORD(v18) = *(_s20HandleIntentStrategyVMa_6() + 20);
  sub_12532C();
  v20 = sub_12520C() & 1;
  *(v0 + 424) = v20;
  (*(v11 + 104))(v12, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v14);
  (*(v16 + 16))(v13, v10, v15);
  mach_absolute_time();
  sub_12502C();
  if (qword_15EEF0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 72);
  v22 = swift_task_alloc();
  *(v0 + 376) = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  *(v0 + 384) = v23;
  *v23 = v0;
  v23[1] = sub_119238;

  return sub_E062C(v20, sub_11B3EC, v22);
}

uint64_t sub_119238(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(v4 + 392) = v1;

  v7 = *(v4 + 376);
  if (v1)
  {

    return _swift_task_switch(sub_119698, 0, 0);
  }

  else
  {
    *(v4 + 400) = a1;

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    *(v4 + 408) = v9;
    *v9 = v6;
    v9[1] = sub_1193F8;
    v10 = *(v4 + 424);
    v11 = *(v4 + 216);
    v12 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 56);

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v14, v12, v13, v11, v10);
  }
}

uint64_t sub_1193F8()
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 400);
  v6 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_119814;
  }

  else
  {
    v4 = sub_119524;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_119524()
{
  v1 = v0[42];
  v2 = v0[43];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v3 = v0[24];
  v18 = v0[21];
  v19 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v4, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_119698()
{
  v20 = v0[49];
  v1 = v0[42];
  v2 = v0[43];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v3 = v0[24];
  v18 = v0[21];
  v19 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v4, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_119814()
{
  v20 = v0[52];
  v1 = v0[42];
  v2 = v0[43];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v3 = v0[24];
  v18 = v0[21];
  v19 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v4, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_119990(uint64_t a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(_s20HandleIntentStrategyVMa_6() + 20);
  sub_12532C();
  v13 = sub_1251FC();
  if (v13)
  {
    v14 = v13;
    sub_12592C();

    v15 = sub_124E4C();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = sub_124E4C();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  v17 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  sub_22A1C(v11, a1 + *(v17 + 20));
  v18 = sub_1251FC();
  if (v18)
  {
    v19 = v18;
    sub_12593C();
  }

  else
  {
    v20 = sub_124E4C();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  }

  sub_22A1C(v9, a1 + *(v17 + 28));
  v21 = sub_1251FC();
  if (v21)
  {
    v22 = v21;
    sub_12591C();
  }

  else
  {
    v23 = sub_124E4C();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  return sub_22A1C(v6, a1);
}

uint64_t sub_119C1C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = sub_12501C();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = sub_12392C();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v16 = sub_12368C();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v19 = *(*(sub_5AE8(&qword_163100, &qword_12BAE8) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v20 = sub_1259CC();
  v2[26] = v20;
  v21 = *(v20 - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v23 = sub_12590C();
  v2[29] = v23;
  v24 = *(v23 - 8);
  v2[30] = v24;
  v25 = *(v24 + 64) + 15;
  v2[31] = swift_task_alloc();
  v26 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v27 = sub_122F6C();
  v2[33] = v27;
  v28 = *(v27 - 8);
  v2[34] = v28;
  v29 = *(v28 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_11A008, 0, 0);
}

uint64_t sub_11A008()
{
  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v40 = sub_5B30(v0[10], qword_163050);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "DismissTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[8];

  v5 = *(_s20HandleIntentStrategyVMa_6() + 20);
  sub_12532C();
  v6 = sub_1251FC();
  if (v6)
  {

    sub_12357C();
    v7 = v0[6];
    sub_23B08(v0 + 2, v0[5]);
    sub_123A7C();
    if (v8)
    {
      v9 = v0[33];
      v10 = v0[34];
      v11 = v0[32];
      sub_5BB0(v0 + 2);
      sub_122F2C();

      if ((*(v10 + 48))(v11, 1, v9) == 1)
      {
        sub_5CA8(v0[32], &qword_15F960, &qword_12BAF0);
      }

      else
      {
        v12 = v0[36];
        v13 = v0[33];
        v14 = v0[34];
        v15 = v0[31];
        v16 = v0[30];
        v39 = v0[29];
        v17 = v0[27];
        v18 = v0[28];
        v19 = v0[25];
        v36 = v0[35];
        v37 = v0[26];
        (*(v14 + 32))(v12, v0[32], v13);
        sub_12599C();
        sub_12598C();
        v38 = *(sub_5AE8(&qword_163108, &qword_12BAF8) + 48);
        (*(v14 + 16))(v36, v12, v13);
        (*(v17 + 104))(v18, enum case for ExecutionInfo.Action.timerDismiss(_:), v37);
        v20 = sub_1259BC();
        (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
        sub_1259AC();
        v21 = enum case for CrossDeviceCommandExecution.FailureReason.unknown(_:);
        v22 = sub_1258EC();
        (*(*(v22 - 8) + 104))(v15 + v38, v21, v22);
        (*(v16 + 104))(v15, enum case for CrossDeviceCommandExecution.failed(_:), v39);
        sub_12597C();

        (*(v16 + 8))(v15, v39);
        (*(v14 + 8))(v12, v13);
      }
    }

    else
    {
      sub_5BB0(v0 + 2);
    }
  }

  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[18];
  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[12];
  v28 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[9];
  sub_12364C();
  sub_12391C();
  (*(v27 + 104))(v26, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v28);
  (*(v30 + 16))(v29, v40, v31);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for DeleteTimerCATPatternsExecutor();
  sub_124ECC();
  v0[37] = sub_124DBC();
  v33 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v41 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = swift_task_alloc();
  v0[38] = v34;
  *v34 = v0;
  v34[1] = sub_11A4E0;

  return v41(0xD000000000000017, 0x800000000012F260, _swiftEmptyArrayStorage);
}

uint64_t sub_11A4E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_11A7B0, 0, 0);
  }

  else
  {
    v7 = v4[37];
    v4[40] = a1;

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[41] = v9;
    *v9 = v6;
    v9[1] = sub_11A684;
    v10 = v4[24];
    v11 = v4[21];
    v12 = v4[18];
    v13 = v4[7];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v13, v10, v11, v12, 0);
  }
}

uint64_t sub_11A684()
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v6 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_11AA78;
  }

  else
  {
    v4 = sub_11A91C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_11A7B0()
{
  v1 = v0[37];

  v19 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v13 = v0[32];
  v14 = v0[31];
  v4 = v0[24];
  v15 = v0[28];
  v16 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[15];
  v17 = v0[12];
  v18 = v0[9];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_11A91C()
{
  v2 = v0[35];
  v1 = v0[36];
  v12 = v0[32];
  v13 = v0[31];
  v3 = v0[24];
  v14 = v0[28];
  v15 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v16 = v0[12];
  v17 = v0[9];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_11AA78()
{
  v18 = v0[42];
  v2 = v0[35];
  v1 = v0[36];
  v12 = v0[32];
  v13 = v0[31];
  v3 = v0[24];
  v14 = v0[28];
  v15 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v16 = v0[12];
  v17 = v0[9];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_11ABDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return sub_117D60(a1);
}

uint64_t sub_11AC74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_11AD1C;

  return sub_118374(a1, a2);
}

uint64_t sub_11AD1C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11AE50, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_11AE50()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_11AF1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_11AFC4;

  return sub_119C1C(a1);
}

uint64_t sub_11AFC4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11B0F8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_11B0F8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_11B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_11B264, 0, 0);
}

uint64_t sub_11B264()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[5] + 20);
  v6 = sub_12532C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = sub_A85C8(v4, v2, v1);
  sub_5CA8(v1, &qword_15FFB0, &unk_1270A0);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_11B394()
{
  result = qword_1630F8;
  if (!qword_1630F8)
  {
    _s20HandleIntentStrategyVMa_6();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1630F8);
  }

  return result;
}

uint64_t sub_11B454()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1270B0;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_124DEC();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  strcpy((v5 + 80), "pausedTimers");
  *(v5 + 93) = 0;
  *(v5 + 94) = -5120;
  v9 = v0[1];
  v10 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v5 + 96) = v9;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x6174614477656976;
  *(v5 + 136) = 0xE800000000000000;
  v11 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v11 + 24), v4, &unk_15F170, &unk_126E00);
  v12 = sub_124E4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {

    sub_5CA8(v4, &unk_15F170, &unk_126E00);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v12;
    v14 = sub_23B4C((v5 + 144));
    (*(v13 + 32))(v14, v4, v12);
  }

  return v5;
}

uint64_t sub_11B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_11B71C, 0, 0);
}

uint64_t sub_11B71C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 24);
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *v1 = 0;
  *(v1 + 1) = v4;

  v3(v1);
  v7 = sub_11B454();
  v0[8] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_11B864;
  v10 = v0[5];

  return v12(0xD000000000000019, 0x800000000012D490, v7);
}

uint64_t sub_11B864(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_11BA24;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_11B9B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_11B9B0()
{
  sub_11C350(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_11BA24()
{
  sub_11C350(v0[7]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_11BA94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11BAB4, 0, 0);
}

uint64_t sub_11BAB4()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "pausedTimers");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;
  v5 = v0[3];

  return v7(0xD000000000000018, 0x800000000012D470, v2);
}

uint64_t sub_11BC00(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 96) = a1;
  return _swift_task_switch(sub_11BC28, 0, 0);
}

uint64_t sub_11BC28()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 24) = 0;
  v1(v0 + 16);
  LOBYTE(v2) = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_1270C0;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x800000000012D730;
  *(v4 + 48) = v2;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "remainingTime");
  *(v4 + 94) = -4864;
  v5 = 0;
  if (v3)
  {
    v5 = sub_124D7C();
  }

  else
  {
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v0 + 64) = v3;
  *(v4 + 96) = v3;
  *(v4 + 120) = v5;
  v6 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_11BDD4;
  v8 = *(v0 + 48);

  return v10(0xD000000000000021, 0x800000000012D700, v4);
}

uint64_t sub_11BDD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_11BF88;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_11BF20;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_11BF20()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_11BF88()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_11BFEC(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

uint64_t sub_11C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_11C280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11C350(uint64_t a1)
{
  v2 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11C3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_11C424(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_11C448(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = *v2;
  return _swift_task_switch(sub_11C470, 0, 0);
}

uint64_t sub_11C470()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  v0[5] = v3;
  v0[6] = sub_11C798();
  v4 = sub_23B4C(v0 + 2);
  v5 = sub_124E4C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  *(v4 + *(v3 + 20)) = 0;
  v2(v0 + 2);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_11C5A4;
  v7 = v0[9];

  return sub_104778(v7, (v0 + 2));
}

uint64_t sub_11C5A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_11C734;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_11C6CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11C6CC()
{
  sub_5BB0(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_11C734()
{
  sub_5BB0(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

unint64_t sub_11C798()
{
  result = qword_163208;
  if (!qword_163208)
  {
    type metadata accessor for TimerBaseAppNotInstalledParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163208);
  }

  return result;
}

uint64_t sub_11C7F0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163210);
  sub_5B30(v0, qword_163210);
  return sub_12510C();
}

uint64_t sub_11C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_11C860, 0, 0);
}

uint64_t sub_11C860()
{
  sub_1254BC();
  sub_1254AC();
  v1 = v0[5];
  v2 = v0[6];
  sub_23B08(v0 + 2, v1);
  v3 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = *(v2 + 8);
  *v4 = v0;
  v4[1] = sub_11C93C;
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v8, v6, v7, 1, v1, v5);
}

uint64_t sub_11C93C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_11CAB0;
  }

  else
  {
    v3 = sub_11CA50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_11CA50()
{
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11CAB0()
{
  v18 = v0;
  sub_5BB0(v0 + 2);
  if (qword_15F068 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_125ABC();
  sub_5B30(v2, qword_163210);
  swift_errorRetain();
  v3 = sub_125AAC();
  v4 = sub_125DEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    v12 = sub_12621C();
    v14 = sub_8530(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "SuggestionsProvider.submitIntentToSiriSuggestions caught error: %s", v7, 0xCu);
    sub_5BB0(v8);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_11CC78(uint64_t a1, uint64_t a2)
{
  if (sub_1235CC() & 1) != 0 || (sub_1235AC())
  {
    return 1;
  }

  return dispatch thunk of DeviceState.isPod.getter(a1, a2);
}

uint64_t sub_11CD50(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

uint64_t sub_11CE04()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163228);
  sub_5B30(v0, qword_163228);
  return sub_1257AC();
}

uint64_t sub_11CE50()
{
  v0 = sub_1250BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1250AC();
  v5 = sub_12506C();
  (*(v1 + 8))(v4, v0);
  if (!v5)
  {
    goto LABEL_6;
  }

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v6 = sub_123B4C();
  v7 = [v6 targetTimer];

  v8 = [v7 shouldMatchAny];
  sub_8BAC();
  v9.super.super.isa = sub_125EFC(1).super.super.isa;
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = sub_125F0C();

  if (v10)
  {
    v11 = sub_123B4C();
    v9.super.super.isa = [v11 targetingInfo];

    if (!v9.super.super.isa)
    {
      if (qword_15F080 != -1)
      {
        swift_once();
      }

      v18 = sub_125ABC();
      sub_5B30(v18, qword_163228);
      v13 = sub_125AAC();
      v19 = sub_125DFC();
      if (!os_log_type_enabled(v13, v19))
      {
        v16 = 1;
        goto LABEL_12;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v13, v19, "ResolveRecord indicates we are searching for a room confirmation", v20, 2u);
      v16 = 1;
      goto LABEL_10;
    }

LABEL_5:
  }

LABEL_6:
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_163228);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (!os_log_type_enabled(v13, v14))
  {
    v16 = 0;
    goto LABEL_12;
  }

  v15 = swift_slowAlloc();
  *v15 = 0;
  _os_log_impl(&dword_0, v13, v14, "ResolveRecord not searching for room confirmation", v15, 2u);
  v16 = 0;
LABEL_10:

LABEL_12:

  return v16;
}

uint64_t sub_11D168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_163228);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "PauseTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_11CE50();
  v18 = &enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for DecideAction.PromptExpectation.confirmation(_:);
  }

  v19 = *v18;
  v20 = sub_12514C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v7, v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  sub_4657C(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_11D428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_12379C();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_11D530, 0, 0);
}

uint64_t sub_11D530()
{
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_163228);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v5 = *(v0 + 72);

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (!swift_dynamicCast())
  {
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 88);
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    v27 = *(v0 + 8);
    goto LABEL_28;
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = sub_123B4C();
  v12 = [v11 targetTimer];

  v13 = [v12 shouldMatchAny];
  v14 = objc_allocWithZone(sub_12555C());
  v15 = v10;
  v16 = [v14 init];
  [v15 setShouldMatchAny:v13];
  v17 = v15;
  [v16 setTargetTimer:v17];

  if ((sub_11CE50() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_9D860(*(v0 + 64), 1, *(v0 + 120));
  v18 = sub_A8C70();
  if (v18 <= 1)
  {
    if (v18)
    {
      v19 = sub_125AAC();
      v20 = sub_125DFC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "Received explicit 'here' confirmation – only local timers for pauseMultiple", v21, 2u);
      }

      v22 = [v16 targetTimer];
      if (!v22)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_15:
    v28 = sub_125AAC();
    v29 = sub_125DFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v30, 2u);
    }

    v31 = [v16 targetTimer];
    if (!v31)
    {
      goto LABEL_25;
    }

    v32 = v31;
    v33 = 1;
    goto LABEL_24;
  }

  if (v18 == 2)
  {
    goto LABEL_15;
  }

  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 96);
  v37 = *(v0 + 104);
  sub_12377C();
  v38 = sub_12375C();
  v63 = *(v37 + 8);
  v63(v35, v36);
  v39 = sub_125AAC();
  v40 = sub_125DFC();
  v41 = os_log_type_enabled(v39, v40);
  if ((v38 & 1) == 0)
  {
    if (v41)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v39, v40, "Defaulting confirmation to reject for no/cancel", v54, 2u);
    }

    v62 = *(v0 + 120);
    v56 = *(v0 + 88);
    v55 = *(v0 + 96);
    v57 = *(v0 + 56);

    v58 = enum case for ConfirmationResponse.rejected(_:);
    v59 = sub_123A1C();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v56, v58, v59);
    (*(v60 + 56))(v56, 0, 1, v59);
    v61 = v16;
    sub_125EDC();

    sub_123AEC();
    v63(v62, v55);
    goto LABEL_27;
  }

  if (v41)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v39, v40, "Confirming use only local timers for pauseMultiple", v42, 2u);
  }

  v22 = [v16 targetTimer];
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = v22;
  v33 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v33).super.super.isa;
  [v32 setShouldMatchRemote:isa];

LABEL_25:
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
LABEL_26:
  v44 = *(v0 + 88);
  v45 = *(v0 + 56);
  v46 = enum case for ConfirmationResponse.confirmed(_:);
  v47 = sub_123A1C();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v44, v46, v47);
  (*(v48 + 56))(v44, 0, 1, v47);
  v49 = v16;
  sub_125EDC();

  sub_123AEC();
LABEL_27:
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v52 = *(v0 + 88);

  v27 = *(v0 + 8);
LABEL_28:

  return v27();
}

uint64_t sub_11DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v4 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_125ABC();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = sub_124FFC();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v12 = sub_12501C();
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v15 = sub_12392C();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v18 = sub_1250BC();
  v3[33] = v18;
  v19 = *(v18 - 8);
  v3[34] = v19;
  v20 = *(v19 + 64) + 15;
  v3[35] = swift_task_alloc();
  v21 = sub_12368C();
  v3[36] = v21;
  v22 = *(v21 - 8);
  v3[37] = v22;
  v23 = *(v22 + 64) + 15;
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_11DFE0, 0, 0);
}

uint64_t sub_11DFE0()
{
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[17], qword_163228);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[14];

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v8 = v0[38];
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[33];
    v12 = v0[12];
    v0[39] = v12;
    sub_12362C();
    sub_1250AC();
    v13 = sub_12506C();
    (*(v10 + 8))(v9, v11);
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = [v12 shouldMatchAny];
    sub_8BAC();
    v15.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v14)
    {
      v16 = sub_125F0C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_11;
      }

      v17 = v0[14];
      v18 = sub_123B4C();
      v15.super.super.isa = [v18 targetingInfo];

      if (!v15.super.super.isa)
      {
        v65 = v0[27];
        v67 = v0[21];
        v66 = v0[22];
        v69 = v0[19];
        v68 = v0[20];
        v70 = v0[17];
        v71 = v0[18];
        v72 = v0[16];
        sub_FFF04(5, v0[32]);
        (*(v67 + 104))(v66, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v68);
        (*(v71 + 16))(v69, v1, v70);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for PauseTimerCATsSimple();
        sub_124ECC();
        v0[40] = sub_124E7C();
        v59 = "tConfirmAll_Dialog";
        v73 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v74 = swift_task_alloc();
        v0[41] = v74;
        *v74 = v0;
        v74[1] = sub_D03C0;
        v62 = 0xD000000000000020;
LABEL_26:
        v33 = _swiftEmptyArrayStorage;
        v31 = v59 | 0x8000000000000000;
        v32 = v62;
        goto LABEL_27;
      }
    }

LABEL_11:
    v19 = [v12 device];
    if (v19)
    {
      v20 = v0[31];
      v21 = v0[21];
      v22 = v0[22];
      v24 = v0[19];
      v23 = v0[20];
      v25 = v0[18];
      v76 = v0[17];
      v78 = v0[26];
      v26 = v0[16];

      sub_FFAE8(5);
      (*(v21 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v23);
      (*(v25 + 16))(v24, v1, v76);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      v0[45] = sub_124E7C();
      v27 = sub_113D6C(0, 0);
      v0[46] = v27;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v28 = swift_allocObject();
      v0[47] = v28;
      *(v28 + 16) = xmmword_126CB0;
      *(v28 + 32) = 0x72656D6974;
      *(v28 + 40) = 0xE500000000000000;
      *(v28 + 72) = type metadata accessor for TimerTimer(0);
      *(v28 + 48) = v27;
      v29 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v30 = swift_task_alloc();
      v0[48] = v30;
      *v30 = v0;
      v30[1] = sub_D0964;
      v31 = 0x800000000012DD90;
      v32 = 0xD000000000000023;
      v33 = v28;
LABEL_27:

      return v79(v32, v31, v33);
    }

LABEL_16:
    v47 = v0[30];
    v48 = v0[25];
    v50 = v0[21];
    v49 = v0[22];
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[17];
    v54 = v0[18];
    sub_FFAE8(5);
    (*(v50 + 104))(v49, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v51);
    (*(v54 + 16))(v52, v1, v53);
    mach_absolute_time();
    sub_12502C();
    v55 = [v12 shouldMatchAny];
    sub_8BAC();
    v56.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v56.super.super.isa;
    if (v55)
    {
      v58 = sub_125F0C();

      if (v58)
      {
        if (qword_15EDD8 != -1)
        {
          swift_once();
        }

        v59 = "tConfirmationPrompt";
        v60 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v61 = swift_task_alloc();
        v0[52] = v61;
        *v61 = v0;
        v61[1] = sub_11E850;
        v62 = 0xD000000000000022;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (qword_15EDD8 != -1)
    {
      swift_once();
    }

    v63 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
    v64 = swift_task_alloc();
    v0[54] = v64;
    *v64 = v0;
    v64[1] = sub_11EA44;
    v33 = _swiftEmptyArrayStorage;
    v31 = 0x800000000012F3B0;
    v32 = 0xD000000000000023;
    goto LABEL_27;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v34 = 2;
  swift_willThrow();
  v35 = v0[38];
  v36 = v0[35];
  v38 = v0[31];
  v37 = v0[32];
  v39 = v0[30];
  v41 = v0[26];
  v40 = v0[27];
  v42 = v0[25];
  v43 = v0[22];
  v44 = v0[19];
  v75 = v0[16];
  v77 = v0[15];

  v45 = v0[1];

  return v45();
}

uint64_t sub_11E850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = v1;
  v5 = v3[52];
  v8 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_D1124;
  }

  else
  {
    v6 = sub_11E96C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_11E96C()
{
  v1 = v0[7];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[56] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_11EDA4;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_11EA44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[9] = v2;
  v4[10] = a1;
  v4[11] = v1;
  v5 = v3[54];
  v8 = *v2;
  v4[55] = v1;

  if (v1)
  {
    v6 = sub_11EC38;
  }

  else
  {
    v6 = sub_11EB60;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_11EB60()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[56] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_11EDA4;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_11EC38()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 440);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_11EDA4()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 448);
  sub_5CA8(*(v2 + 120), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_11F070;
  }

  else
  {
    v6 = sub_11EF00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_11EF00()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v14 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v15 = *(v0 + 216);
  v16 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 120);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_11F070()
{
  v1 = *(v0 + 448);
  v24 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v24, v2);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v25 = *(v0 + 464);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_11F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_11F29C;

  return sub_11D428(a1, a2, a3);
}

uint64_t sub_11F29C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11F3D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_11F3D0()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_11F49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_11F54C;

  return sub_11DCC0(a1, a2, a3);
}

uint64_t sub_11F54C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11F680, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_11F680()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_11F750()
{
  result = qword_163240;
  if (!qword_163240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163240);
  }

  return result;
}

uint64_t sub_11F7B4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163248);
  sub_5B30(v0, qword_163248);
  return sub_1257AC();
}

uint64_t sub_11F800(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_12501C();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v13 = *(*(sub_5AE8(&qword_160CC8, &unk_12BE70) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = sub_1256FC();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v17 = sub_12392C();
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v20 = sub_12368C();
  v2[26] = v20;
  v21 = *(v20 - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v23 = sub_5AE8(&unk_15FF60, &unk_127BA0);
  v2[32] = v23;
  v24 = *(v23 - 8);
  v2[33] = v24;
  v25 = *(v24 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_11FBB8, 0, 0);
}

uint64_t sub_11FBB8()
{
  if (qword_15F088 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[3];
  v5 = sub_5B30(v0[5], qword_163248);
  (*(v1 + 16))(v2, v4, v3);
  v65 = v5;
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = sub_123B5C();
    v14 = [v13 unsupportedReason];

    (*(v9 + 8))(v10, v11);
    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v6, v7, "CreateTimer.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v12, 0xCu);
  }

  else
  {
    (*(v9 + 8))(v0[34], v0[32]);
  }

  v15 = v0[31];
  v16 = v0[32];
  v17 = v0[25];
  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[3];

  sub_12363C();
  v22 = sub_124D6C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_124D5C();
  v25 = sub_123B4C();
  sub_1255CC();

  sub_124D4C();

  v26 = sub_124D3C();
  v0[35] = v26;

  sub_1028BC();
  v27 = sub_123B5C();
  [v27 unsupportedReason];

  sub_1256EC();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v28 = v0[13];
    v29 = v0[9];
    v30 = v0[10];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[5];
    v34 = v0[6];
    sub_122A40(v0[15]);
    (*(v29 + 104))(v30, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v31);
    (*(v34 + 16))(v32, v65, v33);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v35 = v0[3];
    v36 = swift_task_alloc();
    v0[67] = v36;
    *(v36 + 16) = v35;
    *(v36 + 24) = v26;
    v37 = swift_task_alloc();
    v0[68] = v37;
    *v37 = v0;
    v37[1] = sub_121A58;

    return sub_3201C(sub_122AA8, v36);
  }

  else
  {
    v39 = v0[19];
    v41 = v0[16];
    v40 = v0[17];
    v64 = v0[18];
    v42 = v0[9];
    v43 = v0[10];
    v45 = v0[7];
    v44 = v0[8];
    v47 = v0[5];
    v46 = v0[6];
    (*(v40 + 32))(v39, v0[15], v41);
    (*(v42 + 104))(v43, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v44);
    (*(v46 + 16))(v45, v65, v47);
    mach_absolute_time();
    sub_12502C();
    (*(v40 + 16))(v64, v39, v41);
    v48 = (*(v40 + 88))(v64, v41);
    v49 = v0[4];
    if (v48 == enum case for TimerHandlerError.durationTooLong(_:))
    {
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[37] = sub_124DBC();
      v50 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v51 = swift_task_alloc();
      v0[38] = v51;
      *v51 = v0;
      v51[1] = sub_120318;
      v52 = _swiftEmptyArrayStorage;
      v53 = 0xD000000000000020;
      v54 = 0x800000000012C650;
    }

    else
    {
      v55 = v48;
      v56 = enum case for TimerHandlerError.createSleepTimerNothingPlaying(_:);
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[36] = sub_124DBC();
      if (v55 == v56)
      {
        v57 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v58 = swift_task_alloc();
        v0[47] = v58;
        *v58 = v0;
        v58[1] = sub_120AAC;
        v52 = _swiftEmptyArrayStorage;
        v53 = 0xD00000000000001CLL;
        v54 = 0x800000000012CF00;
      }

      else
      {
        v59 = sub_124EAC();
        sub_12524C();
        sub_12523C();
        sub_12522C();

        v60 = sub_124E9C();
        v0[56] = v60;
        sub_5AE8(&qword_15F180, &unk_126E10);
        v61 = swift_allocObject();
        *(v61 + 32) = 0x656369766564;
        *(v61 + 40) = 0xE600000000000000;
        *(v61 + 72) = v59;
        v62 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v0[57] = v61;
        *(v61 + 16) = xmmword_126CB0;
        *(v61 + 48) = v60;

        v63 = swift_task_alloc();
        v0[58] = v63;
        *v63 = v0;
        v63[1] = sub_12123C;
        v54 = 0x800000000012C010;
        v53 = 0xD000000000000011;
        v52 = v61;
      }
    }

    return v66(v53, v54, v52);
  }
}

uint64_t sub_120318(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = sub_12071C;
  }

  else
  {
    v8 = *(v4 + 296);
    *(v4 + 320) = a1;

    v7 = sub_120448;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_120448()
{
  v1 = v0[30];
  v2 = v0[24];
  sub_12364C();
  sub_12391C();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_120508;
  v5 = v0[40];
  v6 = v0[30];
  v7 = v0[24];
  v8 = v0[14];
  v9 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v6, v7, v8, 0);
}

uint64_t sub_120508()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 320);
  v15 = *(*v1 + 240);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 192);
  v8 = *(*v1 + 168);
  v9 = *(*v1 + 160);
  v10 = *v1;
  v2[42] = v0;

  v11 = *(v8 + 8);
  v2[43] = v11;
  v2[44] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = *(v5 + 8);
  v2[45] = v12;
  v2[46] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v15, v6);
  if (v0)
  {
    v13 = sub_121ED8;
  }

  else
  {
    v13 = sub_1208F8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_12071C()
{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[27];
  v4 = v0[21];
  v28 = v0[20];
  v30 = v0[25];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v30, v28);
  v31 = v0[39];
  v11 = v0[25];
  v12 = v0[34];
  v13 = v0[30];
  v15 = v0[28];
  v14 = v0[29];
  v17 = v0[23];
  v16 = v0[24];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[10];
  v18 = v0[7];
  v29 = v0[4];
  (*(v3 + 8))(v0[31], v0[26]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1208F8()
{
  v1 = *(v0 + 344);
  v29 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v11 = *(v0 + 368);
  v12 = *(v0 + 200);
  v13 = *(v0 + 272);
  v14 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v20 = *(v0 + 56);
  v30 = *(v0 + 32);
  (*(v0 + 360))(*(v0 + 248), *(v0 + 208));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_120AAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = sub_120EB0;
  }

  else
  {
    v8 = *(v4 + 288);
    *(v4 + 392) = a1;

    v7 = sub_120BDC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_120BDC()
{
  v1 = v0[29];
  v2 = v0[23];
  sub_12365C();
  sub_12391C();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_120C9C;
  v5 = v0[49];
  v6 = v0[29];
  v7 = v0[23];
  v8 = v0[14];
  v9 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v6, v7, v8, 0);
}

uint64_t sub_120C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v15 = *(*v1 + 232);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 184);
  v8 = *(*v1 + 168);
  v9 = *(*v1 + 160);
  v10 = *v1;
  v2[51] = v0;

  v11 = *(v8 + 8);
  v2[52] = v11;
  v2[53] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = *(v5 + 8);
  v2[54] = v12;
  v2[55] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v15, v6);
  if (v0)
  {
    v13 = sub_122094;
  }

  else
  {
    v13 = sub_121088;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_120EB0()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[27];
  v4 = v0[21];
  v28 = v0[20];
  v30 = v0[25];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v30, v28);
  v31 = v0[48];
  v11 = v0[25];
  v12 = v0[34];
  v13 = v0[30];
  v15 = v0[28];
  v14 = v0[29];
  v17 = v0[23];
  v16 = v0[24];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[10];
  v18 = v0[7];
  v29 = v0[4];
  (*(v3 + 8))(v0[31], v0[26]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_121088()
{
  v1 = *(v0 + 416);
  v29 = *(v0 + 424);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v11 = *(v0 + 440);
  v12 = *(v0 + 200);
  v13 = *(v0 + 272);
  v14 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v20 = *(v0 + 56);
  v30 = *(v0 + 32);
  (*(v0 + 432))(*(v0 + 248), *(v0 + 208));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_12123C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *(*v2 + 456);
  v7 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v8 = sub_121680;
  }

  else
  {
    *(v4 + 480) = a1;
    v8 = sub_121388;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_121388()
{
  v1 = v0[56];
  v2 = v0[36];
  v3 = v0[28];
  v4 = v0[22];

  sub_12364C();
  sub_12391C();
  v5 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_121468;
  v7 = v0[60];
  v8 = v0[28];
  v9 = v0[22];
  v10 = v0[14];
  v11 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v11, v8, v9, v10, 0);
}

uint64_t sub_121468()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v15 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 176);
  v8 = *(*v1 + 168);
  v9 = *(*v1 + 160);
  v10 = *v1;
  v2[62] = v0;

  v11 = *(v8 + 8);
  v2[63] = v11;
  v2[64] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = *(v5 + 8);
  v2[65] = v12;
  v2[66] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v15, v6);
  if (v0)
  {
    v13 = sub_122250;
  }

  else
  {
    v13 = sub_12187C;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_121680()
{
  v1 = v0[56];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[27];
  v32 = v0[26];
  v34 = v0[31];
  v5 = v0[21];
  v29 = v0[20];
  v31 = v0[25];
  v27 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];

  (*(v10 + 8))(v8, v9);
  v11 = *(v6 + 8);
  v11(v27, v7);
  (*(v5 + 8))(v31, v29);
  (*(v4 + 8))(v34, v32);
  v35 = v0[59];
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[19];
  v25 = v0[15];
  v26 = v0[14];
  v28 = v0[13];
  v30 = v0[10];
  v18 = v0[7];
  v33 = v0[4];
  v11(v0[18], v0[16]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_12187C()
{
  v32 = v0[65];
  v33 = v0[66];
  v1 = v0[35];
  v28 = v0[31];
  v30 = v0[64];
  v2 = v0[25];
  v24 = v0[63];
  v26 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];

  (*(v9 + 8))(v7, v8);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v24(v2, v3);
  v32(v28, v26);
  v11 = v0[34];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[28];
  v15 = v0[29];
  v16 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];
  v25 = v0[15];
  v27 = v0[14];
  v29 = v0[13];
  v31 = v0[10];
  v17 = v0[7];
  v34 = v0[4];
  v10(v0[18], v0[16]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_121A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;
  *(*v2 + 552) = v1;

  if (v1)
  {
    v7 = v4[67];

    return _swift_task_switch(sub_122434, 0, 0);
  }

  else
  {
    v8 = v4[67];
    v4[70] = a1;

    v9 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v10 = swift_task_alloc();
    v4[71] = v10;
    *v10 = v6;
    v10[1] = sub_121C04;
    v11 = v4[31];
    v12 = v4[25];
    v13 = v4[13];
    v14 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v14, v11, v12, v13, 0);
  }
}

uint64_t sub_121C04()
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 560);
  v6 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = sub_1225E4;
  }

  else
  {
    v4 = sub_121D30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_121D30()
{
  v1 = v0[35];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = v0[25];
  v10 = v0[34];
  v11 = v0[30];
  v12 = v0[28];
  v13 = v0[29];
  v15 = v0[23];
  v14 = v0[24];
  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v16 = v0[7];
  v26 = v0[4];
  (*(v2 + 8))(v0[31], v0[26]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_121ED8()
{
  v1 = *(v0 + 344);
  v30 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v11 = *(v0 + 368);
  v31 = *(v0 + 336);
  v12 = *(v0 + 200);
  v13 = *(v0 + 272);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v20 = *(v0 + 56);
  v29 = *(v0 + 32);
  (*(v0 + 360))(*(v0 + 248), *(v0 + 208));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_122094()
{
  v1 = *(v0 + 416);
  v30 = *(v0 + 424);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  v11 = *(v0 + 440);
  v31 = *(v0 + 408);
  v12 = *(v0 + 200);
  v13 = *(v0 + 272);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v20 = *(v0 + 56);
  v29 = *(v0 + 32);
  (*(v0 + 432))(*(v0 + 248), *(v0 + 208));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_122250()
{
  v32 = v0[65];
  v34 = v0[66];
  v1 = v0[35];
  v29 = v0[31];
  v31 = v0[64];
  v2 = v0[25];
  v25 = v0[63];
  v27 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];

  (*(v9 + 8))(v7, v8);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v25(v2, v3);
  v32(v29, v27);
  v35 = v0[62];
  v11 = v0[34];
  v13 = v0[30];
  v12 = v0[31];
  v15 = v0[28];
  v14 = v0[29];
  v16 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[15];
  v26 = v0[14];
  v28 = v0[13];
  v30 = v0[10];
  v17 = v0[7];
  v33 = v0[4];
  v10(v0[18], v0[16]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_122434()
{
  v1 = v0[35];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v27 = v0[69];
  v9 = v0[25];
  v10 = v0[34];
  v11 = v0[30];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[23];
  v14 = v0[24];
  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v16 = v0[7];
  v26 = v0[4];
  (*(v2 + 8))(v0[31], v0[26]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1225E4()
{
  v1 = v0[35];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v27 = v0[72];
  v9 = v0[25];
  v10 = v0[34];
  v11 = v0[30];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[23];
  v14 = v0[24];
  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v16 = v0[7];
  v26 = v0[4];
  (*(v2 + 8))(v0[31], v0[26]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_122794(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5AE8(&unk_15F170, &unk_126E00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  v9 = sub_123B4C();
  v10 = [v9 label];

  if (v10)
  {
    sub_125E0C();

    v11 = sub_124E4C();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_124E4C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  TimerPromptLabelDuplicateParameters = type metadata accessor for CreateTimerPromptLabelDuplicateParameters(0);
  sub_22A1C(v8, a1 + *(TimerPromptLabelDuplicateParameters + 20));
  v14 = *a1;

  *a1 = a3;
  return result;
}

uint64_t sub_122908(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_11F800(a1, a2);
}

uint64_t sub_1229C8()
{
  v1 = *(v0 + 16);
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  v2 = sub_123B4C();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_122A40(uint64_t a1)
{
  v2 = sub_5AE8(&qword_160CC8, &unk_12BE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeleteTimerCATsSimple()
{
  result = qword_163260;
  if (!qword_163260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_122B3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_122CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}