unint64_t sub_4AFD8()
{
  result = qword_737B0;
  if (!qword_737B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B0);
  }

  return result;
}

unint64_t sub_4B02C()
{
  result = qword_737B8;
  if (!qword_737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B8);
  }

  return result;
}

unint64_t sub_4B080()
{
  result = qword_737C0;
  if (!qword_737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737C0);
  }

  return result;
}

unint64_t sub_4B0D4()
{
  result = qword_737C8;
  if (!qword_737C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737C8);
  }

  return result;
}

uint64_t sub_4B128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000000005F560 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000000005F580 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000000005F5A0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000000005F5C0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654874706D6F7270 && a2 == 0xEC00000072656461)
  {

    return 4;
  }

  else
  {
    v5 = sub_5B7A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double sub_4B2E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v64 = sub_5B94(&qword_737D0, &qword_5D8E8);
  v71 = *(v64 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v64);
  v72 = &v61 - v4;
  v70 = sub_5B94(&qword_737D8, &qword_5D8F0);
  v69 = *(v70 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v70);
  v75 = &v61 - v6;
  v67 = sub_5B94(&qword_737E0, &qword_5D8F8);
  v68 = *(v67 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v67);
  v74 = &v61 - v8;
  v66 = sub_5B94(&qword_737E8, &qword_5D900);
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v66);
  v11 = &v61 - v10;
  v12 = sub_5B94(&qword_737F0, &qword_5D908);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = sub_5B94(&qword_737F8, &qword_5D910);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v87 = a1;
  sub_5CBC(a1, v22);
  sub_4AEDC();
  v23 = v76;
  sub_5B878();
  if (v23)
  {
    goto LABEL_9;
  }

  v61 = v12;
  v24 = v74;
  v25 = v75;
  v76 = v17;
  v26 = v16;
  v62 = v20;
  v27 = sub_5B728();
  v28 = *(v27 + 16);
  if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
  {
    v31 = sub_5B5E8();
    swift_allocError();
    v33 = v32;
    v34 = *(sub_5B94(&qword_73800, &qword_5D918) + 48);
    *v33 = &type metadata for SiriLinkViewModel;
    v35 = v62;
    sub_5B6D8();
    sub_5B5D8();
    (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
    swift_willThrow();
    (*(v76 + 8))(v35, v26);
    swift_unknownObjectRelease();
LABEL_9:
    sub_5D00(v87);
    return result;
  }

  if (*(v27 + 32) <= 1u)
  {
    if (*(v27 + 32))
    {
      LOBYTE(v77) = 1;
      sub_4B080();
      v48 = v62;
      sub_5B6C8();
      sub_4BE20();
      v55 = v66;
      sub_5B718();
      v63 = 0;
      (*(v65 + 8))(v11, v55);
      (*(v76 + 8))(v48, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v77) = 0;
      sub_4B0D4();
      v41 = v15;
      v42 = v62;
      sub_5B6C8();
      sub_4BE20();
      v54 = v61;
      sub_5B718();
      (*(v63 + 8))(v41, v54);
      (*(v76 + 8))(v42, v16);
      swift_unknownObjectRelease();
      v63 = 0;
    }

    v56 = v77;
    v58 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    v86 = v82;
    goto LABEL_21;
  }

  v66 = v27;
  v37 = v73;
  if (v29 != 2)
  {
    LODWORD(v74) = v29;
    v30 = v29 == 3;
    v38 = v76;
    v39 = v26;
    if (v30)
    {
      LOBYTE(v77) = 3;
      sub_4AF84();
      v40 = v62;
      sub_5B6C8();
      sub_4BE20();
      v50 = v70;
      sub_5B718();
      v63 = 0;
      (*(v69 + 8))(v25, v50);
      (*(v38 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v56 = v77;
      v58 = v78;
      v83 = v79;
      v84 = v80;
      v85 = v81;
      v86 = v82;
    }

    else
    {
      LOBYTE(v77) = 4;
      sub_4AF30();
      v46 = v72;
      v47 = v62;
      sub_5B6C8();
      v51 = v64;
      v52 = sub_5B6F8();
      v53 = v46;
      v63 = 0;
      v56 = v52;
      v58 = v57;
      (*(v71 + 8))(v53, v51);
      (*(v38 + 8))(v47, v39);
      swift_unknownObjectRelease();
    }

    LOBYTE(v29) = v74;
LABEL_21:
    v37 = v73;
    goto LABEL_22;
  }

  LOBYTE(v77) = 2;
  sub_4B02C();
  v43 = v24;
  v44 = v62;
  sub_5B6C8();
  v45 = v76;
  sub_4BE20();
  v49 = v67;
  sub_5B718();
  v63 = 0;
  (*(v68 + 8))(v43, v49);
  (*(v45 + 8))(v44, v26);
  swift_unknownObjectRelease();
  v56 = v77;
  v58 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;
LABEL_22:
  sub_5D00(v87);
  *v37 = v56;
  *(v37 + 8) = v58;
  v59 = v84;
  *(v37 + 16) = v83;
  *(v37 + 32) = v59;
  result = *&v85;
  v60 = v86;
  *(v37 + 48) = v85;
  *(v37 + 64) = v60;
  *(v37 + 80) = v29;
  return result;
}

unint64_t sub_4BE20()
{
  result = qword_73808;
  if (!qword_73808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73808);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4C020()
{
  result = qword_73810;
  if (!qword_73810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73810);
  }

  return result;
}

unint64_t sub_4C078()
{
  result = qword_73818;
  if (!qword_73818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73818);
  }

  return result;
}

unint64_t sub_4C0D0()
{
  result = qword_73820;
  if (!qword_73820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73820);
  }

  return result;
}

unint64_t sub_4C128()
{
  result = qword_73828;
  if (!qword_73828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73828);
  }

  return result;
}

unint64_t sub_4C180()
{
  result = qword_73830;
  if (!qword_73830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73830);
  }

  return result;
}

unint64_t sub_4C1D8()
{
  result = qword_73838;
  if (!qword_73838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73838);
  }

  return result;
}

unint64_t sub_4C230()
{
  result = qword_73840;
  if (!qword_73840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73840);
  }

  return result;
}

unint64_t sub_4C288()
{
  result = qword_73848;
  if (!qword_73848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73848);
  }

  return result;
}

unint64_t sub_4C2E0()
{
  result = qword_73850;
  if (!qword_73850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73850);
  }

  return result;
}

unint64_t sub_4C338()
{
  result = qword_73858;
  if (!qword_73858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73858);
  }

  return result;
}

unint64_t sub_4C390()
{
  result = qword_73860;
  if (!qword_73860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73860);
  }

  return result;
}

unint64_t sub_4C3E8()
{
  result = qword_73868;
  if (!qword_73868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73868);
  }

  return result;
}

unint64_t sub_4C440()
{
  result = qword_73870;
  if (!qword_73870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73870);
  }

  return result;
}

unint64_t sub_4C498()
{
  result = qword_73878;
  if (!qword_73878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73878);
  }

  return result;
}

unint64_t sub_4C4F0()
{
  result = qword_73880;
  if (!qword_73880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73880);
  }

  return result;
}

unint64_t sub_4C548()
{
  result = qword_73888;
  if (!qword_73888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73888);
  }

  return result;
}

unint64_t sub_4C5A0()
{
  result = qword_73890;
  if (!qword_73890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73890);
  }

  return result;
}

unint64_t sub_4C5F8()
{
  result = qword_73898;
  if (!qword_73898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73898);
  }

  return result;
}

uint64_t sub_4C678()
{
  sub_5B94(&qword_72D68, &unk_5CF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5AF08();

  return v1;
}

uint64_t sub_4C71C()
{
  v1 = v0;
  v2 = sub_5B0F8();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  v4 = __chkstk_darwin(v2);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_5A738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5A858();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 176) = 2;
  sub_5A7C8();
  if ((sub_5A808() & 1) == 0 && (sub_5A7E8() & 1) == 0)
  {
    if (sub_5A848())
    {
      (*(v14 + 8))(v17, v13);
      v26 = 1;
    }

    else
    {
      v30 = sub_5A7F8();
      (*(v14 + 8))(v17, v13);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      v26 = 4;
    }

LABEL_14:
    *(v1 + 176) = v26;
    return 1;
  }

  (*(v14 + 8))(v17, v13);
  (*(v9 + 104))(v12, enum case for UniversalActionFeatureFlags.cancelDefaultBehavior(_:), v8);
  v18 = sub_5A728();
  (*(v9 + 8))(v12, v8);
  if (v18)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v19 = sub_5B228();
    sub_5B44(v19, qword_763B8);

    v20 = sub_5B218();
    v21 = sub_5B4B8();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v32;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      sub_5B94(&qword_72D68, &unk_5CF50);
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v1;

      sub_5AF08();

      sub_5B0D8();

      v25 = sub_5B0E8();
      (*(v23 + 8))(v7, v2);
      *(v24 + 4) = v25;

      _os_log_impl(&dword_0, v20, v21, "UniversalAction currentRequest.positionInSession: %ld", v24, 0xCu);
    }

    else
    {
    }

    sub_5B94(&qword_72D68, &unk_5CF50);
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v1;

    sub_5AF08();

    sub_5B0D8();

    v27 = v31;
    (*(v23 + 104))(v31, enum case for RequestPositionInSession.first(_:), v2);
    sub_4EA4C(&qword_739B8, 255, &type metadata accessor for RequestPositionInSession);
    sub_5B3A8();
    sub_5B3A8();
    v28 = *(v23 + 8);
    v28(v27, v2);
    v28(v7, v2);
    if (v34 == v33)
    {
      v26 = 0;
    }

    else
    {
      v26 = 3;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_4CCD0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4CCF0, 0, 0);
}

uint64_t sub_4CCF0()
{
  v1 = v0[3];
  v2 = *(v1 + 176);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v11 = *(v1 + 168);
      sub_5CBC((v1 + 136), *(v1 + 160));
      sub_5A1E8();
      LOBYTE(v33) = 0;
      sub_5A1D8();
      sub_5A158();

      sub_5B94(&qword_72460, &unk_5C5E0);
      v4 = swift_allocObject();
      v0[12] = v4;
      *(v4 + 16) = xmmword_5C4A0;
      *(v4 + 32) = [objc_allocWithZone(SAUIClearScreen) init];
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_4D67C;
      v7 = v0[2];
      v13 = v0[3];
      v10 = 0x800000000005F640;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      if (v2 != 4)
      {
        v22 = [objc_allocWithZone(SAUICloseAssistant) init];
        v0[4] = v22;
        if (v2)
        {
          v23 = "UniversalActionDialog#dismiss";
          sub_5B94(&qword_72460, &unk_5C5E0);
          v24 = swift_allocObject();
          v0[8] = v24;
          *(v24 + 16) = xmmword_5C4A0;
          *(v24 + 32) = v22;
          v25 = v22;
          v26 = swift_task_alloc();
          v0[9] = v26;
          *v26 = v0;
          v26[1] = sub_4D3EC;
          v7 = v0[2];
          v27 = v0[3];
          v9 = 0xD000000000000025;
        }

        else
        {
          v28 = v0[3];
          v29 = v28[21];
          sub_5CBC(v28 + 17, v28[20]);
          sub_5A1E8();
          sub_5A1D8();
          sub_5A158();

          v23 = "UniversalActionDialog#cancel";
          sub_5B94(&qword_72460, &unk_5C5E0);
          v24 = swift_allocObject();
          v0[10] = v24;
          *(v24 + 16) = xmmword_5C4A0;
          *(v24 + 32) = v22;
          v30 = v22;
          v31 = swift_task_alloc();
          v0[11] = v31;
          *v31 = v0;
          v31[1] = sub_4D564;
          v7 = v0[2];
          v32 = v0[3];
          v9 = 0xD00000000000001DLL;
        }

        v10 = v23 | 0x8000000000000000;
        v14 = v24;
        goto LABEL_18;
      }

      v3 = [objc_allocWithZone(SAUICloseAssistant) init];
      v0[5] = v3;
      sub_5B94(&qword_72460, &unk_5C5E0);
      v4 = swift_allocObject();
      v0[6] = v4;
      *(v4 + 16) = xmmword_5C4A0;
      *(v4 + 32) = v3;
      v5 = v3;
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_4D274;
      v7 = v0[2];
      v8 = v0[3];
      v9 = 0xD00000000000001ELL;
      v10 = 0x800000000005F6B0;
    }

    v14 = v4;
LABEL_18:

    return sub_4D78C(v7, v9, v10, v14);
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v15 = sub_5B228();
  sub_5B44(v15, qword_763B8);
  v16 = sub_5B218();
  v17 = sub_5B4C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
  }

  v19 = v0[2];

  sub_5A438();
  v20 = v0[1];

  return v20();
}

uint64_t sub_4D274()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_4D38C, 0, 0);
}

uint64_t sub_4D38C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D3EC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_4D504, 0, 0);
}

uint64_t sub_4D504()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D564()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_4EA94, 0, 0);
}

uint64_t sub_4D67C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_4D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v7 = sub_5A908();
  v5[42] = v7;
  v8 = *(v7 - 8);
  v5[43] = v8;
  v9 = *(v8 + 64) + 15;
  v5[44] = swift_task_alloc();
  v10 = sub_5A648();
  v5[45] = v10;
  v11 = *(v10 - 8);
  v5[46] = v11;
  v12 = *(v11 + 64) + 15;
  v5[47] = swift_task_alloc();
  v13 = sub_5A588();
  v5[48] = v13;
  v14 = *(v13 - 8);
  v5[49] = v14;
  v15 = *(v14 + 64) + 15;
  v5[50] = swift_task_alloc();

  return _swift_task_switch(sub_4D944, 0, 0);
}

uint64_t sub_4D944()
{
  v1 = sub_5CBC((v0[40] + 96), *(v0[40] + 120));
  v2 = sub_38208(_swiftEmptyArrayStorage);
  v0[51] = v2;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v5 = sub_3802C(inited);
  v0[52] = v5;
  swift_setDeallocating();
  sub_5D4C(v4, &unk_72450, &unk_5C470);
  v6 = *v1;
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_4DAB0;
  v9 = v0[37];
  v8 = v0[38];

  return sub_3419C(v9, v8, v2, v5);
}

uint64_t sub_4DAB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v5 = *v2;
  *(*v2 + 432) = a1;

  v6 = *(v3 + 416);
  v7 = *(v3 + 408);
  if (v1)
  {

    v8 = sub_4E020;
  }

  else
  {

    v8 = sub_4DC24;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_4DC24()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 400);
  v22 = *(v0 + 336);
  v23 = *(v0 + 344);
  v4 = *(v0 + 328);
  v21 = *(v0 + 320);
  v5 = *(v0 + 304);
  v19 = *(v0 + 352);
  v20 = *(v0 + 312);
  v6 = *(v0 + 296);

  v7 = [v1 speak];
  sub_5B3D8();

  v8 = [v1 print];
  sub_5B3D8();

  (*(v3 + 104))(v2, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v17);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  v9 = *(v0 + 168);
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v10 = sub_5A488();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3C8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v11 = v21[10];
  v12 = v21[11];
  sub_5CBC(v21 + 7, v11);
  *(v0 + 240) = v22;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v13 = sub_5F2C((v0 + 216));
  (*(v23 + 16))(v13, v19, v22);
  v14 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_4DF04;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v11, v12);
}

uint64_t sub_4DF04()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_4E2C4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v4 = sub_4E1D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_4E020()
{
  v17 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[37];
    v5 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2DC10(v6, v5, &v16);
    _os_log_impl(&dword_0, v3, v4, "Couldn't create a dialog for %s.", v7, 0xCu);
    sub_5D00(v8);
  }

  v9 = v0[36];
  sub_5A438();
  v10 = v0[50];
  v11 = v0[47];
  v12 = v0[44];
  v13 = v0[41];

  v14 = v0[1];

  return v14();
}

uint64_t sub_4E1D8()
{
  v1 = v0[54];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  v8 = v0[36];
  sub_5A438();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[41];

  v13 = v0[1];

  return v13();
}

uint64_t sub_4E2C4()
{
  v30 = v0;
  sub_5D00(v0 + 27);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);
  swift_errorRetain();
  v3 = sub_5B218();
  v4 = sub_5B4C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[32];
    v9 = v0[33];
    v11 = v0[34];
    v12 = sub_5B7E8();
    v14 = sub_2DC10(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Error publishing output %s.", v7, 0xCu);
    sub_5D00(v8);
  }

  else
  {
  }

  v15 = v0[54];
  v17 = v0[49];
  v16 = v0[50];
  v18 = v0[48];
  v20 = v0[43];
  v19 = v0[44];
  v21 = v0[42];
  v22 = v0[36];
  sub_5A438();

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[44];
  v26 = v0[41];

  v27 = v0[1];

  return v27();
}

uint64_t sub_4E508()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  sub_5D00(v0 + 17);
  v1 = v0[23];

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UniversalActionTaskInterruptionFlow.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UniversalActionTaskInterruptionFlow.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_4E6DC(unsigned __int8 *a1)
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

_BYTE *sub_4E6F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void (*sub_4E720(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_5AF28();
  return sub_3C310;
}

uint64_t sub_4E7D4()
{
  v2 = *v0;
  type metadata accessor for UniversalActionTaskInterruptionFlow();
  return sub_5A098();
}

uint64_t sub_4E830(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_4CCD0(a1);
}

uint64_t sub_4E8CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UniversalActionTaskInterruptionFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_4E994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_5B94(&qword_72D68, &unk_5CF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5AF08();

  *a2 = v5;
  return result;
}

uint64_t sub_4EA4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_4EA98(uint64_t a1)
{
  v2 = sub_5B278();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_377B8(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_377B8((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = &protocol witness table for ActionCandidate;
      v15 = sub_5F2C(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_5B7C(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_4EC64(uint64_t a1, uint64_t a2, char *a3)
{
  v57 = a3;
  v58 = a2;
  v3 = sub_59E38();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5B2D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B94(&qword_73A68, &qword_5E278);
  v12 = sub_5B278();
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_5C2D0;
  v16 = v15 + v14;
  sub_4315C(v16);
  v17 = v16 + v13;
  v18 = v11;
  sub_4315C(v17);
  sub_4EA98(v15);

  sub_5B2C8();
  v19 = v60;
  v20 = sub_5B2A8();
  if (!v19)
  {
    v60 = v7;
    v22 = v8;
    if (v21)
    {
      v58 = v20;
      v23 = sub_5B2B8();
      if (v24)
      {
        v52 = v23;
        v53 = v8;
        v54 = v24;
        v59[3] = v12;
        v59[4] = &protocol witness table for ActionCandidate;
        v33 = sub_5F2C(v59);
        sub_4315C(v33);
        v34 = sub_5B298();
        v36 = v35;
        sub_5D00(v59);
        if ((v36 & 1) == 0)
        {
          v46 = [objc_allocWithZone(sub_5B108()) init];
          v57 = v11;
          v18 = v46;
          sub_59E28();
          sub_59E18();
          (*(v55 + 8))(v6, v56);
          v47 = sub_5B338();

          [v18 setIdentifier:v47];

          v48 = sub_5B338();
          [v18 _setLaunchId:v48];

          v49 = sub_5B338();

          [v18 setCandidateBundles:v49];

          v50 = sub_5B338();

          [v18 setCandidateActions:v50];

          v59[0] = v34;
          sub_5B798();
          v51 = sub_5B338();

          [v18 setSelectedCandidateIndex:v51];

          (*(v53 + 8))(v57, v60);
          return v18;
        }

        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v37 = sub_5B228();
        sub_5B44(v37, qword_763B8);
        v38 = sub_5B218();
        v39 = sub_5B4B8();
        v40 = os_log_type_enabled(v38, v39);
        v41 = v60;
        if (v40)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v38, v39, "[DisambiguateActionsIntent] Could not serialise selected index.", v42, 2u);
        }

        (*(v53 + 8))(v11, v41);
        return 0;
      }

      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v43 = sub_5B228();
      sub_5B44(v43, qword_763B8);
      v26 = sub_5B218();
      v27 = sub_5B4B8();
      v44 = os_log_type_enabled(v26, v27);
      v29 = v60;
      if (v44)
      {
        v30 = v22;
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "[DisambiguateActionsIntent] Could not serialise action representations.";
        goto LABEL_9;
      }
    }

    else
    {
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v25 = sub_5B228();
      sub_5B44(v25, qword_763B8);
      v26 = sub_5B218();
      v27 = sub_5B4B8();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v60;
      if (v28)
      {
        v30 = v22;
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "[DisambiguateActionsIntent] Could not serialise action bundles.";
LABEL_9:
        _os_log_impl(&dword_0, v26, v27, v32, v31, 2u);

        (*(v30 + 8))(v11, v29);
        return 0;
      }
    }

    (*(v22 + 8))(v11, v29);
    return 0;
  }

  (*(v8 + 8))(v11, v7);
  return v18;
}

uint64_t sub_4F350(uint64_t a1, void *a2)
{
  v3 = sub_5CBC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_5B94(&qword_724C8, &qword_5E270);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_4F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_4F444, 0, 0);
}

uint64_t sub_4F444()
{
  v1 = sub_4EC64(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 168) = v1;
  if (v1)
  {
    v3 = [objc_allocWithZone(INInteraction) initWithIntent:v1 response:0];
    *(v0 + 176) = v3;
    [v3 _setDonatedBySiri:1];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_4F600;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_5B94(&qword_73A60, &unk_5E260);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_4F350;
    *(v0 + 104) = &unk_6E940;
    *(v0 + 112) = v4;
    [v3 donateInteractionWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_4F600()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_4F84C;
  }

  else
  {
    v3 = sub_4F710;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4F710()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  v6 = v0[22];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v2, v3, "[DisambiguateActionsIntent] Donation success.", v7, 2u);
  }

  else
  {

    v2 = v5;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_4F84C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = sub_5B228();
  sub_5B44(v4, qword_763B8);
  swift_errorRetain();
  v5 = sub_5B218();
  v6 = sub_5B4C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v9 = v0[21];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v5, v6, "[DisambiguateActionsIntent] Donation failed: %@", v10, 0xCu);
    sub_43DAC(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

unint64_t sub_4FA30()
{
  v0 = sub_5A968();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_5AA18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  sub_5A8D8();
  v13 = sub_5A958();
  (*(v1 + 8))(v4, v0);
  if (!*(v13 + 16))
  {

    return 0;
  }

  (*(v6 + 16))(v10, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v12, v10, v5);
  result = sub_5AB58();
  if (result >> 62)
  {
    v16 = result;
    v17 = sub_5B678();
    result = v16;
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_11:

    v15 = 0;
    goto LABEL_12;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v15 = *(result + 32);
  }

LABEL_12:
  (*(v6 + 8))(v12, v5);
  return v15;
}

uint64_t sub_4FCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_5B94(&qword_73CA0, &qword_5C910) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_4FDA0, 0, 0);
}

uint64_t sub_4FDA0()
{
  v1 = v0[11];
  v2 = sub_37670(0, 0, 0);
  v7 = _swiftEmptyArrayStorage;
  v44 = *(v1 + 16);
  if (v44)
  {
    v41 = v0 + 2;
    v8 = v0[11];
    v9 = sub_5B468();
    v10 = 0;
    v11 = *(v9 - 8);
    v43 = *(v11 + 56);
    v42 = (v11 + 48);
    v40 = (v11 + 8);
    v12 = (v8 + 56);
    do
    {
      v47 = v7;
      v48 = v10;
      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[9];
      v16 = v0[10];
      v17 = *v12;
      v45 = *(v12 - 1);
      v18 = v0;
      v46 = v12;
      v19 = *(v12 - 3);
      v20 = *(v12 - 2);
      v43(v13, 1, 1, v9);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v15;
      v21[5] = v16;
      v22 = v48;
      v21[6] = v48;
      v21[7] = v19;
      v0 = v18;
      v21[8] = v20;
      v21[9] = v45;
      v21[10] = v17;
      sub_1AE38(v13, v14, &qword_73CA0, &qword_5C910);
      LODWORD(v14) = (*v42)(v14, 1, v9);

      v23 = v18[12];
      if (v14 == 1)
      {
        sub_5D4C(v18[12], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*v40)(v23, v9);
      }

      v24 = v21[2];
      v25 = v21[3];
      swift_unknownObjectRetain();

      v7 = v47;
      if (v24)
      {
        swift_getObjectType();
        v26 = sub_5B418();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      sub_5D4C(v0[13], &qword_73CA0, &qword_5C910);
      if (v28 | v26)
      {
        *v41 = 0;
        v41[1] = 0;
        v0[4] = v26;
        v0[5] = v28;
      }

      v2 = swift_task_create();
      v30 = v47[2];
      v29 = v47[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v32 = v2;
        sub_37670((v29 > 1), v30 + 1, 1);
        v2 = v32;
        v22 = v48;
        v7 = v47;
      }

      v10 = v22 + 1;
      v12 = v46 + 4;
      v7[2] = v31;
      v7[v30 + 4] = v2;
    }

    while (v44 != v10);
    goto LABEL_16;
  }

  v31 = _swiftEmptyArrayStorage[2];
  if (v31)
  {
LABEL_16:
    v0[14] = v7;
    v0[15] = v31;
    v0[16] = _swiftEmptyArrayStorage;
    v0[17] = 0;
    if (v7[2])
    {
      v33 = v7[4];
      v0[18] = v33;
      v34 = async function pointer to Task.value.getter[1];

      v35 = swift_task_alloc();
      v0[19] = v35;
      v5 = sub_5B94(&qword_724C8, &qword_5E270);
      *v35 = v0;
      v35[1] = sub_501E4;
      v4 = &type metadata for AppNameDisambiguationFlow.Card;
      v6 = &protocol self-conformance witness table for Error;
      v2 = (v0 + 6);
      v3 = v33;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v2, v3, v4, v5, v6);
  }

  v37 = v0[12];
  v36 = v0[13];

  v38 = v0[1];

  return v38(_swiftEmptyArrayStorage);
}

uint64_t sub_501E4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 112);

    v6 = sub_5052C;
  }

  else
  {
    *(v2 + 168) = *(v2 + 48);
    *(v2 + 184) = *(v2 + 64);
    v6 = sub_5031C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_5031C()
{
  v1 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 128);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_58700(0, *(v3 + 2) + 1, 1, *(v0 + 128));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_58700((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 184);
  v26 = *(v0 + 168);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);

  *(v3 + 2) = v5 + 1;
  v15 = &v3[24 * v5];
  *(v15 + 2) = v26;
  *(v15 + 6) = v6;
  if (v8 + 1 == v9)
  {
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);

    v19 = *(v0 + 8);

    return v19(v3);
  }

  else
  {
    v21 = *(v0 + 136) + 1;
    *(v0 + 128) = v3;
    *(v0 + 136) = v21;
    v22 = *(v0 + 112);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = *(v22 + 8 * v21 + 32);
      *(v0 + 144) = v23;
      v24 = async function pointer to Task.value.getter[1];

      v25 = swift_task_alloc();
      *(v0 + 152) = v25;
      v13 = sub_5B94(&qword_724C8, &qword_5E270);
      *v25 = v0;
      v25[1] = sub_501E4;
      v12 = &type metadata for AppNameDisambiguationFlow.Card;
      v14 = &protocol self-conformance witness table for Error;
      v10 = v0 + 48;
      v11 = v23;
    }

    return Task.value.getter(v10, v11, v12, v13, v14);
  }
}

uint64_t sub_5052C()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_505A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_5B94(&qword_73CA0, &qword_5C910) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_5A318();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v3[19] = *(v6 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_506F0, 0, 0);
}

uint64_t sub_506F0()
{
  v1 = *(v0[12] + 16);
  sub_37778(0, v1, 0);
  v6 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v7 = v0[18];
    v47 = v0[19];
    v46 = *(v7 + 16);
    v8 = *(v7 + 80);
    v2 = v0[12] + ((v8 + 32) & ~v8);
    v45 = *(v7 + 72);
    v44 = (v8 + 48) & ~v8;
    v42 = (v7 + 8);
    v43 = (v7 + 32);
    do
    {
      v51 = v1;
      v52 = v6;
      v10 = v0[20];
      v9 = v0[21];
      v11 = v0[17];
      v13 = v0[13];
      v12 = v0[14];
      v48 = v0[10];
      v49 = v0[11];
      v50 = v2;
      v46(v9);
      v14 = sub_5B468();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v12, 1, 1, v14);
      (v46)(v10, v9, v11);
      v16 = swift_allocObject();
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 4) = v48;
      *(v16 + 5) = v49;
      (*v43)(&v16[v44], v10, v11);
      sub_1AE38(v12, v13, &qword_73CA0, &qword_5C910);
      LODWORD(v11) = (*(v15 + 48))(v13, 1, v14);

      v17 = v0[13];
      if (v11 == 1)
      {
        sub_5D4C(v0[13], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*(v15 + 8))(v17, v14);
      }

      v18 = *(v16 + 2);
      v19 = *(v16 + 3);
      swift_unknownObjectRetain();

      if (v18)
      {
        swift_getObjectType();
        v20 = sub_5B418();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      sub_5D4C(v0[14], &qword_73CA0, &qword_5C910);
      if (v22 | v20)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v20;
        v0[5] = v22;
      }

      v23 = v0[21];
      v24 = v0[17];
      v25 = swift_task_create();
      (*v42)(v23, v24);
      v6 = v52;
      v27 = v52[2];
      v26 = v52[3];
      if (v27 >= v26 >> 1)
      {
        sub_37778((v26 > 1), v27 + 1, 1);
        v6 = v52;
      }

      v6[2] = v27 + 1;
      v6[v27 + 4] = v25;
      v2 = v50 + v45;
      v1 = v51 - 1;
    }

    while (v51 != 1);
  }

  v0[24] = v6;
  v28 = v6[2];
  v0[25] = v28;
  if (v28)
  {
    v0[27] = 0;
    v0[26] = _swiftEmptyArrayStorage;
    if (v6[2])
    {
      v29 = v6[4];
      v0[28] = v29;
      v30 = async function pointer to Task.value.getter[1];

      v31 = swift_task_alloc();
      v0[29] = v31;
      v4 = sub_5B94(&qword_724C8, &qword_5E270);
      *v31 = v0;
      v31[1] = sub_50BE8;
      v3 = &type metadata for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo;
      v5 = &protocol self-conformance witness table for Error;
      v6 = v0 + 6;
      v2 = v29;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v6, v2, v3, v4, v5);
  }

  else
  {
    v32 = v0[22];
    v33 = v0[23];
    v35 = v0[20];
    v34 = v0[21];
    v37 = v0[15];
    v36 = v0[16];
    v39 = v0[13];
    v38 = v0[14];

    v40 = v0[1];

    return v40(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_50BE8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = *(v2 + 192);

    v6 = sub_50F7C;
  }

  else
  {
    *(v2 + 248) = *(v2 + 48);
    *(v2 + 256) = *(v2 + 56);
    *(v2 + 272) = *(v2 + 72);
    v6 = sub_50D28;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_50D28()
{
  v1 = *(v0 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_58820(0, *(v3 + 2) + 1, 1, *(v0 + 208));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_58820((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v33 = *(v0 + 248);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 200);

  *(v3 + 2) = v5 + 1;
  v16 = &v3[32 * v5];
  *(v16 + 2) = v33;
  *(v16 + 6) = v7;
  *(v16 + 7) = v6;
  if (v9 + 1 == v10)
  {
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);

    v26 = *(v0 + 8);

    return v26(v3);
  }

  else
  {
    v28 = *(v0 + 216) + 1;
    *(v0 + 208) = v3;
    *(v0 + 216) = v28;
    v29 = *(v0 + 192);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = *(v29 + 8 * v28 + 32);
      *(v0 + 224) = v30;
      v31 = async function pointer to Task.value.getter[1];

      v32 = swift_task_alloc();
      *(v0 + 232) = v32;
      v14 = sub_5B94(&qword_724C8, &qword_5E270);
      *v32 = v0;
      v32[1] = sub_50BE8;
      v13 = &type metadata for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo;
      v15 = &protocol self-conformance witness table for Error;
      v11 = v0 + 48;
      v12 = v30;
    }

    return Task.value.getter(v11, v12, v13, v14, v15);
  }
}

uint64_t sub_50F7C()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];
  v11 = v0[30];

  return v10();
}

uint64_t sub_51048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(*(sub_5B94(&qword_73CA0, &qword_5C910) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_5B94(&qword_73CA8, &qword_5E3C0);
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v3[15] = *(v6 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_5117C, 0, 0);
}

uint64_t sub_5117C()
{
  v1 = v0[10];
  v2 = sub_377F8(0, 0, 0);
  v7 = _swiftEmptyArrayStorage;
  v52 = *(v1 + 16);
  if (v52)
  {
    v50 = v0[13];
    v51 = v0[14];
    v8 = sub_5A4E8();
    v9 = 0;
    v49 = v8;
    v10 = *(v8 - 8);
    v48 = *(v10 + 16);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v47 = *(v10 + 72);
    do
    {
      v55 = v9;
      v56 = v7;
      v12 = v0[17];
      v13 = v0[18];
      v15 = v0[15];
      v14 = v0[16];
      v16 = v0[11];
      v17 = v0[12];
      v19 = v0[9];
      v18 = v0[10];
      v53 = v0[8];
      v54 = v11;
      v20 = *(v50 + 48);
      *v12 = v9;
      v48(&v12[v20], v18 + v11, v49);
      sub_59508(v12, v13);
      v21 = sub_5B468();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v17, 1, 1, v21);
      sub_1AE38(v13, v14, &qword_73CA8, &qword_5E3C0);
      v23 = (*(v51 + 80) + 48) & ~*(v51 + 80);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v53;
      v24[5] = v19;
      sub_59508(v14, v24 + v23);
      sub_1AE38(v17, v16, &qword_73CA0, &qword_5C910);
      LODWORD(v16) = (*(v22 + 48))(v16, 1, v21);

      v25 = v0[11];
      if (v16 == 1)
      {
        sub_5D4C(v0[11], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*(v22 + 8))(v25, v21);
      }

      v27 = v24[2];
      v26 = v24[3];
      swift_unknownObjectRetain();

      v7 = v56;
      if (v27)
      {
        swift_getObjectType();
        v28 = sub_5B418();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      sub_5D4C(v0[12], &qword_73CA0, &qword_5C910);
      sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      if (v30 | v28)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v28;
        v0[5] = v30;
      }

      v31 = v0[18];
      v32 = swift_task_create();
      v2 = sub_5D4C(v31, &qword_73CA8, &qword_5E3C0);
      v34 = v56[2];
      v33 = v56[3];
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v2 = sub_377F8((v33 > 1), v34 + 1, 1);
        v7 = v56;
      }

      v9 = v55 + 1;
      v7[2] = v35;
      v7[v34 + 4] = v32;
      v11 = v54 + v47;
    }

    while (v52 != v55 + 1);
    v0[6] = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v35 = _swiftEmptyArrayStorage[2];
  v0[6] = _swiftEmptyArrayStorage;
  if (v35)
  {
LABEL_16:
    v0[19] = v7;
    v0[20] = v35;
    v0[21] = _swiftEmptyArrayStorage;
    v0[22] = 0;
    if (v7[2])
    {
      v36 = v7[4];
      v0[23] = v36;
      v37 = async function pointer to Task.value.getter[1];

      v38 = swift_task_alloc();
      v0[24] = v38;
      v39 = sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      v5 = sub_5B94(&qword_724C8, &qword_5E270);
      *v38 = v0;
      v38[1] = sub_516AC;
      v6 = &protocol self-conformance witness table for Error;
      v2 = (v0 + 7);
      v3 = v36;
      v4 = v39;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v2, v3, v4, v5, v6);
  }

  v41 = v0[17];
  v40 = v0[18];
  v42 = v0[16];
  v44 = v0[11];
  v43 = v0[12];

  v45 = v0[1];

  return v45(_swiftEmptyArrayStorage);
}

uint64_t sub_516AC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[19];

    v6 = sub_519E8;
  }

  else
  {
    v2[26] = v2[7];
    v6 = sub_517DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_517DC()
{
  sub_5B3B8();
  if (*(&dword_10 + (v0[6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[6] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v25 = *(&dword_10 + (v0[6] & 0xFFFFFFFFFFFFFF8));
    sub_5B3E8();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[22] + 1;
  sub_5B408();

  v10 = v0[6];
  if (v4 == v3)
  {
    v12 = v0[18];
    v11 = v0[19];
    v14 = v0[16];
    v13 = v0[17];
    v16 = v0[11];
    v15 = v0[12];

    v17 = v0[1];

    return v17(v10);
  }

  else
  {
    v19 = v0[22] + 1;
    v0[21] = v10;
    v0[22] = v19;
    v20 = v0[19];
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v20 + 8 * v19 + 32);
      v0[23] = v21;
      v22 = async function pointer to Task.value.getter[1];

      v23 = swift_task_alloc();
      v0[24] = v23;
      v24 = sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      v8 = sub_5B94(&qword_724C8, &qword_5E270);
      *v23 = v0;
      v23[1] = sub_516AC;
      v9 = &protocol self-conformance witness table for Error;
      v5 = (v0 + 7);
      v6 = v21;
      v7 = v24;
    }

    return Task.value.getter(v5, v6, v7, v8, v9);
  }
}

uint64_t sub_519E8()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

BOOL sub_51A90(uint64_t a1)
{
  v185 = a1;
  v1 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v170 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5B94(&qword_72530, &qword_5C660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v167 = &v148 - v6;
  v7 = sub_59E38();
  v168 = *(v7 - 8);
  v8 = *(v168 + 64);
  __chkstk_darwin(v7);
  v156 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A318();
  v181 = *(v10 - 8);
  v182 = v10;
  v11 = *(v181 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v180 = &v148 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v148 - v18;
  __chkstk_darwin(v17);
  v150 = &v148 - v20;
  v164 = sub_5A8E8();
  v163 = *(v164 - 8);
  v21 = *(v163 + 64);
  __chkstk_darwin(v164);
  v162 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = (&v148 - v25);
  v161 = type metadata accessor for CAMDirectInvocation();
  v160 = *(v161 - 8);
  v27 = *(v160 + 64);
  v28 = __chkstk_darwin(v161);
  v154 = (&v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v153 = &v148 - v30;
  v159 = sub_5A838();
  v158 = *(v159 - 8);
  v31 = *(v158 + 64);
  __chkstk_darwin(v159);
  v157 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_5A858();
  v176 = *(v33 - 8);
  v177 = v33;
  v34 = *(v176 + 64);
  __chkstk_darwin(v33);
  v175 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_5B94(&unk_72560, &qword_5E3E0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v178 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v151 = &v148 - v41;
  v42 = __chkstk_darwin(v40);
  v152 = &v148 - v43;
  __chkstk_darwin(v42);
  v183 = &v148 - v44;
  v45 = sub_5A7D8();
  v46 = *(v45 - 8);
  v47 = v46[8];
  v48 = __chkstk_darwin(v45);
  v165 = &v148 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v155 = &v148 - v51;
  __chkstk_darwin(v50);
  v53 = &v148 - v52;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v54 = sub_5B228();
  v55 = sub_5B44(v54, qword_763B8);
  v171 = v46[2];
  v172 = v46 + 2;
  v171(v53, v185, v45);
  v179 = v55;
  v56 = sub_5B218();
  v57 = sub_5B4B8();
  v58 = os_log_type_enabled(v56, v57);
  v169 = v7;
  v174 = v46;
  v166 = v14;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v149 = v26;
    v61 = v60;
    v186 = v60;
    *v59 = 136315138;
    sub_5991C(&qword_71C90, &type metadata accessor for Input);
    v62 = sub_5B798();
    v63 = v19;
    v65 = v64;
    v173 = v46[1];
    v173(v53, v45);
    v66 = sub_2DC10(v62, v65, &v186);
    v19 = v63;

    *(v59 + 4) = v66;
    _os_log_impl(&dword_0, v56, v57, "VerbEntityDisambiguationFlow: on called with input %s", v59, 0xCu);
    sub_5D00(v61);
    v26 = v149;
  }

  else
  {

    v173 = v46[1];
    v173(v53, v45);
  }

  v67 = v175;
  sub_5A7C8();
  v69 = v176;
  v68 = v177;
  v70 = (*(v176 + 88))(v67, v177);
  v71 = v183;
  if (v70 != enum case for Parse.directInvocation(_:))
  {
    if (v70 != enum case for Parse.uso(_:))
    {
      v95 = v181;
      v78 = v182;
      (*(v181 + 56))(v183, 1, 1, v182);
      (*(v69 + 8))(v67, v68);
      v79 = v95;
      v77 = v184;
LABEL_26:
      v80 = v178;
      goto LABEL_27;
    }

    (*(v69 + 96))(v67, v68);
    (*(v163 + 32))(v162, v67, v164);
    v77 = v184;
    v81 = (v184 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction);
    v82 = (v184 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction);
    v83 = sub_3F9D8();
    v79 = v181;
    v78 = v182;
    if (v84)
    {
LABEL_11:
      v85 = v152;
      v177 = *(v181 + 56);
      (v177)(v152, 1, 1, v182);
      sub_5D4C(v85, &unk_72560, &qword_5E3E0);
      v86 = v162;
      v87 = v82;
      v88 = v151;
      sub_54548(v162, v81, v87, v151);
      (*(v163 + 8))(v86, v164);
      if ((*(v79 + 48))(v88, 1, v78) == 1)
      {
        sub_5D4C(v88, &unk_72560, &qword_5E3E0);
        v89 = v71;
        v90 = 1;
      }

      else
      {
        v96 = *(v79 + 32);
        v96(v19, v88, v78);
        v96(v71, v19, v78);
        v89 = v71;
        v90 = 0;
      }

      (v177)(v89, v90, 1, v78);
      goto LABEL_26;
    }

    if (v83 != 1)
    {
      if (!v83)
      {
        v177 = v45;
        v82 = v81;
        goto LABEL_47;
      }

      if (v83 != -1)
      {
        goto LABEL_11;
      }
    }

    v177 = v45;
LABEL_47:
    (*(v163 + 8))(v162, v164);
    v144 = v152;
    (*(v79 + 16))(v152, v82, v78);
    v145 = *(v79 + 56);
    v145(v144, 0, 1, v78);
    v146 = *(v79 + 32);
    v147 = v150;
    v146(v150, v144, v78);
    v146(v71, v147, v78);
    v145(v71, 0, 1, v78);
    v45 = v177;
    v80 = v178;
    goto LABEL_27;
  }

  (*(v69 + 96))(v67, v68);
  v72 = v158;
  v73 = v157;
  v74 = v159;
  (*(v158 + 32))(v157, v67, v159);
  v75 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction;
  v76 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction;
  sub_3601C(v26);
  (*(v72 + 8))(v73, v74);
  if ((*(v160 + 48))(v26, 1, v161) == 1)
  {
    sub_5D4C(v26, &qword_71C88, &qword_5C2A0);
    v77 = v184;
    v79 = v181;
    v78 = v182;
    v80 = v178;
LABEL_23:
    (*(v79 + 56))(v71, 1, 1, v78);
    goto LABEL_27;
  }

  v91 = v153;
  sub_1AF04(v26, v153);
  v92 = v91;
  v93 = v154;
  sub_1AF04(v92, v154);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = v184;
  v79 = v181;
  v78 = v182;
  v80 = v178;
  if (EnumCaseMultiPayload != 1)
  {
    sub_599C8(v93, type metadata accessor for CAMDirectInvocation);
    goto LABEL_23;
  }

  if (*v93)
  {
    if (*v93 != 1)
    {
      goto LABEL_23;
    }

    (*(v181 + 16))(v71, v184 + v76, v182);
  }

  else
  {
    (*(v181 + 16))(v71, v184 + v75, v182);
  }

  (*(v79 + 56))(v71, 0, 1, v78);
LABEL_27:
  sub_1AE38(v71, v80, &unk_72560, &qword_5E3E0);
  v97 = (*(v79 + 48))(v80, 1, v78);
  v98 = v97;
  if (v97 == 1)
  {
    sub_5D4C(v80, &unk_72560, &qword_5E3E0);
    v110 = v165;
    v171(v165, v185, v45);
    v111 = sub_5B218();
    v112 = sub_5B4C8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v186 = v114;
      *v113 = 136315138;
      sub_5991C(&qword_71C90, &type metadata accessor for Input);
      v115 = sub_5B798();
      v117 = v116;
      v173(v110, v45);
      v118 = sub_2DC10(v115, v117, &v186);
      v77 = v184;

      *(v113 + 4) = v118;
      _os_log_impl(&dword_0, v111, v112, "VerbEntityDisambiguationFlow: could not resolve action from %s", v113, 0xCu);
      sub_5D00(v114);
    }

    else
    {

      v173(v110, v45);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();

    v133 = v77[11];
    sub_5CBC(v77 + 7, v77[10]);
    sub_5A1E8();
    LOBYTE(v186) = 0;
    sub_5A1D8();
    sub_5A158();
  }

  else
  {
    LODWORD(v178) = v97;
    v99 = v45;
    v100 = v180;
    (*(v79 + 32))(v180, v80, v78);
    v101 = v166;
    v175 = *(v79 + 16);
    v176 = v79 + 16;
    (v175)(v166, v100, v78);
    v102 = sub_5B218();
    v103 = sub_5B4C8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v186 = v105;
      *v104 = 136315138;
      sub_5991C(&qword_71C10, &type metadata accessor for PluginAction);
      v106 = sub_5B798();
      v108 = v107;
      v177 = *(v181 + 8);
      v177(v101, v78);
      v109 = sub_2DC10(v106, v108, &v186);
      v77 = v184;

      *(v104 + 4) = v109;
      _os_log_impl(&dword_0, v102, v103, "VerbEntityDisambiguationFlow: resolved action to %s", v104, 0xCu);
      sub_5D00(v105);
    }

    else
    {

      v177 = *(v79 + 8);
      v177(v101, v78);
    }

    v119 = v167;
    v120 = v180;
    sub_5A308();
    v122 = v168;
    v121 = v169;
    if ((*(v168 + 48))(v119, 1, v169) == 1)
    {
      v123 = v99;
      sub_5D4C(v119, &qword_72530, &qword_5C660);
      v124 = v155;
      v171(v155, v185, v123);
      v125 = sub_5B218();
      v126 = sub_5B4C8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v186 = v128;
        *v127 = 136315138;
        sub_5991C(&qword_71C90, &type metadata accessor for Input);
        v129 = sub_5B798();
        v131 = v130;
        v173(v124, v123);
        v132 = sub_2DC10(v129, v131, &v186);
        v77 = v184;

        *(v127 + 4) = v132;
        _os_log_impl(&dword_0, v125, v126, "VerbEntityDisambiguationFlow: could not extract loggingId from %s", v127, 0xCu);
        sub_5D00(v128);
        v120 = v180;
      }

      else
      {

        v173(v124, v123);
      }
    }

    else
    {
      v134 = v156;
      (*(v122 + 32))(v156, v119, v121);
      sub_5A6B8();
      sub_5A6A8();
      sub_5A698();

      v135 = v77[11];
      sub_5CBC(v77 + 7, v77[10]);
      sub_5A1E8();
      LOBYTE(v186) = 0;
      sub_5A1D8();
      sub_5A158();
      v120 = v180;

      (*(v122 + 8))(v134, v121);
    }

    v136 = v182;
    v98 = v178;
    v137 = v170;
    (v175)(v170, v120, v182);
    v138 = sub_5B94(&qword_71CA0, &unk_5C2B0);
    (*(*(v138 - 8) + 56))(v137, 0, 2, v138);
    v139 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
    swift_beginAccess();
    sub_59964(v137, v77 + v139);
    swift_endAccess();
    v140 = sub_5B218();
    v141 = sub_5B4B8();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_0, v140, v141, "VerbEntityDisambiguationFlow: input accepted", v142, 2u);
    }

    v177(v120, v136);
    v71 = v183;
  }

  sub_5D4C(v71, &unk_72560, &qword_5E3E0);
  return v98 != 1;
}

uint64_t sub_53050(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_5A318();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VerbEntityDisambiguationFlow.State(0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_53148, 0, 0);
}

uint64_t sub_53148()
{
  v47 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: execute called", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
  swift_beginAccess();
  sub_598B8(v6 + v7, v5);
  v8 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v9 = (*(*(v8 - 8) + 48))(v5, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = sub_5B218();
      v11 = sub_5B4B8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "VerbEntityDisambiguationFlow: rendering disambiguation", v12, 2u);
      }

      v13 = swift_task_alloc();
      v0[13] = v13;
      *v13 = v0;
      v13[1] = sub_536F4;
      v14 = v0[6];
      v15 = v0[7];

      return sub_53864(v14);
    }

    v33 = sub_5B218();
    v34 = sub_5B4C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Invalid respose", v35, 2u);
    }

    v36 = v0[6];

    sub_5A6C8();
    sub_5A148();
    type metadata accessor for CamErrorFlow();
    swift_allocObject();
    v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v45, v46);
    sub_5991C(&qword_72550, type metadata accessor for CamErrorFlow);
    sub_5A088();

    sub_5A428();
  }

  else
  {
    v17 = v0[11];
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    (*(v19 + 32))(v17, v0[12], v20);
    (*(v19 + 16))(v18, v17, v20);
    v21 = sub_5B218();
    v22 = sub_5B4B8();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46[0] = v44;
      *v27 = 136315138;
      sub_5991C(&qword_71C10, &type metadata accessor for PluginAction);
      v28 = sub_5B798();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_2DC10(v28, v30, v46);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v21, v22, "VerbEntityDisambiguationFlow: redirecting to %s", v27, 0xCu);
      sub_5D00(v44);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v37 = v0[11];
    v38 = v0[8];
    v39 = v0[6];
    sub_5A448();
    v31(v37, v38);
  }

  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[10];

  v43 = v0[1];

  return v43();
}

uint64_t sub_536F4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_537F0, 0, 0);
}

uint64_t sub_537F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_53864(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = sub_5A718();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = *(*(sub_5B94(&qword_72530, &qword_5C660) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v11 = sub_59E38();
  v2[27] = v11;
  v12 = *(v11 - 8);
  v2[28] = v12;
  v13 = *(v12 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_53A64, 0, 0);
}

uint64_t sub_53A64()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[31] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: executeRenderDisambiguation called", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_53BBC;
  v6 = v0[17];

  return sub_564E8((v0 + 7));
}

uint64_t sub_53BBC()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_5437C;
  }

  else
  {
    v3 = sub_53CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_53CD0()
{
  v2 = (v0 + 208);
  v1 = *(v0 + 208);
  v3 = v0 + 16;
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 136);
  sub_1BBFC((v0 + 56), v0 + 16);
  sub_5A308();
  v7 = *(v5 + 48);
  if (v7(v1, 1, v4) != 1)
  {
    v2 = (v0 + 200);
    v8 = *(v0 + 200);
    v9 = *(v0 + 216);
    v10 = *(v0 + 136);
    v11 = *(*(v0 + 224) + 32);
    (v11)(*(v0 + 240), *(v0 + 208), v9);
    sub_5A308();
    if (v7(v8, 1, v9) != 1)
    {
      v16 = *(v0 + 224);
      v35 = *(v0 + 232);
      v17 = *(v0 + 216);
      v18 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      v36 = v19;
      v37 = *(v0 + 192);
      v21 = *(v0 + 240);
      v11();
      sub_5A6B8();
      sub_5A6A8();
      sub_5B94(&unk_72540, &unk_5C670);
      v22 = *(v16 + 72);
      v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_5C2D0;
      v25 = v24 + v23;
      v26 = *(v16 + 16);
      v26(v25, v21, v17);
      v26(v25 + v22, v35, v17);
      (*(v20 + 104))(v37, enum case for CAMDisambiguationDialogType.verbEntity(_:), v36);
      sub_5A688();

      (*(v20 + 8))(v37, v36);
      v27 = *(v16 + 8);
      v27(v35, v17);
      v28 = v21;
      v3 = v0 + 16;
      v27(v28, v17);
      goto LABEL_8;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  }

  v12 = *(v0 + 248);
  sub_5D4C(*v2, &qword_72530, &qword_5C660);
  v13 = sub_5B218();
  v14 = sub_5B4C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "VerbEntityDisambiguationFlow: could not extract loggingIds for actions. SELF DisambiguationDialogGenerated message was not emitted as a result.", v15, 2u);
  }

LABEL_8:
  v29 = *(v0 + 136);
  v30 = v29[15];
  v31 = v29[16];
  sub_5CBC(v29 + 12, v30);
  v32 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v33 = swift_task_alloc();
  *(v0 + 272) = v33;
  *v33 = v0;
  v33[1] = sub_5405C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v30, v31);
}

uint64_t sub_5405C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_59D94;
  }

  else
  {
    v3 = sub_54174;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_54174()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v19 = v0[16];
  v6 = v5[11];
  sub_5CBC(v5 + 7, v5[10]);
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v4);
  v7 = enum case for SiriKitReliabilityCodes.disambiguationActionRouting(_:);
  v8 = sub_5A168();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v3, v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A408();
  sub_5D00(v0 + 2);
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v15 = v0[21];
  v16 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_5437C()
{
  v27 = v0;
  v1 = v0[33];
  v2 = v0[31];
  swift_errorRetain();
  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_5B7E8();
    v13 = sub_2DC10(v11, v12, &v26);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "VerbEntityDisambiguationFlow: cannot create output for disambiguation, will redirect to fallback action. Error: %s", v6, 0xCu);
    sub_5D00(v7);
  }

  v14 = v0[33];
  v15 = v0[16];
  v16 = v0[17];
  sub_5A448();

  v18 = v0[29];
  v17 = v0[30];
  v20 = v0[25];
  v19 = v0[26];
  v21 = v0[24];
  v22 = v0[21];
  v23 = v0[18];

  v24 = v0[1];

  return v24();
}

uint64_t sub_54548@<X0>(char *a1@<X0>, void (**a2)(char *, char *)@<X1>, void (**a3)(char *, char *)@<X2>, uint64_t a4@<X8>)
{
  v175 = a2;
  v176 = a3;
  v148 = a4;
  v163 = sub_5A938();
  v174 = *(v163 - 8);
  v5 = *(v174 + 64);
  __chkstk_darwin(v163);
  v162 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5B94(&unk_73C70, &unk_5C300);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v169 = v142 - v9;
  v10 = sub_5B94(&qword_72030, &unk_5E370);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v165 = v142 - v12;
  v168 = sub_5AA58();
  v173 = *(v168 - 8);
  v13 = *(v173 + 64);
  v14 = __chkstk_darwin(v168);
  v157 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v161 = v142 - v17;
  __chkstk_darwin(v16);
  v178 = v142 - v18;
  v19 = sub_5A318();
  v150 = *(v19 - 8);
  v20 = *(v150 + 64);
  __chkstk_darwin(v19);
  v22 = v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_5A8E8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v26 = __chkstk_darwin(v23);
  v172 = v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v142 - v28;
  if (qword_71A58 != -1)
  {
LABEL_111:
    swift_once();
  }

  v30 = sub_5B228();
  v31 = sub_5B44(v30, qword_763B8);
  v32 = *(v24 + 2);
  v177 = a1;
  v32(v29, a1, v23);
  v170 = v31;
  v33 = sub_5B218();
  LODWORD(v171) = sub_5B4C8();
  v34 = os_log_type_enabled(v33, v171);
  v166 = v19;
  v167 = v22;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v179[0] = v36;
    *v35 = 136315138;
    v32(v172, v29, v23);
    v37 = sub_5B358();
    v39 = v38;
    (*(v24 + 1))(v29, v23);
    v40 = sub_2DC10(v37, v39, v179);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_0, v33, v171, "VerbEntityDisambiguationFlow: resolveResponseToVerbEntityParaphraseDisambiguation with usoParse %s", v35, 0xCu);
    sub_5D00(v36);
    v41 = v167;

    v42 = v166;
  }

  else
  {
    v42 = v19;

    (*(v24 + 1))(v29, v23);
    v41 = v22;
  }

  v43 = sub_4FA30();
  v29 = v168;
  v44 = v169;
  if (!v43)
  {
    v122 = sub_5B218();
    v123 = sub_5B4B8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "VerbEntityDisambiguationFlow: User response cannot be interpreted as a UsoTask", v124, 2u);
    }

    return (*(v150 + 56))(v148, 1, 1, v42);
  }

  v147 = v43;
  v45 = sub_5AE18();
  v47 = v46;
  sub_5B94(&qword_724F0, &qword_5C310);
  v48 = v150;
  v49 = *(v150 + 72);
  v50 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_5C2D0;
  v146 = v51;
  v52 = v51 + v50;
  v54 = *(v48 + 16);
  v53 = v48 + 16;
  v54(v52, v175, v42);
  v152 = v49;
  v159 = v54;
  v54(v52 + v49, v176, v42);
  v176 = 0;
  v155 = (v173 + 32);
  v156 = (v174 + 8);
  v154 = (v173 + 16);
  v175 = (v173 + 8);
  v151 = v45;
  v56 = v45 == 0x627265566F6ELL;
  v19 = v42;
  v164 = v47;
  v56 = v56 && v47 == 0xE600000000000000;
  v57 = v56;
  v153 = v57;
  v160 = v53;
  v158 = (v53 - 8);
  v58 = 2;
  *&v55 = 136315138;
  v149 = v55;
  *&v55 = 136315394;
  v145 = v55;
  v144 = v52;
  v59 = v52;
  while (1)
  {
    v159(v41, v59, v19);
    sub_5A2D8();
    v60 = sub_5A518();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v44, 1, v60) == 1)
    {

      sub_5D4C(v44, &unk_73C70, &unk_5C300);
      goto LABEL_104;
    }

    v174 = v58;
    v62 = v165;
    sub_5A4F8();
    (*(v61 + 8))(v44, v60);
    v63 = sub_5A4E8();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v62, 1, v63) == 1)
    {

      sub_5D4C(v62, &qword_72030, &unk_5E370);
      goto LABEL_104;
    }

    v173 = v59;
    v24 = v41;
    v65 = v164;
    a1 = v161;
    sub_5A4B8();
    (*(v64 + 8))(v62, v63);
    (*v155)(v178, a1, v29);
    v66 = v162;
    sub_5AA28();
    v67 = v176;
    v68 = sub_5AB68();
    if (v67)
    {

      (*v156)(v66, v163);
      (*v175)(v178, v29);
      goto LABEL_103;
    }

    v69 = v68;
    v176 = 0;
    (*v156)(v66, v163);
    v70 = sub_5AC78();
    v23 = v70;
    v22 = v65;
    v71 = v70 >> 62 ? sub_5B678() : *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
    v72 = v154;
    if (!v71)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v177 = sub_5B5B8();
    }

    else
    {
      if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_111;
      }

      v177 = *(v23 + 32);
    }

    v172 = v69;

    v73 = *v72;
    v74 = v157;
    (*v72)(v157, v178, v29);
    v75 = sub_5B218();
    v76 = sub_5B4B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v180[0] = v78;
      *v77 = v149;
      sub_5AB48();
      v179[3] = v29;
      v179[4] = sub_5991C(&qword_724D0, &type metadata accessor for Siri_Nlu_External_UserStatedTask);
      v79 = sub_5F2C(v179);
      v73(v79, v74, v29);
      v80 = sub_5AB38();
      v82 = v81;
      v171 = *v175;
      v171(v74, v29);
      sub_5D00(v179);
      v83 = sub_2DC10(v80, v82, v180);

      *(v77 + 4) = v83;
      _os_log_impl(&dword_0, v75, v76, "VerbEntityDisambiguationFlow: comparing to offered userStatedTask %s", v77, 0xCu);
      sub_5D00(v78);
      v84 = v65;

      v41 = v167;
      v44 = v169;
      v85 = v173;
    }

    else
    {

      v171 = *v175;
      v171(v74, v29);
      v41 = v167;
      v44 = v169;
      v85 = v173;
      v84 = v22;
    }

    v86 = sub_5AE18();
    v88 = v87;
    if ((v153 & 1) == 0)
    {
      v89 = v86;
      if ((sub_5B7A8() & 1) == 0 && (v151 != v89 || v84 != v88) && (sub_5B7A8() & 1) == 0)
      {

        v118 = sub_5B218();
        v119 = sub_5B4B8();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v179[0] = swift_slowAlloc();
          *v120 = v145;
          *(v120 + 4) = sub_2DC10(v151, v84, v179);
          *(v120 + 12) = 2080;
          v121 = sub_2DC10(v89, v88, v179);

          *(v120 + 14) = v121;
          _os_log_impl(&dword_0, v118, v119, "VerbEntityDisambiguationFlow: response verb %s does not match offered verb %s", v120, 0x16u);
          swift_arrayDestroy();
          v44 = v169;
        }

        else
        {
        }

        v29 = v168;
        v171(v178, v168);
        v19 = v166;
        v41 = v167;
        (*v158)(v167, v166);
        v92 = v174;
        goto LABEL_81;
      }
    }

    v90 = sub_5AE28();
    if (*(v90 + 16))
    {
      v91 = sub_37278(0x636E657265666572, 0xE900000000000065);
      v19 = v166;
      v29 = v168;
      v92 = v174;
      if ((v93 & 1) == 0)
      {
        goto LABEL_79;
      }

      v94 = *(*(v90 + 56) + 8 * v91);

      if (v94 >> 62)
      {
        if (!sub_5B678())
        {
LABEL_79:

          goto LABEL_80;
        }
      }

      else if (!*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_79;
      }

      if ((v94 & 0xC000000000000001) != 0)
      {
        sub_5B5B8();
      }

      else
      {
        if (!*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:

          v133 = sub_5B218();
          v134 = sub_5B4B8();

          v135 = v84;

          if (os_log_type_enabled(v133, v134))
          {
            v136 = swift_slowAlloc();
            v179[0] = swift_slowAlloc();
            *v136 = v145;
            v137 = sub_2DC10(v143, v135, v179);

            *(v136 + 4) = v137;
            *(v136 + 12) = 2080;
            v138 = sub_2DC10(v29, v142[0], v179);

            *(v136 + 14) = v138;
            _os_log_impl(&dword_0, v133, v134, "VerbEntityDisambiguationFlow: Offered entity name %s mathces response entity name %s", v136, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v171(v178, v168);
          v139 = v150;
          v140 = v148;
          v141 = v166;
          (*(v150 + 32))(v148, v167, v166);
          return (*(v139 + 56))(v140, 0, 1, v141);
        }

        v95 = *(v94 + 32);
      }

      v84 = sub_5AE78();

      if (!v84)
      {
        goto LABEL_80;
      }

      v96 = sub_5AE88();
      if (*(v96 + 16))
      {
        v173 = v84;
        v97 = sub_37278(1701667182, 0xE400000000000000);
        if (v98)
        {
          v99 = *(*(v96 + 56) + 8 * v97);

          if (!(v99 >> 62))
          {
            if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_42;
            }

LABEL_90:

            goto LABEL_73;
          }

          if (!sub_5B678())
          {
            goto LABEL_90;
          }

LABEL_42:
          if ((v99 & 0xC000000000000001) != 0)
          {
            sub_5B5B8();
          }

          else
          {
            if (!*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_113;
            }

            v100 = *(v99 + 32);
          }

          v101 = sub_5AE58();
          v84 = v102;

          if (!v84)
          {
            goto LABEL_73;
          }

          v143 = v101;
          v103 = sub_5AE28();
          if (*(v103 + 16))
          {
            v104 = sub_37278(0x636E657265666572, 0xE900000000000065);
            if (v105)
            {
              v106 = *(*(v103 + 56) + 8 * v104);

              if (v106 >> 62)
              {
                result = sub_5B678();
                if (result)
                {
                  goto LABEL_50;
                }
              }

              else if (*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_50:
                if ((v106 & 0xC000000000000001) != 0)
                {
                  sub_5B5B8();
                }

                else
                {
                  if (!*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
LABEL_119:
                    __break(1u);
                    return result;
                  }

                  v108 = *(v106 + 32);
                }

                v109 = sub_5AE78();

                if (!v109)
                {
                  goto LABEL_90;
                }

                v110 = sub_5AE88();
                v111 = *(v110 + 16);
                v142[1] = v109;
                if (v111)
                {
                  v112 = sub_37278(1701667182, 0xE400000000000000);
                  if (v113)
                  {
                    v114 = *(*(v110 + 56) + 8 * v112);

                    if (v114 >> 62)
                    {
                      result = sub_5B678();
                      if (result)
                      {
LABEL_58:
                        if ((v114 & 0xC000000000000001) != 0)
                        {
                          sub_5B5B8();
                        }

                        else
                        {
                          if (!*(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
                          {
                            goto LABEL_119;
                          }

                          v115 = *(v114 + 32);
                        }

                        v29 = sub_5AE58();
                        v117 = v116;

                        if (v117)
                        {
                          v179[0] = v143;
                          v179[1] = v84;
                          v180[0] = v29;
                          v180[1] = v117;
                          v142[0] = v117;
                          sub_1AB80();
                          if (!sub_5B518())
                          {
                            goto LABEL_114;
                          }

                          v29 = v168;
                        }

                        else
                        {

                          v29 = v168;
                        }

                        goto LABEL_80;
                      }
                    }

                    else if (*(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_58;
                    }
                  }
                }

LABEL_73:

                goto LABEL_80;
              }

              goto LABEL_90;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {

      v19 = v166;
      v29 = v168;
      v92 = v174;
    }

LABEL_80:

    v171(v178, v29);
    (*v158)(v41, v19);
LABEL_81:
    v59 = v85 + v152;
    v58 = v92 - 1;
    if (!v58)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v129 = sub_5B218();
      v130 = sub_5B4B8();
      if (os_log_type_enabled(v129, v130))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_0, v129, v130, "VerbEntityDisambiguationFlow: resolveResponseToVerbEntityParaphraseDisambiguation no match found", v132, 2u);
      }

      return (*(v150 + 56))(v148, 1, 1, v19);
    }
  }

  (*v175)(v178, v29);

LABEL_103:
  v41 = v24;
LABEL_104:
  v125 = sub_5B218();
  v126 = sub_5B4B8();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_0, v125, v126, "VerbEntityDisambiguationFlow: pluginAction has no userStatedTask paraphrase that can be interpreted as a UsoTask", v127, 2u);
  }

  v128 = v150;
  (*(v150 + 8))(v41, v19);
  return (*(v128 + 56))(v148, 1, 1, v19);
}

uint64_t sub_55C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = sub_5AAC8();
  v62 = *(v58 - 8);
  v3 = *(v62 + 64);
  v4 = __chkstk_darwin(v58);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v56 - v6;
  v57 = sub_5AA98();
  v60 = *(v57 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v57);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AA18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v56 - v15;
  v16 = sub_5AA58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v80 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v79 = sub_5A4E8();
  v23 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v28 = *(v24 + 16);
    v27 = v24 + 16;
    v29 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v70 = *(v27 + 56);
    v71 = v28;
    v69 = (v27 - 8);
    v68 = (v17 + 16);
    v67 = (v10 + 16);
    v66 = v10 + 8;
    v65 = (v17 + 8);
    v75 = v10;
    v64 = v10 + 32;
    v30 = _swiftEmptyArrayStorage;
    v76 = v14;
    v77 = v9;
    v31 = v81;
    v73 = v22;
    v74 = v16;
    v72 = v27;
    do
    {
      v81 = v26;
      v32 = v78;
      v33 = v79;
      v71(v78, v29, v79);
      sub_5A4B8();
      (*v69)(v32, v33);
      sub_5AA08();
      (*v68)(v80, v22, v16);
      sub_5A9D8();
      (*v67)(v14, v31, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_5892C(0, v30[2] + 1, 1, v30, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      }

      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        v30 = sub_5892C(v34 > 1, v35 + 1, 1, v30, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      }

      v36 = v75;
      v9 = v77;
      (*(v75 + 8))(v31, v77);
      v22 = v73;
      v16 = v74;
      (*v65)(v73, v74);
      v30[2] = v35 + 1;
      v37 = v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
      v14 = v76;
      (*(v36 + 32))(v37, v76, v9);
      v29 += v70;
      v26 = v81 - 1;
    }

    while (v81 != &dword_0 + 1);
  }

  v38 = v63;
  sub_5AA88();
  v39 = v61;
  sub_5AAB8();
  sub_5AAA8();
  v40 = v58;
  (*(v62 + 16))(v56, v39, v58);
  sub_5AA68();
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v41 = sub_5B228();
  sub_5B44(v41, qword_763B8);
  v42 = sub_5B218();
  v43 = sub_5B4B8();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v57;
  v46 = v60;
  if (v44)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v83 = v48;
    *v47 = 136315138;
    sub_5AB48();
    swift_beginAccess();
    v82[3] = v45;
    v82[4] = sub_5991C(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v49 = sub_5F2C(v82);
    (*(v46 + 16))(v49, v63, v45);
    v50 = sub_5AB38();
    v52 = v51;
    sub_5D00(v82);
    v53 = sub_2DC10(v50, v52, &v83);
    v46 = v60;

    *(v47 + 4) = v53;
    _os_log_impl(&dword_0, v42, v43, "VerbEntityDisambiguationFlow: NLUSystemDialogAct: %s", v47, 0xCu);
    sub_5D00(v48);

    v38 = v63;
  }

  (*(v62 + 8))(v61, v40);
  v54 = v59;
  swift_beginAccess();
  (*(v46 + 16))(v54, v38, v45);
  return (*(v46 + 8))(v38, v45);
}

uint64_t sub_564E8(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v4 = sub_5A488();
  v2[35] = v4;
  v5 = *(v4 - 8);
  v2[36] = v5;
  v6 = *(v5 + 64) + 15;
  v2[37] = swift_task_alloc();
  v7 = sub_5AA98();
  v2[38] = v7;
  v8 = *(v7 - 8);
  v2[39] = v8;
  v9 = *(v8 + 64) + 15;
  v2[40] = swift_task_alloc();
  v10 = sub_5A648();
  v2[41] = v10;
  v11 = *(v10 - 8);
  v2[42] = v11;
  v12 = *(v11 + 64) + 15;
  v2[43] = swift_task_alloc();
  v13 = sub_5A588();
  v2[44] = v13;
  v14 = *(v13 - 8);
  v2[45] = v14;
  v15 = *(v14 + 64) + 15;
  v2[46] = swift_task_alloc();
  v16 = *(*(sub_5B94(&qword_724E8, &qword_5D090) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v17 = sub_5A3B8();
  v2[48] = v17;
  v18 = *(v17 - 8);
  v2[49] = v18;
  v19 = *(v18 + 64) + 15;
  v2[50] = swift_task_alloc();
  v20 = sub_5B188();
  v2[51] = v20;
  v21 = *(v20 - 8);
  v2[52] = v21;
  v22 = *(v21 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v23 = sub_5A5B8();
  v2[55] = v23;
  v24 = *(v23 - 8);
  v2[56] = v24;
  v25 = *(v24 + 64) + 15;
  v2[57] = swift_task_alloc();
  v26 = *(*(sub_5B94(&unk_73C70, &unk_5C300) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v27 = *(*(sub_5B94(&qword_72030, &unk_5E370) - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v28 = sub_5A4E8();
  v2[62] = v28;
  v29 = *(v28 - 8);
  v2[63] = v29;
  v30 = *(v29 + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return _swift_task_switch(sub_5693C, 0, 0);
}

uint64_t sub_5693C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: generating output", v4, 2u);
  }

  v5 = *(v0 + 472);
  v6 = *(v0 + 264);

  sub_5A2D8();
  v7 = sub_5A518();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = *(v0 + 496);
  v12 = *(v0 + 504);
  v13 = (v0 + 488);
  v14 = *(v0 + 488);
  v15 = *(v0 + 472);
  if (v10 == 1)
  {
    sub_5D4C(*(v0 + 472), &unk_73C70, &unk_5C300);
    (*(v12 + 56))(v14, 1, 1, v11);
LABEL_12:
    sub_5D4C(*v13, &qword_72030, &unk_5E370);
    sub_58550();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);
    v32 = *(v0 + 480);
    v31 = *(v0 + 488);
    v34 = *(v0 + 464);
    v33 = *(v0 + 472);
    v35 = *(v0 + 456);
    v36 = *(v0 + 424);
    v37 = *(v0 + 432);
    v38 = *(v0 + 400);
    v79 = *(v0 + 376);
    v81 = *(v0 + 368);
    v83 = *(v0 + 344);
    v85 = *(v0 + 320);
    v87 = *(v0 + 296);
    v90 = *(v0 + 272);

    v39 = *(v0 + 8);

    return v39();
  }

  v16 = *(v0 + 488);
  sub_5A4F8();
  v92 = *(v8 + 8);
  v92(v15, v7);
  v17 = *(v12 + 48);
  if (v17(v14, 1, v11) == 1)
  {
    goto LABEL_12;
  }

  v89 = v17;
  v18 = *(v0 + 464);
  v19 = *(v0 + 264);
  v20 = *(*(v0 + 504) + 32);
  v20(*(v0 + 520), *(v0 + 488), *(v0 + 496));
  sub_5A2D8();
  if (v9(v18, 1, v7) == 1)
  {
    v21 = *(v0 + 496);
    v22 = *(v0 + 504);
    v13 = (v0 + 480);
    v23 = *(v0 + 480);
    v24 = *(v0 + 464);
    (*(v22 + 8))(*(v0 + 520), v21);
    sub_5D4C(v24, &unk_73C70, &unk_5C300);
    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_12;
  }

  v25 = v20;
  v26 = *(v0 + 496);
  v27 = *(v0 + 480);
  v28 = *(v0 + 464);
  sub_5A4F8();
  v92(v28, v7);
  if (v89(v27, 1, v26) == 1)
  {
    v13 = (v0 + 480);
    (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
    goto LABEL_12;
  }

  v42 = *(v0 + 424);
  v41 = *(v0 + 432);
  v25(*(v0 + 512), *(v0 + 480), *(v0 + 496));
  sub_5A4D8();
  sub_5A4D8();
  v43 = sub_5B1C8();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_5B1B8();
  sub_5B198();

  sub_5B1A8();

  sub_5B178();
  v46 = *(v43 + 48);
  v47 = *(v43 + 52);
  swift_allocObject();
  sub_5B1B8();
  sub_5B198();

  sub_5B1A8();

  sub_5B178();
  sub_5B1F8();
  v48 = *(v0 + 48);
  sub_5CBC((v0 + 16), *(v0 + 40));
  sub_5B1E8();
  v49 = *(v0 + 504);
  v88 = *(v0 + 520);
  v91 = *(v0 + 512);
  v50 = *(v0 + 448);
  v76 = *(v0 + 432);
  v51 = *(v0 + 416);
  v75 = *(v0 + 424);
  v52 = *(v0 + 400);
  v73 = *(v0 + 456);
  v74 = *(v0 + 408);
  v53 = *(v0 + 392);
  v54 = *(v0 + 376);
  v84 = *(v0 + 368);
  v86 = *(v0 + 496);
  v77 = *(v0 + 336);
  v78 = *(v0 + 344);
  v80 = *(v0 + 328);
  v82 = *(v0 + 440);
  v93 = *(v0 + 264);
  v72 = *(v0 + 384);
  v55 = *(v0 + 88);
  sub_5CBC((v0 + 56), *(v0 + 80));
  sub_5B208();
  v56 = *(v0 + 128);
  sub_5CBC((v0 + 96), *(v0 + 120));
  sub_5B1D8();
  sub_5A398();
  sub_5D00((v0 + 96));
  (*(v53 + 56))(v54, 1, 1, v72);
  sub_5A598();
  v57 = *(v51 + 8);
  v57(v75, v74);
  v57(v76, v74);
  sub_5D00((v0 + 56));
  sub_5D00((v0 + 16));
  sub_5B94(&qword_72F48, &qword_5D140);
  v58 = *(v50 + 72);
  v59 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_5C390;
  (*(v50 + 16))(v60 + v59, v73, v82);
  (*(v77 + 104))(v78, enum case for BehaviorAfterSpeaking.listen(_:), v80);
  sub_5A548();
  sub_5B94(&unk_73C90, &qword_5E380);
  v61 = *(v49 + 72);
  v62 = *(v49 + 80);
  *(v0 + 576) = v62;
  v63 = (v62 + 32) & ~v62;
  v64 = swift_allocObject();
  *(v0 + 528) = v64;
  *(v64 + 16) = xmmword_5C2D0;
  v65 = v64 + v63;
  v66 = *(v49 + 16);
  v66(v65, v88, v86);
  v66(v65 + v61, v91, v86);
  sub_5B638();
  sub_3856C(0);
  sub_5B618();
  v67 = _swiftEmptyArrayStorage[2];
  sub_5B648();
  sub_5B658();
  sub_5B628();
  sub_3856C(1);
  sub_5B618();
  v68 = _swiftEmptyArrayStorage[2];
  sub_5B648();
  sub_5B658();
  sub_5B628();
  *(v0 + 536) = _swiftEmptyArrayStorage;
  v69 = swift_allocObject();
  *(v69 + 16) = v93;
  *(v69 + 24) = _swiftEmptyArrayStorage;
  v70 = swift_allocObject();
  *(v0 + 544) = v70;
  *(v70 + 16) = &unk_5E390;
  *(v70 + 24) = v69;

  v71 = swift_task_alloc();
  *(v0 + 552) = v71;
  *v71 = v0;
  v71[1] = sub_5736C;

  return sub_51048(&unk_5E3A0, v70, v64);
}

uint64_t sub_5736C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v7 = *(v3 + 544);
  if (v1)
  {
    v8 = *(v4 + 536);
    v9 = *(v4 + 528);
    v10 = *(v4 + 576);
    v11 = *(v4 + 496);

    swift_setDeallocating();
    v12 = *(v9 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v13 = sub_57B9C;
  }

  else
  {

    v13 = sub_57504;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_57504()
{
  v1 = *(v0 + 536);

  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    sub_5B94(&qword_72468, &qword_5C5F0);
    sub_5B668();

    v47 = *(v0 + 536);
  }

  else
  {
    sub_5B7B8();
    v2 = *(v0 + 536);
  }

  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 320);

  sub_1AB38(0, &unk_72470, SACardSnippet_ptr);
  v78 = sub_5B498();

  sub_55C70(v5, v6);
  if (v3)
  {
    v7 = *(v0 + 528);
    v8 = *(v0 + 576);
    v71 = *(v0 + 512);
    v74 = *(v0 + 520);
    v10 = *(v0 + 496);
    v9 = *(v0 + 504);
    v11 = *(v0 + 448);
    v68 = *(v0 + 456);
    v12 = *(v0 + 440);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v15 = *(v0 + 352);

    swift_setDeallocating();
    v16 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v13 + 8))(v14, v15);
    (*(v11 + 8))(v68, v12);
    v17 = *(v9 + 8);
    v17(v71, v10);
    v17(v74, v10);
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v23 = *(v0 + 464);
    v22 = *(v0 + 472);
    v24 = *(v0 + 456);
    v26 = *(v0 + 424);
    v25 = *(v0 + 432);
    v27 = *(v0 + 400);
    v64 = *(v0 + 376);
    v66 = *(v0 + 368);
    v69 = *(v0 + 344);
    v72 = *(v0 + 320);
    v75 = *(v0 + 296);
    v79 = *(v0 + 272);
  }

  else
  {
    v29 = *(v0 + 528);
    v59 = *(v0 + 512);
    v60 = *(v0 + 520);
    v58 = *(v0 + 504);
    v52 = *(v0 + 496);
    v61 = *(v0 + 488);
    v62 = *(v0 + 480);
    v63 = *(v0 + 472);
    v65 = *(v0 + 464);
    v55 = *(v0 + 448);
    v56 = *(v0 + 440);
    v57 = *(v0 + 456);
    v67 = *(v0 + 432);
    v70 = *(v0 + 424);
    v73 = *(v0 + 400);
    v76 = *(v0 + 376);
    v51 = *(v0 + 368);
    v53 = *(v0 + 360);
    v54 = *(v0 + 352);
    v77 = *(v0 + 344);
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v50 = v30;
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    v36 = (*(v0 + 576) + 32) & ~*(v0 + 576);
    v48 = *(v0 + 272);
    v49 = *(v0 + 256);
    swift_setDeallocating();
    v37 = *(v29 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_5A478();
    sub_5B94(&qword_72518, &unk_5C650);
    v38 = *(v31 + 72);
    v39 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_5C390;
    (*(v31 + 16))(v40 + v39, v30, v32);
    sub_5A458();
    sub_5A868();
    sub_5A868();
    v41 = *(v0 + 208);
    sub_5CBC((v0 + 176), *(v0 + 200));
    sub_5A218();
    sub_5B94(&qword_72460, &unk_5C5E0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_5C4A0;
    *(v42 + 32) = v78;
    (*(v35 + 16))(v48, v33, v34);
    (*(v35 + 56))(v48, 0, 1, v34);
    v43 = sub_5A908();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    *(v0 + 216) = 0u;
    v49[3] = v43;
    v49[4] = &protocol witness table for AceOutput;
    sub_5F2C(v49);
    v44 = v78;
    sub_5A3E8();

    sub_5D4C(v0 + 216, &qword_721D8, &qword_5C480);
    sub_5D4C(v48, &unk_72440, &unk_5C460);
    sub_5D00((v0 + 136));
    (*(v35 + 8))(v33, v34);
    (*(v31 + 8))(v50, v32);
    (*(v53 + 8))(v51, v54);
    (*(v55 + 8))(v57, v56);
    v45 = *(v58 + 8);
    v45(v59, v52);
    v45(v60, v52);
    sub_5D00((v0 + 176));
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_57B9C()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  (*(v0[45] + 8))(v0[46], v0[44]);
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v1, v4);
  v27 = v0[71];
  v9 = v0[65];
  v10 = v0[64];
  v12 = v0[60];
  v11 = v0[61];
  v14 = v0[58];
  v13 = v0[59];
  v15 = v0[57];
  v17 = v0[53];
  v16 = v0[54];
  v18 = v0[50];
  v21 = v0[47];
  v22 = v0[46];
  v23 = v0[43];
  v24 = v0[40];
  v25 = v0[37];
  v26 = v0[34];

  v19 = v0[1];

  return v19();
}

uint64_t sub_57D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_57D6C, 0, 0);
}

unint64_t sub_57D6C()
{
  v1 = v0[4];
  result = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 8 * result + 32);
LABEL_5:
  v4 = v3;
  v5 = v0[3];
  v6 = sub_59790();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_57E3C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *a2;
  v7 = *(sub_5B94(&qword_73CA8, &qword_5E3C0) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 24) = v9;
  *v9 = v3;
  v9[1] = sub_57F64;

  return v11(v6, a2 + v7);
}

uint64_t sub_57F64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_58074()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  v1 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction;
  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction, v2);
  v3(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_fallBackAction, v2);
  sub_599C8(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state, type metadata accessor for VerbEntityDisambiguationFlow.State);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_581C0()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for VerbEntityDisambiguationFlow.State(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_582D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_58360(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_58418()
{
  v2 = *v0;
  type metadata accessor for VerbEntityDisambiguationFlow(0);
  return sub_5A098();
}

uint64_t sub_58478(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_53050(a1);
}

uint64_t sub_58514(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VerbEntityDisambiguationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_58550()
{
  result = qword_73C80;
  if (!qword_73C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73C80);
  }

  return result;
}

char *sub_585F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72F28, &unk_5D160);
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

char *sub_58700(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_73D00, &qword_5E400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_58820(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_73D08, &qword_5E420);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_5892C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_5B94(a5, a6);
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

uint64_t sub_58B08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a1;
  v7 = *(a6 + 32);
  v8 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 88) = v10;
  *v10 = v6;
  v10[1] = sub_58C1C;

  return v12(v6 + 56, v6 + 16);
}

uint64_t sub_58C1C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_58D58;
  }

  else
  {
    v3 = sub_58D30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_58D30()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_58D70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 56) = v9;
  *v9 = v6;
  v9[1] = sub_58E74;

  return v11(v6 + 16, a6);
}

uint64_t sub_58E74()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_58FB4;
  }

  else
  {
    v3 = sub_58F88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_58F88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_58FCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 32) = v9;
  *v9 = v6;
  v9[1] = sub_590D0;

  return v11(v6 + 16, a6);
}

uint64_t sub_590D0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_59204;
  }

  else
  {
    v3 = sub_591E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5921C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5925C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5930C;

  return sub_57D48(a1, a2, v7, v6);
}

uint64_t sub_5930C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_59408()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59440(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BBF8;

  return sub_57E3C(a1, a2, v7);
}

uint64_t sub_59508(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73CA8, &qword_5E3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_59578()
{
  v1 = (sub_5B94(&qword_73CA8, &qword_5E3C0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v1[14];
  v8 = sub_5A4E8();
  (*(*(v8 - 8) + 8))(v7 + v3, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_59674(uint64_t a1)
{
  v4 = *(sub_5B94(&qword_73CA8, &qword_5E3C0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BBF8;

  return sub_58FCC(a1, v6, v7, v8, v9, v1 + v5);
}

id sub_59790()
{
  v0 = [objc_allocWithZone(SFRowCardSection) init];
  sub_5A4C8();
  v1 = sub_5A358();

  [v0 setLeadingText:v1];

  sub_5B94(&qword_72460, &unk_5C5E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_5C4A0;
  v3 = v0;
  *(v2 + 32) = sub_5A368();
  sub_1AB38(0, &qword_72490, SFAbstractCommand_ptr);
  isa = sub_5B3C8().super.isa;

  [v3 setCommands:isa];

  return v3;
}

uint64_t sub_598B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5991C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_59964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_599C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_59A28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_59A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BBF8;

  return sub_58B08(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_59B50()
{
  v1 = sub_5A318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_59C1C(uint64_t a1)
{
  v4 = *(sub_5A318() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_5934;

  return sub_58D70(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_59D40()
{
  result = qword_73D18;
  if (!qword_73D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73D18);
  }

  return result;
}