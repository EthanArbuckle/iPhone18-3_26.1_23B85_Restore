uint64_t sub_1000014C4()
{
  v0 = sub_100001670(&qword_100008098, qword_100002648);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_1000016B8();
  sub_100002478();
  sub_10000170C();
  sub_100002468();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000015F0();
  sub_100002448();
  return 0;
}

unint64_t sub_1000015F0()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

uint64_t sub_100001670(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000016B8()
{
  result = qword_1000080A0;
  if (!qword_1000080A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A0);
  }

  return result;
}

unint64_t sub_10000170C()
{
  result = qword_1000080A8;
  if (!qword_1000080A8)
  {
    sub_100001770(&qword_100008098, qword_100002648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A8);
  }

  return result;
}

uint64_t sub_100001770(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000017B8()
{
  sub_100001770(&qword_100008098, qword_100002648);
  sub_10000170C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100001848@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = sub_1000023F8();
  v56 = *(v52 - 8);
  v1 = *(v56 + 64);
  __chkstk_darwin();
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100002438() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_100002548() - 8) + 64);
  __chkstk_darwin();
  v55 = sub_100002408();
  v46 = *(v55 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100001670(&qword_1000080B0, &qword_1000026D8);
  v44 = *(v42 - 8);
  v9 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = sub_100001670(&qword_1000080B8, &qword_1000026E0);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v41 = &v37 - v15;
  v16 = sub_100001670(&qword_1000080C0, &qword_1000026E8);
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = &v37 - v19;
  v51 = sub_100001670(&qword_1000080C8, &qword_1000026F0);
  v53 = *(v51 - 8);
  v20 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v45 = &v37 - v21;
  sub_100001670(&qword_1000080D0, &qword_1000026F8);
  sub_1000021D0(&qword_1000080D8, &qword_1000080D0, &qword_1000026F8);
  sub_100002528();
  sub_100002538();
  v40 = &unk_100002640;
  sub_100002428();
  v39 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v56 + 104);
  v56 += 104;
  v38 = v22;
  v23 = v3;
  v24 = v3;
  v25 = v52;
  v22(v24);
  sub_100002418();
  v26 = sub_1000021D0(&qword_1000080E0, &qword_1000080B0, &qword_1000026D8);
  v27 = v42;
  sub_100002498();
  v46 = *(v46 + 8);
  (v46)(v8, v55);
  (*(v44 + 8))(v11, v27);
  sub_100002538();
  sub_100002428();
  v38(v23, v39, v25);
  sub_100002418();
  v57 = v27;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v47;
  v31 = v41;
  sub_100002488();
  (v46)(v8, v55);
  (*(v48 + 8))(v31, v30);
  v57 = v30;
  v58 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v49;
  sub_1000024A8();
  (*(v50 + 8))(v29, v34);
  v57 = v34;
  v58 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v51;
  sub_1000024B8();
  return (*(v53 + 8))(v33, v35);
}

uint64_t sub_100001F9C()
{
  v0 = *(*(sub_100002508() - 8) + 64);
  __chkstk_darwin();
  sub_1000024F8();
  sub_100001670(&qword_1000080E8, &unk_100002700);
  sub_1000021D0(&qword_1000080F0, &qword_1000080E8, &unk_100002700);
  sub_100002218();
  return sub_100002518();
}

uint64_t sub_1000020FC@<X0>(uint64_t a1@<X8>)
{
  sub_100002458();
  result = sub_1000024C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100002188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000024D8();
  *a1 = result;
  return result;
}

uint64_t sub_1000021D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001770(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100002218()
{
  result = qword_1000080F8;
  if (!qword_1000080F8)
  {
    sub_100002508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080F8);
  }

  return result;
}

uint64_t sub_100002270()
{
  sub_100001770(&qword_1000080C8, &qword_1000026F0);
  sub_100001770(&qword_1000080C0, &qword_1000026E8);
  sub_100001770(&qword_1000080B8, &qword_1000026E0);
  sub_100001770(&qword_1000080B0, &qword_1000026D8);
  sub_1000021D0(&qword_1000080E0, &qword_1000080B0, &qword_1000026D8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}