uint64_t sub_17D84(uint64_t *a1, void *a2)
{
  v2 = *a1;
  sub_1DBE8(a2);
  return sub_8B57C();
}

uint64_t sub_17DB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_84770(a1);
}

uint64_t sub_17E4C()
{
  sub_2714((v0 + 16));
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v3 = sub_8BDBC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2714((v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_17ECC()
{
  sub_17E4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HomeCommunicationFlow()
{
  result = qword_C0C00;
  if (!qword_C0C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17F78()
{
  result = sub_8BDBC();
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

uint64_t sub_18044()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_16DA4();
}

uint64_t sub_180E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HomeCommunicationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1811C()
{
  sub_2714((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1815C()
{
  sub_6608();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_E2A0;

  return sub_17DB0(v2);
}

void *sub_181F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_8BDBC();
  sub_E6E8();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  v17 = type metadata accessor for SharedGlobals();
  v43[3] = v17;
  v43[4] = &off_BB508;
  v18 = sub_E5DC(v43);
  sub_E63C(a4, v18);
  (*(v10 + 16))(v16, a1, v8);
  sub_E528(a2, v42);
  sub_E528(v43, v41);
  sub_E58C(v41, v41[3]);
  sub_E6E8();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  sub_16854();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v39 = v17;
  v40 = &off_BB508;
  v26 = sub_E5DC(v38);
  sub_E63C(v24, v26);
  v27 = type metadata accessor for SendAnnouncementFlow();
  v28 = sub_E824(v27);
  sub_E58C(v38, v39);
  sub_E6E8();
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_16854();
  v33 = sub_19568(v32);
  v34(v33);
  v28[11] = v17;
  v28[12] = &off_BB508;
  v35 = sub_E5DC(v28 + 8);
  sub_E63C(v4, v35);
  sub_2714(a2);
  (*(v10 + 8))(a1, v8);
  sub_2714(v43);
  *(v28 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = 0;
  (*(v10 + 32))(v28 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_input, v16, v8);
  sub_E510(v42, (v28 + 2));
  v28[7] = a3;
  sub_2714(v38);
  sub_2714(v41);
  return v28;
}

uint64_t sub_184E0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a4;
  v99 = a3;
  v97 = a1;
  v7 = a2;
  v8 = sub_8BE0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_8BDBC();
  v13 = *(v100 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v100);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v96 - v18;
  v20 = type metadata accessor for SharedGlobals();
  v107[3] = v20;
  v107[4] = &off_BB508;
  v21 = sub_E5DC(v107);
  sub_191AC(a5, v21);
  if (v7 == 7)
  {
    goto LABEL_2;
  }

  if (v7 < 2)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v55 = sub_8CD0C();
    sub_33F4(v55, qword_C3DF8);
    v56 = sub_8CCEC();
    v57 = sub_8D11C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "#HomeCommunicationRequestSupportPolicy calling SendAnnouncementFlow", v58, 2u);
    }

    (*(v9 + 16))(v12, v97, v8);
    sub_8BDAC();
    v59 = v100;
    (*(v13 + 16))(v17, v19, v100);
    sub_E528(v98, v106);
    sub_E528(v107, v104);
    v60 = v105;
    v61 = sub_E58C(v104, v105);
    v62 = *(*(v60 - 8) + 64);
    __chkstk_darwin(v61);
    v64 = &v96 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v64);
    v66 = v99;

    v67 = sub_181F4(v17, v106, v66, v64);
    sub_2714(v104);
    sub_569FC();
    *&v106[0] = v67;
    type metadata accessor for SendAnnouncementFlow();
    sub_19520(&qword_C0448, type metadata accessor for SendAnnouncementFlow);
    v68 = sub_8B33C();
    (*(v13 + 8))(v19, v59);
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v73 = sub_8CD0C();
    sub_33F4(v73, qword_C3DF8);
    v74 = sub_8CCEC();
    v75 = sub_8D11C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "#HomeCommunicationRequestSupportPolicy calling StopAnnouncementFlow", v76, 2u);
    }

    (*(v9 + 16))(v12, v97, v8);
    sub_8BDAC();
    v33 = v13;
    v34 = v100;
    (*(v13 + 16))(v17, v19, v100);
    sub_E528(v98, v106);
    sub_E528(v107, v104);
    v77 = v105;
    v78 = sub_E58C(v104, v105);
    v98 = &v96;
    v79 = *(*(v77 - 8) + 64);
    __chkstk_darwin(v78);
    v81 = &v96 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v81);
    v102 = v20;
    v103 = &off_BB508;
    v83 = sub_E5DC(v101);
    sub_E63C(v81, v83);
    v84 = type metadata accessor for StopAnnouncementFlow();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    v87 = swift_allocObject();
    v88 = v102;
    v89 = sub_E58C(v101, v102);
    v90 = *(*(v88 - 8) + 64);
    __chkstk_darwin(v89);
    v92 = &v96 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v92);
    v87[11] = v20;
    v87[12] = &off_BB508;
    v94 = sub_E5DC(v87 + 8);
    sub_E63C(v92, v94);
    (*(v33 + 32))(v87 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input, v17, v34);
    sub_E510(v106, (v87 + 2));
    v87[7] = v99;

    sub_2714(v101);
    sub_2714(v104);
    sub_78190();
    *&v106[0] = v87;
    v53 = &qword_C0450;
    v54 = type metadata accessor for StopAnnouncementFlow;
    goto LABEL_28;
  }

  if (v7 == 2)
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v29 = sub_8CD0C();
    sub_33F4(v29, qword_C3DF8);
    v30 = sub_8CCEC();
    v31 = sub_8D11C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "#HomeCommunicationRequestSupportPolicy calling ReadAnnouncementFlow", v32, 2u);
    }

    (*(v9 + 16))(v12, v97, v8);
    sub_8BDAC();
    v33 = v13;
    v34 = v100;
    (*(v13 + 16))(v17, v19, v100);
    sub_E528(v98, v106);
    sub_E528(v107, v104);
    v35 = v105;
    v36 = sub_E58C(v104, v105);
    v98 = &v96;
    v37 = *(*(v35 - 8) + 64);
    __chkstk_darwin(v36);
    v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39);
    v102 = v20;
    v103 = &off_BB508;
    v41 = sub_E5DC(v101);
    sub_E63C(v39, v41);
    AnnouncementFlow = type metadata accessor for ReadAnnouncementFlow();
    v43 = *(AnnouncementFlow + 48);
    v44 = *(AnnouncementFlow + 52);
    v45 = swift_allocObject();
    v46 = v102;
    v47 = sub_E58C(v101, v102);
    v48 = *(*(v46 - 8) + 64);
    __chkstk_darwin(v47);
    v50 = &v96 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v50);
    v45[11] = v20;
    v45[12] = &off_BB508;
    v52 = sub_E5DC(v45 + 8);
    sub_E63C(v50, v52);
    (*(v33 + 32))(v45 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20ReadAnnouncementFlow_input, v17, v34);
    sub_E510(v106, (v45 + 2));
    v45[7] = v99;

    sub_2714(v101);
    sub_2714(v104);
    sub_3C598();
    *&v106[0] = v45;
    v53 = &qword_C0458;
    v54 = type metadata accessor for ReadAnnouncementFlow;
LABEL_28:
    sub_19520(v53, v54);
    v68 = sub_8B33C();
    (*(v33 + 8))(v19, v34);
LABEL_29:

    goto LABEL_30;
  }

LABEL_2:
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v22 = sub_8CD0C();
  sub_33F4(v22, qword_C3DF8);
  v23 = sub_8CCEC();
  v24 = sub_8D12C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v106[0] = v26;
    *v25 = 136315138;
    if (a2 == 7)
    {
      v27 = 0xEF3E656D616E2073;
      v28 = 0x73616C63206F4E3CLL;
    }

    else
    {
      v69 = sub_1D6AC(a2);
      v70 = [v69 _className];

      v28 = sub_8CEDC();
      v27 = v71;
    }

    v72 = sub_862D8(v28, v27, v106);

    *(v25 + 4) = v72;
    _os_log_impl(&dword_0, v23, v24, "#HomeCommunicationRequestSupportPolicy unknown HomeCommunicationIntentClassName. Can't find an intent matching %s", v25, 0xCu);
    sub_2714(v26);
  }

  v68 = 0;
LABEL_30:
  sub_2714(v107);
  return v68;
}

uint64_t sub_191AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGlobals();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19210(uint64_t a1, void *a2)
{
  sub_8BE1C();
  sub_622C(v25, v25[3]);
  if (sub_8B5CC())
  {
    sub_2714(v25);
    return 0;
  }

  sub_8BE1C();
  sub_622C(v24, v24[3]);
  v3 = sub_8B63C();
  sub_2714(v24);
  sub_2714(v25);
  if (v3)
  {
    return 0;
  }

  if (qword_BF838 != -1)
  {
    swift_once();
  }

  v5 = *sub_622C(qword_C3E30, qword_C3E48);
  if ((sub_7F1F4() & 1) == 0)
  {
    return 2;
  }

  v6 = a2[3];
  v7 = a2[4];
  sub_622C(a2, v6);
  v8 = *(v7 + 144);
  v9 = *(v8(v6, v7) + 16);

  if (v9)
  {
    v10 = v8(v6, v7);
    v11 = *(v10 + 16);
    v12 = (v10 + 56);
    if (!v11)
    {
LABEL_16:

      return 7;
    }

    while (1)
    {
      v13 = *(v12 - 1) == 0xD00000000000001BLL && 0x80000000000953B0 == *v12;
      if (!v13 && (sub_8D45C() & 1) == 0)
      {
        break;
      }

      v12 += 4;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_622C(a2, v14);
  if ((*(v15 + 40))(v14, v15))
  {
    v16 = a2[3];
    v17 = a2[4];
    sub_622C(a2, v16);
    if (((*(v17 + 48))(v16, v17) & 1) == 0)
    {
      return 1;
    }
  }

  v18 = a2[3];
  v19 = a2[4];
  sub_622C(a2, v18);
  if ((*(v19 + 16))(v18, v19) == 4)
  {
    return 4;
  }

  v20 = a2[3];
  v21 = a2[4];
  sub_622C(a2, v20);
  if ((*(v21 + 16))(v20, v21) == 5)
  {
    return 5;
  }

  v22 = a2[3];
  v23 = a2[4];
  sub_622C(a2, v22);
  if ((*(v23 + 16))(v22, v23) == 6)
  {
    return 6;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_19520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19590@<X0>(uint64_t a1@<X8>)
{
  sub_8C7CC();
  if (sub_8C7BC())
  {
    sub_8C79C();
    sub_1D468();
    sub_8BAAC();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_8B78C();

  return sub_6270(a1, v2, 1, v3);
}

uint64_t *sub_19620()
{
  v0 = type metadata accessor for SharedGlobals();
  v1 = (v0 - 8);
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1D164();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = (&v35 - v7);
  v39 = &unk_B9EE8;
  v40 = &off_B9F88;
  type metadata accessor for HomeCommunicationFeatureManager();
  v9 = swift_allocObject();
  sub_E58C(v38, &unk_B9EE8);
  *(v9 + 40) = &unk_B9EE8;
  *(v9 + 48) = &off_B9F88;
  sub_2714(v38);
  v36 = [objc_opt_self() isAnnounceEnabled];
  v39 = &unk_B9EE8;
  v40 = &off_B9F88;
  v10 = swift_allocObject();
  sub_E58C(v38, &unk_B9EE8);
  *(v10 + 40) = &unk_B9EE8;
  *(v10 + 48) = &off_B9F88;
  sub_2714(v38);
  v11 = type metadata accessor for SKFlowFactory();
  v12 = sub_1D438();
  v8[5] = v11;
  v8[6] = &off_BB630;
  v8[2] = v12;
  sub_19590(v8 + v1[9]);
  v13 = type metadata accessor for RadarUtils();
  v14 = swift_allocObject();
  v15 = sub_8C88C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v14 + 16) = sub_8C87C();
  v18 = (v8 + v1[10]);
  v18[3] = v13;
  v18[4] = &off_BAD20;
  *v18 = v14;
  v19 = sub_8CBEC();
  v20 = sub_8CBDC();
  v39 = v19;
  v40 = &protocol witness table for ReferenceResolutionClient;
  v38[0] = v20;
  type metadata accessor for SharedNeedsValueContext();
  v21 = swift_allocObject();
  sub_1CED8();
  *(v21 + 16) = sub_8CE6C();
  *v8 = v10;
  sub_E528(v38, v37);
  type metadata accessor for DirectInvocationTransformer();
  v22 = sub_1D438();
  type metadata accessor for NLTransformer();
  v23 = swift_allocObject();
  sub_E58C(v37, v37[3]);
  sub_E6E8();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  v28 = sub_1D0B4(v27, v35);
  v29(v28);

  v31 = sub_1C5C4(v30, *"sendAnnouncementCATsSimple", v22, v23);
  sub_2714(v37);
  sub_2714(v38);
  v8[1] = v31;
  *(v8 + v1[12]) = v21;
  type metadata accessor for CATBundleRegisterer();
  v32 = sub_1D438();
  sub_191AC(v8, v5);
  v33 = sub_1C3CC(v9, v36, v5, v32);
  sub_1CF2C(v8, type metadata accessor for SharedGlobals);
  return v33;
}

uint64_t sub_19994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_8BE0C();
  sub_E6E8();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_1D164();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v18 = sub_8CD0C();
  v19 = sub_33F4(v18, qword_C3DF8);
  v20 = *(v8 + 16);
  v38 = a1;
  v20(v17, a1, v6);
  v37[3] = v19;
  v21 = sub_8CCEC();
  v22 = sub_8D11C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_1D358();
    v37[2] = a2;
    v24 = v23;
    v25 = sub_6630();
    v37[1] = v3;
    v26 = v25;
    v39 = v25;
    *v24 = 136315138;
    v20(v14, v17, v6);
    v27 = sub_72160(v14);
    v29 = v28;
    (*(v8 + 8))(v17, v6);
    v30 = sub_862D8(v27, v29, &v39);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_0, v21, v22, "#HomeCommunicationFlowDelegatePlugin executing findFlowForX with parse: %s", v24, 0xCu);
    sub_2714(v26);
    sub_E890();
    sub_E890();
  }

  else
  {

    (*(v8 + 8))(v17, v6);
  }

  if (sub_19C4C(v38))
  {
    sub_8B39C();
  }

  else
  {
    v32 = sub_8CCEC();
    v33 = sub_8D12C();
    if (sub_1D1B8(v33))
    {
      v34 = sub_E8E0();
      sub_1D274(v34);
      sub_1D214();
    }

    return sub_8B38C();
  }
}

uint64_t *sub_19C4C(uint64_t *a1)
{
  v412 = sub_8BDEC();
  sub_E6E8();
  v405 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_1D164();
  v422 = (v6 - v7);
  __chkstk_darwin(v8);
  sub_1D230(&v396 - v9);
  v10 = sub_2664(&qword_C0E00, &qword_8F9A8);
  sub_65E4(v10);
  v12 = *(v11 + 64);
  sub_1D394();
  __chkstk_darwin(v13);
  sub_1D370();
  sub_1D230(v14);
  v15 = sub_2664(&qword_C0E08, &qword_8F9B0);
  sub_65E4(v15);
  v17 = *(v16 + 64);
  sub_1D394();
  __chkstk_darwin(v18);
  sub_1D370();
  sub_1D230(v19);
  v20 = sub_2664(&qword_C0E10, &qword_8F9B8);
  sub_65E4(v20);
  v22 = *(v21 + 64);
  sub_1D394();
  __chkstk_darwin(v23);
  sub_1D370();
  sub_1D230(v24);
  v25 = sub_2664(&qword_C0E18, &unk_8F9C0);
  sub_65E4(v25);
  v27 = *(v26 + 64);
  sub_1D394();
  __chkstk_darwin(v28);
  sub_1D370();
  sub_1D174(v29);
  v30 = sub_8CA2C();
  v31 = sub_65E4(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_16854();
  v423 = v35 - v34;
  v404 = sub_8C99C();
  sub_E6E8();
  v418 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v39);
  sub_16854();
  sub_1D174(v41 - v40);
  v410 = type metadata accessor for SmsNLIntent();
  v42 = sub_6574(v410);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v45);
  sub_1D174(&v396 - v46);
  v414 = sub_8C71C();
  sub_E6E8();
  v424 = v47;
  v49 = *(v48 + 64);
  __chkstk_darwin(v50);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v51);
  sub_1D174(&v396 - v52);
  v407 = sub_8BDBC();
  sub_E6E8();
  v406 = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v56);
  sub_16854();
  sub_1D174(v58 - v57);
  v59 = sub_8BE0C();
  sub_E6E8();
  v61 = v60;
  v63 = *(v62 + 64);
  __chkstk_darwin(v64);
  sub_1D164();
  sub_115DC();
  v66 = __chkstk_darwin(v65);
  v426 = &v396 - v67;
  __chkstk_darwin(v66);
  sub_115DC();
  __chkstk_darwin(v68);
  v70 = (&v396 - v69);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v71 = sub_8CD0C();
  v72 = sub_33F4(v71, qword_C3DF8);
  v74 = v61 + 16;
  v73 = *(v61 + 16);
  v73(v70, a1, v59);
  v75 = sub_8CCEC();
  v76 = sub_8D11C();
  v77 = os_log_type_enabled(v75, v76);
  v419 = a1;
  v421 = v61 + 16;
  v417 = v73;
  if (v77)
  {
    v78 = sub_1D358();
    v413 = v72;
    v79 = v78;
    v396 = sub_6630();
    v433 = v396;
    *v79 = 136315138;
    v80 = v420;
    v73(v420, v70, v59);
    v81 = sub_72160(v80);
    v83 = v82;
    v84 = sub_1D2BC();
    v85(v84);
    v86 = v81;
    v88 = v424;
    v87 = v425;
    v70 = sub_862D8(v86, v83, &v433);

    *(v79 + 4) = v70;
    _os_log_impl(&dword_0, v75, v76, "#HomeCommunicationFlowDelegatePlugin Executing makeFlowFor with parse: %s", v79, 0xCu);
    sub_2714(v396);
    sub_E890();
    v72 = v413;
    sub_E890();
  }

  else
  {

    v90 = sub_1D2BC();
    v91(v90);
    v88 = v424;
    v87 = v425;
  }

  v89 = v59;
  v92 = v422;
  v93 = v426;
  if (*(v87 + 16) != 1)
  {
    v114 = v72;
    v115 = sub_8CCEC();
    v116 = sub_8D11C();
    if (sub_1D1B8(v116))
    {
      v117 = sub_E8E0();
      sub_1D274(v117);
      sub_1D144(&dword_0, v118, v119, "The entire Home Communication feature is disabled.");
      sub_1D214();
    }

    sub_E528(v87 + 32, &v433);
    type metadata accessor for HomeCommunicationCATsSimple();
    sub_1D2A4();
    v426 = sub_1D28C();
    type metadata accessor for SendAnnouncementCATsSimple();
    sub_1D2A4();
    v120 = sub_1D28C();
    sub_1D340(v120);
    type metadata accessor for ReadAnnouncementCATsSimple();
    sub_1D2A4();
    sub_1D28C();
    sub_1D3C0();
    sub_1D2A4();
    sub_1D28C();
    sub_1D1F4();
    sub_1D34C();
    sub_E6E8();
    v122 = *(v121 + 64);
    __chkstk_darwin(v123);
    v125 = sub_1D0B4(v124, v396);
    v126(v125);
    v127 = type metadata accessor for SharedGlobals();
    sub_1D450(v127);
    v128 = sub_1D248();
    sub_E63C(v128, v129);
    type metadata accessor for UnsupportedDialogFlow();
    sub_1D2F4();
    sub_1D1D4();
    sub_1D280();
    sub_E6E8();
    v131 = *(v130 + 64);
    __chkstk_darwin(v132);
    sub_16854();
    v134 = sub_1D12C(v133);
    v135(v134);
    v136 = sub_1D408();
    sub_1D4B0(v136);
    v70[2] = 0;
    sub_E510(&v427, (v70 + 3));
    v137 = v425;
    v70[8] = v426;
    v70[9] = v137;
    v70[10] = v92;
    v70[11] = v114;
    sub_2714(&v430);
    sub_2714(&v433);
    v433 = v70;
    sub_1D0D4();
    sub_1CE90(v138, 255, v139);
    sub_1D23C();
    v113 = sub_8B33C();
    goto LABEL_14;
  }

  v94 = v419;
  v95 = v417;
  v417(v426, v419, v89);
  v96 = (*(v74 + 88))(v93, v89);
  if (v96 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_8:
    v97 = sub_1D328();
    v98(v97);
    v99 = v72;
    v100 = sub_8CCEC();
    v101 = sub_8D11C();
    if (sub_1D1B8(v101))
    {
      v102 = sub_E8E0();
      sub_1D274(v102);
      sub_1D144(&dword_0, v103, v104, "#HomeCommunicationFlowDelegatePlugin NLv3/NLv4/USO");
      sub_E890();
    }

    v95(v420, v419, v89);
    v105 = v416;
    sub_8BDAC();
    sub_E528(v87 + 32, &v433);
    sub_8B3FC();
    sub_1D2D8();
    sub_E6E8();
    v107 = *(v106 + 64);
    __chkstk_darwin(v108);
    sub_16854();
    v110 = sub_1D114(v109);
    v111(v110);
    v112 = sub_1CA98(v105, v99, &v430);
    sub_2714(&v433);
    v433 = v112;
    v113 = type metadata accessor for HomeCommunicationFlow();
    sub_1CE90(&qword_C0D28, 255, type metadata accessor for HomeCommunicationFlow);
    sub_1D23C();
    sub_8B33C();
    sub_1D388();
LABEL_14:

    return v113;
  }

  if (v96 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v141 = v89;
    v142 = v94;
    v143 = v426;
    (*(v74 + 96))(v426, v141);
    v144 = *&v143[*(sub_2664(&qword_C0E28, &qword_938D0) + 48)];
    v145 = v415;
    v146 = v143;
    v147 = v414;
    (*(v88 + 32))(v415, v146, v414);
    v426 = v144;
    v148 = sub_8BDFC();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v422 = v148;
      v149 = *(v88 + 16);
      v150 = v408;
      v149(v408, v145, v147);
      v151 = sub_8CCEC();
      v152 = sub_8D11C();
      v153 = os_log_type_enabled(v151, v152);
      v413 = v72;
      if (v153)
      {
        v154 = sub_1D358();
        v155 = sub_6630();
        v433 = v155;
        *v154 = 136315138;
        sub_1CE90(&qword_C0E98, 255, &type metadata accessor for NLIntent);
        v156 = sub_8D43C();
        v157 = v150;
        v159 = v158;
        v160 = *(v88 + 8);
        v160(v157, v147);
        v161 = sub_862D8(v156, v159, &v433);

        *(v154 + 4) = v161;
        _os_log_impl(&dword_0, v151, v152, "NL intent: %s", v154, 0xCu);
        sub_2714(v155);
        sub_E890();
        sub_E890();
      }

      else
      {

        v160 = *(v88 + 8);
        v160(v150, v147);
      }

      v205 = v409;
      v141 = v415;
      v149(v409, v415, v147);
      v206 = sub_7323C();
      sub_1D0EC();
      if (v206)
      {
        v149(v205, v141, v147);
        if (qword_BF8B8 != -1)
        {
          swift_once();
        }

        sub_1D1A0();
        sub_1CE90(v207, 255, v208);
        v209 = sub_8C4CC();
        sub_1D0EC();
        v210 = *(v209 + 16);
        v211 = v404;
        v212 = v403;
        if (v210)
        {
          v433 = &_swiftEmptyArrayStorage;
          sub_551CC(0, v210, 0);
          v213 = v433;
          v421 = v209;
          v214 = (v209 + 40);
          do
          {
            v215 = *(v214 - 1);
            v216 = *v214;

            sub_1D37C();
            sub_8C96C();
            v433 = v213;
            v218 = v213[2];
            v217 = v213[3];
            if (v218 >= v217 >> 1)
            {
              sub_551CC(v217 > 1, v218 + 1, 1);
              v213 = v433;
            }

            v213[2] = v218 + 1;
            (*(v418 + 32))(v213 + ((*(v418 + 80) + 32) & ~*(v418 + 80)) + *(v418 + 72) * v218, v212, v211);
            v214 += 2;
            --v210;
          }

          while (v210);
        }

        else
        {

          v213 = &_swiftEmptyArrayStorage;
        }

        v325 = sub_8CCEC();
        v326 = sub_8D11C();

        if (os_log_type_enabled(v325, v326))
        {
          v327 = sub_1D358();
          v328 = sub_6630();
          v433 = v328;
          *v327 = 136315138;
          v329 = sub_8D05C();
          v331 = sub_862D8(v329, v330, &v433);

          *(v327 + 4) = v331;
          _os_log_impl(&dword_0, v325, v326, "Non-existing targets - %s, cannot receive announcements.", v327, 0xCu);
          sub_2714(v328);
          sub_E890();
          sub_E890();
        }

        sub_1D184();
        type metadata accessor for HomeCommunicationCATsSimple();
        sub_1D498();
        v332 = sub_1D420();
        sub_1D340(v332);
        type metadata accessor for SendAnnouncementCATsSimple();
        sub_1D498();
        v333 = sub_1D420();
        sub_1D3D8(v333);
        sub_1D498();
        v420 = sub_1D420();
        type metadata accessor for SkipAnnouncementCATsSimple();
        sub_1D498();
        v334 = sub_1D420();
        sub_E58C(&v433, v434);
        sub_E6E8();
        v336 = *(v335 + 64);
        __chkstk_darwin(v337);
        sub_16854();
        v340 = v339 - v338;
        (*(v341 + 16))(v339 - v338);
        v342 = type metadata accessor for SharedGlobals();
        v431 = v342;
        v432 = &off_BB508;
        v343 = sub_E5DC(&v430);
        sub_E63C(v340, v343);
        type metadata accessor for UnsupportedDialogFlow();
        v344 = swift_allocObject();
        sub_E58C(&v430, v431);
        sub_E6E8();
        v346 = *(v345 + 64);
        __chkstk_darwin(v347);
        sub_16854();
        v350 = v349 - v348;
        (*(v351 + 16))(v349 - v348);
        v428 = v342;
        v429 = &off_BB508;
        v352 = sub_E5DC(&v427);
        sub_E63C(v350, v352);
        v344[2] = v213;
        sub_E510(&v427, (v344 + 3));
        v353 = v421;
        v344[8] = v425;
        v344[9] = v353;
        v344[10] = v420;
        v344[11] = v334;
        sub_2714(&v430);
        sub_2714(&v433);
        v433 = v344;
        sub_1D0D4();
        sub_1CE90(v354, 255, v355);
        sub_1D23C();
        v113 = sub_8B33C();
        goto LABEL_73;
      }

      v219 = v401;
      v220 = v147;
      v149(v401, v141, v147);
      if (qword_BF890 != -1)
      {
        swift_once();
      }

      sub_1D1A0();
      sub_1CE90(v221, 255, v222);
      v223 = v402;
      sub_8C49C();
      sub_1D0EC();
      v224 = sub_8C4DC();
      v225 = sub_3364(v223, 1, v224);
      sub_1D05C(v223, &qword_C0E18, &unk_8F9C0);
      v196 = v422;
      if (v225 == 1)
      {
        sub_1D184();
        sub_8BE1C();
        sub_1D2D8();
        sub_1D280();
        sub_E6E8();
        v227 = *(v226 + 64);
        __chkstk_darwin(v228);
        sub_16854();
        v230 = sub_1D114(v229);
        v231(v230);
        sub_1CBD4(&v430, v219, 0);
        sub_2714(&v433);
        v232 = sub_2664(&qword_C0E78, &qword_8F9F0);
        v233 = v399;
        sub_1D3A0(v399, v234, v235, v232);
        type metadata accessor for SendAnnouncementRCHFlowDelegate();
        sub_1CE90(&qword_C0E80, 255, type metadata accessor for SendAnnouncementRCHFlowDelegate);
        sub_8B8DC();
        sub_1D468();
        sub_1D05C(v233, &qword_C0E10, &qword_8F9B8);
        v433 = v223;
        v113 = &qword_C0E88;
        v236 = sub_1D37C();
        sub_2664(v236, v237);
        sub_1CE3C(&qword_C0E90, &qword_C0E88, &qword_8F9F8);
        sub_1D23C();
        sub_8B33C();
        sub_1D388();

        v160(v141, v220);
        return v113;
      }

      v197 = v413;
      v264 = sub_8CCEC();
      v265 = sub_8D11C();
      if (sub_1D1B8(v265))
      {
        v266 = sub_E8E0();
        sub_1D274(v266);
        sub_1D144(&dword_0, v267, v268, "Announcing to a contact or relationship isn't supported.");
        sub_1D214();
      }

      sub_1D184();
      type metadata accessor for HomeCommunicationCATsSimple();
      sub_1D480();
      v269 = sub_1D3F0();
      sub_1D340(v269);
      type metadata accessor for SendAnnouncementCATsSimple();
      sub_1D480();
      v270 = sub_1D3F0();
      sub_1D3D8(v270);
      sub_1D480();
      sub_1D3F0();
      sub_1D3C0();
      sub_1D480();
      sub_1D3F0();
      sub_1D1F4();
      sub_1D34C();
      sub_E6E8();
      v272 = *(v271 + 64);
      __chkstk_darwin(v273);
      v275 = sub_1D0B4(v274, v396);
      v276(v275);
      v277 = type metadata accessor for SharedGlobals();
      sub_1D450(v277);
      v278 = sub_1D248();
      sub_E63C(v278, v279);
      type metadata accessor for UnsupportedDialogFlow();
      sub_1D2F4();
      sub_1D1D4();
      sub_1D280();
      sub_E6E8();
      v281 = *(v280 + 64);
      __chkstk_darwin(v282);
      sub_16854();
      v284 = sub_1D12C(v283);
      v285(v284);
      v286 = sub_1D408();
      sub_1D4B0(v286);
      v287 = 1;
LABEL_72:
      v196[2] = v287;
      sub_E510(&v427, (v196 + 3));
      v393 = v421;
      v196[8] = v425;
      v196[9] = v393;
      v196[10] = v141;
      v196[11] = v197;
      sub_2714(&v430);
      sub_2714(&v433);
      v433 = v196;
      sub_1D0D4();
      sub_1CE90(v394, 255, v395);
      sub_1D23C();
      v113 = sub_8B33C();
LABEL_73:

      (*(v424 + 8))(v415, v414);
      return v113;
    }

    v196 = v148;
    v197 = v72;
    objc_opt_self();
    sub_1D248();
    v198 = swift_dynamicCastObjCClass();
    if (v198)
    {
      v199 = v198;
      if ([v198 userNotificationType] == &dword_0 + 2)
      {
        v200 = sub_8CCEC();
        v201 = sub_8D12C();
        if (sub_1D1B8(v201))
        {
          v202 = sub_E8E0();
          sub_1D274(v202);
          sub_1D144(&dword_0, v203, v204, "Delivery failure occurred while attempting to read announcements on airpods.");
          sub_1D214();
        }

        v113 = type metadata accessor for BaseFlow();
        v433 = sub_1D438();
        sub_1CE90(&qword_C00E0, 255, type metadata accessor for BaseFlow);
        sub_1D23C();
      }

      else
      {
        if ([v199 readType] == &dword_0 + 2)
        {
          v422 = v196;
          v302 = sub_8CCEC();
          v303 = sub_8D11C();
          if (sub_1D1B8(v303))
          {
            v304 = sub_E8E0();
            sub_1D274(v304);
            sub_1D144(&dword_0, v305, v306, "Repeating announcements isn't supported.");
            sub_1D214();
          }

          sub_1D184();
          type metadata accessor for HomeCommunicationCATsSimple();
          sub_1D2A4();
          v307 = sub_1D28C();
          sub_1D340(v307);
          type metadata accessor for SendAnnouncementCATsSimple();
          sub_1D2A4();
          v308 = sub_1D28C();
          sub_1D3D8(v308);
          sub_1D2A4();
          sub_1D28C();
          sub_1D3C0();
          sub_1D2A4();
          sub_1D28C();
          sub_1D1F4();
          sub_1D34C();
          sub_E6E8();
          v310 = *(v309 + 64);
          __chkstk_darwin(v311);
          v313 = sub_1D0B4(v312, v396);
          v314(v313);
          v315 = type metadata accessor for SharedGlobals();
          sub_1D450(v315);
          v316 = sub_1D248();
          sub_E63C(v316, v317);
          type metadata accessor for UnsupportedDialogFlow();
          sub_1D2F4();
          sub_1D1D4();
          sub_1D280();
          sub_E6E8();
          v319 = *(v318 + 64);
          __chkstk_darwin(v320);
          sub_16854();
          v322 = sub_1D12C(v321);
          v323(v322);
          v324 = sub_1D408();
          sub_1D4B0(v324);
          v287 = 2;
          goto LABEL_72;
        }

        sub_1D184();
        sub_8BE1C();
        sub_1D2D8();
        sub_1D280();
        sub_E6E8();
        v357 = *(v356 + 64);
        __chkstk_darwin(v358);
        sub_16854();
        v360 = sub_1D114(v359);
        v361(v360);
        sub_1CD10(&v430, v197, type metadata accessor for ReadAnnouncementRCHFlowDelegate, &qword_C20F8, &qword_C2100);
        sub_2714(&v433);
        v362 = sub_2664(&qword_C0E50, &qword_8F9E0);
        v363 = v397;
        sub_1D3A0(v397, v364, v365, v362);
        type metadata accessor for ReadAnnouncementRCHFlowDelegate();
        sub_1CE90(&qword_C0E58, 255, type metadata accessor for ReadAnnouncementRCHFlowDelegate);
        sub_8B8DC();
        sub_1D468();
        sub_1D05C(v363, &qword_C0E08, &qword_8F9B0);
        v433 = v142;
        v113 = &qword_C0E60;
        v366 = sub_1D37C();
        sub_2664(v366, v367);
        sub_1CE3C(&qword_C0E68, &qword_C0E60, &qword_8F9E8);
        sub_1D23C();
      }

      sub_8B33C();
      sub_1D388();

      (*(v88 + 8))(v145, v414);
      return v113;
    }

    objc_opt_self();
    sub_1D248();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D184();
      sub_8BE1C();
      sub_1D2D8();
      sub_1D280();
      sub_E6E8();
      v289 = *(v288 + 64);
      __chkstk_darwin(v290);
      sub_16854();
      v292 = sub_1D114(v291);
      v293(v292);
      sub_1CD10(&v430, v72, type metadata accessor for StopAnnouncementRCHFlowDelegate, &qword_C3828, &qword_C3830);
      sub_2714(&v433);
      v294 = sub_2664(&qword_C0E30, &qword_8F9D0);
      v295 = v398;
      sub_1D3A0(v398, v296, v297, v294);
      type metadata accessor for StopAnnouncementRCHFlowDelegate();
      sub_1CE90(&qword_C0E38, 255, type metadata accessor for StopAnnouncementRCHFlowDelegate);
      sub_8B8DC();
      sub_1D468();
      sub_1D05C(v295, &qword_C0E00, &qword_8F9A8);
      v433 = v142;
      v113 = &qword_C0E40;
      v298 = sub_1D37C();
      sub_2664(v298, v299);
      sub_1CE3C(&qword_C0E48, &qword_C0E40, &qword_8F9D8);
      sub_1D23C();
      sub_8B33C();
      sub_1D388();

      (*(v88 + 8))(v415, v414);
      return v113;
    }

    objc_opt_self();
    sub_1D248();
    v368 = swift_dynamicCastObjCClass();
    v369 = v414;
    if (v368)
    {
      v422 = v196;
      v370 = sub_8CCEC();
      v371 = sub_8D11C();
      if (sub_1D1B8(v371))
      {
        v372 = sub_E8E0();
        sub_1D274(v372);
        sub_1D144(&dword_0, v373, v374, "Skipping announcements isn't supported.");
        sub_1D214();
      }

      sub_1D184();
      type metadata accessor for HomeCommunicationCATsSimple();
      sub_1D2A4();
      v375 = sub_1D28C();
      sub_1D340(v375);
      type metadata accessor for SendAnnouncementCATsSimple();
      sub_1D2A4();
      v376 = sub_1D28C();
      sub_1D3D8(v376);
      sub_1D2A4();
      sub_1D28C();
      sub_1D3C0();
      sub_1D2A4();
      sub_1D28C();
      sub_1D1F4();
      sub_1D34C();
      sub_E6E8();
      v378 = *(v377 + 64);
      __chkstk_darwin(v379);
      v381 = sub_1D0B4(v380, v396);
      v382(v381);
      v383 = type metadata accessor for SharedGlobals();
      sub_1D450(v383);
      v384 = sub_1D248();
      sub_E63C(v384, v385);
      type metadata accessor for UnsupportedDialogFlow();
      sub_1D2F4();
      sub_1D1D4();
      sub_1D280();
      sub_E6E8();
      v387 = *(v386 + 64);
      __chkstk_darwin(v388);
      sub_16854();
      v390 = sub_1D12C(v389);
      v391(v390);
      v392 = sub_1D408();
      sub_1D4B0(v392);
      v287 = 3;
      goto LABEL_72;
    }

    (*(v88 + 8))(v415, v369);
    v94 = v142;
    v89 = v141;
    v95 = v417;
    goto LABEL_28;
  }

  if (v96 != enum case for Parse.directInvocation(_:))
  {
    if (v96 == enum case for Parse.NLv4IntentOnly(_:) || v96 == enum case for Parse.uso(_:))
    {
      goto LABEL_8;
    }

    v179 = sub_1D328();
    v180(v179);
LABEL_28:
    v181 = v400;
    v95(v400, v94, v89);
    v182 = sub_8CCEC();
    v183 = v89;
    v184 = sub_8D12C();
    if (os_log_type_enabled(v182, v184))
    {
      v185 = sub_1D358();
      v186 = sub_6630();
      v187 = v95;
      v188 = v186;
      v433 = v186;
      *v185 = 136315138;
      v189 = v420;
      v187(v420, v181, v183);
      v190 = sub_72160(v189);
      v192 = v191;
      v193 = sub_1D310();
      v194(v193);
      v195 = sub_862D8(v190, v192, &v433);

      *(v185 + 4) = v195;
      _os_log_impl(&dword_0, v182, v184, "#HomeCommunicationFlowDelegatePlugin unsupportedParse %s", v185, 0xCu);
      sub_2714(v188);
      sub_E890();
      sub_E890();
    }

    else
    {

      v300 = sub_1D310();
      v301(v300);
    }

    return 0;
  }

  v162 = v426;
  (*(v74 + 96))(v426, v89);
  v163 = v405;
  v164 = v411;
  v165 = v412;
  (*(v405 + 32))(v411, v162, v412);
  (*(v163 + 16))(v92, v164, v165);
  v166 = sub_8CCEC();
  v167 = sub_8D11C();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = sub_1D358();
    v418 = v89;
    v169 = v168;
    v170 = sub_6630();
    v433 = v170;
    *v169 = 136315138;
    v171 = sub_8BDCC();
    v173 = v172;
    v174 = sub_1D254();
    v175(v174);
    v176 = sub_862D8(v171, v173, &v433);
    v177 = v419;

    *(v169 + 4) = v176;
    _os_log_impl(&dword_0, v166, v167, "#HomeCommunicationFlowDelegatePlugin pushing DirectInvocationHomeCommunicationFlow for DI with id=%s", v169, 0xCu);
    sub_2714(v170);
    sub_E890();
    v89 = v418;
    sub_E890();
  }

  else
  {

    v238 = sub_1D254();
    v239(v238);
    v177 = v419;
  }

  v417(v420, v177, v89);
  v240 = v416;
  sub_8BDAC();
  sub_1D184();
  type metadata accessor for SendAnnouncementCATsSimple();
  sub_1D2A4();
  v241 = sub_1D28C();
  sub_E58C(&v433, v434);
  sub_1D34C();
  sub_E6E8();
  v243 = *(v242 + 64);
  __chkstk_darwin(v244);
  sub_16854();
  v247 = v246 - v245;
  (*(v248 + 16))(v246 - v245);
  v249 = type metadata accessor for SharedGlobals();
  v431 = v249;
  v432 = &off_BB508;
  v250 = sub_E5DC(&v430);
  sub_E63C(v247, v250);
  v251 = type metadata accessor for DirectInvocationHomeCommunicationFlow();
  v252 = *(v251 + 48);
  v253 = *(v251 + 52);
  v254 = swift_allocObject();
  sub_E58C(&v430, v431);
  sub_E6E8();
  v256 = *(v255 + 64);
  __chkstk_darwin(v257);
  v259 = sub_1D0B4(v258, v396);
  v260(v259);
  v261 = (v254 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals);
  v261[3] = v249;
  v261[4] = &off_BB508;
  sub_E5DC(v261);
  v262 = sub_1D248();
  sub_E63C(v262, v263);
  (*(v406 + 32))(v254 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_input, v240, v407);
  *(v254 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sendAnnouncementCATsSimple) = v241;
  sub_2714(&v430);
  sub_2714(&v433);
  v433 = v254;
  sub_1CE90(&qword_C0460, 255, type metadata accessor for DirectInvocationHomeCommunicationFlow);
  sub_1D23C();
  v113 = sub_8B33C();

  (v426)(v411, v412);
  return v113;
}

uint64_t sub_1BFE8()
{
  v1 = *(v0 + 24);

  sub_2714((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t *sub_1C070@<X0>(uint64_t **a1@<X8>)
{
  result = sub_19620();
  *a1 = result;
  return result;
}

uint64_t sub_1C0F4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v17 = type metadata accessor for SharedGlobals();
  v18 = &off_BB508;
  v8 = sub_E5DC(&v16);
  sub_E63C(a2, v8);
  *(a4 + 56) = &_swiftEmptyArrayStorage;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v9 = sub_8CD0C();
  sub_33F4(v9, qword_C3DF8);
  v10 = sub_8CCEC();
  v11 = sub_8D11C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#HomeCommunicationFlow state is initialized.", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v14 = sub_8BDBC();
  (*(*(v14 - 8) + 32))(a4 + v13, a1, v14);
  sub_E510(&v16, a4 + 16);
  sub_E510(a3, a4 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender);
  return a4;
}

uint64_t *sub_1C288(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v20[3] = type metadata accessor for SharedGlobals();
  v20[4] = &off_BB508;
  v11 = sub_E5DC(v20);
  sub_E63C(a3, v11);
  v12 = type metadata accessor for CATBundleRegisterer();
  v19[3] = v12;
  v19[4] = &off_B9680;
  v19[0] = a4;
  *(a5 + 16) = a2;
  a5[3] = a1;
  sub_E528(v20, (a5 + 4));
  v13 = sub_622C(v19, v12);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();

  v16 = [v15 bundleForClass:{ObjCClassFromMetadata, v19[0]}];
  v17 = *v13;
  sub_C670();

  sub_2714(v20);
  sub_2714(v19);
  return a5;
}

uint64_t *sub_1C3CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = type metadata accessor for SharedGlobals();
  v27 = &off_BB508;
  v8 = sub_E5DC(v25);
  sub_E63C(a3, v8);
  v9 = type metadata accessor for CATBundleRegisterer();
  v24[3] = v9;
  v24[4] = &off_B9680;
  v24[0] = a4;
  type metadata accessor for HomeCommunicationFlowDelegatePlugin();
  v10 = swift_allocObject();
  v11 = v26;
  v12 = sub_E58C(v25, v26);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_E58C(v24, v9);
  v18 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1C288(a1, a2, v15, *v20, v10);
  sub_2714(v24);
  sub_2714(v25);
  return v22;
}

uint64_t sub_1C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = sub_8CBEC();
  v16 = &protocol witness table for ReferenceResolutionClient;
  *&v14 = a2;
  *(a4 + 24) = _swiftEmptyArrayStorage;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = xmmword_8F8D0;
  v8 = type metadata accessor for NLv4Transformer(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();

  *(a4 + 16) = sub_1C68C(v12, a2, v11);
  sub_E510(&v14, a4 + 96);
  *(a4 + 80) = a1;
  *(a4 + 88) = a3;
  return a4;
}

uint64_t sub_1C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C0EA8, &unk_8FA00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v23[3] = sub_8CBEC();
  v23[4] = &protocol witness table for ReferenceResolutionClient;
  v23[0] = a2;
  sub_E528(v23, v22);
  sub_1CF84(v22, v20);
  v11 = swift_allocObject();
  v12 = v20[1];
  *(v11 + 16) = v20[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v21;
  *(v11 + 56) = a1;
  type metadata accessor for TransformerInput(0);

  sub_2664(&qword_C0438, &qword_8EBD0);
  sub_8C80C();
  sub_1D05C(v22, &qword_C0EB0, &qword_90F40);
  (*(v7 + 32))(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_transformer, v10, v6);
  *(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_featureManager) = a1;
  v13 = qword_BF818;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_8CD0C();
  sub_33F4(v14, qword_C3DF8);
  v15 = sub_8CCEC();
  v16 = sub_8D11C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#NLv4Transformer is initiated, this function should be only be called once for each makeFlowFor function", v17, 2u);
  }

  else
  {
  }

  sub_2714(v23);
  return a3;
}

uint64_t sub_1C928(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v11[3] = type metadata accessor for SharedGlobals();
  v11[4] = &off_BB508;
  v8 = sub_E5DC(v11);
  sub_E63C(a2, v8);
  sub_E528(a1, a4 + qword_C2CF0);
  sub_E528(v11, a4 + qword_C2CF8);
  *(a4 + qword_C2D00) = a3;
  v9 = sub_8B9EC();
  sub_2714(a1);
  sub_2714(v11);
  return v9;
}

uint64_t sub_1C9E8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v13[3] = type metadata accessor for SharedGlobals();
  v13[4] = &off_BB508;
  v10 = sub_E5DC(v13);
  sub_E63C(a2, v10);
  sub_E528(a1, a3 + *a4);
  sub_E528(v13, a3 + *a5);
  v11 = sub_8B9EC();
  sub_2714(a1);
  sub_2714(v13);
  return v11;
}

uint64_t sub_1CA98(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v21 = type metadata accessor for SharedGlobals();
  v22 = &off_BB508;
  v6 = sub_E5DC(v20);
  sub_E63C(a2, v6);
  v7 = type metadata accessor for HomeCommunicationFlow();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v21;
  v12 = sub_E58C(v20, v21);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_1C0F4(a1, v15, a3, v10);
  sub_2714(v20);
  return v17;
}

uint64_t sub_1CBD4(uint64_t *a1, uint64_t a2, char a3)
{
  v21 = type metadata accessor for SharedGlobals();
  v22 = &off_BB508;
  v6 = sub_E5DC(v20);
  sub_E63C(a2, v6);
  v7 = type metadata accessor for SendAnnouncementRCHFlowDelegate();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v21;
  v12 = sub_E58C(v20, v21);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_1C928(a1, v15, a3, v10);
  sub_2714(v20);
  return v17;
}

uint64_t sub_1CD10(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void *a4, void *a5)
{
  v26 = type metadata accessor for SharedGlobals();
  v27 = &off_BB508;
  v11 = sub_E5DC(v25);
  sub_E63C(a2, v11);
  v12 = a3(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_E58C(v25, v26);
  sub_E6E8();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = sub_1D0B4(v19, v24);
  v21(v20);
  v22 = sub_1C9E8(a1, v5, v15, a4, a5);
  sub_2714(v25);
  return v22;
}

uint64_t sub_1CE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CE90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1CED8()
{
  result = qword_C0EA0;
  if (!qword_C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0EA0);
  }

  return result;
}

uint64_t sub_1CF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0EB0, &qword_90F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFF4()
{
  if (v0[5])
  {
    sub_2714(v0 + 2);
  }

  v1 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1D05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2664(a2, a3);
  sub_6574(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D0EC()
{

  return sub_1CF2C(v0, type metadata accessor for SmsNLIntent);
}

void sub_1D144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1D184()
{
  v2 = *(v0 - 224) + 32;

  return sub_E528(v2, v0 - 128);
}

BOOL sub_1D1B8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1D1D4()
{
  v2 = *(v0 - 144);

  return sub_E58C(v0 - 168, v2);
}

uint64_t sub_1D1F4()
{
  v2 = *(v0 - 104);

  return sub_E58C(v0 - 128, v2);
}

uint64_t sub_1D214()
{
}

uint64_t sub_1D254()
{
  v3 = *(v1 + 8);
  *(v2 - 232) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v0;
  *(v2 - 216) = v3;
  return result;
}

uint64_t sub_1D28C()
{

  return sub_8C9CC();
}

uint64_t sub_1D2A4()
{

  return sub_8CA1C();
}

uint64_t sub_1D2BC()
{
  result = v1;
  *(v2 - 296) = *(v0 + 8);
  return result;
}

uint64_t sub_1D2D8()
{
  v2 = *(v0 - 104);

  return sub_E58C(v0 - 128, v2);
}

uint64_t sub_1D2F4()
{

  return swift_allocObject();
}

uint64_t sub_1D310()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_1D328()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_1D358()
{

  return swift_slowAlloc();
}

uint64_t sub_1D3C0()
{

  return type metadata accessor for SkipAnnouncementCATsSimple();
}

uint64_t sub_1D3D8(uint64_t a1)
{
  *(v1 - 256) = a1;

  return type metadata accessor for ReadAnnouncementCATsSimple();
}

uint64_t sub_1D3F0()
{

  return sub_8C9CC();
}

uint64_t *sub_1D408()
{
  *(v2 - 184) = v1;
  *(v2 - 176) = v0;

  return sub_E5DC((v2 - 208));
}

uint64_t sub_1D420()
{

  return sub_8C9CC();
}

uint64_t sub_1D438()
{

  return swift_allocObject();
}

uint64_t *sub_1D450(uint64_t a1)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;

  return sub_E5DC((v2 - 168));
}

uint64_t sub_1D468()
{
}

uint64_t sub_1D480()
{

  return sub_8CA1C();
}

uint64_t sub_1D498()
{

  return sub_8CA1C();
}

uint64_t sub_1D4B0(uint64_t a1)
{

  return sub_E63C(v1, a1);
}

uint64_t getEnumTagSinglePayload for HomeCommunicationIntentClassNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeCommunicationIntentClassNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1D61CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D658()
{
  result = qword_C0EE0;
  if (!qword_C0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0EE0);
  }

  return result;
}

id sub_1D6AC(char a1)
{
  switch(a1)
  {
    case 2:
    case 4:
      if (qword_BF7F8 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EC0;
      break;
    case 3:
      if (qword_BF800 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EC8;
      break;
    case 5:
      if (qword_BF808 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0ED0;
      break;
    case 6:
      if (qword_BF810 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0ED8;
      break;
    default:
      if (qword_BF7F0 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EB8;
      break;
  }

  v2 = *v1;

  return v2;
}

id sub_1D83C()
{
  result = [objc_allocWithZone(INSendAnnouncementIntent) init];
  qword_C0EB8 = result;
  return result;
}

id sub_1D870()
{
  result = [objc_allocWithZone(INReadAnnouncementIntent) init];
  qword_C0EC0 = result;
  return result;
}

id sub_1D8A4()
{
  result = [objc_allocWithZone(INStopAnnouncementIntent) init];
  qword_C0EC8 = result;
  return result;
}

id sub_1D8D8()
{
  result = [objc_allocWithZone(INSkipAnnouncementIntent) init];
  qword_C0ED0 = result;
  return result;
}

id sub_1D90C()
{
  result = [objc_allocWithZone(INIntent) init];
  qword_C0ED8 = result;
  return result;
}

uint64_t sub_1D940()
{
  v0 = sub_8CD0C();
  sub_FCD8(v0, qword_C3DF8);
  sub_33F4(v0, qword_C3DF8);
  return sub_8CCFC();
}

uint64_t sub_1D9C0()
{
  sub_1DA28();
  result = sub_8D1AC();
  qword_C0EE8 = result;
  return result;
}

unint64_t sub_1DA28()
{
  result = qword_C0EF0;
  if (!qword_C0EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C0EF0);
  }

  return result;
}

uint64_t sub_1DA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CCDC();

  return sub_3364(a1, a2, v4);
}

uint64_t sub_1DADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CCDC();

  return sub_6270(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SignpostLog.Signpost()
{
  result = qword_C0F50;
  if (!qword_C0F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB74()
{
  result = sub_8CCDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DBE8(void *a1)
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(FLOWSchemaFLOWHomeCommunicationContext) init];
    if (v4)
    {
      v5 = v4;
      sub_1DD44(a1, v4);
      [v3 setHomeCommunicationContext:v5];
      [v3 setHasHomeCommunicationContext:1];
      goto LABEL_10;
    }
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v5 = sub_8CCEC();
  v7 = sub_8D12C();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v5, v7, "#HomeCommunicationDomainContextMetricsUtils returning without logging homeCommunication domain context", v8, 2u);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

void sub_1DD44(void *a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  sub_E528(a1, v27);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    v9 = v28;
    v10 = v29;
    v11 = sub_622C(v27, v28);
    v12 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v11);
    (*(v14 + 16))(&v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = *(v10 + 8);
    v16 = sub_8CEFC();
    v18 = v17;
    sub_2714(v27);
    v19 = sub_862D8(v16, v18, &v26);

    *(v7 + 4) = v19;
    _os_log_impl(&dword_0, v5, v6, "#HomeCommunicationDomainContextMetricsUtils addTaskType with homeCommunicationNLIntent: %s", v7, 0xCu);
    sub_2714(v8);
  }

  else
  {

    sub_2714(v27);
  }

  v20 = a1[3];
  v21 = a1[4];
  sub_622C(a1, v20);
  switch((*(v21 + 16))(v20, v21))
  {
    case 0u:
      v22 = a2;
      v23 = 1;
      goto LABEL_11;
    case 1u:
      v22 = a2;
      v23 = 2;
LABEL_11:
      [v22 setTaskType:{v23, v26}];
      sub_1E038(a1, a2);
      return;
    case 2u:
      v24 = a2;
      v25 = 3;
      goto LABEL_13;
    case 3u:
      v24 = a2;
      v25 = 4;
      goto LABEL_13;
    default:
      v24 = a2;
      v25 = 0;
LABEL_13:
      [v24 setTaskType:{v25, v26}];
      return;
  }
}

void sub_1E038(void *a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#HomeCommunicationDomainContextMetricsUtils addTargetType for send or reply announcement", v7, 2u);
  }

  v8 = [objc_allocWithZone(FLOWSchemaFLOWHomeCommunicationSendOrReply) init];
  if (v8)
  {
    v41 = v8;
    v9 = a1[3];
    v10 = a1[4];
    sub_622C(a1, v9);
    v11 = *(v10 + 112);
    v12 = *(v11(v9, v10) + 16);

    v13 = v12 == 0;
    if (v12)
    {
      for (i = *(v11(v9, v10) + 16); i; --i)
      {
        [v41 addTargetType:5];
      }
    }

    v15 = a1[3];
    v16 = a1[4];
    sub_622C(a1, v15);
    v17 = *((*(v16 + 96))(v15, v16) + 16);

    if (v17)
    {
      v18 = a1[3];
      v19 = a1[4];
      sub_622C(a1, v18);
      for (j = *((*(v19 + 96))(v18, v19) + 16); j; --j)
      {
        [v41 addTargetType:3];
      }

      v13 = 0;
    }

    v21 = a1[3];
    v22 = a1[4];
    sub_622C(a1, v21);
    v23 = *((*(v22 + 104))(v21, v22) + 16);

    if (v23)
    {
      v24 = a1[3];
      v25 = a1[4];
      sub_622C(a1, v24);
      for (k = *((*(v25 + 104))(v24, v25) + 16); k; --k)
      {
        [v41 addTargetType:4];
      }

      v13 = 0;
    }

    v27 = a1[3];
    v28 = a1[4];
    sub_622C(a1, v27);
    v29 = *((*(v28 + 72))(v27, v28) + 16);

    if (v29)
    {
      v30 = a1[3];
      v31 = a1[4];
      sub_622C(a1, v30);
      for (m = *((*(v31 + 72))(v30, v31) + 16); m; --m)
      {
        [v41 addTargetType:0];
      }

      v13 = 0;
    }

    v33 = a1[3];
    v34 = a1[4];
    sub_622C(a1, v33);
    if ((*(v34 + 40))(v33, v34))
    {
      [v41 addTargetType:6];
      v13 = 0;
    }

    v35 = a1[3];
    v36 = a1[4];
    sub_622C(a1, v35);
    v37 = (*(v36 + 64))(v35, v36);
    if ((v37 & 1) != 0 || v13)
    {
      if (v37)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      [v41 addTargetType:v38];
    }

    [a2 setSendOrReplyContext:v41];
    [a2 setHasSendOrReplyContext:1];
  }

  else
  {
    v41 = sub_8CCEC();
    v39 = sub_8D12C();
    if (os_log_type_enabled(v41, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v41, v39, "#HomeCommunicationDomainContextMetricsUtils returning without logging homeCommunication entityType", v40, 2u);
    }
  }
}

unint64_t sub_1E508(char a1)
{
  sub_8D25C(20);

  v2 = sub_1E62C(a1);
  v4 = v3;

  sub_1EC38(1);
  v5 = sub_8D1DC();
  v7 = v6;

  sub_1EB64(1uLL, v2, v4);
  sub_1ECF8();

  sub_8CF6C();

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_8CF7C(v9);

  return 0xD000000000000012;
}

unint64_t sub_1E62C(char a1)
{
  result = 7564659;
  switch(a1)
  {
    case 1:
      result = 0x62726556736D73;
      break;
    case 2:
      result = 0x6E756F4E736D73;
      break;
    case 3:
      result = 0x69666E6F43736D73;
      break;
    case 4:
      result = 0x617373654D736D73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E704(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 1953063287;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E778(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8460;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E7E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E778(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1E818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E704(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EFC0();
  v5 = sub_1F014();
  v6 = sub_1F068();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

uint64_t sub_1E8C8()
{
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAC0;
  sub_8CF0C();
  v1 = sub_10C68();
  sub_1F0E4(v1, v2, v3, v4, v5, v6, v7, v8, &type metadata for String, v1, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC();

  v31 = sub_1E508(3);
  v34 = v9;
  sub_1F0F4();
  v37._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v37);

  *(v0 + 32) = v31;
  *(v0 + 40) = v34;
  v10 = sub_8CF0C();
  sub_1F0E4(v10, v11, v12, v13, v14, v15, v16, v17, v29, v30, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC();

  v32 = sub_1E508(1);
  v35 = v18;
  sub_1F0F4();
  v38._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v38);

  *(v0 + 48) = v32;
  *(v0 + 56) = v35;
  v19 = sub_8CF0C();
  sub_1F0E4(v19, v20, v21, v22, v23, v24, v25, v26, &type metadata for String, v1, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC();

  v33 = sub_1E508(1);
  v36 = v27;
  sub_1F0F4();
  v39._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v39);

  *(v0 + 64) = v33;
  *(v0 + 72) = v36;
  qword_C3E10 = v0;
  return result;
}

unint64_t sub_1EAF8()
{
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAD0;
  *(v0 + 32) = sub_1E508(3);
  *(v0 + 40) = v1;
  result = sub_1E508(1);
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_C3E18 = v0;
  return result;
}

unint64_t sub_1EB64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_8CF5C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_8D00C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1EC38(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_8CF5C();
    v1 = sub_8D00C();

    return v1;
  }

  return result;
}

unint64_t sub_1ECF8()
{
  result = qword_C0F88;
  if (!qword_C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsConfirmationSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1EE18);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1EE54()
{
  result = qword_C0F98;
  if (!qword_C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0F98);
  }

  return result;
}

unint64_t sub_1EEAC()
{
  result = qword_C0FA0;
  if (!qword_C0FA0)
  {
    sub_B9BC(&qword_C0FA8, &qword_8FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FA0);
  }

  return result;
}

unint64_t sub_1EF14()
{
  result = qword_C0FB0;
  if (!qword_C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FB0);
  }

  return result;
}

unint64_t sub_1EF6C()
{
  result = qword_C0FB8;
  if (!qword_C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FB8);
  }

  return result;
}

unint64_t sub_1EFC0()
{
  result = qword_C0FC0;
  if (!qword_C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FC0);
  }

  return result;
}

unint64_t sub_1F014()
{
  result = qword_C0FC8;
  if (!qword_C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FC8);
  }

  return result;
}

unint64_t sub_1F068()
{
  result = qword_C0FD0[0];
  if (!qword_C0FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C0FD0);
  }

  return result;
}

uint64_t sub_1F0BC()
{

  return sub_8D1FC();
}

void sub_1F0F4()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_8CF7C(v2);
}

void sub_1F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v48[0] = v13;
  v48[1] = v14;
  v16 = v15;
  v18 = v17;
  v19 = *v12;
  v20 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v20);
  v22 = *(v21 + 64);
  sub_1D394();
  __chkstk_darwin(v23);
  v25 = v48 - v24;
  v26 = sub_8B8CC();
  v27 = sub_3488(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_16854();
  v34 = v33 - v32;

  if (sub_2670C(v18, v16))
  {
    v35 = *(v19 + qword_C3E20);
    v36 = *(v19 + qword_C3E20 + 8);
    sub_8BC0C();
    sub_8BC1C();
    sub_115FC();

    v43(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }

  else
  {
    sub_1F820();
    (*(v29 + 16))(v25, v34, v26);
    sub_22B0C();
    sub_6270(v45, v46, v47, v26);
    (v48[0])(v25);
    sub_92C0(v25, &qword_C1058, &unk_8FCA0);
    (*(v29 + 8))(v34, v26);
    sub_115FC();
  }
}

void sub_1F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v52 = v14;
  v16 = v15;
  v18 = v17;
  v19 = *v12;
  v20 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v20);
  v22 = *(v21 + 64);
  sub_1D394();
  __chkstk_darwin(v23);
  sub_22B50();
  v24 = sub_8B8CC();
  v25 = sub_3488(v24);
  v51 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_16854();
  v31 = v30 - v29;

  if (sub_2670C(v18, v16))
  {
    v32 = *(v19 + qword_C3E20);
    v33 = *(v19 + qword_C3E20 + 8);
    sub_8BC0C();
    sub_8BC1C();
    sub_22B40();
    sub_115FC();

    v40(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  else
  {
    sub_8B8BC();
    sub_8B84C();
    sub_1E508(0);
    sub_8B87C();
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_8FAC0;
    sub_8CF0C();
    sub_10C68();
    sub_22A88();
    sub_8D1FC();

    v53 = sub_1E508(3);
    v56 = v43;
    v59._countAndFlagsBits = sub_22A74();
    v59._object = 0xE700000000000000;
    sub_8CF7C(v59);
    v60._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v60);

    *(v42 + 32) = v53;
    *(v42 + 40) = v56;
    sub_8CF0C();
    sub_22A88();
    sub_8D1FC();

    v54 = sub_1E508(3);
    v57 = v44;
    v61._countAndFlagsBits = sub_22A74();
    v61._object = 0xE700000000000000;
    sub_8CF7C(v61);
    v62._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v62);

    *(v42 + 48) = v54;
    *(v42 + 56) = v57;
    sub_22BC8();
    sub_22A88();
    sub_8D1FC();

    v55 = sub_1E508(3);
    v58 = v45;
    v63._countAndFlagsBits = sub_22A74();
    v63._object = 0xE700000000000000;
    sub_8CF7C(v63);
    v64._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v64);

    *(v42 + 64) = v55;
    *(v42 + 72) = v58;
    sub_8B89C();
    v46 = sub_22B60();
    *(v46 + 16) = xmmword_8E3F0;
    *(v46 + 32) = sub_1E508(3);
    *(v46 + 40) = v47;
    sub_8B8AC();
    (*(v51 + 16))(v13, v31, v24);
    sub_22B0C();
    sub_6270(v48, v49, v50, v24);
    v52(v13);
    sub_92C0(v13, &qword_C1058, &unk_8FCA0);
    (*(v51 + 8))(v31, v24);
    sub_115FC();
  }
}

uint64_t sub_1F820()
{
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_22B78(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#HomeCommunicationNLContextProvider generateNLContextForAnnouncement", v3, 2u);
    sub_22AF0();
  }

  sub_8B8BC();
  sub_1E508(0);
  sub_8B88C();
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v4 = sub_22B60();
  *(v4 + 16) = xmmword_8E3F0;
  sub_22BC8();
  sub_10C68();
  sub_22A88();
  sub_8D1FC();

  v9 = sub_1E508(3);
  v10 = v5;
  v11._countAndFlagsBits = sub_22A74();
  v11._object = 0xE700000000000000;
  sub_8CF7C(v11);
  v12._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v12);

  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  sub_8B85C();
  v6 = sub_22B60();
  *(v6 + 16) = xmmword_8E3F0;
  *(v6 + 32) = sub_1E508(4);
  *(v6 + 40) = v7;
  sub_8B86C();
  sub_1FA20();
  return sub_8B83C();
}

void sub_1FA20()
{
  sub_11614();
  v0 = sub_8BFDC();
  v65 = sub_3488(v0);
  v66 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v65);
  sub_16854();
  v6 = v5 - v4;
  v7 = sub_8BE7C();
  v8 = sub_65E4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_16854();
  sub_22B50();
  v11 = sub_8BF4C();
  v12 = sub_3488(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = sub_2664(&qword_C1090, &unk_92770);
  sub_65E4(v22);
  v24 = *(v23 + 64);
  sub_1D394();
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  v28 = sub_8C6CC();
  sub_E824(v28);
  v29 = sub_8C6BC();
  v30 = sub_8C68C();
  sub_E824(v30);
  sub_8C67C();
  sub_8C66C();
  sub_8C59C();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_8E860;
  *(v31 + 32) = v29;
  v32 = sub_8C3FC();
  sub_6270(v27, 1, 1, v32);
  v67 = v29;

  v33 = sub_8C3AC();

  sub_92C0(v27, &qword_C1090, &unk_92770);
  sub_8BF3C();
  v68 = v33;
  sub_8C05C();
  v62 = v19;
  v63 = v6;
  v64 = v11;
  sub_8BF2C();
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v34 = sub_8CD0C();
  sub_22B78(v34, qword_C3DF8);
  v35 = sub_8CCEC();
  v36 = sub_8D11C();
  v37 = sub_22B18(v36);
  v38 = v64;
  if (v37)
  {
    v39 = sub_1D358();
    v40 = sub_6630();
    v69 = v40;
    *v39 = 136315138;
    sub_22AD8();
    swift_beginAccess();
    v41 = *(v14 + 16);
    v42 = v62;
    v43 = sub_22B40();
    v44(v43);
    v45 = sub_6988C(v42);
    v47 = sub_862D8(v45, v46, &v69);
    v38 = v64;

    *(v39 + 4) = v47;
    sub_22B90();
    _os_log_impl(v48, v49, v50, v51, v39, 0xCu);
    sub_2714(v40);
    sub_E890();
    sub_E890();
  }

  v52 = v65;
  v53 = v66;
  v54 = v63;
  sub_8BFCC();
  sub_22AD8();
  swift_beginAccess();
  v55 = *(v14 + 16);
  v56 = sub_22B40();
  v57(v56);
  sub_8BFBC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v58 = *(v53 + 72);
  v59 = v54;
  v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_8E3F0;
  (*(v53 + 32))(v61 + v60, v59, v52);

  (*(v14 + 8))(v21, v38);
  sub_115FC();
}

void sub_2000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v13 = v12;
  v124 = v15;
  v125 = v14;
  v17 = v16;
  v19 = v18;
  object = *v12;
  v21 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v21);
  v23 = *(v22 + 64);
  sub_1D394();
  __chkstk_darwin(v24);
  sub_1D370();
  v122 = v25;
  sub_22AE4();
  p_ivar_base_size = sub_8B8CC();
  v27 = sub_3488(p_ivar_base_size);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_9378();
  v120 = v32;
  sub_22ACC();
  __chkstk_darwin(v33);
  sub_22B34();
  v126 = v34;
  if (qword_BF818 != -1)
  {
LABEL_36:
    sub_650C();
    swift_once();
  }

  v121 = v29;
  v35 = sub_8CD0C();
  v36 = sub_33F4(v35, qword_C3DF8);
  v37 = sub_8CCEC();
  v38 = sub_8D11C();
  if (sub_22B18(v38))
  {
    v39 = v36;
    v40 = v13;
    v41 = sub_E8E0();
    *v41 = 0;
    sub_22B90();
    _os_log_impl(v42, v43, v44, v45, v41, 2u);
    v13 = v40;
    v36 = v39;
    sub_E890();
  }

  if (sub_2670C(v19, v17) == 1)
  {
    v119 = v13;
    sub_8B8BC();
    sub_1E508(0);
    sub_8B87C();
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v46 = sub_22B60();
    *(v46 + 16) = xmmword_8E3F0;
    v127 = sub_8CF0C();
    v128 = v47;
    v131 = 32;
    v132 = 0xE100000000000000;
    v133 = 95;
    v134 = 0xE100000000000000;
    sub_10C68();
    sub_22A88();
    sub_8D1FC();

    v127 = sub_1E508(3);
    v128 = v48;
    v135._countAndFlagsBits = sub_22A74();
    v135._object = 0xE700000000000000;
    sub_8CF7C(v135);
    v49 = v126;
    v136._countAndFlagsBits = sub_8CF0C();
    object = v136._object;
    sub_8CF7C(v136);

    v50 = v128;
    *(v46 + 32) = v127;
    *(v46 + 40) = v50;
    sub_8B89C();
    v51 = sub_2D8DC();
    v13 = sub_6C594(v51);

    if (v13)
    {
      v52 = sub_22B60();
      *(v52 + 16) = xmmword_8E3F0;
      *(v52 + 32) = sub_1E508(5);
      *(v52 + 40) = v53;
      sub_8B8AC();
      sub_8B84C();

      v17 = sub_8CCEC();
      v54 = sub_8D11C();

      v116 = v36;
      v117 = p_ivar_base_size;
      if (os_log_type_enabled(v17, v54))
      {
        v55 = sub_1D358();
        object = sub_6630();
        v127 = object;
        *v55 = 136315138;
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        v56 = sub_8D05C();
        v58 = sub_862D8(v56, v57, &v127);
        v49 = v126;

        *(v55 + 4) = v58;
        sub_22BA8(&dword_0, v59, v60, "#HomeCommunicationNLContextProvider makeDisambiguationSDAForFilters for homes: %s");
        sub_2714(object);
        sub_22AF0();
        sub_E890();
      }

      v29 = sub_2D3B4(v13);
      v19 = 0;
      v123 = _swiftEmptyArrayStorage;
      p_ivar_base_size = &SKFlowFactory.ivar_base_size;
      while (v29 != v19)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v61 = sub_8D27C();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_35;
          }

          v61 = *(v13 + 8 * v19 + 32);
        }

        v62 = v61;
        v17 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v63 = [v61 home];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 spokenPhrase];

          v66 = sub_8CEDC();
          object = v67;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = *(v123 + 2);
            v72 = sub_22AB0();
            v123 = sub_75D80(v72, v73, v74, v75);
          }

          v69 = *(v123 + 2);
          v68 = *(v123 + 3);
          if (v69 >= v68 >> 1)
          {
            v123 = sub_75D80((v68 > 1), v69 + 1, 1, v123);
          }

          *(v123 + 2) = v69 + 1;
          v70 = &v123[16 * v69];
          *(v70 + 4) = v66;
          *(v70 + 5) = object;
          v19 = v17;
          v49 = v126;
        }

        else
        {

          ++v19;
        }
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      v93 = qword_C3DB0;
      v129 = sub_2664(&qword_C07E0, &qword_8FCB0);
      v130 = sub_228D8();
      v127 = v93;

      sub_21A70();
      sub_2714(&v127);
      sub_8B82C();
      sub_21F80();

      sub_8B81C();
      sub_208A0(v123, v94, v95, v96, v97, v98, v99, v100, v116, v117, v119, v120, v121, v122, v123, 2, v124, v125, v126, v127);

      sub_8B83C();
      p_ivar_base_size = v118;
    }

    v101 = sub_8CCEC();
    v102 = sub_8D11C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = sub_1D358();
      v104 = sub_6630();
      v127 = v104;
      *v103 = 136315138;
      sub_22AD8();
      swift_beginAccess();
      v105 = v121;
      (*(v121 + 16))(v120, v49, p_ivar_base_size);
      v106 = sub_8CEEC();
      v108 = sub_862D8(v106, v107, &v127);
      v49 = v126;

      *(v103 + 4) = v108;
      v109 = v125;
      sub_22BA8(&dword_0, v110, v111, "#HomeCommunicationNLContextProvider nlContext: %s");
      sub_2714(v104);
      sub_22AF0();
      sub_E890();

      v112 = v122;
    }

    else
    {

      v105 = v121;
      v112 = v122;
      v109 = v125;
    }

    sub_22AD8();
    swift_beginAccess();
    (*(v105 + 16))(v112, v49, p_ivar_base_size);
    sub_22B0C();
    sub_6270(v113, v114, v115, p_ivar_base_size);
    v109(v112);
    sub_92C0(v112, &qword_C1058, &unk_8FCA0);
    (*(v105 + 8))(v49, p_ivar_base_size);
    sub_115FC();
  }

  else
  {
    v76 = sub_8CCEC();
    v77 = sub_8D12C();
    if (sub_22B18(v77))
    {
      v78 = sub_E8E0();
      *v78 = 0;
      sub_22B90();
      _os_log_impl(v79, v80, v81, v82, v78, 2u);
      sub_E890();
    }

    v83 = *(object + qword_C3E20);
    v84 = *(object + qword_C3E20 + 8);
    sub_8BC0C();
    sub_8BC1C();
    sub_115FC();

    v91(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12);
  }
}

void sub_208A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11614();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v145 = sub_8BFDC();
  v25 = sub_3488(v145);
  v144 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_16854();
  v143 = v30 - v29;
  sub_22AE4();
  v142 = sub_8C00C();
  v31 = sub_3488(v142);
  v141 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_9378();
  v139 = v35;
  sub_22ACC();
  __chkstk_darwin(v36);
  sub_22B34();
  v140 = v37;
  sub_22AE4();
  v38 = sub_8BE7C();
  v39 = sub_65E4(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_16854();
  sub_22B50();
  v174 = sub_8BF9C();
  v42 = sub_3488(v174);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  sub_9378();
  v167 = v47;
  sub_22ACC();
  __chkstk_darwin(v48);
  v50 = &v138 - v49;
  v176 = sub_8BF1C();
  v51 = sub_3488(v176);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_9378();
  v173 = v56;
  sub_22ACC();
  __chkstk_darwin(v57);
  v59 = &v138 - v58;
  v156 = sub_8C15C();
  v60 = sub_3488(v156);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_16854();
  v164 = v66 - v65;
  v67 = sub_2664(&qword_C1090, &unk_92770);
  sub_65E4(v67);
  v69 = *(v68 + 64);
  sub_1D394();
  __chkstk_darwin(v70);
  sub_1D370();
  v163 = v71;
  sub_22AE4();
  v162 = sub_8C2DC();
  v72 = sub_3488(v162);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  sub_16854();
  v161 = v76 - v75;
  v77 = _swiftEmptyArrayStorage;
  v160 = v78 + 104;
  v159 = v78 + 8;
  v153 = v62 + 8;
  v179 = _swiftEmptyArrayStorage;
  v166 = (v44 + 16);
  v150 = v53 + 16;
  v79 = *(v24 + 16);
  v149 = v53 + 32;
  v151 = v53;
  v154 = v53 + 8;
  v158 = enum case for IdentifierValue.vHomeAutomationHome(_:);
  v155 = v44 + 8;
  v80 = (v24 + 40);
  *(&v81 + 1) = 3;
  v157 = xmmword_8E860;
  *&v81 = 136315138;
  v146 = v81;
  v165 = _swiftEmptyArrayStorage;
  v152 = v20;
  v175 = v59;
  if (v79)
  {
    do
    {
      v171 = v80;
      v172 = v79;
      v83 = *(v80 - 1);
      v82 = *v80;
      v84 = sub_8C10C();
      sub_E824(v84);

      sub_8C0FC();
      sub_22AC0(&a17);
      v85 = v161;
      v86 = v162;
      v87(v161, v158, v162);
      sub_214D0();

      sub_22AC0(&a16);
      v88(v85, v86);
      v89 = sub_8C6AC();
      sub_E824(v89);
      v90 = sub_8C69C();

      sub_8C0DC();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v91 = swift_allocObject();
      *(v91 + 16) = v157;
      *(v91 + 32) = v90;
      v92 = sub_8C3FC();
      v93 = v163;
      sub_6270(v163, 1, 1, v92);

      v94 = sub_8C3AC();

      sub_92C0(v93, &qword_C1090, &unk_92770);
      v95 = v164;
      sub_8C6FC();
      sub_ADE4(0, &qword_C10A0, USOSerializedGraph_ptr);
      v96 = sub_8D14C();
      sub_22AC0(&a9);
      v97(v95, v156);
      v98 = objc_allocWithZone(SIRINLUUserStatedTask);
      v170 = v96;
      v99 = [v98 initWithTask:v96];
      sub_8D02C();
      if (*(&dword_10 + (v179 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v179 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8D06C();
      }

      sub_8D08C();
      v165 = v179;
      v100 = v175;
      sub_8BF0C();
      sub_8BF8C();
      sub_8C05C();
      v168 = v99;
      v169 = v94;
      swift_beginAccess();
      sub_8BF7C();
      swift_endAccess();
      v101 = *v166;
      (*v166)(v167, v50, v174);
      sub_8BEFC();
      sub_22AC0(&v178);
      v102(v173, v100, v176);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = *(v77 + 2);
        sub_22AB0();
        sub_762D0();
        v77 = v128;
      }

      v104 = *(v77 + 2);
      v103 = *(v77 + 3);
      if (v104 >= v103 >> 1)
      {
        sub_22A9C(v103);
        sub_762D0();
        v77 = v129;
      }

      *(v77 + 2) = v104 + 1;
      v105 = *(v151 + 80);
      sub_22B9C();
      (*(v107 + 32))(&v77[v106 + *(v107 + 72) * v104], v173, v176);
      if (qword_BF818 != -1)
      {
        sub_650C();
        swift_once();
      }

      v108 = sub_8CD0C();
      sub_22B78(v108, qword_C3DF8);
      v109 = sub_8CCEC();
      v110 = sub_8D11C();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = sub_1D358();
        v148 = v77;
        v112 = v111;
        v113 = sub_6630();
        v114 = v50;
        v115 = v174;
        v147 = v90;
        v116 = v113;
        v177 = v113;
        *v112 = v146;
        v117 = v167;
        v101(v167, v114, v115);
        v118 = sub_69A10(v117);
        v120 = sub_862D8(v118, v119, &v177);

        *(v112 + 4) = v120;
        _os_log_impl(&dword_0, v109, v110, "#HomeCommunicationNLContextProvider Building UserStatedTask for disambiguating between homes: %s", v112, 0xCu);
        sub_2714(v116);
        v121 = v115;
        v50 = v114;
        sub_E890();
        v77 = v148;
        sub_E890();

        sub_22AC0(&a10);
        v122(v175, v176);
        sub_22AC0(&a11);
        v124 = v114;
        v125 = v121;
      }

      else
      {

        sub_22AC0(&a10);
        v126(v175, v176);
        sub_22AC0(&a11);
        v124 = v50;
        v125 = v174;
      }

      v123(v124, v125);
      v80 = v171 + 2;
      v79 = v172 - 1;
    }

    while (v172 != 1);
  }

  v130 = v140;
  sub_8BFFC();
  sub_8BFEC();
  v131 = v143;
  sub_8BFCC();
  v132 = v141;
  v133 = v142;
  (*(v141 + 16))(v139, v130, v142);
  sub_8BFAC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v134 = v144;
  v135 = *(v144 + 72);
  v136 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_8E3F0;
  (*(v134 + 32))(v137 + v136, v131, v145);
  (*(v132 + 8))(v130, v133);
  sub_115FC();
}

void sub_214D0()
{
  sub_11614();
  v83 = v0;
  v2 = v1;
  v3 = sub_2664(&qword_C1088, &qword_8FCC8);
  sub_65E4(v3);
  v5 = *(v4 + 64);
  sub_1D394();
  __chkstk_darwin(v6);
  v8 = v69 - v7;
  v9 = sub_2664(&qword_C0008, &qword_8FCD0);
  sub_65E4(v9);
  v11 = *(v10 + 64);
  sub_1D394();
  __chkstk_darwin(v12);
  sub_1D370();
  v74 = v13;
  sub_22AE4();
  v14 = sub_8C2DC();
  v15 = sub_3488(v14);
  v78 = v16;
  v79 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_16854();
  v84 = (v20 - v19);
  sub_22AE4();
  v21 = sub_8C48C();
  v22 = sub_3488(v21);
  v75 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_16854();
  v28 = v27 - v26;
  v29 = sub_8C46C();
  v30 = sub_3488(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_16854();
  v37 = v36 - v35;
  v38 = sub_8C29C();
  v39 = sub_3488(v38);
  v80 = v40;
  v81 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_9378();
  v77 = v43;
  sub_22ACC();
  __chkstk_darwin(v44);
  sub_22B34();
  v76 = v45;
  v82 = v2;
  sub_8C0EC();
  sub_8C53C();
  v46 = sub_8C3CC();
  if (v46 && (v47 = sub_50190(v46), , v47))
  {
    v72 = enum case for IdentifierAppBundle.abHomeKit(_:);
    v73 = v8;
    v71 = *(v32 + 104);
    v71(v37);

    v48 = sub_8C45C();
    v69[1] = v49;
    v69[2] = v48;
    (*(v32 + 8))(v37, v29);
    v50 = v75;
    v69[0] = v47;
    v70 = *(v75 + 104);
    v70(v28, enum case for IdentifierNamespace.nsSemanticValue(_:), v21);
    sub_8C47C();
    (*(v50 + 8))(v28, v21);
    v51 = v76;
    sub_8C26C();
    sub_8C17C();
    (*(v78 + 16))(v84, v83, v79);
    (v71)(v37, v72, v29);
    v70(v74, enum case for IdentifierNamespace.nsHomeKitEntityType(_:), v21);
    sub_22B0C();
    sub_6270(v52, v53, v54, v21);
    v55 = enum case for UsoIdentifier.NluComponent.unknown(_:);
    v56 = sub_8C21C();
    (*(*(v56 - 8) + 104))(v73, v55, v56);
    sub_22B0C();
    sub_6270(v57, v58, v59, v56);
    v60 = v77;
    sub_8C25C();
    sub_8C17C();

    v61 = *(v80 + 8);
    v62 = v60;
    v63 = v81;
    v61(v62, v81);
    v61(v51, v63);
    sub_115FC();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v64 = sub_8CD0C();
    sub_22B78(v64, qword_C3DF8);
    v84 = sub_8CCEC();
    v65 = sub_8D12C();
    if (os_log_type_enabled(v84, v65))
    {
      v66 = sub_E8E0();
      *v66 = 0;
      _os_log_impl(&dword_0, v84, v65, "Unable to get name string builder", v66, 2u);
      sub_E890();
    }

    sub_115FC();
  }
}

void sub_21A70()
{
  sub_11614();
  v82 = v0;
  v2 = v1;
  v3 = sub_8BD5C();
  v4 = sub_3488(v3);
  v71 = v5;
  v72 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_16854();
  v70 = v9 - v8;
  v10 = sub_2664(&qword_C1080, &qword_8FCC0);
  sub_65E4(v10);
  v12 = *(v11 + 64);
  sub_1D394();
  __chkstk_darwin(v13);
  sub_1D370();
  v81 = v14;
  sub_22AE4();
  v80 = sub_8B6DC();
  v15 = sub_3488(v80);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_16854();
  v22 = v21 - v20;
  v23 = sub_8B73C();
  v24 = sub_3488(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_9378();
  v79 = v29;
  sub_22ACC();
  __chkstk_darwin(v30);
  v85 = &v70 - v31;
  sub_22ACC();
  __chkstk_darwin(v32);
  sub_22B34();
  v87 = v33;
  v88 = _swiftEmptyArrayStorage;
  v34 = *(v2 + 16);
  if (v34)
  {
    v84 = (v26 + 16);
    v74 = (v26 + 8);
    v75 = v26 + 32;
    v73 = v17 + 32;
    v35 = (v2 + 40);
    v36 = _swiftEmptyArrayStorage;
    v86 = _swiftEmptyArrayStorage;
    v77 = v22;
    v78 = v17;
    v76 = v26;
    do
    {
      v37 = HIBYTE(*v35) & 0xFLL;
      if ((*v35 & 0x2000000000000000) == 0)
      {
        v37 = *(v35 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v83 = v34;
        v38 = v23;
        v39 = v82;
        v40 = v82[4];
        sub_622C(v82, v82[3]);

        sub_8C16C();
        v41 = v39[3];
        v42 = v39[4];
        v43 = v39;
        v23 = v38;
        sub_622C(v43, v41);
        sub_732F0();
        v44 = v87;
        sub_8B72C();
        v45 = *v84;
        (*v84)(v85, v44, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v36 + 2);
          sub_22AB0();
          sub_76120();
          v36 = v63;
        }

        v47 = *(v36 + 2);
        v46 = *(v36 + 3);
        v49 = v76;
        v48 = v77;
        if (v47 >= v46 >> 1)
        {
          sub_22A9C(v46);
          sub_76120();
          v36 = v64;
        }

        *(v36 + 2) = v47 + 1;
        v50 = *(v49 + 80);
        sub_22B9C();
        (*(v49 + 32))(&v36[v51 + *(v49 + 72) * v47], v85, v38);
        v52 = v87;
        v45(v81, v87, v38);
        sub_22B0C();
        sub_6270(v53, v54, v55, v38);
        v45(v79, v52, v38);
        sub_8B6CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v86 + 2);
          sub_22AB0();
          sub_76048();
          v86 = v66;
        }

        v34 = v83;
        v57 = *(v86 + 2);
        v56 = *(v86 + 3);
        if (v57 >= v56 >> 1)
        {
          sub_22A9C(v56);
          sub_76048();
          v86 = v67;
        }

        (*v74)(v87, v23);
        v58 = v86;
        *(v86 + 2) = v57 + 1;
        v59 = v78;
        v60 = *(v78 + 80);
        sub_22B9C();
        (*(v59 + 32))(&v58[v61 + *(v59 + 72) * v57], v48, v80);
        v88 = v58;
      }

      v35 += 2;
      --v34;
    }

    while (v34);
  }

  if (qword_BF8B0 != -1)
  {
    swift_once();
  }

  sub_8C14C();
  v68 = v70;
  sub_8BD3C();
  v69 = sub_8BD4C();

  (*(v71 + 8))(v68, v72);
  sub_2C7E8(v69);
  sub_115FC();
}

void sub_21F80()
{
  sub_11614();
  v1 = v0;
  v99 = sub_8B00C();
  v2 = sub_3488(v99);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_16854();
  v98 = v8 - v7;
  sub_22AE4();
  v9 = sub_8CDCC();
  v10 = sub_3488(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_9378();
  v92 = v15;
  sub_22ACC();
  v17 = __chkstk_darwin(v16);
  v19 = &v83 - v18;
  __chkstk_darwin(v17);
  sub_22B34();
  v106 = v20;
  v21 = sub_2664(&qword_C1070, &qword_8FCB8);
  v22 = sub_65E4(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_9378();
  v97 = v25;
  sub_22ACC();
  __chkstk_darwin(v26);
  v96 = &v83 - v27;
  sub_22ACC();
  __chkstk_darwin(v28);
  sub_22B34();
  v86 = v29;
  sub_22AE4();
  v30 = sub_8CD7C();
  sub_E824(v30);
  v31 = sub_8CD6C();
  v104 = v1;
  v103 = sub_2D3B4(v1);
  if (v103)
  {
    v33 = v12;
    v34 = 0;
    v107 = 0;
    v102 = v104 & 0xC000000000000001;
    v87 = v104 & 0xFFFFFFFFFFFFFF8;
    v93 = "com.apple.siri.nl.";
    v94 = (v4 + 8);
    v90 = (v33 + 8);
    v91 = (v33 + 16);
    v100 = _swiftEmptyArrayStorage;
    v85 = v33;
    v84 = v33 + 32;
    *&v32 = 136315138;
    v83 = v32;
    v101 = v9;
    v35 = v86;
    v95 = v31;
    v89 = v19;
    while (1)
    {
      if (v102)
      {
        v36 = sub_8D27C();
      }

      else
      {
        if (v34 >= *(v87 + 16))
        {
          goto LABEL_31;
        }

        v36 = *(v104 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (sub_226D4(v36))
      {
        v105 = v34 + 1;
        v39 = sub_8CD4C();
        sub_6270(v35, 1, 1, v39);
        v40 = v35;
        v41 = v96;
        sub_8CD5C();
        sub_92C0(v40, &qword_C1070, &qword_8FCB8);
        sub_22B0C();
        sub_6270(v42, v43, v44, v39);
        sub_2293C(v41, v40);
        v45 = v98;
        sub_8AFFC();
        sub_8AFDC();
        v47 = v46;
        (*v94)(v45, v99);
        sub_229AC(v40, v97);
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);

        v48 = v37;
        v49 = v107;
        sub_8CDAC();
        v107 = v49;
        if (v49)
        {
          sub_92C0(v40, &qword_C1070, &qword_8FCB8);
          v35 = v40;
          if (qword_BF818 != -1)
          {
            sub_650C();
            swift_once();
          }

          v50 = sub_8CD0C();
          sub_22B78(v50, qword_C3DF8);
          v51 = sub_8CCEC();
          v52 = sub_8D12C();
          v53 = sub_22B18(v52);
          v38 = v105;
          if (v53)
          {
            v54 = sub_E8E0();
            *v54 = 0;
            _os_log_impl(&dword_0, v51, v47, "#HomeCommunicationNLContextProvider Error creating RREntity", v54, 2u);
            sub_22AF0();
          }

          v107 = 0;
        }

        else
        {
          v88 = v48;
          v55 = v89;
          if (qword_BF818 != -1)
          {
            sub_650C();
            swift_once();
          }

          v56 = sub_8CD0C();
          sub_22B78(v56, qword_C3DF8);
          v57 = v101;
          v58 = *v91;
          (*v91)(v55, v106, v101);
          v59 = sub_8CCEC();
          v60 = sub_8D11C();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = sub_1D358();
            v62 = sub_6630();
            v108 = v62;
            *v61 = v83;
            sub_22A1C();
            v63 = sub_8D43C();
            v65 = v64;
            v66 = *v90;
            (*v90)(v89, v101);
            v67 = sub_862D8(v63, v65, &v108);

            *(v61 + 4) = v67;
            v68 = v60;
            v69 = v66;
            _os_log_impl(&dword_0, v59, v68, "#HomeCommunicationNLContextProvider rrEntity: %s", v61, 0xCu);
            sub_2714(v62);
            v57 = v101;
            sub_E890();
            sub_E890();
          }

          else
          {

            v69 = *v90;
            (*v90)(v55, v57);
          }

          v70 = v100;
          v38 = v105;
          v58(v92, v106, v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = v70[2];
            sub_22AB0();
            sub_761F8();
            v70 = v81;
          }

          v72 = v70[2];
          v71 = v70[3];
          if (v72 >= v71 >> 1)
          {
            sub_22A9C(v71);
            sub_761F8();
            v100 = v82;
          }

          else
          {
            v100 = v70;
          }

          v73 = v101;
          v69(v106, v101);
          v74 = v86;
          sub_92C0(v86, &qword_C1070, &qword_8FCB8);
          v100[2] = v72 + 1;
          v75 = *(v85 + 80);
          sub_22B9C();
          v78 = v73;
          v35 = v74;
          (*(v79 + 32))(v77 + v76 + *(v79 + 72) * v72, v92, v78);
        }
      }

      else
      {
      }

      ++v34;
      if (v38 == v103)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_115FC();
  }
}

uint64_t sub_226D4(void *a1)
{
  v2 = sub_8C2DC();
  v3 = sub_3488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_16854();
  v10 = v9 - v8;
  v11 = [a1 home];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];

    sub_8CEDC();
  }

  v14 = sub_8C10C();
  sub_E824(v14);
  sub_8C0FC();
  (*(v5 + 104))(v10, enum case for IdentifierValue.vHomeAutomationHome(_:), v2);
  sub_214D0();

  (*(v5 + 8))(v10, v2);
  v15 = sub_8C52C();

  return v15;
}

uint64_t sub_2285C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_8BBFC();
}

uint64_t sub_22890()
{
  v0 = sub_8BC2C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

unint64_t sub_228D8()
{
  result = qword_C1060;
  if (!qword_C1060)
  {
    sub_B9BC(&qword_C07E0, &qword_8FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1060);
  }

  return result;
}

uint64_t sub_2293C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1070, &qword_8FCB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1070, &qword_8FCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22A1C()
{
  result = qword_C1078;
  if (!qword_C1078)
  {
    sub_8CDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1078);
  }

  return result;
}

uint64_t sub_22AF0()
{
}

BOOL sub_22B18(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22B60()
{

  return swift_allocObject();
}

void sub_22BA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22BC8()
{

  return sub_8CF0C();
}

double sub_22C00@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL sub_22C54(uint64_t a1, uint64_t a2)
{
  v4 = *((*(a2 + 112))() + 16);

  if (v4)
  {
    return 1;
  }

  v5 = *((*(a2 + 104))(a1, a2) + 16);

  if (v5)
  {
    return 1;
  }

  v7 = *((*(a2 + 96))(a1, a2) + 16);

  return v7 != 0;
}

uint64_t sub_22D1C(uint64_t x0_0, void *a2)
{
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_8D25C(478);
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_239F8();
  sub_8CF7C(v94);
  v3 = a2[3];
  v4 = sub_239E8();
  v5(v4);
  v6 = v90;
  if (v90)
  {
    v7 = v91;
    sub_622C(&v88, v90);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    sub_2714(&v88);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_234C0(&v88);
  }

  v10 = 0xE300000000000000;
  v8 = 7104878;
LABEL_6:
  v95._countAndFlagsBits = v8;
  v95._object = v10;
  sub_8CF7C(v95);

  sub_239F8();
  countAndFlagsBits = v96._countAndFlagsBits;
  sub_8CF7C(v96);
  v11 = a2[4];
  v12 = sub_239E8();
  v14 = v13(v12);
  v15._countAndFlagsBits = 7104878;
  object = 0xE300000000000000;
  if (v14 != 7)
  {
    v15._countAndFlagsBits = sub_73424(v14);
    object = v15._object;
  }

  v15._object = object;
  sub_8CF7C(v15);

  sub_239F8();
  sub_8CF7C(v97);
  v17 = a2[5];
  v18 = sub_239E8();
  v20 = v19(v18);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22._countAndFlagsBits = 1702195828;
  }

  else
  {
    v22._countAndFlagsBits = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v22._object = v23;
  sub_8CF7C(v22);

  sub_239F8();
  sub_8CF7C(v98);
  v24 = a2[8];
  v25 = sub_239E8();
  v27 = v26(v25);
  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v29._countAndFlagsBits = 1702195828;
  }

  else
  {
    v29._countAndFlagsBits = 0x65736C6166;
  }

  if (v28)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  v29._object = v30;
  sub_8CF7C(v29);

  sub_239F8();
  sub_8CF7C(v99);
  v31 = a2[9];
  v32 = sub_239E8();
  v33(v32);
  sub_8D05C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v100);
  v34 = a2[18];
  v35 = sub_239E8();
  v36(v35);
  sub_8D05C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v101);
  v37 = a2[11];
  v38 = sub_239E8();
  v39(v38);
  sub_23A3C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v102._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v102);
  v40 = a2[13];
  v41 = sub_239E8();
  v42(v41);
  sub_23A3C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v103._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v103);
  v43 = a2[14];
  v44 = sub_239E8();
  v43(v44);
  sub_23A3C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v104._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v104);
  v45 = a2[12];
  v46 = sub_239E8();
  v47(v46);
  sub_23A3C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v105);
  v48 = a2[15];
  v49 = sub_239E8();
  v88 = v50(v49);
  LOBYTE(v89) = v51 & 1;
  sub_2664(&qword_C10B0, &unk_8FD20);
  v106._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v106);

  v107._countAndFlagsBits = 0x646E65202020200ALL;
  v107._object = 0xEF3D734D656D6954;
  sub_8CF7C(v107);
  v52 = a2[16];
  v53 = sub_239E8();
  v88 = v54(v53);
  LOBYTE(v89) = v55 & 1;
  v108._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v108);

  sub_239F8();
  v109._countAndFlagsBits = countAndFlagsBits;
  sub_8CF7C(v109);
  v56 = a2[17];
  v57 = sub_239E8();
  v59._countAndFlagsBits = v58(v57);
  if (v59._object)
  {
    v60 = v59._object;
  }

  else
  {
    v59._countAndFlagsBits = 0;
    v60 = 0xE000000000000000;
  }

  v59._object = v60;
  sub_8CF7C(v59);

  sub_239F8();
  sub_8CF7C(v110);
  v61 = sub_239E8();
  v43(v61);
  v62 = sub_23A3C();
  v64 = v63;

  v111._countAndFlagsBits = v62;
  v111._object = v64;
  sub_8CF7C(v111);

  sub_239F8();
  sub_8CF7C(v112);
  v65 = a2[19];
  v66 = sub_239E8();
  v68._countAndFlagsBits = v67(v66);
  v69 = 7104878;
  if (!v68._object)
  {
    v68._countAndFlagsBits = 7104878;
  }

  v70 = 0xE300000000000000;
  if (v68._object)
  {
    v71 = v68._object;
  }

  else
  {
    v71 = 0xE300000000000000;
  }

  v68._object = v71;
  sub_8CF7C(v68);

  sub_239F8();
  sub_8CF7C(v113);
  v72 = a2[20];
  v73 = sub_239E8();
  v75 = v74(v73);
  v76._countAndFlagsBits = 7562617;
  switch(v75)
  {
    case 1:
      v70 = 0xE200000000000000;
      v76._countAndFlagsBits = 28526;
      break;
    case 2:
      v70 = 0xE600000000000000;
      v76._countAndFlagsBits = 0x6C65636E6163;
      break;
    case 3:
      v76._countAndFlagsBits = 7104878;
      break;
    default:
      break;
  }

  v76._object = v70;
  sub_8CF7C(v76);

  sub_239F8();
  sub_8CF7C(v114);
  v77 = a2[21];
  v78 = sub_239E8();
  v80 = v79(v78);
  if (v80 && (v81 = v80, v82 = [v80 entityName], v81, v82))
  {
    v83 = [v82 spokenPhrase];

    v69 = sub_8CEDC();
    v85 = v84;
  }

  else
  {
    v85 = 0xE300000000000000;
  }

  v115._countAndFlagsBits = v69;
  v115._object = v85;
  sub_8CF7C(v115);

  return v92;
}

uint64_t sub_23480(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_234C0(uint64_t a1)
{
  v2 = sub_2664(&qword_C10A8, &unk_8FF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23528(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8570;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_23598@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23528(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_235C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23480(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23604(uint64_t a1, uint64_t a2)
{
  v4 = sub_238EC();
  v5 = sub_23940();
  v6 = sub_23994();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

_BYTE *sub_2367C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x23748);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23780()
{
  result = qword_C10B8;
  if (!qword_C10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10B8);
  }

  return result;
}

unint64_t sub_237D8()
{
  result = qword_C10C0;
  if (!qword_C10C0)
  {
    sub_B9BC(&qword_C10C8, &qword_8FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10C0);
  }

  return result;
}

unint64_t sub_23840()
{
  result = qword_C10D0;
  if (!qword_C10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10D0);
  }

  return result;
}

unint64_t sub_23898()
{
  result = qword_C10D8;
  if (!qword_C10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10D8);
  }

  return result;
}

unint64_t sub_238EC()
{
  result = qword_C10E0;
  if (!qword_C10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10E0);
  }

  return result;
}

unint64_t sub_23940()
{
  result = qword_C10E8;
  if (!qword_C10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10E8);
  }

  return result;
}

unint64_t sub_23994()
{
  result = qword_C10F0;
  if (!qword_C10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10F0);
  }

  return result;
}

void sub_23A04()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_8CF7C(v3);
}

uint64_t sub_23A20()
{
}

uint64_t sub_23A3C()
{

  return sub_8D05C();
}

uint64_t sub_23A54()
{
  v1 = 7104878;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_8D25C(478);
  v40 = 0;
  v41 = 0xE000000000000000;
  v42._countAndFlagsBits = 0xD000000000000023;
  v42._object = 0x80000000000968F0;
  sub_8CF7C(v42);
  sub_2436C(v0 + 8, &v36);
  v2 = v38;
  if (!v38)
  {
    sub_234C0(&v36);
LABEL_5:

    v6 = 0xE300000000000000;
    v4 = 7104878;
    goto LABEL_6;
  }

  v3 = v39;
  sub_622C(&v36, v38);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  sub_2714(&v36);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v43._countAndFlagsBits = v4;
  v43._object = v6;
  sub_8CF7C(v43);

  v44._object = 0x8000000000096920;
  v44._countAndFlagsBits = 0xD000000000000014;
  sub_8CF7C(v44);
  v7 = *(v0 + 48);
  if (v7 == 7)
  {
    object = 0xE300000000000000;
    v9._countAndFlagsBits = 7104878;
  }

  else
  {
    v9._countAndFlagsBits = sub_73424(v7);
    object = v9._object;
  }

  v9._object = object;
  sub_8CF7C(v9);

  v45._countAndFlagsBits = 0xD000000000000013;
  v45._object = 0x8000000000096940;
  sub_8CF7C(v45);
  if (*(v0 + 49))
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_8CF7C(v10);

  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x8000000000096960;
  sub_8CF7C(v46);
  if (*(v0 + 51))
  {
    v12._countAndFlagsBits = 1702195828;
  }

  else
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 51))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v12._object = v13;
  sub_8CF7C(v12);

  v47._countAndFlagsBits = 0xD000000000000027;
  v47._object = 0x8000000000096980;
  sub_8CF7C(v47);
  v14 = *(v0 + 56);
  v48._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v48);

  v49._countAndFlagsBits = 0xD00000000000001FLL;
  v49._object = 0x80000000000969B0;
  sub_8CF7C(v49);
  v15 = *(v0 + 160);
  v50._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v50);

  v51._countAndFlagsBits = 0xD000000000000021;
  v51._object = 0x80000000000969D0;
  sub_8CF7C(v51);
  v16 = *(v0 + 72);
  v52._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v52);

  v53._object = 0x8000000000096A00;
  v53._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v53);
  v17 = *(v0 + 88);
  v54._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v54);

  v55._object = 0x8000000000096A20;
  v55._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v55);
  v18 = *(v0 + 96);
  v56._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v56);

  v57._object = 0x8000000000096A40;
  v57._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v57);
  v19 = *(v0 + 80);
  v58._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v58);

  v59._countAndFlagsBits = 0xD000000000000011;
  v59._object = 0x8000000000096A60;
  sub_8CF7C(v59);
  v20 = *(v0 + 120);
  v36 = *(v0 + 112);
  LOBYTE(v37) = v20;
  sub_2664(&qword_C10B0, &unk_8FD20);
  v60._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v60);

  v61._countAndFlagsBits = 0x646E65202020200ALL;
  v61._object = 0xEF3D734D656D6954;
  sub_8CF7C(v61);
  v21 = *(v0 + 136);
  v36 = *(v0 + 128);
  LOBYTE(v37) = v21;
  v62._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v62);

  v63._object = 0x8000000000096A80;
  v63._countAndFlagsBits = 0xD000000000000014;
  sub_8CF7C(v63);
  v22 = *(v0 + 152);
  if (v22)
  {
    v23 = *(v0 + 144);
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = *(v0 + 152);
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v64._countAndFlagsBits = v23;
  v64._object = v24;
  sub_8CF7C(v64);

  v65._countAndFlagsBits = 0xD00000000000001FLL;
  v65._object = 0x80000000000969B0;
  sub_8CF7C(v65);
  v66._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v66);

  v67._countAndFlagsBits = 0xD00000000000001DLL;
  v67._object = 0x8000000000096AA0;
  sub_8CF7C(v67);
  if (*(v0 + 176))
  {
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 7104878;
  }

  v68._countAndFlagsBits = v25;
  v68._object = v26;
  sub_8CF7C(v68);

  v69._countAndFlagsBits = 0xD000000000000023;
  v69._object = 0x8000000000096AC0;
  sub_8CF7C(v69);
  v27 = 0xE300000000000000;
  v28._countAndFlagsBits = 7562617;
  switch(*(v0 + 184))
  {
    case 1:
      v27 = 0xE200000000000000;
      v28._countAndFlagsBits = 28526;
      break;
    case 2:
      v27 = 0xE600000000000000;
      v28._countAndFlagsBits = 0x6C65636E6163;
      break;
    case 3:
      v28._countAndFlagsBits = 7104878;
      break;
    default:
      break;
  }

  v28._object = v27;
  sub_8CF7C(v28);

  v70._countAndFlagsBits = 0xD000000000000010;
  v70._object = 0x8000000000096AF0;
  sub_8CF7C(v70);
  v29 = *(v0 + 192);
  if (v29 && (v30 = [v29 entityName]) != 0)
  {
    v31 = v30;
    v32 = [v30 spokenPhrase];

    v1 = sub_8CEDC();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
  }

  v71._countAndFlagsBits = v1;
  v71._object = v34;
  sub_8CF7C(v71);

  return v40;
}

double sub_240A8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *&result = 2031623;
  *(a2 + 48) = 2031623;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = &_swiftEmptyArrayStorage;
  *(a2 + 72) = &_swiftEmptyArrayStorage;
  *(a2 + 80) = &_swiftEmptyArrayStorage;
  *(a2 + 88) = &_swiftEmptyArrayStorage;
  *(a2 + 96) = &_swiftEmptyArrayStorage;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = &_swiftEmptyArrayStorage;
  *(a2 + 184) = a1;
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_24108(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2423C()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_24248()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_24254()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_2428C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

void *sub_242C4()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

unint64_t sub_242F0(uint64_t a1)
{
  result = sub_24318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24318()
{
  result = qword_C10F8;
  if (!qword_C10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10F8);
  }

  return result;
}

uint64_t sub_2436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C10A8, &unk_8FF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for UnsupportedHomeCommunication(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnsupportedHomeCommunication(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x24530);
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

uint64_t sub_24568()
{
  sub_2651C();
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v3 = sub_266D8();
      break;
    case 2:
      v3 = sub_26568();
      break;
    case 3:
      v3 = sub_26628();
      break;
    case 4:
      v3 = sub_26610();
      break;
    case 5:
      v3 = 0xD000000000000019;
      v4 = 0x8000000000095580;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_266AC();
      break;
    case 2:
      sub_2654C();
      break;
    case 3:
      sub_265F8();
      break;
    case 4:
      sub_265C8();
      break;
    case 5:
      sub_26540();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26640();
  }

  return v7 & 1;
}

uint64_t sub_246B8()
{
  sub_2651C();
  v3 = v2;
  v4 = v0;
  v5 = "failureRequiringAppLaunch";
  switch(v6)
  {
    case 1:
      v3 = sub_266D8();
      break;
    case 2:
      v3 = sub_26568();
      break;
    case 3:
      v3 = sub_26628();
      break;
    case 4:
      v3 = sub_26610();
      break;
    case 5:
      v3 = 0xD000000000000019;
      v4 = 0x8000000000095580;
      break;
    case 6:
      v4 = 0x80000000000955A0;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_266AC();
      break;
    case 2:
      sub_2654C();
      break;
    case 3:
      sub_265F8();
      break;
    case 4:
      sub_265C8();
      break;
    case 5:
      v2 = 0xD000000000000019;
      v0 = (v5 - 32) | 0x8000000000000000;
      break;
    case 6:
      sub_26540();
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26640();
  }

  return v8 & 1;
}

uint64_t sub_24830()
{
  sub_266C0();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_8D45C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_248B0(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953063287;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953063287;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8();
  }

  return v8 & 1;
}

uint64_t sub_249DC(char a1)
{
  if (a1)
  {
    v1 = 0xEF6572756C696146;
  }

  else
  {
    v1 = 0xEC000000746E656DLL;
  }

  sub_266C0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8();
  }

  return v8 & 1;
}

uint64_t sub_24A80(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28532;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1836020326;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x6563616C706572;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x65766F6D6572;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x65726F6E6769;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 7301239;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v4 = 1953391987;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28532;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1836020326;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x6563616C706572;
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = 0x65766F6D6572;
      break;
    case 4:
      v5 = 0xE600000000000000;
      v6 = 0x65726F6E6769;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 7301239;
      break;
    case 6:
      v5 = 0xE400000000000000;
      v6 = 1953391987;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8();
  }

  return v8 & 1;
}

uint64_t sub_24C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264D8();
  }

  return v10 & 1;
}

uint64_t sub_24CDC(unsigned __int8 a1, char a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v6 = "NLv3IntentPlusServerConversion";
      goto LABEL_5;
    case 2:
      v6 = "directInvocation";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
    case 3:
      break;
    default:
      v3 = 0x8000000000094FC0;
      v5 = 0xD00000000000001ELL;
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = "NLv3IntentPlusServerConversion";
      goto LABEL_10;
    case 2:
      v8 = "directInvocation";
LABEL_10:
      v7 = v8 | 0x8000000000000000;
      v2 = 0xD000000000000010;
      break;
    case 3:
      break;
    default:
      v7 = 0x8000000000094FC0;
      v2 = 0xD00000000000001ELL;
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264D8();
  }

  return v10 & 1;
}

uint64_t sub_24E24(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_266C0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8();
  }

  return v8 & 1;
}

uint64_t sub_24EA8()
{
  sub_266C0();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_8D45C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24F34(char a1, char a2)
{
  v2 = 7562617;
  if (a1)
  {
    sub_266CC();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    sub_266CC();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264D8();
  }

  return v11 & 1;
}

uint64_t sub_24FF8(char a1, char a2)
{
  v3 = sub_261F0(a1);
  v5 = v4;
  if (v3 == sub_261F0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_8D45C();
  }

  return v8 & 1;
}

uint64_t sub_2507C()
{
  sub_8C7FC();
  sub_26468();
  sub_8D01C();
  sub_8D01C();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_26640();
  }

  return v1 & 1;
}

Swift::Int sub_2519C()
{
  sub_266EC();
  v0(v3, v1);
  return sub_8D54C();
}

Swift::Int sub_251E8(char a1)
{
  sub_8D50C();
  sub_261F0(a1);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25264()
{
  sub_266EC();
  v0(v1);
  sub_2665C();

  return sub_8D54C();
}

Swift::Int sub_25338()
{
  sub_8D50C();
  sub_8CF4C();
  return sub_8D54C();
}

uint64_t sub_253DC()
{
  sub_264F4();
  switch(v0)
  {
    case 1:
      sub_26698();
      break;
    case 2:
      sub_26584();
      break;
    case 3:
      sub_265B0();
      break;
    case 4:
      sub_265E0();
      break;
    case 5:
      sub_26540();
      break;
    default:
      break;
  }

  sub_8CF4C();
}

uint64_t sub_2549C()
{
  sub_264F4();
  switch(v0)
  {
    case 1:
      sub_26698();
      break;
    case 2:
      sub_26584();
      break;
    case 3:
      sub_265B0();
      break;
    case 4:
      sub_265E0();
      break;
    case 5:
    case 6:
      sub_26540();
      break;
    default:
      break;
  }

  sub_8CF4C();
}

uint64_t sub_25564()
{
  sub_8CF4C();
}

uint64_t sub_255D4()
{
  sub_265A0();
  sub_8CF4C();
}

uint64_t sub_25694()
{
  sub_8CF4C();
}

uint64_t sub_25714()
{
  sub_8CF4C();
}

uint64_t sub_25828(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_8CF4C();
}

uint64_t sub_25880(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      sub_26540();
      break;
  }

  sub_8CF4C();
}

uint64_t sub_25948()
{
  sub_8CF4C();
}

uint64_t sub_259A8()
{
  sub_8CF4C();
}

uint64_t sub_25A50(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_266CC();
  }

  else
  {
    sub_265A0();
  }

  sub_8CF4C();
}

uint64_t sub_25AB8(uint64_t a1, char a2)
{
  sub_261F0(a2);
  sub_8CF4C();
}

Swift::Int sub_25B0C(uint64_t a1, char a2)
{
  sub_8D50C();
  sub_261F0(a2);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25B6C()
{
  sub_26680();
  if (v0)
  {
    sub_266CC();
  }

  else
  {
    sub_265A0();
  }

  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25C38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_8D50C();
  a3(a2);
  sub_2665C();

  return sub_8D54C();
}

Swift::Int sub_25C8C()
{
  sub_26680();
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25CF0()
{
  sub_26680();
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25DB0()
{
  sub_26680();
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25E74(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_8D50C();
  a3(v6, a2);
  return sub_8D54C();
}

Swift::Int sub_25ED8()
{
  sub_8D50C();
  sub_8CF4C();
  return sub_8D54C();
}

Swift::Int sub_25F24()
{
  sub_26680();
  sub_8CF4C();

  return sub_8D54C();
}

id sub_25FD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_622C(a1, v1);
  switch((*(v2 + 16))(v1, v2))
  {
    case 2u:
    case 4u:
      if (qword_BF7F8 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EC0;
      break;
    case 3u:
      if (qword_BF800 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EC8;
      break;
    case 5u:
      if (qword_BF808 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0ED0;
      break;
    case 6u:
      if (qword_BF810 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0ED8;
      break;
    default:
      if (qword_BF7F0 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EB8;
      break;
  }

  return *v3;
}

uint64_t sub_261A0()
{
  v0 = type metadata accessor for SystemAppFinder();
  result = swift_allocObject();
  qword_C3E48 = v0;
  unk_C3E50 = &off_BB8C0;
  qword_C3E30 = result;
  return result;
}

unint64_t sub_261F0(char a1)
{
  result = 0x726F707075736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_26328(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8600;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_26398@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26328(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_263C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26414()
{
  result = qword_C1100;
  if (!qword_C1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1100);
  }

  return result;
}

unint64_t sub_26468()
{
  result = qword_C1108;
  if (!qword_C1108)
  {
    sub_8C7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1108);
  }

  return result;
}

uint64_t sub_264D8()
{

  return sub_8D45C();
}

uint64_t sub_26640()
{

  return sub_8D45C();
}

uint64_t sub_2665C()
{

  return sub_8CF4C();
}

uint64_t sub_26680()
{

  return sub_8D50C();
}

uint64_t sub_266EC()
{

  return sub_8D50C();
}

uint64_t sub_2670C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8508;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t HomeCommunicationSnippetModel.snippetHidden(for:idiom:)()
{
  v1 = v0;
  v2 = sub_8C7DC();
  v3 = sub_3488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_16854();
  v10 = v9 - v8;
  v11 = type metadata accessor for HomeCommunicationSnippetModel();
  v12 = sub_6574(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_16854();
  v17 = v16 - v15;
  sub_26984(v1, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 104))(v10, enum case for DeviceIdiom.car(_:), v2);
    sub_28770(&qword_C1110, &type metadata accessor for DeviceIdiom);
    v18 = sub_8CE9C();
    (*(v5 + 8))(v10, v2);
    v19 = v18 ^ 1;
  }

  else
  {
    v19 = 0;
  }

  sub_26D8C(v17, type metadata accessor for HomeCommunicationSnippetModel);
  return v19 & 1;
}

uint64_t type metadata accessor for HomeCommunicationSnippetModel()
{
  result = qword_C1238;
  if (!qword_C1238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeCommunicationSnippetModel.description.getter()
{
  v1 = type metadata accessor for HomeDisambiguationModel(0);
  v2 = sub_6574(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_16854();
  v7 = v6 - v5;
  v8 = type metadata accessor for CarPlayIntercomControlModel();
  v9 = sub_6574(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_16854();
  v14 = v13 - v12;
  v15 = type metadata accessor for HomeAppLaunchModel();
  v16 = sub_6574(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v21 = v20 - v19;
  v22 = type metadata accessor for HomeCommunicationSnippetModel();
  v23 = sub_6574(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_16854();
  v28 = (v27 - v26);
  sub_26984(v0, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_28680(v28, v14, type metadata accessor for CarPlayIntercomControlModel);
      sub_290F0();
      sub_8D25C(27);
      v39._countAndFlagsBits = 0xD000000000000018;
      v39._object = 0x8000000000096B70;
      sub_8CF7C(v39);
      sub_8D31C();
      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      sub_8CF7C(v40);
      v29 = v35;
      v30 = type metadata accessor for CarPlayIntercomControlModel;
      v31 = v14;
      goto LABEL_6;
    case 2u:
      sub_28680(v28, v7, type metadata accessor for HomeDisambiguationModel);
      sub_290F0();
      sub_8D25C(22);
      v37._object = 0x8000000000096B50;
      v37._countAndFlagsBits = 0xD000000000000014;
      sub_8CF7C(v37);
      sub_8D31C();
      v29 = v35;
      v30 = type metadata accessor for HomeDisambiguationModel;
      v31 = v7;
      goto LABEL_6;
    case 3u:
      v33 = *v28;
      v32 = v28[1];
      sub_290F0();
      sub_8D25C(30);
      v38._countAndFlagsBits = 0xD00000000000001CLL;
      v38._object = 0x8000000000096B30;
      sub_8CF7C(v38);
      sub_8D31C();

      return v35;
    default:
      sub_28680(v28, v21, type metadata accessor for HomeAppLaunchModel);
      v36._countAndFlagsBits = 0x6E75614C7070612ELL;
      v36._object = 0xEB00000000286863;
      sub_8CF7C(v36);
      sub_8D31C();
      v29 = 0;
      sub_29094();
      v31 = v21;
LABEL_6:
      sub_26D8C(v31, v30);
      return v29;
  }
}

uint64_t sub_26D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000000096BC0 == a2;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000000096BE0 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x8000000000096C00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_8D45C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_26F64(char a1)
{
  result = 0x636E75614C707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27010(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27010(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_938C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27114(uint64_t a1)
{
  v2 = sub_27C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27150(uint64_t a1)
{
  v2 = sub_27C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2718C(uint64_t a1)
{
  v2 = sub_27BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_271C8(uint64_t a1)
{
  v2 = sub_27BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F5C();
  *a1 = result;
  return result;
}

uint64_t sub_2725C(uint64_t a1)
{
  v2 = sub_27A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27298(uint64_t a1)
{
  v2 = sub_27A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_272D4(uint64_t a1)
{
  v2 = sub_27B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27310(uint64_t a1)
{
  v2 = sub_27B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2734C(uint64_t a1)
{
  v2 = sub_27AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27388(uint64_t a1)
{
  v2 = sub_27AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeCommunicationSnippetModel.encode(to:)(void *a1)
{
  v2 = sub_2664(&qword_C1118, &qword_90090);
  v3 = sub_3488(v2);
  v96 = v4;
  v97 = v3;
  v6 = *(v5 + 64);
  sub_1D394();
  __chkstk_darwin(v7);
  sub_1D370();
  v95 = v8;
  v9 = sub_2664(&qword_C1120, &qword_90098);
  v10 = sub_3488(v9);
  v93 = v11;
  v94 = v10;
  v13 = *(v12 + 64);
  sub_1D394();
  __chkstk_darwin(v14);
  sub_1D370();
  v92 = v15;
  v90 = type metadata accessor for HomeDisambiguationModel(0);
  v16 = sub_6574(v90);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v91 = v20 - v19;
  v21 = sub_2664(&qword_C1128, &qword_900A0);
  v22 = sub_3488(v21);
  v88 = v23;
  v89 = v22;
  v25 = *(v24 + 64);
  sub_1D394();
  __chkstk_darwin(v26);
  sub_1D370();
  v87 = v27;
  v85 = type metadata accessor for CarPlayIntercomControlModel();
  v28 = sub_6574(v85);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_16854();
  v86 = v32 - v31;
  v33 = sub_2664(&qword_C1130, &qword_900A8);
  v34 = sub_3488(v33);
  v84[1] = v35;
  v84[2] = v34;
  v37 = *(v36 + 64);
  sub_1D394();
  __chkstk_darwin(v38);
  v39 = type metadata accessor for HomeAppLaunchModel();
  v40 = sub_6574(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_16854();
  v45 = v44 - v43;
  v46 = type metadata accessor for HomeCommunicationSnippetModel();
  v47 = sub_6574(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_16854();
  v52 = (v51 - v50);
  v53 = sub_2664(&qword_C1138, &qword_900B0);
  v54 = sub_3488(v53);
  v99 = v55;
  v100 = v54;
  v57 = *(v56 + 64);
  sub_1D394();
  __chkstk_darwin(v58);
  v60 = v84 - v59;
  v61 = a1[4];
  sub_622C(a1, a1[3]);
  sub_27A98();
  sub_8D57C();
  sub_26984(v98, v52);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = v86;
      sub_28680(v52, v86, type metadata accessor for CarPlayIntercomControlModel);
      LOBYTE(v101) = 1;
      sub_27BE8();
      sub_290CC();
      sub_2904C();
      sub_28770(v80, v81);
      sub_8D41C();
      v82 = sub_29110();
      v83(v82);
      v73 = type metadata accessor for CarPlayIntercomControlModel;
      goto LABEL_6;
    case 2u:
      v68 = v91;
      sub_28680(v52, v91, type metadata accessor for HomeDisambiguationModel);
      LOBYTE(v101) = 2;
      sub_27B94();
      sub_290CC();
      sub_29064();
      sub_28770(v69, v70);
      sub_8D41C();
      v71 = sub_29110();
      v72(v71);
      v73 = type metadata accessor for HomeDisambiguationModel;
LABEL_6:
      v66 = v73;
      v67 = v68;
      goto LABEL_7;
    case 3u:
      v75 = *v52;
      v74 = v52[1];
      LOBYTE(v101) = 3;
      sub_27AEC();
      v76 = v95;
      v77 = v100;
      sub_8D3FC();
      v101 = v75;
      v102 = v74;
      sub_27B40();
      v78 = v97;
      sub_8D41C();
      (*(v96 + 8))(v76, v78);
      (*(v99 + 8))(v60, v77);

    default:
      sub_28680(v52, v45, type metadata accessor for HomeAppLaunchModel);
      LOBYTE(v101) = 0;
      sub_27C3C();
      sub_290CC();
      sub_2907C();
      sub_28770(v62, v63);
      sub_8D41C();
      v64 = sub_29110();
      v65(v64);
      sub_29094();
      v67 = v45;
LABEL_7:
      sub_26D8C(v67, v66);
      return (*(v99 + 8))(v60, v61);
  }
}

unint64_t sub_27A98()
{
  result = qword_C1140;
  if (!qword_C1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1140);
  }

  return result;
}

unint64_t sub_27AEC()
{
  result = qword_C1148;
  if (!qword_C1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1148);
  }

  return result;
}

unint64_t sub_27B40()
{
  result = qword_C1150;
  if (!qword_C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1150);
  }

  return result;
}

unint64_t sub_27B94()
{
  result = qword_C1158;
  if (!qword_C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1158);
  }

  return result;
}

unint64_t sub_27BE8()
{
  result = qword_C1168;
  if (!qword_C1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1168);
  }

  return result;
}

unint64_t sub_27C3C()
{
  result = qword_C1170;
  if (!qword_C1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1170);
  }

  return result;
}

uint64_t HomeCommunicationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v116 = sub_2664(&qword_C1178, &qword_900B8);
  sub_3488(v116);
  v109 = v3;
  v5 = *(v4 + 64);
  sub_1D394();
  __chkstk_darwin(v6);
  sub_1D370();
  v114 = v7;
  v115 = sub_2664(&qword_C1180, &qword_900C0);
  sub_3488(v115);
  v108 = v8;
  v10 = *(v9 + 64);
  sub_1D394();
  __chkstk_darwin(v11);
  sub_1D370();
  v113 = v12;
  v13 = sub_2664(&qword_C1188, &qword_900C8);
  v14 = sub_3488(v13);
  v106 = v15;
  v107 = v14;
  v17 = *(v16 + 64);
  sub_1D394();
  __chkstk_darwin(v18);
  sub_1D370();
  v112 = v19;
  v20 = sub_2664(&qword_C1190, &qword_900D0);
  v21 = sub_3488(v20);
  v104 = v22;
  v105 = v21;
  v24 = *(v23 + 64);
  sub_1D394();
  __chkstk_darwin(v25);
  sub_1D370();
  v111 = v26;
  v119 = sub_2664(&qword_C1198, &qword_900D8);
  sub_3488(v119);
  v117 = v27;
  v29 = *(v28 + 64);
  sub_1D394();
  __chkstk_darwin(v30);
  v32 = &v99 - v31;
  v118 = type metadata accessor for HomeCommunicationSnippetModel();
  v33 = sub_6574(v118);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v41 = &v99 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v99 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v99 - v46;
  __chkstk_darwin(v45);
  v49 = &v99 - v48;
  v50 = a1[3];
  v51 = a1[4];
  v120 = a1;
  sub_622C(a1, v50);
  sub_27A98();
  v52 = v122;
  sub_8D56C();
  if (v52)
  {
    return sub_2714(v120);
  }

  v122 = v47;
  v101 = v44;
  v100 = v38;
  v102 = v41;
  v103 = v49;
  v54 = v118;
  v53 = v119;
  v55 = sub_8D3EC();
  v59 = sub_285E4(v55, 0);
  if (v57 == v58 >> 1)
  {
    goto LABEL_7;
  }

  v99 = 0;
  if (v57 >= (v58 >> 1))
  {
    __break(1u);
    JUMPOUT(0x28598);
  }

  v60 = *(v56 + v57);
  sub_28F80(v57 + 1, v58 >> 1, v59, v56, v57, v58);
  v62 = v61;
  v64 = v63;
  swift_unknownObjectRelease();
  if (v62 != v64 >> 1)
  {
LABEL_7:
    v68 = v53;
    v69 = sub_8D2AC();
    swift_allocError();
    v71 = v70;
    v72 = *(sub_2664(&qword_C11A0, &qword_900E0) + 48);
    *v71 = v54;
    sub_8D3BC();
    sub_8D29C();
    (*(*(v69 - 8) + 104))(v71, enum case for DecodingError.typeMismatch(_:), v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v117 + 8))(v32, v68);
    return sub_2714(v120);
  }

  v65 = v122;
  switch(v60)
  {
    case 1:
      LOBYTE(v121[0]) = 1;
      sub_27BE8();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v121);
      type metadata accessor for CarPlayIntercomControlModel();
      sub_29100();
      sub_2904C();
      sub_28770(v77, v78);
      v65 = v101;
      sub_2913C();
      sub_29120();
      v92 = sub_2903C();
      v93(v92);
      v94 = sub_29028();
      v95(v94);
      goto LABEL_12;
    case 2:
      LOBYTE(v121[0]) = 2;
      sub_27B94();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v121);
      type metadata accessor for HomeDisambiguationModel(0);
      sub_29100();
      sub_29064();
      sub_28770(v74, v75);
      v65 = v102;
      sub_2913C();
      sub_29120();
      v79 = sub_2903C();
      v80(v79);
      v81 = sub_29028();
      v82(v81);
      goto LABEL_12;
    case 3:
      LOBYTE(v121[0]) = 3;
      sub_27AEC();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v121);
      sub_2862C();
      sub_8D3DC();
      v76 = v117;
      swift_unknownObjectRelease();
      v83 = sub_2903C();
      v84(v83);
      (*(v76 + 8))(v32, v53);
      v85 = v100;
      *v100 = v121[0];
      swift_storeEnumTagMultiPayload();
      sub_29010();
      v87 = v85;
      goto LABEL_13;
    default:
      LOBYTE(v121[0]) = 0;
      sub_27C3C();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v121);
      type metadata accessor for HomeAppLaunchModel();
      sub_29100();
      sub_2907C();
      sub_28770(v66, v67);
      sub_2913C();
      sub_29120();
      v88 = sub_2903C();
      v89(v88);
      v90 = sub_29028();
      v91(v90);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_29010();
      v87 = v65;
LABEL_13:
      v96 = v103;
      sub_28680(v87, v103, v86);
      v97 = v120;
      sub_29010();
      sub_28680(v96, v110, v98);
      result = sub_2714(v97);
      break;
  }

  return result;
}

uint64_t sub_285E4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_2862C()
{
  result = qword_C11A8;
  if (!qword_C11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C11A8);
  }

  return result;
}

uint64_t sub_28680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_6574(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_28770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_287B8()
{
  result = type metadata accessor for HomeAppLaunchModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CarPlayIntercomControlModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HomeDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x28914);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_28980(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x28A1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_28A58()
{
  result = qword_C1270;
  if (!qword_C1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1270);
  }

  return result;
}

unint64_t sub_28AB0()
{
  result = qword_C1278;
  if (!qword_C1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1278);
  }

  return result;
}

unint64_t sub_28B08()
{
  result = qword_C1280;
  if (!qword_C1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1280);
  }

  return result;
}

unint64_t sub_28B60()
{
  result = qword_C1288;
  if (!qword_C1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1288);
  }

  return result;
}

unint64_t sub_28BB8()
{
  result = qword_C1290;
  if (!qword_C1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1290);
  }

  return result;
}

unint64_t sub_28C10()
{
  result = qword_C1298;
  if (!qword_C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1298);
  }

  return result;
}

unint64_t sub_28C68()
{
  result = qword_C12A0;
  if (!qword_C12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12A0);
  }

  return result;
}

unint64_t sub_28CC0()
{
  result = qword_C12A8;
  if (!qword_C12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12A8);
  }

  return result;
}

unint64_t sub_28D18()
{
  result = qword_C12B0;
  if (!qword_C12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12B0);
  }

  return result;
}

unint64_t sub_28D70()
{
  result = qword_C12B8;
  if (!qword_C12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12B8);
  }

  return result;
}

unint64_t sub_28DC8()
{
  result = qword_C12C0;
  if (!qword_C12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12C0);
  }

  return result;
}

unint64_t sub_28E20()
{
  result = qword_C12C8;
  if (!qword_C12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12C8);
  }

  return result;
}

unint64_t sub_28E78()
{
  result = qword_C12D0;
  if (!qword_C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12D0);
  }

  return result;
}

unint64_t sub_28ED0()
{
  result = qword_C12D8;
  if (!qword_C12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12D8);
  }

  return result;
}

unint64_t sub_28F28()
{
  result = qword_C12E0;
  if (!qword_C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12E0);
  }

  return result;
}

uint64_t sub_28F80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_290AC(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

uint64_t sub_290CC()
{
  v2 = *(v0 - 112);

  return sub_8D3FC();
}

uint64_t sub_29120()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_2913C()
{

  return sub_8D3DC();
}

uint64_t sub_291A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_8BBEC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_8BBDC();
  sub_8BBBC();

  sub_29318();
  sub_8BBBC();

  v10 = sub_8BBCC();
  v12 = v11;

  *a4 = v10;
  *a5 = v12;
  return result;
}

uint64_t sub_29264()
{
  v0 = sub_8BBEC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_8BBDC();
  sub_8BBBC();

  sub_29318();
  sub_8BBBC();

  v3 = sub_8BBCC();
  v5 = v4;

  qword_C3E88 = v3;
  unk_C3E90 = v5;
  return result;
}

uint64_t HomeTarget.hash(into:)()
{
  sub_8B00C();
  sub_2BBE4();
  sub_29A30(v0);

  return sub_8CE7C();
}

uint64_t HomeTarget.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8B00C();
  v4 = sub_6574(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t property wrapper backing initializer of HomeTarget.selectHomeAction()
{
  sub_29474();

  return sub_8B03C();
}

unint64_t sub_29474()
{
  result = qword_C12F0;
  if (!qword_C12F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C12F0);
  }

  return result;
}

uint64_t HomeTarget.init(id:name:selectHomeAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8B00C();
  sub_3488(v4);
  v6 = v5;
  (*(v7 + 16))(a2, a1, v4);
  v8 = type metadata accessor for HomeTarget(0);
  v9 = *(v8 + 20);
  sub_8B05C();
  v10 = *(v8 + 24);
  sub_29474();
  sub_8B03C();
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_295E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000000096C50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_8D45C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_296F4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0xD000000000000010;
}

uint64_t sub_29744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_295E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2976C(uint64_t a1)
{
  v2 = sub_299DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_297A8(uint64_t a1)
{
  v2 = sub_299DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeTarget.encode(to:)(void *a1)
{
  v4 = sub_2664(&qword_C12F8, &unk_907A0);
  sub_3488(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1D394();
  __chkstk_darwin(v9);
  sub_2BC44();
  v10 = a1[4];
  sub_622C(a1, a1[3]);
  sub_299DC();
  sub_8D57C();
  sub_8B00C();
  sub_2BBE4();
  sub_29A30(v11);
  sub_2BC18();
  if (!v1)
  {
    v12 = type metadata accessor for HomeTarget(0);
    v13 = *(v12 + 20);
    sub_2BCA4();
    sub_2664(&qword_C01A8, &qword_8E8F0);
    sub_C5E4();
    sub_2A09C(v14);
    sub_2BC18();
    v15 = *(v12 + 24);
    sub_2BC98();
    sub_2664(&qword_C1310, &qword_907B0);
    sub_2A108(&unk_C1318);
    sub_2BC18();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_299DC()
{
  result = qword_C1300;
  if (!qword_C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1300);
  }

  return result;
}

unint64_t sub_29A30(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

Swift::Int HomeTarget.hashValue.getter()
{
  sub_8D50C();
  sub_8B00C();
  sub_2BBE4();
  sub_29A30(v0);
  sub_8CE7C();
  return sub_8D54C();
}

uint64_t HomeTarget.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = sub_2664(&qword_C1310, &qword_907B0);
  sub_3488(v55);
  v53 = v4;
  v6 = *(v5 + 64);
  sub_1D394();
  __chkstk_darwin(v7);
  v60 = &v51 - v8;
  v9 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v10 = sub_3488(v9);
  v58 = v11;
  v59 = v10;
  v13 = *(v12 + 64);
  sub_1D394();
  __chkstk_darwin(v14);
  sub_2BC44();
  v15 = sub_8B00C();
  v16 = sub_3488(v15);
  v56 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v61 = v21 - v20;
  v63 = sub_2664(&qword_C1320, &qword_907B8);
  sub_3488(v63);
  v57 = v22;
  v24 = *(v23 + 64);
  sub_1D394();
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  v28 = type metadata accessor for HomeTarget(0);
  v29 = sub_6574(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_16854();
  v34 = v33 - v32;
  v35 = a1[4];
  sub_622C(a1, a1[3]);
  sub_299DC();
  v62 = v27;
  v36 = v64;
  sub_8D56C();
  if (v36)
  {
    return sub_2714(a1);
  }

  v37 = v58;
  v51 = v28;
  v52 = v34;
  v64 = a1;
  v39 = v59;
  v38 = v60;
  v65 = 0;
  sub_2BBE4();
  sub_29A30(v40);
  v41 = v61;
  sub_8D3DC();
  v42 = *(v56 + 32);
  v61 = v15;
  v42(v52, v41, v15);
  sub_2BCA4();
  sub_C5FC();
  sub_2A09C(v43);
  v44 = v2;
  sub_8D3DC();
  v45 = v52;
  (*(v37 + 32))(v52 + *(v51 + 20), v44, v39);
  sub_2BC98();
  sub_2A108(&unk_C1330);
  v46 = v38;
  v47 = v55;
  sub_8D3DC();
  v48 = sub_2BC8C();
  v49(v48);
  (*(v53 + 32))(v45 + *(v51 + 24), v46, v47);
  sub_2AEC4(v45, v54, type metadata accessor for HomeTarget);
  sub_2714(v64);
  return sub_2AF24(v45, type metadata accessor for HomeTarget);
}

uint64_t sub_29FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8B00C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_2A060()
{
  sub_8D50C();
  HomeTarget.hash(into:)();
  return sub_8D54C();
}

unint64_t sub_2A09C(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C01A8, &qword_8E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2A108(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C1310, &qword_907B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2A1D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x67726154656D6F68 && a2 == 0xEB00000000737465;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000000096C70 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_8D45C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2A330(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x67726154656D6F68;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74706D6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2A1D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2A41C(uint64_t a1)
{
  v2 = sub_2A6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2A458(uint64_t a1)
{
  v2 = sub_2A6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeDisambiguationModel.encode(to:)(void *a1)
{
  v3 = sub_2664(&qword_C1340, &qword_907C8);
  sub_3488(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1D394();
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_622C(a1, a1[3]);
  sub_2A6AC();
  sub_8D57C();
  v22 = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_C5E4();
  sub_2A09C(v12);
  sub_2BC54();
  if (!v1)
  {
    v20 = type metadata accessor for HomeDisambiguationModel(0);
    v13 = v20[5];
    sub_2BCA4();
    sub_2664(&qword_C1350, &unk_907D0);
    sub_C5E4();
    sub_2ADE0(v14);
    sub_2BCB0();
    v15 = v20[6];
    sub_2BC98();
    sub_2664(&qword_C01B0, &qword_8E8F8);
    sub_C5E4();
    sub_2A7B8(v16);
    sub_2BCB0();
    v17 = v20[7];
    v21 = 3;
    sub_2BC54();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_2A6AC()
{
  result = qword_C1348;
  if (!qword_C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1348);
  }

  return result;
}

unint64_t sub_2A720(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    v4 = v3;
    sub_B9BC(&qword_C1338, &qword_907C0);
    sub_29A30(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2A7B8(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C01B0, &qword_8E8F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t HomeDisambiguationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v66 = sub_2664(&qword_C01B0, &qword_8E8F8);
  sub_3488(v66);
  v68 = v4;
  v6 = *(v5 + 64);
  sub_1D394();
  __chkstk_darwin(v7);
  v65 = &v57 - v8;
  v70 = sub_2664(&qword_C1350, &unk_907D0);
  sub_3488(v70);
  v67 = v9;
  v11 = *(v10 + 64);
  sub_1D394();
  __chkstk_darwin(v12);
  v71 = &v57 - v13;
  v14 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v15 = sub_3488(v14);
  v69 = v16;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v57 - v22;
  v75 = sub_2664(&qword_C1380, &qword_907E0);
  sub_3488(v75);
  v73 = v23;
  v25 = *(v24 + 64);
  sub_1D394();
  __chkstk_darwin(v26);
  sub_2BC44();
  v27 = type metadata accessor for HomeDisambiguationModel(0);
  v28 = sub_6574(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_16854();
  v33 = v32 - v31;
  v34 = a1[4];
  sub_622C(a1, a1[3]);
  sub_2A6AC();
  v74 = v2;
  v35 = v76;
  sub_8D56C();
  if (v35)
  {
    return sub_2714(a1);
  }

  v36 = v71;
  v62 = v21;
  v63 = v33;
  v76 = a1;
  v78 = 0;
  sub_C5FC();
  v38 = sub_2A09C(v37);
  v39 = v72;
  sub_8D3DC();
  v61 = v38;
  v40 = v14;
  v41 = v69 + 32;
  v42 = *(v69 + 32);
  v72 = v40;
  v42(v63, v39);
  sub_2BCA4();
  sub_C5FC();
  sub_2ADE0(v43);
  v44 = v36;
  v45 = v70;
  sub_8D3DC();
  v58 = v42;
  v59 = v41;
  v60 = v27;
  v46 = v63;
  (*(v67 + 32))(v63 + *(v27 + 20), v44, v45);
  sub_2BC98();
  sub_C5FC();
  sub_2A7B8(v47);
  v49 = v65;
  v48 = v66;
  v71 = 0;
  sub_8D3DC();
  v50 = v60;
  (*(v68 + 32))(v46 + *(v60 + 24), v49, v48);
  v77 = 3;
  v51 = v62;
  v52 = v72;
  sub_8D3DC();
  v53 = v76;
  v54 = sub_2BBFC();
  v55(v54);
  v58(v46 + *(v50 + 28), v51, v52);
  sub_2AEC4(v46, v64, type metadata accessor for HomeDisambiguationModel);
  sub_2714(v53);
  return sub_2AF24(v46, type metadata accessor for HomeDisambiguationModel);
}

unint64_t sub_2ADE0(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C1350, &unk_907D0);
    sub_2A720(&unk_C1360);
    sub_2A720(&unk_C1370);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_6574(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2AF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2B170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8B00C();
  v7 = sub_2BC0C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_2664(&qword_C01A8, &qword_8E8F0);
    v12 = sub_2BC0C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2664(&qword_C1310, &qword_907B0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_3364(v10, a2, v9);
}

uint64_t sub_2B274()
{
  sub_2BC78();
  v4 = sub_8B00C();
  v5 = sub_2BC0C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_2664(&qword_C01A8, &qword_8E8F0);
    v10 = sub_2BC0C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = sub_2664(&qword_C1310, &qword_907B0);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return sub_6270(v8, v0, v0, v7);
}

void sub_2B360()
{
  sub_8B00C();
  if (v0 <= 0x3F)
  {
    sub_C2FC(319, &qword_C0268);
    if (v1 <= 0x3F)
    {
      sub_2B40C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2B40C()
{
  if (!qword_C1400)
  {
    sub_29474();
    v0 = sub_8B04C();
    if (!v1)
    {
      atomic_store(v0, &qword_C1400);
    }
  }
}

uint64_t sub_2B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v7 = sub_2BC0C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_2664(&qword_C1350, &unk_907D0);
    v12 = sub_2BC0C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2664(&qword_C01B0, &qword_8E8F8);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_3364(v10, a2, v9);
}

uint64_t sub_2B588()
{
  sub_2BC78();
  v4 = sub_2664(&qword_C01A8, &qword_8E8F0);
  v5 = sub_2BC0C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_2664(&qword_C1350, &unk_907D0);
    v10 = sub_2BC0C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = sub_2664(&qword_C01B0, &qword_8E8F8);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return sub_6270(v8, v0, v0, v7);
}

uint64_t sub_2B680()
{
  sub_C2FC(319, &qword_C0268);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2B750();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_C2FC(319, &unk_C0270);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_2B750()
{
  if (!qword_C14A0)
  {
    sub_B9BC(&qword_C1338, &qword_907C0);
    v0 = sub_8B09C();
    if (!v1)
    {
      atomic_store(v0, &qword_C14A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2B880);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeTarget.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2B984);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2B9C0()
{
  result = qword_C14D8;
  if (!qword_C14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14D8);
  }

  return result;
}

unint64_t sub_2BA18()
{
  result = qword_C14E0;
  if (!qword_C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14E0);
  }

  return result;
}

unint64_t sub_2BA70()
{
  result = qword_C14E8;
  if (!qword_C14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14E8);
  }

  return result;
}

unint64_t sub_2BAC8()
{
  result = qword_C14F0;
  if (!qword_C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14F0);
  }

  return result;
}

unint64_t sub_2BB20()
{
  result = qword_C14F8;
  if (!qword_C14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14F8);
  }

  return result;
}

unint64_t sub_2BB78()
{
  result = qword_C1500;
  if (!qword_C1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1500);
  }

  return result;
}

uint64_t sub_2BBFC()
{
  result = *(v0 - 104);
  v2 = *(*(v0 - 112) + 8);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_2BC18()
{

  return sub_8D41C();
}

uint64_t sub_2BC54()
{

  return sub_8D41C();
}

uint64_t sub_2BC8C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_2BCB0()
{

  return sub_8D41C();
}

char *sub_2BCD0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  sub_2C088(a1, a2 & 1);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  sub_ADD8(a1, a2 & 1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v11 = 136315138;
    v37 = v10;
    buf = v11;
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      v12 = sub_2D3B4(a1);
      if (v12)
      {
        v13 = v12;
        v32 = a3;
        v33 = a2;
        v34 = a4;
        result = sub_55224(0, v12 & ~(v12 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        v15 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v16 = sub_8D27C();
          }

          else
          {
            v16 = *(a1 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = sub_2C024(v16);
          v20 = v19;

          if (v20)
          {
            v21 = v18;
          }

          else
          {
            v21 = 0x416E776F6E6B6E55;
          }

          if (!v20)
          {
            v20 = 0xEE00776569566563;
          }

          v23 = _swiftEmptyArrayStorage[2];
          v22 = _swiftEmptyArrayStorage[3];
          if (v23 >= v22 >> 1)
          {
            sub_55224((v22 > 1), v23 + 1, 1);
          }

          ++v15;
          _swiftEmptyArrayStorage[2] = v23 + 1;
          v24 = &_swiftEmptyArrayStorage[2 * v23];
          v24[4] = v21;
          v24[5] = v20;
        }

        while (v13 != v15);
        a4 = v34;
        a2 = v33;
        a3 = v32;
      }
    }

    sub_2664(&qword_C1508, &unk_90C20);
    v25 = sub_8CEEC();
    v27 = sub_862D8(v25, v26, &v38);

    *(buf + 4) = v27;
    _os_log_impl(&dword_0, v9, v37, "IdiomSensitiveViewBuilder: Built views: %s", buf, 0xCu);
    sub_2714(v35);
  }

  sub_8D15C();
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v28 = (a3 + *(type metadata accessor for SignpostLog.Signpost() + 20));
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  sub_8CCBC();
  return a4(a1, a2 & 1);
}

uint64_t sub_2C024(void *a1)
{
  v1 = [a1 encodedClassName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8CEDC();

  return v3;
}

uint64_t sub_2C088(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void sub_2C094()
{
  v1 = [v0 home];
  if (v1)
  {
    v14 = v1;
    sub_8D13C();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v2 = sub_8CD0C();
    sub_33F4(v2, qword_C3DF8);
    v3 = v0;
    v4 = sub_8CCEC();
    v5 = sub_8D12C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_8CEDC();
      v12 = v11;

      v13 = sub_862D8(v10, v12, &v15);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_0, v4, v5, "#%s error in fetching homeName. Setting empty String", v6, 0xCu);
      sub_2714(v7);
    }

    sub_8C96C();
  }
}

void *sub_2C2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2C6E8();
    sub_8D2EC();
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = objc_allocWithZone(INSpeakableString);

      v11 = sub_8CEAC();
      v12 = [v10 initWithSpokenPhrase:v11];

      v13 = objc_allocWithZone(INHomeFilter);
      v14 = sub_2C6CC();
      sub_2C59C(v14, v15, v16, v17, v18, v19, v12, 0, 0, 0, 0, 0);

      sub_8D2CC();
      v20 = _swiftEmptyArrayStorage[2];
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  v21 = *(a2 + 16);
  if (v21)
  {
    sub_2C6E8();
    sub_8D2EC();
    v22 = (a2 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = objc_allocWithZone(INSpeakableString);

      v26 = sub_8CEAC();
      v27 = [v25 initWithSpokenPhrase:v26];

      v28 = objc_allocWithZone(INHomeFilter);
      v29 = sub_2C6CC();
      sub_2C59C(v29, v30, v31, v32, v33, v34, 0, 0, 0, v27, 0, 0);

      sub_8D2CC();
      v35 = _swiftEmptyArrayStorage[2];
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  v36 = *(a3 + 16);
  if (v36)
  {
    sub_8D2EC();
    v37 = (a3 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v40 = objc_allocWithZone(INSpeakableString);

      v41 = sub_8CEAC();
      v42 = [v40 initWithSpokenPhrase:v41];

      v43 = objc_allocWithZone(INHomeFilter);
      v44 = sub_2C6CC();
      sub_2C59C(v44, v45, v46, v47, v48, v49, 0, v42, 0, 0, 0, 0);

      sub_8D2CC();
      v50 = _swiftEmptyArrayStorage[2];
      sub_2C6E8();
      sub_8D2FC();
      sub_2C6E8();
      sub_8D30C();
      sub_8D2DC();
      v37 += 2;
      --v36;
    }

    while (v36);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  return _swiftEmptyArrayStorage;
}

id sub_2C59C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, char a12)
{
  v13 = v12;
  v15 = a7;
  v18 = a4;
  v19 = a3;
  v21 = a12;
  v22 = a11;
  v24 = a9;
  v23 = a10;
  if (a1)
  {
    v34 = a5;
    v25 = a8;
    v26 = a6;
    v29.super.isa = sub_8D03C().super.isa;

    v21 = a12;
    v22 = a11;
    v19 = a3;
    v18 = a4;
    a6 = v26;
    a8 = v25;
    v23 = a10;
    v15 = a7;
    v24 = a9;
    a5 = v34;
  }

  else
  {
    v29.super.isa = 0;
  }

  BYTE1(v32) = v21 & 1;
  LOBYTE(v32) = v22 & 1;
  v30 = [v13 initWithEntityIdentifiers:v29.super.isa entityName:a2 entityType:v19 outerDeviceType:v18 outerDeviceName:a5 deviceType:a6 home:v15 zone:a8 group:v24 room:v23 isExcludeFilter:v32 hasAllQuantifier:?];

  return v30;
}

unint64_t sub_2C6F8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  sub_8D25C(22);

  v3._countAndFlagsBits = sub_2C6F8(a1);
  sub_8CF7C(v3);

  return 0xD000000000000014;
}

uint64_t sub_2C7AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_8D35C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_2C82C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  v5 = sub_2C7AC(a1);
  v6 = sub_2C7AC(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2CDF8(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2C90C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2CE98(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2CA38(SEL *a1)
{
  v30 = sub_8C99C();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v30);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v25 - v7;
  v8 = sub_2CF10(v1);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = sub_2D3B4(v10);
  v12 = 0;
  v27 = v3;
  v28 = (v3 + 32);
  while (1)
  {
    if (v11 == v12)
    {

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = sub_8D27C();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 *a1];
    if (v16)
    {
      v17 = v16;
      v18 = v26;
      sub_8D13C();

      v19 = v18;
      v20 = *v28;
      (*v28)(v29, v19, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v9 + 2);
        sub_763A8();
        v9 = v23;
      }

      v21 = *(v9 + 2);
      if (v21 >= *(v9 + 3) >> 1)
      {
        sub_763A8();
        v9 = v24;
      }

      *(v9 + 2) = v21 + 1;
      v20(&v9[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21], v29, v30);
      v12 = v15;
    }

    else
    {

      ++v12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void *sub_2CCA0()
{
  sub_2CA38(&selRef_home);
  sub_2D3C0();
  sub_2C90C(v1, v0, &type metadata accessor for SpeakableString);
  sub_2CA38(&selRef_room);
  sub_2D41C(v2);
  sub_2CA38(&selRef_zone);
  sub_2D41C(v3);
  return _swiftEmptyArrayStorage;
}

void *sub_2CD3C()
{
  sub_2CA38(&selRef_room);
  sub_2D3C0();
  sub_2C90C(v1, v0, &type metadata accessor for SpeakableString);
  sub_2CA38(&selRef_zone);
  sub_2D41C(v2);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_2CDD4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}