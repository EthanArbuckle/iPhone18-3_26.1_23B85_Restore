id sub_1598()
{
  type metadata accessor for FindDateAndTimeClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_18C18 = result;
  return result;
}

uint64_t sub_15F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_D8C0(2, 26, 0, 0))
  {
    sub_E368();

    return sub_E198();
  }

  else
  {
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    sub_E7B8();
    swift_getWitnessTable();
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    return sub_E198();
  }
}

uint64_t sub_1754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_D8C0(2, 26, 0, 0))
  {
    sub_E368();
    sub_E198();
  }

  else
  {
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    sub_E7B8();
    swift_getWitnessTable();
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1954(uint64_t *a1, uint64_t *a2)
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

__n128 sub_19C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_19D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v25 = a5;
  v9 = a4 >> 8;
  v10 = sub_1954(&qword_184B0, &qword_EEE0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v24 - v13;
  v15 = sub_1954(&qword_18408, &qword_EDF8);
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(sub_1954(&qword_18410, &qword_EE00) + 36)];
  *v16 = v9;
  v16[1] = 1;
  v28 = a2;
  v29 = a3;
  v30 = v5;
  sub_1954(&qword_184B8, &qword_EEE8);
  sub_E578();
  if (v26 == 5 || (sub_9458(v26, HIBYTE(v5)) & 1) == 0)
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v17 = sub_E4D8();
  }

  else
  {
    v17 = sub_E4B8();
  }

  v19 = v17;
  v20 = sub_E618();
  v28 = a2;
  v29 = a3;
  v30 = v5;
  sub_E578();
  v26 = v19;
  v27 = v20;
  sub_1954(&qword_184C0, &qword_EEF0);
  sub_1D0C();
  v21 = sub_E568();
  v22 = v25;
  (*(v11 + 32))(v25, v14, v10);
  result = sub_1954(&qword_184E0, &qword_EF00);
  *(v22 + *(result + 36)) = v21;
  return result;
}

unint64_t sub_1D0C()
{
  result = qword_184C8;
  if (!qword_184C8)
  {
    sub_1DC4(&qword_184C0, &qword_EEF0);
    sub_1FA0(&qword_184D0, &qword_184D8, &qword_EEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184C8);
  }

  return result;
}

uint64_t sub_1DC4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1E10()
{
  result = qword_184E8;
  if (!qword_184E8)
  {
    sub_1DC4(&qword_184E0, &qword_EF00);
    sub_1DC4(&qword_18408, &qword_EDF8);
    sub_1FA0(&qword_184F0, &qword_18408, &qword_EDF8);
    sub_1F4C();
    swift_getOpaqueTypeConformance2();
    sub_1FA0(&qword_18500, &qword_18508, &unk_EF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184E8);
  }

  return result;
}

unint64_t sub_1F4C()
{
  result = qword_184F8;
  if (!qword_184F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F8);
  }

  return result;
}

uint64_t sub_1FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_DE88();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_DDF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_E718();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_E088();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v22 = sub_E078();
  sub_E4F8();
  v16 = v24;
  *a2 = v23;
  a2[1] = v16;
  v17 = *(type metadata accessor for DateAndTimeList() + 24);
  sub_E708();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v18 = [qword_18C18 bundleURL];
  sub_DE28();

  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v6);
  sub_DE78();
  sub_DE18();
  v22 = a1;
  type metadata accessor for DateAndTimeListState();
  result = sub_E4F8();
  v20 = v24;
  a2[2] = v23;
  a2[3] = v20;
  return result;
}

uint64_t type metadata accessor for DateAndTimeList()
{
  result = qword_18568;
  if (!qword_18568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DE08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_DE08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243C()
{
  sub_2510(319, &qword_18578, &type metadata accessor for DateAndTimeSettingsState);
  if (v0 <= 0x3F)
  {
    sub_2510(319, &unk_18580, type metadata accessor for DateAndTimeListState);
    if (v1 <= 0x3F)
    {
      sub_DE08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2510(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E528();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2580@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_1954(&qword_185B8, &qword_EFA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v61 = &v49 - v4;
  v5 = sub_DE08();
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E688();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DateAndTimeList();
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1954(&qword_185C0, &qword_EFB0);
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  __chkstk_darwin(v19);
  v62 = &v49 - v21;
  sub_6F50(v1, v18);
  v22 = *(v16 + 80);
  v23 = (v22 + 16) & ~v22;
  v55 = v17;
  v53 = v22;
  v24 = swift_allocObject();
  v54 = v23;
  v56 = v18;
  sub_6FB8(v18, v24 + v23);
  v64 = sub_701C;
  v65 = v24;
  *v13 = 0xD000000000000024;
  v13[1] = 0x800000000000F880;
  v50 = v10;
  v25 = *(v10 + 104);
  v51 = v9;
  v26 = v9;
  v27 = v8;
  v28 = v61;
  v25(v13, enum case for SettingsEventImage.graphicIcon(_:), v26);
  v29 = *(v63 + 16);
  v30 = v1 + *(v15 + 32);
  v52 = v5;
  v29(v27, v30, v5);
  v57 = v1;
  sub_5C90();
  sub_DE38();
  v31 = sub_DE48();
  v32 = *(v31 - 8);
  result = (*(v32 + 48))(v28, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = sub_1954(&qword_185C8, &qword_EFB8);
    v34 = sub_1FA0(&qword_185D0, &qword_185C8, &qword_EFB8);
    sub_E3F8();

    (*(v63 + 8))(v27, v52);
    (*(v50 + 8))(v13, v51);

    (*(v32 + 8))(v28, v31);
    v35 = v57;
    v36 = v57[1];
    v68 = *v57;
    v69 = v36;
    sub_1954(&qword_185D8, &qword_EFC0);
    sub_E518();
    v37 = v64;
    v38 = v65;
    v39 = v66;
    swift_getKeyPath();
    v68 = v37;
    v69 = v38;
    v70 = v39;
    sub_1954(&qword_185E0, &qword_EFF8);
    sub_E588();

    v40 = v56;
    sub_6F50(v35, v56);
    v41 = v54;
    v42 = swift_allocObject();
    sub_6FB8(v40, v42 + v41);
    sub_1954(&qword_185E8, &qword_F000);
    v64 = v49;
    v65 = v34;
    swift_getOpaqueTypeConformance2();
    v43 = type metadata accessor for TimeZoneSearchList();
    v44 = sub_E088();
    v45 = sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList);
    v46 = sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState);
    v64 = v43;
    v65 = v44;
    v66 = v45;
    v67 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = v59;
    v48 = v62;
    sub_E488();

    return (*(v58 + 8))(v48, v47);
  }

  return result;
}

uint64_t sub_2C98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a3;
  v4 = sub_E1C8();
  v67 = *(v4 - 8);
  v68 = v4;
  v69 = *(v67 + 64);
  __chkstk_darwin(v4);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateAndTimeList();
  v7 = v6 - 8;
  v65 = *(v6 - 8);
  v64 = *(v65 + 64);
  __chkstk_darwin(v6);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_DE08();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1954(&qword_18610, &qword_F048);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v57 = sub_1954(&qword_18618, &qword_F050);
  v60 = *(v57 - 8);
  v16 = *(v60 + 64);
  __chkstk_darwin(v57);
  v18 = &v54 - v17;
  v19 = sub_1954(&qword_18620, &qword_F058);
  v20 = *(v19 - 8);
  v62 = v19;
  v63 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v55 = &v54 - v22;
  v72 = a2;
  sub_1954(&qword_18628, &qword_F060);
  sub_1FA0(&qword_18630, &qword_18628, &qword_F060);
  sub_E3A8();
  v23 = sub_E608();
  v54 = a2;
  v25 = *a2;
  v24 = a2[1];
  v74 = v25;
  v75 = v24;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v26 = sub_E028();

  v27 = &v15[*(sub_1954(&qword_18638, &qword_F068) + 36)];
  *v27 = v23;
  v27[8] = v26 & 1;
  v28 = sub_E608();
  v74 = v25;
  v75 = v24;
  sub_E508();
  v29 = sub_DFA8();

  v30 = &v15[*(v12 + 36)];
  *v30 = v28;
  v30[8] = v29 & 1;
  v31 = sub_71EC();
  sub_E3E8();
  sub_7FFC(v15, &qword_18610, &qword_F048);
  v32 = v54;
  (*(v58 + 16))(v56, &v54[*(v7 + 32)], v59);
  v33 = sub_E3C8();
  v35 = v34;
  LOBYTE(v25) = v36;
  v74 = v12;
  v75 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = v57;
  sub_E468();
  sub_7388(v33, v35, v25 & 1);

  v40 = v39;
  (*(v60 + 8))(v18, v39);
  v41 = *(v32 + 24);
  v74 = *(v32 + 16);
  v75 = v41;
  sub_1954(&qword_18670, &qword_F080);
  sub_E508();
  v42 = v73;
  swift_getKeyPath();
  v74 = v42;
  sub_7F44(&qword_18678, type metadata accessor for DateAndTimeListState);
  sub_DEA8();

  v43 = *(v42 + 16);

  LOBYTE(v73) = v43;
  v44 = v61;
  sub_6F50(v32, v61);
  v46 = v66;
  v45 = v67;
  v47 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v48 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v49 = v45;
  v50 = (v64 + *(v45 + 80) + v48) & ~*(v45 + 80);
  v51 = swift_allocObject();
  sub_6FB8(v44, v51 + v48);
  (*(v49 + 32))(v51 + v50, v46, v47);
  sub_1954(&qword_18680, &qword_F0B0);
  v74 = v40;
  v75 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_7608();
  v52 = v62;
  sub_E4A8();

  return (*(v63 + 8))(v38, v52);
}

uint64_t sub_33E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1954(&qword_18698, &qword_F0B8);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  v5 = __chkstk_darwin(v3);
  v39 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v30 - v7;
  v8 = sub_1954(&qword_186A0, &qword_F0C0);
  v32 = *(v8 - 8);
  v9 = v32;
  v33 = v8;
  v10 = *(v32 + 64);
  v11 = __chkstk_darwin(v8);
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v41 = a1;
  sub_1954(&qword_186A8, &qword_F0C8);
  sub_1FA0(&qword_186B0, &qword_186A8, &qword_F0C8);
  v31 = v14;
  sub_E5A8();
  v40 = a1;
  v15 = sub_E298();
  v44 = 0;
  sub_611C(a1, &v45);
  v51 = v46[3];
  v52 = v46[4];
  v53 = *&v46[5];
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  v54[0] = v45;
  v54[1] = v46[0];
  v54[2] = v46[1];
  v54[3] = v46[2];
  v54[4] = v46[3];
  v54[5] = v46[4];
  v55 = *&v46[5];
  sub_816C(&v47, &v42, &qword_186B8, &qword_F0D0);
  sub_7FFC(v54, &qword_186B8, &qword_F0D0);
  *(&v43[3] + 7) = v50;
  *(&v43[4] + 7) = v51;
  *(&v43[5] + 7) = v52;
  *(&v43[6] + 7) = v53;
  *(v43 + 7) = v47;
  *(&v43[1] + 7) = v48;
  *(&v43[2] + 7) = v49;
  *&v45 = v15;
  *(&v45 + 1) = 0x4014000000000000;
  LOBYTE(v46[0]) = v44;
  *(&v46[2] + 1) = v43[2];
  *(&v46[1] + 1) = v43[1];
  *(v46 + 1) = v43[0];
  v46[6] = *(&v43[5] + 15);
  *(&v46[5] + 1) = v43[5];
  *(&v46[4] + 1) = v43[4];
  *(&v46[3] + 1) = v43[3];
  sub_1954(&qword_186C0, &qword_F0D8);
  sub_1954(&qword_186C8, &qword_F0E0);
  sub_1FA0(&qword_186D0, &qword_186C0, &qword_F0D8);
  sub_1FA0(&qword_186D8, &qword_186C8, &qword_F0E0);
  v16 = v38;
  sub_E5B8();
  v17 = *(v9 + 16);
  v18 = v37;
  v19 = v33;
  v17(v37, v14, v33);
  v20 = v34;
  v21 = *(v34 + 16);
  v22 = v16;
  v23 = v35;
  v21(v39, v22, v35);
  v24 = v36;
  v17(v36, v18, v19);
  v25 = &v24[*(sub_1954(&qword_186E0, &qword_F0E8) + 48)];
  v26 = v39;
  v21(v25, v39, v23);
  v27 = *(v20 + 8);
  v27(v38, v23);
  v28 = *(v32 + 8);
  v28(v31, v19);
  v27(v26, v23);
  return (v28)(v37, v19);
}

uint64_t sub_38A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_1954(&qword_187F8, &qword_F260);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v80 = &v75 - v5;
  v6 = *(*(sub_1954(&qword_18800, &qword_F268) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v75 - v9;
  v10 = sub_1954(&qword_18808, &qword_F270);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v90 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v75 - v14;
  v15 = sub_1954(&qword_18810, &qword_F278);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v17 = __chkstk_darwin(v15);
  v78 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v75 - v20;
  __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v24 = a1[1];
  v76 = *a1;
  v94 = v76;
  v95 = v24;
  v86 = v24;
  v85 = sub_1954(&qword_185D8, &qword_EFC0);
  sub_E518();
  v25 = v97;
  v26 = v98;
  v27 = v99;
  swift_getKeyPath();
  v97 = v25;
  v98 = v26;
  v99 = v27;
  v84 = sub_1954(&qword_185E0, &qword_EFF8);
  sub_E588();

  sub_E558();
  v29 = a1[2];
  v28 = a1[3];
  v94 = v29;
  v95 = v28;
  v83 = v28;
  v82 = sub_1954(&qword_18670, &qword_F080);
  sub_E518();
  v30 = v97;
  v31 = v98;
  v32 = v99;
  swift_getKeyPath();
  v97 = v30;
  v98 = v31;
  v99 = v32;
  v81 = sub_1954(&qword_187A0, &qword_F1E0);
  sub_E588();

  v33 = v94;
  v34 = v95;
  LOBYTE(v27) = v96;

  v87 = v15;
  v35 = &v23[*(v15 + 36)];
  *v35 = v33;
  *(v35 + 1) = v34;
  v35[16] = v27;
  v35[17] = 0;
  v36 = [objc_opt_self() currentDevice];
  v37 = [v36 userInterfaceIdiom];

  if (v37 == &dword_0 + 1)
  {
    v75 = v29;
    v38 = v76;
    v39 = v86;
    v97 = v76;
    v98 = v86;
    sub_E508();
    v40 = sub_E028();

    v41 = 1;
    if ((v40 & 1) == 0)
    {
      v94 = v38;
      v95 = v39;
      sub_E518();
      v42 = v97;
      v43 = v98;
      v44 = v99;
      swift_getKeyPath();
      v97 = v42;
      v98 = v43;
      v99 = v44;
      sub_E588();

      sub_E558();
      v94 = v75;
      v95 = v83;
      sub_E518();
      v45 = v97;
      v46 = v98;
      v47 = v99;
      swift_getKeyPath();
      v97 = v45;
      v98 = v46;
      v99 = v47;
      sub_E588();

      v48 = v94;
      v49 = v95;
      v50 = v96;

      v39 = v86;

      v51 = v88;
      v52 = &v21[*(v87 + 36)];
      *v52 = v48;
      *(v52 + 1) = v49;
      v52[16] = v50;
      v52[17] = 1;
      sub_7EB4(v21, v51, &qword_18810, &qword_F278);
      v41 = 0;
    }

    v54 = v87;
    v53 = v88;
    (*(v77 + 56))(v88, v41, 1, v87);
    v94 = v38;
    v95 = v39;
    sub_E518();
    v55 = v97;
    v56 = v98;
    v57 = v99;
    swift_getKeyPath();
    v97 = v55;
    v98 = v56;
    v99 = v57;
    sub_E588();

    sub_E558();
    v94 = v75;
    v95 = v83;
    sub_E518();
    v58 = v97;
    v59 = v98;
    v60 = v99;
    swift_getKeyPath();
    v97 = v58;
    v98 = v59;
    v99 = v60;
    sub_E588();

    v61 = v94;
    v62 = v95;
    v63 = v96;

    v64 = &v21[*(v54 + 36)];
    *v64 = v61;
    *(v64 + 1) = v62;
    v64[16] = v63;
    v64[17] = 2;
    v65 = v79;
    sub_816C(v53, v79, &qword_18800, &qword_F268);
    v66 = v78;
    sub_816C(v21, v78, &qword_18810, &qword_F278);
    v67 = v80;
    sub_816C(v65, v80, &qword_18800, &qword_F268);
    v68 = sub_1954(&qword_18820, &qword_F318);
    sub_816C(v66, v67 + *(v68 + 48), &qword_18810, &qword_F278);
    sub_7FFC(v21, &qword_18810, &qword_F278);
    sub_7FFC(v53, &qword_18800, &qword_F268);
    sub_7FFC(v66, &qword_18810, &qword_F278);
    sub_7FFC(v65, &qword_18800, &qword_F268);
    v69 = v89;
    sub_7EB4(v67, v89, &qword_187F8, &qword_F260);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v89;
  }

  (*(v91 + 56))(v69, v70, 1, v92);
  sub_816C(v23, v21, &qword_18810, &qword_F278);
  v71 = v90;
  sub_816C(v69, v90, &qword_18808, &qword_F270);
  v72 = v93;
  sub_816C(v21, v93, &qword_18810, &qword_F278);
  v73 = sub_1954(&qword_18818, &qword_F2B0);
  sub_816C(v71, v72 + *(v73 + 48), &qword_18808, &qword_F270);
  sub_7FFC(v69, &qword_18808, &qword_F270);
  sub_7FFC(v23, &qword_18810, &qword_F278);
  sub_7FFC(v71, &qword_18808, &qword_F270);
  return sub_7FFC(v21, &qword_18810, &qword_F278);
}

uint64_t sub_4224@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_430C@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_43F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v150 = sub_E2E8();
  v148 = *(v150 - 8);
  v3 = *(v148 + 64);
  __chkstk_darwin(v150);
  v149 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1954(&qword_18738, &qword_F118);
  v5 = *(*(v146 - 8) + 64);
  v6 = __chkstk_darwin(v146);
  v145 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = &v140 - v8;
  v156 = sub_DE68();
  v143 = *(v156 - 8);
  v9 = *(v143 + 64);
  v10 = __chkstk_darwin(v156);
  v153 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v152 = &v140 - v12;
  v141 = sub_1954(&qword_18740, &qword_F120);
  v13 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v147 = &v140 - v14;
  v15 = sub_1954(&qword_18748, &qword_F128);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v157 = &v140 - v17;
  v159 = sub_1954(&qword_18750, &qword_F130);
  v158 = *(v159 - 8);
  v18 = *(v158 + 64);
  __chkstk_darwin(v159);
  v144 = &v140 - v19;
  v20 = sub_1954(&qword_18758, &qword_F138);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v161 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v160 = &v140 - v24;
  v25 = sub_1954(&qword_18760, &qword_F140);
  v26 = *(v25 - 8);
  v185 = v25;
  v186 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v178 = &v140 - v28;
  v29 = type metadata accessor for DateAndTimeList();
  v173 = *(v29 - 8);
  v172 = *(v173 + 64);
  __chkstk_darwin(v29 - 8);
  v171 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1954(&qword_18768, &qword_F148);
  v180 = *(v177 - 8);
  v31 = *(v180 + 64);
  __chkstk_darwin(v177);
  v174 = &v140 - v32;
  v33 = sub_1954(&qword_18770, &qword_F150);
  v182 = *(v33 - 8);
  v183 = v33;
  v34 = *(v182 + 64);
  __chkstk_darwin(v33);
  v175 = &v140 - v35;
  v36 = sub_1954(&qword_18778, &qword_F158);
  v37 = *(v36 - 8);
  v179 = v36 - 8;
  v38 = *(v37 + 64);
  __chkstk_darwin(v36 - 8);
  v176 = &v140 - v39;
  v40 = sub_1954(&qword_18780, &qword_F160);
  v41 = *(v40 - 8);
  v184 = v40 - 8;
  v42 = *(v41 + 64);
  __chkstk_darwin(v40 - 8);
  v181 = &v140 - v43;
  v44 = sub_1954(&qword_18788, &qword_F168);
  v45 = *(v44 - 8);
  v188 = v44 - 8;
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44 - 8);
  v155 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v187 = &v140 - v50;
  __chkstk_darwin(v49);
  v189 = &v140 - v51;
  v52 = sub_1954(&qword_18790, &qword_F170);
  v53 = *(v52 - 8);
  v164 = (v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52 - 8);
  v154 = &v140 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v58 = &v140 - v57;
  v163 = a1;
  v60 = a1[1];
  v191 = *a1;
  v59 = v191;
  v192 = v60;
  v166 = v191;
  v165 = v60;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E518();
  v61 = v194;
  v62 = v195;
  v63 = v196;
  swift_getKeyPath();
  v194 = v61;
  v195 = v62;
  v196 = v63;
  v151 = sub_1954(&qword_185E0, &qword_EFF8);
  sub_E588();

  sub_E558();
  v194 = v59;
  v195 = v60;
  sub_E508();
  LOBYTE(v61) = sub_DEF8();

  KeyPath = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v61 & 1;
  v66 = &v58[*(sub_1954(&qword_18798, &qword_F1D8) + 36)];
  *v66 = KeyPath;
  v66[1] = sub_7C18;
  v66[2] = v65;
  v67 = v163;
  v170 = v163[2];
  v169 = v163[3];
  v191 = v170;
  v192 = v169;
  v168 = sub_1954(&qword_18670, &qword_F080);
  sub_E518();
  v68 = v194;
  v69 = v195;
  v70 = v196;
  swift_getKeyPath();
  v194 = v68;
  v195 = v69;
  v196 = v70;
  v167 = sub_1954(&qword_187A0, &qword_F1E0);
  sub_E588();

  v71 = v191;
  v72 = v192;
  LOBYTE(v65) = v193;

  v73 = *(v164 + 11);
  v164 = v58;
  v74 = &v58[v73];
  *v74 = v71;
  *(v74 + 1) = v72;
  v74[16] = v65;
  v74[17] = 3;
  v75 = v171;
  sub_6F50(v67, v171);
  v76 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v77 = swift_allocObject();
  sub_6FB8(v75, v77 + v76);
  v190 = v67;
  sub_1954(&qword_187A8, &qword_F1E8);
  sub_7E00(&qword_187B0, &qword_187A8, &qword_F1E8);
  v78 = v174;
  sub_E548();
  v79 = v178;
  sub_E2F8();
  sub_1FA0(&qword_187B8, &qword_18768, &qword_F148);
  sub_1FA0(&qword_187C0, &qword_18760, &qword_F140);
  v80 = v175;
  v81 = v177;
  v82 = v185;
  sub_E438();
  (*(v186 + 8))(v79, v82);
  (*(v180 + 8))(v78, v81);
  v83 = swift_getKeyPath();
  v84 = v166;
  v85 = v165;
  v194 = v166;
  v195 = v165;
  sub_E508();
  LOBYTE(v79) = sub_DFA8();

  if (v79)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  v87 = v176;
  (*(v182 + 32))(v176, v80, v183);
  v88 = v87 + *(v179 + 44);
  *v88 = v83;
  *(v88 + 8) = v86;
  v194 = v84;
  v195 = v85;
  sub_E508();
  v89 = sub_DFA8();

  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = v89 & 1;
  v92 = v181;
  sub_7EB4(v87, v181, &qword_18778, &qword_F158);
  v93 = (v92 + *(v184 + 44));
  *v93 = v90;
  v93[1] = sub_8388;
  v93[2] = v91;
  v191 = v170;
  v192 = v169;
  sub_E518();
  v94 = v194;
  v95 = v195;
  v96 = v196;
  swift_getKeyPath();
  v194 = v94;
  v195 = v95;
  v196 = v96;
  sub_E588();

  v97 = v191;
  v98 = v192;
  v99 = v193;

  v100 = v187;
  sub_7EB4(v92, v187, &qword_18780, &qword_F160);
  v101 = v189;
  v102 = v100 + *(v188 + 44);
  *v102 = v97;
  *(v102 + 8) = v98;
  v103 = v85;
  *(v102 + 16) = v99;
  *(v102 + 17) = 4;
  sub_7EB4(v100, v101, &qword_18788, &qword_F168);
  v194 = v84;
  v195 = v85;
  sub_E508();
  LOBYTE(v100) = sub_DFA8();

  if (v100)
  {
    v104 = 1;
    v105 = v160;
    v106 = v159;
    v107 = v158;
LABEL_8:
    (*(v107 + 56))(v105, v104, 1, v106);
    v133 = v164;
    v134 = v154;
    sub_816C(v164, v154, &qword_18790, &qword_F170);
    v135 = v189;
    v136 = v155;
    sub_7F8C(v189, v155);
    v137 = v161;
    sub_816C(v105, v161, &qword_18758, &qword_F138);
    v138 = v162;
    sub_816C(v134, v162, &qword_18790, &qword_F170);
    v139 = sub_1954(&qword_187F0, &qword_F258);
    sub_7F8C(v136, v138 + *(v139 + 48));
    sub_816C(v137, v138 + *(v139 + 64), &qword_18758, &qword_F138);
    sub_7FFC(v105, &qword_18758, &qword_F138);
    sub_7FFC(v135, &qword_18788, &qword_F168);
    sub_7FFC(v133, &qword_18790, &qword_F170);
    sub_7FFC(v137, &qword_18758, &qword_F138);
    sub_7FFC(v136, &qword_18788, &qword_F168);
    return sub_7FFC(v134, &qword_18790, &qword_F170);
  }

  v108 = sub_E288();
  v110 = v109;
  LODWORD(v188) = v111;
  v113 = v112;
  v191 = v84;
  v192 = v103;
  sub_E518();
  v114 = v194;
  v115 = v195;
  v116 = v196;
  swift_getKeyPath();
  v194 = v114;
  v195 = v115;
  v196 = v116;
  sub_E588();

  v117 = v152;
  sub_DE58();
  v118 = v153;
  sub_DE58();
  sub_7F44(&qword_187C8, &type metadata accessor for Date);
  result = sub_E6F8();
  if (result)
  {
    v187 = v108;
    v120 = v143;
    v121 = *(v143 + 32);
    v122 = v142;
    v186 = v110;
    v123 = v156;
    v121(v142, v117, v156);
    v124 = v146;
    v121((v122 + *(v146 + 48)), v118, v123);
    v125 = v145;
    sub_816C(v122, v145, &qword_18738, &qword_F118);
    v126 = *(v124 + 48);
    v127 = v147;
    v121(v147, v125, v123);
    v185 = v113;
    v128 = *(v120 + 8);
    v128(v125 + v126, v123);
    sub_7EB4(v122, v125, &qword_18738, &qword_F118);
    v121(&v127[*(v141 + 36)], (v125 + *(v124 + 48)), v123);
    v128(v125, v123);
    sub_1954(&qword_187D0, &qword_F248);
    v129 = *(v148 + 72);
    v130 = (*(v148 + 80) + 32) & ~*(v148 + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_EF20;
    sub_E2C8();
    sub_E2D8();
    v191 = v131;
    sub_7F44(&qword_187D8, &type metadata accessor for DatePickerComponents);
    sub_1954(&qword_187E0, &qword_F250);
    sub_1FA0(&qword_187E8, &qword_187E0, &qword_F250);
    sub_E7D8();
    v132 = v144;
    sub_E0C8();
    v107 = v158;
    v105 = v160;
    v106 = v159;
    (*(v158 + 32))(v160, v132, v159);
    v104 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_5750@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5838(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  sub_DF98();
}

uint64_t sub_5898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v3 = sub_DFE8();
  v5 = v4;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_5938@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5A0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_DE68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = *a2;
  return sub_DFD8();
}

uint64_t sub_5AD8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_E388();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  if (v13 != 5)
  {
    v14 = *(a3 + 24);
    v16[2] = *(a3 + 16);
    v16[3] = v14;
    sub_1954(&qword_18670, &qword_F080);
    v15 = sub_E508();
    __chkstk_darwin(v15);
    v16[-2] = a4;
    LOBYTE(v16[-1]) = v13;

    sub_E608();
    sub_E378();
    sub_E158();

    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_5C90()
{
  v0 = *(*(sub_DE88() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_DDF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_E718() - 8) + 64);
  __chkstk_darwin();
  sub_1954(&qword_18608, &qword_F040);
  v7 = *(sub_DE08() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_EF30;
  sub_E708();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v11 = [qword_18C18 bundleURL];
  sub_DE28();

  (*(v2 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v1);
  sub_DE78();
  sub_DE18();
  return v10;
}

uint64_t sub_5F2C(void *a1)
{
  v2 = type metadata accessor for TimeZoneSearchList();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = swift_getKeyPath();
  sub_1954(&qword_18600, &qword_F038);
  swift_storeEnumTagMultiPayload();
  v6 = v5 + *(v2 + 20);
  sub_E088();
  sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState);
  *v6 = sub_E0E8();
  v6[8] = v7 & 1;
  v8 = v5 + *(v2 + 24);
  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  sub_E4F8();
  v9 = v14;
  *v8 = v13;
  *(v8 + 2) = v9;
  v10 = a1[1];
  *&v13 = *a1;
  *(&v13 + 1) = v10;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList);
  sub_E448();

  return sub_7188(v5);
}

id sub_611C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = *a1;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v5 = sub_E008();

  v61 = a2;
  if (v5)
  {
    *&v67 = v3;
    *(&v67 + 1) = v4;
    sub_E508();
    v6 = sub_E068();

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    else
    {
      sub_E288();
      if (qword_18400 != -1)
      {
        swift_once();
      }

      v20 = qword_18C18;
      v7 = sub_E3B8();
      v8 = v21;
      v10 = v22;
      v9 = v23 & 1;
      sub_7754(v7, v21, v23 & 1);
    }

    sub_1954(&qword_18708, &qword_F100);
    sub_1954(&qword_18710, &qword_F108);
    sub_78A8();
    sub_7924();
    sub_E2B8();
    sub_7B08(v7, v8, v9, v10);
    v25 = v67;
    v24 = v69;
    v26 = v70 | (v71 << 16);
    v27 = v72;
    goto LABEL_35;
  }

  sub_E508();
  v11 = sub_E068();

  if (v11 & 1) != 0 || (*&v68 = v3, *(&v68 + 1) = v4, sub_E508(), v12 = sub_DFF8(), , (v12))
  {
    *&v68 = v3;
    *(&v68 + 1) = v4;
    sub_E508();
    v13 = sub_DFF8();

    if (v13)
    {
      *&v68 = v3;
      *(&v68 + 1) = v4;
      sub_E508();
      v14 = sub_E068();

      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 16711680;
      }

      else
      {
        sub_E288();
        if (qword_18400 != -1)
        {
          swift_once();
        }

        v33 = qword_18C18;
        sub_E3B8();
        sub_1954(&qword_186F8, &qword_F0F8);
        sub_776C();
        sub_E2B8();
        v16 = v4;
        v15 = v3;
        v18 = *(&v69 + 1);
        v17 = v69;
        if (v71)
        {
          v34 = 0x10000;
        }

        else
        {
          v34 = 0;
        }

        v19 = v34 | v70;
        sub_7854(v3, v4, v69, *(&v69 + 1), v70, v71);
      }

      goto LABEL_34;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v29 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        sub_E288();
        if (qword_18400 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_E288();
        if (qword_18400 == -1)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_48;
  }

  v31 = result;
  v32 = MobileGestalt_get_wapiCapability();

  if (v32)
  {
    sub_E288();
    if (qword_18400 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  sub_E288();
  if (qword_18400 != -1)
  {
LABEL_46:
    swift_once();
  }

LABEL_30:
  v35 = qword_18C18;
  sub_E3B8();
  sub_E2B8();
  sub_7718(v68, *(&v68 + 1), v69);
  sub_7718(v68, *(&v68 + 1), v69);
  sub_1954(&qword_186E8, &qword_F0F0);
  sub_7E00(&qword_186F0, &qword_186E8, &qword_F0F0);
  sub_E2B8();
  sub_7764(v68, *(&v68 + 1), v69);
  sub_1954(&qword_186F8, &qword_F0F8);
  sub_776C();
  sub_E2B8();
  sub_7810(v68, *(&v68 + 1), v69);
  sub_784C(v68, *(&v68 + 1), v69);
  sub_7810(v68, *(&v68 + 1), v69);
  v16 = *(&v68 + 1);
  v15 = v68;
  v18 = *(&v69 + 1);
  v17 = v69;
  if (v71)
  {
    v36 = 0x10000;
  }

  else
  {
    v36 = 0;
  }

  v19 = v36 | v70;
  sub_7854(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
LABEL_34:
  sub_1954(&qword_18708, &qword_F100);
  sub_1954(&qword_18710, &qword_F108);
  sub_78A8();
  sub_7924();
  sub_E2B8();
  sub_7A34(v15, v16, v17, v18, v19);
  v25 = v68;
  v24 = v69;
  v26 = v70 | (v71 << 16);
  v27 = v72;
LABEL_35:
  v59 = v25;
  v60 = v24;
  v66 = v25;
  v63 = *(&v24 + 1);
  v64 = v24;
  v58 = v26;
  v65 = v27;
  sub_7AA0(v25, *(&v25 + 1), v24, *(&v24 + 1), v26, v27);
  sub_E508();
  v37 = sub_DF58();

  if (v37)
  {
    sub_E288();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v38 = qword_18C18;
    v39 = sub_E3B8();
    v41 = v40;
    v43 = v39;
    v45 = v44;
    v46 = v42 & 1;
    sub_7754(v39, v44, v42 & 1);
    v47 = v41;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  sub_E508();
  v48 = sub_DEF8();

  if (v48)
  {
    sub_E288();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v49 = qword_18C18;
    v50 = sub_E3B8();
    v52 = v51;
    v54 = v50;
    v56 = v55;
    v62 = v53 & 1;
    sub_7754(v50, v55, v53 & 1);
    v57 = v52;
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v62 = 0;
    v57 = 0;
  }

  sub_7AA0(v66, *(&v66 + 1), v64, v63, v58, v65);
  sub_7AAC(v43, v45, v46, v47);
  sub_7AAC(v54, v56, v62, v57);
  sub_7B08(v43, v45, v46, v47);
  sub_7B4C(v66, *(&v66 + 1), v64, v63, v58, v65);
  sub_7B08(v54, v56, v62, v57);
  *v61 = v59;
  *(v61 + 16) = v60;
  *(v61 + 34) = BYTE2(v58);
  *(v61 + 32) = v58;
  *(v61 + 35) = v65;
  *(v61 + 40) = v43;
  *(v61 + 48) = v45;
  *(v61 + 56) = v46;
  *(v61 + 64) = v47;
  *(v61 + 72) = v54;
  *(v61 + 80) = v56;
  *(v61 + 88) = v62;
  *(v61 + 96) = v57;
  sub_7B08(v54, v56, v62, v57);
  sub_7B08(v43, v45, v46, v47);
  return sub_7B4C(v66, *(&v66 + 1), v64, v63, v58, v65);
}

uint64_t sub_6F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndTimeList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndTimeList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DateAndTimeList() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2C98(a1, v6, a2);
}

uint64_t sub_709C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_DF88();
  *a2 = result & 1;
  return result;
}

uint64_t sub_70CC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_DF98();
}

uint64_t sub_70F4()
{
  v1 = *(type metadata accessor for DateAndTimeList() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_5F2C(v2);
}

uint64_t sub_7188(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneSearchList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_71EC()
{
  result = qword_18640;
  if (!qword_18640)
  {
    sub_1DC4(&qword_18610, &qword_F048);
    sub_72A4();
    sub_1FA0(&qword_18660, &qword_18668, &qword_F078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18640);
  }

  return result;
}

unint64_t sub_72A4()
{
  result = qword_18648;
  if (!qword_18648)
  {
    sub_1DC4(&qword_18638, &qword_F068);
    sub_1FA0(&qword_18650, &qword_18658, &qword_F070);
    sub_1FA0(&qword_18660, &qword_18668, &qword_F078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18648);
  }

  return result;
}

uint64_t sub_7388(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_73A0()
{
  v1 = (type metadata accessor for DateAndTimeList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_E1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 2);

  v15 = *(v11 + 3);

  v16 = v1[8];
  v17 = sub_DE08();
  (*(*(v17 - 8) + 8))(&v11[v16], v17);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_7524(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for DateAndTimeList() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_E1C8() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_5AD8(a1, a2, v2 + v6, v9);
}

unint64_t sub_7608()
{
  result = qword_18688;
  if (!qword_18688)
  {
    sub_1DC4(&qword_18680, &qword_F0B0);
    sub_768C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18688);
  }

  return result;
}

unint64_t sub_768C()
{
  result = qword_18690;
  if (!qword_18690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18690);
  }

  return result;
}

uint64_t sub_76E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_8928();
}

uint64_t sub_7718(uint64_t a1, uint64_t a2, char a3)
{
  sub_7754(a1, a2, a3 & 1);
}

uint64_t sub_7754(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_776C()
{
  result = qword_18700;
  if (!qword_18700)
  {
    sub_1DC4(&qword_186F8, &qword_F0F8);
    sub_7E00(&qword_186F0, &qword_186E8, &qword_F0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18700);
  }

  return result;
}

uint64_t sub_7810(uint64_t a1, uint64_t a2, char a3)
{
  sub_7388(a1, a2, a3 & 1);
}

uint64_t sub_7854(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_7754(a1, a2, a3 & 1);
  }

  else
  {

    return sub_7764(a1, a2, a3);
  }
}

unint64_t sub_78A8()
{
  result = qword_18718;
  if (!qword_18718)
  {
    sub_1DC4(&qword_18708, &qword_F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18718);
  }

  return result;
}

unint64_t sub_7924()
{
  result = qword_18720;
  if (!qword_18720)
  {
    sub_1DC4(&qword_18710, &qword_F108);
    sub_79A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18720);
  }

  return result;
}

unint64_t sub_79A8()
{
  result = qword_18728;
  if (!qword_18728)
  {
    sub_1DC4(&qword_18730, &qword_F110);
    sub_776C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18728);
  }

  return result;
}

uint64_t sub_7A34(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_7A4C(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_7A4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_7388(a1, a2, a3 & 1);
  }

  else
  {

    return sub_784C(a1, a2, a3);
  }
}

uint64_t sub_7AA0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_7AF0(result, a2, a3, a4, a5);
  }

  else
  {
    return sub_7AAC(result, a2, a3, a4);
  }
}

uint64_t sub_7AAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_7754(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7AF0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_7854(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_7B08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_7388(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7B4C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_7A34(result, a2, a3, a4, a5);
  }

  else
  {
    return sub_7B08(result, a2, a3, a4);
  }
}

uint64_t sub_7B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_DFA8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7B88(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_DFB8();
}

uint64_t sub_7BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E218();
  *a1 = result & 1;
  return result;
}

uint64_t sub_7C30()
{
  v1 = (type metadata accessor for DateAndTimeList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  v10 = sub_DE08();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7D30()
{
  v1 = *(type metadata accessor for DateAndTimeList() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_5838(v2);
}

uint64_t sub_7E00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E1E8();
  *a1 = result;
  return result;
}

uint64_t sub_7EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1954(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_7F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1954(&qword_18788, &qword_F168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1954(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8064@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_E028();
  *a2 = result & 1;
  return result;
}

uint64_t sub_8094(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_E038();
}

uint64_t sub_80BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_DF08();
  *a2 = result & 1;
  return result;
}

uint64_t sub_80EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_DF18();
}

uint64_t sub_8114@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_DF28();
  *a2 = result & 1;
  return result;
}

uint64_t sub_8144(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_DF38();
}

uint64_t sub_816C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1954(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_81D4()
{
  sub_1DC4(&qword_185C0, &qword_EFB0);
  sub_1DC4(&qword_185E8, &qword_F000);
  sub_1DC4(&qword_185C8, &qword_EFB8);
  sub_1FA0(&qword_185D0, &qword_185C8, &qword_EFB8);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for TimeZoneSearchList();
  sub_E088();
  sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList);
  sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_838C()
{
  swift_getKeyPath();
  sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState);
  sub_DEA8();

  return *(v0 + 16);
}

uint64_t sub_842C(unsigned __int8 a1)
{
  result = *(v1 + 16);
  if (result != 5)
  {
    if (a1 == 5)
    {
      goto LABEL_7;
    }

    result = sub_9458(result, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = a1;
    return result;
  }

  if (a1 == 5)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState);
  sub_DE98();
}

Swift::Int sub_856C()
{
  v1 = *v0;
  sub_E838();
  sub_E748();

  return sub_E848();
}

uint64_t sub_8664()
{
  *v0;
  *v0;
  *v0;
  sub_E748();
}

Swift::Int sub_8748()
{
  v1 = *v0;
  sub_E838();
  sub_E748();

  return sub_E848();
}

uint64_t sub_883C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_91C4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_886C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000454D4954;
  v4 = 0x5F52554F485F3432;
  v5 = 0xD000000000000017;
  v6 = 0x800000000000F7D0;
  v7 = 0x800000000000F7F0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x4E4F5A5F454D4954;
    v7 = 0xE900000000000045;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000000000F7B0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_8980()
{
  v0 = sub_E628();
  v24 = *(v0 - 8);
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E648();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E668();
  v21 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_9220();
  v16 = sub_E7A8();
  sub_E658();
  sub_E678();
  v20 = *(v9 + 8);
  v20(v13, v8);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_92A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8E74;
  aBlock[3] = &unk_15168;
  v18 = _Block_copy(aBlock);

  sub_E638();
  v25 = &_swiftEmptyArrayStorage;
  sub_92C4(&qword_188F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1954(&qword_188F8, &qword_F468);
  sub_930C();
  sub_E7D8();
  sub_E798();
  _Block_release(v18);

  (*(v24 + 8))(v3, v0);
  (*(v22 + 8))(v7, v23);
  v20(v15, v21);
}

uint64_t sub_8D30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) != 5)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState);
      sub_DE98();
    }
  }

  return result;
}

uint64_t sub_8E74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_8EB8()
{
  v1 = OBJC_IVAR____TtC11DateAndTime20DateAndTimeListState___observationRegistrar;
  v2 = sub_DEC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DateAndTimeListState()
{
  result = qword_18858;
  if (!qword_18858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8FA8()
{
  result = sub_DEC8();
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

uint64_t getEnumTagSinglePayload for DateAndTimeListState.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DateAndTimeListState.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_91C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14EA8;
  v6._object = a2;
  v4 = sub_E818(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9220()
{
  result = qword_188E8;
  if (!qword_188E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_188E8);
  }

  return result;
}

uint64_t sub_926C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_92AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_92C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_930C()
{
  result = qword_18900;
  if (!qword_18900)
  {
    sub_1DC4(&qword_188F8, &qword_F468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18900);
  }

  return result;
}

uint64_t sub_9388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A004(&qword_18678, type metadata accessor for DateAndTimeListState);
  sub_DEA8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_9458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x5F52554F485F3432;
    }

    if (v3)
    {
      v4 = 0x800000000000F7B0;
    }

    else
    {
      v4 = 0xEC000000454D4954;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000000000F7D0;
    v5 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v4 = 0x800000000000F7F0;
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x4E4F5A5F454D4954;
    v4 = 0xE900000000000045;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x800000000000F7B0;
    }

    else
    {
      v2 = 0x5F52554F485F3432;
      v6 = 0xEC000000454D4954;
    }

    if (v5 != v2)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000000000F7D0;
    if (v5 != 0xD000000000000017)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 3)
  {
    v6 = 0x800000000000F7F0;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 0xE900000000000045;
    if (v5 != 0x4E4F5A5F454D4954)
    {
LABEL_28:
      v7 = sub_E828();
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_28;
  }

  v7 = 1;
LABEL_29:

  return v7 & 1;
}

unint64_t sub_9628()
{
  result = qword_189A0;
  if (!qword_189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189A0);
  }

  return result;
}

uint64_t sub_9698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_E188();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_DE48();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_1954(&qword_189C0, &qword_F518) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_DDD8();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  sub_E778();
  v3[16] = sub_E768();
  v15 = sub_E758();

  return _swift_task_switch(sub_9880, v15, v14);
}

uint64_t sub_9880()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[4];

  sub_E6B8();
  sub_DDB8();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_9F50(v0[12]);
    goto LABEL_11;
  }

  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v9 = sub_DDC8();
  if (!v10 || (v11 = sub_91C4(v9, v10), v11 == 5))
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = v0[5];
  v14 = *(v13 + 16);
  if (v14 != 5)
  {
    if (sub_9458(v14, v12))
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v13 + 16) = v12;
      goto LABEL_11;
    }

    v13 = v0[5];
  }

  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v13;
  *(v18 + 24) = v12;
  v0[2] = v13;
  sub_A004(&qword_18678, type metadata accessor for DateAndTimeListState);
  sub_DE98();

  (*(v16 + 8))(v15, v17);

LABEL_11:
  v19 = v0[15];
  v21 = v0[11];
  v20 = v0[12];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  v26 = v0[3];
  v25 = v0[4];
  sub_E6A8();
  sub_E6C8();
  (*(v23 + 8))(v22, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_9B34()
{
  v1 = sub_1954(&qword_189A8, &qword_F500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = *v0;
  type metadata accessor for DateAndTimeList();
  sub_A004(&qword_189B0, type metadata accessor for DateAndTimeList);

  sub_E6D8();
  sub_9EEC();

  sub_E698();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_9CBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DateAndTimeListState();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 5;
  result = sub_DEB8();
  *a1 = v5;
  return result;
}

uint64_t sub_9D10@<X0>(void *a1@<X8>)
{

  return sub_1FE8(v2, a1);
}

uint64_t sub_9D4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_9DF8;

  return sub_9698(a1, a2, v2);
}

uint64_t sub_9DF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_9EEC()
{
  result = qword_189B8;
  if (!qword_189B8)
  {
    sub_1DC4(&qword_189A8, &qword_F500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189B8);
  }

  return result;
}

uint64_t sub_9F50(uint64_t a1)
{
  v2 = sub_1954(&qword_189C0, &qword_F518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A05C()
{
  sub_1DC4(&qword_189A8, &qword_F500);
  sub_9EEC();
  return swift_getOpaqueTypeConformance2();
}

void sub_A0C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DateAndTimeList();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v24.receiver - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v7.super.isa = qword_18C18;
  v23._countAndFlagsBits = 0x800000000000F860;
  v25._countAndFlagsBits = 0x5420262065746144;
  v25._object = 0xEB00000000656D69;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_DDE8(v25, v26, v7, v27, v23);
  v8 = sub_E728();

  [v1 setTitle:v8];

  v9 = *&v1[OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState];

  sub_1FE8(v10, v6);
  v11 = objc_allocWithZone(sub_1954(&qword_18A68, &unk_F5F0));
  v12 = sub_E2A8();
  v13 = [v12 view];
  if (!v13)
  {
    v14 = v12;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:v14];

    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;

      [v14 setFrame:{0.0, 0.0, v20, v22}];
      [v14 setAutoresizingMask:18];
      [v1 addChildViewController:v12];
      [v12 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_A398(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_E808();
  if (!*(a1 + 16) || (v4 = sub_AB0C(&v12), (v5 & 1) == 0))
  {
    sub_AD6C(&v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_AE48(*(a1 + 56) + 32 * v4, &v13);
  sub_AD6C(&v12);
  if (!*(&v14 + 1))
  {
LABEL_11:
    result = sub_AD04(&v13);
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  *&v13 = 35;
  *(&v13 + 1) = 0xE100000000000000;
  sub_ADC0();
  v7 = sub_E7C8();

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 16 + 16 * v8);
    v10 = *v9;
    v11 = v9[1];

    result = sub_91C4(v10, v11);
    if (result != 5)
    {
      __chkstk_darwin(result);
      sub_E608();
      sub_E168();
    }

LABEL_12:
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  if (!a2)
  {
    return result;
  }

  return a2(result);
}

id sub_A678(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState;
  v8 = type metadata accessor for DateAndTimeListState();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 5;
  sub_DEB8();
  *&v3[v7] = v11;
  if (a2)
  {
    v12 = sub_E728();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_A7B8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState;
  v5 = type metadata accessor for DateAndTimeListState();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 5;
  sub_DEB8();
  *&v1[v4] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_A894()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A904(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState);
  v4 = *(v3 + 16);
  if (v4 == 5 || (result = sub_9458(v4, a2), (result & 1) == 0))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_AC54();
    sub_DE98();
  }

  else
  {
    *(v3 + 16) = a2;
  }

  return result;
}

unint64_t sub_AB0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7E8(*(v2 + 40));

  return sub_AB50(a1, v4);
}

unint64_t sub_AB50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_AEA4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E7F8();
      sub_AD6C(v8);
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

unint64_t sub_AC54()
{
  result = qword_18678;
  if (!qword_18678)
  {
    type metadata accessor for DateAndTimeListState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18678);
  }

  return result;
}

uint64_t sub_ACAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_ACBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_AD04(uint64_t a1)
{
  v2 = sub_1954(&qword_18A58, &qword_F5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_ADC0()
{
  result = qword_18A60;
  if (!qword_18A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A60);
  }

  return result;
}

uint64_t sub_AE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1954(&qword_18A70, &unk_F600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_B00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1954(&qword_18A70, &unk_F600);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TimeZoneSearchList()
{
  result = qword_18AD0;
  if (!qword_18AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B120()
{
  sub_B1F4(319, &qword_18AE0, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_B1F4(319, &qword_18AE8, &type metadata accessor for DateAndTimeSettingsState);
    if (v1 <= 0x3F)
    {
      sub_B248();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B1F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E0D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_B248()
{
  if (!qword_18AF0)
  {
    v0 = sub_E528();
    if (!v1)
    {
      atomic_store(v0, &qword_18AF0);
    }
  }
}

uint64_t sub_B2B4@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v85 = a3;
  v4 = sub_E318();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  __chkstk_darwin(v4);
  v81 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1954(&qword_18B28, &qword_F678);
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  v9 = __chkstk_darwin(v7);
  v77 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v78 = v68 - v12;
  __chkstk_darwin(v11);
  v75 = v68 - v13;
  v74 = sub_E278();
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1954(&qword_18B78, &qword_F6B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v68 - v19;
  v71 = sub_1954(&qword_18B70, &qword_F6B0);
  v69 = *(v71 - 8);
  v21 = *(v69 + 64);
  __chkstk_darwin(v71);
  v23 = v68 - v22;
  v86 = sub_1954(&qword_18B68, &qword_F6A8);
  v70 = *(v86 - 8);
  v24 = *(v70 + 64);
  __chkstk_darwin(v86);
  v26 = v68 - v25;
  v88 = sub_1954(&qword_18B60, &qword_F6A0);
  v76 = *(v88 - 8);
  v27 = *(v76 + 64);
  __chkstk_darwin(v88);
  v87 = v68 - v28;
  v80 = sub_1954(&qword_18B38, &qword_F688);
  v29 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v89 = v68 - v30;
  sub_1954(&qword_18B98, &qword_F6C8);
  sub_D0E8();
  v90 = a1;
  sub_E3A8();
  v31 = sub_1FA0(&qword_18B80, &qword_18B78, &qword_F6B8);
  sub_E3E8();
  (*(v17 + 8))(v20, v16);
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v32 = qword_18C18;
  v33 = qword_18C18;
  v68[1] = v32;
  v34 = v33;
  v35 = sub_E3B8();
  v37 = v36;
  v39 = v38;
  v93 = v16;
  v94 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v71;
  sub_E468();
  sub_7388(v35, v37, v39 & 1);

  (*(v69 + 8))(v23, v41);
  v42 = v73;
  v43 = v72;
  v44 = v74;
  (*(v73 + 104))(v72, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v74);
  v93 = v41;
  v94 = OpaqueTypeConformance2;
  v71 = swift_getOpaqueTypeConformance2();
  v45 = v86;
  sub_E478();
  (*(v42 + 8))(v43, v44);
  (*(v70 + 8))(v26, v45);
  v46 = swift_projectBox();
  v47 = v79;
  v48 = *(v79 + 16);
  v49 = v78;
  v48(v78, v46, v7);
  v50 = v75;
  sub_E5D8();
  v51 = *(v47 + 8);
  v51(v49, v7);
  swift_getKeyPath();
  sub_E5F8();

  v51(v50, v7);
  v75 = v93;
  v74 = v94;
  v79 = v95;
  v73 = v96;
  v52 = v77;
  v48(v77, v46, v7);
  sub_E5D8();
  v51(v52, v7);
  swift_getKeyPath();
  sub_E5F8();

  v51(v49, v7);
  sub_E288();
  v53 = sub_E3B8();
  v55 = v54;
  v78 = v56;
  LOBYTE(v51) = v57 & 1;
  v58 = v81;
  sub_E308();
  v91 = v86;
  v92 = v71;
  swift_getOpaqueTypeConformance2();
  v59 = v87;
  sub_E428();
  sub_7388(v53, v55, v51);

  (*(v82 + 8))(v58, v83);
  (*(v76 + 8))(v59, v88);
  v60 = *(sub_1954(&qword_18B58, &qword_F698) + 36);
  v62 = v89;
  v61 = v90;
  v63 = &v89[v60];
  *v63 = sub_D314;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  v64 = (v62 + *(v80 + 36));
  *v64 = 0;
  v64[1] = 0;
  v64[2] = sub_D334;
  v64[3] = v61;
  __chkstk_darwin(v61);
  swift_retain_n();
  sub_1954(&qword_18B40, &qword_F690);
  sub_CE94();
  v65 = sub_1DC4(&qword_18B88, &qword_F6C0);
  v66 = sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0);
  v93 = v65;
  v94 = v66;
  swift_getOpaqueTypeConformance2();
  sub_E498();
  return sub_D35C(v62);
}

uint64_t sub_BE3C()
{
  v0 = sub_1954(&qword_18B28, &qword_F678);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_E5C8();
  (*(v1 + 8))(v4, v0);
  v6 = sub_E018();

  v8[1] = v6;
  swift_getKeyPath();

  sub_1954(&qword_18BF0, &qword_F780);
  sub_1954(&qword_18BB0, &qword_F6D0);
  sub_1FA0(&qword_18BF8, &qword_18BF0, &qword_F780);
  sub_D6A4(&qword_18C00, &type metadata accessor for TimeZonePayload);
  sub_D16C();
  return sub_E598();
}

uint64_t sub_C05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_DEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v16 = a1;

  sub_E548();
  v11 = sub_E4C8();
  KeyPath = swift_getKeyPath();
  result = sub_1954(&qword_18BB0, &qword_F6D0);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_C20C()
{
  v0 = sub_1954(&qword_18B28, &qword_F678);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = v1[2];
  v6(v4, v5, v0);
  sub_E5C8();
  v7 = v1[1];
  v7(v4, v0);
  sub_DF48();

  v6(v4, v5, v0);
  sub_E5C8();
  v7(v4, v0);
  sub_DF98();
}

uint64_t sub_C390@<X0>(uint64_t a1@<X8>)
{
  sub_DED8();
  sub_ADC0();
  result = sub_E3D8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_C3EC()
{
  v0 = sub_1954(&qword_18B28, &qword_F678);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_E5C8();
  (*(v1 + 8))(v4, v0);
  sub_DF78();
}

uint64_t sub_C50C(uint64_t a1)
{
  v2 = sub_E338();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1954(&qword_18B88, &qword_F6C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_E328();
  v11 = a1;
  sub_1954(&qword_18BD8, &qword_F748);
  sub_1FA0(&qword_18BE0, &qword_18BD8, &qword_F748);
  sub_E0F8();
  sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0);
  sub_E348();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_C6F8(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneSearchList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1954(&qword_18BE8, qword_F750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_E0A8();
  v9 = sub_E0B8();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_D3CC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_D568(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return sub_E538();
}

uint64_t sub_C8BC(uint64_t a1)
{
  v2 = sub_E268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1954(&qword_18600, &qword_F038);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = sub_E148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D62C(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_E788();
    v17 = sub_E398();
    sub_E098();

    sub_E258();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_E138();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_CB24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E4E8();
  *a1 = result;
  return result;
}

uint64_t sub_CB5C(uint64_t a1)
{
  sub_1954(&qword_18B28, &qword_F678);
  swift_allocBox();
  sub_CD4C(*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  sub_E088();
  sub_D6A4(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState);
  sub_E5E8();
  sub_1954(&qword_18B30, &qword_F680);
  sub_1DC4(&qword_18B38, &qword_F688);
  sub_1DC4(&qword_18B40, &qword_F690);
  sub_CE94();
  sub_1DC4(&qword_18B88, &qword_F6C0);
  sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_E1A8();
}

uint64_t sub_CD4C(uint64_t a1, char a2)
{
  v4 = sub_E268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_E788();
    v9 = sub_E398();
    sub_E098();

    sub_E258();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

unint64_t sub_CE94()
{
  result = qword_18B48;
  if (!qword_18B48)
  {
    sub_1DC4(&qword_18B38, &qword_F688);
    sub_CF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B48);
  }

  return result;
}

unint64_t sub_CF20()
{
  result = qword_18B50;
  if (!qword_18B50)
  {
    sub_1DC4(&qword_18B58, &qword_F698);
    sub_1DC4(&qword_18B60, &qword_F6A0);
    sub_1DC4(&qword_18B68, &qword_F6A8);
    sub_1DC4(&qword_18B70, &qword_F6B0);
    sub_1DC4(&qword_18B78, &qword_F6B8);
    sub_1FA0(&qword_18B80, &qword_18B78, &qword_F6B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B50);
  }

  return result;
}

unint64_t sub_D0E8()
{
  result = qword_18BA0;
  if (!qword_18BA0)
  {
    sub_1DC4(&qword_18B98, &qword_F6C8);
    sub_D16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BA0);
  }

  return result;
}

unint64_t sub_D16C()
{
  result = qword_18BA8;
  if (!qword_18BA8)
  {
    sub_1DC4(&qword_18BB0, &qword_F6D0);
    sub_1FA0(&qword_18BB8, &qword_18BC0, &qword_F6D8);
    sub_1FA0(&qword_18BC8, &qword_18BD0, &qword_F6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BA8);
  }

  return result;
}

uint64_t sub_D250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_E048();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_D27C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_E058();
}

uint64_t sub_D2BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_DF68();
  *a2 = result & 1;
  return result;
}

uint64_t sub_D2EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_DF78();
}

uint64_t sub_D35C(uint64_t a1)
{
  v2 = sub_1954(&qword_18B38, &qword_F688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D3CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneSearchList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D430()
{
  v1 = type metadata accessor for TimeZoneSearchList();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1954(&qword_18600, &qword_F038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_E148();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = v5 + *(v1 + 24);
  v10 = *(v9 + 1);

  v11 = *(v9 + 2);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_D568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneSearchList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D5CC()
{
  v1 = *(type metadata accessor for TimeZoneSearchList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_C8BC(v2);
}

uint64_t sub_D62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1954(&qword_18600, &qword_F038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D6EC()
{
  v1 = sub_DEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D7B0()
{
  v1 = *(*(sub_DEE8() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_C20C();
}

uint64_t sub_D81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E238();
  *a1 = result;
  return result;
}

uint64_t sub_D848(uint64_t *a1)
{
  v1 = *a1;

  return sub_E248();
}

uint64_t sub_D8C0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_19148 == -1)
  {
    if (qword_19150)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_DD88();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_19150)
    {
      return _availability_version_check();
    }
  }

  if (qword_19140 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_DDA0();
    a3 = v10;
    a4 = v9;
    v8 = dword_19130 < v11;
    if (dword_19130 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_19134 > a3)
      {
        return 1;
      }

      if (dword_19134 >= a3)
      {
        return dword_19138 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_19130 < a2;
  if (dword_19130 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_DA54(uint64_t result)
{
  v1 = qword_19150;
  if (qword_19150)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_19150 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_19130, &dword_19134, &dword_19138);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}