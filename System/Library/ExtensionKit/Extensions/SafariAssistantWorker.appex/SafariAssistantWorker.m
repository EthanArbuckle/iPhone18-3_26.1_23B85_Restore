uint64_t sub_1000017A0()
{
  v1 = v0;
  v2 = [BiomeLibrary() Safari];
  swift_unknownObjectRelease();
  v3 = [v2 Browsing];
  swift_unknownObjectRelease();
  v4 = [v3 Assistant];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = [v4 description];
  v6 = sub_10002CBC8();
  v8 = v7;

  if (qword_100040A00 != -1)
  {
    swift_once();
  }

  v9 = sub_10002CB68();
  sub_10000219C(v9, qword_100049B40);

  v10 = sub_10002CB48();
  v11 = sub_10002CDE8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    v14 = sub_100028D28(v6, v8, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Stream - %{public}s", v12, 0xCu);
    sub_1000023D0(v13);
  }

  else
  {
  }

  return v1;
}

id sub_1000019B0(uint64_t a1)
{
  v5 = sub_100001DE4(&qword_100040B70, &qword_100031C30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_1000025C8();
  __chkstk_darwin(v7);
  sub_10000260C();
  v8 = sub_100002620();
  sub_100001E2C(a1, v2);
  v9 = sub_10002C828();
  sub_100001E9C(v1, 1, 1, v9);
  v10 = objc_allocWithZone(BMPublisherOptions);
  v11 = sub_1000025E4();
  v12 = [v3 publisherWithUseCase:v8 options:v11];

  return v12;
}

id sub_100001AB4(uint64_t a1, uint64_t a2)
{
  v7 = sub_100001DE4(&qword_100040B70, &qword_100031C30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000025C8();
  __chkstk_darwin(v9);
  sub_10000260C();
  v10 = sub_100002620();
  sub_100001E2C(a1, v3);
  sub_100001E2C(a2, v2);
  v11 = objc_allocWithZone(BMPublisherOptions);
  v12 = sub_1000025E4();
  v13 = [v4 publisherWithUseCase:v10 options:v12];

  return v13;
}

unint64_t sub_100001BB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(sub_100001DE4(&qword_100040B78, &qword_10002D8C0));
  v5 = sub_100001EC4(0);
  [a1 subscribe:v5];
  a2[3] = sub_100001DE4(&qword_100040B80, &qword_10002D8C8);
  result = sub_1000020F0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_100001C40(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 eventBody];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = sub_100029A40();
  if (v6 >> 60 == 15)
  {

LABEL_4:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = v5;
  v8 = [v4 webpageViewStarted];

  if (v8)
  {
  }

LABEL_7:
  objc_autoreleasePoolPop(v2);
  return v7;
}

uint64_t sub_100001D0C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 eventBodyData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10002C7A8();
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t sub_100001D88()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100001DE4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DE4(&qword_100040B70, &qword_100031C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100001EC4(char a1)
{
  sub_100001DE4(&qword_100040B90, &qword_10002D8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = a1;
  sub_100001DE4(&qword_100040B98, &qword_10002D8D8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *&v1[qword_100041FB0] = v4;
  v6.receiver = v1;
  v6.super_class = sub_100001DE4(&qword_100040B78, &qword_10002D8C0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100001F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_10002C828();
  isa = 0;
  if (sub_1000020C8(a1, 1, v12) != 1)
  {
    isa = sub_10002C7F8().super.isa;
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_1000020C8(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_10002C7F8().super.isa;
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:isa endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

unint64_t sub_1000020F0()
{
  result = qword_100040B88;
  if (!qword_100040B88)
  {
    sub_100002154(&qword_100040B80, &qword_10002D8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100040B88);
  }

  return result;
}

uint64_t sub_100002154(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000219C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000021D8(uint64_t a1, uint64_t a2)
{
  result = sub_10002CD58();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10000222C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002CD68();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002284();
  *a1 = result;
  return result;
}

void *sub_1000022C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000022DC()
{
  v2 = *v0;
  sub_100002550(&qword_100040BC8);
  sub_100002550(&unk_100040BD0);
  return sub_10002CE78();
}

uint64_t sub_1000023D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000242C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000244C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_10000249C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BPSDemand(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000025E4()
{

  return sub_100001F8C(v1, v0, 50000, 0, 0);
}

NSString sub_100002620()
{

  return sub_10002CBB8();
}

uint64_t sub_100002640@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100018C54();
  v5 = sub_100001DE4(v3, v4);
  sub_1000187F8(v5);
  v7 = *(v6 + 64);
  sub_1000187CC();
  __chkstk_darwin(v8);
  sub_100018B30();
  sub_100016048();
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  sub_100018748(v1);
  if (v9)
  {
    sub_100015FF0(v1, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_10001895C();
      return sub_1000155F0();
    }

    sub_100015598(v1, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  return sub_10000274C(a1);
}

uint64_t sub_10000274C@<X0>(uint64_t a1@<X8>)
{
  sub_100018AF0(xmmword_10002DAB0);
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = &_swiftEmptyArrayStorage;
  v3 = a1 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0) + 60);
  return sub_10002C908();
}

uint64_t sub_1000027C0@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_10002DAB0;
  v2 = a1(0);
  return sub_100018BEC(v2);
}

uint64_t sub_100002800()
{
  sub_100018AF0(xmmword_10002DAB0);
  v0 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0);
  return sub_100018C74(v0);
}

uint64_t sub_100002838@<X0>(uint64_t a1@<X8>)
{
  sub_100018AF0(xmmword_10002DAB0);
  v2 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  sub_10001898C(v4);
  v5 = a1 + *(v2 + 28);
  return sub_10002C908();
}

uint64_t sub_100002894@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10002DAB0;
  v2 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  sub_10001898C(v4);
  v5 = a1 + v2[6];
  sub_10002C908();
  v6 = v2[7];
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  v7 = sub_1000187E4();

  return sub_100001E9C(v7, v8, v9, v10);
}

uint64_t sub_100002910@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10002DAB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
  sub_100018C74(v1);
  v2 = *(v1 + 28);
  v3 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  sub_10001898C(v3);
  v4 = *(v1 + 32);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0);
  v5 = sub_1000187E4();

  return sub_100001E9C(v5, v6, v7, v8);
}

void sub_100002990()
{
  sub_100018A4C();
  v140 = v1;
  v141 = v2;
  v3 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
  v4 = sub_1000187F8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10001860C();
  v136 = v7;
  v8 = sub_1000189B8();
  v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(v8);
  v10 = sub_1000187F8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10001860C();
  v135 = v13;
  v14 = sub_1000189B8();
  v15 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(v14);
  v16 = sub_1000187F8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10001860C();
  v133 = v19;
  v20 = sub_1000189B8();
  v127 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(v20);
  v21 = sub_100018638(v127);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10001860C();
  v137 = v24;
  v25 = sub_1000189B8();
  v129 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible(v25);
  v26 = sub_100018638(v129);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_10001860C();
  v134 = v29;
  v30 = sub_1000189B8();
  v128 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed(v30);
  v31 = sub_100018638(v128);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10001860C();
  v132 = v34;
  v35 = sub_1000189B8();
  v36 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(v35);
  v37 = sub_1000187F8(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10001860C();
  v131 = v40;
  v41 = sub_1000189B8();
  v126 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted(v41);
  v42 = sub_100018638(v126);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_10001860C();
  v130 = v45;
  v46 = sub_1000189B8();
  v47 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(v46);
  v48 = sub_100018638(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_100018B20();
  v53 = v51 - v52;
  v55 = __chkstk_darwin(v54);
  v57 = &v126 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v126 - v59;
  v61 = __chkstk_darwin(v58);
  v139 = (&v126 - v62);
  v63 = __chkstk_darwin(v61);
  v138 = (&v126 - v64);
  v65 = __chkstk_darwin(v63);
  v67 = (&v126 - v66);
  v68 = __chkstk_darwin(v65);
  v70 = (&v126 - v69);
  __chkstk_darwin(v68);
  v72 = (&v126 - v71);
  v73 = sub_100001DE4(&qword_100040FF0, &qword_10002F7C0);
  sub_1000187F8(v73);
  v75 = *(v74 + 64);
  sub_1000187CC();
  __chkstk_darwin(v76);
  sub_100018A08();
  v78 = *(v77 + 56);
  sub_100015E78();
  sub_100015E78();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50() == 1)
      {
        sub_10001895C();
        v110 = v131;
        sub_1000155F0();
        sub_100008EA8(v70, v110);
        v111 = v0;
        v112 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext;
        sub_100015598(v110, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);
        v113 = v70;
        goto LABEL_29;
      }

      v116 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext;
      goto LABEL_36;
    case 2u:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50() != 2)
      {
        v79 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed;
        v80 = v67;
        goto LABEL_39;
      }

      sub_1000189F8();
      v91 = v132;
      sub_1000155F0();
      v92 = *v67;
      v93 = v67[1];
      v94 = *v91;
      v95 = v91[1];
      if (sub_10002C798())
      {
        v0 = *(v128 + 20);
        sub_10002C918();
        sub_100018488();
        sub_100013CE0(v96, v97);
        sub_100018C04();
      }

      sub_1000188CC();
      sub_100015598(v91, v98);
      v99 = v67;
      goto LABEL_47;
    case 3u:
      sub_1000184B8();
      v70 = v138;
      sub_100015E78();
      if (sub_100018B50() != 3)
      {
        v116 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible;
        goto LABEL_36;
      }

      sub_1000189F8();
      v81 = v134;
      sub_1000155F0();
      v100 = *v70;
      v101 = v70[1];
      v102 = *v81;
      v103 = v81[1];
      if (sub_10002C798() & 1) != 0 && (v104 = *(v129 + 20), sub_10002C918(), sub_100018488(), sub_100013CE0(v105, v106), (sub_100018C04()))
      {
        v90 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible;
      }

      else
      {
        v90 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible;
      }

      goto LABEL_43;
    case 4u:
      sub_1000184B8();
      v70 = v139;
      sub_100015E78();
      if (sub_100018B50() != 4)
      {
        v116 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent;
LABEL_36:
        v79 = v116;
        v80 = v70;
        goto LABEL_39;
      }

      sub_1000189F8();
      v81 = v137;
      sub_1000155F0();
      v82 = *v70;
      v83 = v70[1];
      v84 = *v81;
      v85 = v81[1];
      if (sub_10002C798() & 1) != 0 && (v70[2] == v81[2] ? (v86 = v70[3] == v81[3]) : (v86 = 0), (v86 || (sub_10002CF08()) && (v87 = *(v127 + 24), sub_10002C918(), sub_100018488(), sub_100013CE0(v88, v89), (sub_100018C04())))
      {
        v90 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent;
      }

      else
      {
        v90 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent;
      }

LABEL_43:
      v0 = v90;
      sub_100015598(v81, v90);
      v99 = v70;
      goto LABEL_47;
    case 5u:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50() == 5)
      {
        v114 = v133;
        sub_1000155F0();
        sub_10000B9BC();
        v111 = v0;
        v112 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext;
        sub_100015598(v114, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);
        v113 = v60;
        goto LABEL_29;
      }

      v79 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext;
      v80 = v60;
      goto LABEL_39;
    case 6u:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50() != 6)
      {
        v79 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext;
        v80 = v57;
        goto LABEL_39;
      }

      v115 = v135;
      sub_1000155F0();
      sub_10000D134();
      v111 = v0;
      v112 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext;
      sub_100015598(v115, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);
      v113 = v57;
LABEL_29:
      sub_100015598(v113, v112);
      sub_1000184A0();
      v109 = v111;
      goto LABEL_30;
    case 7u:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50() != 7)
      {
        v79 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected;
        v80 = v53;
        goto LABEL_39;
      }

      v107 = v136;
      sub_1000155F0();
      sub_10000E124();
      sub_100015598(v107, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
      sub_100015598(v53, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
      sub_1000184A0();
      v109 = v0;
LABEL_30:
      sub_100015598(v109, v108);
      break;
    default:
      sub_1000184B8();
      sub_100015E78();
      if (sub_100018B50())
      {
        v79 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted;
        v80 = v72;
LABEL_39:
        sub_100015598(v80, v79);
        sub_100015FF0(v0, &qword_100040FF0, &qword_10002F7C0);
      }

      else
      {
        sub_1000189F8();
        v117 = v130;
        sub_1000155F0();
        v118 = *v72;
        v119 = v72[1];
        v120 = *v117;
        v121 = v117[1];
        if (sub_10002C798())
        {
          v0 = *(v126 + 20);
          sub_10002C918();
          sub_100018488();
          sub_100013CE0(v122, v123);
          sub_100018C04();
        }

        sub_100018944();
        sub_100015598(v117, v124);
        v99 = v72;
LABEL_47:
        sub_100015598(v99, v0);
        sub_1000184A0();
        sub_100015598(v57, v125);
      }

      break;
  }

  sub_100018A64();
}

uint64_t sub_1000033B0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  sub_100001E9C(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  *(a1 + *(v3 + 20)) = 0;
  return sub_100018C74(v3);
}

uint64_t sub_100003400@<X0>(void *a1@<X8>)
{
  sub_10001886C(a1);
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0);
  sub_100018BEC(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  v3 = sub_1000187E4();

  return sub_100001E9C(v3, v4, v5, v6);
}

void sub_100003450()
{
  sub_100018A4C();
  v60 = v2;
  v61 = v3;
  v58 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed(0);
  v4 = sub_100018638(v58);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10001860C();
  v59 = v7;
  v8 = sub_1000189B8();
  v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(v8);
  v10 = sub_1000187F8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100018660();
  v15 = v14 - v13;
  v16 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted(0);
  v17 = sub_100018638(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100018660();
  sub_100018C48();
  v20 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  v21 = sub_100018638(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100018B20();
  v26 = (v24 - v25);
  v28 = __chkstk_darwin(v27);
  v30 = &v58 - v29;
  __chkstk_darwin(v28);
  v32 = (&v58 - v31);
  v33 = sub_100001DE4(&qword_100041008, &qword_10002F7D8);
  sub_1000187F8(v33);
  v35 = *(v34 + 64);
  sub_1000187CC();
  __chkstk_darwin(v36);
  sub_100018A08();
  v38 = *(v37 + 56);
  sub_100015E78();
  sub_100015E78();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000186F4();
    sub_100015E78();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10001851C();
      v42 = v32;
LABEL_12:
      sub_100015598(v42, v41);
      sub_100015FF0(v0, &qword_100041008, &qword_10002F7D8);
      goto LABEL_26;
    }

    sub_1000155F0();
    v45 = *v32;
    v46 = *v1;
    if (*(v1 + 8) == 1)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v45 != 1)
          {
            goto LABEL_23;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_23;
        }

LABEL_21:
        v52 = *(v16 + 20);
        sub_10002C918();
        sub_100018488();
        sub_100013CE0(v53, v54);
        sub_10002CBA8();
        sub_10001851C();
        sub_100015598(v1, v55);
LABEL_24:
        sub_10001851C();
        v51 = v32;
        goto LABEL_25;
      }

      if (!v45)
      {
        goto LABEL_21;
      }
    }

    else if (v45 == v46)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_10001851C();
    sub_100015598(v1, v56);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000186F4();
    sub_100015E78();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100018504();
      v42 = v26;
      goto LABEL_12;
    }

    v43 = v59;
    sub_1000155F0();
    if (*v26 == *v43)
    {
      v47 = *(v58 + 20);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v48, v49);
      sub_10002CBA8();
    }

    sub_100018504();
    sub_100015598(v43, v44);
    sub_100018504();
    v51 = v26;
LABEL_25:
    sub_100015598(v51, v50);
    sub_100018534();
    sub_100015598(v0, v57);
    goto LABEL_26;
  }

  sub_1000186F4();
  sub_100015E78();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded;
    v42 = v30;
    goto LABEL_12;
  }

  sub_1000155F0();
  sub_10001239C();
  sub_100015598(v15, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
  sub_100015598(v30, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
  sub_100018534();
  sub_100015598(v0, v40);
LABEL_26:
  sub_100018A64();
}

uint64_t sub_10000391C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  sub_100018BEC(v1);
  v2 = *(v1 + 24);
  v3 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0);
  sub_10001898C(v3);
  v4 = *(v1 + 28);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0);
  v5 = sub_1000187E4();

  return sub_100001E9C(v5, v6, v7, v8);
}

uint64_t sub_100003988@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = a1(0);
  return sub_100018BEC(v2);
}

uint64_t sub_1000039C0@<X0>(uint64_t a1@<X8>)
{
  sub_100018C60(a1);
  v2 = v1(0);
  return sub_100018BEC(v2);
}

void sub_1000039F4()
{
  sub_100018A4C();
  v44 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded(0);
  v1 = sub_100018638(v44);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100018660();
  v6 = v5 - v4;
  v43 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted(0);
  v7 = sub_100018638(v43);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100018660();
  v12 = (v11 - v10);
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  v14 = sub_100018638(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100018B20();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = sub_100001DE4(&qword_100041060, &qword_10002F830);
  sub_1000187F8(v23);
  v25 = *(v24 + 64);
  sub_1000187CC();
  __chkstk_darwin(v26);
  sub_100018A08();
  v28 = *(v27 + 56);
  sub_100015E78();
  sub_100015E78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100018898();
    sub_100015E78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000155F0();
      v29 = *(v6 + 8);
      if (sub_1000156B8(*v19, *(v19 + 8), *v6))
      {
        v30 = *(v44 + 20);
        sub_10002C918();
        sub_100018488();
        sub_100013CE0(v31, v32);
        sub_10002CBA8();
      }

      sub_10001857C();
      sub_100015598(v6, v33);
      sub_10001857C();
      v35 = v19;
LABEL_15:
      sub_100015598(v35, v34);
      sub_100018620();
      sub_100015598(v0, v42);
      goto LABEL_16;
    }

    sub_10001857C();
    v37 = v19;
  }

  else
  {
    sub_100018898();
    sub_100015E78();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000155F0();
      if (*v22 == *v12)
      {
        v39 = *(v43 + 20);
        sub_10002C918();
        sub_100018488();
        sub_100013CE0(v40, v41);
        sub_10002CBA8();
      }

      sub_100018564();
      sub_100015598(v12, v38);
      sub_100018564();
      v35 = v22;
      goto LABEL_15;
    }

    sub_100018564();
    v37 = v22;
  }

  sub_100015598(v37, v36);
  sub_100015FF0(v0, &qword_100041060, &qword_10002F830);
LABEL_16:
  sub_100018A64();
}

uint64_t sub_100003D9C@<X0>(void *a1@<X8>)
{
  sub_10001886C(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = v1 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0) + 28);
  return sub_10002C908();
}

uint64_t sub_100003DDC@<X0>(void *a1@<X8>)
{
  sub_10001886C(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  v3 = v1 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0) + 40);
  return sub_10002C908();
}

uint64_t sub_100003E28@<X0>(uint64_t a1@<X8>)
{
  sub_100018C60(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = v1 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0) + 32);
  return sub_10002C908();
}

uint64_t sub_100003E74@<X0>(void *a1@<X8>)
{
  sub_10001886C(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0);
  return sub_100018C74(v2);
}

uint64_t sub_100003EA4@<X0>(void *a1@<X8>)
{
  sub_10001886C(a1);
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  return sub_100018BEC(v1);
}

uint64_t sub_100003ED0()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049840);
  sub_10000219C(v0, qword_100049840);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "webpageViewStarted";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dimensionContext";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bloomFilterPassed";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "eligible";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "webpageUrlSent";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "serverRequestContext";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "visualComponentPresentationContext";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "userInteractionDetected";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 100;
  *v24 = "timestamp";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_100004250()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1000185D0();
        sub_100004364(v3, v4, v5, v6);
        break;
      case 2:
        v23 = sub_1000185D0();
        sub_10000485C(v23, v24, v25, v26);
        break;
      case 3:
        v11 = sub_1000185D0();
        sub_100004D54(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_1000185D0();
        sub_10000524C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_1000185D0();
        sub_100005744(v7, v8, v9, v10);
        break;
      case 6:
        v27 = sub_1000185D0();
        sub_100005C3C(v27, v28, v29, v30);
        break;
      case 7:
        v31 = sub_1000185D0();
        sub_100006134(v31, v32, v33, v34);
        break;
      case 8:
        v19 = sub_1000185D0();
        sub_10000662C(v19, v20, v21, v22);
        break;
      default:
        if (result == 100)
        {
          sub_1000185A8();
          sub_100006B24();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100004364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040F90, &qword_10002F768);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }

    else
    {
      sub_100015FF0(v24, &qword_100040F90, &qword_10002F768);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }
  }

  sub_100013CE0(&qword_100040F48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040F90, &qword_10002F768);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040F90, &qword_10002F768);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040F90, &qword_10002F768);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040F90, &qword_10002F768);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_10000485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040F98, &qword_10002F770);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100015FF0(v24, &qword_100040F98, &qword_10002F770);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040F28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040F98, &qword_10002F770);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040F98, &qword_10002F770);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040F98, &qword_10002F770);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040F98, &qword_10002F770);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_100004D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FA0, &qword_10002F778);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100015FF0(v24, &qword_100040FA0, &qword_10002F778);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040F08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FA0, &qword_10002F778);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FA0, &qword_10002F778);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FA0, &qword_10002F778);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FA0, &qword_10002F778);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_10000524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FA8, &qword_10002F780);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100015FF0(v24, &qword_100040FA8, &qword_10002F780);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040EE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FA8, &qword_10002F780);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FA8, &qword_10002F780);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FA8, &qword_10002F780);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FA8, &qword_10002F780);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_100005744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FB0, &qword_10002F788);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_100015FF0(v24, &qword_100040FB0, &qword_10002F788);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040EC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FB0, &qword_10002F788);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FB0, &qword_10002F788);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FB0, &qword_10002F788);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FB0, &qword_10002F788);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_100005C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FB8, &qword_10002F790);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100015FF0(v24, &qword_100040FB8, &qword_10002F790);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040EA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FB8, &qword_10002F790);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FB8, &qword_10002F790);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FB8, &qword_10002F790);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FB8, &qword_10002F790);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_100006134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FC0, &qword_10002F798);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_100015FF0(v24, &qword_100040FC0, &qword_10002F798);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040E88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FC0, &qword_10002F798);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FC0, &qword_10002F798);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FC0, &qword_10002F798);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FC0, &qword_10002F798);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_10000662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_100040FC8, &qword_10002F7A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  sub_100001E9C(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_100016048();
  v32 = sub_1000020C8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_100015FF0(v12, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_100015FF0(v24, &qword_100040FC8, &qword_10002F7A0);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    }
  }

  sub_100013CE0(&qword_100040E68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
  v25 = v35;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_100040FC8, &qword_10002F7A0);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_100040FC8, &qword_10002F7A0);
    v26 = v22;
    return sub_100015FF0(v26, &qword_100040FC8, &qword_10002F7A0);
  }

  sub_1000155F0();
  if (v32 != 1)
  {
    sub_10002C988();
  }

  v28 = v33;
  sub_100015FF0(v24, &qword_100040FC8, &qword_10002F7A0);
  v29 = v31;
  sub_100015FF0(v31, &qword_100040F88, &qword_10002F760);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29, 0, 1, v28);
}

uint64_t sub_100006B88()
{
  sub_1000184EC();
  v3 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  sub_1000187F8(v3);
  v5 = *(v4 + 64);
  sub_1000187CC();
  __chkstk_darwin(v6);
  sub_100018B30();
  sub_100018BB0();
  sub_100016048();
  v7 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v0, 1, v7) != 1)
  {
    sub_100018A40();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v30 = sub_1000184D4();
        sub_100006F68(v30, v31, v32, v33);
        goto LABEL_12;
      case 2u:
        v16 = sub_1000184D4();
        sub_10000717C(v16, v17, v18, v19);
        goto LABEL_12;
      case 3u:
        v20 = sub_1000184D4();
        sub_100007390(v20, v21, v22, v23);
        goto LABEL_12;
      case 4u:
        v12 = sub_1000184D4();
        sub_1000075A4(v12, v13, v14, v15);
        goto LABEL_12;
      case 5u:
        v34 = sub_1000184D4();
        sub_1000077B8(v34, v35, v36, v37);
        goto LABEL_12;
      case 6u:
        v38 = sub_1000184D4();
        sub_1000079CC(v38, v39, v40, v41);
        goto LABEL_12;
      case 7u:
        v24 = sub_1000184D4();
        sub_100007BE0(v24, v25, v26, v27);
        if (v1)
        {
          sub_1000184A0();
          return sub_100015598(v0, v28);
        }

        sub_1000184A0();
        sub_100015598(v0, v45);
        break;
      default:
        v8 = sub_1000184D4();
        sub_100006D58(v8, v9, v10, v11);
LABEL_12:
        sub_1000184A0();
        result = sub_100015598(v0, v42);
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v43 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  if (!*(v2 + *(v43 + 20)) || (sub_100018694(), result = sub_10002CAE8(), !v1))
  {
    v44 = *(v43 + 24);
    return sub_100018670();
  }

  return result;
}

uint64_t sub_100006D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040F48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040F28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040F08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_100007390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040EE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000075A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040EC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000077B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040EA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000079CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040E88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

uint64_t sub_100007BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016048();
  v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  if (sub_1000020C8(v7, 1, v12) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040F88, &qword_10002F760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040E68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  }

  __break(1u);
  return result;
}

void sub_100007DF4()
{
  sub_100018A4C();
  sub_10001881C();
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v5 = sub_100018638(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100018660();
  v10 = v9 - v8;
  v11 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  sub_1000187F8(v11);
  v13 = *(v12 + 64);
  sub_1000187CC();
  __chkstk_darwin(v14);
  sub_100018B40();
  v15 = sub_100001DE4(&qword_100040FE0, &qword_10002F7B8);
  sub_1000187F8(v15);
  v17 = *(v16 + 64);
  sub_1000187CC();
  __chkstk_darwin(v18);
  sub_100018A18();
  v20 = *(v19 + 56);
  sub_100016048();
  sub_100016048();
  sub_100018828(v2);
  if (v21)
  {
    sub_100018828(v2 + v20);
    if (v21)
    {
      sub_100015FF0(v2, &qword_100040F88, &qword_10002F760);
      goto LABEL_11;
    }

LABEL_9:
    sub_100015FF0(v2, &qword_100040FE0, &qword_10002F7B8);
LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  sub_100018C54();
  sub_100016048();
  sub_100018828(v2 + v20);
  if (v21)
  {
    sub_1000184A0();
    sub_100015598(v3, v22);
    goto LABEL_9;
  }

  sub_1000188B4();
  sub_1000155F0();
  sub_100002990();
  v24 = v23;
  sub_100015598(v10, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  sub_100015598(v3, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
  sub_100015FF0(v2, &qword_100040F88, &qword_10002F760);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  if (*(v1 + *(v25 + 20)) != *(v0 + *(v25 + 20)))
  {
    goto LABEL_13;
  }

  v26 = *(v25 + 24);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v27, v28);
  v29 = sub_1000186D0();
LABEL_14:
  sub_100018A94(v29);
  sub_100018A64();
}

uint64_t (*sub_100008080(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1000080DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100040F80, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100008180(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040F68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100008248()
{
  sub_100013CE0(&qword_100040F68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);

  return sub_10002CA78();
}

BOOL sub_1000082E4(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t (*sub_100008390(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1000083E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041078, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100008480(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040F48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100008548()
{
  sub_100013CE0(&qword_100040F48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted);

  return sub_10002CA78();
}

uint64_t sub_1000085F4()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049870);
  sub_10000219C(v0, qword_100049870);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "webpageViewIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "systemLocale";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "currentCountry";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "build";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "osType";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "productType";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "buildType";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "duEnabled";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "searchBarPosition";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "prefixStoreVersion";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "trialExperiment";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_1000089E0()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_100018738();
        sub_10002C9B8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 10:
        sub_1000187C0();
        sub_10002C9D8();
        break;
      case 7:
        sub_1000185A8();
        sub_100008AF8();
        break;
      case 8:
        sub_1000187C0();
        sub_10002C998();
        break;
      case 9:
        sub_1000185A8();
        sub_100008B60();
        break;
      case 11:
        sub_1000185A8();
        sub_100008BC8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_100008BC8()
{
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0);
  sub_100013CE0(&qword_100040E48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);
  return sub_10002CA08();
}

uint64_t sub_100008C68()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = *(v2 + 8);
  v5 = sub_100018A40();
  if (sub_1000082E4(v5, v6) || (sub_100018A40(), sub_10001854C(), result = sub_10002CAA8(), !v1))
  {
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    sub_1000185BC();
    if (!v10 || (sub_100018594(), result = sub_10002CAC8(), !v1))
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      sub_1000185BC();
      if (!v13 || (sub_100018594(), result = sub_10002CAC8(), !v1))
      {
        v14 = *(v2 + 48);
        v15 = *(v2 + 56);
        sub_1000185BC();
        if (!v16 || (sub_100018594(), result = sub_10002CAC8(), !v1))
        {
          v17 = *(v2 + 64);
          v18 = *(v2 + 72);
          sub_1000185BC();
          if (!v19 || (sub_100018594(), result = sub_10002CAC8(), !v1))
          {
            v20 = *(v2 + 80);
            v21 = *(v2 + 88);
            sub_1000185BC();
            if (!v22 || (sub_100018594(), result = sub_10002CAC8(), !v1))
            {
              if (!*(v2 + 96) || (v23 = *(v2 + 104), sub_1000189AC(), sub_100015F48(), sub_1000185F8(), result = sub_10002CA98(), !v1))
              {
                if (*(v2 + 105) != 1 || (sub_100018694(), result = sub_10002CA88(), !v1))
                {
                  if (!*(v2 + 112) || (v24 = *(v2 + 120), sub_1000189AC(), sub_100015F9C(), sub_1000185F8(), result = sub_10002CA98(), !v1))
                  {
                    v25 = *(v2 + 128);
                    v26 = *(v2 + 136);
                    sub_1000185BC();
                    if (!v27 || (sub_100018594(), result = sub_10002CAC8(), !v1))
                    {
                      if (!*(*(v2 + 144) + 16) || (type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0), sub_100013CE0(&qword_100040E48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment), sub_1000185F8(), result = sub_10002CAF8(), !v1))
                      {
                        v28 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0) + 60);
                        return sub_100018670();
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
  }

  return result;
}

uint64_t sub_100008EA8(uint64_t *a1, uint64_t *a2)
{
  sub_100018648(a1, a2);
  if ((sub_10002C798() & 1) == 0)
  {
    return 0;
  }

  sub_1000189E8();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v7 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v8 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 64) == *(v2 + 64) && *(v3 + 72) == *(v2 + 72);
  if (!v9 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 80) == *(v2 + 80) && *(v3 + 88) == *(v2 + 88);
  if (!v10 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 104);
  if (!sub_1000156B8(*(v3 + 96), *(v3 + 104), *(v2 + 96)))
  {
    return 0;
  }

  if (*(v3 + 105) != *(v2 + 105))
  {
    return 0;
  }

  v12 = *(v2 + 120);
  if (!sub_1000156B8(*(v3 + 112), *(v3 + 120), *(v2 + 112)))
  {
    return 0;
  }

  v13 = *(v3 + 128) == *(v2 + 128) && *(v3 + 136) == *(v2 + 136);
  if (!v13 && (sub_10002CF08() & 1) == 0 || (sub_100015B40(*(v3 + 144), *(v2 + 144)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0) + 60);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v15, v16);
  return sub_1000186D0() & 1;
}

uint64_t sub_10000904C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000090C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100009134(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_100009188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041080, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100009228(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040F28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000092F0()
{
  sub_100013CE0(&qword_100040F28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);

  return sub_10002CA78();
}

uint64_t sub_100009388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  switch(v7 >> 62)
  {
    case 1uLL:
      v9 = v6;
      v10 = v6 >> 32;
      goto LABEL_6;
    case 2uLL:
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
LABEL_6:
      if (v9 != v10)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_10001854C();
      result = sub_10002CAA8();
      if (!v5)
      {
LABEL_8:
        v12 = *(a4(0) + 20);
        return sub_100018670();
      }

      return result;
  }
}

uint64_t sub_1000094F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041098, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100009590(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040F08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100009658()
{
  sub_100013CE0(&qword_100040F08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed);

  return sub_10002CA78();
}

uint64_t sub_10000971C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  sub_100018648(a1, a2);
  if ((sub_10002C798() & 1) == 0)
  {
    return 0;
  }

  v4 = a3(0);
  sub_100018C1C(v4);
  sub_100018488();
  sub_100013CE0(v5, v6);
  return sub_1000186D0() & 1;
}

uint64_t sub_10000980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410A0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000098AC(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040EE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100009974()
{
  sub_100013CE0(&qword_100040EE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible);

  return sub_10002CA78();
}

uint64_t sub_100009A20()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_1000498B8);
  sub_10000219C(v0, qword_1000498B8);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "webpageViewIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_100009BE8()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1000187C0();
      sub_10002C9D8();
    }

    else if (result == 1)
    {
      sub_100018738();
      sub_10002C9B8();
    }
  }

  return result;
}

uint64_t sub_100009C4C()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = v2[1];
  v5 = sub_100018A40();
  if (sub_1000082E4(v5, v6) || (sub_100018A40(), sub_10001854C(), result = sub_10002CAA8(), !v1))
  {
    v8 = v2[2];
    v9 = v2[3];
    sub_1000185BC();
    if (!v10 || (sub_100018594(), result = sub_10002CAC8(), !v1))
    {
      v11 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0) + 24);
      return sub_100018670();
    }
  }

  return result;
}

uint64_t sub_100009CE4(uint64_t *a1, uint64_t *a2)
{
  sub_100018648(a1, a2);
  if ((sub_10002C798() & 1) == 0)
  {
    return 0;
  }

  sub_1000189E8();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0) + 24);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v6, v7);
  return sub_1000186D0() & 1;
}

uint64_t sub_100009DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410A8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100009E68(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040EC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100009F30()
{
  sub_100013CE0(&qword_100040EC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);

  return sub_10002CA78();
}

uint64_t sub_100009FB0()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_1000498D0);
  sub_10000219C(v0, qword_1000498D0);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "webpageViewIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "started";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ended";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "failed";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10000A230()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_100018738();
        sub_10002C9B8();
        break;
      case 2:
        sub_1000187C0();
        sub_10002C9D8();
        break;
      case 3:
        v7 = sub_1000185D0();
        sub_10000A2F4(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_1000185D0();
        sub_10000A7F8(v11, v12, v13, v14);
        break;
      case 5:
        v3 = sub_1000185D0();
        sub_10000ACFC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10000A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_1000410B8, &qword_10002F848);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_100001E9C(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  v32 = a1;
  sub_100016048();
  v33 = sub_1000020C8(v12, 1, v13);
  v34 = v13;
  if (v33 == 1)
  {
    sub_100015FF0(v12, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
    }

    else
    {
      sub_100015FF0(v24, &qword_1000410B8, &qword_10002F848);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }
  }

  sub_100013CE0(&qword_100040D88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);
  v25 = v36;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_1000410B8, &qword_10002F848);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_1000410B8, &qword_10002F848);
    v26 = v22;
    return sub_100015FF0(v26, &qword_1000410B8, &qword_10002F848);
  }

  sub_1000155F0();
  if (v33 != 1)
  {
    sub_10002C988();
  }

  v28 = v34;
  sub_100015FF0(v24, &qword_1000410B8, &qword_10002F848);
  v30 = v31;
  v29 = v32;
  sub_100015FF0(v32 + v31, &qword_100040FF8, &qword_10002F7C8);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29 + v30, 0, 1, v28);
}

uint64_t sub_10000A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_1000410C0, &qword_10002F850);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_100001E9C(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  v32 = a1;
  sub_100016048();
  v33 = sub_1000020C8(v12, 1, v13);
  v34 = v13;
  if (v33 == 1)
  {
    sub_100015FF0(v12, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100015FF0(v24, &qword_1000410C0, &qword_10002F850);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
    }
  }

  sub_100013CE0(&qword_100040D68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
  v25 = v36;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_1000410C0, &qword_10002F850);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_1000410C0, &qword_10002F850);
    v26 = v22;
    return sub_100015FF0(v26, &qword_1000410C0, &qword_10002F850);
  }

  sub_1000155F0();
  if (v33 != 1)
  {
    sub_10002C988();
  }

  v28 = v34;
  sub_100015FF0(v24, &qword_1000410C0, &qword_10002F850);
  v30 = v31;
  v29 = v32;
  sub_100015FF0(v32 + v31, &qword_100040FF8, &qword_10002F7C8);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29 + v30, 0, 1, v28);
}

uint64_t sub_10000ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_1000410C8, &qword_10002F858);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_100001E9C(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  v32 = a1;
  sub_100016048();
  v33 = sub_1000020C8(v12, 1, v13);
  v34 = v13;
  if (v33 == 1)
  {
    sub_100015FF0(v12, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100015FF0(v24, &qword_1000410C8, &qword_10002F858);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
    }
  }

  sub_100013CE0(&qword_100040D28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);
  v25 = v36;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_1000410C8, &qword_10002F858);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_1000410C8, &qword_10002F858);
    v26 = v22;
    return sub_100015FF0(v26, &qword_1000410C8, &qword_10002F858);
  }

  sub_1000155F0();
  if (v33 != 1)
  {
    sub_10002C988();
  }

  v28 = v34;
  sub_100015FF0(v24, &qword_1000410C8, &qword_10002F858);
  v30 = v31;
  v29 = v32;
  sub_100015FF0(v32 + v31, &qword_100040FF8, &qword_10002F7C8);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29 + v30, 0, 1, v28);
}

uint64_t sub_10000B200()
{
  sub_1000184EC();
  v3 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  sub_1000187F8(v3);
  v5 = *(v4 + 64);
  sub_1000187CC();
  __chkstk_darwin(v6);
  if (sub_100018AC4() || (sub_10001854C(), result = sub_10002CAA8(), !v0))
  {
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    sub_1000185BC();
    if (!v10 || (sub_100018594(), result = sub_10002CAC8(), !v0))
    {
      v11 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
      v12 = *(v11 + 24);
      sub_100016048();
      v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
      if (sub_1000020C8(v2, 1, v13) == 1)
      {
        goto LABEL_12;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v15 = sub_1000184D4();
          sub_10000B57C(v15, v16, v17, v18);
        }

        else
        {
          v23 = sub_1000184D4();
          sub_10000B79C(v23, v24, v25, v26);
        }
      }

      else
      {
        v19 = sub_1000184D4();
        sub_10000B360(v19, v20, v21, v22);
      }

      sub_100018534();
      result = sub_100015598(v2, v27);
      if (!v0)
      {
LABEL_12:
        v28 = *(v11 + 28);
        return sub_100018670();
      }
    }
  }

  return result;
}

uint64_t sub_10000B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  sub_100016048();
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  if (sub_1000020C8(v7, 1, v13) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040D88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  sub_100016048();
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  if (sub_1000020C8(v7, 1, v13) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040D68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0) + 24);
  sub_100016048();
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  if (sub_1000020C8(v7, 1, v13) == 1)
  {
    result = sub_100015FF0(v7, &qword_100040FF8, &qword_10002F7C8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040D28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
  }

  __break(1u);
  return result;
}

void sub_10000B9BC()
{
  sub_100018A4C();
  sub_10001881C();
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
  v5 = sub_100018638(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100018660();
  v10 = v9 - v8;
  v11 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  sub_1000187F8(v11);
  v13 = *(v12 + 64);
  sub_1000187CC();
  __chkstk_darwin(v14);
  sub_100018B40();
  v15 = sub_100001DE4(&qword_100041000, &qword_10002F7D0);
  sub_100018638(v15);
  v17 = *(v16 + 64);
  sub_1000187CC();
  __chkstk_darwin(v18);
  sub_100018A18();
  v19 = *v1;
  v20 = v1[1];
  v21 = *v0;
  v22 = v0[1];
  if ((sub_10002C798() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000189E8();
  v25 = v25 && v23 == v24;
  if (!v25 && (sub_10002CF08() & 1) == 0)
  {
    goto LABEL_16;
  }

  v36 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
  v26 = *(v36 + 24);
  v27 = *(v15 + 48);
  sub_100018BB0();
  sub_100016048();
  sub_100018BB0();
  sub_100016048();
  sub_100018828(v2);
  if (v25)
  {
    sub_100018828(v2 + v27);
    if (v25)
    {
      sub_100015FF0(v2, &qword_100040FF8, &qword_10002F7C8);
LABEL_19:
      v33 = *(v36 + 28);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v34, v35);
      v30 = sub_1000186D0();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_100018C54();
  sub_100016048();
  sub_100018828(v2 + v27);
  if (v28)
  {
    sub_100018534();
    sub_100015598(v3, v29);
LABEL_15:
    sub_100015FF0(v2, &qword_100041000, &qword_10002F7D0);
    goto LABEL_16;
  }

  sub_1000155F0();
  sub_100003450();
  v32 = v31;
  sub_100015598(v10, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
  sub_100015598(v3, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
  sub_100015FF0(v2, &qword_100040FF8, &qword_10002F7C8);
  if (v32)
  {
    goto LABEL_19;
  }

LABEL_16:
  v30 = 0;
LABEL_17:
  sub_100018A94(v30);
  sub_100018A64();
}

uint64_t (*sub_10000BC78(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_10000BCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410B0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000BD6C(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040EA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000BE34()
{
  sub_100013CE0(&qword_100040EA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext);

  return sub_10002CA78();
}

uint64_t sub_10000BEB4()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_1000498E8);
  sub_10000219C(v0, qword_1000498E8);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "webpageViewIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visualComponent";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "started";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ended";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10000C0F8()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_100018738();
        sub_10002C9B8();
        break;
      case 2:
        sub_100018974();
        v11 = sub_1000185A8();
        sub_10000DAF0(v11, v12, v13, v14, v15);
        break;
      case 3:
        v3 = sub_1000185D0();
        sub_10000C1A8(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_1000185D0();
        sub_10000C6AC(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10000C1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_1000410D8, &qword_10002F860);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_100001E9C(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0) + 20);
  v32 = a1;
  sub_100016048();
  v33 = sub_1000020C8(v12, 1, v13);
  v34 = v13;
  if (v33 == 1)
  {
    sub_100015FF0(v12, &qword_100041020, &qword_10002F7F0);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent);
    }

    else
    {
      sub_100015FF0(v24, &qword_1000410D8, &qword_10002F860);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }
  }

  sub_100013CE0(&qword_100040E28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);
  v25 = v36;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_1000410D8, &qword_10002F860);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_1000410D8, &qword_10002F860);
    v26 = v22;
    return sub_100015FF0(v26, &qword_1000410D8, &qword_10002F860);
  }

  sub_1000155F0();
  if (v33 != 1)
  {
    sub_10002C988();
  }

  v28 = v34;
  sub_100015FF0(v24, &qword_1000410D8, &qword_10002F860);
  v30 = v31;
  v29 = v32;
  sub_100015FF0(v32 + v31, &qword_100041020, &qword_10002F7F0);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29 + v30, 0, 1, v28);
}

uint64_t sub_10000C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100001DE4(&qword_1000410E0, &qword_10002F868);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_100001E9C(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0) + 20);
  v32 = a1;
  sub_100016048();
  v33 = sub_1000020C8(v12, 1, v13);
  v34 = v13;
  if (v33 == 1)
  {
    sub_100015FF0(v12, &qword_100041020, &qword_10002F7F0);
  }

  else
  {
    sub_1000155F0();
    sub_1000155F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100015FF0(v24, &qword_1000410E0, &qword_10002F868);
      sub_1000155F0();
      sub_1000155F0();
      sub_100001E9C(v24, 0, 1, v5);
    }

    else
    {
      sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent);
    }
  }

  sub_100013CE0(&qword_100040E08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);
  v25 = v36;
  sub_10002CA18();
  if (v25)
  {
    v26 = v24;
    return sub_100015FF0(v26, &qword_1000410E0, &qword_10002F868);
  }

  sub_100016048();
  if (sub_1000020C8(v22, 1, v5) == 1)
  {
    sub_100015FF0(v24, &qword_1000410E0, &qword_10002F868);
    v26 = v22;
    return sub_100015FF0(v26, &qword_1000410E0, &qword_10002F868);
  }

  sub_1000155F0();
  if (v33 != 1)
  {
    sub_10002C988();
  }

  v28 = v34;
  sub_100015FF0(v24, &qword_1000410E0, &qword_10002F868);
  v30 = v31;
  v29 = v32;
  sub_100015FF0(v32 + v31, &qword_100041020, &qword_10002F7F0);
  sub_1000155F0();
  swift_storeEnumTagMultiPayload();
  return sub_100001E9C(v29 + v30, 0, 1, v28);
}

uint64_t sub_10000CBB0()
{
  sub_1000184EC();
  v2 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  sub_1000187F8(v2);
  v4 = *(v3 + 64);
  sub_1000187CC();
  __chkstk_darwin(v5);
  if (sub_100018AC4() || (sub_10001854C(), result = sub_10002CAA8(), !v0))
  {
    sub_100018974();
    v7 = sub_1000184D4();
    result = sub_10000DD94(v7, v8, v9, v10, v11);
    if (!v0)
    {
      v12 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
      v13 = *(v12 + 20);
      sub_100016048();
      v14 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
      if (sub_1000020C8(v1, 1, v14) != 1)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_1000184D4();
          sub_10000CF14(v15, v16, v17, v18);
        }

        else
        {
          v19 = sub_1000184D4();
          sub_10000CCF4(v19, v20, v21, v22);
        }

        sub_100018620();
        sub_100015598(v1, v23);
      }

      v24 = *(v12 + 24);
      return sub_100018670();
    }
  }

  return result;
}

uint64_t sub_10000CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0) + 20);
  sub_100016048();
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  if (sub_1000020C8(v7, 1, v13) == 1)
  {
    result = sub_100015FF0(v7, &qword_100041020, &qword_10002F7F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040E28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0) + 20);
  sub_100016048();
  v13 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  if (sub_1000020C8(v7, 1, v13) == 1)
  {
    result = sub_100015FF0(v7, &qword_100041020, &qword_10002F7F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000155F0();
      sub_100013CE0(&qword_100040E08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);
      sub_10002CB08();
      return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);
    }

    result = sub_100015598(v7, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent);
  }

  __break(1u);
  return result;
}

void sub_10000D134()
{
  sub_100018A4C();
  v4 = v3;
  v6 = v5;
  v72 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
  v7 = sub_100018638(v72);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100018660();
  v12 = v11 - v10;
  v13 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  sub_1000187F8(v13);
  v15 = *(v14 + 64);
  sub_1000187CC();
  __chkstk_darwin(v16);
  sub_100018BE0();
  v71 = v17;
  v18 = sub_100001DE4(&qword_100041028, &qword_10002F7F8);
  sub_100018638(v18);
  v20 = *(v19 + 64);
  sub_1000187CC();
  __chkstk_darwin(v21);
  sub_100018A18();
  v22 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  v23 = sub_100018638(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100018660();
  sub_100018C48();
  v26 = sub_100001DE4(&qword_100041030, &qword_10002F800);
  sub_1000187F8(v26);
  v28 = *(v27 + 64);
  sub_1000187CC();
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  v32 = sub_100001DE4(&qword_100041038, &qword_10002F808);
  sub_100018638(v32);
  v34 = *(v33 + 64);
  sub_1000187CC();
  __chkstk_darwin(v35);
  sub_100018B10();
  v36 = *v6;
  v37 = v6[1];
  v38 = *v4;
  v39 = v4[1];
  if ((sub_10002C798() & 1) == 0)
  {
    goto LABEL_22;
  }

  v68 = v12;
  v40 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
  v73 = v4;
  v41 = *(v40 + 28);
  v42 = *(v32 + 48);
  v69 = v40;
  v70 = v6;
  sub_100018C8C();
  sub_100018C8C();
  sub_100018748(v2);
  if (v43)
  {
    sub_100018748(v2 + v42);
    if (v43)
    {
      sub_100015FF0(v2, &qword_100041030, &qword_10002F800);
      goto LABEL_12;
    }

LABEL_10:
    v45 = &qword_100041038;
    v46 = &qword_10002F808;
    v47 = v2;
LABEL_21:
    sub_100015FF0(v47, v45, v46);
    goto LABEL_22;
  }

  sub_100016048();
  sub_100018748(v2 + v42);
  if (v43)
  {
    sub_100018720();
    sub_100015598(v31, v44);
    goto LABEL_10;
  }

  sub_100018914();
  sub_1000155F0();
  sub_100010144();
  v49 = v48;
  sub_10001892C();
  sub_100015598(v1, v50);
  v51 = sub_100018804();
  sub_100015598(v51, v52);
  sub_100015FF0(v2, &qword_100041030, &qword_10002F800);
  if ((v49 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v53 = v69;
  v54 = *(v69 + 20);
  v55 = *(v18 + 48);
  sub_100016048();
  sub_100016048();
  sub_100018854(v0, 1, v72);
  if (v43)
  {
    sub_100018748(v0 + v55);
    if (v43)
    {
      sub_100015FF0(v0, &qword_100041020, &qword_10002F7F0);
LABEL_25:
      v65 = *(v53 + 24);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v66, v67);
      v59 = sub_10002CBA8();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v56 = v71;
  sub_100016048();
  sub_100018748(v0 + v55);
  if (v57)
  {
    sub_100018620();
    sub_100015598(v56, v58);
LABEL_20:
    v45 = &qword_100041028;
    v46 = &qword_10002F7F8;
    v47 = v0;
    goto LABEL_21;
  }

  v60 = v68;
  sub_1000155F0();
  sub_1000039F4();
  v62 = v61;
  sub_100015598(v60, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent);
  v63 = sub_100018804();
  sub_100015598(v63, v64);
  sub_100015FF0(v0, &qword_100041020, &qword_10002F7F0);
  if (v62)
  {
    goto LABEL_25;
  }

LABEL_22:
  v59 = 0;
LABEL_23:
  sub_100018A94(v59);
  sub_100018A64();
}

uint64_t sub_10000D614(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410D0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000D6B4(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040E88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D77C()
{
  sub_100013CE0(&qword_100040E88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext);

  return sub_10002CA78();
}

uint64_t sub_10000D7FC()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049900);
  sub_10000219C(v0, qword_100049900);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "webpageViewIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visualComponent";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "userInteractionType";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "visualComponentInteractionInfo";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10000DA40()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_100018738();
        sub_10002C9B8();
        break;
      case 2:
        sub_1000188FC();
        v3 = sub_1000185A8();
        sub_10000DAF0(v3, v4, v5, v6, v7);
        break;
      case 3:
        sub_1000185A8();
        sub_10000DB98();
        break;
      case 4:
        sub_1000185A8();
        sub_10000DC00();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10000DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  sub_1000188E4();
  sub_100013CE0(v6, v7);
  return sub_10002CA18();
}

uint64_t sub_10000DC00()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0) + 32);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0);
  sub_100013CE0(&qword_100040D08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
  return sub_10002CA18();
}

uint64_t sub_10000DCB4()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = *(v2 + 8);
  v5 = sub_100018A40();
  if (sub_1000082E4(v5, v6) || (sub_100018A40(), sub_10001854C(), result = sub_10002CAA8(), !v1))
  {
    sub_1000188FC();
    v8 = sub_1000184D4();
    result = sub_10000DD94(v8, v9, v10, v11, v12);
    if (!v1)
    {
      if (*(v2 + 16))
      {
        v13 = *(v2 + 24);
        sub_1000189AC();
        sub_1000160A0();
        sub_1000185F8();
        sub_10002CA98();
      }

      v14 = sub_1000184D4();
      sub_10000DF44(v14, v15, v16, v17);
      v18 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0) + 24);
      return sub_100018670();
    }
  }

  return result;
}

uint64_t sub_10000DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v26[3] = a4;
  v26[1] = a3;
  v6 = sub_100018C54();
  v8 = sub_100001DE4(v6, v7);
  sub_1000187F8(v8);
  v10 = *(v9 + 64);
  sub_1000187CC();
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  v15 = sub_100018638(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100018660();
  v20 = v19 - v18;
  v21 = *(a5(0) + 28);
  sub_100016048();
  if (sub_1000020C8(v13, 1, v14) == 1)
  {
    return sub_100015FF0(v13, &qword_100041030, &qword_10002F800);
  }

  sub_1000155F0();
  sub_1000188E4();
  sub_100013CE0(v23, v24);
  sub_10002CB08();
  sub_100018720();
  return sub_100015598(v20, v25);
}

uint64_t sub_10000DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100041068, &qword_10002F838);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0) + 32);
  sub_100016048();
  if (sub_1000020C8(v7, 1, v8) == 1)
  {
    return sub_100015FF0(v7, &qword_100041068, &qword_10002F838);
  }

  sub_1000155F0();
  sub_100013CE0(&qword_100040D08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
  sub_10002CB08();
  return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
}

void sub_10000E124()
{
  sub_100018A4C();
  v4 = v3;
  v6 = v5;
  v81 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0);
  v7 = sub_100018638(v81);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100018660();
  v12 = v11 - v10;
  v13 = sub_100001DE4(&qword_100041068, &qword_10002F838);
  sub_1000187F8(v13);
  v15 = *(v14 + 64);
  sub_1000187CC();
  __chkstk_darwin(v16);
  sub_100018BE0();
  v80 = v17;
  v18 = sub_100001DE4(&qword_100041070, &qword_10002F840);
  sub_100018638(v18);
  v20 = *(v19 + 64);
  sub_1000187CC();
  __chkstk_darwin(v21);
  sub_100018B30();
  v22 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  v23 = sub_100018638(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100018660();
  sub_100018C48();
  v26 = sub_100001DE4(&qword_100041030, &qword_10002F800);
  sub_1000187F8(v26);
  v28 = *(v27 + 64);
  sub_1000187CC();
  __chkstk_darwin(v29);
  v31 = &v77 - v30;
  v32 = sub_100001DE4(&qword_100041038, &qword_10002F808);
  sub_100018638(v32);
  v34 = *(v33 + 64);
  sub_1000187CC();
  __chkstk_darwin(v35);
  sub_100018B10();
  v36 = *v6;
  v37 = v6[1];
  v38 = *v4;
  v39 = v4[1];
  if ((sub_10002C798() & 1) == 0)
  {
    goto LABEL_35;
  }

  v77 = v12;
  v79 = v0;
  v40 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
  v82 = v4;
  v78 = v40;
  v41 = *(v40 + 28);
  v42 = *(v32 + 48);
  sub_100016048();
  v43 = v82;
  sub_100016048();
  sub_100018854(v2, 1, v22);
  if (v44)
  {
    sub_100018854(v2 + v42, 1, v22);
    if (v44)
    {
      sub_100015FF0(v2, &qword_100041030, &qword_10002F800);
      goto LABEL_12;
    }

LABEL_10:
    v46 = &qword_100041038;
    v47 = &qword_10002F808;
    v48 = v2;
LABEL_34:
    sub_100015FF0(v48, v46, v47);
    goto LABEL_35;
  }

  sub_100016048();
  sub_100018854(v2 + v42, 1, v22);
  if (v44)
  {
    sub_100018720();
    sub_100015598(v31, v45);
    goto LABEL_10;
  }

  sub_100018914();
  sub_1000155F0();
  sub_100010144();
  v50 = v49;
  sub_10001892C();
  sub_100015598(v1, v51);
  v52 = sub_100018804();
  sub_100015598(v52, v53);
  sub_100015FF0(v2, &qword_100041030, &qword_10002F800);
  if ((v50 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v54 = *(v43 + 24);
  if (!sub_1000156B8(v6[2], *(v6 + 24), v43[2]))
  {
LABEL_35:
    v64 = 0;
    goto LABEL_36;
  }

  v56 = v78;
  v55 = v79;
  v57 = *(v78 + 32);
  v58 = *(v18 + 48);
  sub_100016048();
  v59 = v55;
  sub_100016048();
  v60 = v81;
  sub_100018854(v55, 1, v81);
  if (v44)
  {
    sub_1000187A0(v55 + v58);
    if (v44)
    {
      sub_100015FF0(v55, &qword_100041068, &qword_10002F838);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v65 = v80;
  sub_100016048();
  sub_1000187A0(v55 + v58);
  if (v66)
  {
    sub_100015598(v65, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
LABEL_22:
    v46 = &qword_100041070;
    v47 = &qword_10002F840;
LABEL_33:
    v48 = v59;
    goto LABEL_34;
  }

  v67 = v77;
  sub_1000155F0();
  v68 = *v65 == *v67 && *(v65 + 8) == *(v67 + 8);
  if (!v68 && (sub_10002CF08() & 1) == 0 || *(v65 + 16) != *(v67 + 16) || (v69 = *(v67 + 32), !sub_1000156B8(*(v65 + 24), *(v65 + 32), *(v67 + 24))))
  {
    sub_100015598(v67, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
    sub_100015598(v65, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
    v46 = &qword_100041068;
    v47 = &qword_10002F838;
    goto LABEL_33;
  }

  v70 = *(v60 + 28);
  sub_10002C918();
  v71 = v59;
  sub_100018488();
  sub_100013CE0(v72, v73);
  v74 = sub_10002CBA8();
  sub_100015598(v67, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);
  v75 = sub_100018804();
  sub_100015598(v75, v76);
  sub_100015FF0(v71, &qword_100041068, &qword_10002F838);
  if ((v74 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v61 = *(v56 + 24);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v62, v63);
  v64 = sub_10002CBA8();
LABEL_36:
  sub_100018A94(v64);
  sub_100018A64();
}

uint64_t sub_10000E720(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410E8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000E7C0(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040E68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E888()
{
  sub_100013CE0(&qword_100040E68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);

  return sub_10002CA78();
}

uint64_t sub_10000E908()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049918);
  sub_10000219C(v0, qword_100049918);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "experimentNamespace";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experimentId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatmentId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deploymentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "allocationStatus";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CompatibilityVersion";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10000EBC8()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        sub_1000187C0();
        sub_10002C9D8();
        break;
      case 4:
        sub_1000187C0();
        sub_10002C9C8();
        break;
      case 5:
        sub_1000185A8();
        sub_10000EC98();
        break;
      case 6:
        sub_1000187C0();
        sub_10002C9E8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10000ED00()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = v0[1];
  sub_1000185BC();
  if (!v5 || (sub_10001854C(), result = sub_10002CAC8(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_1000185BC();
    if (!v9 || (sub_100018594(), result = sub_10002CAC8(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      sub_1000185BC();
      if (!v12 || (sub_100018594(), result = sub_10002CAC8(), !v1))
      {
        if (!*(v2 + 48) || (sub_100018694(), result = sub_10002CAB8(), !v1))
        {
          if (!*(v2 + 56) || (v13 = *(v2 + 64), sub_1000189AC(), sub_1000160F4(), sub_1000185F8(), result = sub_10002CA98(), !v1))
          {
            if (!*(v2 + 68) || (sub_100018694(), result = sub_10002CAD8(), !v1))
            {
              v14 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0) + 40);
              return sub_100018670();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000EE1C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100018648(a1, a2);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  sub_1000189E8();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v12 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v13 = *(v2 + 64);
  if (!sub_1000156B8(*(v3 + 56), *(v3 + 64), *(v2 + 56)) || *(v3 + 68) != *(v2 + 68))
  {
    return 0;
  }

  v14 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0) + 40);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v15, v16);
  return sub_1000186D0() & 1;
}

uint64_t sub_10000EF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000EFAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10000F020(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_10000F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_1000410F8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000F114(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040E48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F1DC()
{
  sub_100013CE0(&qword_100040E48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);

  return sub_10002CA78();
}

uint64_t sub_10000F2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041108, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000F388(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040E28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F450()
{
  sub_100013CE0(&qword_100040E28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted);

  return sub_10002CA78();
}

uint64_t sub_10000F57C()
{
  sub_10001881C();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v1 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v1 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v1)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v1 != v3)
  {
    return 0;
  }

LABEL_6:
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded(0);
  sub_100018C1C(v5);
  sub_100018488();
  sub_100013CE0(v6, v7);
  return sub_1000186D0() & 1;
}

uint64_t sub_10000F718(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041110, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000F7B8(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040E08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F880()
{
  sub_100013CE0(&qword_100040E08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded);

  return sub_10002CA78();
}

uint64_t sub_10000F900()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049960);
  sub_10000219C(v0, qword_100049960);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visualComponentAttribute";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visualComponentData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10000FB08()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100018738();
        sub_10002C9F8();
        break;
      case 2:
        sub_1000185A8();
        sub_10000FC34();
        break;
      case 1:
        sub_1000185A8();
        sub_10000FB80();
        break;
    }
  }

  return result;
}

uint64_t sub_10000FB80()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0) + 24);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0);
  sub_100013CE0(&qword_100040DC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
  return sub_10002CA18();
}

uint64_t sub_10000FC34()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0) + 28);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0);
  sub_100013CE0(&qword_100040DA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
  return sub_10002CA18();
}

uint64_t sub_10000FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FD84(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = sub_1000184D4();
    sub_10000FF64(v6, v7, v8, v9);
    if (*v3)
    {
      sub_100018694();
      sub_10002CAE8();
    }

    v10 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0) + 20);
    return sub_100018670();
  }

  return result;
}

uint64_t sub_10000FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100041050, &qword_10002F820);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0) + 24);
  sub_100016048();
  if (sub_1000020C8(v7, 1, v8) == 1)
  {
    return sub_100015FF0(v7, &qword_100041050, &qword_10002F820);
  }

  sub_1000155F0();
  sub_100013CE0(&qword_100040DC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
  sub_10002CB08();
  return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
}

uint64_t sub_10000FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100041040, &qword_10002F810);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0) + 28);
  sub_100016048();
  if (sub_1000020C8(v7, 1, v8) == 1)
  {
    return sub_100015FF0(v7, &qword_100041040, &qword_10002F810);
  }

  sub_1000155F0();
  sub_100013CE0(&qword_100040DA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
  sub_10002CB08();
  return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
}

void sub_100010144()
{
  sub_100018A4C();
  v4 = v3;
  v6 = v5;
  v54 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0);
  v7 = sub_100018638(v54);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10001860C();
  v50 = v10;
  v11 = sub_100001DE4(&qword_100041040, &qword_10002F810);
  sub_1000187F8(v11);
  v13 = *(v12 + 64);
  sub_1000187CC();
  __chkstk_darwin(v14);
  sub_100018BE0();
  v51 = v15;
  v52 = sub_100001DE4(&qword_100041048, &qword_10002F818);
  sub_100018638(v52);
  v17 = *(v16 + 64);
  sub_1000187CC();
  __chkstk_darwin(v18);
  sub_100018BE0();
  v55 = v19;
  v20 = sub_1000189B8();
  v21 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(v20);
  v22 = sub_100018638(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100018660();
  sub_100018C48();
  v25 = sub_100001DE4(&qword_100041050, &qword_10002F820);
  sub_1000187F8(v25);
  v27 = *(v26 + 64);
  sub_1000187CC();
  __chkstk_darwin(v28);
  sub_100018A08();
  v29 = (sub_100001DE4(&qword_100041058, &qword_10002F828) - 8);
  v30 = *(*v29 + 64);
  sub_1000187CC();
  __chkstk_darwin(v31);
  sub_100018B10();
  v53 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(0);
  v32 = v53[6];
  v33 = v29[14];
  sub_100018C8C();
  sub_100018C8C();
  sub_100018748(v2);
  if (v34)
  {
    sub_100018748(v2 + v33);
    if (v34)
    {
      sub_100015FF0(v2, &qword_100041050, &qword_10002F820);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_100041058;
    v36 = &qword_10002F828;
    v37 = v2;
LABEL_32:
    sub_100015FF0(v37, v35, v36);
    goto LABEL_33;
  }

  sub_100016048();
  sub_100018748(v2 + v33);
  if (v34)
  {
    sub_100015598(v0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
    goto LABEL_9;
  }

  sub_1000155F0();
  v38 = sub_100010E9C();
  sub_100015598(v1, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
  sub_100015598(v0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);
  sub_100015FF0(v2, &qword_100041050, &qword_10002F820);
  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  v39 = v53[7];
  v40 = *(v52 + 48);
  sub_100016048();
  sub_100016048();
  sub_100018854(v55, 1, v54);
  if (v34)
  {
    sub_1000187A0(v55 + v40);
    if (v34)
    {
      sub_100015FF0(v55, &qword_100041040, &qword_10002F810);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  sub_100016048();
  sub_1000187A0(v55 + v40);
  if (v45)
  {
    sub_100015598(v51, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
LABEL_21:
    v35 = &qword_100041048;
    v36 = &qword_10002F818;
LABEL_31:
    v37 = v55;
    goto LABEL_32;
  }

  sub_1000155F0();
  v46 = *v51 == *v50 && v51[1] == v50[1];
  if (!v46 && (sub_10002CF08() & 1) == 0 || v51[2] != v50[2])
  {
    sub_100015598(v50, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
    sub_100015598(v51, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
    v35 = &qword_100041040;
    v36 = &qword_10002F810;
    goto LABEL_31;
  }

  v47 = *(v54 + 24);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v48, v49);
  LOBYTE(v47) = sub_10002CBA8();
  sub_100015598(v50, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
  sub_100015598(v51, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);
  sub_100015FF0(v55, &qword_100041040, &qword_10002F810);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if (*v6 != *v4)
  {
LABEL_33:
    v44 = 0;
    goto LABEL_34;
  }

  v41 = v53[5];
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v42, v43);
  v44 = sub_100018C04();
LABEL_34:
  sub_100018A94(v44);
  sub_100018A64();
}

uint64_t sub_1000106F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041120, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100010794(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040DE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10001085C()
{
  sub_100013CE0(&qword_100040DE8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent);

  return sub_10002CA78();
}

uint64_t sub_1000108DC()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049978);
  sub_10000219C(v0, qword_100049978);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "componentType";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entityType";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "readerViewSectionType";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_100010B20()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1000185A8();
        sub_100010BCC();
        break;
      case 2:
        sub_1000185A8();
        sub_100010C34();
        break;
      case 3:
        sub_1000185A8();
        sub_100010C9C();
        break;
      case 4:
        sub_1000185A8();
        sub_100010D04();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_100010D6C()
{
  sub_1000184EC();
  if (!*v0 || (v3 = *(v2 + 8), sub_1000189AC(), sub_10001619C(), sub_1000185F8(), result = sub_10002CA98(), !v1))
  {
    if (!*(v2 + 16) || (v5 = *(v2 + 24), sub_1000189AC(), sub_1000161F0(), sub_1000185F8(), result = sub_10002CA98(), !v1))
    {
      if (!*(v2 + 32) || (v6 = *(v2 + 40), sub_1000189AC(), sub_100016244(), sub_1000185F8(), result = sub_10002CA98(), !v1))
      {
        if (!*(v2 + 48) || (v7 = *(v2 + 56), sub_1000189AC(), sub_100016298(), sub_1000185F8(), result = sub_10002CA98(), !v1))
        {
          v8 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0) + 32);
          return sub_100018670();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100010E9C()
{
  sub_10001881C();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v0 + 40);
  if (sub_1000156B8(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    v9 = *(v0 + 56);
    if (sub_1000156B8(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
    {
      v10 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0) + 32);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v11, v12);
      return sub_1000186D0() & 1;
    }
  }

  return 0;
}

uint64_t sub_100011020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100011094(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100011108(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_10001115C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041128, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000111FC(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040DC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000112C4()
{
  sub_100013CE0(&qword_100040DC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute);

  return sub_10002CA78();
}

uint64_t sub_100011344()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049990);
  sub_10000219C(v0, qword_100049990);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "summaryText";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tableOfContentsArrayLength";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001150C()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1000187C0();
      sub_10002C9F8();
    }

    else if (result == 1)
    {
      sub_100018738();
      sub_10002C9D8();
    }
  }

  return result;
}

uint64_t sub_100011570()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = v0[1];
  sub_1000185BC();
  if (!v5 || (sub_10001854C(), result = sub_10002CAC8(), !v1))
  {
    if (!*(v2 + 16) || (sub_100018694(), result = sub_10002CAE8(), !v1))
    {
      v7 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0) + 24);
      return sub_100018670();
    }
  }

  return result;
}

uint64_t sub_1000115F0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100018648(a1, a2);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_10002CF08() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(0) + 24);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v10, v11);
  return sub_1000186D0() & 1;
}

uint64_t sub_1000116AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_10002C918();
  sub_100018638(v2);
  v4 = *(v3 + 16);
  v5 = sub_100018B00();

  return v6(v5);
}

uint64_t sub_100011710(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_10002C918();
  sub_100018638(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_1000117AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041150, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10001184C(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040DA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100011914()
{
  sub_100013CE0(&qword_100040DA8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData);

  return sub_10002CA78();
}

uint64_t sub_1000119AC()
{
  sub_100018BBC();
  while (1)
  {
    result = sub_10002C978();
    if (v2 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v0(v1, v3, v5, v4);
    }
  }

  return result;
}

uint64_t sub_100011A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1000184EC();
  if (!*v6 || (v10 = *(v8 + 8), sub_1000189AC(), v11(), sub_1000185F8(), result = sub_10002CA98(), !v7))
  {
    v13 = *(a6(0) + 20);
    return sub_100018670();
  }

  return result;
}

uint64_t sub_100011B18()
{
  sub_10001881C();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted(0);
      sub_100018C1C(v4);
      sub_100018488();
      sub_100013CE0(v5, v6);
      return sub_1000186D0() & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_100011C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041158, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100011D24(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040D88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100011DEC()
{
  sub_100013CE0(&qword_100040D88, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted);

  return sub_10002CA78();
}

uint64_t sub_100011E6C()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_1000499C0);
  sub_10000219C(v0, qword_1000499C0);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serverReleaseVersion";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseData";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_100012034()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1000185A8();
      sub_100012094();
    }

    else if (result == 1)
    {
      sub_100018738();
      sub_10002C9D8();
    }
  }

  return result;
}

uint64_t sub_100012094()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0) + 24);
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  sub_100013CE0(&qword_100040D48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
  return sub_10002CA18();
}

uint64_t sub_100012148()
{
  sub_1000184EC();
  v2 = *v0;
  v3 = v0[1];
  sub_1000185BC();
  if (!v4 || (sub_10001854C(), result = sub_10002CAC8(), !v1))
  {
    v6 = sub_1000184D4();
    result = sub_1000121BC(v6, v7, v8, v9);
    if (!v1)
    {
      v10 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0) + 20);
      return sub_100018670();
    }
  }

  return result;
}

uint64_t sub_1000121BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_100001DE4(&qword_100041010, &qword_10002F7E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0) + 24);
  sub_100016048();
  if (sub_1000020C8(v7, 1, v8) == 1)
  {
    return sub_100015FF0(v7, &qword_100041010, &qword_10002F7E0);
  }

  sub_1000155F0();
  sub_100013CE0(&qword_100040D48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
  sub_10002CB08();
  return sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
}

void sub_10001239C()
{
  sub_100018A4C();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  v6 = sub_100018638(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100018660();
  v11 = (v10 - v9);
  v12 = sub_100001DE4(&qword_100041010, &qword_10002F7E0);
  sub_1000187F8(v12);
  v14 = *(v13 + 64);
  sub_1000187CC();
  __chkstk_darwin(v15);
  v17 = (&v37 - v16);
  v18 = sub_100001DE4(&qword_100041018, &qword_10002F7E8);
  sub_100018638(v18);
  v20 = *(v19 + 64);
  sub_1000187CC();
  __chkstk_darwin(v21);
  sub_100018A18();
  v22 = *v4 == *v2 && v4[1] == v2[1];
  if (!v22 && (sub_10002CF08() & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(0);
  v23 = *(v38 + 24);
  v24 = *(v18 + 48);
  sub_100018BB0();
  sub_100016048();
  sub_100018BB0();
  sub_100016048();
  sub_100018854(v0, 1, v5);
  if (v22)
  {
    sub_100018854(v0 + v24, 1, v5);
    if (v22)
    {
      sub_100015FF0(v0, &qword_100041010, &qword_10002F7E0);
LABEL_23:
      v34 = *(v38 + 20);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v35, v36);
      v28 = sub_10002CBA8();
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  sub_100016048();
  sub_100018854(v0 + v24, 1, v5);
  if (v25)
  {
    sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
LABEL_14:
    v26 = &qword_100041018;
    v27 = &qword_10002F7E8;
LABEL_15:
    sub_100015FF0(v0, v26, v27);
    goto LABEL_16;
  }

  sub_1000155F0();
  v29 = *v17 == *v11 && v17[1] == v11[1];
  if (!v29 && (sub_10002CF08() & 1) == 0)
  {
    sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
    sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
    v26 = &qword_100041010;
    v27 = &qword_10002F7E0;
    goto LABEL_15;
  }

  v30 = *(v5 + 20);
  sub_10002C918();
  sub_100018488();
  sub_100013CE0(v31, v32);
  v33 = sub_10002CBA8();
  sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
  sub_100015598(v17, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);
  sub_100015FF0(v0, &qword_100041010, &qword_10002F7E0);
  if (v33)
  {
    goto LABEL_23;
  }

LABEL_16:
  v28 = 0;
LABEL_24:
  sub_100018A94(v28);
  sub_100018A64();
}

uint64_t sub_10001275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041168, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000127FC(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040D68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000128C4()
{
  sub_100013CE0(&qword_100040D68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);

  return sub_10002CA78();
}

uint64_t sub_10001295C()
{
  sub_100018BBC();
  while (1)
  {
    result = sub_10002C978();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v0(v2, v4, v3);
    }
  }

  return result;
}

uint64_t sub_1000129C0()
{
  sub_1000184EC();
  v2 = *v0;
  v3 = v0[1];
  sub_1000185BC();
  if (!v4 || (sub_10001854C(), result = sub_10002CAC8(), !v1))
  {
    v6 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0) + 20);
    return sub_100018670();
  }

  return result;
}

uint64_t sub_100012A24(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_100018648(a1, a2);
  v6 = v2 == v5 && v3 == v4;
  if (!v6 && (sub_10002CF08() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
  sub_100018C1C(v7);
  sub_100018488();
  sub_100013CE0(v8, v9);
  return sub_1000186D0() & 1;
}

uint64_t sub_100012B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041170, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100012BAC(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040D48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100012C74()
{
  sub_100013CE0(&qword_100040D48, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData);

  return sub_10002CA78();
}

uint64_t sub_100012D0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10002CB38();
  sub_100015648(v7, a2);
  sub_10000219C(v7, a2);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v8 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10002DB30;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = sub_10002CB18();
  sub_100018638(v14);
  (*(v15 + 104))(v12, v13);
  return sub_10002CB28();
}

uint64_t sub_100012E70()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100018738();
      sub_10002C998();
    }
  }

  return result;
}

uint64_t sub_100012EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1000184EC();
  if (*v4 != 1 || (sub_100018694(), result = sub_10002CA88(), !v5))
  {
    v8 = *(a4(0) + 20);
    return sub_100018670();
  }

  return result;
}

uint64_t sub_100012F34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_10001881C();
  v4 = v3(0);
  sub_100018C1C(v4);
  sub_100018488();
  sub_100013CE0(v5, v6);
  return sub_1000186D0() & 1;
}

uint64_t sub_100012FFC(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_10002C918();
  sub_100018638(v2);
  v4 = *(v3 + 16);
  v5 = sub_100018B00();

  return v6(v5);
}

uint64_t sub_100013060(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_10002C918();
  sub_100018638(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_100013110(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041178, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000131B0(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040D28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100013278()
{
  sub_100013CE0(&qword_100040D28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed);

  return sub_10002CA78();
}

uint64_t sub_100013324()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A08);
  sub_10000219C(v0, qword_100049A08);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tableOfContentsText";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tableOfContentsTextIndex";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hideShowButton";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001352C()
{
  sub_1000185E4();
  while (1)
  {
    result = sub_100018A7C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000185A8();
        sub_1000135A8();
        break;
      case 2:
        sub_1000187C0();
        sub_10002C9F8();
        break;
      case 1:
        sub_100018738();
        sub_10002C9D8();
        break;
    }
  }

  return result;
}

uint64_t sub_100013610()
{
  sub_1000184EC();
  v3 = *v0;
  v4 = v0[1];
  sub_1000185BC();
  if (!v5 || (sub_10001854C(), result = sub_10002CAC8(), !v1))
  {
    if (!*(v2 + 16) || (sub_100018694(), result = sub_10002CAE8(), !v1))
    {
      if (!*(v2 + 24) || (v7 = *(v2 + 32), sub_1000189AC(), sub_100016340(), sub_1000185F8(), result = sub_10002CA98(), !v1))
      {
        v8 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0) + 28);
        return sub_100018670();
      }
    }
  }

  return result;
}

uint64_t sub_1000136D0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100018648(a1, a2);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_10002CF08() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v9 = *(v3 + 24);
  v10 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (v9 != 1)
        {
          return 0;
        }
      }

      else if (v9 != 2)
      {
        return 0;
      }

LABEL_13:
      v11 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(0) + 28);
      sub_10002C918();
      sub_100018488();
      sub_100013CE0(v12, v13);
      return sub_1000186D0() & 1;
    }

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if (v9 == v10)
  {
    goto LABEL_13;
  }

  return 0;
}

Swift::Int sub_1000137B0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_10002CF88();
  a1(0);
  sub_100013CE0(a2, a3);
  sub_10002CB98();
  return sub_10002CFA8();
}

uint64_t sub_100013858(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = sub_10002C918();
  sub_100018638(v2);
  v4 = *(v3 + 16);
  v5 = sub_100018B00();

  return v6(v5);
}

uint64_t sub_1000138BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_10002C918();
  sub_100018638(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_100013958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013CE0(&qword_100041180, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000139F8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10002CB38();
  v6 = sub_10000219C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100013A94(uint64_t a1)
{
  v2 = sub_100013CE0(&qword_100040D08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100013B5C()
{
  sub_100013CE0(&qword_100040D08, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo);

  return sub_10002CA78();
}

Swift::Int sub_100013BD8()
{
  sub_10002CF88();
  sub_10002CB98();
  return sub_10002CFA8();
}

uint64_t sub_100013CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018638(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000155F0()
{
  sub_10001881C();
  v2 = v1(0);
  sub_100018638(v2);
  v4 = *(v3 + 32);
  v5 = sub_100018810();
  v6(v5);
  return v0;
}

uint64_t *sub_100015648(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000156C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_100018810();
  sub_100016394(v3, v4);
  return sub_100018810();
}

void sub_1000156F0()
{
  sub_100018A4C();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v6 = sub_100018638(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10001860C();
  v47 = v9;
  v10 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  sub_1000187F8(v10);
  v12 = *(v11 + 64);
  sub_1000187CC();
  __chkstk_darwin(v13);
  sub_100018BE0();
  v50 = v14;
  v49 = sub_100001DE4(&qword_100040FE0, &qword_10002F7B8);
  sub_100018638(v49);
  v16 = *(v15 + 64);
  sub_1000187CC();
  __chkstk_darwin(v17);
  sub_100018B40();
  v18 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v44[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v51 = &v44[-v25];
  v26 = *(v4 + 16);
  if (v26 != *(v2 + 16) || !v26 || v4 == v2)
  {
    goto LABEL_20;
  }

  v48 = v23;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = v4 + v27;
  v29 = v2 + v27;
  v46 = *(v24 + 72);
  while (1)
  {
    v30 = v51;
    sub_100015E78();
    sub_100015E78();
    v31 = *(v49 + 48);
    sub_100016048();
    sub_100016048();
    sub_1000187A0(v0);
    if (!v33)
    {
      break;
    }

    sub_1000187A0(v0 + v31);
    if (!v33)
    {
      goto LABEL_18;
    }

    sub_100015FF0(v0, &qword_100040F88, &qword_10002F760);
    v32 = v48;
LABEL_12:
    if (*(v30 + *(v32 + 20)) != *&v22[*(v32 + 20)])
    {
      goto LABEL_19;
    }

    v39 = v30;
    v40 = *(v32 + 24);
    sub_10002C918();
    sub_100018488();
    sub_100013CE0(&qword_100040FE8, v41);
    v42 = sub_10002CBA8();
    sub_100015598(v22, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
    sub_100015598(v39, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
    if (v42)
    {
      v29 += v46;
      v28 += v46;
      if (--v26)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_100016048();
  sub_1000187A0(v0 + v31);
  if (!v33)
  {
    sub_1000188B4();
    v34 = v50;
    v35 = v5;
    v36 = v47;
    sub_1000155F0();
    sub_100002990();
    v45 = v37;
    v38 = v36;
    v5 = v35;
    sub_100015598(v38, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    v30 = v51;
    sub_100015598(v34, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType);
    sub_100015FF0(v0, &qword_100040F88, &qword_10002F760);
    v32 = v48;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  sub_1000184A0();
  sub_100015598(v50, v43);
LABEL_18:
  sub_100015FF0(v0, &qword_100040FE0, &qword_10002F7B8);
LABEL_19:
  sub_100015598(v22, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
  sub_100015598(v30, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
LABEL_20:
  sub_100018A64();
}

uint64_t sub_100015B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v23 = 1;
      return v23 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100015E78();
      sub_100015E78();
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_10002CF08() & 1) == 0)
      {
        break;
      }

      v18 = *(v11 + 2) == *(v8 + 2) && *(v11 + 3) == *(v8 + 3);
      if (!v18 && (sub_10002CF08() & 1) == 0)
      {
        break;
      }

      v19 = *(v11 + 4) == *(v8 + 4) && *(v11 + 5) == *(v8 + 5);
      if (!v19 && (sub_10002CF08() & 1) == 0 || *(v11 + 6) != *(v8 + 6))
      {
        break;
      }

      v20 = *(v11 + 7);
      v21 = *(v8 + 7);
      if (v8[64] == 1)
      {
        switch(v21)
        {
          case 1:
            if (v20 != 1)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          case 2:
            if (v20 != 2)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          case 3:
            if (v20 != 3)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          default:
            if (v20)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
        }
      }

      if (v20 != v21)
      {
        break;
      }

LABEL_26:
      if (*(v11 + 17) != *(v8 + 17))
      {
        break;
      }

      v22 = *(v4 + 40);
      sub_10002C918();
      sub_100013CE0(&qword_100040FE8, &type metadata accessor for UnknownStorage);
      v23 = sub_10002CBA8();
      sub_100015598(v8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);
      sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

LABEL_35:
    sub_100015598(v8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);
    sub_100015598(v11, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment);
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_100015E78()
{
  sub_10001881C();
  v2 = v1(0);
  sub_100018638(v2);
  v4 = *(v3 + 16);
  v5 = sub_100018810();
  v6(v5);
  return v0;
}

uint64_t sub_100015F10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100015F48()
{
  result = qword_100041088;
  if (!qword_100041088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041088);
  }

  return result;
}

unint64_t sub_100015F9C()
{
  result = qword_100041090;
  if (!qword_100041090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041090);
  }

  return result;
}

uint64_t sub_100015FF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DE4(a2, a3);
  sub_100018638(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100016048()
{
  sub_10001881C();
  v3 = sub_100001DE4(v1, v2);
  sub_100018638(v3);
  v5 = *(v4 + 16);
  v6 = sub_100018810();
  v7(v6);
  return v0;
}

unint64_t sub_1000160A0()
{
  result = qword_1000410F0;
  if (!qword_1000410F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000410F0);
  }

  return result;
}

unint64_t sub_1000160F4()
{
  result = qword_100041100;
  if (!qword_100041100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041100);
  }

  return result;
}

unint64_t sub_100016148()
{
  result = qword_100041118;
  if (!qword_100041118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041118);
  }

  return result;
}

unint64_t sub_10001619C()
{
  result = qword_100041130;
  if (!qword_100041130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041130);
  }

  return result;
}

unint64_t sub_1000161F0()
{
  result = qword_100041138;
  if (!qword_100041138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041138);
  }

  return result;
}

unint64_t sub_100016244()
{
  result = qword_100041140;
  if (!qword_100041140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041140);
  }

  return result;
}

unint64_t sub_100016298()
{
  result = qword_100041148;
  if (!qword_100041148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041148);
  }

  return result;
}

unint64_t sub_1000162EC()
{
  result = qword_100041160;
  if (!qword_100041160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041160);
  }

  return result;
}

unint64_t sub_100016340()
{
  result = qword_100041188;
  if (!qword_100041188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041188);
  }

  return result;
}

uint64_t sub_100016394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000163EC()
{
  result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationStarted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationEnded(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100016468()
{
  result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextStarted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextFailed(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000164F0()
{
  result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000165F0()
{
  sub_10001881C();
  v2 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v3 = sub_100018848(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_10002C918();
    sub_100018A28();
    v6 = v1 + v7;
  }

  return sub_1000020C8(v6, v0, v5);
}

uint64_t sub_1000166A0()
{
  sub_100018AB8();
  sub_10001881C();
  v3 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v4 = sub_100018848(v3);
  if (*(v5 + 84) == v2)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_10002C918();
    sub_100018A34();
    v7 = v1 + v8;
  }

  return sub_100001E9C(v7, v0, v0, v6);
}

void sub_100016740()
{
  sub_100016CD8(319, &unk_1000413F0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002C918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100016810()
{
  sub_100018790();
  if (v2)
  {
    return sub_1000186A8(*(v0 + 8));
  }

  sub_10001887C();
  v4 = sub_1000187D8(*(v1 + 40));

  return sub_1000020C8(v4, v5, v6);
}

void sub_100016888()
{
  sub_1000186BC();
  if (v1)
  {
    sub_100018BD4();
  }

  else
  {
    sub_100018B68();
    v2 = sub_100018710(*(v0 + 40));

    sub_100001E9C(v2, v3, v4, v5);
  }
}

uint64_t sub_1000168E8()
{
  result = sub_10002C918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100016A00()
{
  sub_10001881C();
  v1 = sub_10002C918();
  sub_100018848(v1);
  if (*(v2 + 84) == v0)
  {
    sub_100018AA0();
  }

  else
  {
    v4 = sub_100001DE4(&qword_100041050, &qword_10002F820);
    sub_100018848(v4);
    if (*(v5 + 84) == v0)
    {
      sub_100018A28();
    }

    else
    {
      sub_100001DE4(&qword_100041040, &qword_10002F810);
      sub_100018B80();
    }
  }

  v6 = sub_1000187D8(v3);

  return sub_1000020C8(v6, v7, v8);
}

uint64_t sub_100016AF0()
{
  sub_100018AB8();
  sub_10001881C();
  v1 = sub_10002C918();
  sub_100018848(v1);
  if (*(v2 + 84) == v0)
  {
    sub_100018AAC();
  }

  else
  {
    v4 = sub_100001DE4(&qword_100041050, &qword_10002F820);
    sub_100018848(v4);
    if (*(v5 + 84) == v0)
    {
      sub_100018A34();
    }

    else
    {
      sub_100001DE4(&qword_100041040, &qword_10002F810);
      sub_100018BA4();
    }
  }

  v6 = sub_100018710(v3);

  return sub_100001E9C(v6, v7, v8, v9);
}

void sub_100016BCC()
{
  sub_10002C918();
  if (v0 <= 0x3F)
  {
    sub_100016CD8(319, &qword_100041658, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100016CD8(319, &unk_100041660, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100016CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100016D50()
{
  sub_10001881C();
  v3 = *(v2 + 32);
  v4 = sub_10002C918();

  return sub_1000020C8(v1 + v3, v0, v4);
}

uint64_t sub_100016DB4()
{
  sub_10001881C();
  v1 = *(v0 + 32);
  sub_10002C918();
  v2 = sub_100018C34();

  return sub_100001E9C(v2, v3, v4, v5);
}

uint64_t sub_100016DFC()
{
  result = sub_10002C918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100016EA8()
{
  sub_100018790();
  if (v1)
  {
    return sub_1000186A8(*(v0 + 8));
  }

  sub_10001887C();
  sub_100018A28();
  v4 = sub_1000187D8(v3);

  return sub_1000020C8(v4, v5, v6);
}

void sub_100016F1C()
{
  sub_1000186BC();
  if (v0)
  {
    sub_100018BD4();
  }

  else
  {
    sub_100018B68();
    sub_100018A34();
    v2 = sub_100018710(v1);

    sub_100001E9C(v2, v3, v4, v5);
  }
}

uint64_t sub_100016FA0()
{
  sub_10001881C();
  v3 = *(v2 + 20);
  v4 = sub_10002C918();

  return sub_1000020C8(v1 + v3, v0, v4);
}

uint64_t sub_100017004()
{
  sub_10001881C();
  v1 = *(v0 + 20);
  sub_10002C918();
  v2 = sub_100018C34();

  return sub_100001E9C(v2, v3, v4, v5);
}

uint64_t sub_10001706C()
{
  sub_100018790();
  if (v2)
  {
    return sub_1000186A8(*(v1 + 8));
  }

  v4 = sub_10001887C();
  sub_100018848(v4);
  if (*(v5 + 84) == v0)
  {
    sub_100018AA0();
  }

  else
  {
    sub_100001DE4(&qword_100041010, &qword_10002F7E0);
    sub_100018A28();
  }

  v7 = sub_1000187D8(v6);

  return sub_1000020C8(v7, v8, v9);
}

void sub_100017128()
{
  sub_1000186BC();
  if (v1)
  {
    sub_100018BD4();
  }

  else
  {
    sub_100018AB8();
    v2 = sub_10002C918();
    sub_100018848(v2);
    if (*(v3 + 84) == v0)
    {
      sub_100018AAC();
    }

    else
    {
      sub_100001DE4(&qword_100041010, &qword_10002F7E0);
      sub_100018A34();
    }

    v5 = sub_100018710(v4);

    sub_100001E9C(v5, v6, v7, v8);
  }
}

void sub_1000171D4()
{
  sub_10002C918();
  if (v0 <= 0x3F)
  {
    sub_100016CD8(319, &unk_1000418C8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000172AC()
{
  sub_100018790();
  if (v1)
  {
    return sub_1000186A8(*(v0 + 8));
  }

  sub_10001887C();
  sub_100018AA0();
  v4 = sub_1000187D8(v3);

  return sub_1000020C8(v4, v5, v6);
}

void sub_100017320()
{
  sub_1000186BC();
  if (v0)
  {
    sub_100018BD4();
  }

  else
  {
    sub_100018B68();
    sub_100018AAC();
    v2 = sub_100018710(v1);

    sub_100001E9C(v2, v3, v4, v5);
  }
}

uint64_t sub_1000173A0(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001887C();
    sub_100018AA0();
    v7 = sub_1000187D8(v6);

    return sub_1000020C8(v7, v8, v9);
  }
}

void sub_10001742C()
{
  sub_10001881C();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    sub_100018B68();
    sub_100018AAC();
    v4 = sub_100018710(v3);

    sub_100001E9C(v4, v5, v6, v7);
  }
}

uint64_t sub_1000174B0()
{
  sub_100018790();
  if (v1)
  {
    return sub_1000186A8(*(v0 + 8));
  }

  sub_10001887C();
  sub_100018B80();
  v4 = sub_1000187D8(v3);

  return sub_1000020C8(v4, v5, v6);
}

void sub_100017524()
{
  sub_1000186BC();
  if (v0)
  {
    sub_100018BD4();
  }

  else
  {
    sub_100018B68();
    sub_100018BA4();
    v2 = sub_100018710(v1);

    sub_100001E9C(v2, v3, v4, v5);
  }
}

uint64_t sub_100017580()
{
  result = sub_10002C918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017658()
{
  sub_100018790();
  if (v2)
  {
    return sub_1000186A8(*(v0 + 24));
  }

  sub_10001887C();
  v4 = sub_1000187D8(*(v1 + 60));

  return sub_1000020C8(v4, v5, v6);
}

void sub_1000176D0()
{
  sub_1000186BC();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_100018B68();
    v4 = sub_100018710(*(v2 + 60));

    sub_100001E9C(v4, v5, v6, v7);
  }
}

void sub_100017734()
{
  sub_100016CD8(319, &unk_100041BB0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_TrialExperiment, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10002C918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100017878(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return sub_100018768();
  }

  sub_10001887C();
  sub_100018AA0();
  v4 = sub_1000187D8(v3);

  return sub_1000020C8(v4, v5, v6);
}

void *sub_1000178EC(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    sub_100018B68();
    sub_100018AAC();

    return sub_100001E9C(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_100017968()
{
  result = sub_10002C918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000179F0()
{
  sub_100018790();
  if (v1)
  {
    return sub_1000186A8(*(v0 + 24));
  }

  sub_10001887C();
  sub_100018A28();
  v4 = sub_1000187D8(v3);

  return sub_1000020C8(v4, v5, v6);
}

void sub_100017A64()
{
  sub_1000186BC();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_100018B68();
    sub_100018A34();
    v4 = sub_100018710(v3);

    sub_100001E9C(v4, v5, v6, v7);
  }
}

uint64_t sub_100017AD8()
{
  result = sub_10002C918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017B60()
{
  sub_100018790();
  if (v2)
  {
    return sub_1000186A8(*(v0 + 24));
  }

  v4 = v1;
  v5 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  sub_100018848(v5);
  if (*(v6 + 84) == v4)
  {
    sub_100018A28();
  }

  else
  {
    sub_10002C918();
    sub_100018B80();
  }

  v8 = sub_1000187D8(v7);

  return sub_1000020C8(v8, v9, v10);
}

void sub_100017C28()
{
  sub_1000186BC();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_100018AB8();
    v4 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
    sub_100018848(v4);
    if (*(v5 + 84) == v2)
    {
      sub_100018A34();
    }

    else
    {
      sub_10002C918();
      sub_100018BA4();
    }

    v7 = sub_100018710(v6);

    sub_100001E9C(v7, v8, v9, v10);
  }
}

void sub_100017CD8()
{
  sub_100016CD8(319, &unk_100041E28, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002C918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100017DB8(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return sub_100018768();
  }

  v4 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
  sub_100018848(v4);
  if (*(v5 + 84) == a2)
  {
    sub_100018AA0();
  }

  else
  {
    v7 = sub_10002C918();
    sub_100018848(v7);
    if (*(v8 + 84) == a2)
    {
      sub_100018A28();
    }

    else
    {
      sub_100001DE4(&qword_100041030, &qword_10002F800);
      sub_100018B80();
    }
  }

  v9 = sub_1000187D8(v6);

  return sub_1000020C8(v9, v10, v11);
}

void sub_100017EC8()
{
  sub_10001881C();
  if (v1 == 12)
  {
    sub_100018B8C();
  }

  else
  {
    sub_100018AB8();
    v2 = sub_100001DE4(&qword_100041020, &qword_10002F7F0);
    sub_100018848(v2);
    if (*(v3 + 84) == v0)
    {
      sub_100018AAC();
    }

    else
    {
      v5 = sub_10002C918();
      sub_100018848(v5);
      if (*(v6 + 84) == v0)
      {
        sub_100018A34();
      }

      else
      {
        sub_100001DE4(&qword_100041030, &qword_10002F800);
        sub_100018BA4();
      }
    }

    v7 = sub_100018710(v4);

    sub_100001E9C(v7, v8, v9, v10);
  }
}

void sub_100017FC0()
{
  sub_100016CD8(319, &qword_100041EC8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002C918();
    if (v1 <= 0x3F)
    {
      sub_100016CD8(319, &unk_100041ED0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000180E0(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return sub_100018768();
  }

  v5 = sub_10001887C();
  sub_100018848(v5);
  if (*(v6 + 84) == v2)
  {
    sub_100018A28();
  }

  else
  {
    v8 = sub_100001DE4(&qword_100041030, &qword_10002F800);
    sub_100018848(v8);
    if (*(v9 + 84) == v2)
    {
      sub_100018B80();
    }

    else
    {
      sub_100001DE4(&qword_100041068, &qword_10002F838);
      v7 = *(v3 + 32);
    }
  }

  v10 = sub_1000187D8(v7);

  return sub_1000020C8(v10, v11, v12);
}

void sub_1000181E8()
{
  sub_10001881C();
  if (v2 == 12)
  {
    sub_100018B8C();
  }

  else
  {
    sub_100018AB8();
    v3 = sub_10002C918();
    sub_100018848(v3);
    if (*(v4 + 84) == v1)
    {
      sub_100018A34();
    }

    else
    {
      v6 = sub_100001DE4(&qword_100041030, &qword_10002F800);
      sub_100018848(v6);
      if (*(v7 + 84) == v1)
      {
        sub_100018BA4();
      }

      else
      {
        sub_100001DE4(&qword_100041068, &qword_10002F838);
        v5 = *(v0 + 32);
      }
    }

    v8 = sub_100018710(v5);

    sub_100001E9C(v8, v9, v10, v11);
  }
}

void sub_1000182E4()
{
  sub_10002C918();
  if (v0 <= 0x3F)
  {
    sub_100016CD8(319, &unk_100041ED0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100016CD8(319, &unk_100041F70, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100018648(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_100018670()
{

  return sub_10002C8F8();
}

uint64_t sub_1000186A8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000186D0()
{

  return sub_10002CBA8();
}

uint64_t sub_100018768()
{
  v1 = *(v0 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001887C()
{

  return sub_10002C918();
}

uint64_t sub_10001898C(uint64_t a1)
{

  return sub_100001E9C(v1 + v2, 1, 1, a1);
}

uint64_t sub_1000189C4()
{

  return sub_10001295C();
}

uint64_t sub_1000189E8()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t sub_100018A7C()
{

  return sub_10002C978();
}

BOOL sub_100018AC4()
{
  v3 = *v0;
  v4 = *(v1 + 8);

  return sub_1000082E4(v3, v4);
}

void sub_100018AF0(__n128 a1)
{
  *v1 = a1;
  v1[1].n128_u64[0] = 0;
  v1[1].n128_u64[1] = 0xE000000000000000;
}

uint64_t sub_100018B50()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100018B68()
{

  return sub_10002C918();
}

uint64_t sub_100018BEC(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_10002C908();
}

uint64_t sub_100018C04()
{

  return sub_10002CBA8();
}

uint64_t sub_100018C1C(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_10002C918();
}

uint64_t sub_100018C74(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return sub_10002C908();
}

uint64_t sub_100018C8C()
{

  return sub_100016048();
}

uint64_t sub_100018CEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100018D0C, 0, 0);
}

uint64_t sub_100018D0C()
{
  sub_10001C29C();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_10002CDF8();
  *v6 = v0;
  v6[1] = sub_100018E1C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_100030330, v3, sub_10001C1D0, v4, 0, 0, v7);
}

uint64_t sub_100018E1C()
{
  sub_10001C284();
  sub_10001C290();
  v3 = v2;
  sub_10001C254();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10001C244();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = sub_100018F44;
  }

  else
  {
    v11 = v3[5];
    v10 = v3[6];

    v9 = sub_100018F28;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100018F44()
{
  sub_10001C284();
  v2 = v0[5];
  v1 = v0[6];

  sub_10001C278();
  v4 = v0[8];

  return v3();
}

uint64_t sub_100018FA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019044;

  return sub_100019124(a1);
}

uint64_t sub_100019044()
{
  sub_10001C284();
  sub_10001C290();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001C244();
  *v4 = v3;

  sub_10001C278();

  return v5();
}

uint64_t sub_100019124(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_isaMask & *v1;
  return _swift_task_switch(sub_10001917C, 0, 0);
}

uint64_t sub_10001917C()
{
  sub_10001C29C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = *(v2 + 80);
  sub_10002CDF8();
  *v4 = v0;
  v4[1] = sub_100019270;
  v6 = v0[2];

  return sub_10001B320(v6, 0, 0, sub_10001C1F4, v3);
}

uint64_t sub_100019270()
{
  sub_10001C284();
  sub_10001C290();
  v3 = v2;
  sub_10001C254();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_10001C244();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100019390, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    sub_10001C278();

    return v10();
  }
}

uint64_t sub_100019390()
{
  sub_10001C284();
  v1 = *(v0 + 40);

  sub_10001C278();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1000193EC()
{
  v1 = *(v0 + qword_100041FB0);
  v6 = *((swift_isaMask & *v0) + 0x50);
  v2 = type metadata accessor for EventStateMachine();
  type metadata accessor for PostOpCommand();
  v3 = sub_10002CCE8();
  sub_10001BA1C(sub_10001B82C, v5, v1, v2, v3);
  v7 = v8;
  swift_getWitnessTable();
  sub_10002CC38();
}

void sub_100019528(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  *a1 = v3;
}

uint64_t sub_10001955C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = *(a2 + 16);
  *v6 = v3;
  v6[1] = sub_10001C23C;

  return sub_100018CEC(v5, v7);
}

uint64_t sub_1000195FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1000196D0;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1000196D0()
{
  sub_10001C284();
  sub_10001C290();
  v3 = v2;
  sub_10001C254();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_10001C244();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_10001C278();

  return v9();
}

Swift::Int sub_1000197E8()
{
  sub_10002CF88();
  sub_10002CF98(0);
  return sub_10002CFA8();
}

uint64_t sub_10001982C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = *(a2 + 16);
  *v6 = v3;
  v6[1] = sub_1000198CC;

  return sub_100018CEC(v5, v7);
}

uint64_t sub_1000198CC()
{
  sub_10001C29C();
  v3 = v2;
  sub_10001C290();
  v5 = v4;
  sub_10001C254();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_10001C244();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

Swift::Int sub_1000199DC()
{
  sub_10002CF88();
  sub_10002CF98(0);
  return sub_10002CFA8();
}

id sub_100019A2C()
{
  ObjectType = swift_getObjectType();
  sub_1000193EC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100019AAC(uint64_t a1)
{
  v2 = *(v1 + qword_100041FB0);
  v7[2] = *((swift_isaMask & *v1) + 0x50);
  v7[3] = a1;
  v3 = type metadata accessor for EventStateMachine();
  v4 = type metadata accessor for PostOpCommand();
  v5 = sub_10002CDF8();
  sub_10001BA1C(sub_10001BDA8, v7, v2, v3, v5);
  if (v8[40] != 255)
  {
    sub_100019E60(v4);
    v5 = v4;
  }

  (*(*(v5 - 8) + 8))(v8, v5);
  return BPSDemandNone;
}

void *sub_100019BC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v2 + 32) - 2 < 2)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v5 = -1;
LABEL_3:
    *(a2 + 40) = v5;
    return result;
  }

  v6 = v2[2];
  v7 = v2[3];
  if (!*(v2 + 32))
  {
    v20 = v2[2];
    v8 = *(v4 + 80);
    sub_10002CDF8();

    sub_100002154(&qword_100042198, &qword_100030028);
    sub_10002CD28();
    sub_10002CCE8();
    swift_getWitnessTable();
    if (sub_10002CD98())
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -1;
      return sub_10001B7B8(v6, v7, 0);
    }

    v12 = sub_10002CC88();
    v14 = v2[2];
    v13 = v2[3];
    v2[2] = v12;
    v2[3] = 0;
    v15 = *(v2 + 32);
    *(v2 + 32) = 0;
    result = sub_10001B7B8(v14, v13, v15);
    *a2 = v6;
    v5 = 2;
    goto LABEL_3;
  }

  v9 = result;
  v19 = v2[3];
  v10 = *(v4 + 80);
  sub_10002CDF8();
  v11 = v6;

  sub_100002154(&qword_100042198, &qword_100030028);
  sub_10002CD28();
  sub_10002CCE8();
  swift_getWitnessTable();
  if (sub_10002CD98())
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  else
  {
    swift_getWitnessTable();
    sub_10002CDA8();
    v16 = v2[2];
    v17 = v2[3];
    v2[2] = v6;
    v2[3] = v7;
    v18 = *(v2 + 32);
    *(v2 + 32) = 1;
    sub_10001B7B8(v16, v17, v18);
    *a2 = v19;
    result = sub_10001BC18(v9, a2 + 8);
    *(a2 + 40) = 0;
  }

  return result;
}

void sub_100019E60(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_10002CDF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  v14 = *(v4 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 - 8) + 16))(&v33, v2, a1);
  v18 = v33;
  switch(v36)
  {
    case 1:
      *&v32[0] = v34;
      v24 = sub_100001DE4(&qword_100042198, &qword_100030028);
      sub_10001B988(v32, v18, v5, v24);
      break;
    case 2:

      sub_100002154(&qword_100042198, &qword_100030028);
      sub_10002CD28();
      v21 = sub_10002CC58();

      *&v32[0] = v21;
      if (v21 != sub_10002CCC8())
      {
        do
        {
          v25 = sub_10002CC98();
          sub_10002CC78();
          if (v25)
          {
            v26 = v18[v21 + 4];
          }

          else
          {
            v26 = sub_10002CE48();
            swift_unknownObjectRelease();
          }

          sub_10002CCD8(v32);
          sub_100001E9C(v10, 1, 1, v4);
          sub_10001B910(v10, v26, v5);
          v27 = sub_10002CCC8();
          v21 = *&v32[0];
        }

        while (*&v32[0] != v27);
      }

      break;
    case 3:
      v22 = v34;
      v23 = objc_autoreleasePoolPush();
      [v18 requestDemand:v22];
      v20 = v23;
      goto LABEL_9;
    case 4:
      v19 = objc_autoreleasePoolPush();
      [v18 cancel];
      v20 = v19;
LABEL_9:
      objc_autoreleasePoolPop(v20);

      break;
    default:
      v32[0] = v34;
      v32[1] = v35;
      sub_10001BB30(v32, &v29);
      if (v30)
      {
        sub_10001BC08(&v29, v31);
        sub_10001BC18(v31, &v29);
        if (swift_dynamicCast())
        {
          sub_100001E9C(v13, 0, 1, v4);
          (*(v14 + 32))(v17, v13, v4);
          (*(v14 + 16))(v10, v17, v4);
          sub_100001E9C(v10, 0, 1, v4);
          sub_100001DE4(&qword_100042198, &qword_100030028);
          sub_10001B910(v10, v18, v5);
          (*(v14 + 8))(v17, v4);
        }

        else
        {
          sub_100001E9C(v13, 1, 1, v4);
          (*(v6 + 8))(v13, v5);
          sub_10001BC74();
          *&v29 = swift_allocError();
          v28 = sub_100001DE4(&qword_100042198, &qword_100030028);
          sub_10001B988(&v29, v18, v5, v28);
        }

        sub_1000023D0(v31);
      }

      else
      {
        sub_10001BBA0(&v29);
        sub_100001E9C(v10, 1, 1, v4);
        sub_100001DE4(&qword_100042198, &qword_100030028);
        sub_10001B910(v10, v18, v5);
      }

      sub_10001BBA0(v32);
      break;
  }
}

uint64_t sub_10001A3C4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_10002CE18();
  swift_unknownObjectRelease();
  v3 = sub_100019AAC(v5);

  sub_1000023D0(v5);
  return v3;
}

uint64_t sub_10001A430(uint64_t a1)
{
  v2 = *(v1 + qword_100041FB0);
  v7[2] = *((swift_isaMask & *v1) + 0x50);
  v7[3] = a1;
  v3 = type metadata accessor for EventStateMachine();
  v4 = type metadata accessor for PostOpCommand();
  v5 = sub_10002CDF8();
  sub_10001BA1C(sub_10001BD80, v7, v2, v3, v5);
  if (v8[40] != 255)
  {
    sub_100019E60(v4);
    v5 = v4;
  }

  return (*(*(v5 - 8) + 8))(v8, v5);
}

id sub_10001A53C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (*(v2 + 32))
  {
    *a2 = a1;
    *(a2 + 40) = 4;

    return a1;
  }

  else
  {
    v6 = *v2;
    v8 = v3[2];
    v7 = v3[3];
    v3[2] = a1;
    v3[3] = v8;
    *(v3 + 32) = 1;
    sub_10001BD0C(v8, v7, 0);
    v9 = *(v6 + 80);
    sub_10002CDF8();
    v10 = a1;
    sub_100002154(&qword_100042198, &qword_100030028);
    sub_10002CD28();
    sub_10002CCE8();
    swift_getWitnessTable();
    if (sub_10002CD98())
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -1;
      return sub_10001B7B8(v8, v7, 0);
    }

    else
    {
      v11 = v10;
      v12 = sub_10002CCA8();
      result = sub_10001B7B8(v8, v7, 0);
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 40) = 3;
    }
  }

  return result;
}

void sub_10001A6F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10001A430(v4);
}

uint64_t sub_10001A75C(uint64_t a1)
{
  v2 = *(v1 + qword_100041FB0);
  v7 = *((swift_isaMask & *v1) + 0x50);
  v8 = a1;
  v3 = type metadata accessor for EventStateMachine();
  type metadata accessor for PostOpCommand();
  v4 = sub_10002CCE8();
  sub_10001BA1C(sub_10001BCC8, v6, v2, v3, v4);
  v9 = v10;
  swift_getWitnessTable();
  sub_10002CC38();
}

uint64_t sub_10001A870(void *a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(v1 + 32);
  if ((v4 - 2) < 2)
  {
    v5 = *(v2 + 80);
LABEL_19:
    type metadata accessor for PostOpCommand();
    return sub_10002CC88();
  }

  v6 = v1;
  v9 = v1 + 2;
  v8 = v1[2];
  if (v4)
  {
    if (v6[6])
    {
      v24 = v6[3];
      v10 = *(v2 + 80);
      sub_10002CDF8();
      v11 = v8;

      sub_100002154(&qword_100042198, &qword_100030028);
      sub_10002CD28();
      sub_10002CCE8();
      swift_getWitnessTable();
      if ((sub_10002CD98() & 1) != 0 && [a1 state])
      {
      }

      else
      {
        v13 = sub_10001B89C();

        v14 = v6[5];
        v6[5] = v13;
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v12 = v6[3];
    }
  }

  else
  {
    sub_10001BD0C(v8, v6[3], 0);
  }

  v15 = [a1 state];
  if (v15)
  {
    v15 = [a1 error];
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 3;
  }

  v18 = v6[2];
  v17 = v6[3];
  v6[2] = v15;
  v6[3] = 0;
  v19 = *(v6 + 32);
  *(v6 + 32) = v16;
  sub_10001B7B8(v18, v17, v19);
  v20 = *(v3 + 80);
  sub_10002CDF8();
  sub_100002154(&qword_100042198, &qword_100030028);
  sub_10002CD28();
  sub_10002CCE8();
  swift_getWitnessTable();
  v21 = sub_10002CD98();

  if (v21)
  {

    goto LABEL_19;
  }

  swift_getWitnessTable();
  sub_10002CDA8();
  type metadata accessor for PostOpCommand();
  v25 = sub_10002CC88();
  if (*(v6 + 32) == 2)
  {
    v23 = v6[2];
    *v9 = 0;
    v9[1] = 0;
    *(v6 + 32) = 3;
  }

  sub_10002CCE8();
  sub_10002CCB8();
  if (sub_10002CD98())
  {
  }

  else
  {
    sub_10002CCE8();
    sub_10002CCB8();
  }

  return v25;
}

void sub_10001AC40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10001A75C(v4);
}

uint64_t sub_10001ACA8()
{
  v1 = *v0;
  v2 = *v0;
  if (*(v0 + 32) - 2 < 2)
  {
LABEL_2:
    v3 = *(v2 + 80);
    type metadata accessor for PostOpCommand();
    return sub_10002CC88();
  }

  v6 = v0[2];
  v5 = v0[3];
  if (!*(v0 + 32))
  {
    *(v0 + 1) = xmmword_10002FE80;
    *(v0 + 32) = 3;
    v7 = *(v1 + 80);
    sub_10002CDF8();
    sub_100002154(&qword_100042198, &qword_100030028);
    sub_10002CD28();
    sub_10002CCE8();
    swift_getWitnessTable();
    if ((sub_10002CD98() & 1) == 0)
    {
      type metadata accessor for PostOpCommand();
      sub_10002CEF8();
      swift_allocObject();
      v4 = sub_10002CC68();
      *v12 = v6;
      *(v12 + 40) = 2;
      sub_10002CCE8();
      return v4;
    }

    sub_10001B7B8(v6, v5, 0);
    goto LABEL_2;
  }

  *(v0 + 1) = xmmword_10002FE80;
  *(v0 + 32) = 3;
  if (v0[6])
  {
    v8 = sub_10001B89C();
    v9 = v0[5];
    v0[5] = v8;
    swift_unknownObjectRelease();
  }

  v10 = *(v2 + 80);
  type metadata accessor for PostOpCommand();
  v14 = sub_10002CC88();
  sub_10002CCE8();
  v11 = v6;
  sub_10002CCB8();
  sub_10002CDF8();
  sub_100002154(&qword_100042198, &qword_100030028);
  sub_10002CD28();
  sub_10002CCE8();
  swift_getWitnessTable();
  if (sub_10002CD98())
  {
  }

  else
  {
    sub_10002CCB8();
  }

  return v14;
}

void sub_10001AFB4(void *a1)
{
  v1 = a1;
  sub_1000193EC();
}

uint64_t sub_10001AFFC(uint64_t a1, void *a2)
{
  v2 = *(a2 + qword_100041FB0);
  v7[2] = *((swift_isaMask & *a2) + 0x50);
  v7[3] = a1;
  v3 = type metadata accessor for EventStateMachine();
  v4 = type metadata accessor for PostOpCommand();
  v5 = sub_10002CDF8();
  sub_10001BA1C(sub_10001C1FC, v7, v2, v3, v5);
  if (v8[40] != 255)
  {
    sub_100019E60(v4);
    v5 = v4;
  }

  return (*(*(v5 - 8) + 8))(v8, v5);
}

void *sub_10001B108@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2;
  switch(*(v2 + 32))
  {
    case 1:
      v18 = v2[3];
      v12 = *(v4 + 80);
      sub_10002CDF8();
      v13 = v5;

      sub_100002154(&qword_100042198, &qword_100030028);
      sub_10002CD28();
      sub_10002CCE8();
      sub_10002CCB8();
      v14 = v2[2];
      v15 = v6[3];
      v6[2] = v5;
      v6[3] = v18;
      v16 = *(v6 + 32);
      *(v6 + 32) = 1;
      v17 = v13;
      result = sub_10001B7B8(v14, v15, v16);
      *a2 = v17;
      *(a2 + 8) = 1;
      v11 = 3;
      goto LABEL_6;
    case 2:
      v2[2] = 0;
      v2[3] = 0;
      *(v2 + 32) = 3;
      *a2 = result;
      *(a2 + 8) = v5;
      v11 = 1;
LABEL_6:
      *(a2 + 40) = v11;
      break;
    case 3:
      *a2 = result;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0;
      break;
    default:
      v7 = *(v4 + 80);
      sub_10002CDF8();

      sub_100002154(&qword_100042198, &qword_100030028);
      sub_10002CD28();
      sub_10002CCE8();
      sub_10002CCB8();
      v8 = v2[2];
      v9 = v2[3];
      v2[2] = v5;
      v2[3] = 0;
      v10 = *(v2 + 32);
      *(v2 + 32) = 0;
      result = sub_10001B7B8(v8, v9, v10);
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -1;
      break;
  }

  return result;
}

uint64_t sub_10001B320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_10002CCF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_10001B3B4, v6, v8);
}

uint64_t sub_10001B3B4()
{
  sub_10001C29C();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10001B458;
  v4 = swift_continuation_init();
  v2(v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001B458()
{
  sub_10001C29C();
  sub_10001C290();
  v1 = *v0;
  sub_10001C254();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10001B618()
{
  sub_10001B7B8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10001B644()
{
  v0 = sub_10001B618();

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t sub_10001B68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001B6C8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10001B6F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001B704(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_10001B744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001B788(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_10001B7B8(void *result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {
    }

    else
    {
      if (a3)
      {
        return result;
      }
    }
  }
}

uint64_t sub_10001B82C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001ACA8();
  *a2 = result;
  return result;
}

id sub_10001B89C()
{
  v0 = objc_autoreleasePoolPush();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = [v1 newBookmark];
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_10001B910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_10001B988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return _swift_continuation_throwingResumeWithError(a2, v7);
}

void sub_10001BAA8(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_10001BB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DE4(&qword_1000421A0, &unk_100030030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BBA0(uint64_t a1)
{
  v2 = sub_100001DE4(&qword_1000421A0, &unk_100030030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_10001BC08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001BC18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001BC74()
{
  result = qword_1000421A8;
  if (!qword_1000421A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000421A8);
  }

  return result;
}

uint64_t sub_10001BCC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  result = sub_10001A870(v4);
  *a2 = result;
  return result;
}

void *sub_10001BD0C(void *result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return swift_errorRetain();
  }

  else
  {
    if (a3 == 1)
    {
      v4 = result;
    }

    else
    {
      if (a3)
      {
        return result;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncBPSPublisherError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AsyncBPSPublisherError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10001BEF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001BF30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001BF6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001BF90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001BFA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001BFE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001C02C(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10001C054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10001C0D4()
{
  result = qword_100042310;
  if (!qword_100042310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042310);
  }

  return result;
}

uint64_t sub_10001C128()
{
  sub_10001C29C();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100019044;

  return sub_100018FA8(v3);
}

uint64_t sub_10001C264(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  return v2;
}

uint64_t sub_10001C278()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001C2A8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 <= 0.0 || a2 + a3 <= 0.0)
  {
    v4 = 1;
  }

  else
  {
    sub_10002C7B8();
    v4 = 0;
  }

  v5 = sub_10002C828();

  return sub_100001E9C(a1, v4, 1, v5);
}

uint64_t sub_10001C318(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v4 = a1 < a2;
  if (a3 != a4)
  {
    v4 = 0;
  }

  return a3 < a4 || v4;
}

uint64_t sub_10001C3CC(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v4 = a2 < a1;
  if (a4 != a3)
  {
    v4 = 0;
  }

  return a4 < a3 || v4;
}

uint64_t sub_10001C3FC(uint64_t a1)
{
  v2 = sub_10002C828();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_10002CE38(28);

  strcpy(v9, "BM{timestamp: ");
  HIBYTE(v9[1]) = -18;
  sub_10002C7B8();
  sub_10001C604();
  v10._countAndFlagsBits = sub_10002CEE8();
  sub_10002CC18(v10);

  (*(v3 + 8))(v6, v2);
  v11._countAndFlagsBits = 0x3A7865646E69202CLL;
  v11._object = 0xE900000000000020;
  sub_10002CC18(v11);
  v8[1] = a1;
  v12._countAndFlagsBits = sub_10002CEE8();
  sub_10002CC18(v12);

  v13._countAndFlagsBits = 125;
  v13._object = 0xE100000000000000;
  sub_10002CC18(v13);
  return v9[0];
}

unint64_t sub_10001C5B0()
{
  result = qword_100042340;
  if (!qword_100042340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042340);
  }

  return result;
}

unint64_t sub_10001C604()
{
  result = qword_100042348;
  if (!qword_100042348)
  {
    sub_10002C828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042348);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SBABookmark(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SBABookmark(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SBABookmark(uint64_t result, int a2, int a3)
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

Swift::Int sub_10001C72C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_10002CF88();
  a3(v4);
  sub_10001FBA4();
  return sub_10002CFA8();
}

uint64_t sub_10001C784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000160F4();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10001C80C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_10002CF88();
  a4(v5);
  sub_10001FBA4();
  return sub_10002CFA8();
}

uint64_t sub_10001C8D4@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_10001C940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015F9C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015F48();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016148();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000160A0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000162EC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001619C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000161F0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001CFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016244();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001D0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016298();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001D1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016340();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10001D28C()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A20);
  sub_10000219C(v0, qword_100049A20);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TREATMENT_ALLOCATION_STATUS_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TREATMENT_ALLOCATION_STATUS_ALLOCATED";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TREATMENT_ALLOCATION_STATUS_ACTIVATED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TREATMENT_ALLOCATION_STATUS_DEACTIVATED";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001D4EC()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A38);
  sub_10000219C(v0, qword_100049A38);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SEARCH_BAR_POSITION_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH_BAR_POSITION_TOP";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEARCH_BAR_POSITION_BOTTOM";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001D714()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A50);
  sub_10000219C(v0, qword_100049A50);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BUILD_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BUILD_TYPE_DEV";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BUILD_TYPE_CARRY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BUILD_TYPE_SEED";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "BUILD_TYPE_PROD";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001D9B4()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A68);
  sub_10000219C(v0, qword_100049A68);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "HIDE_REASON_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HIDE_REASON_USER_DISMISS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HIDE_REASON_USER_INTERACTION_WITH_SBA";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HIDE_REASON_USER_INTERACTION_WITH_OTHER_BUTTONS";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}