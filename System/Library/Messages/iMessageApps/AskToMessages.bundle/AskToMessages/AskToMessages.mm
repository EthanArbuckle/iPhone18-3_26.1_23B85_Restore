uint64_t sub_1DA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_5697C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_2AFC(&qword_71640, &qword_58938);
  sub_202C(a1 + *(v2 + 44));
  v3 = sub_56CCC();
  sub_5668C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_2AFC(&qword_71648, &qword_58940) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  sub_571DC();
  sub_566EC();
  v13 = (a1 + *(sub_2AFC(&qword_71650, &qword_58948) + 36));
  *v13 = v32;
  v13[1] = v33;
  v13[2] = v34;
  v14 = [objc_opt_self() tertiarySystemFillColor];
  v15 = sub_56F5C();
  v16 = sub_56CAC();
  v17 = a1 + *(sub_2AFC(&qword_71658, &qword_58950) + 36);
  *v17 = v15;
  *(v17 + 8) = v16;
  v18 = (a1 + *(sub_2AFC(&qword_71660, &qword_58958) + 36));
  v19 = *(sub_567BC() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_56A0C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *&v18[*(sub_2AFC(&qword_71668, &qword_58960) + 36)] = 256;
  v27 = (a1 + *(sub_2AFC(&qword_71670, &qword_58968) + 36));
  v28 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
  v29 = enum case for Image.Scale.small(_:);
  v30 = sub_5704C();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  result = swift_getKeyPath();
  *v27 = result;
  return result;
}

uint64_t sub_202C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_2AFC(&qword_71680, &qword_589A8) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v49 - v5;
  sub_571DC();
  v48._object = v6;
  sub_567CC();
  *&v69[55] = v74;
  *&v69[71] = v75;
  *&v69[87] = v76;
  *&v69[103] = v77;
  *&v69[7] = v71;
  *&v69[23] = v72;
  v70 = 1;
  *&v69[39] = v73;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 0xE700000000000000;
  v85._countAndFlagsBits = 0x736E6F6974704FLL;
  v85._object = 0xE700000000000000;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v9.super.isa = v8;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v10 = sub_55EFC(v85, v86, v9, v87, v48);
  v12 = v11;

  *&v78 = v10;
  *(&v78 + 1) = v12;
  sub_2B4C();
  v13 = sub_56E0C();
  v15 = v14;
  LOBYTE(v12) = v16;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = sub_56CDC();
  v21 = swift_getKeyPath();
  v22 = v12 & 1;
  LOBYTE(v78) = v12 & 1;
  LOBYTE(v67[0]) = 0;
  v23 = sub_56FCC();
  v24 = swift_getKeyPath();
  *&v78 = v13;
  *(&v78 + 1) = v15;
  LOBYTE(v79) = v22;
  *(&v79 + 1) = v18;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = v21;
  *&v82 = v20;
  *(&v82 + 1) = v24;
  *&v83 = v23;
  sub_2AFC(&qword_71690, &qword_58A40);
  sub_2BB8();
  v25 = v53;
  sub_56ECC();
  v67[2] = v80;
  v67[3] = v81;
  v67[4] = v82;
  v68 = v83;
  v67[0] = v78;
  v67[1] = v79;
  sub_2E90(v67, &qword_71690, &qword_58A40);
  v26 = sub_5702C();
  v27 = swift_getKeyPath();
  v52 = sub_56CDC();
  v28 = swift_getKeyPath();
  v50 = v28;
  v29 = [objc_opt_self() tertiaryLabelColor];
  v51 = sub_56F5C();
  v30 = swift_getKeyPath();
  LOBYTE(v78) = 0;
  sub_571DC();
  sub_567CC();
  *&v65[55] = v81;
  *&v65[71] = v82;
  *&v65[87] = v83;
  *&v65[103] = v84;
  *&v65[7] = v78;
  *&v65[23] = v79;
  v66 = 1;
  *&v65[39] = v80;
  v31 = v54;
  sub_2E28(v25, v54, &qword_71680, &qword_589A8);
  v32 = *&v69[80];
  *(a1 + 73) = *&v69[64];
  *(a1 + 89) = v32;
  *(a1 + 105) = *&v69[96];
  v33 = *&v69[16];
  *(a1 + 9) = *v69;
  *(a1 + 25) = v33;
  v34 = *&v69[48];
  *(a1 + 41) = *&v69[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v69[111];
  *(a1 + 57) = v34;
  v35 = sub_2AFC(&qword_716F0, &qword_58A70);
  sub_2E28(v31, a1 + v35[12], &qword_71680, &qword_589A8);
  v36 = a1 + v35[16];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = (a1 + v35[20]);
  *&v55 = v26;
  *(&v55 + 1) = v27;
  *&v56 = 1;
  BYTE8(v56) = 0;
  *&v57 = v28;
  v38 = v52;
  *(&v57 + 1) = v52;
  *&v58 = v30;
  v39 = v30;
  v40 = v51;
  *(&v58 + 1) = v51;
  v41 = v56;
  *v37 = v55;
  v37[1] = v41;
  v42 = v58;
  v37[2] = v57;
  v37[3] = v42;
  v43 = a1 + v35[24];
  v44 = *&v65[80];
  *(v43 + 73) = *&v65[64];
  *(v43 + 89) = v44;
  *(v43 + 105) = *&v65[96];
  v45 = *&v65[16];
  *(v43 + 9) = *v65;
  *(v43 + 25) = v45;
  v46 = *&v65[48];
  *(v43 + 41) = *&v65[32];
  *v43 = 0;
  *(v43 + 8) = 1;
  *(v43 + 120) = *&v65[111];
  *(v43 + 57) = v46;
  sub_2E28(&v55, v59, &qword_716F8, &qword_58A78);
  sub_2E90(v53, &qword_71680, &qword_589A8);
  v59[0] = v26;
  v59[1] = v27;
  v59[2] = 1;
  v60 = 0;
  v61 = v50;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  sub_2E90(v59, &qword_716F8, &qword_58A78);
  return sub_2E90(v54, &qword_71680, &qword_589A8);
}

uint64_t sub_2608(uint64_t a1, id *a2)
{
  result = sub_5776C();
  *a2 = 0;
  return result;
}

uint64_t sub_2680(uint64_t a1, id *a2)
{
  v3 = sub_5777C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2700@<X0>(void *a1@<X8>)
{
  sub_5778C();
  v2 = sub_5774C();

  *a1 = v2;
  return result;
}

uint64_t sub_2744()
{
  v1 = *v0;
  sub_5778C();
  v2 = sub_577FC();

  return v2;
}

uint64_t sub_2780()
{
  v1 = *v0;
  sub_5778C();
  sub_577CC();
}

Swift::Int sub_27D4()
{
  v1 = *v0;
  sub_5778C();
  sub_57C2C();
  sub_577CC();
  v2 = sub_57C4C();

  return v2;
}

uint64_t sub_2848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_5778C();
  v6 = v5;
  if (v4 == sub_5778C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_57B8C();
  }

  return v9 & 1;
}

uint64_t sub_28D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_5774C();

  *a2 = v5;
  return result;
}

uint64_t sub_2918@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_5778C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2968(uint64_t a1)
{
  v2 = sub_2A68(&qword_71700);
  v3 = sub_2A68(&qword_71708);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2A68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2AFC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2B4C()
{
  result = qword_71688;
  if (!qword_71688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71688);
  }

  return result;
}

unint64_t sub_2BB8()
{
  result = qword_71698;
  if (!qword_71698)
  {
    sub_2C70(&qword_71690, &qword_58A40);
    sub_2CB8();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71698);
  }

  return result;
}

uint64_t sub_2C70(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2CB8()
{
  result = qword_716A0;
  if (!qword_716A0)
  {
    sub_2C70(&qword_716A8, &qword_58A48);
    sub_2D70();
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716A0);
  }

  return result;
}

unint64_t sub_2D70()
{
  result = qword_716B0;
  if (!qword_716B0)
  {
    sub_2C70(&qword_716B8, &qword_58A50);
    sub_3260(&qword_716C0, &qword_716C8, &qword_58A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716B0);
  }

  return result;
}

uint64_t sub_2E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2E90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2AFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2EF4()
{
  result = qword_71710;
  if (!qword_71710)
  {
    sub_2C70(&qword_71670, &qword_58968);
    sub_2FAC();
    sub_3260(&qword_71760, &qword_71678, &qword_58970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71710);
  }

  return result;
}

unint64_t sub_2FAC()
{
  result = qword_71718;
  if (!qword_71718)
  {
    sub_2C70(&qword_71660, &qword_58958);
    sub_3064();
    sub_3260(&qword_71758, &qword_71668, &qword_58960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71718);
  }

  return result;
}

unint64_t sub_3064()
{
  result = qword_71720;
  if (!qword_71720)
  {
    sub_2C70(&qword_71658, &qword_58950);
    sub_311C();
    sub_3260(&qword_71748, &qword_71750, &qword_58A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71720);
  }

  return result;
}

unint64_t sub_311C()
{
  result = qword_71728;
  if (!qword_71728)
  {
    sub_2C70(&qword_71650, &qword_58948);
    sub_31A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71728);
  }

  return result;
}

unint64_t sub_31A8()
{
  result = qword_71730;
  if (!qword_71730)
  {
    sub_2C70(&qword_71648, &qword_58940);
    sub_3260(&qword_71738, &qword_71740, &qword_58A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71730);
  }

  return result;
}

uint64_t sub_3260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_32AC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_32B8(uint64_t a1, int a2)
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

uint64_t sub_32D8(uint64_t result, int a2, int a3)
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

__n128 sub_3318(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3324(uint64_t a1, int a2)
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

uint64_t sub_3344(uint64_t result, int a2, int a3)
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

void sub_3394(uint64_t a1, unint64_t *a2)
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

uint64_t sub_33E8()
{
  v0 = sub_5736C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5738C();
  sub_B17C(v5, qword_71780);
  sub_B144(v5, qword_71780);
  (*(v1 + 104))(v4, enum case for ContactFormatter.Style.shortName(_:), v0);
  return sub_5737C();
}

uint64_t sub_34EC()
{
  v0 = sub_573DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  sub_573EC();
  (*(v1 + 104))(v4, enum case for _CommunicationHandle.Kind.phoneNumber(_:), v0);
  sub_B758(&qword_717D8, &type metadata accessor for _CommunicationHandle.Kind);
  sub_5780C();
  sub_5780C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v7, v0);
  v10 = v17[0];
  v9 = v17[1];
  result = sub_573FC();
  if (v9 == v10)
  {
    v12 = objc_allocWithZone(CNPhoneNumber);
    v13 = sub_5774C();

    v14 = [v12 initWithStringValue:v13];

    v15 = [v14 formattedStringValue];
    if (v15)
    {
      v16 = sub_5778C();

      return v16;
    }

    else
    {
      return sub_573FC();
    }
  }

  return result;
}

uint64_t sub_3730(void *a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_71820, &qword_59550);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63 - v6;
  v68 = type metadata accessor for MessagesContext();
  v64 = *(v68 - 8);
  v8 = *(v64 + 64);
  v9 = __chkstk_darwin(v68);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = *(v1 + 72);
  v15 = *(v14 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
  v16 = sub_5763C();

  v17 = (v14 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  sub_AF78(v14 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext, v13);
  v18 = v17[1];
  v66 = *v17;
  v19 = qword_715B8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_562FC();
  v21 = sub_B144(v20, qword_75758);

  v22 = a1;
  v23 = v16;
  v67 = v21;
  v24 = sub_562DC();
  v25 = sub_5794C();
  v70 = v23;

  v69 = v22;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412802;
    if (v18)
    {
      sub_B8D8();
      swift_allocError();
      *v28 = v66;
      v28[1] = v18;

      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v26 + 4) = v29;
    *(v26 + 12) = 2112;
    v31 = v69;
    v32 = v70;
    *(v26 + 14) = v69;
    *v27 = v30;
    v27[1] = v31;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v32;
    v27[2] = v32;
    v33 = v31;
    v34 = v32;
    _os_log_impl(&dword_0, v24, v25, "%@: User selected answer choice. answerChoice: %@, question: %@", v26, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  v35 = *(v68 + 36);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v37 = Strong, v38 = [Strong activeConversation], v37, v38))
  {

    v39 = v70;
    v40 = [v38 senderAddress];
    sub_5778C();

    v41 = objc_allocWithZone(sub_5725C());
    v42 = v69;
    v43 = sub_5723C();
    v44 = sub_578CC();
    (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
    sub_AF78(v13, v11);
    sub_578AC();

    v45 = v43;
    v46 = v38;
    v47 = sub_5789C();
    v48 = v11;
    v49 = v13;
    v50 = (*(v64 + 80) + 56) & ~*(v64 + 80);
    v51 = swift_allocObject();
    v51[2] = v47;
    v51[3] = &protocol witness table for MainActor;
    v51[4] = v2;
    v51[5] = v45;
    v51[6] = v46;
    v52 = v51 + v50;
    v13 = v49;
    sub_BA54(v48, v52);
    sub_31894(0, 0, v7, &unk_58B90, v51);
  }

  else
  {

    v53 = v69;
    v54 = sub_562DC();
    v55 = sub_5792C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412546;
      if (v18)
      {
        sub_B8D8();
        swift_allocError();
        *v58 = v66;
        v58[1] = v18;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        v60 = v59;
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }

      *(v56 + 4) = v59;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *v57 = v60;
      v57[1] = v53;
      v61 = v53;
      _os_log_impl(&dword_0, v54, v55, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v56, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return sub_AFDC(v13);
}

uint64_t sub_3D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_578AC();
  v7[7] = sub_5789C();

  return _swift_task_switch(sub_3E1C, 0, 0);
}

uint64_t sub_3E1C()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_3EA8, v3, v2);
}

uint64_t sub_3EA8()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = sub_300E8();
  v6 = v3;
  if (v3 >> 62)
  {
    v3 = sub_57B1C();
    v7 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_57AEC();
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v12 = *&v9[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
    v11 = *&v9[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled + 8];

    v12(0);
  }

  while (v7 != v8);
LABEL_10:
  v14 = v0[6];
  v13 = v0[7];

  v15 = sub_5788C();
  v5 = v16;
  v0[9] = v15;
  v0[10] = v16;
  v3 = sub_4000;
  v4 = v15;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4000()
{
  v1 = *(v0[2] + 72);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_40A0;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_14234(v5, v3, v4);
}

uint64_t sub_40A0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_419C, 0, 0);
}

uint64_t sub_419C()
{
  v1 = *(v0 + 48);
  *(v0 + 96) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_4228, v3, v2);
}

uint64_t sub_4228()
{
  v1 = v0[12];
  v2 = v0[2];

  v6 = *(v2 + 80);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v14 = *(v2 + 80);
    }

    v3 = sub_57B1C();
    v7 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_57AEC();
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v12 = *&v9[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
    v11 = *&v9[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled + 8];

    v12(1);
  }

  while (v7 != v8);

LABEL_10:
  v13 = v0[2];
  sub_43CC();
  v4 = v0[9];
  v5 = v0[10];
  v3 = sub_436C;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_436C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_43CC()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v4 = *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  v3 = *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5662C();

  if (v32 == 255)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v13 = sub_562FC();
    sub_B144(v13, qword_75758);

    v14 = sub_562DC();
    v15 = sub_5792C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v18 = v4;
        v18[1] = v3;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_0, v14, v15, "%@: responseTransmitter.sendResult is nil", v16, 0xCu);
      sub_2E90(v17, &qword_71828, &qword_598B0);
    }

    else
    {
    }
  }

  else if (v32)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v5 = sub_562FC();
    sub_B144(v5, qword_75758);

    sub_BCC0(v31, v32);
    v6 = sub_562DC();
    v7 = sub_5792C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v10 = v4;
        v10[1] = v3;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v8 + 4) = v11;
      *v9 = v12;
      *(v8 + 12) = 2112;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v29;
      v9[1] = v29;
      _os_log_impl(&dword_0, v6, v7, "%@: Error sending response: %@", v8, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {

      sub_BCE4(v31, v32);
    }

    sub_BCE4(v31, v32);
    *(v1 + 104) = 1;
  }

  else
  {
    sub_BCD8(v31, 0);
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v21 = sub_562FC();
    sub_B144(v21, qword_75758);

    sub_BCC0(v31, v32);
    v22 = sub_562DC();
    v23 = sub_5794C();

    sub_BCE4(v31, v32);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v26 = v4;
        v26[1] = v3;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v31;
      *v25 = v28;
      v25[1] = v31;
      sub_BCD8(v31, 0);
      _os_log_impl(&dword_0, v22, v23, "%@: Successfully sent response: %@", v24, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = *(v1 + 96);
    (*(v1 + 88))();
    sub_BCE4(v31, v32);
    sub_BCE4(v31, v32);
  }
}

void sub_4944()
{
  v1 = sub_5605C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v85 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_561CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v78 - v10;
  v91 = sub_5773C();
  v83 = *(v91 - 8);
  v11 = *(v83 + 64);
  v12 = __chkstk_darwin(v91);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v78 - v14;
  v102 = sub_561AC();
  v89 = *(v102 - 8);
  v15 = *(v89 + 64);
  __chkstk_darwin(v102);
  v101 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_5606C();
  v17 = *(v103 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v103);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v99 = &v78 - v22;
  v107 = &_swiftEmptyArrayStorage;
  v104 = v0;
  v23 = *(*(v0 + 72) + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
  v24 = sub_5763C();

  v25 = sub_5637C();
  if (v25 >> 62)
  {
    v26 = sub_57B1C();
  }

  else
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v88 = v17;
  v92 = v21;
  v87 = v1;
  v86 = v2;
  if (v26)
  {
    if (v26 >= 1)
    {
      v79 = v6;
      v80 = v5;
      v27 = 0;
      v100 = v25 & 0xC000000000000001;
      v93 = 0x800000000005BE80;
      v94 = 0x800000000005BE50;
      v96 = (v17 + 16);
      v97 = (v89 + 8);
      v95 = (v17 + 8);
      v98 = v26;
      while (1)
      {
        if (v100)
        {
          v28 = sub_57AEC();
        }

        else
        {
          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        sub_564CC();
        v30 = sub_564BC();
        if (v30 == sub_564BC())
        {
          goto LABEL_14;
        }

        if (sub_564AC() == 0xD000000000000025 && v94 == v31)
        {
          break;
        }

        v32 = sub_57B8C();

        if (v32)
        {
          goto LABEL_14;
        }

        if (sub_564AC() == 0xD000000000000028 && v93 == v51)
        {
          break;
        }

        v52 = sub_57B8C();

        if (v52)
        {
          goto LABEL_14;
        }

LABEL_17:
        ++v27;

        if (v26 == v27)
        {

          v5 = v80;
          v6 = v79;
          goto LABEL_24;
        }
      }

LABEL_14:
      v33 = v25;
      v34 = *(v104 + 48);
      v35 = *(v104 + 56);

      v36 = v99;
      sub_5604C();
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v29;

      v39 = v29;
      v40 = v101;
      sub_5619C();
      v41 = sub_5615C();
      v43 = v42;
      (*v97)(v40, v102);
      v44 = type metadata accessor for Choice();
      v45 = objc_allocWithZone(v44);
      v46 = &v45[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
      *v46 = nullsub_1;
      v46[1] = 0;
      v47 = &v45[OBJC_IVAR____TtC13AskToMessages6Choice_id];
      *v47 = v41;
      v47[1] = v43;
      v48 = v103;
      (*v96)(&v45[OBJC_IVAR____TtC13AskToMessages6Choice_title], v36, v103);
      v45[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 0;
      *&v45[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
      v49 = &v45[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
      *v49 = 0;
      v49[1] = 0;
      v50 = &v45[OBJC_IVAR____TtC13AskToMessages6Choice_action];
      *v50 = sub_B8D0;
      v50[1] = v38;
      v105.receiver = v45;
      v105.super_class = v44;
      objc_msgSendSuper2(&v105, "init");
      (*v95)(v36, v48);

      sub_5782C();
      if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v107 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v53 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
        sub_5786C();
      }

      sub_5787C();
      v25 = v33;
      v26 = v98;
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

LABEL_24:
    sub_576DC();
    sub_B038();
    v54 = sub_5796C();
    if (v54)
    {
      v55 = v54;
      v56 = v6;
      v57 = v5;
    }

    else
    {
      v56 = v6;
      v57 = v5;
      v55 = [objc_opt_self() mainBundle];
    }

    v58 = v84;
    sub_561BC();
    v59 = v83;
    v60 = v90;
    (*(v83 + 16))(v81, v90, v91);
    (*(v56 + 16))(v82, v58, v57);
    v61 = [v55 bundleURL];
    v62 = v85;
    sub_560AC();

    (*(v86 + 104))(v62, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v87);
    sub_5607C();

    (*(v56 + 8))(v58, v57);
    (*(v59 + 8))(v60, v91);
    v63 = swift_allocObject();
    swift_weakInit();

    v64 = v101;
    sub_5619C();
    v65 = sub_5615C();
    v67 = v66;
    (*(v89 + 8))(v64, v102);
    v68 = type metadata accessor for Choice();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
    *v70 = nullsub_1;
    v70[1] = 0;
    v71 = &v69[OBJC_IVAR____TtC13AskToMessages6Choice_id];
    *v71 = v65;
    v71[1] = v67;
    v72 = v88;
    v73 = v92;
    v74 = v103;
    (*(v88 + 16))(&v69[OBJC_IVAR____TtC13AskToMessages6Choice_title], v92, v103);
    v69[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 1;
    *&v69[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
    v75 = &v69[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
    *v75 = 0;
    v75[1] = 0;
    v76 = &v69[OBJC_IVAR____TtC13AskToMessages6Choice_action];
    *v76 = sub_B888;
    v76[1] = v63;
    v106.receiver = v69;
    v106.super_class = v68;
    objc_msgSendSuper2(&v106, "init");
    (*(v72 + 8))(v73, v74);

    sub_5782C();
    if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v107 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v77 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
      sub_5786C();
    }

    sub_5787C();
  }
}

uint64_t sub_5408(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3730(a3);
  }

  return result;
}

uint64_t sub_5468()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 88);
    v1 = *(result + 96);

    v2(v3);
  }

  return result;
}

uint64_t sub_54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = sub_573DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6240(a3, v16);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 != enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    if (v17 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
    {
      if (a5)
      {
        if (!a2)
        {
          v36 = 0x800000000005BDE0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_58B00;
          *(v57 + 56) = &type metadata for String;
          v58 = sub_B088();
          *(v57 + 32) = a4;
          *(v57 + 40) = a5;
          *(v57 + 96) = &type metadata for String;
          *(v57 + 104) = v58;
          *(v57 + 64) = v58;
          *(v57 + 72) = a4;
          *(v57 + 80) = a5;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v60 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v41 = [v60 bundleForClass:ObjCClassFromMetadata];
          v91._countAndFlagsBits = 0x800000000005BDE0;
          v42._countAndFlagsBits = 0xD00000000000002BLL;
          goto LABEL_26;
        }

        v18 = 0x800000000005BE10;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_58AF0;
        *(v25 + 56) = &type metadata for String;
        v26 = sub_B088();
        *(v25 + 32) = a4;
        *(v25 + 40) = a5;
        *(v25 + 96) = &type metadata for String;
        *(v25 + 104) = v26;
        *(v25 + 64) = v26;
        *(v25 + 72) = a1;
        *(v25 + 80) = a2;
        *(v25 + 136) = &type metadata for String;
        *(v25 + 144) = v26;
        *(v25 + 112) = a4;
        *(v25 + 120) = a5;
        type metadata accessor for Localization();
        v27 = swift_getObjCClassFromMetadata();
        v28 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v23 = [v28 bundleForClass:v27];
        v91._countAndFlagsBits = 0x800000000005BE10;
        v24._countAndFlagsBits = 0xD000000000000032;
      }

      else
      {
        if (!a2)
        {
          v53 = 0x800000000005BD60;
          type metadata accessor for Localization();
          v67 = swift_getObjCClassFromMetadata();
          v55 = [objc_opt_self() bundleForClass:v67];
          v91._countAndFlagsBits = 0x800000000005BD60;
          v56._countAndFlagsBits = 0xD000000000000034;
          goto LABEL_30;
        }

        v18 = 0x800000000005BDA0;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_58B10;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_B088();
        *(v43 + 32) = a1;
        *(v43 + 40) = a2;
        type metadata accessor for Localization();
        v44 = swift_getObjCClassFromMetadata();
        v45 = objc_opt_self();

        v23 = [v45 bundleForClass:v44];
        v91._countAndFlagsBits = 0x800000000005BDA0;
        v24._countAndFlagsBits = 0xD00000000000003BLL;
      }
    }

    else
    {
      if (v17 != enum case for _CommunicationHandle.Kind.custom(_:))
      {
        (*(v13 + 8))(v16, v12);
      }

      if (a5)
      {
        if (!a2)
        {
          v36 = 0x800000000005BBE0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_58B00;
          *(v61 + 56) = &type metadata for String;
          v62 = sub_B088();
          *(v61 + 32) = a4;
          *(v61 + 40) = a5;
          *(v61 + 96) = &type metadata for String;
          *(v61 + 104) = v62;
          *(v61 + 64) = v62;
          *(v61 + 72) = a4;
          *(v61 + 80) = a5;
          type metadata accessor for Localization();
          v63 = swift_getObjCClassFromMetadata();
          v64 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v41 = [v64 bundleForClass:v63];
          v91._countAndFlagsBits = 0x800000000005BBE0;
          v42._countAndFlagsBits = 0xD00000000000002CLL;
          goto LABEL_26;
        }

        v18 = 0x800000000005BC10;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_58AF0;
        *(v29 + 56) = &type metadata for String;
        v30 = sub_B088();
        *(v29 + 32) = a4;
        *(v29 + 40) = a5;
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = v30;
        *(v29 + 64) = v30;
        *(v29 + 72) = a1;
        *(v29 + 80) = a2;
        *(v29 + 136) = &type metadata for String;
        *(v29 + 144) = v30;
        *(v29 + 112) = a4;
        *(v29 + 120) = a5;
        type metadata accessor for Localization();
        v31 = swift_getObjCClassFromMetadata();
        v32 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v23 = [v32 bundleForClass:v31];
        v91._countAndFlagsBits = 0x800000000005BC10;
        v24._countAndFlagsBits = 0xD000000000000033;
      }

      else
      {
        if (!a2)
        {
          v53 = 0x800000000005BB60;
          type metadata accessor for Localization();
          v68 = swift_getObjCClassFromMetadata();
          v55 = [objc_opt_self() bundleForClass:v68];
          v91._countAndFlagsBits = 0x800000000005BB60;
          v56._countAndFlagsBits = 0xD000000000000035;
          goto LABEL_30;
        }

        v18 = 0x800000000005BBA0;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_58B10;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_B088();
        *(v46 + 32) = a1;
        *(v46 + 40) = a2;
        type metadata accessor for Localization();
        v47 = swift_getObjCClassFromMetadata();
        v48 = objc_opt_self();

        v23 = [v48 bundleForClass:v47];
        v91._countAndFlagsBits = 0x800000000005BBA0;
        v24._countAndFlagsBits = 0xD00000000000003CLL;
      }
    }

LABEL_21:
    v24._object = v18;
    v99.value._countAndFlagsBits = 0;
    v99.value._object = 0;
    v49.super.isa = v23;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    sub_55EFC(v24, v99, v49, v104, v91);

    v50 = sub_5775C();
    v52 = v51;

    if ((a6 & 1) == 0)
    {
      return v50;
    }

    goto LABEL_31;
  }

  if (!a5)
  {
    if (a2)
    {
      v18 = 0x800000000005BC90;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_58B10;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_B088();
      *(v33 + 32) = a1;
      *(v33 + 40) = a2;
      type metadata accessor for Localization();
      v34 = swift_getObjCClassFromMetadata();
      v35 = objc_opt_self();

      v23 = [v35 bundleForClass:v34];
      v91._countAndFlagsBits = 0x800000000005BC90;
      v24._countAndFlagsBits = 0xD000000000000041;
      goto LABEL_21;
    }

    v53 = 0x800000000005BC50;
    type metadata accessor for Localization();
    v54 = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass:v54];
    v91._countAndFlagsBits = 0x800000000005BC50;
    v56._countAndFlagsBits = 0xD00000000000003ALL;
LABEL_30:
    v56._object = v53;
    v101.value._countAndFlagsBits = a1;
    v101.value._object = 0;
    v69.super.isa = v55;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v50 = sub_55EFC(v56, v101, v69, v106, v91);
    v52 = v70;

    if ((a6 & 1) == 0)
    {
      return v50;
    }

    goto LABEL_31;
  }

  if (a2)
  {
    v18 = 0x800000000005BD20;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_58AF0;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_B088();
    *(v19 + 32) = a4;
    *(v19 + 40) = a5;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v20;
    *(v19 + 64) = v20;
    *(v19 + 72) = a1;
    *(v19 + 80) = a2;
    *(v19 + 136) = &type metadata for String;
    *(v19 + 144) = v20;
    *(v19 + 112) = a4;
    *(v19 + 120) = a5;
    type metadata accessor for Localization();
    v21 = swift_getObjCClassFromMetadata();
    v22 = objc_opt_self();
    swift_bridgeObjectRetain_n();

    v23 = [v22 bundleForClass:v21];
    v91._countAndFlagsBits = 0x800000000005BD20;
    v24._countAndFlagsBits = 0xD000000000000038;
    goto LABEL_21;
  }

  v36 = 0x800000000005BCE0;
  sub_2AFC(&qword_717E0, &qword_58B68);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_58B00;
  *(v37 + 56) = &type metadata for String;
  v38 = sub_B088();
  *(v37 + 32) = a4;
  *(v37 + 40) = a5;
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = v38;
  *(v37 + 64) = v38;
  *(v37 + 72) = a4;
  *(v37 + 80) = a5;
  type metadata accessor for Localization();
  v39 = swift_getObjCClassFromMetadata();
  v40 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v41 = [v40 bundleForClass:v39];
  v91._countAndFlagsBits = 0x800000000005BCE0;
  v42._countAndFlagsBits = 0xD000000000000031;
LABEL_26:
  v42._object = v36;
  v100.value._countAndFlagsBits = a1;
  v100.value._object = 0;
  v65.super.isa = v41;
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  sub_55EFC(v42, v100, v65, v105, v91);

  v50 = sub_5775C();
  v52 = v66;

  if ((a6 & 1) == 0)
  {
    return v50;
  }

LABEL_31:
  v93 = v50;
  v94 = v52;

  if (a5)
  {

    v95._countAndFlagsBits = 32;
    v95._object = 0xE100000000000000;
    sub_577DC(v95);

    v72 = v93;
    v71 = v94;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_58B10;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = sub_B088();
    *(v73 + 32) = a4;
    *(v73 + 40) = a5;
    type metadata accessor for Localization();
    v74 = swift_getObjCClassFromMetadata();
    v75 = objc_opt_self();

    v76 = [v75 bundleForClass:v74];
    v96._object = 0xEC0000006567616ELL;
    v92._countAndFlagsBits = 0xEC0000006567616ELL;
    v96._countAndFlagsBits = 0x614D6E6143756F59;
    v102.value._countAndFlagsBits = 0;
    v102.value._object = 0;
    v77.super.isa = v76;
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    sub_55EFC(v96, v102, v77, v107, v92);

    v78 = sub_5775C();
    v80 = v79;

    v93 = v72;
    v94 = v71;

    v81._countAndFlagsBits = v78;
    v81._object = v80;
  }

  else
  {
    v97._countAndFlagsBits = 32;
    v97._object = 0xE100000000000000;
    sub_577DC(v97);

    v83 = v93;
    v82 = v94;
    type metadata accessor for Localization();
    v84 = swift_getObjCClassFromMetadata();
    v85 = [objc_opt_self() bundleForClass:v84];
    v92._countAndFlagsBits = 0x800000000005B7D0;
    v98._countAndFlagsBits = 0xD000000000000015;
    v98._object = 0x800000000005B7D0;
    v103.value._countAndFlagsBits = a4;
    v103.value._object = 0;
    v86.super.isa = v85;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v87 = sub_55EFC(v98, v103, v86, v108, v92);
    v89 = v88;

    v93 = v83;
    v94 = v82;

    v81._countAndFlagsBits = v87;
    v81._object = v89;
  }

  sub_577DC(v81);

  return v93;
}

uint64_t sub_6240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v58 = sub_573DC();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v58);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_717F0, &qword_58B70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = sub_2AFC(&qword_717F8, &qword_58B78);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v57 = &v43 - v15;
  v19 = __chkstk_darwin(v16);
  v20 = &v43 - v17;
  v21 = *(a1 + 16);
  v45 = v3;
  if (!v21)
  {
    (*(v3 + 56))(&v43 - v17, 1, 1, v58, v19);
LABEL_11:
    v38 = v44;
    sub_B0DC(v20, v44, &qword_717F8, &qword_58B78);
    v39 = v45;
    v40 = *(v45 + 48);
    if (v40(v38, 1, v58) != 1)
    {
      return (*(v39 + 32))(v46, v38, v58);
    }

    v41 = v58;
    (*(v39 + 104))(v46, enum case for _CommunicationHandle.Kind.custom(_:), v58);
    result = (v40)(v38, 1, v41);
    if (result != 1)
    {
      return sub_2E90(v38, &qword_717F8, &qword_58B78);
    }

    return result;
  }

  v52 = v18;
  v22 = sub_5748C();
  v55 = v6;
  v23 = *(v22 - 8);
  v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v25 = sub_5747C();
  sub_573EC();

  v53 = *(v3 + 56);
  v53(v20, 0, 1, v58);
  v26 = v3 + 56;
  v27 = (v3 + 48);
  v54 = v26;
  v47 = (v26 - 24);
  v48 = (v26 - 48);
  v51 = *(v23 + 72);
  v56 = v20;
  while (1)
  {
    v28 = sub_5747C();
    v29 = v57;
    sub_573EC();

    v30 = v58;
    v53(v29, 0, 1, v58);
    v31 = *(v55 + 48);
    sub_2E28(v29, v9, &qword_717F8, &qword_58B78);
    sub_2E28(v20, &v9[v31], &qword_717F8, &qword_58B78);
    v32 = *v27;
    if ((*v27)(v9, 1, v30) != 1)
    {
      break;
    }

    sub_2E90(v57, &qword_717F8, &qword_58B78);
    if (v32(&v9[v31], 1, v58) != 1)
    {
      goto LABEL_16;
    }

    sub_2E90(v9, &qword_717F8, &qword_58B78);
    v20 = v56;
LABEL_3:
    v24 += v51;
    if (!--v21)
    {
      goto LABEL_11;
    }
  }

  v33 = v52;
  sub_2E28(v9, v52, &qword_717F8, &qword_58B78);
  if (v32(&v9[v31], 1, v58) != 1)
  {
    v34 = &v9[v31];
    v35 = v58;
    v36 = v49;
    (*v47)(v49, v34, v58);
    sub_B758(&qword_71800, &type metadata accessor for _CommunicationHandle.Kind);
    v50 = sub_576CC();
    v37 = *v48;
    (*v48)(v36, v35);
    sub_2E90(v57, &qword_717F8, &qword_58B78);
    v37(v52, v35);
    sub_2E90(v9, &qword_717F8, &qword_58B78);
    v20 = v56;
    if ((v50 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_3;
  }

  sub_2E90(v57, &qword_717F8, &qword_58B78);
  (*v48)(v33, v58);
LABEL_16:
  sub_2E90(v9, &qword_717F0, &qword_58B70);
  v20 = v56;
LABEL_17:
  sub_2E90(v20, &qword_717F8, &qword_58B78);
  return (*(v45 + 104))(v46, enum case for _CommunicationHandle.Kind.custom(_:), v58);
}

uint64_t sub_6878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_6900(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_BCC0(v2, v4);
  return sub_5663C();
}

char *sub_6990(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_717D0, &qword_58B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_71838, &qword_5AA00);
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

size_t sub_6C08(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_2AFC(a5, a6);
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

unint64_t sub_6DE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_57C2C();
  sub_577CC();
  v6 = sub_57C4C();

  return sub_714C(a1, a2, v6);
}

unint64_t sub_6E5C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_5778C();
  sub_57C2C();
  sub_577CC();
  v4 = sub_57C4C();

  return sub_7204(a1, v4);
}

unint64_t sub_6EF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_57A3C(*(v2 + 40));

  return sub_7308(a1, v4);
}

uint64_t sub_6F34(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_57A1C();

    if (v9)
    {

      sub_5740C();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_57A0C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_77E0(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_79C0(v21 + 1);
    }

    v19 = v8;
    sub_7BE8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_5740C();
  v11 = sub_5797C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_7C6C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_5798C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

unint64_t sub_714C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_57B8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_7204(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_5778C();
      v9 = v8;
      if (v7 == sub_5778C() && v9 == v10)
      {
        break;
      }

      v12 = sub_57B8C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_7308(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_B7A0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_57A4C();
      sub_B7FC(v8);
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

uint64_t sub_73D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2AFC(&qword_717C0, &qword_58B50);
  v39 = a2;
  result = sub_57B3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_57C2C();
      sub_577CC();
      result = sub_57C4C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_7674()
{
  v1 = v0;
  sub_2AFC(&qword_717C0, &qword_58B50);
  v2 = *v0;
  v3 = sub_57B2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_77E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2AFC(&qword_717C8, &qword_58B58);
    v2 = sub_57A8C();
    v15 = v2;
    sub_579FC();
    if (sub_57A2C())
    {
      sub_5740C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_79C0(v9 + 1);
        }

        v2 = v15;
        result = sub_5797C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_57A2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_79C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2AFC(&qword_717C8, &qword_58B58);
  result = sub_57A7C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_5797C(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_7BE8(uint64_t a1, uint64_t a2)
{
  sub_5797C(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_579EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_7C6C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_79C0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_7DCC();
      goto LABEL_12;
    }

    sub_7F1C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_5797C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_5740C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_5798C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_57B9C();
  __break(1u);
}

id sub_7DCC()
{
  v1 = v0;
  sub_2AFC(&qword_717C8, &qword_58B58);
  v2 = *v0;
  v3 = sub_57A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_7F1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2AFC(&qword_717C8, &qword_58B58);
  result = sub_57A7C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_5797C(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_8130(uint64_t a1)
{
  v2 = sub_5732C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (!v8)
  {
    return v7;
  }

  sub_572FC();
  v18._countAndFlagsBits = v7;
  v18._object = v8;
  v7 = sub_5730C(v18);
  (*(v3 + 8))(v6, v2);
  if (!v7)
  {
    return v7;
  }

  if (!(v7 >> 62))
  {
    result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:

    return 0;
  }

  result = sub_57B1C();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v10 = sub_57AEC();
LABEL_8:
    v11 = v10;

    if (qword_715A0 != -1)
    {
      swift_once();
    }

    v12 = sub_5738C();
    sub_B144(v12, qword_71780);
    v13.super.isa = v11;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v7 = sub_5735C(v13, 1, v19);
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v10 = *(v7 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_8310(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_57B1C())
    {
LABEL_3:
      sub_2AFC(&qword_717C8, &qword_58B58);
      v3 = sub_57A9C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_57B1C();
      if (!v5)
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

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_57AEC();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_5797C(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_5740C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_5798C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
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
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_5797C(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_5740C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_5798C();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_85DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_717C0, &qword_58B50);
    v3 = sub_57B4C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_6DE4(v5, v6);
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

uint64_t sub_86E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v125 = a8;
  v14 = sub_573DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v19 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (a7)
      {
        if (a4)
        {
          v20 = 0x800000000005BB00;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_58B20;
          *(v21 + 56) = &type metadata for String;
          v22 = sub_B088();
          *(v21 + 32) = a6;
          *(v21 + 40) = a7;
          *(v21 + 96) = &type metadata for String;
          *(v21 + 104) = v22;
          *(v21 + 64) = v22;
          *(v21 + 72) = a1;
          *(v21 + 80) = a2;
          *(v21 + 136) = &type metadata for String;
          *(v21 + 144) = v22;
          *(v21 + 112) = a3;
          *(v21 + 120) = a4;
          *(v21 + 176) = &type metadata for String;
          *(v21 + 184) = v22;
          *(v21 + 152) = a6;
          *(v21 + 160) = a7;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v24 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v25 = [v24 bundleForClass:ObjCClassFromMetadata];
          v122._countAndFlagsBits = 0x800000000005BB00;
          v26._countAndFlagsBits = 0xD000000000000032;
LABEL_23:
          v26._object = v20;
          v132.value._countAndFlagsBits = 0;
          v132.value._object = 0;
          v47.super.isa = v25;
          v137._countAndFlagsBits = 0;
          v137._object = 0xE000000000000000;
          sub_55EFC(v26, v132, v47, v137, v122);

          v48 = sub_5775C();
          v50 = v49;
LABEL_33:

          goto LABEL_34;
        }

        sub_2AFC(&qword_717E0, &qword_58B68);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_58AF0;
        *(v54 + 56) = &type metadata for String;
        v55 = sub_B088();
        *(v54 + 32) = a6;
        *(v54 + 40) = a7;
        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = v55;
        *(v54 + 64) = v55;
        *(v54 + 72) = a1;
        *(v54 + 80) = a2;
        *(v54 + 136) = &type metadata for String;
        *(v54 + 144) = v55;
        *(v54 + 112) = a6;
        *(v54 + 120) = a7;
        type metadata accessor for Localization();
        v56 = swift_getObjCClassFromMetadata();
        v57 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v58 = [v57 bundleForClass:v56];
        v122._countAndFlagsBits = 0x800000000005BAD0;
        v59._countAndFlagsBits = 0xD00000000000002BLL;
        v59._object = 0x800000000005BAD0;
        v60.value._countAndFlagsBits = a3;
        v60.value._object = 0;
        v61.super.isa = v58;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
      }

      else
      {
        if (a4)
        {
          v20 = 0x800000000005BA90;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_58B00;
          *(v43 + 56) = &type metadata for String;
          v44 = sub_B088();
          *(v43 + 32) = a1;
          *(v43 + 40) = a2;
          *(v43 + 96) = &type metadata for String;
          *(v43 + 104) = v44;
          *(v43 + 64) = v44;
          *(v43 + 72) = a3;
          *(v43 + 80) = a4;
          type metadata accessor for Localization();
          v45 = swift_getObjCClassFromMetadata();
          v46 = objc_opt_self();

          v25 = [v46 bundleForClass:v45];
          v122._countAndFlagsBits = 0x800000000005BA90;
          v26._countAndFlagsBits = 0xD00000000000003BLL;
          goto LABEL_23;
        }

        sub_2AFC(&qword_717E0, &qword_58B68);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_58B10;
        *(v100 + 56) = &type metadata for String;
        *(v100 + 64) = sub_B088();
        *(v100 + 32) = a1;
        *(v100 + 40) = a2;
        type metadata accessor for Localization();
        v101 = swift_getObjCClassFromMetadata();
        v102 = objc_opt_self();

        v58 = [v102 bundleForClass:v101];
        v122._countAndFlagsBits = 0x800000000005BA50;
        v59._countAndFlagsBits = 0xD000000000000034;
        v59._object = 0x800000000005BA50;
        v60.value._countAndFlagsBits = a3;
        v60.value._object = 0;
        v61.super.isa = v58;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
      }

      sub_55EFC(v59, v60, v61, v62, v122);

      v48 = sub_5775C();
      v50 = v103;

LABEL_34:

      if ((v125 & 1) == 0)
      {
        return v48;
      }

      goto LABEL_35;
    }
  }

  sub_573EC();
  v27 = (*(v15 + 88))(v18, v14);
  if (v27 != enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    if (v27 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
    {
      if (!a7)
      {
        if (a4)
        {
          v28 = 0x800000000005B9B0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_58B10;
          *(v72 + 56) = &type metadata for String;
          *(v72 + 64) = sub_B088();
          *(v72 + 32) = a3;
          *(v72 + 40) = a4;
          type metadata accessor for Localization();
          v73 = swift_getObjCClassFromMetadata();
          v74 = objc_opt_self();

          v33 = [v74 bundleForClass:v73];
          v122._countAndFlagsBits = 0x800000000005B9B0;
          v34._countAndFlagsBits = 0xD000000000000035;
          goto LABEL_32;
        }

        v104 = 0x800000000005B980;
        type metadata accessor for Localization();
        v118 = swift_getObjCClassFromMetadata();
        v106 = [objc_opt_self() bundleForClass:v118];
        v122._countAndFlagsBits = 0x800000000005B980;
        v107._countAndFlagsBits = 0xD00000000000002ELL;
        goto LABEL_49;
      }

      if (a4)
      {
        v28 = 0x800000000005BA20;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_58AF0;
        *(v35 + 56) = &type metadata for String;
        v36 = sub_B088();
        *(v35 + 32) = a6;
        *(v35 + 40) = a7;
        *(v35 + 96) = &type metadata for String;
        *(v35 + 104) = v36;
        *(v35 + 64) = v36;
        *(v35 + 72) = a3;
        *(v35 + 80) = a4;
        *(v35 + 136) = &type metadata for String;
        *(v35 + 144) = v36;
        *(v35 + 112) = a6;
        *(v35 + 120) = a7;
        type metadata accessor for Localization();
        v37 = swift_getObjCClassFromMetadata();
        v38 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v33 = [v38 bundleForClass:v37];
        v122._countAndFlagsBits = 0x800000000005BA20;
        v34._countAndFlagsBits = 0xD00000000000002CLL;
        goto LABEL_32;
      }

      v108 = 0x800000000005B9F0;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_58B00;
      *(v109 + 56) = &type metadata for String;
      v110 = sub_B088();
      *(v109 + 32) = a6;
      *(v109 + 40) = a7;
      *(v109 + 96) = &type metadata for String;
      *(v109 + 104) = v110;
      *(v109 + 64) = v110;
      *(v109 + 72) = a6;
      *(v109 + 80) = a7;
      type metadata accessor for Localization();
      v111 = swift_getObjCClassFromMetadata();
      v112 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v67 = [v112 bundleForClass:v111];
      v68._countAndFlagsBits = 0xD000000000000025;
    }

    else
    {
      if (v27 != enum case for _CommunicationHandle.Kind.custom(_:))
      {
        (*(v15 + 8))(v18, v14);
      }

      if (!a7)
      {
        if (a4)
        {
          v28 = 0x800000000005B7F0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_58B10;
          *(v75 + 56) = &type metadata for String;
          *(v75 + 64) = sub_B088();
          *(v75 + 32) = a3;
          *(v75 + 40) = a4;
          type metadata accessor for Localization();
          v76 = swift_getObjCClassFromMetadata();
          v77 = objc_opt_self();

          v33 = [v77 bundleForClass:v76];
          v122._countAndFlagsBits = 0x800000000005B7F0;
          v34._countAndFlagsBits = 0xD000000000000036;
          goto LABEL_32;
        }

        v104 = 0x800000000005B7A0;
        type metadata accessor for Localization();
        v119 = swift_getObjCClassFromMetadata();
        v106 = [objc_opt_self() bundleForClass:v119];
        v122._countAndFlagsBits = 0x800000000005B7A0;
        v107._countAndFlagsBits = 0xD00000000000002FLL;
        goto LABEL_49;
      }

      if (a4)
      {
        v28 = 0x800000000005B860;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_58AF0;
        *(v39 + 56) = &type metadata for String;
        v40 = sub_B088();
        *(v39 + 32) = a6;
        *(v39 + 40) = a7;
        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v40;
        *(v39 + 64) = v40;
        *(v39 + 72) = a3;
        *(v39 + 80) = a4;
        *(v39 + 136) = &type metadata for String;
        *(v39 + 144) = v40;
        *(v39 + 112) = a6;
        *(v39 + 120) = a7;
        type metadata accessor for Localization();
        v41 = swift_getObjCClassFromMetadata();
        v42 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v33 = [v42 bundleForClass:v41];
        v122._countAndFlagsBits = 0x800000000005B860;
        v34._countAndFlagsBits = 0xD00000000000002DLL;
        goto LABEL_32;
      }

      v108 = 0x800000000005B830;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_58B00;
      *(v113 + 56) = &type metadata for String;
      v114 = sub_B088();
      *(v113 + 32) = a6;
      *(v113 + 40) = a7;
      *(v113 + 96) = &type metadata for String;
      *(v113 + 104) = v114;
      *(v113 + 64) = v114;
      *(v113 + 72) = a6;
      *(v113 + 80) = a7;
      type metadata accessor for Localization();
      v115 = swift_getObjCClassFromMetadata();
      v116 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v67 = [v116 bundleForClass:v115];
      v68._countAndFlagsBits = 0xD000000000000026;
    }

    v122._countAndFlagsBits = v108;
    v68._object = v108;
    v69.value._countAndFlagsBits = a3;
    v69.value._object = 0;
    v70.super.isa = v67;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    goto LABEL_46;
  }

  if (a7)
  {
    if (a4)
    {
      v28 = 0x800000000005B940;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_58AF0;
      *(v29 + 56) = &type metadata for String;
      v30 = sub_B088();
      *(v29 + 32) = a6;
      *(v29 + 40) = a7;
      *(v29 + 96) = &type metadata for String;
      *(v29 + 104) = v30;
      *(v29 + 64) = v30;
      *(v29 + 72) = a3;
      *(v29 + 80) = a4;
      *(v29 + 136) = &type metadata for String;
      *(v29 + 144) = v30;
      *(v29 + 112) = a6;
      *(v29 + 120) = a7;
      type metadata accessor for Localization();
      v31 = swift_getObjCClassFromMetadata();
      v32 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v33 = [v32 bundleForClass:v31];
      v122._countAndFlagsBits = 0x800000000005B940;
      v34._countAndFlagsBits = 0xD000000000000032;
LABEL_32:
      v34._object = v28;
      v133.value._countAndFlagsBits = 0;
      v133.value._object = 0;
      v78.super.isa = v33;
      v138._countAndFlagsBits = 0;
      v138._object = 0xE000000000000000;
      sub_55EFC(v34, v133, v78, v138, v122);

      v48 = sub_5775C();
      v50 = v79;
      goto LABEL_33;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_58B00;
    *(v63 + 56) = &type metadata for String;
    v64 = sub_B088();
    *(v63 + 32) = a6;
    *(v63 + 40) = a7;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v64;
    *(v63 + 64) = v64;
    *(v63 + 72) = a6;
    *(v63 + 80) = a7;
    type metadata accessor for Localization();
    v65 = swift_getObjCClassFromMetadata();
    v66 = objc_opt_self();
    swift_bridgeObjectRetain_n();

    v67 = [v66 bundleForClass:v65];
    v122._countAndFlagsBits = 0x800000000005B910;
    v68._countAndFlagsBits = 0xD00000000000002BLL;
    v68._object = 0x800000000005B910;
    v69.value._countAndFlagsBits = a3;
    v69.value._object = 0;
    v70.super.isa = v67;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
LABEL_46:
    sub_55EFC(v68, v69, v70, v71, v122);

    v48 = sub_5775C();
    v50 = v117;

    goto LABEL_34;
  }

  if (a4)
  {
    v28 = 0x800000000005B8D0;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_58B10;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_B088();
    *(v51 + 32) = a3;
    *(v51 + 40) = a4;
    type metadata accessor for Localization();
    v52 = swift_getObjCClassFromMetadata();
    v53 = objc_opt_self();

    v33 = [v53 bundleForClass:v52];
    v122._countAndFlagsBits = 0x800000000005B8D0;
    v34._countAndFlagsBits = 0xD00000000000003BLL;
    goto LABEL_32;
  }

  v104 = 0x800000000005B890;
  type metadata accessor for Localization();
  v105 = swift_getObjCClassFromMetadata();
  v106 = [objc_opt_self() bundleForClass:v105];
  v122._countAndFlagsBits = 0x800000000005B890;
  v107._countAndFlagsBits = 0xD000000000000034;
LABEL_49:
  v107._object = v104;
  v136.value._countAndFlagsBits = a3;
  v136.value._object = 0;
  v120.super.isa = v106;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v48 = sub_55EFC(v107, v136, v120, v141, v122);
  v50 = v121;

  if ((v125 & 1) == 0)
  {
    return v48;
  }

LABEL_35:
  v126 = v48;
  v127 = v50;

  if (a7)
  {

    v128._countAndFlagsBits = 32;
    v128._object = 0xE100000000000000;
    sub_577DC(v128);

    v81 = v126;
    v80 = v127;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_58B10;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = sub_B088();
    *(v82 + 32) = a6;
    *(v82 + 40) = a7;
    type metadata accessor for Localization();
    v83 = swift_getObjCClassFromMetadata();
    v84 = objc_opt_self();

    v85 = [v84 bundleForClass:v83];
    v129._object = 0xEC0000006567616ELL;
    v123._countAndFlagsBits = 0xEC0000006567616ELL;
    v129._countAndFlagsBits = 0x614D6E6143756F59;
    v134.value._countAndFlagsBits = 0;
    v134.value._object = 0;
    v86.super.isa = v85;
    v139._countAndFlagsBits = 0;
    v139._object = 0xE000000000000000;
    sub_55EFC(v129, v134, v86, v139, v123);

    v87 = sub_5775C();
    v89 = v88;

    v126 = v81;
    v127 = v80;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
  }

  else
  {
    v130._countAndFlagsBits = 32;
    v130._object = 0xE100000000000000;
    sub_577DC(v130);

    v92 = v126;
    v91 = v127;
    type metadata accessor for Localization();
    v93 = swift_getObjCClassFromMetadata();
    v94 = [objc_opt_self() bundleForClass:v93];
    v131._countAndFlagsBits = 0xD000000000000015;
    v123._countAndFlagsBits = 0x800000000005B7D0;
    v131._object = 0x800000000005B7D0;
    v135.value._countAndFlagsBits = a6;
    v135.value._object = 0;
    v95.super.isa = v94;
    v140._countAndFlagsBits = 0;
    v140._object = 0xE000000000000000;
    v96 = sub_55EFC(v131, v135, v95, v140, v123);
    v98 = v97;

    v126 = v92;
    v127 = v91;

    v90._countAndFlagsBits = v96;
    v90._object = v98;
  }

  sub_577DC(v90);

  return v126;
}

uint64_t sub_98CC(uint64_t a1, void *a2)
{
  v4 = sub_561CC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_5773C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v8);
  v9 = sub_5771C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  if (a2)
  {
    sub_5770C();
    v14._countAndFlagsBits = 0x206F7420646441;
    v14._object = 0xE700000000000000;
    sub_576FC(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    sub_576EC(v15);
    v16._countAndFlagsBits = 0x6E6F4320739980E2;
    v16._object = 0xAD00007374636174;
    sub_576FC(v16);
    sub_5772C();
    sub_B038();
    if (!sub_5796C())
    {
      v11 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v12 = [objc_opt_self() mainBundle];
    }
  }

  sub_561BC();
  return sub_5779C();
}

uint64_t sub_9B44(uint64_t a1)
{
  v2 = sub_5748C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 == 1)
  {
    (*(v3 + 16))(v7, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v5);
    v9._countAndFlagsBits = sub_5745C();
    v17 = 0x9C80E220646441;
    v18 = 0xA700000000000000;
    if (!v9._object)
    {
      v11 = sub_5747C();
      v12 = sub_34EC();
      v14 = v13;

      v9._countAndFlagsBits = v12;
      v9._object = v14;
    }

    sub_577DC(v9);

    v21._countAndFlagsBits = 10322146;
    v21._object = 0xA300000000000000;
    sub_577DC(v21);
    v10 = v17;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v17 = 543450177;
    v18 = 0xE400000000000000;
    v16[1] = v8;
    v19._countAndFlagsBits = sub_57B7C();
    sub_577DC(v19);

    v20._countAndFlagsBits = 0x746361746E6F4320;
    v20._object = 0xE900000000000073;
    sub_577DC(v20);
    return v17;
  }

  return v10;
}

uint64_t sub_9D34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v185 = a4;
  v190 = a3;
  v10 = sub_561CC();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v201 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5773C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v200 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5771C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v199 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_5600C();
  v19 = *(v198 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v198);
  v197 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MessagesContext();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_2AFC(&qword_71798, &qword_58B40);
  v207 = *(v211 - 8);
  v26 = *(v207 + 64);
  __chkstk_darwin(v211);
  v192 = (&v181 - v27);
  v216 = sub_5732C();
  v28 = *(v216 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v216);
  v215 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2AFC(&qword_717A0, &qword_58B48);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v210 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v209 = &v181 - v35;
  v36 = sub_5748C();
  v194 = *(v36 - 8);
  v37 = *(v194 + 64);
  __chkstk_darwin(v36);
  v217 = &v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v182 = &v181 - v40;
  __chkstk_darwin(v41);
  v43 = &v181 - v42;
  v44 = sub_8130(a2);
  v184 = v45;
  v189 = a6;
  v188 = a5;
  v187 = a2;
  v186 = v25;
  v206 = v19;
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    v46 = &_swiftEmptySetSingleton;
    goto LABEL_3;
  }

  while (1)
  {
    v178 = v28;
    v179 = v44;
    if (sub_57B1C())
    {
      sub_8310(&_swiftEmptyArrayStorage);
      v46 = v180;
    }

    else
    {
      v46 = &_swiftEmptySetSingleton;
    }

    v44 = v179;
    v28 = v178;
LABEL_3:
    v183 = v44;
    v222 = v46;
    v191 = a1;
    v47 = sub_574AC();
    v48 = *(v47 + 16);
    if (v48)
    {
      v214 = v28;
      v49 = *(v194 + 16);
      v50 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v218 = v47;
      v51 = v47 + v50;
      v52 = *(v194 + 72);
      v53 = v36;
      v54 = (v194 + 8);
      do
      {
        v49(v43, v51, v53);
        v55 = sub_5747C();
        (*v54)(v43, v53);
        sub_6F34(v223, v55);

        v51 += v52;
        --v48;
      }

      while (v48);

      v46 = v222;
      v36 = v53;
      v28 = v214;
    }

    else
    {
    }

    v44 = sub_85DC(&_swiftEmptyArrayStorage);
    v212 = v44;
    if ((v46 & 0xC000000000000001) != 0)
    {
      sub_579FC();
      sub_5740C();
      sub_B758(&qword_717A8, &type metadata accessor for _CommunicationHandle);
      v44 = sub_578FC();
      v46 = v223[0];
      v56 = v223[1];
      v57 = v223[2];
      v58 = v223[3];
      a1 = v223[4];
    }

    else
    {
      v58 = 0;
      v59 = -1 << *(v46 + 32);
      v56 = (v46 + 56);
      v57 = ~v59;
      v60 = -v59;
      v61 = v60 < 64 ? ~(-1 << v60) : -1;
      a1 = v61 & *(v46 + 56);
    }

    v205 = v57;
    v62 = (v57 + 64) >> 6;
    v214 = (v28 + 8);
    v213 = xmmword_58B30;
    v218 = v56;
    v208 = v62;
    while (1)
    {
      v43 = v58;
      v63 = a1;
      if ((v46 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v67 = sub_57A2C();
        if (!v67)
        {
          goto LABEL_44;
        }

        v219 = v67;
        sub_5740C();
        swift_dynamicCast();
        v66 = v220;
        v58 = v43;
        v28 = v63;
        if (!v220)
        {
          goto LABEL_44;
        }

LABEL_24:
        v68 = v28;
        a1 = v46;
        v69 = v215;
        sub_572FC();
        sub_2AFC(&qword_717B8, &unk_58EF0);
        inited = swift_initStackObject();
        *(inited + 16) = v213;
        *(inited + 32) = v66;
        v28 = v66;
        sub_8310(inited);
        swift_setDeallocating();
        v71 = *(inited + 16);
        swift_arrayDestroy();
        v72 = sub_5731C();

        (*v214)(v69, v216);
        v73 = v72 >> 62 ? sub_57B1C() : *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
        v46 = a1;
        v56 = v218;
        if (v73)
        {
          break;
        }

        v43 = v58;
        v63 = v68;
        v62 = v208;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }
      }

      a1 = v68;
      if ((v72 & 0xC000000000000001) != 0)
      {
        v74 = sub_57AEC();
        v62 = v208;
      }

      else
      {
        v62 = v208;
        if (!*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          result = sub_57BAC();
          __break(1u);
          return result;
        }

        v74 = *(v72 + 32);
      }

      v203 = v28;
      v75 = sub_573FC();
      v77 = v76;
      v204 = v74;
      v78 = v212;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v220 = v78;
      v28 = v77;
      v80 = sub_6DE4(v75, v77);
      v82 = *(v78 + 16);
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(v82, v83);
      v85 = v82 + v83;
      if (v84)
      {
        goto LABEL_86;
      }

      v86 = v81;
      if (*(v78 + 24) >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = v80;
          sub_7674();
          v80 = v96;
        }
      }

      else
      {
        sub_73D0(v85, isUniquelyReferenced_nonNull_native);
        v80 = sub_6DE4(v75, v28);
        if ((v86 & 1) != (v87 & 1))
        {
          goto LABEL_88;
        }
      }

      v88 = v220;
      v212 = v220;
      if (v86)
      {
        v89 = *(v220 + 56);
        v90 = *(v89 + 8 * v80);
        v91 = v204;
        *(v89 + 8 * v80) = v204;

        v56 = v218;
      }

      else
      {
        *(v220 + 8 * (v80 >> 6) + 64) |= 1 << v80;
        v92 = (v88[6] + 16 * v80);
        *v92 = v75;
        v92[1] = v28;
        v93 = v204;
        *(v88[7] + 8 * v80) = v204;
        v94 = v88[2];
        v84 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v84)
        {
          goto LABEL_87;
        }

        v88[2] = v95;

        v56 = v218;
      }
    }

LABEL_16:
    v64 = v43;
    v65 = v63;
    v58 = v43;
    if (v63)
    {
      break;
    }

    while (1)
    {
      v58 = (v64 + 1);
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v58 >= v62)
      {
        goto LABEL_44;
      }

      v65 = *&v56[8 * v58];
      ++v64;
      if (v65)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_20:
  v28 = (v65 - 1) & v65;
  v66 = *(*(v46 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v65)))));
  if (v66)
  {
    goto LABEL_24;
  }

LABEL_44:
  sub_AF70();
  v44 = sub_574AC();
  v97 = v44;
  v98 = 0;
  v99 = *(v44 + 16);
  v193 = v194 + 16;
  v208 = (v207 + 56);
  v207 += 48;
  v202 = (v194 + 32);
  v196 = (v206 + 1);
  v195 = "supports-askto-v2";
  v206 = (v194 + 8);
  v218 = &_swiftEmptyArrayStorage;
  v205 = v36;
  v204 = v44;
  v203 = v99;
  while (1)
  {
    v100 = v211;
    v101 = v210;
    a1 = v209;
    if (v98 == v99)
    {
      v102 = 1;
      v103 = v99;
      v104 = v217;
    }

    else
    {
      if ((v98 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v104 = v217;
      if (v98 >= v97[2])
      {
        goto LABEL_80;
      }

      v103 = v98 + 1;
      v105 = v194;
      v106 = v97 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v98;
      v107 = *(v211 + 48);
      v108 = v192;
      *v192 = v98;
      (*(v105 + 16))(v108 + v107, v106, v36);
      sub_B0DC(v108, v101, &qword_71798, &qword_58B40);
      v102 = 0;
    }

    (*v208)(v101, v102, 1, v100);
    sub_B0DC(v101, a1, &qword_717A0, &qword_58B48);
    if ((*v207)(a1, 1, v100) == 1)
    {
      break;
    }

    v216 = v103;
    v109 = *a1;
    (*v202)(v104, a1 + *(v100 + 48), v36);
    v110 = sub_5747C();
    v111 = sub_573FC();
    v113 = v112;

    v114 = v212;
    if (*(v212 + 16))
    {
      v115 = sub_6DE4(v111, v113);
      v117 = v116;

      if (v117)
      {
        v118 = *(*(v114 + 56) + 8 * v115);
        v119 = v118;
        goto LABEL_56;
      }
    }

    else
    {
    }

    v118 = 0;
LABEL_56:
    v120 = sub_5741C();
    if (v120)
    {
      v121 = v120;
      v215 = [objc_allocWithZone(UIImage) initWithCGImage:v120];

      v122 = 1;
      goto LABEL_58;
    }

    v131 = sub_5745C();
    if (!v132)
    {
      v215 = 0;
      v122 = 2;
LABEL_58:
      LODWORD(v213) = v122;
      v214 = 0;
      if (!v118)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v215 = v131;
    LODWORD(v213) = 0;
    v214 = v132;
    if (!v118)
    {
LABEL_64:
      v129 = 0;
      v43 = 0xE000000000000000;
      goto LABEL_65;
    }

LABEL_59:
    v123 = v118;
    v124 = v197;
    sub_25D9C();

    v125 = sub_55FEC();
    v127 = v126;
    (*v196)(v124, v198);
    sub_5770C();
    v224._object = (v195 | 0x8000000000000000);
    v224._countAndFlagsBits = 0x1000000000000017;
    sub_576FC(v224);
    v225._countAndFlagsBits = v125;
    v225._object = v127;
    sub_576EC(v225);

    v226._countAndFlagsBits = 10322146;
    v226._object = 0xA300000000000000;
    sub_576FC(v226);
    sub_5772C();
    sub_B038();
    if (!sub_5796C())
    {
      v128 = [objc_opt_self() mainBundle];
    }

    sub_561BC();
    v129 = sub_5779C();
    v43 = v130;
LABEL_65:
    v133._countAndFlagsBits = sub_5745C();
    if (v133._object)
    {
      v220 = 10256610;
      v221 = 0xA300000000000000;
      sub_577DC(v133);

      v227._countAndFlagsBits = 10322146;
      v227._object = 0xA300000000000000;
      sub_577DC(v227);
      v134 = v220;
      v135 = v221;
    }

    else
    {
      v134 = 0;
      v135 = 0xE000000000000000;
    }

    v136 = sub_5747C();
    v137 = sub_34EC();
    v139 = v138;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_6990(0, *(v218 + 2) + 1, 1, v218);
    }

    v28 = *(v218 + 2);
    v140 = *(v218 + 3);
    if (v28 >= v140 >> 1)
    {
      v218 = sub_6990((v140 > 1), v28 + 1, 1, v218);
    }

    v36 = v205;
    v44 = (*v206)(v217, v205);
    v141 = v218;
    *(v218 + 2) = v28 + 1;
    v142 = &v141[80 * v28];
    *(v142 + 4) = v109;
    *(v142 + 5) = v134;
    *(v142 + 6) = v135;
    *(v142 + 7) = v137;
    *(v142 + 8) = v139;
    *(v142 + 9) = v129;
    v143 = v214;
    v144 = v215;
    *(v142 + 10) = v43;
    *(v142 + 11) = v144;
    *(v142 + 12) = v143;
    v142[104] = v213;
    v97 = v204;
    v99 = v203;
    v98 = v216;
  }

  v145 = sub_575FC();
  v147 = v146;
  v148 = v191;
  v149 = sub_574AC();
  if (*(v149 + 16) == 1)
  {
    v150 = v194;
    v151 = v182;
    (*(v194 + 16))(v182, v149 + ((*(v150 + 80) + 32) & ~*(v150 + 80)), v36);

    v152 = sub_5745C();
    v154 = v153;
    v155 = sub_5747C();
    v156 = v183;
    v157 = v184;
    v158 = sub_86E0(v152, v154, v145, v147, v155, v183, v184, v185 & 1);
    v160 = v159;

    v161 = v151;
    v148 = v191;
    (*(v150 + 8))(v161, v36);
  }

  else
  {
    v156 = v183;
    v157 = v184;
    v158 = sub_54E0(v145, v147, v149, v183, v184, v185 & 1);
    v160 = v162;
  }

  v163 = sub_98CC(v156, v157);
  v165 = v164;

  v166 = sub_574AC();
  v167 = sub_9B44(v166);
  v169 = v168;

  v170 = v187;
  v171 = v186;
  sub_AF78(v187, v186);
  v172 = type metadata accessor for ResponseTransmitter();
  v173 = *(v172 + 48);
  v174 = *(v172 + 52);
  swift_allocObject();
  v175 = sub_14F68(v171, v190);

  sub_AFDC(v170);

  type metadata accessor for CommLimitsReviewSheetViewModel();
  result = swift_allocObject();
  *(result + 104) = 0;
  *(result + 16) = v163;
  *(result + 24) = v165;
  *(result + 32) = v158;
  *(result + 40) = v160;
  *(result + 48) = v167;
  *(result + 56) = v169;
  *(result + 64) = v218;
  *(result + 72) = v175;
  v177 = v188;
  *(result + 80) = 0;
  *(result + 88) = v177;
  *(result + 96) = v189;
  return result;
}

uint64_t sub_AF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AFDC(uint64_t a1)
{
  v2 = type metadata accessor for MessagesContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_B038()
{
  result = qword_717B0;
  if (!qword_717B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_717B0);
  }

  return result;
}

unint64_t sub_B088()
{
  result = qword_717E8;
  if (!qword_717E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_717E8);
  }

  return result;
}

uint64_t sub_B0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_B144(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_B17C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_B1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_71860, &unk_58C00);
    v3 = sub_57B4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2E28(v4, &v13, qword_71868, &qword_59330);
      v5 = v13;
      v6 = v14;
      result = sub_6DE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_BD08(&v15, (v3[7] + 32 * result));
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

unint64_t sub_B310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_71840, &qword_58BE0);
    v3 = sub_57B4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2E28(v4, &v11, &qword_71848, &qword_58BE8);
      v5 = v11;
      result = sub_6E5C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_BD08(&v12, (v3[7] + 32 * result));
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

void *sub_B438(uint64_t a1)
{
  v2 = sub_574CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2AFC(&qword_71808, &qword_58B80);
    v10 = sub_57A9C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_B758(&qword_71810, &type metadata accessor for ATCommunicationMetadata.Action);
      v18 = sub_5769C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_B758(&qword_71818, &type metadata accessor for ATCommunicationMetadata.Action);
          v25 = sub_576CC();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_B758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B850()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B890()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_B8D8()
{
  result = qword_71830;
  if (!qword_71830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71830);
  }

  return result;
}

uint64_t sub_B920()
{
  v1 = (type metadata accessor for MessagesContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[9];
  v10 = sub_561AC();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[10] + 8);

  v12 = v1[11];
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_BA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BAB8(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagesContext() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BBC4;

  return sub_3D9C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_BBC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_BCC0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_BCD8(result, a2 & 1);
  }

  return result;
}

id sub_BCD8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_BCE4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_BCFC(a1, a2 & 1);
  }
}

void sub_BCFC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_OWORD *sub_BD08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_BD6C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_BDC4()
{
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  *(result + 24) = 0;
  return result;
}

void sub_BDF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a1;
  v5 = sub_56C4C();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(a2 + 16);
  v9 = *(*(v74 - 1) + 64);
  __chkstk_darwin(v7);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2AFC(qword_71950, qword_58E10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v66 - v13;
  v15 = sub_5606C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v66 - v21;
  v70 = *(v16 + 16);
  v71 = v16 + 16;
  v70(&v66 - v21, v3, v15);
  v72 = v22;
  sub_577AC();
  v23 = v3;
  sub_D770(v3 + *(a2 + 36), v14);
  v24 = *(v16 + 48);
  v73 = v15;
  v25 = v24(v14, 1, v15);
  v26 = 0;
  if (v25 != 1)
  {
    v27 = v72;
    v28 = v14;
    v29 = v73;
    (*(v16 + 32))(v72, v28, v73);
    v70(v20, v27, v29);
    sub_577AC();
    v26 = v30;
    (*(v16 + 8))(v27, v29);
  }

  v31 = *(v23 + *(a2 + 40));
  v32 = sub_5774C();

  if (v26)
  {
    v33 = sub_5774C();
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_allocWithZone(OBWelcomeController) initWithTitle:v32 detailText:v33 icon:v31];

  v35 = [v34 headerView];
  [v35 setAllowFullWidthIcon:1];

  v36 = *(a2 + 24);
  sub_56A9C();
  v37 = v23 + *(a2 + 48);
  v38 = *(v37 + 8);
  (*v37)();
  v39 = sub_56A7C();
  sub_56C2C();
  sub_56A5C();
  v40 = v34;
  v41 = v39;
  [v40 addChildViewController:v41];
  v42 = [v40 contentView];
  v43 = [v41 view];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = v43;
  [v42 addSubview:v43];

  v45 = [v41 view];
  if (v45)
  {
    v46 = [v40 contentView];
    sub_C58C(v46);

    v67 = v41;
    [v41 didMoveToParentViewController:v40];

    v47 = [v40 buttonTray];
    swift_getWitnessTable();
    v69 = sub_56C7C();
    sub_56C6C();
    v48 = *(v76 + 24);
    *(v76 + 24) = v47;
    v74 = v47;

    [v40 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
    v49 = *(v23 + *(a2 + 44));
    v68 = v40;
    if (v49 >> 62)
    {
      v50 = sub_57B1C();
      if (v50)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
      if (v50)
      {
LABEL_10:
        if (v50 >= 1)
        {
          v51 = 0;
          do
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v52 = sub_57AEC();
            }

            else
            {
              v52 = *(v49 + 8 * v51 + 32);
            }

            v53 = v52;
            v54 = v52[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] == 0;
            v55 = OBLinkTrayButton_ptr;
            if (!v52[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType])
            {
              v55 = OBBoldTrayButton_ptr;
            }

            v56 = *v55;
            if (v54)
            {
              v57 = &selRef_boldButton;
            }

            else
            {
              v57 = &selRef_linkButton;
            }

            v58 = [objc_opt_self() *v57];
            v59 = v58;
            if (*&v53[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor])
            {
              [v58 setTintColor:?];
            }

            v60 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v61 = &v53[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
            v62 = *&v53[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled + 8];
            *v61 = sub_D818;
            v61[1] = v60;
            v63 = v59;

            [v63 addTarget:v53 action:"tappedWithSender:" forControlEvents:64];
            v70(v72, &v53[OBJC_IVAR____TtC13AskToMessages6Choice_title], v73);
            sub_577AC();
            v64 = sub_5774C();

            [v63 setTitle:v64 forState:0];

            [v74 addButton:v63];
            sub_56C6C();
            v65 = v77;
            swift_beginAccess();
            sub_5782C();
            if (*(*(v65 + 16) + 16) >= *(*(v65 + 16) + 24) >> 1)
            {
              sub_5786C();
            }

            ++v51;
            sub_5787C();
            swift_endAccess();
          }

          while (v50 != v51);
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

LABEL_27:

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_C58C(void *a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_58C10;
  v5 = [v1 topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 leftAnchor];
  v9 = [a1 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 rightAnchor];
  v12 = [a1 rightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_D820(0, &qword_71A00, NSLayoutConstraint_ptr);
  isa = sub_5783C().super.isa;

  [v3 activateConstraints:isa];
}

void sub_C7F8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong setEnabled:v3];
  }
}

uint64_t sub_C86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_D734();
  *a2 = result;
  return result;
}

uint64_t sub_C8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_C9D0()
{
  swift_getWitnessTable();
  sub_56C0C();
  __break(1u);
}

uint64_t sub_CA10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1802398060;
  }

  else
  {
    v2 = 1684828002;
  }

  if (*a2)
  {
    v3 = 1802398060;
  }

  else
  {
    v3 = 1684828002;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_57B8C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_CA88()
{
  v1 = *v0;
  sub_57C2C();
  sub_577CC();

  return sub_57C4C();
}

uint64_t sub_CAF0()
{
  *v0;
  sub_577CC();
}

Swift::Int sub_CB3C()
{
  v1 = *v0;
  sub_57C2C();
  sub_577CC();

  return sub_57C4C();
}

uint64_t sub_CBA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_6E3B0;
  v8._object = v3;
  v5 = sub_57B6C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_CC00(uint64_t *a1@<X8>)
{
  v2 = 1684828002;
  if (*v1)
  {
    v2 = 1802398060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

id sub_CD44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Choice();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Choice()
{
  result = qword_71928;
  if (!qword_71928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CE9C()
{
  result = sub_5606C();
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

uint64_t getEnumTagSinglePayload for Choice.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Choice.ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D0D8()
{
  result = qword_71938;
  if (!qword_71938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71938);
  }

  return result;
}

uint64_t sub_D138@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC13AskToMessages6Choice_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

unint64_t sub_D154()
{
  result = qword_71940;
  if (!qword_71940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71940);
  }

  return result;
}

uint64_t sub_D1A8(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71948, &qword_58E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_D258()
{
  sub_5606C();
  if (v0 <= 0x3F)
  {
    sub_D658(319, &qword_719D8, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_D5F0();
      if (v2 <= 0x3F)
      {
        sub_D658(319, &qword_719F0, type metadata accessor for Choice, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_D6BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5606C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2AFC(qword_71950, qword_58E10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_D4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5606C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2AFC(qword_71950, qword_58E10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_D5F0()
{
  if (!qword_719E0)
  {
    sub_D820(255, &qword_719E8, UIImage_ptr);
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_719E0);
    }
  }
}

void sub_D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_D6BC()
{
  result = qword_719F8;
  if (!qword_719F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_719F8);
  }

  return result;
}

uint64_t sub_D734()
{
  type metadata accessor for WelcomeController.Coordinator();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_D770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(qword_71950, qword_58E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D7E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D820(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_D868(uint64_t a1)
{
  v2 = type metadata accessor for MessagesContext();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PayloadViewModel();
  sub_E9D8(a1 + *(v7 + 36), v6, type metadata accessor for MessagesContext);
  v8 = *(v3 + 44);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_EA90(v6, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong dismiss];
  }
}

uint64_t sub_D94C(uint64_t a1, unint64_t a2)
{
  v82 = a2;
  v3 = sub_2AFC(&qword_71A08, "0Z");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v75 - v8;
  v9 = type metadata accessor for MessagesContext();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v75 - v14);
  v78 = type metadata accessor for PayloadViewModel();
  v76 = *(v78 - 8);
  v16 = *(v76 + 64);
  __chkstk_darwin(v78);
  v77 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v75 - v18;
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  v22 = sub_56C4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContentModel();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E9D8(a1, v30, type metadata accessor for ContentModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = v26;
    sub_E5D4(v30, v21);
    if (v82 >= 2)
    {
      if (v82 != 2)
      {
        if (qword_715D0 != -1)
        {
          swift_once();
        }

        v60 = sub_562FC();
        sub_B144(v60, qword_757A0);
        v61 = sub_562DC();
        v62 = sub_5793C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_0, v61, v62, "Unsupported presentation style", v63, 2u);
        }

        sub_E638();
        v64 = swift_allocError();
        *v65 = 2;
        v83 = v64;
        v66 = objc_allocWithZone(sub_2AFC(&qword_71A20, &qword_58F30));
        swift_errorRetain();
        v36 = sub_56A8C();
        sub_2AFC(&qword_71A28, &qword_58F38);
        v67 = *(v23 + 72);
        v68 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_58B00;
        sub_56C3C();
        sub_56C2C();
        v83 = v69;
        sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions);
        sub_2AFC(&qword_71A38, &qword_58F40);
        sub_E68C();
        sub_579DC();
        sub_56A5C();
        sub_56A6C();

        v59 = v21;
        goto LABEL_18;
      }

      v40 = v81;
      sub_22820();
      sub_E6F0(v40, v6);
      v41 = objc_allocWithZone(sub_2AFC(&qword_71A48, &qword_58F48));
      v36 = sub_56A8C();
      sub_2AFC(&qword_71A28, &qword_58F38);
      v42 = *(v23 + 72);
      v43 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_58B00;
      sub_56C3C();
      sub_56C2C();
      v83 = v44;
      sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions);
      sub_2AFC(&qword_71A38, &qword_58F40);
      sub_E68C();
      sub_579DC();
      sub_56A5C();
      sub_56A6C();
      sub_2E90(v40, &qword_71A08, "0Z");
    }

    else
    {
      v31 = *(v21 + 3);
      v32 = sub_5763C();
      sub_5630C();

      v33 = sub_5636C();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v15, 1, v33) == 1)
      {
        sub_2E90(v15, &qword_71A10, &qword_5A5A0);
      }

      else
      {
        if ((*(v34 + 88))(v15, v33) == enum case for ATQuestion.TopicMetadata.communication(_:))
        {
          (*(v34 + 96))(v15, v33);
          v81 = *v15;
          v45 = v79;
          sub_E9D8(v21, v79, type metadata accessor for PayloadViewModel);
          v46 = v77;
          sub_E9D8(v21, v77, type metadata accessor for PayloadViewModel);
          v47 = (*(v76 + 80) + 16) & ~*(v76 + 80);
          v76 = swift_allocObject();
          sub_E5D4(v46, v76 + v47);
          v48 = v78;
          v49 = v80;
          sub_E9D8(v45 + *(v78 + 36), v80, type metadata accessor for MessagesContext);
          v50 = *(v45 + 24);
          v51 = *(v45 + *(v48 + 40));
          swift_getKeyPath();
          v83 = v51;
          sub_EA48(&qword_71A58, type metadata accessor for ManageContactsSetting);
          v82 = v21;
          v52 = v81;
          v81 = v52;
          v53 = v50;
          sub_561FC();

          v54 = sub_9D34(v52, v49, v53, *(v51 + 24), sub_E978, v76);
          sub_EA90(v45, type metadata accessor for PayloadViewModel);
          v83 = v54;
          v84 = 0;
          v55 = objc_allocWithZone(sub_2AFC(&qword_71A60, &unk_58F80));

          v36 = sub_56A8C();
          sub_2AFC(&qword_71A28, &qword_58F38);
          v56 = *(v23 + 72);
          v57 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_58B00;
          sub_56C3C();
          sub_56C2C();
          v83 = v58;
          sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions);
          sub_2AFC(&qword_71A38, &qword_58F40);
          sub_E68C();
          sub_579DC();
          sub_56A5C();
          sub_56A6C();

          v59 = v82;
LABEL_18:
          sub_EA90(v59, type metadata accessor for PayloadViewModel);
          return v36;
        }

        (*(v34 + 8))(v15, v33);
      }

      v70 = objc_allocWithZone(sub_2AFC(&qword_71A50, &qword_58F50));
      v36 = sub_56A8C();
      sub_2AFC(&qword_71A28, &qword_58F38);
      v71 = *(v23 + 72);
      v72 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_58B00;
      sub_56C3C();
      sub_56C2C();
      v83 = v73;
      sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions);
      sub_2AFC(&qword_71A38, &qword_58F40);
      sub_E68C();
      sub_579DC();
      sub_56A5C();
      sub_56A6C();
    }

    v59 = v21;
    goto LABEL_18;
  }

  v83 = *v30;
  v35 = objc_allocWithZone(sub_2AFC(&qword_71A20, &qword_58F30));
  swift_errorRetain();
  v36 = sub_56A8C();
  sub_2AFC(&qword_71A28, &qword_58F38);
  v37 = *(v23 + 72);
  v38 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_58B00;
  sub_56C3C();
  sub_56C2C();
  v83 = v39;
  sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_2AFC(&qword_71A38, &qword_58F40);
  sub_E68C();
  sub_579DC();
  sub_56A5C();
  sub_56A6C();

  return v36;
}

uint64_t sub_E5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E638()
{
  result = qword_71A18;
  if (!qword_71A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A18);
  }

  return result;
}

unint64_t sub_E68C()
{
  result = qword_71A40;
  if (!qword_71A40)
  {
    sub_2C70(&qword_71A38, &qword_58F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A40);
  }

  return result;
}

uint64_t sub_E6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_71A08, "0Z");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E760()
{
  v1 = type metadata accessor for PayloadViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = *(v0 + v3 + 16);

  v6 = v1[7];
  v7 = sub_5756C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v1[8];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v4 + v1[9];
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  v14 = type metadata accessor for MessagesContext();
  v15 = v14[7];
  v16 = sub_561AC();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  v17 = *(v11 + v14[8] + 8);

  v18 = v14[9];
  swift_unknownObjectWeakDestroy();
  v19 = *(v4 + v1[10]);

  return _swift_deallocObject(v0, v3 + v21, v2 | 7);
}

void sub_E978()
{
  v1 = *(type metadata accessor for PayloadViewModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_D868(v2);
}

uint64_t sub_E9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_EA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_EB20(void (*a1)(uint64_t *, char *, void))
{
  v104 = a1;
  v103 = sub_560CC();
  v101 = *(v103 - 8);
  v1 = *(v101 + 64);
  __chkstk_darwin(v103);
  v96 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v99 = &v91 - v4;
  v5 = sub_5613C();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  __chkstk_darwin(v5);
  v94 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v95 = &v91 - v9;
  v10 = sub_2AFC(&qword_71B18, &qword_59008);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  __chkstk_darwin(v17);
  v19 = &v91 - v18;
  v20 = sub_5759C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5758C();
  sub_5765C();
  sub_1308C(&qword_71B20, &type metadata accessor for ATPayload);
  sub_1308C(&qword_71B28, &type metadata accessor for ATPayload);
  v25 = v102;
  sub_5757C();
  if (v25)
  {
    (*(v21 + 8))(v24, v20);
    if (qword_715B0 != -1)
    {
      swift_once();
    }

    v26 = sub_562FC();
    v27 = sub_B144(v26, qword_75740);
    v28 = v101;
    v29 = *(v101 + 16);
    v30 = v99;
    v31 = v103;
    v32 = v104;
    v95 = (v101 + 16);
    v98 = v29;
    v29(v99, v104, v103);
    swift_errorRetain();
    v97 = v27;
    v33 = sub_562DC();
    v34 = sub_5794C();

    v35 = os_log_type_enabled(v33, v34);
    v102 = v25;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = v31;
      v38 = v30;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v105 = v94;
      *v36 = 136315394;
      v39 = sub_5608C();
      v41 = v40;
      v99 = *(v28 + 8);
      (v99)(v38, v37);
      v42 = sub_293C0(v39, v41, &v105);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      v44 = v93;
      *v93 = v43;
      _os_log_impl(&dword_0, v33, v34, "Failed to parse an ATPayload from the MSMessage. Trying to parse MessageDetails instead. url: %s %@", v36, 0x16u);
      sub_2E90(v44, &qword_71828, &qword_598B0);

      sub_13040(v94);
      v32 = v104;
    }

    else
    {

      v99 = *(v28 + 8);
      (v99)(v30, v31);
    }

    v51 = sub_565CC();
    v52 = *(v51 - 8);
    v53 = *(v52 + 64);
    __chkstk_darwin(v51);
    v55 = &v91 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = sub_2AFC(&qword_71B30, &qword_59010);
    v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v56 - 8);
    v59 = &v91 - v58;
    sub_FE6C(v32, &v91 - v58);
    if ((*(v52 + 48))(v59, 1, v51) == 1)
    {
      sub_2E90(v59, &qword_71B30, &qword_59010);
      v60 = v96;
      v46 = v103;
      v98(v96, v32, v103);
      v61 = sub_562DC();
      v62 = sub_5792C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v105 = v64;
        *v63 = 136315138;
        v65 = sub_5608C();
        v67 = v66;
        (v99)(v60, v103);
        v68 = sub_293C0(v65, v67, &v105);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_0, v61, v62, "Failed to parse an ATPayload or MessageDetails from the MSMessage. url: %s", v63, 0xCu);
        sub_13040(v64);

        v46 = v103;
      }

      else
      {

        (v99)(v60, v46);
      }

      type metadata accessor for MessageParser.Error();
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
      swift_allocError();
      v98(v72, v32, v46);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      (*(v52 + 32))(v55, v59, v51);
      v69 = sub_562DC();
      v70 = sub_5794C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "Successfully parsed MessageDetails from MSMessage", v71, 2u);
      }

      v46 = sub_11224(v55);
      (*(v52 + 8))(v55, v51);
    }
  }

  else
  {
    v45 = v16;
    v99 = v24;
    v96 = v13;
    v101 = v21;
    v103 = v20;
    v46 = v105;
    v47 = sub_5763C();

    sub_5639C();
    v48 = v98;
    v49 = v97;
    v50 = *(v97 + 48);
    if (v50(v19, 1, v98) == 1)
    {
      v93 = v46;
      sub_2E90(v19, &qword_71B18, &qword_59008);
      sub_F84C(v45);
      if (v50(v45, 1, v48) == 1)
      {
        (*(v101 + 8))(v99, v103);
        sub_2E90(v45, &qword_71B18, &qword_59008);
        return v93;
      }

      else
      {
        v73 = v49;
        v74 = *(v49 + 32);
        v75 = v95;
        v74(v95, v45, v48);
        if (qword_715B0 != -1)
        {
          swift_once();
        }

        v76 = sub_562FC();
        sub_B144(v76, qword_75740);
        v77 = v94;
        v104 = *(v73 + 16);
        v104(v94, v75, v48);
        v78 = v73;
        v79 = sub_562DC();
        v80 = sub_5794C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v105 = v92;
          *v81 = 136315138;
          sub_1308C(&qword_71B40, &type metadata accessor for Date);
          v82 = sub_57B7C();
          v102 = 0;
          v84 = v83;
          v100 = *(v78 + 8);
          v100(v77, v48);
          v85 = sub_293C0(v82, v84, &v105);

          *(v81 + 4) = v85;
          _os_log_impl(&dword_0, v79, v80, "Using legacy payload expiration date: %s", v81, 0xCu);
          sub_13040(v92);
        }

        else
        {

          v100 = *(v78 + 8);
          v100(v77, v48);
        }

        v86 = v93;
        v87 = sub_5763C();
        v88 = v95;
        v89 = v96;
        v104(v96, v95, v48);
        (*(v78 + 56))(v89, 0, 1, v48);
        sub_563AC();

        v100(v88, v48);
        v46 = v86;
        (*(v101 + 8))(v99, v103);
      }
    }

    else
    {
      (*(v101 + 8))(v99, v103);
      sub_2E90(v19, &qword_71B18, &qword_59008);
    }
  }

  return v46;
}

uint64_t sub_F84C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2AFC(&qword_71B18, &qword_59008);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v54 = sub_55DFC();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_71B08, &qword_58FF8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v53 = &v47 - v12;
  v13 = sub_2AFC(&qword_71B10, &qword_59000);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_5613C();
  v21 = *(v20 - 8);
  v51 = *(v21 + 56);
  v52 = v20;
  v50 = v21 + 56;
  v51(a1, 1, 1);
  sub_55E4C();
  sub_2E28(v19, v16, &qword_71B10, &qword_59000);
  v22 = sub_55E9C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v16, 1, v22) == 1)
  {
    v24 = &qword_71B10;
    v25 = &qword_59000;
    v26 = v16;
LABEL_17:
    sub_2E90(v26, v24, v25);
    goto LABEL_18;
  }

  v47 = v5;
  v27 = sub_55E2C();
  (*(v23 + 8))(v16, v22);
  if (!v27)
  {
    goto LABEL_18;
  }

  v48 = a1;
  v49 = v19;
  v19 = *(v27 + 16);
  v28 = v54;
  if (v19)
  {
    v29 = 0;
    while (v29 < *(v27 + 16))
    {
      (*(v6 + 16))(v9, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v28);
      if (sub_55DDC() == 0x73657269707865 && v30 == 0xE700000000000000)
      {

LABEL_14:

        v34 = v53;
        (*(v6 + 32))(v53, v9, v28);
        v32 = 0;
        v33 = v48;
        v19 = v49;
        goto LABEL_15;
      }

      v31 = sub_57B8C();

      if (v31)
      {
        v28 = v54;
        goto LABEL_14;
      }

      ++v29;
      v28 = v54;
      (*(v6 + 8))(v9, v54);
      if (v19 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_11:

  v32 = 1;
  v33 = v48;
  v19 = v49;
  v34 = v53;
LABEL_15:
  (*(v6 + 56))(v34, v32, 1, v28);
  if ((*(v6 + 48))(v34, 1, v28) == 1)
  {
    v24 = &qword_71B08;
    v25 = &qword_58FF8;
    v26 = v34;
    goto LABEL_17;
  }

  v40 = sub_55DEC();
  v41 = v28;
  v42 = v40;
  v44 = v43;
  (*(v6 + 8))(v34, v41);
  if (v44)
  {
    v55 = 0;
    v45 = sub_1112C(v42, v44);

    if (v45)
    {
      v46 = v47;
      sub_5610C();
      sub_2E90(v19, &qword_71B10, &qword_59000);
      sub_2E90(v33, &qword_71B18, &qword_59008);
      (v51)(v46, 0, 1, v52);
      return sub_B0DC(v46, v33, &qword_71B18, &qword_59008);
    }
  }

LABEL_18:
  if (qword_715A8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v35 = sub_562FC();
  sub_B144(v35, qword_75728);
  v36 = sub_562DC();
  v37 = sub_5792C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Failed to get expiration date from URL", v38, 2u);
  }

  return sub_2E90(v19, &qword_71B10, &qword_59000);
}

uint64_t sub_FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_560CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2AFC(&qword_71B10, &qword_59000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_55E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55E4C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2E90(v12, &qword_71B10, &qword_59000);
    if (qword_715B0 != -1)
    {
      swift_once();
    }

    v18 = sub_562FC();
    sub_B144(v18, qword_75740);
    (*(v5 + 16))(v8, a1, v4);
    v19 = sub_562DC();
    v20 = sub_5792C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = a2;
      v23 = swift_slowAlloc();
      v39 = v23;
      *v21 = 136315138;
      v24 = sub_5608C();
      v26 = v25;
      (*(v5 + 8))(v8, v4);
      v27 = sub_293C0(v24, v26, &v39);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_0, v19, v20, "Couldn't parse MessageDetails because the URLComponents derived from %s were nil.", v21, 0xCu);
      sub_13040(v23);
      a2 = v22;
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v35 = sub_565CC();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v28 = sub_2AFC(&qword_71B30, &qword_59010);
    v29 = *(*(v28 - 8) + 64);
    __chkstk_darwin(v28 - 8);
    v31 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v32);
    v34 = &v38 - v33;
    sub_5656C();
    (*(v14 + 8))(v17, v13);
    v36 = sub_565CC();
    (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
    sub_B0DC(v34, v31, &qword_71B30, &qword_59010);
    return sub_B0DC(v31, a2, &qword_71B30, &qword_59010);
  }
}

uint64_t sub_104E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v77 = a2;
  v78 = a1;
  v5 = sub_5756C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v73 - v10;
  __chkstk_darwin(v11);
  v74 = &v73 - v12;
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v19 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = (&v73 - v21);
  v23 = sub_2AFC(&qword_71B00, &unk_593C0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v82 = &v73 - v25;
  v26 = sub_572EC();
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  __chkstk_darwin(v26);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v33 = objc_opt_self();
  v34 = [v33 currentTraitCollection];
  [v34 displayScale];

  sub_572CC();
  v81 = a4;
  v35 = sub_5763C();
  sub_5630C();

  v36 = sub_5636C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v22, 1, v36) != 1)
  {
    if ((*(v37 + 88))(v22, v36) != enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      (*(v37 + 8))(v22, v36);
      goto LABEL_8;
    }

    (*(v37 + 96))(v22, v36);
    v76 = *v22;
    v38 = *(v6 + 56);
    v38(v82, 1, 1, v5);
    v39 = sub_5763C();
    v40 = sub_5643C();

    v41 = sub_5640C();
    v43 = v42;

    if (v41 == 0xD00000000000002DLL && 0x800000000005BFB0 == v43)
    {

      v44 = v82;
    }

    else
    {
      v63 = sub_57B8C();

      v44 = v82;
      if ((v63 & 1) == 0)
      {
LABEL_25:
        sub_5729C();
LABEL_27:
        v68 = sub_5755C();

        (*(v79 + 8))(v32, v80);
        if (v68)
        {
          (*(v6 + 8))(v18, v5);
          v69 = v77;
          v70 = 1;
        }

        else
        {
          v71 = v77;
          (*(v6 + 32))(v77, v18, v5);
          v69 = v71;
          v70 = 0;
        }

        v38(v69, v70, 1, v5);
        return sub_B0DC(v44, v78, &qword_71B00, &unk_593C0);
      }
    }

    v64 = sub_5762C();
    if (v65)
    {
      if (v64 == 0xD000000000000013 && v65 == 0x800000000005BFE0)
      {

        goto LABEL_25;
      }

      v67 = sub_57B8C();

      if (v67)
      {
        goto LABEL_25;
      }
    }

    sub_5728C();
    goto LABEL_27;
  }

  sub_2E90(v22, &qword_71A10, &qword_5A5A0);
LABEL_8:
  sub_5726C();
  v45 = sub_5755C();
  v44 = v82;
  if (v45)
  {
    v46 = sub_125BC();
    if (v47 >> 60 == 15)
    {
LABEL_12:
      sub_5728C();
      (*(v6 + 8))(v15, v5);
      (*(v79 + 8))(v32, v80);
      v55 = *(v6 + 56);
      v55(v44, 0, 1, v5);
      v55(v77, 1, 1, v5);
      return sub_B0DC(v44, v78, &qword_71B00, &unk_593C0);
    }

    v48 = v46;
    v49 = v33;
    v50 = v47;
    v51 = [v49 currentTraitCollection];
    [v51 displayScale];

    sub_572CC();
    v52 = v73;
    sub_572BC();
    sub_12F8C(v48, v50);
    (*(v79 + 8))(v29, v80);
    v53 = *(v6 + 32);
    v54 = v74;
    v53(v74, v52, v5);
    if (sub_5755C())
    {
      (*(v6 + 8))(v54, v5);
      v44 = v82;
      goto LABEL_12;
    }

    v66 = v82;
    v53(v82, v54, v5);
    v44 = v66;
  }

  else
  {
    (*(v6 + 16))(v82, v15, v5);
  }

  v56 = v76;
  v57 = *(v6 + 56);
  v57(v44, 0, 1, v5);
  sub_5728C();
  v58 = sub_5755C();
  v59 = *(v6 + 8);
  v59(v15, v5);
  (*(v79 + 8))(v32, v80);
  if (v58)
  {
    v59(v56, v5);
    v60 = v77;
    v61 = 1;
  }

  else
  {
    v62 = v77;
    (*(v6 + 32))(v77, v56, v5);
    v60 = v62;
    v61 = 0;
  }

  v57(v60, v61, 1, v5);
  v44 = v82;
  return sub_B0DC(v44, v78, &qword_71B00, &unk_593C0);
}

uint64_t sub_10D94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_57B1C();
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

  v15 = sub_57B1C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10E84(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10FAC(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
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

uint64_t sub_10E84(uint64_t a1)
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
    sub_57B1C();
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
  result = sub_57AFC();
  *v1 = result;
  return result;
}

void (*sub_10F24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_57AEC();
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
    return sub_10FA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10FAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_57B1C();
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
      result = sub_57B1C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_131A0();
          for (i = 0; i != v6; ++i)
          {
            sub_2AFC(&qword_71B60, &qword_59020);
            v9 = sub_10F24(v13, i, a3);
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
        sub_564FC();
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

BOOL sub_1112C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_57ABC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

char *sub_11224(char *a1)
{
  v156 = a1;
  v1 = sub_2AFC(&qword_71B48, &qword_5A780);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v138 - v3;
  v5 = sub_561AC();
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = *(v153 + 8);
  __chkstk_darwin(v5);
  v150 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v152 = &v138 - v9;
  if (qword_715B0 != -1)
  {
    swift_once();
  }

  v151 = v4;
  v10 = sub_562FC();
  v155 = sub_B144(v10, qword_75740);
  v11 = sub_562DC();
  v12 = sub_5794C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Trying to derive ATPayload from MessageDetails", v13, 2u);
  }

  v14 = sub_5655C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  __chkstk_darwin(v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v138 - v17;
  v19 = sub_2AFC(&qword_71B50, &qword_59018);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19 - 8);
  v22 = &v138 - v21;
  sub_5657C();
  if ((*(v15 + 6))(v22, 1, v14) == 1)
  {
    sub_2E90(v22, &qword_71B50, &qword_59018);
LABEL_9:
    v29 = sub_562DC();
    v30 = sub_5792C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "MessageDetails.eventSource was unknown", v31, 2u);
    }

    type metadata accessor for MessageParser.Error();
    sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v15;
  }

  v149 = &v138;
  v23 = (*(v15 + 4))(&v138 - v17, v22, v14);
  v148 = v16;
  v24 = __chkstk_darwin(v23);
  v25 = &v138 - v17;
  v26 = enum case for MessageDetails.EventSource.unknown(_:);
  (*(v15 + 13))(v25, enum case for MessageDetails.EventSource.unknown(_:), v14, v24);
  sub_13154();
  v27 = sub_576CC();
  v28 = *(v15 + 1);
  v28(v25, v14);
  if (v27)
  {
    v28(v18, v14);
    goto LABEL_9;
  }

  v144 = v28;
  v145 = v15 + 8;
  v146 = v14;
  v147 = v18;
  v33 = sub_565BC();
  v35 = v34;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = __chkstk_darwin(v36);
    v40 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v15 + 16;
    v42 = *(v15 + 2);
    v44 = v146;
    v43 = v147;
    v42(v40, v147, v146, v38);
    v45 = (*(v15 + 11))(v40, v44);
    if (&enum case for MessageDetails.EventSource.unknown(_:) && v45 == v26 || &enum case for MessageDetails.EventSource.askToBuy(_:) && v45 == enum case for MessageDetails.EventSource.askToBuy(_:))
    {
      v46 = __chkstk_darwin(v45);
      v48 = &v138 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v156 = v41;
      v154 = v42;
      v42(v48, v43, v44, v46);
      v49 = sub_562DC();
      v50 = sub_5792C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v155 = &v138;
        v52 = v51;
        v53 = v44;
        v54 = swift_slowAlloc();
        v157 = v54;
        *v52 = 136315138;
        v55 = sub_5654C();
        v57 = v56;
        v58 = v48;
        v59 = v144;
        v15 = v145;
        v144(v58, v53);
        v60 = sub_293C0(v55, v57, &v157);

        *(v52 + 4) = v60;
        _os_log_impl(&dword_0, v49, v50, "MessageDetails.eventSource was unsupported %s", v52, 0xCu);
        sub_13040(v54);

        v61 = v59;
      }

      else
      {

        v69 = v48;
        v61 = v144;
        v15 = v145;
        v144(v69, v44);
        v53 = v44;
      }

      type metadata accessor for MessageParser.Error();
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
      swift_allocError();
      v70 = v147;
      v154(v71, v147, v53);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v61(v70, v53);
    }

    else if (&enum case for MessageDetails.EventSource.screenTime(_:) && v45 == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v65 = objc_allocWithZone(sub_5641C());
      v15 = sub_563FC();
      sub_565BC();
      v66 = v151;
      sub_5614C();

      v68 = v153;
      v67 = v154;
      if ((*(v153 + 6))(v66, 1, v154) == 1)
      {
        sub_2E90(v66, &qword_71B48, &qword_5A780);
        type metadata accessor for MessageParser.Error();
        sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v144(v147, v146);
      }

      else
      {
        v143 = &v138;
        v91 = v152;
        (*(v68 + 4))(v152, v66, v67);
        sub_5647C();
        (*(v68 + 2))(v150, v91, v67);
        type metadata accessor for Localization();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v151 = ObjCClassFromMetadata;
        v93 = objc_opt_self();
        v94 = v15;
        v95 = [v93 bundleForClass:ObjCClassFromMetadata];
        v158._countAndFlagsBits = 0xD000000000000011;
        v133._countAndFlagsBits = 0x800000000005C050;
        v158._object = 0x800000000005C050;
        v163.value._countAndFlagsBits = 0;
        v163.value._object = 0;
        v96.super.isa = v95;
        v168._countAndFlagsBits = 0;
        v168._object = 0xE000000000000000;
        sub_55EFC(v158, v163, v96, v168, v133);

        sub_5658C();
        v142 = v94;
        v97 = sub_563CC();
        v140 = sub_2AFC(&qword_717B8, &unk_58EF0);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_58FD0;
        v157 = 1;
        v150 = v97;
        sub_57B7C();
        v139 = v99;
        v100 = v93;
        v101 = v93;
        v148 = v93;
        v102 = v151;
        v103 = [v100 bundleForClass:v151];
        v159._countAndFlagsBits = 0xD000000000000019;
        v134._countAndFlagsBits = 0x800000000005C070;
        v159._object = 0x800000000005C070;
        v164.value._countAndFlagsBits = 0;
        v164.value._object = 0;
        v104.super.isa = v103;
        v169._countAndFlagsBits = 0;
        v169._object = 0xE000000000000000;
        v141 = 0xD000000000000019;
        sub_55EFC(v159, v164, v104, v169, v134);

        v105 = sub_564FC();
        v106 = objc_allocWithZone(v105);
        *(v98 + 32) = sub_5649C();
        v157 = 2;
        sub_57B7C();
        v139 = v107;
        v108 = [v101 bundleForClass:v102];
        v135._countAndFlagsBits = 0x800000000005C090;
        v160._countAndFlagsBits = 0xD00000000000001BLL;
        v160._object = 0x800000000005C090;
        v165.value._countAndFlagsBits = 0;
        v165.value._object = 0;
        v109.super.isa = v108;
        v170._countAndFlagsBits = 0;
        v170._object = 0xE000000000000000;
        sub_55EFC(v160, v165, v109, v170, v135);

        v110 = objc_allocWithZone(v105);
        *(v98 + 40) = sub_5649C();
        v157 = 3;
        sub_57B7C();
        v111 = [v148 bundleForClass:v102];
        v161._countAndFlagsBits = 0xD00000000000001ALL;
        v136._countAndFlagsBits = 0x800000000005C0B0;
        v161._object = 0x800000000005C0B0;
        v166.value._countAndFlagsBits = 0;
        v166.value._object = 0;
        v112.super.isa = v111;
        v171._countAndFlagsBits = 0;
        v171._object = 0xE000000000000000;
        sub_55EFC(v161, v166, v112, v171, v136);

        v113 = objc_allocWithZone(v105);
        *(v98 + 48) = sub_5649C();
        v114 = *(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8));
        if (v114)
        {
          for (i = 0; i != v114; ++i)
          {
            if ((v98 & 0xC000000000000001) != 0)
            {
              v116 = sub_57AEC();
            }

            else
            {
              v116 = *(v98 + 8 * i + 32);
            }

            v117 = v116;
            sub_564DC();
          }
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_58B30;
        v157 = 0;
        sub_57B7C();
        v119 = [v148 bundleForClass:v151];
        v137._countAndFlagsBits = 0x800000000005C0D0;
        v162._countAndFlagsBits = 0xD00000000000001BLL;
        v162._object = 0x800000000005C0D0;
        v167.value._countAndFlagsBits = 0;
        v167.value._object = 0;
        v120.super.isa = v119;
        v172._countAndFlagsBits = 0;
        v172._object = 0xE000000000000000;
        sub_55EFC(v162, v167, v120, v172, v137);

        v121 = objc_allocWithZone(v105);
        *(inited + 32) = sub_5649C();
        v122 = *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8));
        v123 = v150;
        v124 = v154;
        if (v122)
        {
          for (j = 0; j != v122; ++j)
          {
            if ((inited & 0xC000000000000001) != 0)
            {
              v126 = sub_57AEC();
            }

            else
            {
              v126 = *(inited + 8 * j + 32);
            }

            v127 = v126;
            sub_564DC();
          }
        }

        v157 = v98;
        sub_10D94(inited);
        sub_5638C();
        sub_5659C();
        sub_563DC();

        (*(v153 + 1))(v152, v124);
        sub_5765C();
        sub_565AC();
        sub_5650C();
        v15 = sub_575CC();
        v128 = sub_562DC();
        v129 = sub_5794C();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *v130 = 138412290;
          *(v130 + 4) = v15;
          *v131 = v15;
          v132 = v15;
          _os_log_impl(&dword_0, v128, v129, "Got payload from MessageDetails: %@", v130, 0xCu);
          sub_2E90(v131, &qword_71828, &qword_598B0);
        }

        v144(v147, v146);
      }
    }

    else
    {
      v153 = v40;
      v143 = &v138;
      v72 = __chkstk_darwin(v45);
      v74 = &v138 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      v156 = v41;
      v154 = v42;
      v42(v74, v43, v44, v72);
      v75 = sub_562DC();
      v76 = sub_5792C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v155 = &v138;
        v78 = v77;
        v79 = v44;
        v80 = swift_slowAlloc();
        v157 = v80;
        *v78 = 136315138;
        v81 = sub_5654C();
        v83 = v82;
        v84 = v74;
        v85 = v144;
        v15 = v145;
        v144(v84, v79);
        v86 = sub_293C0(v81, v83, &v157);

        *(v78 + 4) = v86;
        _os_log_impl(&dword_0, v75, v76, "MessageDetails.eventSource was unsupported %s", v78, 0xCu);
        sub_13040(v80);

        v87 = v85;
      }

      else
      {

        v88 = v74;
        v87 = v144;
        v15 = v145;
        v144(v88, v44);
        v79 = v44;
      }

      type metadata accessor for MessageParser.Error();
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
      swift_allocError();
      v89 = v147;
      v154(v90, v147, v79);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v87(v89, v79);
      v87(v153, v79);
    }
  }

  else
  {
    v62 = sub_562DC();
    v63 = sub_5792C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "MessageDetails.requestID was empty", v64, 2u);
    }

    type metadata accessor for MessageParser.Error();
    sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v144(v147, v146);
  }

  return v15;
}

uint64_t sub_125BC()
{
  v0 = sub_55DFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v87 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v73 - v5;
  v7 = sub_2AFC(&qword_71B08, &qword_58FF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  __chkstk_darwin(v14);
  v88 = &v73 - v15;
  v16 = sub_2AFC(&qword_71B10, &qword_59000);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  sub_55E4C();
  sub_2E28(v24, v21, &qword_71B10, &qword_59000);
  v25 = sub_55E9C();
  v26 = *(v25 - 8);
  v85 = *(v26 + 48);
  if (v85(v21, 1, v25) != 1)
  {
    v83 = v26 + 48;
    v30 = sub_55E2C();
    v31 = v26;
    v32 = v30;
    v81 = *(v31 + 8);
    v82 = v31 + 8;
    v81(v21, v25);
    if (v32)
    {
      v79 = v13;
      v80 = v25;
      v89 = v0;
      v90 = v1;
      v78 = v10;
      v84 = v24;
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = (v90 + 8);
        while (1)
        {
          if (v34 >= *(v32 + 16))
          {
            __break(1u);
LABEL_55:
            __break(1u);
          }

          (*(v90 + 16))(v6, v32 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v34, v0);
          if (sub_55DDC() == 0x69616E626D756874 && v36 == 0xED0000617461446CLL)
          {

            goto LABEL_14;
          }

          v37 = sub_57B8C();

          if (v37)
          {
            break;
          }

          ++v34;
          v0 = v89;
          (*v35)(v6, v89);
          if (v33 == v34)
          {
            goto LABEL_11;
          }
        }

        v0 = v89;
LABEL_14:

        v39 = v90;
        v40 = v88;
        (*(v90 + 32))(v88, v6, v0);
        v38 = 0;
        v24 = v84;
      }

      else
      {
LABEL_11:

        v38 = 1;
        v24 = v84;
        v39 = v90;
        v40 = v88;
      }

      v41 = v39[7];
      v41(v40, v38, 1, v0);
      v42 = v39[6];
      if (v42(v40, 1, v0) == 1)
      {
        sub_2E90(v24, &qword_71B10, &qword_59000);
        v28 = &qword_71B08;
        v29 = &qword_58FF8;
        v27 = v40;
        goto LABEL_24;
      }

      sub_55DEC();
      v44 = v43;
      v88 = v39[1];
      (v88)(v40, v0);
      if (v44)
      {
        v84 = v41;
        v45 = sub_560DC();
        v47 = v46;

        if (v47 >> 60 != 15)
        {
          isa = sub_560EC().super.isa;
          v91 = 0;
          v49 = [(objc_class *)isa decompressedDataUsingAlgorithm:3 error:&v91];

          v50 = v91;
          if (v49)
          {
            v74 = sub_560FC();
            v75 = v51;

            v52 = v86;
            sub_2E28(v24, v86, &qword_71B10, &qword_59000);
            v53 = v80;
            v54 = v85(v52, 1, v80);
            v76 = v42;
            v77 = v45;
            if (v54 == 1)
            {
              sub_2E90(v52, &qword_71B10, &qword_59000);
            }

            else
            {
              v57 = sub_55E2C();
              v81(v52, v53);
              if (v57)
              {
                v85 = v47;
                v58 = *(v57 + 16);
                if (v58)
                {
                  v59 = 0;
                  v86 = v90 + 16;
                  while (1)
                  {
                    if (v59 >= *(v57 + 16))
                    {
                      goto LABEL_55;
                    }

                    (*(v90 + 16))(v87, v57 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v59, v89);
                    if (sub_55DDC() == 0xD000000000000023 && 0x800000000005C000 == v60)
                    {
                      break;
                    }

                    v61 = sub_57B8C();

                    if (v61)
                    {
                      goto LABEL_37;
                    }

                    ++v59;
                    (v88)(v87, v89);
                    if (v58 == v59)
                    {
                      goto LABEL_34;
                    }
                  }

LABEL_37:

                  v63 = v79;
                  (*(v90 + 32))(v79, v87, v89);
                  v62 = 0;
                }

                else
                {
LABEL_34:

                  v62 = 1;
                  v63 = v79;
                }

                v64 = v78;
                v47 = v85;
LABEL_39:
                v65 = v89;
                (v84)(v63, v62, 1, v89);
                sub_2E28(v63, v64, &qword_71B08, &qword_58FF8);
                if (v76(v64, 1, v65) == 1)
                {
                  sub_12F8C(v77, v47);
                  sub_2E90(v63, &qword_71B08, &qword_58FF8);
                  sub_2E90(v24, &qword_71B10, &qword_59000);
                  v66 = v64;
                  v67 = &qword_71B08;
                  v68 = &qword_58FF8;
                }

                else
                {
                  v69 = sub_55DEC();
                  v71 = v70;
                  (v88)(v64, v65);
                  if (v71)
                  {
                    v72 = v77;
                    if (v69 == 1702195828 && v71 == 0xE400000000000000 || (sub_57B8C() & 1) != 0)
                    {
                      sub_12F8C(v72, v47);

                      sub_2E90(v63, &qword_71B08, &qword_58FF8);
                      sub_2E90(v24, &qword_71B10, &qword_59000);
                      return v74;
                    }

                    if (v69 != 0x65736C6166 || v71 != 0xE500000000000000)
                    {
                      sub_57B8C();
                    }

                    sub_12F8C(v72, v47);
                  }

                  else
                  {
                    sub_12F8C(v77, v47);
                  }

                  sub_2E90(v63, &qword_71B08, &qword_58FF8);
                  v67 = &qword_71B10;
                  v68 = &qword_59000;
                  v66 = v24;
                }

                sub_2E90(v66, v67, v68);
                return v74;
              }
            }

            v62 = 1;
            v64 = v78;
            v63 = v79;
            goto LABEL_39;
          }

          v55 = v50;
          sub_5603C();

          swift_willThrow();
          sub_12F8C(v45, v47);
        }
      }
    }

    v28 = &qword_71B10;
    v29 = &qword_59000;
    v27 = v24;
    goto LABEL_24;
  }

  sub_2E90(v24, &qword_71B10, &qword_59000);
  v27 = v21;
  v28 = &qword_71B10;
  v29 = &qword_59000;
LABEL_24:
  sub_2E90(v27, v28, v29);
  return 0;
}

uint64_t sub_12F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_12FA0(a1, a2);
  }

  return a1;
}

uint64_t sub_12FA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for MessageParser.Error()
{
  result = qword_71BE0;
  if (!qword_71BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13040(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1308C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_130D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_13154()
{
  result = qword_71B58;
  if (!qword_71B58)
  {
    sub_5655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B58);
  }

  return result;
}

unint64_t sub_131A0()
{
  result = qword_71B68;
  if (!qword_71B68)
  {
    sub_2C70(&qword_71B60, &qword_59020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B68);
  }

  return result;
}

uint64_t sub_13254()
{
  result = sub_560CC();
  if (v1 <= 0x3F)
  {
    result = sub_5655C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_13310()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75728);
  sub_B144(v0, qword_75728);
  return sub_562EC();
}

uint64_t sub_133EC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75770);
  sub_B144(v0, qword_75770);
  return sub_562EC();
}

uint64_t sub_13474()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75788);
  sub_B144(v0, qword_75788);
  return sub_562EC();
}

uint64_t sub_134FC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757A0);
  sub_B144(v0, qword_757A0);
  return sub_562EC();
}

uint64_t sub_135B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_562FC();
  sub_B17C(v3, a2);
  sub_B144(v3, a2);
  return sub_562EC();
}

uint64_t sub_13634()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757D0);
  sub_B144(v0, qword_757D0);
  return sub_562EC();
}

uint64_t sub_136BC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757E8);
  sub_B144(v0, qword_757E8);
  return sub_562EC();
}

uint64_t sub_13744(char a1, char a2)
{
  v4 = sub_5721C();
  v5 = sub_564CC();

  if (!v5)
  {
    sub_2AFC(&qword_717E0, &qword_58B68);
    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = sub_5721C();
      v7 = sub_5648C();
      v9 = v8;

      if (!v9)
      {
        v10 = sub_5721C();
        v7 = sub_564EC();
      }

      if ((a2 & 1) == 0)
      {

        if (a1)
        {
          v11 = 0x800000000005C350;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
LABEL_14:
          v19 = v13;
          v58._countAndFlagsBits = v11;
          v59._countAndFlagsBits = 0xD000000000000022;
          v59._object = v11;
          v60.value._countAndFlagsBits = 0;
          v60.value._object = 0;
          v20.super.isa = v19;
          v61._countAndFlagsBits = 0;
          v61._object = 0xE000000000000000;
          v7 = sub_55EFC(v59, v60, v20, v61, v58);

          return v7;
        }

        v21 = 0x800000000005C330;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_58B10;
        v52 = sub_5724C();
        v54 = v53;
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = sub_B088();
        *(v51 + 32) = v52;
        *(v51 + 40) = v54;
        type metadata accessor for Localization();
        v55 = swift_getObjCClassFromMetadata();
        v56 = objc_opt_self();

        v50 = [v56 bundleForClass:v55];
LABEL_22:
        v29 = v50;
        v58._countAndFlagsBits = v21;
        v30._countAndFlagsBits = 0xD00000000000001FLL;
        goto LABEL_23;
      }

      return v7;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    if (a1)
    {
LABEL_18:
      v21 = 0x800000000005C2B0;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_58B10;
      v23 = sub_5721C();
      v24 = sub_564EC();
      v26 = v25;

      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_B088();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      type metadata accessor for Localization();
      v27 = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();

      v29 = [v28 bundleForClass:v27];
      v58._countAndFlagsBits = 0x800000000005C2B0;
      v30._countAndFlagsBits = 0xD000000000000021;
LABEL_23:
      v30._object = v21;
      v41.value._countAndFlagsBits = 0;
      v41.value._object = 0;
      v42.super.isa = v29;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      goto LABEL_24;
    }

LABEL_19:
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_58B00;
    v32 = sub_5721C();
    v33 = sub_564EC();
    v35 = v34;

    *(v31 + 56) = &type metadata for String;
    v36 = sub_B088();
    *(v31 + 64) = v36;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    v37 = sub_5724C();
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    type metadata accessor for Localization();
    v39 = swift_getObjCClassFromMetadata();
    v40 = objc_opt_self();

    v29 = [v40 bundleForClass:v39];
    v58._countAndFlagsBits = 0x800000000005C290;
    v30._countAndFlagsBits = 0xD00000000000001ELL;
    v30._object = 0x800000000005C290;
    v41.value._countAndFlagsBits = 0;
    v41.value._object = 0;
    v42.super.isa = v29;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
LABEL_24:
    sub_55EFC(v30, v41, v42, v43, v58);

    v7 = sub_5775C();

    return v7;
  }

  v14 = sub_5721C();
  v7 = sub_5648C();
  v16 = v15;

  if (!v16)
  {
    v17 = sub_5721C();
    v7 = sub_564EC();
  }

  if ((a2 & 1) == 0)
  {

    if (a1)
    {
      v11 = 0x800000000005C300;
      type metadata accessor for Localization();
      v18 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:v18];
      goto LABEL_14;
    }

    v21 = 0x800000000005C2E0;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_58B10;
    v45 = sub_5724C();
    v47 = v46;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_B088();
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    type metadata accessor for Localization();
    v48 = swift_getObjCClassFromMetadata();
    v49 = objc_opt_self();

    v50 = [v49 bundleForClass:v48];
    goto LABEL_22;
  }

  return v7;
}

uint64_t sub_13E94(char a1)
{
  v2 = sub_5722C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = sub_5721C();
  v7 = sub_564CC();

  if (v7 == 2)
  {
    if (a1)
    {
      v8 = 0x800000000005C200;
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v33._countAndFlagsBits = 0x800000000005C200;
      v11._countAndFlagsBits = 0xD000000000000023;
      goto LABEL_11;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_58B10;
    v28 = sub_5724C();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_B088();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    type metadata accessor for Localization();
    v31 = swift_getObjCClassFromMetadata();
    v32 = objc_opt_self();

    v22 = [v32 bundleForClass:v31];
    v33._countAndFlagsBits = 0x800000000005C1D0;
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = 0x800000000005C1D0;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v25.super.isa = v22;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
LABEL_14:
    sub_55EFC(v23, v24, v25, v26, v33);

    v15 = sub_5775C();

    return v15;
  }

  if (v7 != 1)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    sub_2AFC(&qword_717E0, &qword_58B68);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_58B10;
    v17 = sub_5724C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_B088();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    type metadata accessor for Localization();
    v20 = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();

    v22 = [v21 bundleForClass:v20];
    v33._countAndFlagsBits = 0x800000000005C230;
    v23._countAndFlagsBits = 0xD000000000000022;
    v23._object = 0x800000000005C230;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v25.super.isa = v22;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    goto LABEL_14;
  }

  v8 = 0x800000000005C260;
  type metadata accessor for Localization();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:v9];
  v33._countAndFlagsBits = 0x800000000005C260;
  v11._countAndFlagsBits = 0xD000000000000025;
LABEL_11:
  v11._object = v8;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v14.super.isa = v10;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v15 = sub_55EFC(v11, v34, v14, v35, v33);

  return v15;
}

uint64_t sub_14234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_14258, 0, 0);
}

uint64_t sub_14258()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if (*(v0 + 25))
  {
    if (qword_715C8 != -1)
    {
      swift_once();
    }

    v2 = sub_562FC();
    sub_B144(v2, qword_75788);
    v3 = sub_562DC();
    v4 = sub_5794C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Not sending response because one is already in-flight.", v5, 2u);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 80) = sub_578AC();
    *(v0 + 88) = sub_5789C();
    v9 = sub_5788C();

    return _swift_task_switch(sub_14430, v9, v8);
  }
}

uint64_t sub_14430()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 26) = 1;

  sub_5663C();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_14524;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_15168(v7, v6, v4);
}

uint64_t sub_14524()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_148CC;
  }

  else
  {
    v3 = sub_14638;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_14638()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_146C4, v3, v2);
}

uint64_t sub_146C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;

  v4 = v3;
  sub_5663C();

  return _swift_task_switch(sub_14790, 0, 0);
}

uint64_t sub_14790()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_1481C, v3, v2);
}

uint64_t sub_1481C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 27) = 0;

  sub_5663C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_148CC()
{
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_562FC();
  sub_B144(v2, qword_75788);
  swift_errorRetain();
  v3 = sub_562DC();
  v4 = sub_5792C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v3, v4, "Error sending response: %@", v6, 0xCu);
    sub_2E90(v7, &qword_71828, &qword_598B0);
  }

  v9 = v0[13];
  v10 = v0[10];

  v0[16] = sub_5602C();
  v0[17] = sub_5789C();
  v12 = sub_5788C();

  return _swift_task_switch(sub_14A9C, v12, v11);
}

uint64_t sub_14A9C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;
  *(v0 + 24) = 1;

  v4 = v2;
  sub_5663C();

  return _swift_task_switch(sub_14B68, 0, 0);
}

uint64_t sub_14B68()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[10];
  v0[15] = sub_5789C();
  v5 = sub_5788C();

  return _swift_task_switch(sub_1481C, v5, v4);
}

uint64_t sub_14C04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

unint64_t sub_14C7C(char a1)
{
  sub_2AFC(&qword_71D48, &qword_59328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_58B10;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  v4 = 0xD000000000000025;
  v5 = "_send(_:in:messagesContext:)";
  if (a1)
  {
    v4 = 0xD000000000000039;
  }

  else
  {
    v5 = "D to send a response for.";
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_B1E0(inited);
  swift_setDeallocating();
  sub_2E90(v3, qword_71868, &qword_59330);
  return v6;
}

Swift::Int sub_14D78()
{
  v1 = *v0;
  sub_57C2C();
  sub_57C3C(v1);
  return sub_57C4C();
}

Swift::Int sub_14DEC()
{
  v1 = *v0;
  sub_57C2C();
  sub_57C3C(v1);
  return sub_57C4C();
}

unint64_t sub_14E30()
{
  if (*v0)
  {
    result = 0xD000000000000039;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

uint64_t sub_14E7C(uint64_t a1)
{
  v2 = sub_175B8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_14EB8(uint64_t a1)
{
  v2 = sub_175B8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_14EF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

uint64_t sub_14F68(uint64_t a1, uint64_t a2)
{
  v5 = sub_2AFC(&qword_71D08, &qword_59128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = sub_2AFC(&qword_71D10, &qword_59130);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__isWaitingForSendResult;
  v20 = 0;
  sub_5661C();
  (*(v11 + 32))(v2 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__sendResult;
  v18 = 0;
  v19 = -1;
  sub_2AFC(&unk_71C70, "jV");
  sub_5661C();
  (*(v6 + 32))(v2 + v16, v9, v5);
  sub_BA54(a1, v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload) = a2;
  return v2;
}

uint64_t sub_15168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_55DBC();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1522C, 0, 0);
}

uint64_t sub_1522C()
{
  v47 = v0;
  v1 = v0[25];
  v0[30] = *v1;
  v2 = v1[1];
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[26];
    v5 = v0[23];
    v4 = v0[24];
    sub_5765C();
    v6 = *(v3 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
    v7 = v5;
    v0[32] = sub_575EC();
    v8 = [v4 recipientAddresses];
    v9 = sub_5784C();
    v0[33] = v9;

    v0[34] = sub_575DC();
    if ((v10 & 1) == 0)
    {
      v11 = sub_5760C();
      if (v11 == sub_5650C())
      {
        v12 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
        v0[35] = v12;
        v0[2] = v0;
        v0[7] = v0 + 22;
        v0[3] = sub_15784;
        v13 = swift_continuation_init();
        v0[17] = sub_2AFC(&qword_71D20, &unk_591E0);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_16E90;
        v0[13] = &unk_6E890;
        v0[14] = v13;
        [v12 startRequestWithCompletionHandler:v0 + 10];

        return _swift_continuation_await(v0 + 2);
      }
    }

    v0[37] = v9;
    if (qword_715C8 != -1)
    {
      swift_once();
    }

    v14 = v0[31];
    v15 = v0[32];
    v16 = sub_562FC();
    v0[38] = sub_B144(v16, qword_75788);

    v17 = v15;
    v18 = sub_562DC();
    v19 = sub_5794C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[31];
      v21 = v0[32];
      v22 = v0[30];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_293C0(v22, v20, v46);
      *(v23 + 12) = 2080;

      v25 = sub_5785C();
      v27 = v26;

      v28 = sub_293C0(v25, v27, v46);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v21;
      *v24 = v21;
      v29 = v21;
      _os_log_impl(&dword_0, v18, v19, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v23, 0x20u);
      sub_2E90(v24, &qword_71828, &qword_598B0);

      swift_arrayDestroy();
    }

    v30 = v0[32];
    v31 = sub_5764C();
    v0[39] = v31;
    if (v31)
    {
      v32 = v0[31];
      v33 = sub_5752C();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v0[40] = sub_5751C();
      v36 = async function pointer to ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)[1];

      v37 = swift_task_alloc();
      v0[41] = v37;
      *v37 = v0;
      v37[1] = sub_162E0;
      v38 = v0[32];
      v39 = v0[30];

      return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v38, v9, v39, v32);
    }

    v41 = v0[32];
    sub_173F4();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
  }

  else
  {
    sub_173F4();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  v43 = v0[29];

  v44 = v0[1];

  return v44();
}

uint64_t sub_15784()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_16660;
  }

  else
  {
    v3 = sub_15894;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_15894()
{
  v104 = v0;
  v98 = v0[22];
  v1 = [v98 members];
  sub_174BC();
  v2 = sub_5784C();

  if (v2 >> 62)
  {
LABEL_40:
    v3 = sub_57B1C();
    v101 = v0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_41:

    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v37 = sub_562FC();
    sub_B144(v37, qword_75758);
    v38 = sub_562DC();
    v39 = sub_5792C();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[35];
    if (v40)
    {
      v42 = v0[34];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v103[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v103);
      *(v43 + 12) = 2048;
      *(v43 + 14) = v42;
      _os_log_impl(&dword_0, v38, v39, "%s: current user is not in same family as requester with DSID %ld", v43, 0x16u);
      sub_13040(v44);
    }

    v7 = v0[33];
    goto LABEL_46;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v101 = v0;
  if (!v3)
  {
    goto LABEL_41;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_57AEC();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_39;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = [v5 dsid];
    if (v8)
    {
      v9 = v0[34];
      v10 = v8;
      v102 = v6;
      v11 = [v8 integerValue];

      v12 = v11 == v9;
      v0 = v101;
      v6 = v102;
      if (v12)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_41;
    }
  }

  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v13 = sub_562FC();
  sub_B144(v13, qword_75758);
  v14 = sub_562DC();
  v15 = sub_5794C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v103[0] = v4;
    *v16 = 136315138;
    *(v16 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v103);
    _os_log_impl(&dword_0, v14, v15, "%s: verified user is in same family as original requester", v16, 0xCu);
    sub_13040(v4);
  }

  v17 = sub_5795C();
  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_58:
    v7 = &_swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v19 = sub_57B1C();
  if (!v19)
  {
    goto LABEL_58;
  }

LABEL_20:
  if (v19 >= 1)
  {
    v20 = 0;
    v100 = (v101[28] + 8);
    v7 = &_swiftEmptyArrayStorage;
    v99 = v19;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = sub_57AEC();
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 appleID];
      if (v23)
      {
        v24 = v101[29];
        v25 = v101[27];
        v26 = v23;
        v27 = sub_5778C();
        v29 = v28;

        v101[20] = v27;
        v101[21] = v29;
        sub_55DAC();
        sub_2B4C();
        v30 = sub_579BC();
        v32 = v31;
        (*v100)(v24, v25);

        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_6AAC(0, *(v7 + 2) + 1, 1, v7);
          }

          v35 = *(v7 + 2);
          v34 = *(v7 + 3);
          if (v35 >= v34 >> 1)
          {
            v7 = sub_6AAC((v34 > 1), v35 + 1, 1, v7);
          }

          *(v7 + 2) = v35 + 1;
          v36 = &v7[16 * v35];
          *(v36 + 4) = v30;
          *(v36 + 5) = v32;
        }

        else
        {
        }

        v19 = v99;
      }

      else
      {
      }

      ++v20;
    }

    while (v19 != v20);
LABEL_59:

    v76 = [v102 appleID];
    if (!v76)
    {
      v0 = v101;
      v93 = v101[35];
      v94 = v101[33];

      goto LABEL_46;
    }

    v78 = v101[28];
    v77 = v101[29];
    v79 = v101[27];
    v80 = v76;
    v81 = sub_5778C();
    v83 = v82;

    v101[18] = v81;
    v101[19] = v83;
    sub_55DAC();
    sub_2B4C();
    v4 = sub_579BC();
    v19 = v84;
    (*(v78 + 8))(v77, v79);

    v85 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v85 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v85)
    {
      v95 = v101[35];
      v96 = v101[33];

      v0 = v101;
      goto LABEL_46;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_64;
    }

    goto LABEL_70;
  }

  __break(1u);
LABEL_70:
  v7 = sub_6AAC(0, *(v7 + 2) + 1, 1, v7);
LABEL_64:
  v86 = v7;
  v87 = *(v7 + 2);
  v88 = v86;
  v89 = *(v86 + 3);
  if (v87 >= v89 >> 1)
  {
    v88 = sub_6AAC((v89 > 1), v87 + 1, 1, v88);
  }

  v90 = v101[35];
  v91 = v101[33];

  v0 = v101;
  *(v88 + 2) = v87 + 1;
  v92 = &v88[16 * v87];
  v7 = v88;
  *(v92 + 4) = v4;
  *(v92 + 5) = v19;

LABEL_46:
  v45 = v7;
  v0[37] = v7;
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v46 = v0[31];
  v47 = v0[32];
  v48 = sub_562FC();
  v0[38] = sub_B144(v48, qword_75788);

  v49 = v47;
  v50 = sub_562DC();
  v51 = sub_5794C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = v0[31];
    v53 = v0[32];
    v54 = v0[30];
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v55 = 136315650;
    *(v55 + 4) = sub_293C0(v54, v52, v103);
    *(v55 + 12) = 2080;

    v57 = sub_5785C();
    v59 = v58;

    v60 = sub_293C0(v57, v59, v103);

    *(v55 + 14) = v60;
    *(v55 + 22) = 2112;
    *(v55 + 24) = v53;
    *v56 = v53;
    v61 = v53;
    _os_log_impl(&dword_0, v50, v51, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v55, 0x20u);
    sub_2E90(v56, &qword_71828, &qword_598B0);
    v0 = v101;

    swift_arrayDestroy();
  }

  v62 = v0[32];
  v63 = sub_5764C();
  v0[39] = v63;
  if (v63)
  {
    v64 = v0[31];
    v65 = sub_5752C();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v0[40] = sub_5751C();
    v68 = *(&async function pointer to ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:) + 1);

    v69 = swift_task_alloc();
    v0[41] = v69;
    *v69 = v0;
    v69[1] = sub_162E0;
    v70 = v0[32];
    v71 = v0[30];

    return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v70, v45, v71, v64);
  }

  else
  {
    v72 = v0[32];
    sub_173F4();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();

    v74 = v0[29];

    v75 = v0[1];

    return v75();
  }
}

uint64_t sub_162E0()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_16C80;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_163FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_163FC()
{
  v29 = v0;
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[32];

  v4 = v3;
  v5 = sub_562DC();
  v6 = sub_5794C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[37];
  v12 = v0[31];
  v11 = v0[32];
  if (v7)
  {
    v13 = v0[30];
    v26 = v0[40];
    v27 = v0[39];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315650;
    v16 = sub_293C0(v13, v12, &v28);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;

    v17 = sub_5785C();
    v19 = v18;

    v20 = sub_293C0(v17, v19, &v28);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    *v15 = v11;
    v21 = v11;
    _os_log_impl(&dword_0, v5, v6, "%s: Updated Messages DB with response. recipientAddresses: %s, responsePayload: %@", v14, 0x20u);
    sub_2E90(v15, &qword_71828, &qword_598B0);

    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[40];
  }

  v23 = v0[29];

  v24 = v0[1];

  return v24();
}

uint64_t sub_16660()
{
  v52 = v0;
  v1 = v0[36];
  swift_willThrow();
  v2 = &selRef_conformsToProtocol_;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = sub_562FC();
  sub_B144(v4, qword_75758);
  swift_errorRetain();
  v5 = sub_562DC();
  v6 = sub_5792C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v51);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v5, v6, "%s: failed to fetch family circler with error %@", v9, 0x16u);
    sub_2E90(v10, &qword_71828, &qword_598B0);

    sub_13040(v11);

    v2 = &selRef_conformsToProtocol_;
  }

  else
  {
  }

  if (v2[183] != -1)
  {
    swift_once();
  }

  sub_B144(v4, qword_75758);
  v13 = sub_562DC();
  v14 = sub_5792C();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[35];
  if (v15)
  {
    v17 = v0[34];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v51);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v17;
    _os_log_impl(&dword_0, v13, v14, "%s: current user is not in same family as requester with DSID %ld", v18, 0x16u);
    sub_13040(v19);
  }

  v20 = v0[33];
  v0[37] = v20;
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v22 = v0[31];
  v21 = v0[32];
  v0[38] = sub_B144(v4, qword_75788);

  v23 = v21;
  v24 = sub_562DC();
  v25 = sub_5794C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[31];
    v27 = v0[32];
    v28 = v0[30];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v29 = 136315650;
    *(v29 + 4) = sub_293C0(v28, v26, v51);
    *(v29 + 12) = 2080;

    v31 = sub_5785C();
    v33 = v32;

    v34 = sub_293C0(v31, v33, v51);

    *(v29 + 14) = v34;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v27;
    *v30 = v27;
    v35 = v27;
    _os_log_impl(&dword_0, v24, v25, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v29, 0x20u);
    sub_2E90(v30, &qword_71828, &qword_598B0);

    swift_arrayDestroy();
  }

  v36 = v0[32];
  v37 = sub_5764C();
  v0[39] = v37;
  if (v37)
  {
    v38 = v0[31];
    v39 = sub_5752C();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v0[40] = sub_5751C();
    v42 = async function pointer to ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)[1];

    v43 = swift_task_alloc();
    v0[41] = v43;
    *v43 = v0;
    v43[1] = sub_162E0;
    v44 = v0[32];
    v45 = v0[30];

    return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v44, v20, v45, v38);
  }

  else
  {
    v46 = v0[32];
    sub_173F4();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();

    v48 = v0[29];

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_16C80()
{
  v26 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[31];

  swift_errorRetain();
  v6 = sub_562DC();
  v7 = sub_5792C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[42];
    v10 = v0[30];
    v9 = v0[31];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = sub_293C0(v10, v9, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_0, v6, v7, "%s: Received error from daemon while sending response over IDS: %@", v11, 0x16u);
    sub_2E90(v12, &qword_71828, &qword_598B0);

    sub_13040(v13);
  }

  else
  {
    v16 = v0[31];
  }

  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[37];
  v20 = v0[32];
  swift_willThrow();

  v21 = v0[42];
  v22 = v0[29];

  v23 = v0[1];

  return v23();
}

uint64_t sub_16E90(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_17508((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_2AFC(&qword_71D30, &qword_5A740);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_16F68()
{
  v1 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__isWaitingForSendResult;
  v2 = sub_2AFC(&qword_71D10, &qword_59130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__sendResult;
  v4 = sub_2AFC(&qword_71D08, &qword_59128);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_AFDC(v0 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseTransmitter()
{
  result = qword_71C50;
  if (!qword_71C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_170D0()
{
  sub_171E0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_17230();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for MessagesContext();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_171E0()
{
  if (!qword_71C60)
  {
    v0 = sub_5664C();
    if (!v1)
    {
      atomic_store(v0, &qword_71C60);
    }
  }
}

void sub_17230()
{
  if (!qword_71C68)
  {
    sub_2C70(&unk_71C70, "jV");
    v0 = sub_5664C();
    if (!v1)
    {
      atomic_store(v0, &qword_71C68);
    }
  }
}