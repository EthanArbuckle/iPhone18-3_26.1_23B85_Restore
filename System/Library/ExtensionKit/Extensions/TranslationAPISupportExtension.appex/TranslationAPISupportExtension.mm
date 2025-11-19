uint64_t sub_100001A58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001D0A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100028A98, &qword_10001E140);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LanguageDownloadView(0);
  sub_100005D74(v1 + *(v12 + 20), v11, &qword_100028A98, &qword_10001E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001CF78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10001D5D8();
    v16 = sub_10001D1B8();
    sub_10001CED8();

    sub_10001D098();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t variable initialization expression of LanguageDownloadView._openSensitiveURL@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001CFC(&qword_100028A98, &qword_10001E140);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100001CFC(uint64_t *a1, uint64_t *a2)
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

uint64_t LanguageDownloadView.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for LanguageDownloadView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_100001CFC(&qword_100028A98, &qword_10001E140);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t LanguageDownloadView.body.getter()
{
  sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  sub_1000022C4();
  return sub_10001D1E8();
}

uint64_t sub_100001E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = sub_100001CFC(&qword_100028AF0, qword_10001E168);
  v3 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v5 = &v40 - v4;
  v6 = sub_10001CE08();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10001D468();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_100001CFC(&qword_100028AC8, &qword_10001E158);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v42 = a1;
  sub_10001D458();
  (*(v9 + 16))(v13, v15, v8);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v18 = qword_100029CB0;
  sub_10001CDF8();
  v19 = sub_10001D488();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  v43 = v19;
  v44 = v21;
  sub_100005408();
  v22 = sub_10001D238();
  v24 = v23;
  v43 = v22;
  v44 = v23;
  v26 = v25 & 1;
  v45 = v25 & 1;
  v46 = v27;
  sub_10001D2A8();
  sub_1000053F8(v22, v24, v26);

  *v5 = sub_10001D118();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v28 = sub_100001CFC(&qword_100028D00, &qword_10001E360);
  sub_100002A0C(a1, &v5[*(v28 + 44)]);
  sub_100001CFC(&qword_100028AE0, &qword_10001E160);
  sub_100002490();
  sub_100005818(&qword_100028AD8, &qword_100028AE0, &qword_10001E160);
  sub_100005818(&qword_100028AE8, &qword_100028AF0, qword_10001E168);
  v29 = v41;
  sub_10001D3A8();
  LOBYTE(v22) = sub_10001D1D8();
  sub_10001CF18();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  v39 = v29 + *(result + 36);
  *v39 = v22;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

unint64_t sub_1000022C4()
{
  result = qword_100028AA8;
  if (!qword_100028AA8)
  {
    sub_100002350(&qword_100028AA0, &qword_10001E148);
    sub_100002398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA8);
  }

  return result;
}

uint64_t sub_100002350(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002398()
{
  result = qword_100028AB0;
  if (!qword_100028AB0)
  {
    sub_100002350(&qword_100028AB8, &qword_10001E150);
    sub_100002490();
    sub_100005818(&qword_100028AD8, &qword_100028AE0, &qword_10001E160);
    sub_100005818(&qword_100028AE8, &qword_100028AF0, qword_10001E168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AB0);
  }

  return result;
}

unint64_t sub_100002490()
{
  result = qword_100028AC0;
  if (!qword_100028AC0)
  {
    sub_100002350(&qword_100028AC8, &qword_10001E158);
    sub_100005918(&qword_100028AD0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AC0);
  }

  return result;
}

uint64_t sub_10000254C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v51 = type metadata accessor for DownloadRow(0);
  v9 = *(*(v51 - 8) + 64);
  v10 = __chkstk_darwin(v51);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v43 - v13;
  v14 = __chkstk_darwin(v12);
  v43 = &v43 - v15;
  v16 = __chkstk_darwin(v14);
  v44 = &v43 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - v19;
  __chkstk_darwin(v18);
  v52 = &v43 - v21;
  v22 = *a1;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v54 = v22;
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v49 = v23;
  sub_10001CE28();

  v24 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  sub_100005D74(v22 + v24, v8, &qword_100028D48, &qword_10001E3D0);
  v25 = sub_10001CE08();
  v26 = *(v25 - 8);
  v48 = *(v26 + 48);
  result = v48(v8, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v26 + 32);
    v28(v20, v8, v25);
    v29 = *(v51 + 20);
    type metadata accessor for LanguageSupportRemoteModel();
    v30 = v22;
    sub_10001D3C8();
    sub_100005BD0(v20, v52, type metadata accessor for DownloadRow);
    swift_getKeyPath();
    v53 = v30;
    sub_10001CE28();

    v31 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v32 = v30 + v31;
    v33 = v50;
    sub_100005D74(v32, v50, &qword_100028D48, &qword_10001E3D0);
    result = v48(v33, 1, v25);
    if (result != 1)
    {
      v34 = v43;
      v28(v43, v33, v25);
      v35 = &v34[*(v51 + 20)];
      sub_10001D3C8();
      v36 = v34;
      v37 = v44;
      sub_100005BD0(v36, v44, type metadata accessor for DownloadRow);
      v38 = v52;
      v39 = v45;
      sub_100005A4C(v52, v45, type metadata accessor for DownloadRow);
      v40 = v46;
      sub_100005A4C(v37, v46, type metadata accessor for DownloadRow);
      v41 = v47;
      sub_100005A4C(v39, v47, type metadata accessor for DownloadRow);
      v42 = sub_100001CFC(&qword_100028D50, &qword_10001E428);
      sub_100005A4C(v40, v41 + *(v42 + 48), type metadata accessor for DownloadRow);
      sub_100005DE4(v37);
      sub_100005DE4(v38);
      sub_100005DE4(v40);
      return sub_100005DE4(v39);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100002A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100001CFC(&qword_100028D08, &qword_10001E368);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &KeyPath - v13;
  __chkstk_darwin(v12);
  v16 = &KeyPath - v15;
  v17 = sub_100002DA4();
  if (v20)
  {
    v21 = v20;
    v40 = v17;
    v41 = v19;
    v39 = v18;
    KeyPath = swift_getKeyPath();
    sub_100005A4C(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_100005BD0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for LanguageDownloadView);
    v24 = sub_100001CFC(&qword_100028D10, &qword_10001E370);
    v25 = &v14[*(v24 + 36)];
    v26 = *(sub_100001CFC(&qword_100028D20, &unk_10001E3B0) + 28);
    sub_10001CF68();
    *v25 = KeyPath;
    v27 = v39;
    *v14 = v40;
    *(v14 + 1) = v27;
    v14[16] = v41 & 1;
    *(v14 + 3) = v21;
    (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
  }

  else
  {
    v28 = sub_100001CFC(&qword_100028D10, &qword_10001E370);
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  }

  sub_1000059DC(v14, v16);
  v29 = sub_1000036CC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100005D74(v16, v11, &qword_100028D08, &qword_10001E368);
  sub_100005D74(v11, a2, &qword_100028D08, &qword_10001E368);
  v36 = a2 + *(sub_100001CFC(&qword_100028D18, &qword_10001E378) + 48);
  *v36 = v29;
  *(v36 + 8) = v31;
  v33 &= 1u;
  *(v36 + 16) = v33;
  *(v36 + 24) = v35;
  sub_1000053A4(v29, v31, v33);

  sub_100005D0C(v16, &qword_100028D08, &qword_10001E368);
  sub_1000053F8(v29, v31, v33);

  return sub_100005D0C(v11, &qword_100028D08, &qword_10001E368);
}

uint64_t sub_100002DA4()
{
  v0 = sub_10001CCF8();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = *(v54 + 64);
  __chkstk_darwin(v0);
  v53 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10001CD08();
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  __chkstk_darwin(v51);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001CD28();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100028D28, &unk_10001ED10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v47 = &v44 - v10;
  v11 = sub_100001CFC(&qword_100028D30, &qword_10001E3C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v46 = &v44 - v13;
  v52 = sub_10001CD48();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v52);
  v44 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v45 = &v44 - v18;
  v19 = sub_10001CD88();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10001CE08();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_10001D468();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v44 - v32;
  sub_10001D458();
  (*(v27 + 16))(v31, v33, v26);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v34 = qword_100029CB0;
  sub_10001CDF8();
  sub_10001D488();
  (*(v27 + 8))(v33, v26);
  sub_100001CFC(&qword_100028D38, &qword_10001E3C8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10001E100;
  sub_10001CD68();
  v36 = sub_10001CD78();
  v38 = v37;
  (*(v20 + 8))(v23, v19);
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_100005CB8();
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  sub_10001D478();

  (*(v20 + 56))(v47, 1, 1, v19);
  (*(v49 + 104))(v50, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v51);
  (*(v54 + 104))(v53, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v55);
  sub_10001CD18();
  v39 = v46;
  sub_10001CD38();
  v40 = v52;
  (*(v14 + 56))(v39, 0, 1, v52);
  v41 = v45;
  (*(v14 + 32))(v45, v39, v40);
  (*(v14 + 16))(v44, v41, v40);
  v42 = sub_10001D228();
  (*(v14 + 8))(v41, v40);
  return v42;
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_10001CF78();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  return a5(v10);
}

uint64_t sub_1000035E4()
{
  v0 = sub_10001CF78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A58(v4);
  sub_10001CF48();
  (*(v1 + 8))(v4, v0);
  return sub_10001CF58();
}

uint64_t sub_1000036CC()
{
  v0 = sub_10001CE08();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10001D468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  sub_10001D458();
  (*(v3 + 16))(v7, v9, v2);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v10 = qword_100029CB0;
  sub_10001CDF8();
  v11 = sub_10001D488();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  v15[1] = v11;
  v15[2] = v13;
  sub_100005408();
  return sub_10001D238();
}

uint64_t sub_1000038C8()
{
  sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  sub_1000022C4();
  return sub_10001D1E8();
}

uint64_t sub_100003938(uint64_t a1)
{
  v2 = type metadata accessor for DownloadRow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100005A4C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DownloadRow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100005BD0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for DownloadRow);
  v9 = a1;
  sub_100001CFC(&qword_100028C88, &qword_10001E2A8);
  sub_1000055E8();
  return sub_10001D368();
}

void sub_100003AA4()
{
  v0 = *(type metadata accessor for DownloadRow(0) + 20);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  swift_getKeyPath();
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = v4[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

  if (v1 == 1)
  {
    sub_10001D3B8();
    v2 = v4;
    LanguageSupportRemoteModel.cancel()();
  }

  else
  {
    sub_10001D3B8();
    swift_getKeyPath();
    sub_10001CE28();

    v3 = v4[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

    if (v3)
    {
      return;
    }

    sub_10001D3B8();
    v2 = v4;
    sub_10000D54C();
  }
}

uint64_t sub_100003C34@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_100001CFC(&qword_100028CB8, &qword_10001E2B8);
  v3 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v39 = &v39 - v4;
  v46 = sub_100001CFC(&qword_100028CE0, &qword_10001E2D0);
  v5 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v7 = (&v39 - v6);
  v41 = sub_100001CFC(&qword_100028CE8, &qword_10001E2D8);
  v8 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v42 = &v39 - v9;
  v47 = sub_100001CFC(&qword_100028CA0, &qword_10001E2B0);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = &v39 - v11;
  v43 = sub_10001CEB8();
  v40 = *(v43 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v43);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for DownloadRow(0) + 20);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  v16 = v49;
  swift_getKeyPath();
  v49 = v16;
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v17 = v16[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

  if (v17 == 1)
  {
    sub_10001D3B8();
    v18 = v49;
    swift_getKeyPath();
    v49 = v18;
    sub_10001CE28();

    v19 = *&v18[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus];
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = [v19 cachedStatus];
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = v20;
    sub_100005968();
    v22 = sub_10001D4F8();

    __chkstk_darwin(v23);
    *(&v39 - 2) = a1;
    v24 = sub_10000B738(sub_1000059B4, (&v39 - 4), v22);

    if (v24)
    {
      [v24 progress];
    }

    else
    {
LABEL_8:
    }

    sub_10001CEA8();
    v31 = v40;
    v32 = v43;
    (*(v40 + 16))(v42, v14, v43);
    swift_storeEnumTagMultiPayload();
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView);
    sub_100005730();
    v33 = v45;
    sub_10001D148();
    sub_100005D74(v33, v7, &qword_100028CA0, &qword_10001E2B0);
    swift_storeEnumTagMultiPayload();
    sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
    sub_100005674();
    sub_100005860();
    sub_10001D148();
    sub_100005D0C(v33, &qword_100028CA0, &qword_10001E2B0);
    return (*(v31 + 8))(v14, v32);
  }

  else
  {
    sub_10001D3B8();
    v25 = v49;
    swift_getKeyPath();
    v49 = v25;
    sub_10001CE28();

    v26 = v25[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

    if (v26)
    {
      v27 = sub_10001D308();
      v28 = sub_10001D2F8();
      KeyPath = swift_getKeyPath();
      *v7 = v27;
      v7[1] = KeyPath;
      v7[2] = v28;
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
      sub_100005674();
      sub_100005860();
      return sub_10001D148();
    }

    else
    {
      v34 = v39;
      sub_10001CEA8();
      v35 = sub_10001D2D8();
      v36 = swift_getKeyPath();
      v37 = (v34 + *(v44 + 36));
      *v37 = v36;
      v37[1] = v35;
      sub_100005D74(v34, v42, &qword_100028CB8, &qword_10001E2B8);
      swift_storeEnumTagMultiPayload();
      sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView);
      sub_100005730();
      v38 = v45;
      sub_10001D148();
      sub_100005D74(v38, v7, &qword_100028CA0, &qword_10001E2B0);
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
      sub_100005674();
      sub_100005860();
      sub_10001D148();
      sub_100005D0C(v38, &qword_100028CA0, &qword_10001E2B0);
      return sub_100005D0C(v34, &qword_100028CB8, &qword_10001E2B8);
    }
  }
}

uint64_t sub_1000043A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v9 = sub_10001CDC8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v41 = v9;
    v42 = v11;
    sub_100005408();

    v12 = sub_10001D238();
    v14 = v13;
    v16 = v15;
    sub_10001D2E8();
    v17 = sub_10001D1F8();
    v39 = v18;
    v40 = v17;
    v20 = v19;
    v22 = v21;

    sub_1000053F8(v12, v14, v16 & 1);

    v23 = v20 & 1;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v23 = 0;
    v22 = 0;
  }

  v24 = *(type metadata accessor for DownloadRow(0) + 20);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  v25 = v41;
  v26 = LanguageSupportRemoteModel.debugStatusString(for:)(a1);
  v28 = v27;

  if (v28)
  {
    v41 = v26;
    v42 = v28;
    sub_100005408();
    v29 = sub_10001D238();
    v28 = v30;
    v32 = v31;
    v34 = v33 & 1;
    sub_1000053A4(v29, v30, v33 & 1);
  }

  else
  {
    v29 = 0;
    v34 = 0;
    v32 = 0;
  }

  v36 = v39;
  v35 = v40;
  sub_100005360(v40, v39, v23, v22);
  sub_100005360(v29, v28, v34, v32);
  sub_1000053B4(v29, v28, v34, v32);
  *a2 = v35;
  a2[1] = v36;
  a2[2] = v23;
  a2[3] = v22;
  a2[4] = v29;
  a2[5] = v28;
  a2[6] = v34;
  a2[7] = v32;
  sub_1000053B4(v29, v28, v34, v32);
  return sub_1000053B4(v35, v36, v23, v22);
}

uint64_t sub_100004670()
{
  sub_100001CFC(&qword_100028C60, &qword_10001E298);
  sub_100001CFC(&qword_100028C68, &qword_10001E2A0);
  sub_100005818(&qword_100028C70, &qword_100028C60, &qword_10001E298);
  sub_100005818(&qword_100028C78, &qword_100028C68, &qword_10001E2A0);
  return sub_10001CF98();
}

id variable initialization expression of ExtensionScene.model()
{
  v0 = objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel());

  return [v0 init];
}

uint64_t sub_1000047FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *a2 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState);
  return result;
}

uint64_t sub_1000048F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001CE08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100004964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_10001C800(2, 26, 0, 0))
  {
    sub_10001D1A8();

    return sub_10001CFA8();
  }

  else
  {
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    sub_10001D648();
    swift_getWitnessTable();
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    return sub_10001CFA8();
  }
}

uint64_t sub_100004AC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_10001C800(2, 26, 0, 0))
  {
    sub_10001D1A8();
    sub_10001CFA8();
  }

  else
  {
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    sub_10001D648();
    swift_getWitnessTable();
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100004CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D018();
  *a1 = result;
  return result;
}

uint64_t sub_100004CF4(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001D028();
}

uint64_t sub_100004D50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001CFC(&qword_100028B10, &qword_10001E1E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100004E20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001CFC(&qword_100028B10, &qword_10001E1E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100004F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001CE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100005080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001CE08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000051A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319);
  if (v10 <= 0x3F)
  {
    sub_1000052D0(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000052D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005360(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000053A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000053A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000053B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000053F8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000053F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100005408()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

uint64_t sub_10000545C()
{
  v1 = (type metadata accessor for DownloadRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001CE08();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100005580()
{
  v0 = *(*(type metadata accessor for DownloadRow(0) - 8) + 80);

  sub_100003AA4();
}

unint64_t sub_1000055E8()
{
  result = qword_100028C90;
  if (!qword_100028C90)
  {
    sub_100002350(&qword_100028C88, &qword_10001E2A8);
    sub_100005674();
    sub_100005860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C90);
  }

  return result;
}

unint64_t sub_100005674()
{
  result = qword_100028C98;
  if (!qword_100028C98)
  {
    sub_100002350(&qword_100028CA0, &qword_10001E2B0);
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView);
    sub_100005730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C98);
  }

  return result;
}

unint64_t sub_100005730()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    sub_100002350(&qword_100028CB8, &qword_10001E2B8);
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView);
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB0);
  }

  return result;
}

uint64_t sub_100005818(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002350(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005860()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    sub_100002350(&qword_100028CD8, &qword_10001E2C8);
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

uint64_t sub_100005918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005968()
{
  result = qword_100028CF8;
  if (!qword_100028CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028CF8);
  }

  return result;
}

uint64_t sub_1000059DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D08, &qword_10001E368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005AB4()
{
  v1 = (type metadata accessor for LanguageDownloadView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100001CFC(&qword_100028A98, &qword_10001E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10001CF78();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100005BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005C38()
{
  v0 = *(*(type metadata accessor for LanguageDownloadView(0) - 8) + 80);

  return sub_1000035E4();
}

unint64_t sub_100005CB8()
{
  result = qword_100028D40;
  if (!qword_100028D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D40);
  }

  return result;
}

uint64_t sub_100005D0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005DE4(uint64_t a1)
{
  v2 = type metadata accessor for DownloadRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _LTPreflightConfigurationStep()
{
  if (!qword_100028D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100028D58);
    }
  }
}

unint64_t sub_100005E94()
{
  result = qword_100028D60;
  if (!qword_100028D60)
  {
    sub_100002350(&qword_100028D68, &unk_10001E460);
    sub_100005818(&qword_100028C70, &qword_100028C60, &qword_10001E298);
    sub_100005818(&qword_100028C78, &qword_100028C68, &qword_10001E2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D60);
  }

  return result;
}

uint64_t LanguageSupportExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = *(v6 + 16);
  v8(&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15[3] = a1;
  v15[4] = a2;
  v11 = sub_100006234(v15);
  v8(v11, v3, a1);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_100006298();
  return sub_10001CE88();
}

uint64_t sub_10000614C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000061CC()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t *sub_100006234(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100006298()
{
  result = qword_100028D70;
  if (!qword_100028D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D70);
  }

  return result;
}

id ExtensionScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel()) init];
  *a3 = 0xD00000000000001ALL;
  a3[1] = 0x8000000100020340;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = result;
  return result;
}

uint64_t ExtensionScene.body.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = *(v1 + 1);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v10;
  *(v7 + 64) = v1[4];
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v12 = *(v1 + 1);
  *(v11 + 32) = *v1;
  *(v11 + 48) = v12;
  *(v11 + 64) = v1[4];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v13 = v6;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v4, v3, sub_1000065BC, v7, sub_10000670C, v11, v8, v9);
}

uint64_t sub_100006474@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 24);
  (*(v9 + 16))(*(v9 + 32));
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

id sub_1000065C8(uint64_t a1, uint64_t a2)
{
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CF08();
  sub_100006A24(v4, qword_100029CD0);
  v5 = sub_10001CEE8();
  v6 = sub_10001D5B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "entering onConnection(connection:)", v7, 2u);
  }

  return [*(a2 + 32) shouldAcceptWithConnection:a1];
}

uint64_t sub_1000066C4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

id sub_10000670C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000065C8(a1, v1 + 32);
}

uint64_t sub_100006724()
{
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CF08();
  sub_100006A24(v0, qword_100029CD0);
  v1 = sub_10001CEE8();
  v2 = sub_10001D5B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "entering accept(conection:)", v3, 2u);
  }

  return 1;
}

uint64_t sub_100006800(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100006880()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000068BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000068D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100006918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000069C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006A24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int LanguageSupportRemoteModel.Step.hashValue.getter(unsigned __int8 a1)
{
  sub_10001D768();
  sub_10001D778(a1);
  return sub_10001D788();
}

Swift::Int sub_100006B28()
{
  v1 = *v0;
  sub_10001D768();
  sub_10001D778(v1);
  return sub_10001D788();
}

Swift::Int sub_100006BA0()
{
  v1 = *v0;
  sub_10001D768();
  sub_10001D778(v1);
  return sub_10001D788();
}

void (*sub_100006BE4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100001CFC(&qword_100028D48, &qword_10001E3D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_100005D74(v1 + v8, v7, &qword_100028D48, &qword_10001E3D0);
  return sub_100006D14;
}

uint64_t type metadata accessor for LanguageSupportRemoteModel()
{
  result = qword_100028F38;
  if (!qword_100028F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*LanguageSupportRemoteModel.sourceLocale.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100006BE4(v4);
  return sub_100006F68;
}

void sub_100006F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = a3;
  v26 = a1;
  v4 = v3;
  v5 = sub_10001CE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100001CFC(&qword_100028FD8, &qword_10001EA80);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  swift_getKeyPath();
  v27 = v3;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v18 = *v25;
  swift_beginAccess();
  v19 = *(v14 + 56);
  sub_100005D74(v4 + v18, v17, &qword_100028D48, &qword_10001E3D0);
  sub_100005D74(v26, &v17[v19], &qword_100028D48, &qword_10001E3D0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_100005D0C(v17, &qword_100028D48, &qword_10001E3D0);
      return;
    }

    goto LABEL_6;
  }

  sub_100005D74(v17, v12, &qword_100028D48, &qword_10001E3D0);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    (*(v6 + 8))(v12, v5);
LABEL_6:
    sub_100005D0C(v17, &qword_100028FD8, &qword_10001EA80);
LABEL_7:
    sub_10000AAD8();
    return;
  }

  v21 = v24;
  (*(v6 + 32))(v24, &v17[v19], v5);
  sub_100015E28(&qword_100028F58, &type metadata accessor for Locale);
  v22 = sub_10001D448();
  v23 = *(v6 + 8);
  v23(v21, v5);
  v23(v12, v5);
  sub_100005D0C(v17, &qword_100028D48, &qword_10001E3D0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void (*sub_10000732C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100001CFC(&qword_100028D48, &qword_10001E3D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_100005D74(v1 + v8, v7, &qword_100028D48, &qword_10001E3D0);
  return sub_10000745C;
}

void sub_100007470(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 72);
  if (a2)
  {
    sub_100005D74(*(*a1 + 96), v10, &qword_100028D48, &qword_10001E3D0);
    sub_100005D74(v11 + v8, v9, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v10, v11 + v8);
    swift_endAccess();
    sub_100006F74(v9, a3, a4);
    sub_100005D0C(v9, &qword_100028D48, &qword_10001E3D0);
  }

  else
  {
    sub_100005D74(v11 + v8, v10, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v7, v11 + v8);
    swift_endAccess();
    sub_100006F74(v10, a3, a4);
  }

  sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
  sub_100005D0C(v7, &qword_100028D48, &qword_10001E3D0);
  free(v7);
  free(v10);
  free(v9);

  free(v6);
}

uint64_t sub_100007610@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v5 = *a1;
  swift_beginAccess();
  return sub_100005D74(v2 + v5, a2, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000076FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v6 = *a2;
  swift_beginAccess();
  return sub_100005D74(v5 + v6, a3, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000077F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  sub_100005D74(a1, &v14 - v10, &qword_100028D48, &qword_10001E3D0);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_1000078CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17[0] = a3;
  v6 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = *a2;
  swift_beginAccess();
  sub_100005D74(v3 + v13, v12, &qword_100028D48, &qword_10001E3D0);
  v14 = sub_100014514(v12, a1);
  sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  if (v14)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17[-2] = v3;
    v17[-1] = a1;
    v17[2] = v3;
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  else
  {
    sub_100005D74(a1, v12, &qword_100028D48, &qword_10001E3D0);
    sub_100005D74(v3 + v13, v10, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v12, v3 + v13);
    swift_endAccess();
    sub_100006F74(v10, v17[0], a2);
    sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
    sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  }

  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_100007B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v17[-v13];
  sub_100005D74(a2, &v17[-v13], &qword_100028D48, &qword_10001E3D0);
  v15 = *a3;
  swift_beginAccess();
  sub_100005D74(a1 + v15, v12, &qword_100028D48, &qword_10001E3D0);
  swift_beginAccess();
  sub_100014834(v14, a1 + v15);
  swift_endAccess();
  sub_100006F74(v12, a4, a3);
  sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  return sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
}

void (*LanguageSupportRemoteModel.targetLocale.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_10000732C(v4);
  return sub_100007DE4;
}

uint64_t LanguageSupportRemoteModel.lowConfidenceLocales.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_100007F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100007FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return LanguageSupportRemoteModel.lowConfidenceLocales.setter(v4);
}

uint64_t LanguageSupportRemoteModel.lowConfidenceLocales.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_100014254(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

uint64_t sub_100008154(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*LanguageSupportRemoteModel.lowConfidenceLocales.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100007DF0();
  return sub_1000082FC;
}

uint64_t LanguageSupportRemoteModel.unsupportedLocale.setter(uint64_t a1)
{
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  swift_beginAccess();
  sub_100005D74(v1 + v7, v6, &qword_100028D48, &qword_10001E3D0);
  v8 = sub_100014514(v6, a1);
  sub_100005D0C(v6, &qword_100028D48, &qword_10001E3D0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  else
  {
    sub_100005D74(a1, v6, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_1000149DC(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000085B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_100005D74(a2, &v10 - v6, &qword_100028D48, &qword_10001E3D0);
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  swift_beginAccess();
  sub_1000149DC(v7, a1 + v8);
  return swift_endAccess();
}

void (*LanguageSupportRemoteModel.unsupportedLocale.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100008308();
  return sub_1000087C4;
}

uint64_t sub_1000087D0()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  return *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState);
}

uint64_t sub_100008878(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  return result;
}

uint64_t LanguageSupportRemoteModel.currentStep.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100008AA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LanguageSupportRemoteModel.currentStep.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 == 3)
  {
    if (v2 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
      sub_10001CE18();
    }
  }

  else if (v5 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + v3) = v2;
  return result;
}

void (*LanguageSupportRemoteModel.currentStep.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100008988();
  return sub_100008E08;
}

void sub_100008E14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_10001CE38();

  free(v1);
}

void sub_100008EBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F90, NSXPCConnection_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_100009068(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100009124@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1000091E8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100009218(v2);
}

void sub_100009218(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F88, _LTLanguageStatus_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000093B0()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);
}

uint64_t sub_10000945C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *a2 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);
}

uint64_t sub_100009510(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers;
  v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);

  v6 = sub_10001409C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

id sub_10000966C()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);

  return v1;
}

id sub_100009724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  *a2 = v4;

  return v4;
}

void sub_1000097E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  sub_100015D94(0, &qword_100028F80, _LTPreflightChecker_ptr);
  v6 = v5;
  v7 = sub_10001D638();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

void sub_10000996C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F78, _LTPreflightConfiguration_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100009B04()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v2 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
  sub_100014B0C(v1);
  return v1;
}

uint64_t sub_100009BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v5 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000161B8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100014B0C(v4);
}

uint64_t sub_100009CBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10001617C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100014B0C(v3);
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE18();
  sub_100014B1C(v6);
}

uint64_t sub_100009E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v4 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v5 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_100014B0C(a2);
  return sub_100014B1C(v4);
}

char *sub_100009E70()
{
  v1 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23 - v3;
  v5 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  v6 = sub_10001CE08();
  v7 = *(*(v6 - 8) + 56);
  v7(&v0[v5], 1, 1, v6);
  v23 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  v7(&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale], 1, 1, v6);
  v24 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales] = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  v7(&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale], 1, 1, v6);
  v7(&v0[v8], 1, 1, v6);
  v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState] = 0;
  v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep] = 3;
  v9 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection] = 0;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus] = 0;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration] = 0;
  v10 = &v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion];
  *v10 = 0;
  v10[1] = 0;
  _s30TranslationAPISupportExtension26LanguageSupportRemoteModelC22__observationRegistrar33_3FCA5AFE04A8478E67D6CE01CB995DEALL11Observation0rI0Vvpfi_0();
  v7(v4, 1, 1, v6);
  sub_100005D0C(&v0[v5], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v4, &v0[v5]);
  v7(v4, 1, 1, v6);
  v11 = v23;
  sub_100005D0C(&v0[v23], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v4, &v0[v11]);
  v12 = v24;
  v13 = *&v0[v24];

  *&v0[v12] = &_swiftEmptyArrayStorage;
  v7(v4, 1, 1, v6);
  sub_100005D0C(&v0[v8], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v4, &v0[v8]);

  *&v0[v9] = 0;
  v14 = [objc_allocWithZone(_LTPreflightChecker) init];
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker] = v14;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers] = &_swiftEmptySetSingleton;
  v15 = type metadata accessor for LanguageSupportRemoteModel();
  v26.receiver = v0;
  v26.super_class = v15;
  v16 = objc_msgSendSuper2(&v26, "init");
  swift_getKeyPath();
  aBlock[0] = v16;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v17 = v16;
  sub_10001CE28();

  [*&v17[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker] setDelegate:v17];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = objc_allocWithZone(_LTLanguageStatus);
  aBlock[4] = sub_100015A84;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010908;
  aBlock[3] = &unk_100025488;
  v20 = _Block_copy(aBlock);

  v21 = [v19 initWithObservationType:1 useDedicatedMachPort:0 observations:v20];
  _Block_release(v20);

  sub_100009218(v21);

  return v17;
}

void sub_10000A2E4(uint64_t a1)
{
  v2 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_10001D568();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001D548();

    v10 = sub_10001D538();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    v11[5] = a1;

    sub_10000A7B4(0, 0, v5, &unk_10001EA20, v11);
  }
}

uint64_t sub_10000A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10001D548();
  v5[7] = sub_10001D538();
  v7 = sub_10001D528();

  return _swift_task_switch(sub_10000A510, v7, v6);
}

uint64_t sub_10000A510()
{
  v20 = v0;
  v1 = v0[7];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v0[6])
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v5 = sub_10001CF08();
      sub_100006A24(v5, qword_100029CB8);

      v6 = sub_10001CEE8();
      v7 = sub_10001D5A8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v19 = v9;
        *v8 = 136446210;
        sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
        v10 = sub_10001D508();
        v12 = sub_100010D90(v10, v11, &v19);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Language status was updated: %{public}s", v8, 0xCu);
        sub_100014B94(v9);
      }

      sub_10000AAD8();
    }

    else
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v13 = sub_10001CF08();
      sub_100006A24(v13, qword_100029CB8);
      v14 = sub_10001CEE8();
      v15 = sub_10001D5C8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Not updating cached language status since latest update had nil observations", v16, 2u);
      }
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005D74(a3, v27 - v11, &qword_100028E78, &qword_10001E788);
  v13 = sub_10001D568();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005D0C(v12, &qword_100028E78, &qword_10001E788);
  }

  else
  {
    sub_10001D558();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10001D528();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10001D4A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005D0C(a3, &qword_100028E78, &qword_10001E788);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005D0C(a3, &qword_100028E78, &qword_10001E788);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_10000AAD8()
{
  v1 = v0;
  v2 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = v46 - v4;
  v5 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = sub_10001CE08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v48 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v47 = v46 - v16;
  v17 = __chkstk_darwin(v15);
  v50 = v46 - v18;
  __chkstk_darwin(v17);
  v55 = v46 - v19;
  swift_getKeyPath();
  v58 = v0;
  v20 = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  sub_100005D74(v1 + v21, v10, &qword_100028D48, &qword_10001E3D0);
  v53 = v11;
  v54 = v12;
  v22 = *(v12 + 48);
  v23 = v22(v10, 1, v11);
  v52 = v20;
  if (v23 != 1)
  {
    v24 = v53;
    v46[0] = *(v54 + 32);
    v46[1] = v54 + 32;
    (v46[0])(v55, v10, v53);
    swift_getKeyPath();
    v56 = v1;
    sub_10001CE28();

    v25 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v10 = v49;
    sub_100005D74(v1 + v25, v49, &qword_100028D48, &qword_10001E3D0);
    if (v22(v10, 1, v24) != 1)
    {
      v31 = v50;
      v32 = v53;
      (v46[0])(v50, v10, v53);
      v33 = sub_10001D568();
      (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
      v34 = v54;
      v35 = *(v54 + 16);
      v36 = v47;
      v35(v47, v55, v32);
      v37 = v48;
      v35(v48, v31, v32);
      sub_10001D548();
      v38 = v1;
      v39 = sub_10001D538();
      v40 = *(v34 + 80);
      v41 = (v40 + 40) & ~v40;
      v42 = (v13 + v40 + v41) & ~v40;
      v43 = swift_allocObject();
      *(v43 + 2) = v39;
      *(v43 + 3) = &protocol witness table for MainActor;
      *(v43 + 4) = v38;
      v44 = v46[0];
      (v46[0])(&v43[v41], v36, v32);
      v44(&v43[v42], v37, v32);
      sub_10000A7B4(0, 0, v51, &unk_10001EA68, v43);

      v45 = *(v34 + 8);
      v45(v50, v32);
      v45(v55, v32);
      return;
    }

    (*(v54 + 8))(v55, v53);
  }

  sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v26 = sub_10001CF08();
  sub_100006A24(v26, qword_100029CB8);
  v27 = sub_10001CEE8();
  v28 = sub_10001D5A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Download state determination requires that both source and target be non-nil", v29, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v46[-2] = v1;
    LOBYTE(v46[-1]) = 0;
    v57 = v1;
    sub_10001CE18();
  }
}

uint64_t sub_10000B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_10001D548();
  v6[6] = sub_10001D538();
  v8 = sub_10001D528();

  return _swift_task_switch(sub_10000B208, v8, v7);
}

uint64_t sub_10000B208()
{
  v1 = v0[6];
  v2 = v0[3];

  swift_getKeyPath();
  v0[2] = v2;
  v3 = v0 + 2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus;
  v5 = *(v2 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v5 cachedStatus];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = v0[4];
  sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
  v9 = sub_10001D4F8();

  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  v11 = sub_10000B738(sub_100016280, v10, v9);

  if (v11)
  {
    v12 = sub_100014BE0([v11 status]);
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  v13 = v0[3];
  swift_getKeyPath();
  v0[2] = v13;
  sub_10001CE28();

  v14 = *(v2 + v4);
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = [v14 cachedStatus];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = v0[5];
  sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
  v18 = sub_10001D4F8();

  v19 = swift_task_alloc();
  *(v19 + 16) = v17;
  v20 = sub_10000B738(sub_100016150, v19, v18);

  if (v20)
  {
    v21 = sub_100014BE0([v20 status]);

    v22 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_11:
    v21 = 0;
    v22 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (v22 != 1)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v23 = v0[3];
        if (*(v23 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) == 1)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      v29 = v0[3];
      if (*(v29 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 2)
      {
        swift_getKeyPath();
        v30 = swift_task_alloc();
        *(v30 + 16) = v29;
        *(v30 + 24) = 2;
        v0[2] = v29;
        sub_10001CE18();

        v31 = v0[3];
      }

      sub_10000BE0C(0);
      goto LABEL_24;
    }

LABEL_21:
    v24 = v0[3];
    if (!*(v24 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState))
    {
      goto LABEL_24;
    }

    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *v3 = v24;
    goto LABEL_23;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  if (v21 == 1)
  {
    v23 = v0[3];
    if (*(v23 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v23 = v0[3];
  if (*(v23 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 1)
  {
LABEL_28:
    swift_getKeyPath();
    v28 = swift_task_alloc();
    *(v28 + 16) = v23;
    *(v28 + 24) = 1;
    *v3 = v23;
LABEL_23:
    sub_10001CE18();
  }

LABEL_24:
  v26 = v0[1];

  return v26();
}

void *sub_10000B738(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001D708())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001D6D8();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

double LanguageSupportRemoteModel.downloadPercentage(for:)(uint64_t a1)
{
  swift_getKeyPath();
  v13 = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 cachedStatus];
    if (v5)
    {
      v6 = v5;
      sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
      v7 = sub_10001D4F8();

      __chkstk_darwin(v8);
      v12[2] = a1;
      v9 = sub_10000B738(sub_100016280, v12, v7);

      if (v9)
      {
        [v9 progress];
        v4 = v10;
      }
    }
  }

  return v4;
}

uint64_t LanguageSupportRemoteModel.debugStatusString(for:)(uint64_t a1)
{
  v2 = v1;
  sub_100015D94(0, &qword_100028E50, NSUserDefaults_ptr);
  v4 = sub_10001D5F8();
  v5 = sub_10001D608();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v13 = v2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  result = *(v2 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (!result)
  {
    return result;
  }

  result = [result cachedStatus];
  if (!result)
  {
    return result;
  }

  v7 = result;
  sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
  v8 = sub_10001D4F8();

  __chkstk_darwin(v9);
  v12[2] = a1;
  v10 = sub_10000B738(sub_100016280, v12, v8);

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 status];
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {

        return 0x6E776F6E6B6E55;
      }

      goto LABEL_14;
    }

    return 0x656C6C6174736E49;
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        sub_10001D6C8(16);
        v15._countAndFlagsBits = 0x64616F6C6E776F44;
        v15._object = 0xED00002820676E69;
        sub_10001D4C8(v15);
        [v10 progress];
        sub_10001D578();
        v16._countAndFlagsBits = 41;
        v16._object = 0xE100000000000000;
        sub_10001D4C8(v16);

        return v13;
      }

LABEL_14:

      return 0xD000000000000010;
    }

    return 0x74736E4920746F4ELL;
  }
}

uint64_t sub_10000BCAC(id *a1)
{
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 locale];
  sub_10001CDE8();

  v8 = sub_10001CDB8();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  if (v8 == sub_10001CDB8() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10001D738();
  }

  return v13 & 1;
}

uint64_t sub_10000BE0C(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    v3 = a1;
    sub_10001CE28();

    v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
    if (!v4)
    {
LABEL_7:

      goto LABEL_8;
    }

    v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v3 = v3;
    sub_100014B0C(v4);
    v4(0, a1);

    v6 = v4;
LABEL_6:
    sub_100014B1C(v6);
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v7 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    swift_getKeyPath();

    sub_10001CE28();

    v9 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
    v3 = v9;
    v7(v9, 0);
    v6 = v7;
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE18();
}

Swift::Void __swiftcall LanguageSupportRemoteModel.userDismissed()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:20 userInfo:0];
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v3 = v2;
  sub_10001CE28();

  v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v6 = v3;
    sub_100014B0C(v4);
    v4(0, v3);

    sub_100014B1C(v4);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001CE18();
}

void sub_10000C280(void *a1)
{
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - v8;
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = [a1 resolvedSourceLocale];
  if (v12)
  {
    v13 = v12;
    sub_10001CDE8();

    v14 = sub_10001CE08();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10001CE08();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  LanguageSupportRemoteModel.sourceLocale.setter(v11);
  v16 = [a1 resolvedTargetLocale];
  if (v16)
  {
    v17 = v16;
    sub_10001CDE8();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_10001CE08();
  v20 = *(*(v19 - 8) + 56);
  v21 = 1;
  v20(v9, v18, 1, v19);
  LanguageSupportRemoteModel.targetLocale.setter(v9);
  v22 = [a1 lidUnsupportedLocale];
  if (v22)
  {
    v23 = v22;
    sub_10001CDE8();

    v21 = 0;
  }

  v20(v6, v21, 1, v19);
  LanguageSupportRemoteModel.unsupportedLocale.setter(v6);
  v24 = [a1 lowConfidenceLocales];
  if (v24)
  {
    v25 = v24;
    v26 = sub_10001D4F8();

    v27 = _LTRecommendedMaxLowConfidenceLocalesToSuggest();
    v31 = sub_10000C5DC(v27, v26);
    if (v30)
    {
      v34 = v30;
      v35 = v29;
      v36 = v28;
      sub_10001D748();
      swift_unknownObjectRetain_n();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        swift_unknownObjectRelease();
        v37 = &_swiftEmptyArrayStorage;
      }

      v38 = v37[2];

      if (__OFSUB__(v34 >> 1, v35))
      {
        __break(1u);
      }

      else if (v38 == (v34 >> 1) - v35)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
LABEL_19:
          LanguageSupportRemoteModel.lowConfidenceLocales.setter(v33);
          goto LABEL_20;
        }

        v33 = &_swiftEmptyArrayStorage;
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
      v30 = v34;
      v29 = v35;
      v28 = v36;
    }

    sub_100011338(v31, v28, v29, v30);
    v33 = v32;
    goto LABEL_18;
  }

LABEL_20:
  v39 = a1;
  sub_10000996C(a1);
}

uint64_t sub_10000C5DC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_10001CE08() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

void sub_10000C670(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  swift_getKeyPath();
  v23 = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v12 = *&v1[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration];
  if (v12)
  {
    v13 = sub_10001CE08();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, a1, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    v15 = v12;
    LanguageSupportRemoteModel.sourceLocale.setter(v11);
    isa = sub_10001CDD8().super.isa;
    [v15 setResolvedSourceLocale:isa];

    v17 = sub_10001D568();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_10001D548();
    v18 = v15;
    v19 = v2;
    v20 = sub_10001D538();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v19;
    v21[5] = v18;
    sub_10000A7B4(0, 0, v7, &unk_10001E9B0, v21);
  }
}

uint64_t sub_10000C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_10001D548();
  v5[21] = sub_10001D538();
  v7 = sub_10001D528();
  v5[22] = v7;
  v5[23] = v6;

  return _swift_task_switch(sub_10000C9DC, v7, v6);
}

uint64_t sub_10000C9DC()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_getKeyPath();
  v0[24] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v0[10] = v2;
  v0[25] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v3 = *(v2 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CB90;
  v4 = swift_continuation_init();
  v0[17] = sub_100001CFC(&qword_100028F68, &qword_10001E9E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000D040;
  v0[13] = &unk_100025410;
  v0[14] = v4;
  [v3 resolveTargetLocaleIfNeeded:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CB90()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_10000CE14;
  }

  else
  {
    v6 = sub_10000CCC0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000CCC0()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[18];

  sub_10000C280(v4);
  v5 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  if (*(v3 + v5) == 1)
  {
  }

  else
  {
    v6 = v0[24];
    v7 = v0[25];
    v8 = v0[19];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[18] = v8;
    sub_10001CE18();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000CE14()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];

  swift_willThrow();

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v5 = sub_10001CF08();
  sub_100006A24(v5, qword_100029CB8);
  swift_errorRetain();
  v6 = sub_10001CEE8();
  v7 = sub_10001D5C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_10001CD58();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to resolve target locale or supported pairing: %@", v9, 0xCu);
    sub_100005D0C(v10, &qword_100028E80, &qword_10001E7A0);
  }

  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[19];

  swift_getKeyPath();
  v0[10] = v14;
  sub_10001CE28();

  v15 = *(v14 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v16 = v0[27];
  if (v15)
  {
    v17 = *(v14 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v18 = v0[27];
    swift_errorRetain();
    sub_100014B0C(v15);
    v15(0, v16);

    sub_100014B1C(v15);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10000D040(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000157FC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001CFC(&qword_100028F70, &qword_10001E9E8);
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

void *sub_10000D118()
{
  v1 = v0;
  v2 = sub_10001CE08();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  v4 = __chkstk_darwin(v2);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  swift_getKeyPath();
  v37 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v8 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v27 = v8;
  v9 = [v27 supportedLocales];
  v10 = sub_10001D4F8();

  swift_getKeyPath();
  v37 = v1;
  v11 = v10;
  sub_10001CE28();

  v12 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v10 + 16);
  v34 = v13;

  v32 = v14;
  if (v14)
  {
    v15 = 0;
    v28 = (v35 + 8);
    v29 = v35 + 16;
    v31 = (v35 + 32);
    v16 = &_swiftEmptyArrayStorage;
    v30 = v11;
    while (v15 < *(v11 + 16))
    {
      v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v20 = v11 + v19;
      v21 = *(v35 + 72);
      (*(v35 + 16))(v7, v20 + v21 * v15++, v2);
      v22 = v34 + v19;
      v23 = *(v34 + 16) + 1;
      while (--v23)
      {
        sub_100015E28(&qword_100028F58, &type metadata accessor for Locale);
        v22 += v21;
        if (sub_10001D448())
        {
          (*v28)(v7, v2);
          goto LABEL_7;
        }
      }

      v24 = *v31;
      (*v31)(v33, v7, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000114D8(0, v16[2] + 1, 1);
        v16 = v36;
      }

      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000114D8(v17 > 1, v18 + 1, 1);
        v16 = v36;
      }

      v16[2] = v18 + 1;
      v24(v16 + v19 + v18 * v21, v33, v2);
LABEL_7:
      v11 = v30;
      if (v15 == v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_17:

    v36 = v16;

    sub_1000124EC(&v36);

    return v36;
  }

  return result;
}

void sub_10000D54C()
{
  v1 = v0;
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v68 = (&v59 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v75 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v71 = v17;
  sub_10001CE28();

  v18 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  v67 = v18;
  sub_100005D74(v1 + v18, v16, &qword_100028D48, &qword_10001E3D0);
  v69 = v3;
  v19 = v3 + 48;
  v20 = *(v3 + 48);
  v72 = v2;
  LODWORD(v18) = v20(v16, 1, v2);
  sub_100005D0C(v16, &qword_100028D48, &qword_10001E3D0);
  if (v18 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_getKeyPath();
  v74[1] = v1;
  sub_10001CE28();

  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  swift_beginAccess();
  v64 = v21;
  sub_100005D74(v1 + v21, v14, &qword_100028D48, &qword_10001E3D0);
  v65 = v19;
  LODWORD(v21) = v20(v14, 1, v72);
  sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
  if (v21 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_getKeyPath();
  v74[0] = v1;
  sub_10001CE28();

  v22 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  v63 = v20;
  if (v22 && (v23 = [v22 cachedStatus]) != 0)
  {
    v24 = v23;
    sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
    v14 = sub_10001D4F8();
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v62 = v1;
  v1 = v14 & 0xFFFFFFFFFFFFFF8;
  if (!(v14 >> 62))
  {
    v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_30:
    v73 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_29:
  v25 = sub_10001D708();
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_9:
  v26 = 0;
  v27 = v70;
  v61 = (v69 + 8);
  v73 = &_swiftEmptyArrayStorage;
  do
  {
    v28 = v26;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v29 = sub_10001D6D8();
      }

      else
      {
        if (v28 >= *(v1 + 16))
        {
          goto LABEL_26;
        }

        v29 = *(v14 + 8 * v28 + 32);
      }

      v30 = v29;
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v29 status] == 2)
      {
        break;
      }

      ++v28;
      if (v26 == v25)
      {
        goto LABEL_31;
      }
    }

    v31 = [v30 locale];
    sub_10001CDE8();

    v60 = sub_10001CDB8();
    v59 = v32;

    (*v61)(v27, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_100010B80(0, *(v73 + 2) + 1, 1, v73);
    }

    v34 = *(v73 + 2);
    v33 = *(v73 + 3);
    if (v34 >= v33 >> 1)
    {
      v73 = sub_100010B80((v33 > 1), v34 + 1, 1, v73);
    }

    v35 = v73;
    *(v73 + 2) = v34 + 1;
    v36 = &v35[16 * v34];
    v37 = v59;
    *(v36 + 4) = v60;
    *(v36 + 5) = v37;
  }

  while (v26 != v25);
LABEL_31:

  v39 = sub_10001447C(v38);

  v40 = v62;
  sub_100009510(v39);
  v41 = sub_10001D408();
  __chkstk_darwin(v41);
  *(&v59 - 2) = v40;
  sub_10001CF88();

  sub_100001CFC(&qword_100028E68, &qword_10001E758);
  v42 = v69;
  v43 = (v69[80] + 32) & ~v69[80];
  v61 = *(v69 + 9);
  v70 = swift_allocObject();
  *(v70 + 1) = xmmword_10001E620;
  swift_getKeyPath();
  v74[0] = v40;
  sub_10001CE28();

  v44 = v68;
  sub_100005D74(v40 + v67, v68, &qword_100028D48, &qword_10001E3D0);
  v45 = v72;
  v46 = v63;
  if (v63(v44, 1, v72) == 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v68 = *(v42 + 4);
  v69 = &v70[v43];
  v68();
  swift_getKeyPath();
  v74[0] = v40;
  sub_10001CE28();

  v47 = v66;
  sub_100005D74(v40 + v64, v66, &qword_100028D48, &qword_10001E3D0);
  if (v46(v47, 1, v45) == 1)
  {
LABEL_40:
    __break(1u);
    return;
  }

  (v68)(v61 + v69, v47, v45);
  v48 = objc_opt_self();
  isa = sub_10001D4E8().super.isa;
  [v48 addLanguages:isa useCellular:0];

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v50 = sub_10001CF08();
  sub_100006A24(v50, qword_100029CB8);

  v51 = sub_10001CEE8();
  v52 = sub_10001D5E8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v74[0] = v54;
    *v53 = 136446210;
    v55 = sub_10001D508();
    v57 = v56;

    v58 = sub_100010D90(v55, v57, v74);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "User approved downloads; requested download of: %{public}s", v53, 0xCu);
    sub_100014B94(v54);
  }

  else
  {
  }
}

uint64_t sub_10000DE80(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  return result;
}

Swift::Void __swiftcall LanguageSupportRemoteModel.cancel()()
{
  v1 = v0;
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v145 = (&v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v139 = &v133 - v7;
  v8 = __chkstk_darwin(v6);
  v146 = &v133 - v9;
  __chkstk_darwin(v8);
  v11 = &v133 - v10;
  v12 = sub_10001CE08();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v147 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v140 = &v133 - v18;
  __chkstk_darwin(v17);
  v20 = &v133 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v153 = v0;
  v22 = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v23 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  v138 = v23;
  sub_100005D74(v1 + v23, v11, &qword_100028D48, &qword_10001E3D0);
  v24 = v13[6];
  v25 = v24(v11, 1, v12);
  v148 = v12;
  v143 = v21;
  v144 = v1;
  v141 = v13;
  v142 = v22;
  if (v25 != 1)
  {
    v28 = v13[4];
    v137 = v20;
    v136 = v28;
    v28(v20, v11, v12);
    swift_getKeyPath();
    v150 = v1;
    sub_10001CE28();

    v29 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v30 = v1 + v29;
    v31 = v146;
    sub_100005D74(v30, v146, &qword_100028D48, &qword_10001E3D0);
    v26 = v24;
    if (v24(v31, 1, v12) == 1)
    {
      (v141[1])(v137, v12);
      v27 = v146;
      goto LABEL_5;
    }

    v43 = v140;
    v136(v140, v146, v12);
    sub_100001CFC(&qword_100028E68, &qword_10001E758);
    v44 = v141;
    v45 = v141[9];
    v46 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10001E620;
    v138 = v47;
    v48 = v47 + v46;
    v49 = v44[2];
    v49(v47 + v46, v137, v12);
    v145 = v44 + 2;
    v146 = v45;
    v50 = v49;
    v49(v48 + v45, v43, v12);
    swift_getKeyPath();
    v150 = v1;
    sub_10001CE28();

    v51 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
    v52 = v44;
    if (v51)
    {
      v53 = [v51 cachedStatus];
      v33 = v143;
      if (v53)
      {
        v54 = v53;
        sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
        v55 = sub_10001D4F8();

        if (v55 >> 62)
        {
          v32 = (v55 & 0xFFFFFFFFFFFFFF8);
          v56 = sub_10001D708();
          if (v56)
          {
LABEL_13:
            v57 = 0;
            v58 = v55 & 0xC000000000000001;
            v136 = (v52 + 1);
            v139 = &_swiftEmptyArrayStorage;
            do
            {
              v59 = v57;
              while (1)
              {
                if (v58)
                {
                  v60 = sub_10001D6D8();
                }

                else
                {
                  if (v59 >= v32[2])
                  {
                    goto LABEL_38;
                  }

                  v60 = *(v55 + 8 * v59 + 32);
                }

                v33 = v60;
                v57 = v59 + 1;
                if (__OFADD__(v59, 1))
                {
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                if ([v60 status] == 2)
                {
                  break;
                }

                ++v59;
                if (v57 == v56)
                {
                  goto LABEL_42;
                }
              }

              v135 = v55;
              v61 = [v33 locale];
              v62 = v147;
              sub_10001CDE8();

              v63 = sub_10001CDB8();
              v134 = v64;

              (*v136)(v62, v148);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v139 = sub_100010B80(0, *(v139 + 2) + 1, 1, v139);
              }

              v66 = *(v139 + 2);
              v65 = *(v139 + 3);
              v33 = (v66 + 1);
              if (v66 >= v65 >> 1)
              {
                v139 = sub_100010B80((v65 > 1), v66 + 1, 1, v139);
              }

              v67 = v139;
              *(v139 + 2) = v33;
              v68 = &v67[16 * v66];
              v69 = v134;
              *(v68 + 4) = v63;
              *(v68 + 5) = v69;
              v55 = v135;
            }

            while (v57 != v56);
            goto LABEL_42;
          }
        }

        else
        {
          v32 = (v55 & 0xFFFFFFFFFFFFFF8);
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v56)
          {
            goto LABEL_13;
          }
        }

        v139 = &_swiftEmptyArrayStorage;
LABEL_42:

        v89 = v138;
        v12 = v148;
        goto LABEL_43;
      }

      v139 = &_swiftEmptyArrayStorage;
      v89 = v138;
    }

    else
    {
      v139 = &_swiftEmptyArrayStorage;
      v89 = v138;
    }

LABEL_43:
    v90 = *(v89 + 16);
    v91 = &_swiftEmptyArrayStorage;
    v136 = v90;
    if (v90)
    {
      v150 = &_swiftEmptyArrayStorage;
      sub_1000114F8(0, v90, 0);
      v91 = v150;
      v92 = (v52 + 1);
      do
      {
        v93 = v147;
        v94 = v148;
        v50(v147, v48, v148);
        v95 = sub_10001CDB8();
        v97 = v96;
        (*v92)(v93, v94);
        v150 = v91;
        v99 = v91[2];
        v98 = v91[3];
        if (v99 >= v98 >> 1)
        {
          sub_1000114F8((v98 > 1), v99 + 1, 1);
          v91 = v150;
        }

        v91[2] = v99 + 1;
        v100 = &v91[2 * v99];
        v100[4] = v95;
        v100[5] = v97;
        v48 += v146;
        --v90;
      }

      while (v90);
      v12 = v148;
    }

    v101 = sub_10001447C(v91);

    v150 = v101;
    swift_getKeyPath();
    v102 = v144;
    v149[0] = v144;
    sub_10001CE28();

    v103 = *(v102 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);

    sub_1000120C0(v104);

    sub_10000F2E4(v139);

    v106 = sub_10000EFC8(v105);

    if (*(v106 + 16) == v136)
    {
    }

    else
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v107 = sub_10001CF08();
      sub_100006A24(v107, qword_100029CB8);

      v108 = sub_10001CEE8();
      v109 = sub_10001D5A8();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v149[0] = swift_slowAlloc();
        *v110 = 136446466;
        v111 = sub_10001D508();
        v113 = v112;

        v114 = sub_100010D90(v111, v113, v149);

        *(v110 + 4) = v114;
        *(v110 + 12) = 2082;

        v115 = sub_10001D588();
        v117 = v116;

        v118 = sub_100010D90(v115, v117, v149);

        *(v110 + 14) = v118;
        _os_log_impl(&_mh_execute_header, v108, v109, "User wants to cancel downloads; some languages are already installed so not removing all languages; languages shown: %{public}s; languages to remove: %{public}s", v110, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    if (qword_100028A88 != -1)
    {
      swift_once();
    }

    v119 = sub_10001CF08();
    sub_100006A24(v119, qword_100029CB8);
    v120 = sub_10001CEE8();
    v121 = sub_10001D5E8();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v149[0] = v123;
      *v122 = 136446210;

      v124 = sub_10001D588();
      v126 = v125;

      v127 = sub_100010D90(v124, v126, v149);

      *(v122 + 4) = v127;
      _os_log_impl(&_mh_execute_header, v120, v121, "User cancelled downloads; requesting removal of: %{public}s", v122, 0xCu);
      sub_100014B94(v123);
    }

    v128 = v141;
    v129 = v137;
    v130 = objc_opt_self();
    isa = sub_10001D4E8().super.isa;

    [v130 removeLanguages:isa];

    sub_10000AAD8();
    v132 = v128[1];
    v132(v140, v12);
    v132(v129, v12);

    return;
  }

  v26 = v24;
  v27 = v11;
LABEL_5:
  sub_100005D0C(v27, &qword_100028D48, &qword_10001E3D0);
  v32 = v144;
  v33 = v26;
  if (qword_100028A88 != -1)
  {
LABEL_39:
    swift_once();
  }

  v34 = sub_10001CF08();
  sub_100006A24(v34, qword_100029CB8);
  v35 = v32;
  v36 = sub_10001CEE8();
  v37 = sub_10001D5D8();

  if (os_log_type_enabled(v36, v37))
  {
    LODWORD(v146) = v37;
    v38 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v152 = v140;
    *v38 = 136315394;
    swift_getKeyPath();
    v150 = v35;
    sub_10001CE28();

    v39 = v139;
    sub_100005D74(v32 + v138, v139, &qword_100028D48, &qword_10001E3D0);
    v40 = v148;
    if (v33(v39, 1, v148))
    {
      sub_100005D0C(v39, &qword_100028D48, &qword_10001E3D0);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v70 = v141;
      v71 = v147;
      (v141[2])(v147, v39, v40);
      sub_100005D0C(v39, &qword_100028D48, &qword_10001E3D0);
      v41 = sub_10001CDB8();
      v42 = v72;
      (v70[1])(v71, v40);
    }

    v150 = v41;
    v151 = v42;
    sub_100001CFC(&qword_100028E60, &qword_10001E750);
    v73 = sub_10001D498();
    v75 = sub_100010D90(v73, v74, &v152);

    *(v38 + 4) = v75;
    *(v38 + 12) = 2080;
    swift_getKeyPath();
    v150 = v35;
    sub_10001CE28();

    v76 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v77 = v35 + v76;
    v78 = v145;
    sub_100005D74(v77, v145, &qword_100028D48, &qword_10001E3D0);
    if (v33(v78, 1, v40))
    {
      sub_100005D0C(v78, &qword_100028D48, &qword_10001E3D0);
      v79 = 0;
      v80 = 0;
    }

    else
    {
      v81 = v141;
      v82 = v147;
      (v141[2])(v147, v78, v40);
      sub_100005D0C(v78, &qword_100028D48, &qword_10001E3D0);
      v79 = sub_10001CDB8();
      v83 = v40;
      v80 = v84;
      (v81[1])(v82, v83);
    }

    v85 = v146;
    v149[0] = v79;
    v149[1] = v80;
    v86 = sub_10001D498();
    v88 = sub_100010D90(v86, v87, &v152);

    *(v38 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v36, v85, "Unable to cancel downloads because unexpectedly have nil source or target locale when trying to cancel downloads, which shouldn't happen; source: %s; target: %s", v38, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10000EFC8(uint64_t a1)
{
  v40 = sub_10001CE08();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v33[1] = v1;
  v42 = &_swiftEmptyArrayStorage;
  v35 = v5;
  sub_1000114D8(0, v8, 0);
  v9 = v42;
  v10 = v35 + 56;
  v11 = -1 << *(v35 + 32);
  result = sub_10001D678();
  v13 = result;
  v14 = v35;
  v15 = 0;
  v38 = v3 + 32;
  v39 = v3;
  v34 = v35 + 64;
  v36 = v8;
  v37 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v41 = *(v14 + 36);
    v19 = (*(v14 + 48) + 16 * v13);
    v20 = *v19;
    v21 = v19[1];
    v22 = v14;

    sub_10001CD98();
    v42 = v9;
    v23 = v7;
    v25 = v9[2];
    v24 = v9[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000114D8(v24 > 1, v25 + 1, 1);
      v9 = v42;
    }

    v9[2] = v25 + 1;
    result = (*(v39 + 32))(v9 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v23, v40);
    v16 = 1 << *(v22 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v14 = v22;
    v10 = v37;
    v26 = *(v37 + 8 * v18);
    if ((v26 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v41 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v7 = v23;
    v27 = v26 & (-2 << (v13 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
    }

    else
    {
      v28 = v18 << 6;
      v29 = v18 + 1;
      v30 = (v34 + 8 * v18);
      v17 = v36;
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100016170(v13, v41, 0);
          v14 = v35;
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      result = sub_100016170(v13, v41, 0);
      v14 = v35;
LABEL_19:
      v7 = v23;
    }

    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10000F2E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1000121EC(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_10000F360()
{
  v0 = sub_10001CE08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v5 = sub_10001CDC8();
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v4, v0);
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (!v7)
  {
    v7 = 0xE000000000000000;
  }

  sub_10001CDF8();
  v10 = sub_10001CDC8();
  v12 = v11;
  v8(v4, v0);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v9 == v13 && v7 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_10001D738();
  }

  return v16 & 1;
}

void sub_10000F500(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10000C280(a2);
    if (a3 == 2)
    {
      v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v8] != 2)
      {
        goto LABEL_12;
      }
    }

    else if (a3 == 1)
    {
      v7 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v7] != 1)
      {
LABEL_12:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
        sub_10001CE18();

        return;
      }
    }

    else
    {
      if (a3)
      {
        sub_10001D6F8();
        __break(1u);
        return;
      }

      v9 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v9])
      {
        v10 = swift_getKeyPath();
        __chkstk_darwin(v10);
        sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
        sub_10001CE18();
      }

      if (v6[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState])
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_10000F960(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10001CD58();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id LanguageSupportRemoteModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSupportRemoteModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LanguageSupportRemoteModel.startRequest(configuration:)(void *a1)
{
  v2 = v1;
  v4 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v8 = sub_10001CF08();
  sub_100006A24(v8, qword_100029CD0);
  v9 = a1;
  v10 = sub_10001CEE8();
  v11 = sub_10001D5E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "UI extension received request for configuration: %{public}@", v12, 0xCu);
    sub_100005D0C(v13, &qword_100028E80, &qword_10001E7A0);
  }

  sub_10000C280(v9);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v21[-3] = 0;
  v21[-2] = 0;
  v21[-4] = v2;
  v21[1] = v2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE18();

  v16 = sub_10001D568();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = v9;
  v18 = v9;
  v19 = v2;
  sub_10000A7B4(0, 0, v7, &unk_10001E798, v17);
}

uint64_t sub_10000FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_10000FF74, 0, 0);
}

uint64_t sub_10000FF74()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[18] = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v2 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  if (v2 && ([v2 remoteObjectProxy], sub_10001D658(), swift_unknownObjectRelease(), sub_100001CFC(&qword_100028F98, &qword_10001EA48), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v0[19];
    v8 = v0[20];
    v0[21] = v0[18];
    swift_getKeyPath();
    v0[10] = v3;
    sub_10001CE28();

    v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100010218;
    v5 = swift_continuation_init();
    v0[17] = sub_100001CFC(&qword_100028F68, &qword_10001E9E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000D040;
    v0[13] = &unk_100025528;
    v0[14] = v5;
    [v4 preflightConfiguration:v8 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100010218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1000104EC;
  }

  else
  {
    v3 = sub_100010328;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100010328()
{
  v1 = *(v0 + 144);

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v2 = sub_10001CF08();
  sub_100006A24(v2, qword_100029CB8);
  v3 = v1;
  v4 = sub_10001CEE8();
  v5 = sub_10001D5E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished preflight configuration with configuration: %{public}@", v6, 0xCu);
    sub_100005D0C(v7, &qword_100028E80, &qword_10001E7A0);
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = v3;
  sub_10000996C(v3);
  [v9 didFinishWithFinalConfiguration:v11 error:0];
  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000104EC()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = sub_10001CF08();
  sub_100006A24(v4, qword_100029CB8);
  swift_errorRetain();
  v5 = sub_10001CEE8();
  v6 = sub_10001D5C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_10001CD58();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed preflight configuration with error: %@", v8, 0xCu);
    sub_100005D0C(v9, &qword_100028E80, &qword_10001E7A0);
  }

  v11 = v0[23];
  v12 = v0[21];

  v13 = sub_10001CD58();
  [v12 didFinishWithFinalConfiguration:0 error:v13];

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

Swift::Bool __swiftcall LanguageSupportRemoteModel.shouldAccept(connection:)(NSXPCConnection connection)
{
  [(objc_class *)connection.super.isa setExportedObject:v1];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationAPISupport32LanguageSupportXPCRemoteProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v4];
  v5 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationAPISupport30LanguageSupportXPCHostProtocol_];
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v5];

  [(objc_class *)connection.super.isa resume];
  v6 = connection.super.isa;
  sub_100008EBC(connection.super.isa);
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CF08();
  sub_100006A24(v7, qword_100029CD0);
  v8 = sub_10001CEE8();
  v9 = sub_10001D5B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Remote Connection established", v10, 2u);
  }

  return 1;
}

uint64_t sub_100010908(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
    v2 = sub_10001D4F8();
  }

  v4(v2);
}

uint64_t sub_100010990(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010A88;

  return v7(a1);
}

uint64_t sub_100010A88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100010B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FC0, &qword_10001EA58);
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

char *sub_100010C8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028F60, &qword_10001E9A0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100010D90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010E5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015798(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100014B94(v11);
  return v7;
}

unint64_t sub_100010E5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010F68(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_10001D6E8();
    a6 = v11;
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

char *sub_100010F68(uint64_t a1, unint64_t a2)
{
  v4 = sub_100010FB4(a1, a2);
  sub_1000110E4(&off_1000250A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100010FB4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000111D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001D6E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001D4D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000111D0(v10, 0);
        result = sub_10001D6B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000110E4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100011244(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000111D0(uint64_t a1, uint64_t a2)
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

  sub_100001CFC(&qword_100028FD0, &qword_10001EA78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100011244(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FD0, &qword_10001EA78);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void sub_100011338(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100001CFC(&qword_100028E68, &qword_10001E758);
      v7 = *(sub_10001CE08() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_10001CE08() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

size_t sub_1000114D8(size_t a1, int64_t a2, char a3)
{
  result = sub_100011518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000114F8(char *a1, int64_t a2, char a3)
{
  result = sub_1000116F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100011518(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001CFC(&qword_100028E68, &qword_10001E758);
  v10 = *(sub_10001CE08() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10001CE08() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000116F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FC0, &qword_10001EA58);
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

uint64_t sub_1000117FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10001D768();
  sub_10001D4B8();
  v9 = sub_10001D788();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10001D738() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100011BAC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001194C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  result = sub_10001D6A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10001D768();
      sub_10001D4B8();
      result = sub_10001D788();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100011BAC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001194C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100011D2C();
      goto LABEL_16;
    }

    sub_100011E88(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001D768();
  sub_10001D4B8();
  result = sub_10001D788();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D738();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D758();
  __break(1u);
  return result;
}

void *sub_100011D2C()
{
  v1 = v0;
  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  v2 = *v0;
  v3 = sub_10001D698();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_100011E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  result = sub_10001D6A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10001D768();

      sub_10001D4B8();
      result = sub_10001D788();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1000120C0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000121EC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1000121EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10001D768();
  sub_10001D4B8();
  v7 = sub_10001D788();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10001D738() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100011D2C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100012328(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_100012328(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_10001D688();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10001D768();

        sub_10001D4B8();
        v15 = sub_10001D788();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_1000124EC(void **a1)
{
  v2 = *(sub_10001CE08() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100014468(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100012594(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100012594(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10001D718(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001CE08();
        v6 = sub_10001D518();
        v6[2] = v5;
      }

      v7 = *(sub_10001CE08() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100012A78(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000126C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000126C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10001CE08();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v46 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - v15;
  result = __chkstk_darwin(v14);
  v64 = &v46 - v19;
  v48 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v57 = v22;
    v58 = v16;
    v23 = *(v21 + 56);
    v62 = v8;
    v63 = (v21 - 8);
    v59 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v53 = -v23;
    v54 = (v21 + 16);
    v25 = a1 - a3;
    v55 = v20;
    v47 = v23;
    v26 = v20 + v23 * a3;
LABEL_6:
    v51 = v24;
    v52 = a3;
    v49 = v26;
    v50 = v25;
    v27 = v25;
    while (1)
    {
      v61 = v27;
      v28 = v57;
      v57(v64, v26, v8);
      v28(v16, v24, v8);
      v29 = v60;
      sub_10001CDF8();
      v30 = sub_10001CDC8();
      v32 = v31;
      v33 = *v63;
      (*v63)(v29, v62);
      if (v32)
      {
        v34 = v30;
      }

      else
      {
        v34 = 0;
      }

      if (!v32)
      {
        v32 = 0xE000000000000000;
      }

      sub_10001CDF8();
      v35 = sub_10001CDC8();
      v37 = v36;
      v38 = v29;
      v8 = v62;
      v33(v38, v62);
      if (v37)
      {
        v39 = v35;
      }

      else
      {
        v39 = 0;
      }

      if (v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      if (v34 == v39 && v32 == v40)
      {

        v16 = v58;
        v33(v58, v8);
        result = (v33)(v64, v8);
LABEL_5:
        a3 = v52 + 1;
        v24 = v51 + v47;
        v25 = v50 - 1;
        v26 = v49 + v47;
        if (v52 + 1 == v48)
        {
          return result;
        }

        goto LABEL_6;
      }

      v41 = sub_10001D738();

      v16 = v58;
      v33(v58, v8);
      result = (v33)(v64, v8);
      v42 = v61;
      if ((v41 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v43 = *v54;
      v44 = v56;
      (*v54)(v56, v26, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v43)(v24, v44, v8);
      v24 += v53;
      v26 += v53;
      v45 = __CFADD__(v42, 1);
      v27 = v42 + 1;
      if (v45)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100012A78(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v7 = v5;
  v144 = a1;
  v10 = sub_10001CE08();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v148 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v160 = &v139 - v15;
  v16 = __chkstk_darwin(v14);
  v169 = &v139 - v17;
  v18 = __chkstk_darwin(v16);
  v167 = &v139 - v19;
  v20 = __chkstk_darwin(v18);
  v163 = &v139 - v21;
  v22 = __chkstk_darwin(v20);
  v156 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v155 = &v139 - v25;
  v26 = __chkstk_darwin(v24);
  result = __chkstk_darwin(v26);
  v31 = a3[1];
  v154 = v29;
  if (v31 < 1)
  {
    v33 = &_swiftEmptyArrayStorage;
LABEL_126:
    a4 = *v144;
    if (!*v144)
    {
      goto LABEL_168;
    }

    v4 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v154;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
    }

    else
    {
LABEL_162:
      result = sub_100013FA4(v4);
    }

    v170 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v134 = *(result + 16 * v4);
        v135 = result;
        v136 = *(result + 16 * (v4 - 1) + 40);
        sub_10001375C(*a3 + *(v6 + 72) * v134, *a3 + *(v6 + 72) * *(result + 16 * (v4 - 1) + 32), (*a3 + *(v6 + 72) * v136), a4);
        if (v7)
        {
        }

        if (v136 < v134)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_100013FA4(v135);
        }

        if (v4 - 2 >= *(v135 + 2))
        {
          goto LABEL_156;
        }

        v137 = &v135[16 * v4];
        *v137 = v134;
        *(v137 + 1) = v136;
        v170 = v135;
        sub_100013F18(v4 - 1);
        result = v170;
        v4 = *(v170 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_166;
    }
  }

  v140 = &v139 - v28;
  v141 = v30;
  v32 = 0;
  v164 = v29 + 16;
  v168 = (v29 + 8);
  v162 = (v29 + 32);
  v33 = &_swiftEmptyArrayStorage;
  v145 = a3;
  v143 = a4;
  while (1)
  {
    v149 = v33;
    if (v32 + 1 < v31)
    {
      v34 = *a3;
      v35 = *(v154 + 72);
      v4 = *(v154 + 16);
      v36 = v140;
      v166 = &v34[v35 * (v32 + 1)];
      (v4)(v140);
      v161 = v34;
      v37 = &v34[v35 * v32];
      v6 = v32;
      v38 = v141;
      v153 = v4;
      (v4)(v141, v37, v10);
      LODWORD(v158) = sub_10000F360();
      if (!v7)
      {
        v157 = v31;
        v146 = 0;
        v39 = *v168;
        (*v168)(v38, v10);
        v165 = v39;
        result = (v39)(v36, v10);
        v142 = v6;
        v40 = v6 + 2;
        v41 = &v161[v35 * (v6 + 2)];
        v42 = v35;
        v159 = v35;
        v43 = v166;
        while (1)
        {
          v46 = v157;
          if (v157 == v40)
          {
            break;
          }

          v47 = v153;
          v153(v155, v41, v10);
          v166 = v43;
          v47(v156, v43, v10);
          v48 = v163;
          sub_10001CDF8();
          v49 = sub_10001CDC8();
          v51 = v50;
          v52 = v165;
          v165(v48, v10);
          if (v51)
          {
            v53 = v49;
          }

          else
          {
            v53 = 0;
          }

          v161 = v53;
          if (!v51)
          {
            v51 = 0xE000000000000000;
          }

          sub_10001CDF8();
          v54 = sub_10001CDC8();
          v6 = v55;
          v52(v48, v10);
          if (v6)
          {
            v56 = v54;
          }

          else
          {
            v56 = 0;
          }

          if (v6)
          {
            v57 = v6;
          }

          else
          {
            v57 = 0xE000000000000000;
          }

          if (v161 == v56 && v51 == v57)
          {
            v44 = 0;
          }

          else
          {
            v44 = sub_10001D738();
          }

          v4 = v165;
          v165(v156, v10);
          result = (v4)(v155, v10);
          v45 = v158 ^ v44;
          ++v40;
          v42 = v159;
          v41 += v159;
          v43 = v166 + v159;
          if (v45)
          {
            v46 = v40 - 1;
            break;
          }
        }

        v7 = v146;
        a3 = v145;
        v58 = v149;
        a4 = v143;
        v32 = v142;
        if (v158)
        {
          if (v46 < v142)
          {
            goto LABEL_161;
          }

          if (v142 < v46)
          {
            v4 = v42 * (v46 - 1);
            v59 = v46 * v42;
            v157 = v46;
            v60 = v46;
            v61 = v142;
            v6 = v142 * v42;
            do
            {
              if (v61 != --v60)
              {
                v62 = *a3;
                if (!*a3)
                {
                  goto LABEL_165;
                }

                v63 = *v162;
                (*v162)(v148, &v62[v6], v10, v58);
                if (v6 < v4 || &v62[v6] >= &v62[v59])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v6 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = v63(&v62[v4], v148, v10);
                v7 = v146;
                a3 = v145;
                v58 = v149;
                v42 = v159;
              }

              ++v61;
              v4 -= v42;
              v59 -= v42;
              v6 += v42;
            }

            while (v61 < v60);
            a4 = v143;
            v32 = v142;
            v46 = v157;
          }
        }

        goto LABEL_40;
      }

      v138 = *v168;
      (*v168)(v38, v10);
      v138(v36, v10);
    }

    v46 = v32 + 1;
LABEL_40:
    v64 = a3[1];
    if (v46 >= v64)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v46, v32))
    {
      goto LABEL_158;
    }

    if (v46 - v32 >= a4)
    {
LABEL_49:
      a4 = v46;
      if (v46 < v32)
      {
        goto LABEL_157;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v32, a4))
    {
      goto LABEL_159;
    }

    if (v32 + a4 >= v64)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v32;
    }

    if (a4 < v32)
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v46 == a4)
    {
      goto LABEL_49;
    }

    v146 = v7;
    v110 = *a3;
    v111 = *(v154 + 72);
    v161 = *(v154 + 16);
    v112 = &v110[v111 * (v46 - 1)];
    v158 = -v111;
    v142 = v32;
    v113 = v32 - v46;
    v159 = v110;
    v147 = v111;
    v114 = &v110[v46 * v111];
    v150 = a4;
LABEL_102:
    v157 = v46;
    v151 = v114;
    v152 = v113;
    v115 = v114;
    v6 = v113;
    v153 = v112;
    v116 = v112;
LABEL_103:
    v165 = v6;
    v117 = v161;
    (v161)(v167, v115, v10);
    v117(v169, v116, v10);
    v118 = v163;
    sub_10001CDF8();
    v119 = sub_10001CDC8();
    v121 = v120;
    v122 = *v168;
    (*v168)(v118, v10);
    if (v121)
    {
      v123 = v119;
    }

    else
    {
      v123 = 0;
    }

    v124 = 0xE000000000000000;
    if (v121)
    {
      v124 = v121;
    }

    v166 = v124;
    sub_10001CDF8();
    v125 = sub_10001CDC8();
    v127 = v126;
    v122(v118, v10);
    v128 = v127 ? v125 : 0;
    v4 = v127 ? v127 : 0xE000000000000000;
    v6 = v166;
    if (v123 != v128 || v166 != v4)
    {
      break;
    }

    v122(v169, v10);
    v122(v167, v10);
LABEL_101:
    v46 = v157 + 1;
    v112 = v153 + v147;
    v113 = v152 - 1;
    a4 = v150;
    v114 = &v151[v147];
    if (v157 + 1 != v150)
    {
      goto LABEL_102;
    }

    v7 = v146;
    a3 = v145;
    v32 = v142;
    if (v150 < v142)
    {
      goto LABEL_157;
    }

LABEL_50:
    result = swift_isUniquelyReferenced_nonNull_native();
    v150 = a4;
    if (result)
    {
      v33 = v149;
    }

    else
    {
      result = sub_100010C8C(0, *(v149 + 2) + 1, 1, v149);
      v33 = result;
    }

    v66 = *(v33 + 2);
    v65 = *(v33 + 3);
    v4 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      result = sub_100010C8C((v65 > 1), v66 + 1, 1, v33);
      v33 = result;
    }

    *(v33 + 2) = v4;
    v67 = &v33[16 * v66];
    v68 = v150;
    *(v67 + 4) = v32;
    *(v67 + 5) = v68;
    v69 = *v144;
    if (!*v144)
    {
      goto LABEL_167;
    }

    if (v66)
    {
      while (2)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          v74 = &v33[16 * v4 + 32];
          v75 = *(v74 - 64);
          v76 = *(v74 - 56);
          v80 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          if (v80)
          {
            goto LABEL_144;
          }

          v79 = *(v74 - 48);
          v78 = *(v74 - 40);
          v80 = __OFSUB__(v78, v79);
          v72 = v78 - v79;
          v73 = v80;
          if (v80)
          {
            goto LABEL_145;
          }

          v81 = &v33[16 * v4];
          v83 = *v81;
          v82 = *(v81 + 1);
          v80 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v80)
          {
            goto LABEL_147;
          }

          v80 = __OFADD__(v72, v84);
          v85 = v72 + v84;
          if (v80)
          {
            goto LABEL_150;
          }

          if (v85 >= v77)
          {
            v103 = &v33[16 * a4 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v80 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v80)
            {
              goto LABEL_154;
            }

            if (v72 < v106)
            {
              a4 = v4 - 2;
            }
          }

          else
          {
LABEL_69:
            if (v73)
            {
              goto LABEL_146;
            }

            v86 = &v33[16 * v4];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_149;
            }

            v92 = &v33[16 * a4 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_152;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_153;
            }

            if (v90 + v95 < v72)
            {
              goto LABEL_83;
            }

            if (v72 < v95)
            {
              a4 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v70 = *(v33 + 4);
            v71 = *(v33 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
            goto LABEL_69;
          }

          v96 = &v33[16 * v4];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_83:
          if (v91)
          {
            goto LABEL_148;
          }

          v99 = &v33[16 * a4];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_151;
          }

          if (v102 < v90)
          {
            break;
          }
        }

        v107 = a4 - 1;
        if (a4 - 1 >= v4)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*a3)
        {
          goto LABEL_164;
        }

        v6 = v33;
        v4 = *&v33[16 * v107 + 32];
        v108 = *&v33[16 * a4 + 40];
        sub_10001375C(*a3 + *(v154 + 72) * v4, *a3 + *(v154 + 72) * *&v33[16 * a4 + 32], (*a3 + *(v154 + 72) * v108), v69);
        if (v7)
        {
        }

        if (v108 < v4)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100013FA4(v6);
        }

        if (v107 >= *(v6 + 16))
        {
          goto LABEL_143;
        }

        v109 = v6 + 16 * v107;
        *(v109 + 32) = v4;
        *(v109 + 40) = v108;
        v170 = v6;
        result = sub_100013F18(a4);
        v33 = v170;
        v4 = *(v170 + 16);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v31 = a3[1];
    v32 = v150;
    a4 = v143;
    if (v150 >= v31)
    {
      goto LABEL_126;
    }
  }

  v129 = sub_10001D738();

  v4 = v168;
  v122(v169, v10);
  result = (v122)(v167, v10);
  if ((v129 & 1) == 0)
  {
    goto LABEL_101;
  }

  v130 = v165;
  if (v159)
  {
    v4 = *v162;
    v131 = v160;
    (*v162)(v160, v115, v10);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(v116, v131, v10);
    v116 += v158;
    v115 += v158;
    v132 = __CFADD__(v130, 1);
    v6 = v130 + 1;
    if (v132)
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_10001375C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v89 = sub_10001CE08();
  v8 = *(v89 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v89);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v82 = &v73 - v13;
  v14 = __chkstk_darwin(v12);
  v84 = &v73 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v73 - v17;
  result = __chkstk_darwin(v16);
  v21 = &v73 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_93;
  }

  v24 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_94;
  }

  v80 = a3;
  v25 = (a2 - a1) / v23;
  v92 = a1;
  v91 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v27;
    if (v27 >= 1)
    {
      v76 = (v8 + 16);
      v77 = -v23;
      v81 = (v8 + 8);
      v49 = -v23;
      v50 = a4 + v27;
      v51 = v80;
      v86 = a1;
      v87 = a4;
      while (2)
      {
        while (1)
        {
          v74 = v48;
          v52 = a2;
          v53 = a2 + v49;
          v88 = a2 + v49;
          v78 = a2;
          while (1)
          {
            v85 = v51;
            if (v52 <= a1)
            {
              v92 = v52;
              v90 = v74;
              goto LABEL_91;
            }

            v75 = v48;
            v54 = *v76;
            v79 = (v50 + v49);
            v80 = v50;
            v55 = v89;
            v54(v82);
            (v54)(v83, v53, v55);
            v56 = v84;
            sub_10001CDF8();
            v57 = sub_10001CDC8();
            v59 = v58;
            v60 = *v81;
            (*v81)(v56, v55);
            if (v59)
            {
              v61 = v57;
            }

            else
            {
              v61 = 0;
            }

            if (!v59)
            {
              v59 = 0xE000000000000000;
            }

            sub_10001CDF8();
            v62 = sub_10001CDC8();
            v64 = v63;
            v60(v56, v55);
            v65 = v64 ? v62 : 0;
            v66 = v64 ? v64 : 0xE000000000000000;
            v67 = v61 == v65 && v59 == v66 ? 0 : sub_10001D738();

            v49 = v77;
            v68 = v85;
            v51 = &v85[v77];
            v69 = v89;
            v60(v83, v89);
            v60(v82, v69);
            a1 = v86;
            v50 = v80;
            v52 = v78;
            if (v67)
            {
              break;
            }

            v70 = v79;
            v48 = v79;
            v28 = v68 >= v80;
            v71 = v87;
            if (v28 && v51 < v80)
            {
              v53 = v88;
              if (v85 != v80)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            else
            {
              swift_arrayInitWithTakeFrontToBack();
              v53 = v88;
            }

            v50 = v48;
            if (v70 <= v71)
            {
              a2 = v52;
              goto LABEL_90;
            }
          }

          v28 = v68 >= v78;
          v72 = v87;
          if (!v28 || v51 >= v78)
          {
            break;
          }

          a2 = v88;
          v48 = v75;
          if (v85 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v50 <= v72)
          {
            goto LABEL_90;
          }
        }

        a2 = v88;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v75;
        if (v50 > v72)
        {
          continue;
        }

        break;
      }
    }

LABEL_90:
    v92 = a2;
    v90 = v48;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = (a4 + v26);
    v90 = a4 + v26;
    v28 = v26 < 1 || a2 >= v80;
    if (!v28)
    {
      v78 = *(v8 + 16);
      v79 = v21;
      v81 = v23;
      v82 = (v8 + 16);
      v85 = (v8 + 8);
      v77 = v18;
      do
      {
        v86 = a1;
        v88 = a2;
        v29 = a2;
        v30 = v89;
        v31 = v78;
        (v78)(v21, v29, v89);
        v87 = a4;
        (v31)(v18, a4, v30);
        v32 = v84;
        sub_10001CDF8();
        v33 = sub_10001CDC8();
        v35 = v34;
        v36 = *v85;
        (*v85)(v32, v30);
        if (v35)
        {
          v37 = v33;
        }

        else
        {
          v37 = 0;
        }

        if (!v35)
        {
          v35 = 0xE000000000000000;
        }

        sub_10001CDF8();
        v38 = sub_10001CDC8();
        v40 = v39;
        v36(v32, v30);
        if (v40)
        {
          v41 = v38;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        if (v37 == v41 && v35 == v42)
        {

          v18 = v77;
          v43 = v89;
          v36(v77, v89);
          v21 = v79;
          v36(v79, v43);
          v44 = v81;
          v45 = v86;
        }

        else
        {
          v46 = sub_10001D738();

          v18 = v77;
          v47 = v89;
          v36(v77, v89);
          v21 = v79;
          v36(v79, v47);
          v44 = v81;
          v45 = v86;
          if (v46)
          {
            a2 = v81 + v88;
            if (v86 < v88 || v86 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v86 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a4 = v87;
            goto LABEL_48;
          }
        }

        a2 = v88;
        a4 = v44 + v87;
        if (v45 < v87 || v45 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v45 != v87)
        {
          swift_arrayInitWithTakeBackToFront();
          v91 = a4;
          goto LABEL_48;
        }

        v91 = a4;
LABEL_48:
        a1 = v44 + v45;
        v92 = a1;
      }

      while (a4 < v83 && a2 < v80);
    }
  }

LABEL_91:
  sub_100013FB8(&v92, &v91, &v90);
  return 1;
}

uint64_t sub_100013F18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100013FA4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100013FB8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10001CE08();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10001409C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_10001D768();

    sub_10001D4B8();
    v17 = sub_10001D788();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_10001D738() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014254(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_100015E28(&qword_100028F58, &type metadata accessor for Locale);
    v22 = sub_10001D448();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001447C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D598();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000117FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100014514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100001CFC(&qword_100028FD8, &qword_10001EA80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100005D74(a1, &v24 - v16, &qword_100028D48, &qword_10001E3D0);
  sub_100005D74(a2, &v17[v18], &qword_100028D48, &qword_10001E3D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100005D74(v17, v12, &qword_100028D48, &qword_10001E3D0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_100015E28(&qword_100028F58, &type metadata accessor for Locale);
      v21 = sub_10001D448();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_100005D0C(v17, &qword_100028D48, &qword_10001E3D0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_100005D0C(v17, &qword_100028FD8, &qword_10001EA80);
    v20 = 1;
    return v20 & 1;
  }

  sub_100005D0C(v17, &qword_100028D48, &qword_10001E3D0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100014834(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000149DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100014AD4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100009218(v2);
}

uint64_t sub_100014B0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014B1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014B60(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_100014B94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100014BE0(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x20100u >> (8 * a1);
  }

  sub_10001D6C8(38);

  v2._countAndFlagsBits = sub_10001D728();
  sub_10001D4C8(v2);

  result = sub_10001D6F8();
  __break(1u);
  return result;
}

uint64_t sub_100014CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a1;
  v9 = sub_10001D418();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001D438();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v25);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v5;
  v28 = a3;
  v29 = a4;
  aBlock[0] = v5;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE18();

  sub_100015D94(0, &qword_100028FA0, OS_dispatch_queue_ptr);
  v17 = sub_10001D618();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a2;
  v19[4] = v24;
  aBlock[4] = sub_100015E1C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F960;
  aBlock[3] = &unk_100025578;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_10001D428();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100015E28(&qword_100028FA8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001CFC(&qword_100028FB0, &qword_10001EA50);
  sub_100015E70();
  sub_10001D668();
  sub_10001D628();
  _Block_release(v20);

  (*(v26 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v25);
}

uint64_t sub_100015054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100015114;

  return sub_10000FF54(a1, v4, v5, v7, v6);
}

uint64_t sub_100015114()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10001520C()
{
  result = qword_100028E88;
  if (!qword_100028E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E88);
  }

  return result;
}

void sub_100015268()
{
  sub_10001537C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10001CE68();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001537C()
{
  if (!qword_100028F48)
  {
    sub_10001CE08();
    v0 = sub_10001D648();
    if (!v1)
    {
      atomic_store(v0, &qword_100028F48);
    }
  }
}

uint64_t sub_1000153FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100015490(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015564()
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

void sub_10001561C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10000996C(v2);
}

uint64_t sub_100015650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001627C;

  return sub_10000C944(a1, v4, v5, v7, v6);
}

uint64_t sub_100015798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000157FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100015840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration) = v2;
  v4 = v2;
}

void sub_100015880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker) = v2;
  v4 = v2;
}

uint64_t sub_1000158C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers) = *(v0 + 24);
}

void sub_100015904()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus) = v2;
  v4 = v2;
}

void sub_10001596C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100008EBC(v2);
}

uint64_t sub_10001599C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000159DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015A4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015AA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015AEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001627C;

  return sub_10000A478(a1, v4, v5, v7, v6);
}

void sub_100015BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection) = v2;
  v4 = v2;
}

uint64_t sub_100015BEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015C24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001627C;

  return sub_100010990(a1, v5);
}

uint64_t sub_100015CDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100015114;

  return sub_100010990(a1, v5);
}

uint64_t sub_100015D94(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100015DDC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015E28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100015E70()
{
  result = qword_100028FB8;
  if (!qword_100028FB8)
  {
    sub_100002350(&qword_100028FB0, &qword_10001EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FB8);
  }

  return result;
}

uint64_t sub_100015ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_100015F30()
{
  v1 = sub_10001CE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100016024(uint64_t a1)
{
  v4 = *(sub_10001CE08() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001627C;

  return sub_10000B16C(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_100016170(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001617C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1000161B8(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1000161E8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_100014B0C(v1);
  return sub_100014B1C(v4);
}

id sub_100016324()
{
  type metadata accessor for APIHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100029CB0 = result;
  return result;
}

uint64_t sub_1000163BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001CF08();
  sub_100016434(v3, a2);
  sub_100006A24(v3, a2);
  return sub_10001CEF8();
}

uint64_t *sub_100016434(uint64_t a1, uint64_t *a2)
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

uint64_t property wrapper backing initializer of LowConfidenceLIDView.selection(uint64_t a1)
{
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100005D74(a1, &v6 - v4, &qword_100028D48, &qword_10001E3D0);
  sub_10001D328();
  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_100016560(uint64_t a1)
{
  v3 = sub_10001CE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = *(type metadata accessor for LowConfidenceLIDView() + 20);
  sub_100005D74(a1, v14, &qword_100028D48, &qword_10001E3D0);
  sub_100001CFC(&qword_100029100, &unk_10001EB10);
  sub_10001D348();
  sub_10001D338();
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
    return sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v17 = *v1;
    sub_10000C670(v7);
    sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LowConfidenceLIDView.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = *(type metadata accessor for LowConfidenceLIDView() + 20);
  v12 = sub_10001CE08();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_100005D74(v10, v8, &qword_100028D48, &qword_10001E3D0);
  sub_10001D328();
  result = sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LowConfidenceLIDView()
{
  result = qword_100029160;
  if (!qword_100029160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LowConfidenceLIDView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = sub_10001D138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001CFC(&qword_1000290D8, &qword_10001EAA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v13 - v10;
  v14 = v1;
  sub_100001CFC(&qword_1000290E0, &qword_10001EAB0);
  sub_100005818(&qword_1000290E8, &qword_1000290E0, &qword_10001EAB0);
  sub_10001D1E8();
  sub_10001D128();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle);
  sub_10001D268();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100016BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_100001CFC(&qword_1000291A0, &qword_10001EB38);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  v5 = __chkstk_darwin(v3);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v62 - v7;
  v8 = sub_100001CFC(&qword_1000291A8, &qword_10001EB40);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v62 = &v62 - v10;
  v11 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v62 - v15;
  v16 = sub_10001D0F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001CFC(&qword_1000291B8, &qword_10001EB50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v25 = sub_100001CFC(&qword_1000291C0, &qword_10001EB58);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v65 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v62 - v30;
  sub_100017394(v24);
  sub_1000195D4();
  sub_10001D398();
  sub_10001D0E8();
  v32 = *(sub_100001CFC(&qword_100029210, &qword_10001EB80) + 36);
  (*(v17 + 16))(&v31[v32], v20, v16);
  v33 = *(v17 + 56);
  v34 = 1;
  v33(&v31[v32], 0, 1, v16);
  KeyPath = swift_getKeyPath();
  v36 = *(v26 + 44);
  v73 = v31;
  v37 = &v31[v36];
  v38 = *(sub_100001CFC(&qword_100029218, &qword_10001EBB8) + 28);
  (*(v17 + 32))(v37 + v38, v20, v16);
  v33(v37 + v38, 0, 1, v16);
  *v37 = KeyPath;
  v39 = *a1;
  swift_getKeyPath();
  v74[0] = v39;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v40 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  if (*(*(v39 + v40) + 16))
  {
    v74[0] = sub_100018034();
    v74[1] = v41;
    v75 = v42 & 1;
    v76 = v43;
    __chkstk_darwin(v74[0]);
    *(&v62 - 2) = a1;
    sub_100001CFC(&qword_100029220, &qword_10001EBE8);
    sub_100019838();
    v44 = v62;
    sub_10001D398();
    v46 = v63;
    v45 = v64;
    v47 = v72;
    (*(v63 + 32))(v72, v44, v64);
    v34 = 0;
    v48 = v45;
    v49 = v46;
  }

  else
  {
    v47 = v72;
    v49 = v63;
    v48 = v64;
  }

  v50 = (*(v49 + 56))(v47, v34, 1, v48);
  __chkstk_darwin(v50);
  *(&v62 - 2) = a1;
  sub_100018D38(a1, v74);
  sub_100001CFC(&qword_100029240, &qword_10001EBF8);
  sub_100001CFC(&qword_100029220, &qword_10001EBE8);
  sub_1000198F0();
  sub_100019838();
  v51 = v66;
  sub_10001D398();
  v52 = v65;
  sub_100005D74(v73, v65, &qword_1000291C0, &qword_10001EB58);
  v53 = v67;
  sub_10001996C(v47, v67);
  v55 = v70;
  v54 = v71;
  v56 = *(v70 + 16);
  v57 = v68;
  v56(v68, v51, v71);
  v58 = v69;
  sub_100005D74(v52, v69, &qword_1000291C0, &qword_10001EB58);
  v59 = sub_100001CFC(&qword_100029250, &qword_10001EC00);
  sub_10001996C(v53, v58 + *(v59 + 48));
  v56((v58 + *(v59 + 64)), v57, v54);
  v60 = *(v55 + 8);
  v60(v51, v54);
  sub_1000199DC(v72);
  sub_100005D0C(v73, &qword_1000291C0, &qword_10001EB58);
  v60(v57, v54);
  sub_1000199DC(v53);
  return sub_100005D0C(v52, &qword_1000291C0, &qword_10001EB58);
}

__n128 sub_100017394@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100017514();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10001D3D8();
  sub_10001D008();
  v9 = v6 & 1;
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100001CFC(&qword_1000291B8, &qword_10001EB50) + 36));
  v12 = *(sub_100001CFC(&qword_100029208, &qword_10001EB78) + 28);
  v13 = sub_10001D208();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v19;
  *(a1 + 112) = v20;
  *(a1 + 128) = v21;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  result = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 1;
  return result;
}

uint64_t sub_100017514()
{
  v1 = sub_10001CCF8();
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  __chkstk_darwin(v1);
  v90 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10001CD08();
  v84 = *(v87 - 8);
  v4 = *(v84 + 64);
  __chkstk_darwin(v87);
  v86 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001CD28();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v83 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001CFC(&qword_100028D28, &unk_10001ED10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v82 = &v69 - v11;
  v12 = sub_100001CFC(&qword_100028D30, &qword_10001E3C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v85 = &v69 - v14;
  v89 = sub_10001CD48();
  v88 = *(v89 - 8);
  v15 = *(v88 + 64);
  v16 = __chkstk_darwin(v89);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v69 - v18;
  v19 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v95 = &v69 - v21;
  v22 = sub_10001CE08();
  v23 = *(v22 - 8);
  v96 = v22;
  v97 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v94 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v69 - v27;
  v29 = sub_10001D468();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v69 - v35;
  sub_10001D458();
  v37 = v30[2];
  v78 = v30 + 2;
  v77 = v37;
  v37(v34, v36, v29);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v38 = qword_100029CB0;
  v76 = qword_100029CB0;
  sub_10001CDF8();
  v39 = sub_10001D488();
  v79 = v34;
  v41 = v40;
  v42 = v30[1];
  v81 = v30 + 1;
  v42(v36, v29);
  v43 = *v0;
  swift_getKeyPath();
  v80 = v36;
  v93 = v28;
  v101 = v43;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v44 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  if (!*(*(v43 + v44) + 16))
  {
    v70 = v42;
    v71 = v38;
    v72 = v29;
    v73 = v41;
    swift_getKeyPath();
    v98 = v43;
    sub_10001CE28();

    v45 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
    swift_beginAccess();
    v46 = v95;
    sub_100005D74(v43 + v45, v95, &qword_100028D48, &qword_10001E3D0);
    v48 = v96;
    v47 = v97;
    if ((*(v97 + 48))(v46, 1, v96) == 1)
    {
      sub_100005D0C(v46, &qword_100028D48, &qword_10001E3D0);
    }

    else
    {
      v49 = v94;
      (*(v47 + 32))(v94, v46, v48);
      v50 = v93;
      sub_10001CDF8();
      v51 = sub_10001CDC8();
      v53 = v52;
      v56 = *(v47 + 8);
      v54 = v47 + 8;
      v55 = v56;
      v56(v50, v48);
      if (v53)
      {
        v97 = v54;
        v57 = v80;
        sub_10001D458();
        v58 = v72;
        v77(v79, v57, v72);
        v59 = v76;
        sub_10001CDF8();
        sub_10001D488();
        v70(v57, v58);
        sub_100001CFC(&qword_100028D38, &qword_10001E3C8);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_10001E620;
        *(v60 + 56) = &type metadata for String;
        v61 = sub_100005CB8();
        *(v60 + 32) = v51;
        *(v60 + 40) = v53;
        *(v60 + 96) = &type metadata for String;
        *(v60 + 104) = v61;
        *(v60 + 64) = v61;
        *(v60 + 72) = v51;
        *(v60 + 80) = v53;

        sub_10001D478();

        v62 = sub_10001CD88();
        (*(*(v62 - 8) + 56))(v82, 1, 1, v62);
        (*(v84 + 104))(v86, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v87);
        (*(v91 + 104))(v90, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v92);
        sub_10001CD18();
        v63 = v85;
        sub_10001CD38();

        v64 = v88;
        v65 = v89;
        (*(v88 + 56))(v63, 0, 1, v89);
        v66 = v75;
        (*(v64 + 32))(v75, v63, v65);
        (*(v64 + 16))(v74, v66, v65);
        v67 = sub_10001D228();
        (*(v64 + 8))(v66, v65);
        v55(v94, v48);
        return v67;
      }

      v55(v49, v48);
    }

    v41 = v73;
  }

  v99 = v39;
  v100 = v41;
  sub_100005408();
  return sub_10001D238();
}

uint64_t sub_100018034()
{
  v0 = sub_10001CE08();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10001D468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  sub_10001D458();
  (*(v3 + 16))(v7, v9, v2);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v10 = qword_100029CB0;
  sub_10001CDF8();
  v11 = sub_10001D488();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  v15[1] = v11;
  v15[2] = v13;
  sub_100005408();
  return sub_10001D238();
}

uint64_t sub_100018230(uint64_t *a1)
{
  v2 = type metadata accessor for LowConfidenceLIDView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v10[1] = v5;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v6 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v10[0] = *(v5 + v6);
  swift_getKeyPath();
  sub_100019A70(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100019AD8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_100001CFC(&qword_100029258, &qword_10001EC38);
  sub_100001CFC(&qword_100029238, &qword_10001EBF0);
  sub_100005818(&qword_100029260, &qword_100029258, &qword_10001EC38);
  sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0);
  return sub_10001D388();
}

uint64_t sub_1000184AC(uint64_t *a1)
{
  v2 = type metadata accessor for LowConfidenceLIDView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  v9[1] = sub_10000D118();
  swift_getKeyPath();
  sub_100019A70(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100019AD8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_100001CFC(&qword_100029258, &qword_10001EC38);
  sub_100001CFC(&qword_100029238, &qword_10001EBF0);
  sub_100005818(&qword_100029260, &qword_100029258, &qword_10001EC38);
  sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0);
  return sub_10001D388();
}

uint64_t sub_100018698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21[2] = a3;
  v21[3] = a4;
  v21[1] = a5;
  v7 = sub_10001CE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for LowConfidenceLIDView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019A70(a2, v13);
  (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v8 + 80) + v14) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_100019AD8(v13, v16 + v14);
  (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v21[6] = a1;
  sub_100001CFC(&qword_100029268, &unk_10001EC40);
  v17 = sub_100002350(&qword_100028B08, &qword_10001E188);
  v18 = sub_100005818(&qword_100029270, &qword_100028B08, &qword_10001E188);
  v19 = sub_100019BB8(&qword_100029278, &type metadata accessor for Locale);
  v21[8] = v17;
  v21[9] = v7;
  v21[10] = v18;
  v21[11] = v19;
  swift_getOpaqueTypeConformance2();
  return sub_10001D368();
}

uint64_t sub_100018940(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_10001CE08();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_100016560(v6);
}

uint64_t sub_100018A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001CFC(&qword_100028B08, &qword_10001E188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v13 = a1;
  sub_100001CFC(&qword_100029280, &unk_10001EC50);
  sub_100019C00();
  sub_10001D318();
  v9 = a2 + *(sub_100001CFC(&qword_100028AF8, &unk_10001EC60) + 36);
  v10 = sub_10001CE08();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  *(v9 + *(sub_100001CFC(&qword_100028B00, &qword_10001E180) + 36)) = 1;
  return (*(v5 + 32))(a2, v8, v4);
}

uint64_t sub_100018BF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v7 = sub_10001CDC8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v18[0] = v7;
    v18[1] = v9;
    sub_100005408();
    v10 = sub_10001D238();
    v9 = v11;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v13 = 0;
  }

  v16 = sub_10001D2E8();
  result = swift_getKeyPath();
  *a1 = v10;
  a1[1] = v9;
  a1[2] = v15;
  a1[3] = v13;
  a1[4] = result;
  a1[5] = v16;
  return result;
}

uint64_t sub_100018D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001CE08();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10001D468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = *a1;
  swift_getKeyPath();
  v25[3] = v14;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v15 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v16 = *(*(v14 + v15) + 16);
  if (v16)
  {
    sub_10001D458();
    (*(v7 + 16))(v11, v13, v6);
    if (qword_100028A80 != -1)
    {
      swift_once();
    }

    v17 = qword_100029CB0;
    sub_10001CDF8();
    v18 = sub_10001D488();
    v20 = v19;
    (*(v7 + 8))(v13, v6);
    v25[0] = v18;
    v25[1] = v20;
    sub_100005408();
    result = sub_10001D238();
    v16 = v24 & 1;
  }

  else
  {
    result = 0;
    v22 = 0;
    v23 = 0;
  }

  *a2 = result;
  a2[1] = v22;
  a2[2] = v16;
  a2[3] = v23;
  return result;
}

uint64_t sub_100019004@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = sub_10001D138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001CFC(&qword_1000290D8, &qword_10001EAA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v13 - v10;
  v14 = v1;
  sub_100001CFC(&qword_1000290E0, &qword_10001EAB0);
  sub_100005818(&qword_1000290E8, &qword_1000290E0, &qword_10001EAB0);
  sub_10001D1E8();
  sub_10001D128();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle);
  sub_10001D268();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10001928C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001CFC(&qword_100029100, &unk_10001EB10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001935C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001CFC(&qword_100029100, &unk_10001EB10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001940C()
{
  type metadata accessor for LanguageSupportRemoteModel();
  if (v0 <= 0x3F)
  {
    sub_100019490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100019490()
{
  if (!qword_100029170)
  {
    sub_100002350(&qword_100028D48, &qword_10001E3D0);
    v0 = sub_10001D358();
    if (!v1)
    {
      atomic_store(v0, &qword_100029170);
    }
  }
}

uint64_t sub_1000194F4()
{
  sub_100002350(&qword_1000290D8, &qword_10001EAA8);
  sub_10001D138();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000195D4()
{
  result = qword_1000291C8;
  if (!qword_1000291C8)
  {
    sub_100002350(&qword_1000291B8, &qword_10001EB50);
    sub_10001968C();
    sub_100005818(&qword_100029200, &qword_100029208, &qword_10001EB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291C8);
  }

  return result;
}

unint64_t sub_10001968C()
{
  result = qword_1000291D0;
  if (!qword_1000291D0)
  {
    sub_100002350(&qword_1000291D8, &qword_10001EB60);
    sub_100019744();
    sub_100005818(&qword_1000291F0, &qword_1000291F8, &qword_10001EB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291D0);
  }

  return result;
}