uint64_t sub_9EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v11 = sub_66D4(&qword_128A40, &qword_E2F98);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v56[3] = type metadata accessor for MSRepositoryDefault();
  v56[4] = &off_1188F0;
  v56[0] = a4;
  v16 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__selectedAddressToEdit;
  *&v62 = 0;
  sub_66D4(&qword_128A48, &qword_E2FA0);
  sub_D5530();
  (*(v12 + 32))(a6 + v16, v15, v11);
  v17 = (a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  *(a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_account) = a1;
  v18 = (a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
  v19 = v37;
  *v18 = a2;
  v18[1] = v19;
  sub_2A5C4(v56, a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository);
  v20 = a5;
  *(a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_maxAliasCountAllowed) = a5;

  sub_D54F0();
  v59 = v64;
  v60 = v65;
  if (*(&v62 + 1))
  {
    v21 = *(&v65 + 1);
    v61 = v66;
    v57 = v62;
    v58 = v63;

    sub_FC3C(&v57, &qword_128A50, &qword_E2FA8);
  }

  else
  {
    v61 = v66;
    v57 = v62;
    v58 = v63;
    sub_FC3C(&v57, &qword_128A50, &qword_E2FA8);
    v21 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *&v57 = v21;
  sub_66D4(&qword_128A58, qword_E2FB0);
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  if (*(&v57 + 1))
  {
    v45 = v61;
    v50 = v61;
    v43 = v59;
    v44 = v60;
    v41 = v57;
    v42 = v58;
    v48 = v59;
    v49 = v60;
    v46 = v57;
    v47 = v58;
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v62 = v57;
    v63 = v58;
    v55 = v61;
    v53 = v59;
    v54 = v60;
    v51 = v57;
    v52 = v58;
    sub_63AE8(&v46, v39);
    sub_FC3C(&v51, &qword_128A50, &qword_E2FA8);
    v22 = sub_B5458();
    v24 = v23;
    sub_FC3C(&v41, &qword_128A50, &qword_E2FA8);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v62 = v57;
    v63 = v58;
    sub_FC3C(&v62, &qword_128A50, &qword_E2FA8);
  }

  v22 = 0;
  v24 = 0xE000000000000000;
LABEL_9:
  swift_beginAccess();
  *&v51 = v22;
  *(&v51 + 1) = v24;
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  if (*(&v51 + 1))
  {
    v40 = v55;
    v45 = v55;
    v39[2] = v53;
    v39[3] = v54;
    v39[0] = v51;
    v39[1] = v52;
    v43 = v53;
    v44 = v54;
    v41 = v51;
    v42 = v52;
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v57 = v51;
    v58 = v52;
    v50 = v55;
    v48 = v53;
    v49 = v54;
    v46 = v51;
    v47 = v52;
    sub_63AE8(&v41, &v38);
    sub_FC3C(&v46, &qword_128A50, &qword_E2FA8);
    sub_B5690();
    v26 = v25;
    v28 = v27;
    sub_FC3C(v39, &qword_128A50, &qword_E2FA8);
    if (v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v57 = v51;
    v58 = v52;
    sub_FC3C(&v57, &qword_128A50, &qword_E2FA8);
  }

  v26 = 0;
  v28 = 0xE000000000000000;
LABEL_14:
  swift_beginAccess();
  *&v46 = v26;
  *(&v46 + 1) = v28;
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  if (*(&v51 + 1))
  {
    v48 = v53;
    v49 = v54;
    v29 = v55;
    v50 = v55;
    v46 = v51;
    v47 = v52;

    sub_FC3C(&v46, &qword_128A50, &qword_E2FA8);
    if (v29)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    sub_FC3C(&v46, &qword_128A50, &qword_E2FA8);
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_19:
  swift_beginAccess();
  *&v46 = v29;
  sub_66D4(&qword_128A60, &qword_E4D20);
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  v48 = v53;
  v49 = v54;
  if (*(&v51 + 1))
  {
    v30 = *(&v54 + 1);
    v50 = v55;
    v46 = v51;
    v47 = v52;

    sub_FC3C(&v46, &qword_128A50, &qword_E2FA8);
  }

  else
  {
    v50 = v55;
    v46 = v51;
    v47 = v52;
    sub_FC3C(&v46, &qword_128A50, &qword_E2FA8);
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = v30[2];

  *(a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_isAddAliasDisabled) = v31 >= v20;
  v32 = sub_CE1BC();
  v33 = (a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer);
  v34 = *(a6 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer + 8);
  *v33 = v32;
  v33[1] = v35;

  sub_CE7A4();
  sub_67D4(v56);
  return a6;
}

__n128 sub_9F67C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_9F698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9F6E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_9F76C()
{
  result = qword_128AA0;
  if (!qword_128AA0)
  {
    sub_6110(&qword_128A70, &qword_E3018);
    sub_6110(&qword_128A68, &qword_E3010);
    sub_109A8(&qword_128A98, &qword_128A68, &qword_E3010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128AA0);
  }

  return result;
}

uint64_t sub_9F868(uint64_t a1)
{
  v2 = sub_66D4(&qword_128A70, &qword_E3018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9F924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9F970()
{
  sub_67D4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_9F9D8()
{
  result = qword_128B10;
  if (!qword_128B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128B10);
  }

  return result;
}

unint64_t sub_9FA2C()
{
  result = qword_128B18;
  if (!qword_128B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128B18);
  }

  return result;
}

uint64_t sub_9FAA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_E0C4();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  sub_67D4((v0 + 72));
  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_9FB38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_E0C4();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  sub_67D4((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_9FB94()
{
  result = qword_128B38;
  if (!qword_128B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128B38);
  }

  return result;
}

uint64_t sub_9FBE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_E0C4();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  sub_67D4((v0 + 72));
  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 160);

  v9 = *(v0 + 176);

  return _swift_deallocObject(v0, 184, 7);
}

__n128 sub_9FC68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_9FC7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_9FCC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9FD20()
{
  sub_6110(&qword_128A80, &qword_E3028);
  type metadata accessor for MSAddAliasView();
  sub_6110(&qword_128A78, &qword_E3020);
  _s9ViewModelCMa_0();
  type metadata accessor for MSAddressDetailView();
  sub_6110(&qword_128A70, &qword_E3018);
  sub_9F76C();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  sub_9F924(&qword_128AB0, _s9ViewModelCMa_0);
  sub_9F924(&qword_128AB8, type metadata accessor for MSAddressDetailView);
  swift_getOpaqueTypeConformance2();
  sub_9F924(&qword_128AC0, type metadata accessor for MSAddAliasView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_9FF1C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_9FF64()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_A0010(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_166E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A0054(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_F16C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_A009C()
{
  result = qword_128B80;
  if (!qword_128B80)
  {
    sub_6110(&qword_128B58, &qword_E32C8);
    sub_109A8(&qword_128B88, &qword_128B90, &qword_E3388);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128B80);
  }

  return result;
}

uint64_t sub_A01C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = a1[1];
  v33 = *a1;
  v34 = v3;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v30)
  {
  }

  LOBYTE(v33) = v30 != 0;
  sub_D6320();
  v18 = v36;
  v19 = v37;
  v4 = a1[1];
  v33 = *a1;
  v34 = v4;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  v5 = sub_D62E0();
  v16[1] = v16;
  v25 = v29;
  v17 = v30;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  __chkstk_darwin(v5);
  v16[0] = sub_66D4(&qword_121170, &unk_D8D60);
  sub_66D4(&qword_121178, &qword_DB0C0);
  v6 = sub_6110(&qword_121180, &unk_D8D70);
  v7 = sub_6110(&qword_121188, &unk_E3860);
  v8 = sub_6110(&qword_121190, &unk_D8D80);
  v9 = sub_6110(&qword_121198, &unk_E3870);
  v10 = sub_DEF4();
  v11 = sub_DFAC();
  v21 = v9;
  v22 = &type metadata for String;
  v23 = v10;
  v24 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v8;
  v22 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_109A8(&qword_1211C0, &qword_121188, &unk_E3860);
  v21 = v6;
  v22 = v7;
  v23 = v13;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A0594@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = a1[1];
  v28 = *a1;
  v29 = v3;
  v30[0] = a1[2];
  *(v30 + 9) = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v25)
  {
  }

  LOBYTE(v28) = v25 != 0;
  sub_D6320();
  v14 = v31;
  v4 = a1[1];
  v28 = *a1;
  v29 = v4;
  v30[0] = a1[2];
  *(v30 + 9) = *(a1 + 41);
  v5 = sub_D62E0();
  v12[1] = v12;
  v20 = v24;
  v13 = v25;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  __chkstk_darwin(v5);
  sub_66D4(&qword_1234B8, &unk_E38A0);
  sub_66D4(&qword_121178, &qword_DB0C0);
  v6 = sub_6110(&qword_1234C0, &qword_DB0C8);
  v7 = sub_6110(&qword_1234C8, &qword_DB0D0);
  v8 = sub_39AB4();
  v9 = sub_DFAC();
  v16 = v7;
  v17 = &type metadata for String;
  v18 = v8;
  v19 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v6;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A08AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = a1[1];
  v33 = *a1;
  v34 = v3;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v30)
  {
  }

  LOBYTE(v33) = v30 != 0;
  sub_D6320();
  v18 = v36;
  v19 = v37;
  v4 = a1[1];
  v33 = *a1;
  v34 = v4;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  v5 = sub_D62E0();
  v16[1] = v16;
  v25 = v29;
  v17 = v30;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  __chkstk_darwin(v5);
  v16[0] = sub_66D4(&qword_124760, &unk_E38D0);
  sub_66D4(&qword_121178, &qword_DB0C0);
  v6 = sub_6110(&qword_124768, &qword_DC338);
  v7 = sub_6110(&qword_124770, &qword_DC340);
  v8 = sub_6110(&qword_124778, &qword_DC348);
  v9 = sub_6110(&qword_124780, &qword_DC350);
  v10 = sub_524C4();
  v11 = sub_DFAC();
  v21 = v9;
  v22 = &type metadata for String;
  v23 = v10;
  v24 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v8;
  v22 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340);
  v21 = v6;
  v22 = v7;
  v23 = v13;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A0CBC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = a1[1];
  v33 = *a1;
  v34 = v3;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v30)
  {
  }

  LOBYTE(v33) = v30 != 0;
  sub_D6320();
  v18 = v36;
  v19 = v37;
  v4 = a1[1];
  v33 = *a1;
  v34 = v4;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  v5 = sub_D62E0();
  v16[1] = v16;
  v25 = v29;
  v17 = v30;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  __chkstk_darwin(v5);
  v16[0] = sub_66D4(&qword_128710, &unk_E2BE0);
  sub_66D4(&qword_121178, &qword_DB0C0);
  v6 = sub_6110(&qword_128718, &unk_E2BF0);
  v7 = sub_6110(&qword_128720, &unk_E38B0);
  v8 = sub_6110(&qword_128728, &unk_E2C00);
  v9 = sub_6110(&qword_128730, &unk_E38C0);
  v10 = sub_9B8A4();
  v11 = sub_DFAC();
  v21 = v9;
  v22 = &type metadata for String;
  v23 = v10;
  v24 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v8;
  v22 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_109A8(&qword_128750, &qword_128720, &unk_E38B0);
  v21 = v6;
  v22 = v7;
  v23 = v13;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A1090@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = a1[1];
  v31 = *a1;
  v32 = v3;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v28)
  {
  }

  LOBYTE(v31) = v28 != 0;
  sub_D6320();
  v17 = v34;
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  v5 = sub_D62E0();
  v15[1] = v15;
  v23 = v27;
  v16 = v28;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  __chkstk_darwin(v5);
  v15[0] = sub_66D4(&qword_128C28, &qword_E3620);
  sub_66D4(&qword_121178, &qword_DB0C0);
  v6 = sub_6110(&qword_128C20, &qword_E3618);
  v7 = type metadata accessor for MSStartMailImportView(255);
  v8 = sub_6110(&qword_128C18, &qword_E3610);
  v9 = sub_6110(&qword_128C10, &qword_E3608);
  v10 = sub_109A8(&qword_128C48, &qword_128C10, &qword_E3608);
  v19 = v9;
  v20 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v8;
  v20 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = sub_A5F48(&qword_128BD0, type metadata accessor for MSStartMailImportView);
  v19 = v6;
  v20 = v7;
  v21 = v12;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A1494(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v13 = *a1;
  v15 = a1[1];
  *v17 = a1[2];
  *&v17[9] = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v12)
  {
  }

  sub_D6320();
  v14 = *a1;
  v16 = a1[1];
  *v18 = a1[2];
  *&v18[9] = *(a1 + 41);
  v9 = sub_D62E0();
  __chkstk_darwin(v9);
  sub_66D4(a4, a5);
  sub_66D4(&qword_121178, &qword_DB0C0);
  a6();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D60E0();
}

uint64_t sub_A1738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_66D4(&qword_128B98, &qword_E3448);
  v27 = v5;
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_66D4(&qword_128BA0, &qword_E3450);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v32 = v23 - v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v33 = a1;
  v34 = a2;

  sub_66D4(&qword_128BA8, &qword_E3458);
  sub_109A8(&qword_128BB0, &qword_128BA8, &qword_E3458);
  v26 = v8;
  sub_D6260();
  *&v8[*(v5 + 36)] = sub_D5CA0();
  v28 = _s11descr1123A1O9ViewModelCMa();
  sub_A5F48(&qword_1265E8, _s11descr1123A1O9ViewModelCMa);
  sub_D5870();
  swift_getKeyPath();
  sub_D5880();

  v23[1] = v37;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v24 = type metadata accessor for MSStartMailImportView(0);
  v25 = sub_A5294();
  v16 = sub_A5F48(&qword_128BD0, type metadata accessor for MSStartMailImportView);
  swift_retain_n();
  v17 = v26;
  v18 = v27;
  sub_D60F0();

  sub_A5378(v17);
  sub_D5870();
  swift_getKeyPath();
  sub_D5880();

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v35 = v18;
  v36 = v24;
  v37 = v25;
  v38 = v16;
  swift_getOpaqueTypeConformance2();
  sub_A5438();
  v20 = v29;
  v21 = v32;
  sub_D60F0();

  return (*(v30 + 8))(v21, v20);
}

uint64_t sub_A1C0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_D5570();

  if (v3)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v1 = *(v3 + 16);

  if (v1)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v2 = *(v3 + 16);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_D5580();
}

uint64_t sub_A1DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s11descr1123A1O9ViewModelCMa();
  sub_A5F48(&qword_1265E8, _s11descr1123A1O9ViewModelCMa);
  sub_D5870();
  swift_getKeyPath();
  sub_D5880();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = sub_A54E4;
  *(a3 + 32) = v6;
  *(a3 + 40) = sub_A54EC;
  *(a3 + 48) = v7;
  return swift_retain_n();
}

uint64_t sub_A1F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = sub_66D4(&qword_128C10, &qword_E3608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v59 = sub_66D4(&qword_128C18, &qword_E3610);
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v59);
  v13 = &v46 - v12;
  v50 = sub_66D4(&qword_128C20, &qword_E3618);
  v52 = *(v50 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v50);
  v58 = &v46 - v15;
  v54 = sub_66D4(&qword_128C28, &qword_E3620);
  v53 = *(v54 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v54);
  v49 = &v46 - v17;
  v55 = sub_66D4(&qword_128C30, &qword_E3628);
  v56 = *(v55 - 8);
  v18 = *(v56 + 64);
  __chkstk_darwin(v55);
  v51 = &v46 - v19;
  v60 = a1;
  v61 = a2;
  sub_66D4(&qword_128C38, &qword_E3630);
  sub_109A8(&qword_128C40, &qword_128C38, &qword_E3630);
  sub_D5E60();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = sub_109A8(&qword_128C48, &qword_128C10, &qword_E3608);

  sub_D5FE0();

  (*(v6 + 8))(v9, v5);
  v67._countAndFlagsBits = v5;
  v67._object = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v59;
  sub_D5F90();
  (*(v10 + 8))(v13, v23);
  v46 = _s11descr1123A1O9ViewModelCMa();
  sub_A5F48(&qword_1265E8, _s11descr1123A1O9ViewModelCMa);
  sub_D5870();
  swift_getKeyPath();
  sub_D5880();

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v47 = type metadata accessor for MSStartMailImportView(0);
  swift_retain_n();
  v64._countAndFlagsBits = v59;
  v64._object = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v59 = sub_A5F48(&qword_128BD0, type metadata accessor for MSStartMailImportView);
  v26 = v49;
  v27 = v50;
  v28 = v58;
  sub_D60F0();

  (*(v52 + 8))(v28, v27);
  sub_D5870();
  swift_getKeyPath();
  sub_D5880();

  v67 = v64;
  v68 = v65;
  *v69 = v66[0];
  *&v69[9] = *(v66 + 9);
  v29 = v51;
  sub_A1090(&v67._countAndFlagsBits, v51);
  countAndFlagsBits = v67._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v71 = v68;
  *v72 = *v69;
  *&v72[9] = *&v69[9];
  sub_FC3C(&v71, &qword_120EE8, &qword_D8DD0);
  v30 = v54;
  (*(v53 + 8))(v26, v54);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v64._countAndFlagsBits = 2777980912;
  v64._object = 0xA400000000000000;
  v73._countAndFlagsBits = 0x4D5F54524F504D49;
  v73._object = 0xEF53454741535345;
  sub_D66D0(v73);
  v74._countAndFlagsBits = 2777980912;
  v74._object = 0xA400000000000000;
  sub_D66D0(v74);
  v45._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = 0x4D5F54524F504D49;
  v75._object = 0xEF53454741535345;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v33.super.isa = v32;
  v34 = sub_D4E80(v75, v76, v33, v64, v45);
  v36 = v35;

  v62 = v34;
  v63 = v36;
  v37 = sub_6110(&qword_121178, &qword_DB0C0);
  v64._countAndFlagsBits = v27;
  v64._object = v47;
  *&v65 = v48;
  *(&v65 + 1) = v59;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_E000();
  v40 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v64._countAndFlagsBits = v30;
  v64._object = &type metadata for MSError;
  *&v65 = v37;
  *(&v65 + 1) = v38;
  *&v66[0] = v39;
  *(&v66[0] + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  v41 = v57;
  v42 = v55;
  sub_D6040();

  (*(v56 + 8))(v29, v42);
  result = sub_66D4(&qword_128C50, &qword_E3698);
  v44 = (v41 + *(result + 36));
  *v44 = sub_A5068;
  v44[1] = 0;
  v44[2] = 0;
  v44[3] = 0;
  return result;
}

uint64_t sub_A295C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_D5B40();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_66D4(&qword_128BE0, &qword_E3548);
  return sub_A29C4(a1 + *(v2 + 44));
}

uint64_t sub_A29C4@<X0>(uint64_t a1@<X8>)
{
  v71 = sub_66D4(&qword_128BE8, &unk_E3550);
  v2 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v4 = &v59 - v3;
  v5 = sub_66D4(&qword_121238, &unk_D8E20);
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  v9 = sub_66D4(&qword_128BF0, &qword_E3560);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = objc_opt_self();
  v68 = ObjCClassFromMetadata;
  v16 = [v67 bundleForClass:ObjCClassFromMetadata];
  v74._countAndFlagsBits = 2777980912;
  v74._object = 0xA400000000000000;
  v75._countAndFlagsBits = 0x4D5F54524F504D49;
  v75._object = 0xEF53454741535345;
  sub_D66D0(v75);
  v76._countAndFlagsBits = 2777980912;
  v76._object = 0xA400000000000000;
  sub_D66D0(v76);
  v57._countAndFlagsBits = 0xE000000000000000;
  v77._countAndFlagsBits = 0x4D5F54524F504D49;
  v77._object = 0xEF53454741535345;
  v81.value._countAndFlagsBits = 0;
  v81.value._object = 0;
  v17.super.isa = v16;
  v18 = sub_D4E80(v77, v81, v17, v74, v57);
  v20 = v19;

  v74._countAndFlagsBits = v18;
  v74._object = v20;
  v66 = sub_DFAC();
  v21 = sub_D5F50();
  v70 = v22;
  v69 = v23;
  v25 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v74._countAndFlagsBits) == 1)
  {
    sub_D5780();
    v26 = v73;
    (*(v73 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_128BF8, &qword_E5DF0);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_A5504();
    sub_D5BF0();
    (*(v26 + 8))(v8, v5);
    v27 = v72;
LABEL_15:
    sub_FBD4(v14, v27, &qword_128BF0, &qword_E3560);
    v54 = v70;
    *a1 = v21;
    *(a1 + 8) = v54;
    v55 = v69 & 1;
    *(a1 + 16) = v69 & 1;
    *(a1 + 24) = v25;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    v56 = sub_66D4(&qword_128C08, &qword_E3600);
    sub_FBD4(v27, a1 + *(v56 + 64), &qword_128BF0, &qword_E3560);
    sub_166E0(v21, v54, v55);

    sub_FC3C(v14, &qword_128BF0, &qword_E3560);
    sub_FC3C(v27, &qword_128BF0, &qword_E3560);
    sub_F16C(v21, v54, v55);
  }

  else
  {
    v60 = v21;
    v61 = v25;
    v64 = v4;
    v65 = v5;
    v62 = v14;
    v63 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    countAndFlagsBits = v74._countAndFlagsBits;
    v73 = 0x80000000000E6E90;
    v30 = -*(v74._countAndFlagsBits + 16);
    v31 = -1;
    v32 = 64;
    while (1)
    {
      if (v30 + v31 == -1)
      {

        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        goto LABEL_14;
      }

      if (++v31 >= *(countAndFlagsBits + 16))
      {
        break;
      }

      v34 = *(countAndFlagsBits + v32);
      if (v34 <= 3 && *(countAndFlagsBits + v32) <= 1u && v34 != 1)
      {

LABEL_13:

        v39 = [v67 bundleForClass:v68];
        v74._countAndFlagsBits = 2777980912;
        v74._object = 0xA400000000000000;
        v78._object = 0x80000000000E73C0;
        v78._countAndFlagsBits = 0xD000000000000017;
        sub_D66D0(v78);
        v79._countAndFlagsBits = 2777980912;
        v79._object = 0xA400000000000000;
        sub_D66D0(v79);
        v58._countAndFlagsBits = 0xE000000000000000;
        v80._object = 0x80000000000E73C0;
        v80._countAndFlagsBits = 0xD000000000000017;
        v82.value._countAndFlagsBits = 0;
        v82.value._object = 0;
        v40.super.isa = v39;
        v41 = sub_D4E80(v80, v82, v40, v74, v58);
        v43 = v42;

        v74._countAndFlagsBits = v41;
        v74._object = v43;
        v44 = sub_D5F50();
        v46 = v45;
        v48 = v47;
        sub_D61B0();
        v35 = sub_D5F00();
        v36 = v49;
        v51 = v50;
        v38 = v52;

        sub_F16C(v44, v46, v48 & 1);

        v37 = v51 & 1;
        sub_166E0(v35, v36, v51 & 1);

LABEL_14:
        v53 = v64;
        *v64 = v35;
        v53[1] = v36;
        v53[2] = v37;
        v53[3] = v38;
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_128BF8, &qword_E5DF0);
        sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
        sub_A5504();
        v14 = v62;
        sub_D5BF0();
        sub_A0054(v35, v36, v37, v38);
        a1 = v63;
        v27 = v72;
        v21 = v60;
        v25 = v61;
        goto LABEL_15;
      }

      v32 += 64;
      v33 = sub_D6C20();

      if (v33)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_A325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D5220();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = v7[13];
  v15(v13, enum case for Solarium.main(_:), v6);

  LOBYTE(a2) = sub_D5210();
  v16 = v7[1];
  result = v16(v13, v6);
  if (a2)
  {
    v15(v11, enum case for Solarium.obk(_:), v6);
    v18 = sub_D5210();
    result = v16(v11, v6);
  }

  else
  {
    v18 = 0;
  }

  *a3 = sub_A548C;
  *(a3 + 8) = v14;
  *(a3 + 16) = v18 & 1;
  return result;
}

uint64_t sub_A3418()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_D5580();
}

uint64_t sub_A34C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v75 = sub_66D4(&qword_128C58, &qword_E36C8);
  v72 = *(v75 - 8);
  v5 = *(v72 + 64);
  v6 = __chkstk_darwin(v75);
  v73 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v64 - v8;
  v9 = sub_66D4(&qword_128C60, &qword_E36D0);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v65 = v64 - v11;
  v12 = sub_66D4(&qword_128C68, &qword_E36D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v64 - v16;
  v18 = sub_66D4(&qword_128C70, &qword_E36E0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v64 - v21;
  v23 = sub_66D4(&qword_128C78, &qword_E36E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v69 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = v64 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v29 = *(v76._countAndFlagsBits + 16);

  v68 = a1;
  if (v29)
  {
    v64[1] = v64;
    __chkstk_darwin(v30);
    v64[0] = &v64[-4];
    v63._object = a2;
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = v17;
    v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v76._countAndFlagsBits = 2777980912;
    v76._object = 0xA400000000000000;
    v84._countAndFlagsBits = 0x4D5F54524F504D49;
    v84._object = 0xEB000000004C4941;
    sub_D66D0(v84);
    v85._countAndFlagsBits = 2777980912;
    v85._object = 0xA400000000000000;
    sub_D66D0(v85);
    v63._countAndFlagsBits = 0xE000000000000000;
    v86._countAndFlagsBits = 0x4D5F54524F504D49;
    v86._object = 0xEB000000004C4941;
    v87.value._countAndFlagsBits = 0;
    v87.value._object = 0;
    v34.super.isa = v33;
    v35 = sub_D4E80(v86, v87, v34, v76, v63);
    v37 = v36;

    v17 = v32;

    v76._countAndFlagsBits = v35;
    v76._object = v37;
    sub_DFAC();
    v80 = sub_D5F50();
    v81 = v38;
    v82 = v39 & 1;
    v83 = v40;
    sub_4A044();
    sub_D5B60();
    v76._countAndFlagsBits = sub_D5F40();
    v76._object = v41;
    v77 = v42 & 1;
    v78 = v43;
    v79 = 256;
    sub_66D4(&qword_128C80, &qword_E36F0);
    sub_66D4(&qword_1212E8, &qword_D8F60);
    sub_A5CDC();
    sub_4ABC8();
    sub_D6380();
    (*(v19 + 32))(v28, v22, v18);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = 1;
  (*(v19 + 56))(v28, v44, 1, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v46 = *(v76._countAndFlagsBits + 16);

  if (v46)
  {
    __chkstk_darwin(v47);
    sub_66D4(&qword_128CB0, &qword_E3750);
    sub_109A8(&qword_128CB8, &qword_128CB0, &qword_E3750);
    v48 = v65;
    sub_D6390();
    v50 = v66;
    v49 = v67;
    (*(v66 + 32))(v17, v48, v67);
    v45 = 0;
  }

  else
  {
    v49 = v67;
    v50 = v66;
  }

  v51 = (*(v50 + 56))(v17, v45, 1, v49);
  __chkstk_darwin(v51);
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v52 = v71;
  sub_D6390();
  v53 = v69;
  sub_FBD4(v28, v69, &qword_128C78, &qword_E36E8);
  v54 = v70;
  sub_FBD4(v17, v70, &qword_128C68, &qword_E36D8);
  v67 = v17;
  v68 = v28;
  v55 = v72;
  v56 = v73;
  v57 = *(v72 + 16);
  v58 = v75;
  v57(v73, v52, v75);
  v59 = v74;
  sub_FBD4(v53, v74, &qword_128C78, &qword_E36E8);
  v60 = sub_66D4(&qword_128CC0, &unk_E3758);
  sub_FBD4(v54, v59 + *(v60 + 48), &qword_128C68, &qword_E36D8);
  v57((v59 + *(v60 + 64)), v56, v58);
  v61 = *(v55 + 8);
  v61(v52, v58);
  sub_FC3C(v67, &qword_128C68, &qword_E36D8);
  sub_FC3C(v68, &qword_128C78, &qword_E36E8);
  v61(v56, v58);
  sub_FC3C(v54, &qword_128C68, &qword_E36D8);
  return sub_FC3C(v53, &qword_128C78, &qword_E36E8);
}

uint64_t sub_A3DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v34 = a3;
  v35 = sub_66D4(&qword_128C98, &qword_E36F8);
  v31 = *(v35 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v35);
  v6 = &v29 - v5;
  v33 = sub_66D4(&qword_128CD0, &unk_E3768);
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v9 = &v29 - v8;
  v10 = sub_66D4(&qword_121238, &unk_D8E20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v32 = sub_66D4(&qword_121360, &unk_D8FE0);
  v15 = *(*(v32 - 8) + 64);
  v16 = __chkstk_darwin(v32);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v36 == 1)
  {
    sub_D5780();
    sub_D63E0();
    sub_D5930();
    (*(v11 + 32))(v18, v14, v10);
    v21 = &v18[*(v32 + 36)];
    v22 = v41;
    *(v21 + 4) = v40;
    *(v21 + 5) = v22;
    *(v21 + 6) = v42;
    v23 = v37;
    *v21 = v36;
    *(v21 + 1) = v23;
    v24 = v39;
    *(v21 + 2) = v38;
    *(v21 + 3) = v24;
    sub_8F098(v18, v20);
    sub_FBD4(v20, v9, &qword_121360, &unk_D8FE0);
    swift_storeEnumTagMultiPayload();
    sub_F5B8();
    sub_A5D68();
    sub_D5BF0();
    return sub_FC3C(v20, &qword_121360, &unk_D8FE0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v26 = swift_allocObject();
    *(v26 + 16) = v30;
    *(v26 + 24) = a2;

    sub_66D4(&qword_122178, &qword_DA110);
    sub_66D4(&qword_128CA8, &qword_E3700);
    sub_109A8(&qword_1221F8, &qword_122178, &qword_DA110);
    sub_109A8(&qword_128CA0, &qword_128CA8, &qword_E3700);
    sub_15BF8();
    sub_D6340();
    v27 = v31;
    v28 = v35;
    (*(v31 + 16))(v9, v6, v35);
    swift_storeEnumTagMultiPayload();
    sub_F5B8();
    sub_A5D68();
    sub_D5BF0();
    return (*(v27 + 8))(v6, v28);
  }
}

uint64_t sub_A4310(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MSMailImportDetailView();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v28 = *a1;
  v29 = v10;
  v30[0] = a1[2];
  *(v30 + 9) = *(a1 + 41);
  v23 = &v28;
  sub_2A5C4(a3 + 16, v27);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v29;
  *(v11 + 32) = v28;
  *(v11 + 48) = v12;
  *(v11 + 64) = v30[0];
  *(v11 + 73) = *(v30 + 9);
  *v9 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v13 = v9 + v6[6];
  v26 = 0;
  sub_15C4C(&v28, v24);
  sub_15C4C(&v28, v24);

  sub_D6200();
  v14 = v25;
  *v13 = v24[0];
  *(v13 + 1) = v14;
  v15 = v9 + v6[7];
  v26 = 0;
  sub_D6200();
  v16 = v25;
  *v15 = v24[0];
  *(v15 + 1) = v16;
  v17 = swift_allocObject();
  v18 = v29;
  v17[1] = v28;
  v17[2] = v18;
  v17[3] = v30[0];
  *(v17 + 57) = *(v30 + 9);
  sub_38BDC(v27, (v17 + 5));
  v19 = v9 + v6[5];
  *v19 = sub_A5F3C;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = (v9 + v6[8]);
  *v20 = sub_A5EE4;
  v20[1] = v11;
  sub_66D4(&qword_128CD8, &qword_E37B0);
  sub_109A8(&qword_128CE0, &qword_128CD8, &qword_E37B0);
  sub_A5F48(&qword_128CE8, type metadata accessor for MSMailImportDetailView);
  return sub_D5810();
}

uint64_t sub_A45E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_D5560();
  v7 = v6;
  v8 = sub_A6030(v6, v3, v4);

  v10 = *(*v7 + 16);
  if (v10 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_A6308(v8, v10);
    v5(v11, 0);
  }

  return result;
}

uint64_t sub_A46D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_128CF8, &unk_E37C0);
  return sub_A472C(a1, a2 + *(v4 + 44));
}

uint64_t sub_A472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_66D4(&qword_121538, &unk_D9440);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = *(a1 + 24);
  v58 = *(a1 + 16);
  v59 = v10;
  v11 = sub_DFAC();

  v55 = v11;
  v12 = sub_D5F50();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(sub_66D4(&qword_121548, &unk_E37D0) + 36)];
  v20 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v21 = enum case for Text.TruncationMode.tail(_:);
  v22 = sub_D5EF0();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v9 = v12;
  *(v9 + 1) = v14;
  v9[16] = v16 & 1;
  *(v9 + 3) = v18;
  KeyPath = swift_getKeyPath();
  v24 = &v9[*(v4 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  v25 = *(a1 + 32);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v25 == 1)
  {
    v28 = "IMPORT_STATUS_COMPLETED";
  }

  else
  {
    if (v25)
    {
      v58 = 2777980912;
      v59 = 0xA400000000000000;
      v62._object = 0x80000000000E7380;
      v62._countAndFlagsBits = 0xD000000000000014;
      sub_D66D0(v62);
      v63._countAndFlagsBits = 2777980912;
      v63._object = 0xA400000000000000;
      sub_D66D0(v63);
      v30._countAndFlagsBits = v58;
      v31 = v59;
      v54._countAndFlagsBits = 0xE000000000000000;
      v32._object = 0x80000000000E7380;
      v32._countAndFlagsBits = 0xD000000000000014;
      goto LABEL_7;
    }

    v28 = "IMPORT_STATUS_IMPORTING";
  }

  v29 = v28 - 32;
  v58 = 2777980912;
  v59 = 0xA400000000000000;
  v60._object = ((v28 - 32) | 0x8000000000000000);
  v60._countAndFlagsBits = 0xD000000000000017;
  sub_D66D0(v60);
  v61._countAndFlagsBits = 2777980912;
  v61._object = 0xA400000000000000;
  sub_D66D0(v61);
  v30._countAndFlagsBits = v58;
  v31 = v59;
  v54._countAndFlagsBits = 0xE000000000000000;
  v32._object = (v29 | 0x8000000000000000);
  v32._countAndFlagsBits = 0xD000000000000017;
LABEL_7:
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v33.super.isa = v27;
  v30._object = v31;
  v34 = sub_D4E80(v32, v64, v33, v30, v54);
  v36 = v35;

  v58 = v34;
  v59 = v36;
  v37 = sub_D5F50();
  v39 = v38;
  LOBYTE(v36) = v40;
  sub_D61B0();
  v41 = sub_D5F00();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_F16C(v37, v39, v36 & 1);

  v48 = v57;
  sub_FBD4(v9, v57, &qword_121538, &unk_D9440);
  v49 = v56;
  sub_FBD4(v48, v56, &qword_121538, &unk_D9440);
  v50 = sub_66D4(&qword_128D00, &unk_E3840);
  v51 = v49 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v49 + *(v50 + 64);
  *v52 = v41;
  *(v52 + 8) = v43;
  v45 &= 1u;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  sub_166E0(v41, v43, v45);

  sub_FC3C(v9, &qword_121538, &unk_D9440);
  sub_F16C(v41, v43, v45);

  return sub_FC3C(v48, &qword_121538, &unk_D9440);
}

uint64_t sub_A4B70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  sub_A5E38();
  return sub_D5810();
}

uint64_t sub_A4C34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0x485F54524F504D49;
  v10._object = 0xEE0059524F545349;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._countAndFlagsBits = 0x485F54524F504D49;
  v12._object = 0xEE0059524F545349;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_A4D64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E9CB0;
  v10._countAndFlagsBits = 0xD000000000000017;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E9CB0;
  v12._countAndFlagsBits = 0xD000000000000017;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v6.super.isa = v5;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v6, v14, v9);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_DFAC();

  return sub_D6280();
}

uint64_t sub_A4ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_A4F40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_D6810();
  *(v2 + 24) = sub_D6800();
  v4 = sub_D67F0();

  return _swift_task_switch(sub_A4FD8, v4, v3);
}

uint64_t sub_A4FD8()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_20750(1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_A5068()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Import List] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_A51FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A5234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_A1C0C();
}

unint64_t sub_A5294()
{
  result = qword_128BB8;
  if (!qword_128BB8)
  {
    sub_6110(&qword_128B98, &qword_E3448);
    sub_109A8(&qword_128BC0, &qword_128BC8, &unk_E3488);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BB8);
  }

  return result;
}

uint64_t sub_A5378(uint64_t a1)
{
  v2 = sub_66D4(&qword_128B98, &qword_E3448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A5438()
{
  result = qword_128BD8;
  if (!qword_128BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BD8);
  }

  return result;
}

uint64_t sub_A548C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_A3418();
}

uint64_t sub_A54EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_A295C(a1);
}

unint64_t sub_A5504()
{
  result = qword_128C00;
  if (!qword_128C00)
  {
    sub_6110(&qword_128BF8, &qword_E5DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C00);
  }

  return result;
}

uint64_t sub_A5588()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7D76C;

  return sub_A4F40(v2, v3);
}

char *sub_A56F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_128CF0, &qword_E37B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_A57FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_1223D8, &qword_DA4D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_66D4(&qword_1223E0, &unk_E3890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A5944(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_128D28, &unk_E3880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A5A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121900, &qword_D96E0);
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

uint64_t sub_A5B78@<X0>(uint64_t a1@<X8>)
{
  result = sub_D5AE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_A5BAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_D5AF0();
}

uint64_t sub_A5C00(uint64_t a1)
{
  v2 = sub_D5EF0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D59B0();
}

unint64_t sub_A5CDC()
{
  result = qword_128C88;
  if (!qword_128C88)
  {
    sub_6110(&qword_128C80, &qword_E36F0);
    sub_F5B8();
    sub_A5D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C88);
  }

  return result;
}

unint64_t sub_A5D68()
{
  result = qword_128C90;
  if (!qword_128C90)
  {
    sub_6110(&qword_128C98, &qword_E36F8);
    sub_109A8(&qword_128CA0, &qword_128CA8, &qword_E3700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C90);
  }

  return result;
}

uint64_t sub_A5E20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_A4B70();
}

uint64_t sub_A5E30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_A4ECC();
}

unint64_t sub_A5E38()
{
  result = qword_128CC8;
  if (!qword_128CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128CC8);
  }

  return result;
}

uint64_t sub_A5E9C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_A5EF4()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_67D4(v0 + 10);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_A5F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A5F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 8)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_D6C20() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_A6030(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v6 = *a1;
  result = sub_A5F90(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = result << 6;
    while (v10 < v11)
    {
      result = *(v6 + v12 + 96);
      if (result != a2 || *(v6 + v12 + 104) != a3)
      {
        result = sub_D6C20();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v14 = v9 << 6;
            v15 = (v6 + 32 + (v9 << 6));
            v16 = *v15;
            v17 = v15[1];
            v18 = v15[2];
            *(v42 + 9) = *(v15 + 41);
            v41 = v17;
            v42[0] = v18;
            v40 = v16;
            v19 = *(v6 + v12 + 96);
            v20 = *(v6 + v12 + 112);
            v21 = *(v6 + v12 + 128);
            *(v45 + 9) = *(v6 + v12 + 137);
            v44 = v20;
            v45[0] = v21;
            v43 = v19;
            sub_15C4C(&v40, v38);
            sub_15C4C(&v43, v38);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_A5CC8(v6);
              v6 = result;
            }

            if (v9 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v22 = (v6 + v14);
            v23 = *(v6 + v14 + 32);
            v24 = *(v6 + v14 + 48);
            v25 = *(v6 + v14 + 64);
            *&v37[9] = *(v6 + v14 + 73);
            v36[1] = v24;
            *v37 = v25;
            v36[0] = v23;
            v26 = v43;
            v27 = v44;
            v28 = v45[0];
            *(v22 + 73) = *(v45 + 9);
            v22[3] = v27;
            v22[4] = v28;
            v22[2] = v26;
            result = sub_3C4F8(v36);
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_26;
            }

            v29 = (v6 + v12);
            v30 = *(v6 + v12 + 96);
            v31 = *(v6 + v12 + 112);
            v32 = *(v6 + v12 + 128);
            *&v39[9] = *(v6 + v12 + 137);
            v38[1] = v31;
            *v39 = v32;
            v38[0] = v30;
            v33 = v40;
            v34 = v41;
            v35 = v42[0];
            *(v29 + 137) = *(v42 + 9);
            v29[7] = v34;
            v29[8] = v35;
            v29[6] = v33;
            result = sub_3C4F8(v38);
            *v46 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 64;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_A6248(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = &v13[64 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_A6308(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_A56F0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_A6248(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_A63F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_D5AE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_A6424(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_D5AF0();
}

unint64_t sub_A6454()
{
  result = qword_128D10;
  if (!qword_128D10)
  {
    sub_6110(&qword_128D08, &qword_E3850);
    sub_6110(&qword_128D18, &qword_E3858);
    sub_109A8(&qword_128D20, &qword_128D18, &qword_E3858);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D10);
  }

  return result;
}

uint64_t sub_A6550()
{
  sub_6110(&qword_128BA0, &qword_E3450);
  sub_6110(&qword_128B98, &qword_E3448);
  type metadata accessor for MSStartMailImportView(255);
  sub_A5294();
  sub_A5F48(&qword_128BD0, type metadata accessor for MSStartMailImportView);
  swift_getOpaqueTypeConformance2();
  sub_A5438();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A6648()
{
  result = qword_128D38;
  if (!qword_128D38)
  {
    sub_6110(&qword_128D30, &qword_E38E0);
    sub_A66E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D38);
  }

  return result;
}

unint64_t sub_A66E0()
{
  result = qword_128D40;
  if (!qword_128D40)
  {
    sub_6110(&qword_128D48, &qword_E38E8);
    sub_A6764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D40);
  }

  return result;
}

unint64_t sub_A6764()
{
  result = qword_128D50;
  if (!qword_128D50)
  {
    sub_6110(&qword_128D58, &qword_E38F0);
    sub_109A8(&qword_128D60, &qword_128D68, &qword_E38F8);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D50);
  }

  return result;
}

uint64_t sub_A68C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v44 = *v2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if ((v54 & 0xF9) != 0)
  {
    v41 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v9 = *(&v54 + 1);
    v41 = v54;
  }

  v40 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v42 = v5;
  v43 = v4;
  if (v54 > 2u)
  {
    v10 = 0xE400000000000000;
    if (v54 == 3)
    {
      v11 = 1346585938;
    }

    else if (v54 == 4)
    {
      v11 = 1245861203;
    }

    else
    {
      v11 = 1414744396;
    }
  }

  else if (v54)
  {
    v10 = 0xE200000000000000;
    if (v54 == 1)
    {
      v11 = 20308;
    }

    else
    {
      v11 = 17219;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    v11 = 1297044038;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v12 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v13 = *&aMove_2[8 * v54];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v14 = *(v3 + qword_128D70);
  *&v50[0] = v11;
  *(&v50[0] + 1) = v10;
  v50[1] = v12;
  *&v51 = v13;
  *(&v51 + 1) = 0xE400000000000000;
  *&v52 = v41;
  *(&v52 + 1) = v40;
  v53[0] = v54;
  *&v53[1] = v14;
  BYTE8(v53[1]) = 0;
  v54 = v50[0];
  v55 = v12;
  *(v58 + 9) = *(v53 + 9);
  v57 = v52;
  v58[0] = v53[0];
  v56 = v51;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = v43;
  v16 = sub_6610(v43, qword_137988);
  v17 = v42;
  (*(v42 + 16))(v8, v16, v15);
  v18 = sub_D5320();
  v19 = sub_D68A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "[Add Rule] create rule started", v20, 2u);
  }

  (*(v17 + 8))(v8, v15);
  v21 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository + 24));
  v22 = *(*v21 + 16);
  v23 = *(*v21 + 24);
  v49[3] = &type metadata for CreateMailRuleRequest;
  v49[4] = sub_46830();
  v24 = swift_allocObject();
  v49[0] = v24;
  v25 = v57;
  v24[3] = v56;
  v24[4] = v25;
  v24[5] = v58[0];
  *(v24 + 89) = *(v58 + 9);
  v26 = v55;
  v24[1] = v54;
  v24[2] = v26;
  v27 = objc_allocWithZone(type metadata accessor for MSRuleAddAPI());
  sub_13E28(v49, v48);
  v28 = v22;
  v29 = v23;
  sub_958F8(v50, v47);
  v30 = sub_46884(v22, v29, v48);

  sub_13EF4(v49);
  v31 = sub_1FFF4();

  v47[0] = v31;
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = *(v44 + 1240);
  v35 = v57;
  *(v33 + 56) = v56;
  *(v33 + 72) = v35;
  *(v33 + 88) = v58[0];
  *(v33 + 97) = *(v58 + 9);
  v36 = v55;
  *(v33 + 24) = v54;
  *(v33 + 16) = v34;
  *(v33 + 40) = v36;
  *(v33 + 120) = v32;
  v37 = swift_allocObject();
  *(v37 + 16) = v45;
  *(v37 + 24) = v46;

  sub_66D4(&qword_128630, &qword_E2A08);
  sub_96EA8();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_A6FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 32);
    v47 = *a1;
    v48 = v14;
    v45 = *(a1 + 40);
    v15 = *(a1 + 24);
    v46 = *(a1 + 16);
    v44 = v15;

    v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3E944())
    {
      v17 = sub_D6550();
      v19 = v18;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v20 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v12, v20, v4);

      v21 = sub_D5320();
      v22 = sub_D68B0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v43 = v21;
        v24 = v17;
        v25 = v23;
        v26 = swift_slowAlloc();
        v50 = v26;
        *v25 = 136642819;
        v27 = sub_558F0(v24, v19, &v50);
        v28 = v13;
        v29 = v5;
        v30 = v9;
        v31 = v27;

        *(v25 + 4) = v31;
        v9 = v30;
        v5 = v29;
        v13 = v28;
        v32 = v43;
        _os_log_impl(&dword_0, v43, v22, "[Add Rule] params: %{sensitive}s", v25, 0xCu);
        sub_67D4(v26);
        v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
      }

      else
      {
      }

      (*(v5 + 8))(v12, v4);
    }

    if (v16[91].isa != -1)
    {
      swift_once();
    }

    v33 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v33, v4);

    v34 = sub_D5320();
    v35 = sub_D68B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136315138;
      v50 = v47;
      v51 = v13;
      v52 = v46;
      LOBYTE(v53) = v44 & 1;
      v54 = v48;
      v55 = v45 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, &v56);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "[Add Rule] create rule failed: %s", v36, 0xCu);
      sub_67D4(v37);
    }

    (*(v5 + 8))(v9, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v41 = v44 & 1;
      v42 = v45 & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v47;
      v51 = v13;
      v52 = v46;
      v53 = v41;
      v54 = v48;
      v55 = v42;
      return sub_D5580();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_A74E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Add Rule] create rule successful", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_A768C()
{
  v0 = sub_901D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_A7718()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 105, 7);
}

double sub_A7770@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_A7800(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_A7898()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A78D0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_A7940()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A79C4()
{
  v1 = *(v0 + 8);
  *&v8 = *v0;
  v2 = v8;
  *(&v8 + 1) = v1;
  v9 = *(v0 + 16);
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D6310();
  v8 = v7[0];
  v9 = v7[1];
  sub_D62E0();

  v6[2] = v6[4];
  v6[3] = v6[5];
  v10 = v2;
  v7[0] = *(v0 + 16);
  v3 = swift_allocObject();
  v4 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 32);
  sub_10578(&v10, v6);

  sub_9FF94(v7, v6);
  sub_66D4(&qword_128DF8, &qword_E3C30);
  sub_A7C20();
  sub_D6150();
}

uint64_t sub_A7B4C(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  result = sub_D6690();
  if (*(a3 + 4) < result)
  {
    v9 = *a3;
    v10 = a3[1];

    sub_66D4(&qword_1226D8, &qword_DA760);
    return sub_D62F0();
  }

  return result;
}

uint64_t sub_A7BD0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_A7C20()
{
  result = qword_128E00;
  if (!qword_128E00)
  {
    sub_6110(&qword_128DF8, &qword_E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E00);
  }

  return result;
}

uint64_t sub_A7C84()
{
  sub_6110(&qword_128DF8, &qword_E3C30);
  sub_A7C20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_66D4(&qword_128E08, qword_E3C38);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_A7E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_66D4(&qword_128E08, qword_E3C38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for MSRulesView()
{
  result = qword_128E68;
  if (!qword_128E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A7FBC()
{
  sub_A816C(319, &qword_121100, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_A80D8();
    if (v1 <= 0x3F)
    {
      sub_39788();
      if (v2 <= 0x3F)
      {
        sub_A816C(319, &unk_128E88, &type metadata accessor for EditMode, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_A80D8()
{
  if (!qword_128E78)
  {
    _s9ViewModelCMa_2();
    sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_128E78);
    }
  }
}

void sub_A816C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_A81EC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_90D1C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_A8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2A5C4(a1, v21);
  v11 = v22;
  v12 = sub_38BFC(v21, v22);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;

  v18 = sub_B08B4(v17, a2, a3, a4, a5, a6);

  sub_67D4(v21);
  return v18;
}

uint64_t sub_A8378@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v143 = sub_66D4(&qword_128EC8, &qword_E3CD0);
  v123 = *(v143 - 8);
  v2 = *(v123 + 8);
  __chkstk_darwin(v143);
  v131 = &v106 - v3;
  v4 = type metadata accessor for MSRulesView();
  v5 = v4 - 8;
  v133 = *(v4 - 8);
  v141 = *(v133 + 64);
  v134 = v4 - 8;
  __chkstk_darwin(v4);
  v146 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_D63D0();
  v145 = *(v139 - 8);
  v7 = *(v145 + 64);
  v8 = __chkstk_darwin(v139);
  v125 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = &v106 - v10;
  v11 = sub_D5B20();
  *(&v121 + 1) = *(v11 - 8);
  v122 = v11;
  v12 = *(*(&v121 + 1) + 64);
  __chkstk_darwin(v11);
  *&v121 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_66D4(&qword_128D18, &qword_E3858);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v106 - v17;
  v106 = sub_66D4(&qword_128D08, &qword_E3850);
  v19 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v21 = &v106 - v20;
  v22 = sub_66D4(&qword_128ED0, &qword_E3CD8);
  v23 = *(v22 - 8);
  v135 = v22;
  v136 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v107 = &v106 - v25;
  v114 = sub_66D4(&qword_128ED8, &qword_E3CE0);
  v26 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v113 = &v106 - v27;
  v28 = sub_66D4(&qword_128EE0, &qword_E3CE8);
  v29 = *(v28 - 8);
  v117 = v28;
  v118 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v115 = &v106 - v31;
  v32 = sub_66D4(&qword_128EE8, &qword_E3CF0);
  v33 = *(v32 - 8);
  v119 = v32;
  v120 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v116 = &v106 - v35;
  v124 = sub_66D4(&qword_128EF0, &qword_E3CF8);
  v126 = *(v124 - 8);
  v36 = *(v126 + 64);
  __chkstk_darwin(v124);
  v137 = &v106 - v37;
  v38 = sub_66D4(&qword_128EF8, &qword_E3D00);
  v39 = *(v38 - 8);
  v127 = v38;
  v128 = v39;
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v140 = &v106 - v41;
  v42 = sub_66D4(&qword_128F00, &qword_E3D08);
  v43 = *(v42 - 8);
  v129 = v42;
  v130 = v43;
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v142 = &v106 - v45;
  v46 = v1;
  v148 = v1;
  sub_66D4(&qword_128F08, &unk_E3D10);
  sub_B1074();
  sub_D5E60();
  sub_109A8(&qword_128D20, &qword_128D18, &qword_E3858);
  sub_D5F90();
  (*(v15 + 8))(v18, v14);
  v47 = v106;
  v48 = &v21[*(v106 + 36)];
  *v48 = sub_AA160;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = 0;
  v49 = v1 + *(v5 + 28);
  v50 = *v49;
  v111 = *(v49 + 8);
  v112 = v50;
  v110 = *(v49 + 16);
  v109 = _s9ViewModelCMa_2();
  v108 = sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v165 = v171;
  v166 = v172;
  v167[0] = *v173;
  *(v167 + 9) = *&v173[9];
  v51 = v107;
  sub_A1458(&v165, 19279, 0xE200000000000000);
  v168 = v165;
  sub_E158(&v168);

  v169 = v166;
  v170[0] = v167[0];
  *(v170 + 9) = *(v167 + 9);
  sub_FC3C(&v169, &qword_120EE8, &qword_D8DD0);
  sub_FC3C(v21, &qword_128D08, &qword_E3850);
  v147 = v46;
  sub_66D4(&qword_128F28, &unk_E3D60);
  v52 = sub_6110(&qword_121178, &qword_DB0C0);
  v53 = sub_A6454();
  v54 = sub_E000();
  v55 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  *&v171 = v47;
  *(&v171 + 1) = &type metadata for MSError;
  *&v172 = v52;
  *(&v172 + 1) = v53;
  *v173 = v54;
  *&v173[8] = v55;
  swift_getOpaqueTypeConformance2();
  sub_B113C();
  v56 = v113;
  v57 = v135;
  sub_D6130();
  (*(v136 + 8))(v51, v57);
  KeyPath = swift_getKeyPath();
  v59 = v114;
  v60 = (v56 + *(v114 + 36));
  v61 = *(sub_66D4(&qword_128F40, &qword_E3DA0) + 28);
  v62 = v134;
  v135 = *(v134 + 36);
  v136 = sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6230();
  (*(v123 + 7))(v60 + v61, 0, 1, v143);
  *v60 = KeyPath;
  v63 = (v46 + *(v62 + 40));
  v144 = v46;
  v65 = *v63;
  v64 = v63[1];
  *&v171 = v65;
  *(&v171 + 1) = v64;
  v66 = sub_B1218();
  v67 = sub_DFAC();
  v68 = v115;
  sub_D6040();
  sub_FC3C(v56, &qword_128ED8, &qword_E3CE0);
  v69 = v121;
  v70 = v122;
  (*(*(&v121 + 1) + 104))(v121, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v122);
  *&v171 = v59;
  *(&v171 + 1) = &type metadata for String;
  *&v172 = v66;
  *(&v172 + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v116;
  v72 = v117;
  sub_D60D0();
  (*(*(&v69 + 1) + 8))(v69, v70);
  v74 = v72;
  (*(v118 + 8))(v68, v72);
  v75 = v138;
  sub_D6210();
  v76 = v145;
  v77 = v125;
  v78 = v139;
  (*(v145 + 104))(v125, enum case for EditMode.active(_:), v139);
  sub_D63C0();
  v79 = *(v76 + 8);
  v145 = v76 + 8;
  v123 = v79;
  v79(v77, v78);
  v79(v75, v78);
  *&v171 = v74;
  *(&v171 + 1) = OpaqueTypeConformance2;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v119;
  sub_D60C0();
  (*(v120 + 8))(v73, v81);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v153 = v161;
  v154 = v162;
  v155 = v163;
  v156 = v164;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v152 = v160;
  v82 = v146;
  sub_B13F8(v144, v146);
  v133 = *(v133 + 80);
  v83 = (v133 + 16) & ~v133;
  v84 = swift_allocObject();
  sub_B1460(v82, v84 + v83);
  *&v121 = sub_66D4(&qword_128F58, &qword_E3DD8);
  *&v171 = v81;
  *(&v171 + 1) = v80;
  *(&v121 + 1) = swift_getOpaqueTypeConformance2();
  v122 = sub_B1544();
  v125 = &unk_E5CE8;
  v85 = sub_109A8(&qword_128F68, &qword_128F58, &qword_E3DD8);
  v86 = v124;
  v87 = v137;
  sub_D6100();

  v174 = v153;
  v175 = v154;
  v176 = v155;
  v177 = v156;
  v171 = v149;
  v172 = v150;
  *v173 = v151;
  *&v173[16] = v152;
  sub_FC3C(&v171, &qword_128F70, &unk_E3DE0);
  (*(v126 + 8))(v87, v86);
  v88 = v144;
  v89 = (v144 + *(v134 + 32));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v149) = v90;
  *(&v149 + 1) = v91;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  LODWORD(v134) = v158;
  v92 = v146;
  sub_B13F8(v88, v146);
  v93 = swift_allocObject();
  sub_B1460(v92, v93 + v83);
  v137 = sub_66D4(&qword_128F78, &qword_E3DF0);
  *&v157 = v86;
  *(&v157 + 1) = &type metadata for MailRule;
  v158 = v121;
  *&v159 = v122;
  *(&v159 + 1) = v85;
  *&v105 = swift_getOpaqueTypeConformance2();
  *(&v105 + 1) = sub_109A8(&qword_128F80, &qword_128F78, &qword_E3DF0);
  v94 = v127;
  v95 = v140;
  sub_D60F0();

  (*(v128 + 8))(v95, v94);
  v96 = v144;
  v97 = v131;
  sub_D6230();
  v98 = v138;
  sub_D62E0();
  sub_FC3C(v97, &qword_128EC8, &qword_E3CD0);
  v99 = v146;
  sub_B13F8(v96, v146);
  v100 = swift_allocObject();
  sub_B1460(v99, v100 + v83);
  *&v157 = v94;
  *(&v157 + 1) = v137;
  v158 = v105;
  swift_getOpaqueTypeConformance2();
  sub_B1ED0(&qword_128F88, &type metadata accessor for EditMode);
  v101 = v129;
  v102 = v139;
  v103 = v142;
  sub_D6150();

  v123(v98, v102);
  return (*(v130 + 8))(v103, v101);
}

uint64_t sub_A94E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = sub_66D4(&qword_128F20, &qword_E3D30);
  v3 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v34 = &v33 - v4;
  v38 = sub_66D4(&qword_1263D8, &qword_DE958);
  v36 = *(v38 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v38);
  v35 = &v33 - v6;
  v39 = sub_66D4(&qword_129020, &unk_E4110);
  v7 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v9 = &v33 - v8;
  v37 = sub_66D4(&qword_1263E8, &qword_DE968);
  v10 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v12 = &v33 - v11;
  v40 = sub_66D4(&qword_1263F0, &unk_DE970);
  v13 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v15 = &v33 - v14;
  v16 = sub_66D4(&qword_1263F8, &unk_E3D20);
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = (a1 + *(type metadata accessor for MSRulesView() + 20));
  v22 = *v20;
  v21 = v20[1];
  v23 = *(v20 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v25 = v44;
  if (v44)
  {
    if (v44 == 1)
    {
      v26 = v34;
      sub_A9D1C(v34);
      sub_FBD4(v26, v9, &qword_128F20, &qword_E3D30);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30);
      sub_D5BF0();
      return sub_FC3C(v26, &qword_128F20, &qword_E3D30);
    }

    else
    {
      v29 = v43;
      __chkstk_darwin(v24);
      *(&v33 - 2) = v29;
      *(&v33 - 1) = v25;
      v30 = v35;
      sub_D6390();
      sub_F2AC(v29, v25);
      v31 = v36;
      v32 = v38;
      (*(v36 + 16))(v12, v30, v38);
      swift_storeEnumTagMultiPayload();
      sub_71474();
      sub_71504();
      sub_D5BF0();
      sub_FBD4(v15, v9, &qword_1263F0, &unk_DE970);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30);
      sub_D5BF0();
      sub_FC3C(v15, &qword_1263F0, &unk_DE970);
      return (*(v31 + 8))(v30, v32);
    }
  }

  else
  {
    sub_66D4(&qword_121360, &unk_D8FE0);
    sub_F5B8();
    sub_D6390();
    v28 = v33;
    (*(v33 + 16))(v12, v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_71474();
    sub_71504();
    sub_D5BF0();
    sub_FBD4(v15, v9, &qword_1263F0, &unk_DE970);
    swift_storeEnumTagMultiPayload();
    sub_713E8();
    sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30);
    sub_D5BF0();
    sub_FC3C(v15, &qword_1263F0, &unk_DE970);
    return (*(v28 + 8))(v19, v16);
  }
}

__n128 sub_A9BC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_66D4(&qword_121238, &unk_D8E20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  sub_D5780();
  sub_D63E0();
  sub_D5930();
  (*(v3 + 32))(a1, v6, v2);
  v7 = a1 + *(sub_66D4(&qword_121360, &unk_D8FE0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_A9D1C@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v41 = sub_66D4(&qword_129028, &qword_E4168);
  v2 = *(v41 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v41);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_66D4(&qword_129030, &qword_E4170);
  v39 = *(v8 - 8);
  v9 = v39;
  v10 = *(v39 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v44 = v1;
  sub_66D4(&qword_129038, &qword_E4178);
  sub_B1974();
  v38 = v15;
  sub_D6390();
  v43 = v1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v45._countAndFlagsBits = 2777980912;
  v45._object = 0xA400000000000000;
  v49._object = 0x80000000000E9DC0;
  v49._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v49);
  v50._countAndFlagsBits = 2777980912;
  v50._object = 0xA400000000000000;
  sub_D66D0(v50);
  v34._countAndFlagsBits = 0xE000000000000000;
  v51._object = 0x80000000000E9DC0;
  v51._countAndFlagsBits = 0xD000000000000011;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v18.super.isa = v17;
  v19 = sub_D4E80(v51, v52, v18, v45, v34);
  v21 = v20;

  v45._countAndFlagsBits = v19;
  v45._object = v21;
  sub_DFAC();
  v45._countAndFlagsBits = sub_D5F50();
  v45._object = v22;
  v46 = v23 & 1;
  v47 = v24;
  v48 = 256;
  sub_66D4(&qword_121280, &unk_D8E40);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_EB50();
  sub_4ABC8();
  v36 = v7;
  sub_D63A0();
  v25 = *(v9 + 16);
  v37 = v13;
  v25(v13, v15, v8);
  v26 = v2[2];
  v27 = v40;
  v28 = v41;
  v26(v40, v7, v41);
  v29 = v42;
  v25(v42, v13, v8);
  v30 = &v29[*(sub_66D4(&qword_1290D0, &qword_E41C8) + 48)];
  v26(v30, v27, v28);
  v31 = v2[1];
  v31(v36, v28);
  v32 = *(v39 + 8);
  v32(v38, v8);
  v31(v27, v28);
  return (v32)(v37, v8);
}

uint64_t sub_AA160()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Rules List] page viewed", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_78BC4(3u);
  v9();
}

double sub_AA308@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_AA398(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_AA430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D56A0();
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for MSRulesView() + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  LOBYTE(v10) = sub_43830();

  if (v10)
  {
    sub_D5690();
    (*(v15 + 32))(a2, v7, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_AA60C(uint64_t a1)
{
  v2 = sub_66D4(&qword_129018, &qword_E40E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_FBD4(a1, &v6 - v4, &qword_129018, &qword_E40E8);
  return sub_D5AB0();
}

__n128 sub_AA6B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v6;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_AA774(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v20 = *(a1 + 12);
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = a1[3];
  v19[2] = a1[2];
  v19[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v16 = a1[4];
  v17 = v7;
  v18 = *(a1 + 12);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v9 = a1[3];
  v14 = a1[2];
  v15 = v9;
  sub_FBD4(v19, v11, &unk_123F28, &unk_E3CC0);

  return sub_D5580();
}

uint64_t sub_AA84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v5 = type metadata accessor for MSRulesView();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v8;
  v38 = *(a1 + 96);
  v9 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v9;
  v10 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v10;
  v11 = a2 + *(v7 + 28);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_26A60(v37, v35);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  v15 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList);

  v16 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);

  v17 = sub_D5740();
  sub_2A5C4(v17 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository, v35);

  sub_B13F8(v32, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v19 = swift_allocObject();
  sub_B1460(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = sub_66D4(&qword_129010, &qword_E3F10);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v36;
  v25 = sub_38BFC(v35, v36);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = sub_B03C0(v37, v15, v16, *v28, sub_B176C, v19, v23);
  sub_67D4(v35);
  return sub_AACA8(v30, &qword_128F58, &qword_E3DD8, sub_11C60, sub_AEAC4, sub_B2C18, v34);
}

uint64_t sub_AABF4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSRulesView() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  sub_3F1B8();
}

uint64_t sub_AACA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __n128 (*a4)(void, uint64_t, void)@<X3>, uint64_t (*a5)(uint64_t, unint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v170 = a6;
  v198 = a5;
  v171 = a4;
  v169 = a1;
  v203 = sub_D5340();
  v181 = *(v203 - 8);
  v10 = *(v181 + 64);
  v11 = __chkstk_darwin(v203);
  v190 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v189 = &v168 - v14;
  v15 = __chkstk_darwin(v13);
  v193.n128_u64[0] = &v168 - v16;
  __chkstk_darwin(v15);
  v192.n128_u64[0] = &v168 - v17;
  v204 = sub_66D4(&qword_128F98, &qword_E3E90);
  v199 = *(v204 - 8);
  v18 = *(v199 + 64);
  v19 = __chkstk_darwin(v204);
  v202 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v191 = &v168 - v22;
  v23 = __chkstk_darwin(v21);
  v201 = &v168 - v24;
  __chkstk_darwin(v23);
  v200 = &v168 - v25;
  v26 = sub_66D4(&qword_128FA0, &qword_E3E98);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v168 - v29;
  v31 = sub_D5220();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v182 = sub_66D4(a2, a3);
  v36 = v182[7];
  (*(v32 + 104))(v35, enum case for Solarium.main(_:), v31);
  LOBYTE(a3) = sub_D5210();
  (*(v32 + 8))(v35, v31);
  v183 = a7;
  *(a7 + v36) = a3 & 1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v175 = objc_opt_self();
  v177 = ObjCClassFromMetadata;
  v38 = [v175 bundleForClass:ObjCClassFromMetadata];
  v206._countAndFlagsBits = 2777980912;
  v206._object = 0xA400000000000000;
  v208._object = 0x80000000000E9D10;
  v208._countAndFlagsBits = 0xD000000000000018;
  sub_D66D0(v208);
  v209._countAndFlagsBits = 2777980912;
  v209._object = 0xA400000000000000;
  sub_D66D0(v209);
  v164._countAndFlagsBits = 0xE000000000000000;
  v186 = "RULES.LABEL.ADDRULE";
  v210._object = 0x80000000000E9D10;
  v185 = 0xD000000000000018;
  v210._countAndFlagsBits = 0xD000000000000018;
  v220.value._countAndFlagsBits = 0;
  v220.value._object = 0;
  v39.super.isa = v38;
  v40 = sub_D4E80(v210, v220, v39, v206, v164);
  v42 = v41;

  v206._countAndFlagsBits = v40;
  v206._object = v42;
  v43 = sub_66D4(&qword_128FA8, &qword_E3ED0);
  sub_D5250();
  v44 = sub_78648();
  v45 = sub_109A8(&qword_128FB0, &qword_128FA0, &qword_E3E98);
  v176 = v43;
  v174 = v44;
  v173 = v45;
  v46 = sub_D6570();
  v47 = *(v27 + 8);
  v178 = v30;
  v48 = v30;
  v49 = v199;
  v180 = v26;
  v179 = v27 + 8;
  v172 = v47;
  v47(v48, v26);
  v50 = v171;
  v51 = v181;

  v52 = *(v46 + 16);
  if (v52)
  {
    v207 = _swiftEmptyArrayStorage;
    v53 = v50(0, v52, 0);
    v54 = v207;
    v56 = *(v49 + 16);
    v55 = v49 + 16;
    v196 = v56;
    v57 = (*(v55 + 64) + 32) & ~*(v55 + 64);
    v168 = v46;
    v58 = v46 + v57;
    v195 = *(v55 + 56);
    v188 = v51 + 16;
    v187.n128_u64[0] = v51 + 8;
    v197 = v55;
    v194 = v55 - 8;
    v53.n128_u64[0] = 136315394;
    v184 = v53;
    v59 = v198;
    v60 = v204;
    do
    {
      v196(v200, v58, v60);
      sub_D5260();

      v61 = sub_D6670();
      v63 = v62;

      v64 = v59(v61, v63);
      if (v64 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v65 = v203;
        v66 = sub_6610(v203, qword_137988);
        v67 = v192.n128_u64[0];
        (*v188)(v192.n128_u64[0], v66, v65);

        v68 = sub_D5320();
        v69 = sub_D68B0();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *v70 = v184.n128_u32[0];
          *(v70 + 4) = sub_558F0(v185, v186 | 0x8000000000000000, &v205);
          *(v70 + 12) = 2080;
          *(v70 + 14) = sub_558F0(v61, v63, &v205);
          _os_log_impl(&dword_0, v68, v69, "Rule Layout %s unknown %s enum", v70, 0x16u);
          swift_arrayDestroy();
          v59 = v198;

          (*v187.n128_u64[0])(v192.n128_u64[0], v65);
        }

        else
        {

          (*v187.n128_u64[0])(v67, v65);
        }

        v71 = 12;
        v60 = v204;
      }

      else
      {
        v71 = v64;
      }

      (*v194)(v200, v60);
      v207 = v54;
      v73 = v54[2];
      v72 = v54[3];
      if (v73 >= v72 >> 1)
      {
        v171(v72 > 1, v73 + 1, 1);
        v54 = v207;
      }

      v54[2] = v73 + 1;
      *(v54 + v73 + 32) = v71;
      v58 += v195;
      --v52;
    }

    while (v52);

    v50 = v171;
    v49 = v199;
  }

  else
  {

    v54 = _swiftEmptyArrayStorage;
    v59 = v198;
  }

  *(v183 + v182[8]) = v54;
  v74 = [v175 bundleForClass:{v177, v168}];
  v206._countAndFlagsBits = 2777980912;
  v206._object = 0xA400000000000000;
  v211._countAndFlagsBits = 0xD00000000000002ELL;
  v211._object = 0x80000000000E9D30;
  sub_D66D0(v211);
  v212._countAndFlagsBits = 2777980912;
  v212._object = 0xA400000000000000;
  sub_D66D0(v212);
  v165._countAndFlagsBits = 0xE000000000000000;
  v213._countAndFlagsBits = 0xD00000000000002ELL;
  v188 = "RULES.RULEOPTIONS.LAYOUT";
  v213._object = 0x80000000000E9D30;
  v221.value._countAndFlagsBits = 0;
  v221.value._object = 0;
  v75.super.isa = v74;
  v76 = sub_D4E80(v213, v221, v75, v206, v165);
  v78 = v77;

  v206._countAndFlagsBits = v76;
  v206._object = v78;
  v79 = v178;
  sub_D5250();
  v80 = v180;
  v81 = sub_D6570();
  v172(v79, v80);

  v82 = *(v81 + 16);
  if (v82)
  {
    v207 = _swiftEmptyArrayStorage;
    v83 = v50(0, v82, 0);
    v84 = v207;
    v86 = *(v49 + 16);
    v85 = (v49 + 16);
    v197 = v86;
    v87 = (v85[64] + 32) & ~v85[64];
    v186 = v81;
    v88 = v81 + v87;
    v196 = *(v85 + 7);
    v194 = v181 + 16;
    v192.n128_u64[0] = v181 + 8;
    v200 = v85;
    v195 = (v85 - 8);
    v83.n128_u64[0] = 136315394;
    v187 = v83;
    v89 = v204;
    do
    {
      (v197)(v201, v88, v89);
      sub_D5260();

      v90 = sub_D6670();
      v92 = v91;

      v93 = v59(v90, v92);
      if (v93 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v94 = v203;
        v95 = sub_6610(v203, qword_137988);
        v96 = v193.n128_u64[0];
        (*v194)(v193.n128_u64[0], v95, v94);

        v97 = sub_D5320();
        v98 = sub_D68B0();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *v99 = v187.n128_u32[0];
          *(v99 + 4) = sub_558F0(0xD00000000000002ELL, v188 | 0x8000000000000000, &v205);
          *(v99 + 12) = 2080;
          *(v99 + 14) = sub_558F0(v90, v92, &v205);
          _os_log_impl(&dword_0, v97, v98, "Rule Layout %s unknown %s enum", v99, 0x16u);
          swift_arrayDestroy();
          v59 = v198;

          (*v192.n128_u64[0])(v193.n128_u64[0], v94);
        }

        else
        {

          (*v192.n128_u64[0])(v96, v94);
        }

        v100 = 12;
        v89 = v204;
      }

      else
      {
        v100 = v93;
      }

      (*v195)(v201, v89);
      v207 = v84;
      v102 = v84[2];
      v101 = v84[3];
      if (v102 >= v101 >> 1)
      {
        v171(v101 > 1, v102 + 1, 1);
        v84 = v207;
      }

      v84[2] = v102 + 1;
      *(v84 + v102 + 32) = v100;
      v88 += v196;
      --v82;
    }

    while (v82);

    v50 = v171;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  *(v183 + v182[9]) = v84;
  v103 = [v175 bundleForClass:v177];
  v206._countAndFlagsBits = 2777980912;
  v206._object = 0xA400000000000000;
  v214._object = 0x80000000000E9D60;
  v214._countAndFlagsBits = 0xD00000000000002BLL;
  sub_D66D0(v214);
  v215._countAndFlagsBits = 2777980912;
  v215._object = 0xA400000000000000;
  sub_D66D0(v215);
  v166._countAndFlagsBits = 0xE000000000000000;
  v193.n128_u64[0] = "S.LAYOUT.CONDITIONLABELSECTION";
  v216._object = 0x80000000000E9D60;
  v216._countAndFlagsBits = 0xD00000000000002BLL;
  v222.value._countAndFlagsBits = 0;
  v222.value._object = 0;
  v104.super.isa = v103;
  v105 = sub_D4E80(v216, v222, v104, v206, v166);
  v107 = v106;

  v206._countAndFlagsBits = v105;
  v206._object = v107;
  v108 = v178;
  sub_D5250();
  v109 = v180;
  v110 = sub_D6570();
  v172(v108, v109);

  v111 = *(v110 + 16);
  v112 = v191;
  if (v111)
  {
    v207 = _swiftEmptyArrayStorage;
    v113 = v50(0, v111, 0);
    v114 = v207;
    v200 = *(v199 + 16);
    v115 = (*(v199 + 80) + 32) & ~*(v199 + 80);
    v188 = v110;
    v116 = v110 + v115;
    v197 = *(v199 + 72);
    v194 = v181 + 8;
    v195 = (v181 + 16);
    v201 = (v199 + 16);
    v196 = (v199 + 8);
    v113.n128_u64[0] = 136315394;
    v192 = v113;
    do
    {
      (v200)(v112, v116, v204);
      sub_D5260();

      v117 = sub_D6670();
      v119 = v118;

      v120 = v59(v117, v119);
      if (v120 == 13)
      {
        v121 = v189;
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v122 = v203;
        v123 = sub_6610(v203, qword_137988);
        (*v195)(v121, v123, v122);

        v124 = sub_D5320();
        v125 = sub_D68B0();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *v126 = v192.n128_u32[0];
          *(v126 + 4) = sub_558F0(0xD00000000000002BLL, v193.n128_u64[0] | 0x8000000000000000, &v205);
          *(v126 + 12) = 2080;
          *(v126 + 14) = sub_558F0(v117, v119, &v205);
          _os_log_impl(&dword_0, v124, v125, "Rule Layout %s unknown %s enum", v126, 0x16u);
          swift_arrayDestroy();

          v59 = v198;

          (*v194)(v121, v203);
        }

        else
        {

          (*v194)(v121, v122);
        }

        v127 = 12;
        v112 = v191;
      }

      else
      {
        v127 = v120;
      }

      (*v196)(v112, v204);
      v207 = v114;
      v129 = v114[2];
      v128 = v114[3];
      if (v129 >= v128 >> 1)
      {
        v171(v128 > 1, v129 + 1, 1);
        v114 = v207;
      }

      v114[2] = v129 + 1;
      *(v114 + v129 + 32) = v127;
      v116 += v197;
      --v111;
    }

    while (v111);

    v130 = v171;
  }

  else
  {
    v130 = v50;

    v114 = _swiftEmptyArrayStorage;
  }

  v131 = v181;
  *(v183 + v182[10]) = v114;
  v132 = [v175 bundleForClass:v177];
  v206._countAndFlagsBits = 2777980912;
  v206._object = 0xA400000000000000;
  v217._object = 0x80000000000E9D90;
  v217._countAndFlagsBits = 0xD00000000000002BLL;
  sub_D66D0(v217);
  v218._countAndFlagsBits = 2777980912;
  v218._object = 0xA400000000000000;
  sub_D66D0(v218);
  v167._countAndFlagsBits = 0xE000000000000000;
  v194 = "S.LAYOUT.ACTIONLABELSECTION";
  v219._object = 0x80000000000E9D90;
  v219._countAndFlagsBits = 0xD00000000000002BLL;
  v223.value._countAndFlagsBits = 0;
  v223.value._object = 0;
  v133.super.isa = v132;
  v134 = sub_D4E80(v219, v223, v133, v206, v167);
  v136 = v135;

  v206._countAndFlagsBits = v134;
  v206._object = v136;
  v137 = v178;
  sub_D5250();
  v138 = v180;
  v139 = sub_D6570();
  v172(v137, v138);

  v140 = *(v139 + 16);
  if (v140)
  {
    v207 = _swiftEmptyArrayStorage;
    v141 = v130(0, v140, 0);
    v142 = v207;
    v201 = *(v199 + 16);
    v143 = (*(v199 + 80) + 32) & ~*(v199 + 80);
    v192.n128_u64[0] = v139;
    v144 = v139 + v143;
    v200 = *(v199 + 72);
    v195 = (v131 + 8);
    v196 = (v131 + 16);
    v197 = v199 + 8;
    v141.n128_u64[0] = 136315394;
    v193 = v141;
    v145 = v204;
    v199 += 16;
    do
    {
      (v201)(v202, v144, v145);
      sub_D5260();

      v146 = sub_D6670();
      v148 = v147;

      v149 = v59(v146, v148);
      if (v149 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v150 = v203;
        v151 = sub_6610(v203, qword_137988);
        v152 = v190;
        (*v196)(v190, v151, v150);

        v153 = sub_D5320();
        v154 = sub_D68B0();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *v155 = v193.n128_u32[0];
          *(v155 + 4) = sub_558F0(0xD00000000000002BLL, v194 | 0x8000000000000000, &v205);
          *(v155 + 12) = 2080;
          *(v155 + 14) = sub_558F0(v146, v148, &v205);
          _os_log_impl(&dword_0, v153, v154, "Rule Layout %s unknown %s enum", v155, 0x16u);
          swift_arrayDestroy();

          v59 = v198;

          (*v195)(v152, v203);
        }

        else
        {

          (*v195)(v152, v150);
        }

        v156 = 12;
        v145 = v204;
      }

      else
      {
        v156 = v149;
      }

      (*v197)(v202, v145);
      v207 = v142;
      v158 = v142[2];
      v157 = v142[3];
      if (v158 >= v157 >> 1)
      {
        v171(v157 > 1, v158 + 1, 1);
        v142 = v207;
      }

      v142[2] = v158 + 1;
      *(v142 + v158 + 32) = v156;
      v144 += v200;
      --v140;
    }

    while (v140);
  }

  else
  {

    v142 = _swiftEmptyArrayStorage;
  }

  v160 = v182;
  v161 = v183;
  *(v183 + v182[11]) = v142;
  v162 = v161 + v160[12];
  v163 = v169;
  *v162 = v170;
  *(v162 + 8) = v163;
  *(v162 + 16) = 0;
  return result;
}

uint64_t sub_AC51C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v3 = type metadata accessor for MSRulesView();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = a1 + *(__chkstk_darwin(v3 - 8) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  v9 = sub_D5740();
  sub_2A5C4(v9 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository, v36);

  v10 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList);

  v11 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);

  sub_D5740();
  v12 = sub_4393C();

  sub_B13F8(v31, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v14 = swift_allocObject();
  sub_B1460(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = sub_66D4(&qword_128F90, &qword_E3E88);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *&v18[qword_128D70] = v12;
  sub_2A5C4(v36, v34);
  v19 = v35;
  v20 = sub_38BFC(v34, v35);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;

  v26 = sub_AED08(v25, v10, v11, sub_B1728, v14, v18);
  sub_67D4(v34);

  sub_67D4(v36);
  v27 = &v26[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title];
  v28 = *&v26[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title + 8];
  *v27 = 0xD000000000000013;
  *(v27 + 1) = 0x80000000000E9CF0;

  return sub_AACA8(v26, &qword_128F78, &qword_E3DF0, sub_11C90, sub_AEB10, sub_B1744, v33);
}

uint64_t sub_AC938(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSRulesView() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  v5 = sub_D5740();
  v6 = *(v5 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate + 8);
  (*(v5 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate))();
  sub_3F1B8();
}

uint64_t sub_ACA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_D63D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, enum case for EditMode.inactive(_:), v4);
  v9 = sub_D63C0();
  (*(v5 + 8))(v8, v4);
  v10 = (a3 + *(type metadata accessor for MSRulesView() + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v9)
  {
    v15[13] = 1;
    sub_D5580();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    v15[12] = 1;
    sub_D5580();
    sub_D5740();
    sub_3F564();
  }

  else
  {
    v15[15] = 0;
    sub_D5580();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    v15[14] = 0;
    return sub_D5580();
  }
}

uint64_t sub_ACCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MSRulesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = a1 + *(__chkstk_darwin(v4 - 8) + 28);
  v8 = *v7;
  v20 = *(v7 + 8);
  v21 = v8;
  v19 = *(v7 + 16);
  v18[1] = _s9ViewModelCMa_2();
  v18[0] = sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_109A8(&qword_1290D8, &qword_123F18, &qword_DBB00);
  sub_B1CD8();
  sub_B1ED0(&qword_1290E0, _s11MailRuleRowCMa);
  sub_D6340();
  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_B1F18;
  *(v12 + 24) = v11;
  v13 = (a2 + *(sub_66D4(&qword_129070, &qword_E4190) + 36));
  *v13 = sub_B1FD0;
  v13[1] = v12;
  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_B21AC;
  *(v15 + 24) = v14;
  v16 = (a2 + *(sub_66D4(&qword_129060, &qword_E4188) + 36));
  *v16 = sub_B221C;
  v16[1] = v15;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v14) = v22;
  *(a2 + *(sub_66D4(&qword_129050, &qword_E4180) + 36)) = v14;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v14) = v22;
  result = sub_66D4(&qword_129038, &qword_E4178);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_AD180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v54 = a2;
  v5 = type metadata accessor for MSRulesView();
  v6 = v5 - 8;
  v51 = *(v5 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v5);
  v50 = v8;
  v52 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_D63D0();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v45);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v43 - v13;
  v15 = *a1;
  v16 = a2 + *(v6 + 28);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  v43[1] = v18;
  v43[2] = v20;
  v43[3] = v17;
  sub_D5740();

  v21 = *(v15 + 104);
  v48 = *(v15 + 96);
  v49 = v21;

  sub_D5740();
  v22 = *(v15 + 16);
  v23 = *(v15 + 32);
  v24 = *(v15 + 48);
  v25 = *(v15 + 64);
  v26 = *(v15 + 96);
  v62[4] = *(v15 + 80);
  v62[5] = v26;
  v63 = *(v15 + 112);
  v62[2] = v24;
  v62[3] = v25;
  v62[0] = v22;
  v62[1] = v23;
  sub_26A60(v62, v64);
  v27 = sub_40E7C(v62);
  v46 = v28;
  v47 = v27;
  sub_26ABC(v62);

  v29 = *(v6 + 36);
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  v31 = v44;
  v30 = v45;
  (*(v9 + 104))(v44, enum case for EditMode.active(_:), v45);
  v32 = sub_D63C0();
  v33 = *(v9 + 8);
  v33(v31, v30);
  v33(v14, v30);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v64[4] = v59;
  v64[5] = v60;
  v65 = v61;
  v64[0] = v55;
  v64[1] = v56;
  v64[2] = v57;
  v64[3] = v58;
  v34 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v35 = *&v64[0];

    sub_FC3C(v64, &unk_123F28, &unk_E3CC0);
    if (v35 == *(v15 + 16) && *(v15 + 24) == v34)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_D6C20();
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = v52;
  sub_B13F8(v54, v52);
  v38 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_B1460(v37, v40 + v38);
  *(v40 + v39) = v15;
  v41 = v53;
  *v53 = v48;
  v41[1] = v49;
  v41[2] = v47;
  v41[3] = v46;
  *(v41 + 32) = v32 & 1;
  *(v41 + 33) = v36 & 1;
  v41[5] = sub_B2408;
  v41[6] = v40;
}

uint64_t sub_AD614(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for MSRulesView() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  v26 = *(a2 + 80);
  v27 = v8;
  v9 = *(a2 + 32);
  v23[0] = *(a2 + 16);
  v23[1] = v9;
  v10 = *(a2 + 64);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  v24 = *(a2 + 48);
  v25 = v10;
  v13 = *(a2 + 96);
  v20 = v26;
  v21 = v13;
  v16 = v12;
  v17 = v11;
  v28 = *(a2 + 112);
  v22 = *(a2 + 112);
  v18 = v24;
  v19 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A60(v23, v15);
  return sub_D5580();
}

uint64_t sub_AD754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v4 = sub_D63D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = type metadata accessor for MSRulesView();
  v13 = (a3 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  v20[0] = v15;
  v20[1] = v14;
  sub_D5740();
  sub_41738(v21, v22);

  v17 = *(v12 + 28);
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  (*(v5 + 104))(v9, enum case for EditMode.inactive(_:), v4);
  LOBYTE(v17) = sub_D63C0();
  v18 = *(v5 + 8);
  v18(v9, v4);
  result = (v18)(v11, v4);
  if (v17)
  {
    sub_D5740();
    sub_3F564();
  }

  return result;
}

uint64_t sub_AD980(uint64_t a1, uint64_t a2)
{
  v4 = sub_D63D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MSRulesView();
  v13 = *(v12 + 28);
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  (*(v5 + 104))(v9, enum case for EditMode.active(_:), v4);
  v14 = sub_D63C0();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  v16 = (a2 + *(v12 + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  _s9ViewModelCMa_2();
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
  sub_D5740();
  if (v14)
  {
    sub_431EC(a1);
  }

  else
  {
    sub_42044(a1);
  }
}

uint64_t sub_ADB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v53 = a2;
  v50 = sub_D63D0();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v50);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v44 - v6;
  v47 = sub_66D4(&qword_128EC8, &qword_E3CD0);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v9 = &v44 - v8;
  v10 = type metadata accessor for MSRulesView();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v12 = sub_66D4(&qword_121178, &qword_DB0C0);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v55._object = 0x80000000000E9CF0;
  v55._countAndFlagsBits = 0xD000000000000013;
  sub_D66D0(v55);
  v56._countAndFlagsBits = 2777980912;
  v56._object = 0xA400000000000000;
  sub_D66D0(v56);
  v43._countAndFlagsBits = 0xE000000000000000;
  v57._object = 0x80000000000E9CF0;
  v57._countAndFlagsBits = 0xD000000000000013;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v18.super.isa = v17;
  v19 = sub_D4E80(v57, v58, v18, v54, v43);
  v21 = v20;

  v54._countAndFlagsBits = v19;
  v54._object = v21;
  v22 = v46;
  sub_B13F8(v46, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v24 = swift_allocObject() + v23;
  v25 = v15;
  v26 = v22;
  sub_B1460(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_DFAC();
  sub_D6280();
  v27 = *(v10 + 28);
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6230();
  v28 = v48;
  sub_D62E0();
  sub_FC3C(v9, &qword_128EC8, &qword_E3CD0);
  v29 = v49;
  v30 = v50;
  (*(v2 + 104))(v49, enum case for EditMode.active(_:), v50);
  v31 = v29;
  LOBYTE(v29) = sub_D63C0();
  v32 = *(v2 + 8);
  v32(v31, v30);
  v32(v28, v30);
  if (v29)
  {
    v33 = 1;
  }

  else
  {
    v34 = v26 + *(v10 + 20);
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    _s9ViewModelCMa_2();
    sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v33 = LOBYTE(v54._countAndFlagsBits) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v33 & 1;
  v40 = v53;
  (*(v51 + 32))(v53, v25, v52);
  result = sub_66D4(&qword_121280, &unk_D8E40);
  v42 = (v40 + *(result + 36));
  *v42 = KeyPath;
  v42[1] = sub_B1E30;
  v42[2] = v39;
  return result;
}

uint64_t sub_AE0FC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSRulesView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_AE170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_129108, &qword_E43C0);
  return sub_AE1C8(a1, a2 + *(v4 + 44));
}

uint64_t sub_AE1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_129110, &qword_E43C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v33[-v6];
  v8 = sub_66D4(&qword_121238, &unk_D8E20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33[-v11];
  v13 = sub_66D4(&qword_129118, &qword_E43D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v36 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v33[-v17];
  v35 = sub_D5BB0();
  LOBYTE(v39[0]) = 1;
  sub_AE6E8(a1, v46);
  *&v45[7] = v46[0];
  *&v45[23] = v46[1];
  *&v45[39] = v46[2];
  *&v45[55] = v46[3];
  v34 = LOBYTE(v39[0]);
  if (*(a1 + 33))
  {
    sub_D5780();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_129120, &qword_E43D8);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_B28CC();
    sub_D5BF0();
    (*(v9 + 8))(v12, v8);
LABEL_6:
    v23 = sub_66D4(&qword_129148, &qword_E43F0);
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
    goto LABEL_7;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v20 = sub_D61C0();
    v21 = sub_D61B0();
    KeyPath = swift_getKeyPath();
    *v7 = v20;
    v7[8] = 1;
    *(v7 + 2) = KeyPath;
    *(v7 + 3) = v21;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_129120, &qword_E43D8);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_B28CC();
    sub_D5BF0();
    goto LABEL_6;
  }

  v19 = sub_66D4(&qword_129148, &qword_E43F0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
LABEL_7:
  v24 = v36;
  sub_FBD4(v18, v36, &qword_129118, &qword_E43D0);
  v25 = v35;
  v37[0] = v35;
  v37[1] = 0;
  v26 = v34;
  v38[0] = v34;
  *&v38[1] = *v45;
  *&v38[17] = *&v45[16];
  *&v38[33] = *&v45[32];
  *&v38[49] = *&v45[48];
  v27 = *&v45[63];
  *&v38[64] = *&v45[63];
  v28 = *v38;
  *a2 = v35;
  *(a2 + 16) = v28;
  v29 = *&v38[16];
  v30 = *&v38[48];
  *(a2 + 48) = *&v38[32];
  *(a2 + 64) = v30;
  *(a2 + 32) = v29;
  *(a2 + 80) = v27;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v31 = sub_66D4(&qword_129150, &qword_E43F8);
  sub_FBD4(v24, a2 + *(v31 + 64), &qword_129118, &qword_E43D0);
  sub_FBD4(v37, v39, &qword_129158, &qword_E4400);
  sub_FC3C(v18, &qword_129118, &qword_E43D0);
  sub_FC3C(v24, &qword_129118, &qword_E43D0);
  v39[0] = v25;
  v39[1] = 0;
  v40 = v26;
  v42 = *&v45[16];
  v43 = *&v45[32];
  *v44 = *&v45[48];
  *&v44[15] = *&v45[63];
  v41 = *v45;
  return sub_FC3C(v39, &qword_129158, &qword_E4400);
}

uint64_t sub_AE6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *a1;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v34 = *a1;
    v36 = a1[1];
    sub_DFAC();

    v7 = sub_D5F50();
    v9 = v8;
    v32 = v11;
    v33 = v7;
    v30 = v10 & 1;
    sub_166E0(v7, v11, v10 & 1);
    v31 = v9;
  }

  else
  {
LABEL_6:
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
  }

  v35 = a1[2];
  v37 = a1[3];
  sub_DFAC();

  v12 = sub_D5F50();
  v14 = v13;
  v16 = v15;
  sub_D61B0();
  v17 = sub_D5F00();
  v19 = v18;
  v21 = v20;

  sub_F16C(v12, v14, v16 & 1);

  sub_D5E50();
  v22 = sub_D5F20();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_F16C(v17, v19, v21 & 1);

  sub_A0010(v33, v32, v30, v31);
  sub_166E0(v22, v24, v26 & 1);

  sub_A0054(v33, v32, v30, v31);
  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v30;
  *(a2 + 24) = v31;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_F16C(v22, v24, v26 & 1);

  return sub_A0054(v33, v32, v30, v31);
}

uint64_t sub_AE90C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v16 = *(v1 + 32);
  v17 = *(v1 + 48);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = *(v1 + 48);
  sub_B288C(v15, v14);
  sub_66D4(&qword_1290E8, &qword_E4378);
  sub_109A8(&qword_1290F0, &qword_1290E8, &qword_E4378);
  sub_D6260();
  v6 = sub_D61A0();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(sub_66D4(&qword_1290F8, &qword_E43B0) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = v16;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  result = sub_66D4(&qword_129100, &qword_E43B8);
  v13 = (a1 + *(result + 36));
  *v13 = v10;
  v13[1] = sub_B2C30;
  v13[2] = v11;
  return result;
}

uint64_t sub_AEAC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113EF0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_AEB10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_114048;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_AEC9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5AC0();
  *a1 = result & 1;
  return result;
}

char *sub_AED08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v158 = a5;
  v137 = a4;
  v161 = a3;
  v159 = a2;
  v147 = *a6;
  v152 = sub_66D4(&qword_128FB8, &qword_E3ED8);
  v153 = *(v152 - 8);
  v8 = *(v153 + 64);
  __chkstk_darwin(v152);
  v151 = &v116 - v9;
  v150 = sub_66D4(&qword_128FC0, &qword_E3EE0);
  v149 = *(v150 - 8);
  v10 = *(v149 + 64);
  v11 = __chkstk_darwin(v150);
  v148 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v144 = &v116 - v13;
  v145 = sub_66D4(&qword_128FC8, &qword_E3EE8);
  v146 = *(v145 - 8);
  v14 = *(v146 + 64);
  __chkstk_darwin(v145);
  v143 = &v116 - v15;
  v141 = sub_66D4(&qword_122F80, &qword_DFB50);
  v140 = *(v141 - 8);
  v16 = *(v140 + 64);
  v17 = __chkstk_darwin(v141);
  v139 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v138 = &v116 - v19;
  v160 = sub_66D4(&qword_122F60, &unk_E2B60);
  v142 = *(v160 - 8);
  v20 = *(v142 + 64);
  v21 = __chkstk_darwin(v160);
  v131 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v128 = &v116 - v24;
  __chkstk_darwin(v23);
  v157 = &v116 - v25;
  v132 = sub_66D4(&qword_128FD0, &qword_E3EF0);
  v26 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v127 = &v116 - v27;
  v133 = sub_66D4(&qword_128FD8, &qword_E3EF8);
  v134 = *(v133 - 8);
  v28 = v134[8];
  __chkstk_darwin(v133);
  v129 = &v116 - v29;
  v135 = sub_66D4(&qword_128FE0, &unk_E3F00);
  v136 = *(v135 - 8);
  v30 = *(v136 + 64);
  __chkstk_darwin(v135);
  v130 = &v116 - v31;
  v162 = sub_66D4(&qword_124830, &qword_E1560);
  v126 = *(v162 - 8);
  v32 = *(v126 + 64);
  __chkstk_darwin(v162);
  v125 = &v116 - v33;
  v163 = sub_66D4(&qword_121070, &qword_DAFE0);
  v124 = *(v163 - 8);
  v34 = *(v124 + 64);
  __chkstk_darwin(v163);
  v123 = &v116 - v35;
  v156 = sub_66D4(&qword_124208, &unk_E1550);
  v121 = *(v156 - 8);
  v36 = *(v121 + 64);
  __chkstk_darwin(v156);
  v120 = &v116 - v37;
  v155 = sub_66D4(&qword_121068, &qword_DBEE0);
  v119 = *(v155 - 8);
  v38 = *(v119 + 64);
  __chkstk_darwin(v155);
  v118 = &v116 - v39;
  v117 = sub_66D4(&qword_128218, &unk_E1540);
  v116 = *(v117 - 8);
  v40 = *(v116 + 64);
  __chkstk_darwin(v117);
  v42 = &v116 - v41;
  v43 = sub_66D4(&qword_128210, &qword_E1538);
  v122 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v116 - v46;
  v48 = sub_66D4(&qword_121948, &unk_DC5C0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v116 - v51;
  v166[3] = type metadata accessor for MSRepositoryDefault();
  v166[4] = &off_1188F0;
  v166[0] = a1;
  v53 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__ruleName;
  v164._countAndFlagsBits = 0;
  v164._object = 0xE000000000000000;
  sub_D5530();
  v54 = *(v49 + 32);
  v54(&a6[v53], v52, v48);
  v55 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedAction;
  LOBYTE(v164._countAndFlagsBits) = 0;
  sub_D5530();
  (*(v44 + 32))(&a6[v55], v47, v43);
  v56 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedCondition;
  LOBYTE(v164._countAndFlagsBits) = 0;
  sub_D5530();
  (*(v116 + 32))(&a6[v56], v42, v117);
  v57 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionValue;
  v164._countAndFlagsBits = 0;
  v164._object = 0xE000000000000000;
  sub_D5530();
  v58 = v48;
  v54(&a6[v57], v52, v48);
  v59 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionEmailValue;
  v164._countAndFlagsBits = 0;
  v164._object = 0xE000000000000000;
  sub_D5530();
  v54(&a6[v59], v52, v48);
  v60 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionFolderValue;
  v164._countAndFlagsBits = 0;
  v164._object = 0xE000000000000000;
  sub_D5530();
  v154 = v48;
  v54(&a6[v60], v52, v48);
  v61 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionGreyText;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v164._countAndFlagsBits = 2777980912;
  v164._object = 0xA400000000000000;
  v167._countAndFlagsBits = 0x6F697469646E6F43;
  v167._object = 0xE90000000000006ELL;
  sub_D66D0(v167);
  v168._countAndFlagsBits = 2777980912;
  v168._object = 0xA400000000000000;
  sub_D66D0(v168);
  v115._countAndFlagsBits = 0xE000000000000000;
  v169._countAndFlagsBits = 0x6F697469646E6F43;
  v169._object = 0xE90000000000006ELL;
  v170.value._countAndFlagsBits = 0;
  v170.value._object = 0;
  v64.super.isa = v63;
  v65 = sub_D4E80(v169, v170, v64, v164, v115);
  v67 = v66;

  v164._countAndFlagsBits = v65;
  v164._object = v67;
  sub_D5530();
  v54(&a6[v61], v52, v58);
  v68 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionFolderMenu;
  LOBYTE(v164._countAndFlagsBits) = 1;
  v69 = v118;
  sub_D5530();
  v70 = *(v119 + 32);
  v71 = v155;
  v70(&a6[v68], v69, v155);
  v72 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionEmailInput;
  LOBYTE(v164._countAndFlagsBits) = 0;
  sub_D5530();
  v70(&a6[v72], v69, v71);
  v73 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__loadingState;
  v164 = 0;
  v74 = v120;
  sub_D5530();
  v75 = *(v121 + 32);
  v75(&a6[v73], v74, v156);
  v76 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isUpdating;
  LOBYTE(v164._countAndFlagsBits) = 0;
  sub_D5530();
  v70(&a6[v76], v69, v71);
  v77 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isDoneDisabled;
  LOBYTE(v164._countAndFlagsBits) = 0;
  sub_D5530();
  v70(&a6[v77], v69, v71);
  v78 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__state;
  v164 = 0;
  sub_D5530();
  v79 = v156;
  v75(&a6[v78], v74, v156);
  v80 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__folderState;
  v164 = 0;
  sub_D5530();
  v75(&a6[v80], v74, v79);
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxTitleLength] = 30;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxBodyLength] = 90;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxTargetLength] = 90;
  v81 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName];
  *v81 = 0xD000000000000010;
  *(v81 + 1) = 0x80000000000E6D30;
  v82 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName];
  strcpy(&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName], "Sent Messages");
  *(v82 + 7) = -4864;
  v83 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__error;
  v164 = 0;
  memset(v165, 0, 25);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v84 = v123;
  sub_D5530();
  (*(v124 + 32))(&a6[v83], v84, v163);
  v85 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__inlineErrorMessage;
  v164 = 0;
  v156 = sub_66D4(&qword_124838, &qword_E1490);
  v86 = v125;
  sub_D5530();
  (*(v126 + 32))(&a6[v85], v86, v162);
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_cancellables] = &_swiftEmptySetSingleton;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderListPublisher] = 0;
  sub_2A5C4(v166, &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository]);
  v87 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone];
  v88 = v158;
  v89 = v159;
  *v87 = v137;
  *(v87 + 1) = v88;
  v90 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title];
  *v90 = 0x5445445F454C5552;
  *(v90 + 1) = 0xEB000000004C4941;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderList] = v89;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sharedPreference] = v161;
  swift_beginAccess();

  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  v137 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_109A8(&qword_128FE8, &qword_128FD0, &qword_E3EF0);
  sub_109A8(&qword_127788, &qword_122F60, &unk_E2B60);
  v91 = v129;
  sub_D54A0();
  sub_109A8(&qword_128FF0, &qword_128FD8, &qword_E3EF8);
  v92 = v130;
  v93 = v133;
  sub_D55C0();
  (v134[1])(v91, v93);
  swift_beginAccess();
  v94 = v138;
  sub_D5540();
  swift_endAccess();
  v134 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_109A8(&qword_128FF8, &qword_128FE0, &unk_E3F00);
  v95 = v135;
  sub_D5620();
  (*(v136 + 8))(v92, v95);
  v96 = v140;
  v97 = v141;
  (*(v140 + 16))(v139, v94, v141);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v96 + 8))(v94, v97);
  swift_beginAccess();
  v98 = v157;
  sub_D5540();
  swift_endAccess();
  *(swift_allocObject() + 16) = v147;
  v99 = v143;
  v100 = v160;
  sub_D55C0();

  (*(v142 + 8))(v98, v100);
  swift_beginAccess();
  v101 = v144;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_129000, &qword_128FC8, &qword_E3EE8);
  v102 = v145;
  sub_D5620();
  (*(v146 + 8))(v99, v102);
  v103 = v149;
  v104 = v150;
  (*(v149 + 16))(v148, v101, v150);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v103 + 8))(v101, v104);
  swift_beginAccess();
  v105 = v151;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_129008, &qword_128FB8, &qword_E3ED8);

  v106 = v152;
  sub_D5610();

  (*(v153 + 8))(v105, v106);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  sub_D54F0();

  sub_67D4(v166);
  if (v164._object != &dword_0 + 1)
  {
    v107 = *v165;
    v108 = *&v165[24];
    if (*&v165[24])
    {
      v109 = HIBYTE(*&v165[24]) & 0xFLL;
      if ((*&v165[24] & 0x2000000000000000) == 0)
      {
        v109 = *&v165[16] & 0xFFFFFFFFFFFFLL;
      }

      if (v109)
      {
        v110 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName];
        v111 = *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName + 8];
        *v110 = *&v165[16];
        *(v110 + 1) = v108;
      }
    }

    if (*(&v107 + 1))
    {

      v112 = HIBYTE(*(&v107 + 1)) & 0xFLL;
      if ((*(&v107 + 1) & 0x2000000000000000) == 0)
      {
        v112 = v107 & 0xFFFFFFFFFFFFLL;
      }

      if (v112)
      {
        v113 = *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName + 8];
        *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName] = v107;
      }
    }

    else
    {
    }
  }

  return a6;
}

char *sub_B03C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7)
{
  v44[3] = type metadata accessor for MSRepositoryDefault();
  v44[4] = &off_1188F0;
  v44[0] = a4;
  v14 = &a7[qword_137AA0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v15;
  *(v14 + 12) = *(a1 + 96);
  v16 = *(a1 + 80);
  *(v14 + 4) = *(a1 + 64);
  *(v14 + 5) = v16;
  v17 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v17;
  sub_2A5C4(v44, v42);
  v18 = v43;
  v19 = sub_38BFC(v42, v43);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v40[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22);
  v24 = *v22;

  sub_26A60(a1, v41);
  v25 = sub_AED08(v24, a2, a3, a5, a6, a7);
  sub_67D4(v42);
  if (*(a1 + 88))
  {
    v26 = *(a1 + 80);
    v27 = *(a1 + 88);
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v41[0] = v26;
  *(&v41[0] + 1) = v27;
  swift_retain_n();

  sub_D5580();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);

  v30 = sub_82A68(v28, v29);
  if (v30 == 6)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v41[0]) = v31;

  sub_D5580();
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);

  v34 = sub_82A1C(v32, v33);
  if (v34 == 7)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v41[0]) = v35;

  sub_D5580();
  v41[0] = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *v42 = v41[0];

  sub_9FF94(v41, v40);
  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v42[0]) <= 6u && ((1 << SLOBYTE(v42[0])) & 0x55) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v36 = *(a1 + 72);
    if ((v42[0] & 0xFB) != 0)
    {
      if (!v36)
      {
        v37 = 0;
        v36 = 0xE000000000000000;
        goto LABEL_20;
      }
    }

    else if (!v36)
    {
      v37 = 0;
      v36 = 0xE000000000000000;
      goto LABEL_20;
    }

    v37 = *(a1 + 64);
    v38 = *(a1 + 72);

LABEL_20:
    sub_26ABC(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    v42[0] = v37;
    v42[1] = v36;

    sub_D5580();

    sub_67D4(v44);
    return v25;
  }

  sub_67D4(v44);

  sub_26ABC(a1);
  return v25;
}

uint64_t sub_B08B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v61 = a5;
  v64 = a4;
  v63 = a3;
  v60 = a2;
  v59 = sub_66D4(&qword_121070, &qword_DAFE0);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v52 - v8;
  v56 = sub_66D4(&qword_121068, &qword_DBEE0);
  v55 = *(v56 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = &v52 - v10;
  v53 = sub_66D4(&qword_124218, &unk_E3CB0);
  v65 = *(v53 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v53);
  v13 = &v52 - v12;
  v52 = sub_66D4(&qword_124210, &qword_DBE90);
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v52);
  v17 = &v52 - v16;
  v18 = sub_66D4(&qword_124208, &unk_E1550);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v23 = type metadata accessor for MSRepositoryDefault();
  v73[3] = v23;
  v73[4] = &off_1188F0;
  v73[0] = a1;
  v24 = _s9ViewModelCMa_2();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = sub_38BFC(v73, v23);
  v29 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v72[3] = v23;
  v72[4] = &off_1188F0;
  v72[0] = v33;
  v34 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__state;
  v66 = 0uLL;
  sub_D5530();
  (*(v19 + 32))(v27 + v34, v22, v18);
  v35 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__rules;
  *&v66 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_D5530();
  (*(v14 + 32))(v27 + v35, v17, v52);
  v36 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToEdit;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  memset(v67, 0, sizeof(v67));
  v66 = 0u;
  v52 = sub_66D4(&unk_123F28, &unk_E3CC0);
  sub_D5530();
  v37 = *(v65 + 32);
  v65 += 32;
  v38 = v53;
  v37(v27 + v36, v13, v53);
  v39 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__deleteDisabled;
  LOBYTE(v66) = 0;
  v40 = v54;
  sub_D5530();
  v41 = *(v55 + 32);
  v42 = v56;
  v41(v27 + v39, v40, v56);
  v43 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__moveDisabled;
  LOBYTE(v66) = 0;
  sub_D5530();
  v41(v27 + v43, v40, v42);
  v44 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__enableAddRule;
  LOBYTE(v66) = 1;
  sub_D5530();
  v41(v27 + v44, v40, v42);
  v45 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToDelete;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  memset(v67, 0, sizeof(v67));
  v66 = 0u;
  sub_D5530();
  v37(v27 + v45, v13, v38);
  v46 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__error;
  memset(v67, 0, 25);
  v66 = 0u;
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v47 = v57;
  sub_D5530();
  (*(v58 + 32))(v27 + v46, v47, v59);
  v48 = (v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_rowSize);
  *v48 = 0;
  v48[1] = 0;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_mailRuleResponse) = 0;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest) = 0;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag) = 0;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = 0;
  sub_2A5C4(v72, v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository);
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed) = v60;
  v49 = (v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);
  v50 = v62;
  *v49 = v61;
  v49[1] = v50;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference) = v63;
  *(v27 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList) = v64;

  sub_3F1B8();
  sub_67D4(v72);
  sub_67D4(v73);
  return v27;
}

unint64_t sub_B1074()
{
  result = qword_128F10;
  if (!qword_128F10)
  {
    sub_6110(&qword_128F08, &unk_E3D10);
    sub_713E8();
    sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F10);
  }

  return result;
}

unint64_t sub_B113C()
{
  result = qword_128F30;
  if (!qword_128F30)
  {
    sub_6110(&qword_128F28, &unk_E3D60);
    sub_B1ED0(&qword_128F38, &type metadata accessor for EditButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F30);
  }

  return result;
}

unint64_t sub_B1218()
{
  result = qword_128F48;
  if (!qword_128F48)
  {
    sub_6110(&qword_128ED8, &qword_E3CE0);
    sub_6110(&qword_128ED0, &qword_E3CD8);
    sub_6110(&qword_128F28, &unk_E3D60);
    sub_6110(&qword_128D08, &qword_E3850);
    sub_6110(&qword_121178, &qword_DB0C0);
    sub_A6454();
    sub_E000();
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    swift_getOpaqueTypeConformance2();
    sub_B113C();
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_128F50, &qword_128F40, &qword_E3DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F48);
  }

  return result;
}

uint64_t sub_B13F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSRulesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B1460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSRulesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B14C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MSRulesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AA84C(a1, v6, a2);
}

unint64_t sub_B1544()
{
  result = qword_128F60;
  if (!qword_128F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F60);
  }

  return result;
}

uint64_t sub_B1598@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MSRulesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_AC51C(v4, a1);
}

uint64_t sub_B1608(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MSRulesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_ACA08(a1, a2, v6);
}

unint64_t sub_B1974()
{
  result = qword_129040;
  if (!qword_129040)
  {
    sub_6110(&qword_129038, &qword_E4178);
    sub_B1A2C();
    sub_109A8(&qword_1290C0, &qword_1290C8, &unk_E41B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129040);
  }

  return result;
}

unint64_t sub_B1A2C()
{
  result = qword_129048;
  if (!qword_129048)
  {
    sub_6110(&qword_129050, &qword_E4180);
    sub_B1AE4();
    sub_109A8(&qword_1290B0, &qword_1290B8, &qword_E41B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129048);
  }

  return result;
}

unint64_t sub_B1AE4()
{
  result = qword_129058;
  if (!qword_129058)
  {
    sub_6110(&qword_129060, &qword_E4188);
    sub_B1B9C();
    sub_109A8(&qword_1290A0, &qword_1290A8, &qword_E41A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129058);
  }

  return result;
}

unint64_t sub_B1B9C()
{
  result = qword_129068;
  if (!qword_129068)
  {
    sub_6110(&qword_129070, &qword_E4190);
    sub_B1C54();
    sub_109A8(&qword_129090, &qword_129098, &qword_E41A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129068);
  }

  return result;
}

unint64_t sub_B1C54()
{
  result = qword_129078;
  if (!qword_129078)
  {
    sub_6110(&qword_129080, &qword_E4198);
    sub_B1CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129078);
  }

  return result;
}

unint64_t sub_B1CD8()
{
  result = qword_129088;
  if (!qword_129088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129088);
  }

  return result;
}

uint64_t sub_B1D4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSRulesView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_B1DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5AC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_B1E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MSRulesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AD180(a1, v6, a2);
}

uint64_t sub_B1ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B1F18(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MSRulesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AD754(a1, a2, v6);
}

uint64_t sub_B1F98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B1FD0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_B1FFC()
{
  v1 = type metadata accessor for MSRulesView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_E0C4();
  v12 = *(v5 + v1[6] + 8);

  v13 = v5 + v1[7];
  v14 = sub_D63D0();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *&v13[*(sub_66D4(&qword_128E08, qword_E3C38) + 28)];

  v16 = *(v5 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B21AC(uint64_t a1)
{
  v3 = *(type metadata accessor for MSRulesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_AD980(a1, v4);
}

uint64_t sub_B221C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_B224C()
{
  v1 = type metadata accessor for MSRulesView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + v1[5];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_E0C4();
  v13 = *(v5 + v1[6] + 8);

  v14 = v5 + v1[7];
  v15 = sub_D63D0();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *&v14[*(sub_66D4(&qword_128E08, qword_E3C38) + 28)];

  v17 = *(v5 + v1[8] + 8);

  v18 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_B2408()
{
  v1 = *(type metadata accessor for MSRulesView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AD614(v0 + v2, v3);
}

uint64_t sub_B2494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B24DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B2538()
{
  sub_6110(&qword_128F00, &qword_E3D08);
  sub_D63D0();
  sub_6110(&qword_128EF8, &qword_E3D00);
  sub_6110(&qword_128F78, &qword_E3DF0);
  sub_6110(&qword_128EF0, &qword_E3CF8);
  sub_6110(&qword_128F58, &qword_E3DD8);
  sub_6110(&qword_128EE8, &qword_E3CF0);
  sub_6110(&qword_128EE0, &qword_E3CE8);
  sub_6110(&qword_128ED8, &qword_E3CE0);
  sub_B1218();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_B1544();
  sub_109A8(&qword_128F68, &qword_128F58, &qword_E3DD8);
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_128F80, &qword_128F78, &qword_E3DF0);
  swift_getOpaqueTypeConformance2();
  sub_B1ED0(&qword_128F88, &type metadata accessor for EditMode);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B280C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_B2854()
{
  if ((*(v0 + 49) & 1) == 0)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    return v1();
  }

  return result;
}

unint64_t sub_B28CC()
{
  result = qword_129128;
  if (!qword_129128)
  {
    sub_6110(&qword_129120, &qword_E43D8);
    sub_B2984();
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129128);
  }

  return result;
}

unint64_t sub_B2984()
{
  result = qword_129130;
  if (!qword_129130)
  {
    sub_6110(&qword_129138, &unk_E43E0);
    sub_B2A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129130);
  }

  return result;
}

unint64_t sub_B2A10()
{
  result = qword_129140;
  if (!qword_129140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129140);
  }

  return result;
}

unint64_t sub_B2A68()
{
  result = qword_129160;
  if (!qword_129160)
  {
    sub_6110(&qword_129100, &qword_E43B8);
    sub_B2B20();
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129160);
  }

  return result;
}

unint64_t sub_B2B20()
{
  result = qword_129168;
  if (!qword_129168)
  {
    sub_6110(&qword_1290F8, &qword_E43B0);
    sub_109A8(&qword_129170, &qword_129178, &qword_E4408);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129168);
  }

  return result;
}

uint64_t sub_B2C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_B2CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

double sub_B2D88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_B2E18(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_B2EC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_B2F60@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_B3000(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = sub_D5340();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v8 = v59[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v9 = *v59;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v10 = v59[0];
  v59[0] = v8;
  *&v59[8] = v9;
  v59[24] = v10;
  v60 = 0uLL;
  *&v61[0] = 1;
  memset(v61 + 8, 0, 32);
  v55 = 0uLL;
  v56 = v61[0];
  v57 = v61[1];
  v58 = 0;
  v53 = *v59;
  v54 = *&v59[16];
  v11 = (v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences);
  v12 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16);
  if (v12 == 1)
  {
    goto LABEL_2;
  }

  v39 = *v11;
  if (v39 == 2 || ((v8 ^ v39) & 1) != 0)
  {
    goto LABEL_2;
  }

  if (v12)
  {
    v40 = *(v11 + 1);
  }

  else
  {
    v40 = 0;
  }

  if (v12)
  {
    v41 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16);
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  if (__PAIR128__(v41, v40) == v9)
  {
    v42 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16);
  }

  else
  {
    v43 = sub_D6C20();

    if ((v43 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  if (*(v11 + 2) != 1)
  {
    v44 = v11[24];
    if (v44 != 2 && ((v10 ^ v44) & 1) == 0)
    {
      sub_B43D4(v59);
      return v48(0);
    }
  }

LABEL_2:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v50[0]) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v13 = v47;
  v14 = sub_6610(v47, qword_137988);
  v15 = v46;
  (*(v46 + 16))(v7, v14, v13);
  v16 = sub_D5320();
  v17 = sub_D68A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[Mail Forwarding] update started", v18, 2u);
  }

  (*(v15 + 8))(v7, v13);
  v19 = sub_6648((v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository), *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository + 24));
  v20 = *(*v19 + 16);
  v21 = *(*v19 + 24);
  v52[3] = &type metadata for ServerPreference;
  v52[4] = sub_316F4();
  v22 = swift_allocObject();
  v52[0] = v22;
  v23 = v56;
  *(v22 + 48) = v55;
  *(v22 + 64) = v23;
  *(v22 + 80) = v57;
  *(v22 + 96) = v58;
  v24 = v54;
  *(v22 + 16) = v53;
  *(v22 + 32) = v24;
  v25 = objc_allocWithZone(type metadata accessor for MSUpdateServerPreferenceAPI());
  sub_13E28(v52, v51);
  v26 = v20;
  v27 = v21;
  sub_B4294(v59, v50);
  v28 = sub_45BC4(v20, v27, v51);

  sub_13EF4(v52);
  v29 = sub_1EB80();

  v50[0] = v29;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 48) = v55;
  *(v31 + 64) = v32;
  *(v31 + 80) = v57;
  v33 = v58;
  v34 = v54;
  *(v31 + 16) = v53;
  *(v31 + 32) = v34;
  *(v31 + 96) = v33;
  *(v31 + 104) = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = v48;
  *(v35 + 24) = v49;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  v36 = sub_D55D0();

  v37 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_cancellable);
  *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_cancellable) = v36;
}

uint64_t sub_B35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = v13;
  v55 = *(a1 + 32);
  v56 = v12;
  LODWORD(v15) = *(a1 + 40);
  if (v12)
  {
    if (sub_3EB44())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = v5;
      v22 = sub_D68B0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        LODWORD(v51) = v15;
        v15 = v23;
        v24 = swift_slowAlloc();
        v52 = v14;
        v25 = v24;
        v59 = v24;
        *v15 = 136642819;
        v26 = sub_558F0(v16, v18, &v59);
        v27 = v21;
        v28 = v20;
        v29 = v26;

        *(v15 + 4) = v29;
        _os_log_impl(&dword_0, v28, v22, "[Mail Forwarding] params: %{sensitive}s", v15, 0xCu);
        sub_67D4(v25);
        v14 = v52;

        LOBYTE(v15) = v51;

        (*(v27 + 8))(v11, v4);
        v5 = v27;
      }

      else
      {

        (*(v21 + 8))(v11, v4);
        v5 = v21;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v30, v4);
    v31 = v56;

    v32 = v31;
    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v52 = v14;
      v36 = v35;
      v37 = v5;
      v38 = swift_slowAlloc();
      v65 = v38;
      *v36 = 136315138;
      v59 = v54;
      v60 = v32;
      v61 = v52;
      LOBYTE(v62) = v53 & 1;
      v63 = v55;
      v64 = v15 & 1;
      sub_6780();
      v39 = sub_D6C60();
      v41 = sub_558F0(v39, v40, &v65);
      v51 = v4;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "[Mail Forwarding] update failed: %s", v36, 0xCu);
      sub_67D4(v38);

      v14 = v52;

      (*(v37 + 8))(v9, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v56;
    if (v56)
    {
      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (v56)
    {
      v45 = v14;
    }

    else
    {
      v45 = 0;
    }

    if (v56)
    {
      v46 = v53 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v56)
    {
      v47 = v55;
    }

    else
    {
      v47 = 0;
    }

    if (v56)
    {
      v48 = v15 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v43;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_B3B6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Mail Forwarding] update successful", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return a2(1);
}

uint64_t sub_B3D18()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__enabled;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__forwardTo;
  v5 = sub_66D4(&qword_121948, &unk_DC5C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__deleteAfter, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__isDoneDisabled, v2);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__error;
  v7 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__isUpdating, v2);
  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository));
  v8 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_cancellable);

  v9 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 56);
  v14 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 80);
  v13 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 64);
  sub_B4480(*(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 8), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 24), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 32), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 40), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 48));
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v10, v11);
}

uint64_t _s11descr112941C9ViewModelCMa()
{
  result = qword_1291F0;
  if (!qword_1291F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B3F6C()
{
  sub_116AC(319, &qword_120ED8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_116AC(319, &qword_121638);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_3030C();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_B40B4@<X0>(uint64_t *a1@<X8>)
{
  _s11descr112941C9ViewModelCMa();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

uint64_t sub_B423C()
{
  v1 = v0[4];

  if (v0[8] != 1)
  {

    v2 = v0[10];

    v3 = v0[12];
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_B42F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4328()
{
  v1 = v0[4];

  if (v0[8] != 1)
  {

    v2 = v0[10];

    v3 = v0[12];
  }

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_B4394()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_B4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {

    sub_31650(a5, a6, a7);
  }
}

__n128 sub_B450C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_B4530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_B458C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_B4614(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_B4648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_B46A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_B4714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_B4770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_B47FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_B4848(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_B48BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_D4F20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImportProviderImage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_B4A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_D4F20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImportProviderImage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_B4B58()
{
  sub_D4F20();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImportProviderImage(319);
    if (v1 <= 0x3F)
    {
      sub_B4C04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B4C04()
{
  if (!qword_129460)
  {
    v0 = sub_D6930();
    if (!v1)
    {
      atomic_store(v0, &qword_129460);
    }
  }
}

uint64_t sub_B4C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B4CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B4D58()
{
  result = sub_D4F20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B4DC4(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; i += 4)
    {
      v6 = i[1];
      v15[0] = *i;
      v15[1] = v6;
      v8 = *i;
      v7 = i[1];
      v16[0] = i[2];
      *(v16 + 9) = *(i + 41);
      v12 = v8;
      v13 = v7;
      v14[0] = i[2];
      *(v14 + 9) = *(i + 41);
      sub_5842C(v15, &v9);
      sub_B5904(&v12, a2);
      if (v2)
      {
        break;
      }

      v9 = v12;
      v10 = v13;
      v11[0] = v14[0];
      *(v11 + 9) = *(v14 + 9);
      result = sub_584E0(&v9);
      if (!--v3)
      {
        return result;
      }
    }

    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 9) = *(v14 + 9);
    return sub_584E0(&v9);
  }

  return result;
}

void sub_B4EAC()
{
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  v3 = *(v0 + 48);
  v4 = *(v3 + 16);
  v5 = v3 + 48;
LABEL_2:
  v6 = (v5 + 24 * v1);
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_56;
    }

    v8 = *v6;
    v6 += 24;
    ++v1;
    if (v8)
    {
      v9 = *(v6 - 5);
      v10 = *(v6 - 4);

      *&v64 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BB0(0, v2[2] + 1, 1);
        v2 = v64;
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_11BB0((v11 > 1), v12 + 1, 1);
        v2 = v64;
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v9;
      v13[5] = v10;
      *(v13 + 48) = 1;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  sub_63AE8(v0, &v64);
  if (v14)
  {
    v15 = (v2 + 5);
    v16 = _swiftEmptyArrayStorage;
    do
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      v69 = *(v0 + 32);
      v64 = *(v0 + 32);

      sub_9FF94(&v69, v63);
      v70._countAndFlagsBits = 64;
      v70._object = 0xE100000000000000;
      sub_D66D0(v70);

      v71._countAndFlagsBits = v18;
      v71._object = v17;
      sub_D66D0(v71);

      v19 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_A5A6C(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_A5A6C((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      *&v16[16 * v21 + 32] = v19;

      v68 = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_80370(v0);

  v22 = *(v0 + 56);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
LABEL_21:
    v26 = (v25 + (v24 << 6));
    v27 = v24;
    while (v27 < v23)
    {
      v28 = *v26;
      v29 = v26[1];
      v30 = v26[2];
      *&v66[9] = *(v26 + 41);
      v65 = v29;
      *v66 = v30;
      v64 = v28;
      v24 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_58;
      }

      if (v66[24])
      {
        sub_5842C(&v64, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_11C10(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v32 = _swiftEmptyArrayStorage[2];
        v31 = _swiftEmptyArrayStorage[3];
        if (v32 >= v31 >> 1)
        {
          sub_11C10((v31 > 1), v32 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v32 + 1;
        v33 = &_swiftEmptyArrayStorage[8 * v32];
        v34 = v64;
        v35 = v65;
        v36 = *v66;
        *(v33 + 73) = *&v66[9];
        v33[3] = v35;
        v33[4] = v36;
        v33[2] = v34;
        if (v24 != v23)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      ++v27;
      v26 += 4;
      if (v24 == v23)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_57;
  }

LABEL_32:
  sub_B4DC4(_swiftEmptyArrayStorage, &v68);

  v37 = *(v0 + 64);
  if (!v37)
  {
    return;
  }

  v38 = *(v37 + 16);
  if (!v38)
  {
LABEL_46:
    v52 = _swiftEmptyArrayStorage[2];
    if (v52)
    {
      v53 = &_swiftEmptyArrayStorage[4];
      do
      {
        v64 = *v53;
        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        v56 = *(v53 + 1);
        v67 = v53[8];
        *v66 = v55;
        *&v66[16] = v54;
        v65 = v56;
        v57 = v56;
        v62 = v64;
        sub_13E98(&v64, v63);

        v72._countAndFlagsBits = 64;
        v72._object = 0xE100000000000000;
        sub_D66D0(v72);
        v63[0] = v62;

        sub_D66D0(v57);

        v58 = v63[0];
        v59 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_A5A6C(0, *(v59 + 2) + 1, 1, v59);
        }

        v61 = *(v59 + 2);
        v60 = *(v59 + 3);
        if (v61 >= v60 >> 1)
        {
          v59 = sub_A5A6C((v60 > 1), v61 + 1, 1, v59);
        }

        *(v59 + 2) = v61 + 1;
        *&v59[16 * v61 + 32] = v58;
        sub_1409C(&v64);
        v68 = v59;
        v53 += 9;
        --v52;
      }

      while (v52);
    }

    return;
  }

  v39 = 0;
  v40 = v37 + 32;
LABEL_35:
  v41 = (v40 + 72 * v39);
  v42 = v39;
  while (v42 < v38)
  {
    v64 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v67 = *(v41 + 8);
    *v66 = v44;
    *&v66[16] = v45;
    v65 = v43;
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_60;
    }

    if (v66[0])
    {
      sub_13E98(&v64, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BF0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v47 = _swiftEmptyArrayStorage[2];
      v46 = _swiftEmptyArrayStorage[3];
      if (v47 >= v46 >> 1)
      {
        sub_11BF0((v46 > 1), v47 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v47 + 1;
      v48 = &_swiftEmptyArrayStorage[9 * v47];
      *(v48 + 2) = v64;
      v49 = v65;
      v50 = *v66;
      v51 = *&v66[16];
      v48[12] = v67;
      *(v48 + 4) = v50;
      *(v48 + 5) = v51;
      *(v48 + 3) = v49;
      if (v39 != v38)
      {
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    ++v42;
    v41 = (v41 + 72);
    if (v39 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_B5458()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_11B90(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v16 = *(v0 + 32);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v14 = v16;

      sub_9FF94(&v16, &v13);
      v17._countAndFlagsBits = 64;
      v17._object = 0xE100000000000000;
      sub_D66D0(v17);

      v18._countAndFlagsBits = v5;
      v18._object = v6;
      sub_D66D0(v18);

      v7 = v14;
      v15 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_11B90((v8 > 1), v9 + 1, 1);
        v3 = v15;
      }

      v3[2] = v9 + 1;
      *&v3[2 * v9 + 4] = v7;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  v10 = v3[4];
  v11 = v3[5];

LABEL_9:

  return v10;
}

uint64_t sub_B55C0()
{
  v1 = v0[2];
  v2 = (v1 + 48);
  v3 = *(v1 + 16) + 1;
  v4 = 0x632E64756F6C6369;
  while (--v3)
  {
    v5 = v2 + 24;
    v6 = *v2;
    v2 += 24;
    if (v6 == 1)
    {
      v4 = *(v5 - 5);
      v7 = *(v5 - 4);

      goto LABEL_6;
    }
  }

  v7 = 0xEA00000000006D6FLL;
LABEL_6:
  v9 = *v0;
  v10 = v0[1];

  v11._countAndFlagsBits = 64;
  v11._object = 0xE100000000000000;
  sub_D66D0(v11);

  v12._countAndFlagsBits = v4;
  v12._object = v7;
  sub_D66D0(v12);

  return v9;
}

void sub_B5690()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v4 + 24 * v1);
  while (1)
  {
    if (v3 == v1)
    {
      v14 = v5[2];
      if (v14)
      {
        v27 = _swiftEmptyArrayStorage;
        sub_11B90(0, v14, 0);
        v15 = _swiftEmptyArrayStorage;
        v28 = *(v24 + 32);
        v16 = (v5 + 5);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          v26 = v28;

          sub_9FF94(&v28, v25);
          v29._countAndFlagsBits = 64;
          v29._object = 0xE100000000000000;
          sub_D66D0(v29);

          v30._countAndFlagsBits = v17;
          v30._object = v18;
          sub_D66D0(v30);

          v19 = v26;
          v27 = v15;
          v21 = v15[2];
          v20 = v15[3];
          if (v21 >= v20 >> 1)
          {
            sub_11B90((v20 > 1), v21 + 1, 1);
            v15 = v27;
          }

          v15[2] = v21 + 1;
          *&v15[2 * v21 + 4] = v19;
          v16 += 3;
          --v14;
        }

        while (v14);

        if (v15[2])
        {
          goto LABEL_18;
        }
      }

      else
      {

        v15 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_18:
          v22 = v15[4];
          v23 = v15[5];

          return;
        }
      }

      sub_B5458();
      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_22;
    }

    v8 = *v6;
    v6 += 24;
    ++v1;
    if (v8)
    {
      v10 = *(v6 - 5);
      v9 = *(v6 - 4);

      *&v28 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BB0(0, v5[2] + 1, 1);
        v5 = v28;
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_11BB0((v11 > 1), v12 + 1, 1);
        v5 = v28;
      }

      v5[2] = v12 + 1;
      v13 = &v5[3 * v12];
      v13[4] = v10;
      v13[5] = v9;
      *(v13 + 48) = 1;
      v1 = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_B5904(uint64_t result, char **a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v18[0] = *result;
  v18[1] = v4;
  v19[0] = *(result + 32);
  *(v19 + 9) = *(result + 41);
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v4 + 48;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 24 * v3);
  while (1)
  {
    if (v6 == v3)
    {
      sub_5842C(v18, &v17);
      sub_B8F58(v8, a2, v18);
      sub_584E0(v18);
    }

    if (v3 >= *(v5 + 16))
    {
      break;
    }

    ++v3;
    v10 = v9 + 24;
    v11 = *v9;
    v9 += 24;
    if (v11)
    {
      v20 = v7;
      v12 = *(v10 - 4);
      v16 = *(v10 - 5);

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((result & 1) == 0)
      {
        result = sub_11BB0(0, v8[2] + 1, 1);
        v8 = v17;
      }

      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_11BB0((v13 > 1), v14 + 1, 1);
        v8 = v17;
      }

      v8[2] = v14 + 1;
      v15 = &v8[3 * v14];
      v15[4] = v16;
      v15[5] = v12;
      *(v15 + 48) = 1;
      v7 = v20;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B5A84(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_1295C0, &qword_E4D28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BAC40();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_D6BC0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    sub_D6B80();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v19) = 2;
    sub_D6BC0();
    v19 = v3[6];
    HIBYTE(v18) = 3;
    sub_66D4(&qword_129560, &qword_E4D00);
    sub_BAB68();
    sub_D6BF0();
    v19 = v3[7];
    HIBYTE(v18) = 4;
    sub_66D4(&qword_128A58, qword_E2FB0);
    sub_BAE44();
    sub_D6BF0();
    v19 = v3[8];
    HIBYTE(v18) = 5;
    sub_66D4(&qword_128A60, &qword_E4D20);
    sub_BAEC8();
    sub_D6BB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_B5D40(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_66D4(&qword_129788, &qword_E5868);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BCB9C();
  sub_D6D00();
  v16 = 0;
  sub_D6BC0();
  if (!v4)
  {
    v15 = 1;
    sub_D6BD0();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_B5ED4()
{
  v1 = *v0;
  v2 = 1682535268;
  v3 = 0xD000000000000010;
  v4 = 0x73657361696C61;
  if (v1 != 4)
  {
    v4 = 0x6F446D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6C6C7566;
  if (v1 != 1)
  {
    v5 = 0x64496C69616D65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B5F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B90A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B5FC0(uint64_t a1)
{
  v2 = sub_BAC40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B5FFC(uint64_t a1)
{
  v2 = sub_BAC40();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_B6038@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_B92B4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_B60A4()
{
  if (*v0)
  {
    result = 0x6E6553776F6C6C61;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_B60E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6553776F6C6C61 && a2 == 0xED00006D6F724664)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_B61C8(uint64_t a1)
{
  v2 = sub_BCB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B6204(uint64_t a1)
{
  v2 = sub_BCB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B6240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_B9774(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_B6294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_D6C20();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_B62F4(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129640, &qword_E4D68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBD04();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_D6BC0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  sub_D6BC0();
  v15 = *(v3 + 32);
  v21[13] = 2;
  sub_D6BD0();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  sub_D6B80();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  sub_D6B80();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_B64D4()
{
  v1 = *v0;
  v2 = 0x64496C69616D65;
  v3 = 0x6E6553776F6C6C61;
  v4 = 0x656D614E6C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B6574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B994C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B659C(uint64_t a1)
{
  v2 = sub_BBD04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B65D8(uint64_t a1)
{
  v2 = sub_BBD04();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_B6614@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_B9AFC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_B6680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_B8B90(v7, v9) & 1;
}

uint64_t sub_B66DC(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129578, &qword_E4D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BAA3C();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_D6BC0();
  if (!v2)
  {
    v20 = v3[2];
    v19[15] = 1;
    sub_66D4(&qword_129560, &qword_E4D00);
    sub_BAB68();
    sub_D6BF0();
    v13 = v3[3];
    v14 = v3[4];
    v19[14] = 2;
    sub_D6B80();
    v15 = v3[5];
    v16 = v3[6];
    v19[13] = 3;
    sub_D6B80();
    v17 = *(v3 + 56);
    v19[12] = 4;
    sub_D6BD0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B68E4()
{
  v1 = *v0;
  v2 = 0x64496C69616D65;
  v3 = 0x656D614E6C6C7566;
  v4 = 0x6C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0x6576697463417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B6980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B9E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B69A8(uint64_t a1)
{
  v2 = sub_BAA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B69E4(uint64_t a1)
{
  v2 = sub_BAA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B6A20@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_BA01C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_B6A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_D6C20();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_B6B40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_B8D6C(v5, v7) & 1;
}

uint64_t sub_B6B9C(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129540, &qword_E4CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8 - 8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BA924();
  sub_D6D00();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_D6B90();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    LOBYTE(v21) = 1;
    sub_D6B80();
    v14 = v3[24];
    LOBYTE(v21) = 2;
    sub_D6B90();
    v15 = *(v3 + 3);
    v25[0] = *(v3 + 2);
    v25[1] = v15;
    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    v25[2] = *(v3 + 4);
    v26 = *(v3 + 10);
    v21 = v17;
    v22 = v16;
    v23 = *(v3 + 4);
    v24 = *(v3 + 10);
    v27 = 3;
    sub_BA9CC(v25, v20);
    sub_46A70();
    sub_D6BB0();
    sub_31650(v21, *(&v21 + 1), v22);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B6DEC()
{
  v1 = 0x4564726177726F66;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636176;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_B6E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BA3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B6EA4(uint64_t a1)
{
  v2 = sub_BA924();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B6EE0(uint64_t a1)
{
  v2 = sub_BA924();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B6F1C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_BA530(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_B6F90(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129600, &qword_E4D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BB6EC();
  sub_D6D00();
  v11 = *v3;
  v19[15] = 0;
  sub_D6B90();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[14] = 1;
  sub_D6B80();
  v14 = v3[3];
  v15 = v3[4];
  v19[13] = 2;
  sub_D6B80();
  v17 = v3[5];
  v18 = v3[6];
  v19[12] = 3;
  sub_D6B80();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B7150()
{
  v1 = 0x7541656C62616E65;
  v2 = 0x6E6F697461636176;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_B71E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BAF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B7210(uint64_t a1)
{
  v2 = sub_BB6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B724C(uint64_t a1)
{
  v2 = sub_BB6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B7288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_BB0D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_B72F0(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_1295E8, &qword_E4D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BB698();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_D6B80();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_D6B80();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_D6B80();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B7490()
{
  v1 = 0x69614D6873617274;
  if (*v0 != 1)
  {
    v1 = 0x6C69614D746E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_B7508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BB360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B7530(uint64_t a1)
{
  v2 = sub_BB698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B756C(uint64_t a1)
{
  v2 = sub_BB698();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B75A8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_BB494(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_B7604(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129620, &qword_E4D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBC08();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_D6BC0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19[14] = 1;
    sub_D6BC0();
    v19[13] = *(v3 + 32);
    v19[12] = 2;
    sub_BBCB0();
    sub_D6BF0();
    v16 = v3[5];
    v19[11] = 3;
    sub_D6BE0();
    v17 = v3[6];
    v18 = *(v3 + 56);
    v19[10] = 4;
    sub_D6BA0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_B7828()
{
  v1 = *v0;
  v2 = 0x6449626F6ALL;
  v3 = 0x737574617473;
  v4 = 0x6D69547472617473;
  if (v1 != 3)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B78BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BB740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B78E4(uint64_t a1)
{
  v2 = sub_BBC08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B7920(uint64_t a1)
{
  v2 = sub_BBC08();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B795C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_BB8EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_B79E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BCC44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_B7A18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x44455452415453;
  v5 = 0xEB00000000444554;
  v6 = 0x524154535F544F4ELL;
  if (v2 != 6)
  {
    v6 = 0x444554454C4544;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEE00524F5252455FLL;
  v8 = 0x4C414E5245544E49;
  if (v2 != 4)
  {
    v8 = 0x524F5252455F4353;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x574549564552;
  if (v2 != 2)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000000000E6E90;
  }

  if (*v1)
  {
    v4 = 0x4554454C504D4F43;
    v3 = 0xE900000000000044;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_B7BE0(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129668, &qword_E4D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBD58();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_D6BC0();
  if (!v2)
  {
    v13 = type metadata accessor for ImportProvider(0);
    v14 = v13[5];
    v20[14] = 1;
    sub_D4F20();
    sub_BBDAC(&qword_129670, &type metadata accessor for URL);
    sub_D6BF0();
    v15 = v13[6];
    v20[13] = 2;
    type metadata accessor for ImportProviderImage(0);
    sub_BBDAC(&qword_129678, type metadata accessor for ImportProviderImage);
    sub_D6BF0();
    v16 = (v3 + v13[7]);
    v17 = *v16;
    v18 = v16[1];
    v20[12] = 3;
    sub_D6B80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_B7E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = type metadata accessor for ImportProviderImage(0);
  v3 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D4F20();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_66D4(&qword_129648, &qword_E4D70);
  v35 = *(v38 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v38);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ImportProvider(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBD58();
  v37 = v11;
  v17 = v39;
  sub_D6CF0();
  if (v17)
  {
    return sub_67D4(a1);
  }

  v18 = v8;
  v19 = v35;
  v20 = v36;
  v43 = 0;
  *v15 = sub_D6B40();
  v15[1] = v21;
  v39 = v21;
  v42 = 1;
  sub_BBDAC(&qword_129658, &type metadata accessor for URL);
  sub_D6B70();
  v31 = v12;
  (*(v20 + 32))(v15 + *(v12 + 20), v18, v5);
  v41 = 2;
  sub_BBDAC(&qword_129660, type metadata accessor for ImportProviderImage);
  v22 = v33;
  v34 = 0;
  sub_D6B70();
  sub_BBDF4(v22, v15 + *(v31 + 24));
  v40 = 3;
  v23 = sub_D6B00();
  v33 = v24;
  v26 = v23;
  (*(v19 + 8))(v37, v38);
  v27 = v32;
  v28 = (v15 + *(v31 + 28));
  v29 = v33;
  *v28 = v26;
  v28[1] = v29;
  sub_BBF0C(v15, v27, type metadata accessor for ImportProvider);
  sub_67D4(a1);
  return sub_BBE58(v15, type metadata accessor for ImportProvider);
}

uint64_t sub_B8304(void *a1)
{
  v3 = sub_66D4(&qword_129690, &qword_E4D88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBEB8();
  sub_D6D00();
  v11[15] = 0;
  sub_D4F20();
  sub_BBDAC(&qword_129670, &type metadata accessor for URL);
  sub_D6BF0();
  if (!v1)
  {
    v9 = *(type metadata accessor for ImportProviderImage(0) + 20);
    v11[14] = 1;
    sub_D6BF0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_B84C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_D4F20();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = __chkstk_darwin(v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v25 - v8;
  v9 = sub_66D4(&qword_129680, &qword_E4D80);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ImportProviderImage(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBEB8();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_BBDAC(&qword_129658, &type metadata accessor for URL);
  v20 = v31;
  v21 = v32;
  sub_D6B70();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_D6B70();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_BBF0C(v23, v29, type metadata accessor for ImportProviderImage);
  sub_67D4(a1);
  return sub_BBE58(v23, type metadata accessor for ImportProviderImage);
}

unint64_t sub_B888C()
{
  v1 = 0x72656469766F7270;
  v2 = 0x6567616D69;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_B8910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BCC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B8938(uint64_t a1)
{
  v2 = sub_BBD58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8974(uint64_t a1)
{
  v2 = sub_BBD58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B89E0()
{
  if (*v0)
  {
    result = 1802658148;
  }

  else
  {
    result = 0x746867696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_B8A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_B8AE8(uint64_t a1)
{
  v2 = sub_BBEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8B24(uint64_t a1)
{
  v2 = sub_BBEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B8B90(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_D6C20() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_D6C20() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
  {
    goto LABEL_12;
  }

  if (*(a1 + 48))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a2 + 48);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = *(a2 + 48);
    if (v9)
    {
LABEL_15:
      v10 = v9;
      if (v7 != *(a2 + 40))
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v10 = 0xE000000000000000;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v8 == v10)
  {

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_D6C20();

  if (v11)
  {
LABEL_22:
    if (*(a1 + 64))
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a2 + 64);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      v14 = *(a2 + 64);
      if (v14)
      {
LABEL_24:
        v15 = *(a2 + 56);
        v16 = v14;
        if (v12 != v15)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (v13 == v16)
        {
          v6 = 1;
LABEL_31:

          return v6 & 1;
        }

LABEL_30:
        v6 = sub_D6C20();
        goto LABEL_31;
      }
    }

    v16 = 0xE000000000000000;
    if (v12)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_B8D6C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_D6C20() & 1) == 0 || (sub_B6A84(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = *(a2 + 32);
    if (v7)
    {
LABEL_9:
      v8 = v7;
      if (v5 != *(a2 + 24))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  v8 = 0xE000000000000000;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v6 == v8)
  {

    goto LABEL_16;
  }

LABEL_15:
  v9 = sub_D6C20();

  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (*(a1 + 48))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a2 + 48);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_21:
    v13 = 0xE000000000000000;
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  v12 = *(a2 + 48);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_18:
  v13 = v12;
  if (v10 != *(a2 + 40))
  {
LABEL_24:
    v14 = sub_D6C20();

    if (v14)
    {
      goto LABEL_25;
    }

LABEL_26:
    v15 = 0;
    return v15 & 1;
  }

LABEL_22:
  if (v11 != v13)
  {
    goto LABEL_24;
  }

LABEL_25:
  v15 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v15 & 1;
}