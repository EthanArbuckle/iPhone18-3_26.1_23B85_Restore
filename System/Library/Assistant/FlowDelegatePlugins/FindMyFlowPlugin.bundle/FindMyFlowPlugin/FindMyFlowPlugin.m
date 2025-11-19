uint64_t sub_1718()
{
  v0 = sub_3E10();
  v1 = sub_1918(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E40();
  v9 = sub_1918(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E30();
  v16 = sub_3E20();
  (*(v11 + 8))(v15, v8);
  if (!v16)
  {
    sub_3E00();
    v16 = sub_3DF0();
    (*(v3 + 8))(v7, v0);
  }

  return v16;
}

uint64_t sub_18C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1708();
  *a1 = result;
  return result;
}

BOOL sub_192C()
{
  v1 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16FindMyFlowPlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_3418(v0 + v5, v4);
  v6 = sub_4040();
  v7 = sub_2BAC(v4, 2, v6) == 0;
  sub_347C(v4);
  return v7;
}

uint64_t sub_19F0()
{
  sub_3DE4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = *(*(sub_3264(&qword_C390, &qword_4538) - 8) + 64);
  v1[10] = sub_3DCC();
  v4 = sub_3EC0();
  v1[11] = v4;
  sub_3DAC(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = sub_3DCC();
  v8 = sub_4030();
  v1[14] = v8;
  sub_3DAC(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = sub_3DCC();
  v12 = sub_3EB0();
  v1[17] = v12;
  sub_3DAC(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = sub_3DCC();
  v16 = sub_4020();
  v1[20] = v16;
  sub_3DAC(v16);
  v1[21] = v17;
  v19 = *(v18 + 64);
  v1[22] = sub_3DCC();
  v20 = sub_3F90();
  v1[23] = v20;
  sub_3DAC(v20);
  v1[24] = v21;
  v23 = *(v22 + 64);
  v1[25] = sub_3DCC();
  v24 = *(*(type metadata accessor for RedirectToCompanionFlow.State(0) - 8) + 64);
  v1[26] = sub_3DCC();
  v25 = sub_4040();
  v1[27] = v25;
  sub_3DAC(v25);
  v1[28] = v26;
  v28 = *(v27 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1C80, 0, 0);
}

uint64_t sub_1C80()
{
  if (qword_C150 != -1)
  {
    swift_once();
  }

  v1 = sub_40A0();
  sub_33E0(v1, qword_C660);
  v2 = sub_4080();
  v3 = sub_40E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[RedirectToCompanionFlow] Executing", v4, 2u);
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[9];

  v8 = OBJC_IVAR____TtC16FindMyFlowPlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_3418(v7 + v8, v6);
  v9 = sub_2BAC(v6, 2, v5);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = v0[26];
      v11 = v0[8];
      sub_3FF0();
      sub_347C(v10);
    }

    else
    {
      v30 = v0[24];
      v29 = v0[25];
      v31 = v0[23];
      v32 = v0[8];
      (*(v30 + 104))(v29, enum case for FlowUnhandledReason.needsServerExecution(_:), v31);
      sub_4000();
      (*(v30 + 8))(v29, v31);
    }
  }

  else
  {
    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[21];
    v15 = v0[22];
    v17 = v0[19];
    v16 = v0[20];
    v48 = v0[18];
    v49 = v0[17];
    v18 = v0[15];
    v44 = v0[16];
    v45 = v0[29];
    v46 = v0[14];
    v50 = v0[13];
    v51 = v0[12];
    v52 = v0[11];
    v47 = v0[10];
    v55 = v0[9];
    v56 = v0[8];
    v53 = v13;
    v54 = v0[28];
    (*(v54 + 32))(v12, v0[26], v13);
    sub_3EF0();
    (*(v14 + 104))(v15, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v16);
    sub_3EE0();
    (*(v14 + 8))(v15, v16);
    sub_34D8();

    sub_3EA0();
    (*(v54 + 16))(v45, v12, v13);
    (*(v18 + 104))(v44, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v46);
    sub_4010();
    v19 = sub_3E70();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v0[5] = sub_3E60();
    sub_3264(&qword_C3A0, &qword_4540);
    v22 = sub_3F30();
    sub_3DAC(v22);
    v24 = *(v23 + 72);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_4420;
    (*(v48 + 16))(v47, v17, v49);
    sub_2C48(v47, 0, 1, v49);
    sub_3E90();
    sub_3F10();
    (*(v51 + 8))(v50, v52);
    sub_3F20();
    v27 = sub_3E50();

    v0[6] = v27;
    sub_3F00();
    v28 = sub_3F60();

    v0[7] = v28;

    sub_3264(&qword_C3A8, &qword_4548);
    sub_3534();
    sub_3FE0();

    (*(v48 + 8))(v17, v49);
    (*(v54 + 8))(v12, v53);
  }

  v34 = v0[29];
  v33 = v0[30];
  v36 = v0[25];
  v35 = v0[26];
  v37 = v0[22];
  v38 = v0[19];
  v39 = v0[16];
  v40 = v0[13];
  v41 = v0[10];

  v42 = v0[1];

  return v42();
}

uint64_t sub_2254(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v54 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v54 - v14);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = sub_3264(&qword_C3B8, &qword_4550);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0(a1, v21);
  v26 = sub_3264(&qword_C3C0, &qword_4558);
  if (sub_2BAC(v21, 1, v26) == 1)
  {
    if (qword_C150 != -1)
    {
      swift_once();
    }

    v27 = sub_40A0();
    sub_33E0(v27, qword_C660);
    v28 = sub_4080();
    v29 = sub_40D0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "[RedirectToCompanionFlow] ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v30, 2u);
    }

    v31 = sub_4040();
    sub_2C48(v25, 1, 2, v31);
    sub_3650(v21);
  }

  else
  {
    (*(v5 + 32))(v17, v21, v4);
    v32 = *(v5 + 16);
    v59 = v17;
    v32(v15);
    if ((*(v5 + 88))(v15, v4) == enum case for ExecuteOnRemoteFlowResult.remoteFlowFailure(_:))
    {
      (*(v5 + 96))(v15, v4);
      v33 = *v15;
      if (qword_C150 != -1)
      {
        swift_once();
      }

      v34 = sub_40A0();
      sub_33E0(v34, qword_C660);
      swift_errorRetain();
      v35 = sub_4080();
      v36 = sub_40D0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60 = v33;
        v61[0] = v58;
        *v37 = 136315138;
        swift_errorRetain();
        sub_3264(&qword_C3C8, &qword_4560);
        v38 = sub_40B0();
        v40 = a2;
        v41 = sub_371C(v38, v39, v61);

        *(v37 + 4) = v41;
        a2 = v40;
        _os_log_impl(&dword_0, v35, v36, "[RedirectToCompanionFlow] ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v37, 0xCu);
        sub_3C8C(v58);
      }

      else
      {
      }

      (*(v5 + 8))(v59, v4);
      v50 = sub_4040();
      sub_2C48(v25, 2, 2, v50);
    }

    else
    {
      if (qword_C150 != -1)
      {
        swift_once();
      }

      v42 = sub_40A0();
      sub_33E0(v42, qword_C660);
      (v32)(v12, v59, v4);
      v43 = sub_4080();
      LODWORD(v58) = sub_40E0();
      if (os_log_type_enabled(v43, v58))
      {
        v44 = swift_slowAlloc();
        v57 = a2;
        v45 = v44;
        v56 = swift_slowAlloc();
        v61[0] = v56;
        *v45 = 136315138;
        (v32)(v9, v12, v4);
        v55 = sub_40B0();
        v47 = v46;
        v48 = *(v5 + 8);
        v48(v12, v4);
        v49 = sub_371C(v55, v47, v61);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_0, v43, v58, "[RedirectToCompanionFlow] ExecuteOnRemote flow completed with: %s", v45, 0xCu);
        sub_3C8C(v56);

        a2 = v57;
      }

      else
      {

        v48 = *(v5 + 8);
        v48(v12, v4);
      }

      v48(v59, v4);
      v51 = sub_4040();
      sub_2C48(v25, 1, 2, v51);
      v48(v15, v4);
    }
  }

  v52 = OBJC_IVAR____TtC16FindMyFlowPlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_36B8(v25, a2 + v52);
  swift_endAccess();
  return sub_347C(v25);
}

uint64_t sub_2960()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  sub_31EC(&qword_C380);
  return sub_3F40();
}

uint64_t sub_29DC()
{
  sub_347C(v0 + OBJC_IVAR____TtC16FindMyFlowPlugin23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2A68()
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t sub_2B18(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_4040();
  v5 = sub_2BAC(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2BE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_4040();

  return sub_2C48(a1, v5, a3, v6);
}

uint64_t sub_2C74()
{
  v0 = sub_4040();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void (*sub_2D14(void *a1))(void *a1)
{
  v3 = sub_3230(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_4050();
  return sub_2D8C;
}

void sub_2D8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2EAC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_2EAC()
{
  sub_3DE4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_3DBC();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_2FC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_305C;

  return sub_19F0();
}

uint64_t sub_305C()
{
  sub_3DE4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_3DBC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_3144(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToCompanionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_31EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RedirectToCompanionFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_3230(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_3264(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_32AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_305C;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_3360()
{
  v0 = sub_40A0();
  sub_3D38(v0, qword_C660);
  sub_33E0(v0, qword_C660);
  return sub_4090();
}

uint64_t sub_33E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_347C(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_34D8()
{
  result = qword_C398;
  if (!qword_C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C398);
  }

  return result;
}

unint64_t sub_3534()
{
  result = qword_C3B0;
  if (!qword_C3B0)
  {
    sub_3598(&qword_C3A8, &qword_4548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B0);
  }

  return result;
}

uint64_t sub_3598(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_35E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3264(&qword_C3B8, &qword_4550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3650(uint64_t a1)
{
  v2 = sub_3264(&qword_C3B8, &qword_4550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_36B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_371C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_37E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_3CD8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3C8C(v11);
  return v7;
}

unint64_t sub_37E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_38E0(a5, a6);
    *a1 = v9;
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
    result = sub_4100();
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

char *sub_38E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_392C(a1, a2);
  sub_3A44(&off_8508);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_392C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_40C0())
  {
    result = sub_3B28(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_40F0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_4100();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_3A44(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_3B98(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3B28(uint64_t a1, uint64_t a2)
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

  sub_3264(&unk_C3D0, &qword_4568);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_3B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_3264(&unk_C3D0, &qword_4568);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_3C8C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_3D38(uint64_t a1, uint64_t *a2)
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

uint64_t sub_3DCC()
{

  return swift_task_alloc();
}