void sub_1B6A779BC(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v24 = a4;
  v7 = type metadata accessor for LegacyStoredUserIDComponents();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  if (v11 >= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11 >= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v11 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v11;
  }

  v16 = type metadata accessor for BridgedIDSessionKind();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR___AAIDSessionKind_kind] = v15;
  v18 = &v17[OBJC_IVAR___AAIDSessionKind_name];
  *v18 = v13;
  v18[1] = v14;
  sub_1B6992E2C(v12, v11);
  v26.receiver = v17;
  v26.super_class = v16;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_1B6A47A08(a1, v10);
  v20 = type metadata accessor for BridgedLegacyStoredUserIDComponents();
  v21 = objc_allocWithZone(v20);
  sub_1B6A47A08(v10, v21 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v25.receiver = v21;
  v25.super_class = v20;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  sub_1B6A47A6C(v10);
  [v24 updateForKind:v19 legacyStoredUserIDComponents:v22 isDiagnosticSubmissionAllowed:a3 & 1];
}

uint64_t sub_1B6A77B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v6 = sub_1B6AB8E40();
  v41 = *(v6 - 8);
  v7 = v41;
  v8 = *(v41 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = a1[1];
  v38 = *a1;
  v42 = v15;
  sub_1B6AB8E30();
  sub_1B698103C(0);
  v17 = v16[12];
  v18 = v16[16];
  v19 = v16[20];
  v20 = *(v7 + 16);
  v20(a3, v14, v6);
  v39 = sub_1B6AB8DB0();
  v21 = *(v39 - 8);
  (*(v21 + 16))(a3 + v17, a2, v39);
  *(a3 + v18) = 0;
  *(a3 + v19) = 0;
  type metadata accessor for RotationMode();
  swift_storeEnumTagMultiPayload();
  v22 = v43;
  v20(v43, v14, v6);
  v23 = type metadata accessor for UserIDComponents();
  v37 = v23[5];
  v24 = v36;
  v20(v36, v22, v6);
  v44 = 0;
  v45 = sub_1B6ABA080();
  v46 = v25;
  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v44 = 0;
  v26 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v26);

  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v27 = v38;
  v44 = v38;
  v28 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v28);

  v29 = sub_1B699F46C(v45, v46);
  sub_1B6A7C174(v24, v29, v30, a3 + v37);
  (*(v21 + 8))(v40, v39);
  v31 = *(v41 + 8);
  v31(v43, v6);
  result = (v31)(v14, v6);
  v33 = (a3 + v23[6]);
  v34 = v42;
  *v33 = v27;
  v33[1] = v34;
  *(a3 + v23[7]) = 1;
  return result;
}

uint64_t sub_1B6A77ED0(uint64_t a1, uint64_t a2)
{
  if ((_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for UserIDComponents();
  v5 = v4[5];
  if ((sub_1B6AB8DF0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v4[6];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v8 == v11 && v7 == v10)
  {
    v13 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t EventProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A77FFC()
{
  sub_1B6ABA1F0();
  EventProperty.hash(into:)();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A78108(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1B6AB8C50();
  v4 = 0;
  return v3 | (v4 << 8);
}

BOOL sub_1B6A78190()
{
  v0 = sub_1B699E9F0(0xD00000000000003CLL, 0x80000001B6ACBF40, 512);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_1B6A78108(v0, v1);
  sub_1B69AE288(v2, v3);
  return (v4 & 0x100) == 0 && v4 == 1;
}

uint64_t UploadDropboxFile.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url;
  v3 = sub_1B6AB8BB0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);

  v5 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8);

  v6 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName + 8);

  sub_1B69AD890(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v7 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID + 8);

  return v0;
}

uint64_t UploadDropboxFile.description.getter()
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - v3;
  v5 = MEMORY[0x1E69E6158];
  sub_1B6999254(0, &qword_1EDBCBB08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B6AC4E60;
  v7 = *(v0 + 24);
  *(v6 + 32) = *(v0 + 16);
  *(v6 + 40) = v7;

  *(v6 + 48) = sub_1B6AB8AC0();
  *(v6 + 56) = v8;
  v27 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount);
  v29 = sub_1B6ABA080();
  v30 = v9;
  MEMORY[0x1B8C97BE0](0x73746E65766520, 0xE700000000000000);
  v10 = v30;
  *(v6 + 64) = v29;
  *(v6 + 72) = v10;
  v27 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize);
  v29 = sub_1B6ABA080();
  v30 = v11;
  MEMORY[0x1B8C97BE0](0x736574796220, 0xE600000000000000);
  v12 = v30;
  *(v6 + 80) = v29;
  *(v6 + 88) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8);
  v29 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
  v30 = v13;
  v14 = MEMORY[0x1E69E6720];
  sub_1B6999254(0, &qword_1EDBCAA50, v5, MEMORY[0x1E69E6720]);

  *(v6 + 96) = sub_1B6AB9330();
  *(v6 + 104) = v15;
  v16 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType + 8);
  v29 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType);
  LOBYTE(v30) = v16;
  sub_1B6999254(0, &qword_1EDBCA460, &type metadata for ContentType, v14);
  *(v6 + 112) = sub_1B6AB9330();
  *(v6 + 120) = v17;
  v18 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName + 8);
  v29 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName);
  v30 = v18;

  *(v6 + 128) = sub_1B6AB9330();
  *(v6 + 136) = v19;
  v20 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
  swift_beginAccess();
  sub_1B69B20C4(v0 + v20, v4);
  *(v6 + 144) = sub_1B6AB9330();
  *(v6 + 152) = v21;
  v22 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID + 8);
  v27 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID);
  v28 = v22;

  *(v6 + 160) = sub_1B6AB9330();
  *(v6 + 168) = v23;
  v27 = v6;
  sub_1B6999254(0, &qword_1EDBCAFF0, v5, MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v24 = sub_1B6AB9290();

  return v24;
}

void sub_1B6A78918(void *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v2 = [a1 synchronizeAndReturnError_];
  v3 = v23[0];
  if (v2 && (v23[0] = 0, v4 = v3, v5 = [a1 closeAndReturnError_], v3 = v23[0], v5))
  {
    v6 = *MEMORY[0x1E69E9840];

    v7 = v3;
  }

  else
  {
    v8 = v3;
    v9 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6AB8F90();
    __swift_project_value_buffer(v10, qword_1EDBCFDA8);

    v11 = v9;
    v12 = sub_1B6AB8F80();
    v13 = sub_1B6AB98E0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v14 = 136315394;
      v17 = sub_1B6AB8B80();
      v19 = sub_1B698F63C(v17, v18, v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = v9;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_1B697C000, v12, v13, "⚠️ Failed to sync & close file handle at %s: %@", v14, 0x16u);
      sub_1B6A7B1A4(v15, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B8C99550](v16, -1, -1);
      MEMORY[0x1B8C99550](v14, -1, -1);
    }

    else
    {
    }

    v22 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B6A78C40(uint64_t a1, unint64_t a2)
{
  sub_1B6994494(a1, a2);
  v4 = *(sub_1B6A78CE8(a1, a2) + 16);
  v5 = sub_1B6AB9360();

  return v5;
}

uint64_t sub_1B6A78CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6AB9360();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B6A78CE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B6AB8CB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1B6993C94(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1B699004C(v11, 0);
      v15 = sub_1B6AB8BF0();
      sub_1B6993C94(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_1B6A78E64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 *a7)
{
  v98 = *a7;
  v9 = *(a7 + 1);
  v93 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v10 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  os_unfair_lock_lock_with_options();
  v13 = [objc_opt_self() defaultManager];
  sub_1B6AB8B80();
  v14 = sub_1B6AB92B0();

  [v13 createFileAtPath:v14 contents:0 attributes:0];

  v15 = sub_1B69992A4();
  v17 = v16;

  v91 = sub_1B699F46C(v15, v17);
  v92 = v18;
  sub_1B699FBE4(v91, v18, 0xD00000000000003ELL, 0x80000001B6ACD220);
  if (v7)
  {

    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B6ABF500;
    v20 = sub_1B6AB8B80();
    v22 = v21;
    v23 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1B698CEC0();
    *(v19 + 64) = v24;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    *(v19 + 96) = v23;
    *(v19 + 104) = v24;
    *(v19 + 72) = 0;
    *(v19 + 80) = 0xE000000000000000;
    sub_1B6AB8F70();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B6ABF500;
    v26 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1B698CEC0();
    *(v25 + 32) = v15;
    *(v25 + 40) = v17;
    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    *(v25 + 96) = v26;
    *(v25 + 104) = v27;
    *(v25 + 64) = v27;
    *(v25 + 72) = v29;
    *(v25 + 80) = v28;

    sub_1B6AB8F70();
  }

  sub_1B699F418();
  v30 = sub_1B6AB9BB0();
  v89 = sub_1B699F46C(v30, v31);
  v90 = v32;
  sub_1B699FBE4(v89, v32, 0xD000000000000039, 0x80000001B6ACD0A0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B6ABF500;
  v34 = ContentType.description.getter(a4);
  v36 = v35;
  v37 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1B698CEC0();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v40 = *(a1 + 16);
  v39 = *(a1 + 24);
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 64) = v38;
  *(v33 + 72) = v40;
  *(v33 + 80) = v39;

  sub_1B6AB8F70();

  if (a6)
  {
    swift_bridgeObjectRetain_n();
    v41 = sub_1B699F46C(a5, a6);
    v43 = v42;
    sub_1B699FBE4(v41, v42, 0xD000000000000037, 0x80000001B6ACCFA0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1B6ABF500;
    v45 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v46 = sub_1B698CEC0();
    *(v44 + 32) = a5;
    *(v44 + 40) = a6;
    v48 = *(a1 + 16);
    v47 = *(a1 + 24);
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 64) = v46;
    *(v44 + 72) = v48;
    *(v44 + 80) = v47;

    sub_1B6AB8F70();
    sub_1B6993C94(v41, v43);
  }

  v49 = a2 + *(type metadata accessor for Session() + 28);
  sub_1B6AB8D60();
  v50 = sub_1B6AB97A0();
  v95 = sub_1B699F46C(v50, v51);
  v97 = v52;
  sub_1B699FBE4(v95, v52, 0xD00000000000003FLL, 0x80000001B6ACD3E0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B6ABD890;
  v55 = *(a1 + 16);
  v54 = *(a1 + 24);
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = sub_1B698CEC0();
  *(v53 + 32) = v55;
  *(v53 + 40) = v54;

  sub_1B6AB8F70();

  v56 = *a2;
  v57 = a2[1];

  v86 = v56;
  v88 = sub_1B699F46C(v56, v57);
  v100 = v58;
  sub_1B699FBE4(v88, v58, 0xD00000000000003FLL, 0x80000001B6ACCEA0);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B6ABF500;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 56) = MEMORY[0x1E69E6158];
  v61 = sub_1B698CEC0();
  *(v59 + 32) = 0;
  *(v59 + 40) = v57;
  v62 = *(a1 + 16);
  v63 = *(a1 + 24);
  *(v59 + 96) = v60;
  *(v59 + 104) = v61;
  *(v59 + 64) = v61;
  *(v59 + 72) = v62;
  *(v59 + 80) = v63;

  sub_1B6AB8F70();

  if (v98 == 5)
  {
    sub_1B6993C94(v88, v100);
    sub_1B6993C94(v95, v97);
    sub_1B6993C94(v89, v90);
    v64 = v91;
    v65 = v92;
  }

  else
  {
    v66 = sub_1B6AB97A0();
    v68 = sub_1B699F46C(v66, v67);
    v70 = v69;
    sub_1B699FBE4(v68, v69, 0xD00000000000003DLL, 0x80000001B6ACD4E0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1B6ABF500;
    v72 = MEMORY[0x1E69E6158];
    *(v71 + 56) = MEMORY[0x1E69E6158];
    v73 = sub_1B698CEC0();
    *(v71 + 32) = v86;
    *(v71 + 40) = v57;
    v74 = *(a1 + 16);
    v75 = *(a1 + 24);
    *(v71 + 96) = v72;
    *(v71 + 104) = v73;
    *(v71 + 64) = v73;
    *(v71 + 72) = v74;
    *(v71 + 80) = v75;

    sub_1B6AB8F70();

    sub_1B6993C94(v68, v70);
    if (v98 <= 1)
    {
      if (v98)
      {
        v76 = 0xE300000000000000;
        v77 = 7954788;
      }

      else
      {
        v76 = 0xE700000000000000;
        v77 = 0x65736963657270;
      }
    }

    else if (v98 == 2)
    {
      v76 = 0xE400000000000000;
      v77 = 1920298856;
    }

    else
    {
      v76 = 0xE600000000000000;
      if (v98 == 3)
      {
        v77 = 0x6574756E696DLL;
      }

      else
      {
        v77 = 0x72657474696ALL;
      }
    }

    v78 = sub_1B699F46C(v77, v76);
    v80 = v79;
    sub_1B699FBE4(v78, v79, 0xD000000000000042, 0x80000001B6ACD580);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1B6ABF500;
    v82 = MEMORY[0x1E69E6158];
    *(v81 + 56) = MEMORY[0x1E69E6158];
    v83 = sub_1B698CEC0();
    *(v81 + 32) = v86;
    *(v81 + 40) = v57;
    v84 = *(a1 + 16);
    v85 = *(a1 + 24);
    *(v81 + 96) = v82;
    *(v81 + 104) = v83;
    *(v81 + 64) = v83;
    *(v81 + 72) = v84;
    *(v81 + 80) = v85;

    sub_1B6AB8F70();
    sub_1B6993C94(v88, v100);
    sub_1B6993C94(v95, v97);
    sub_1B6993C94(v89, v90);
    sub_1B6993C94(v91, v92);

    v64 = v78;
    v65 = v80;
  }

  sub_1B6993C94(v64, v65);
  os_unfair_lock_unlock(*(*(a1 + v93) + 16));
}

void sub_1B6A7A248(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = a2;
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v12 = *(a3 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  os_unfair_lock_lock_with_options();
  sub_1B6986438(0, &qword_1EDBCB648, 0x1E696AC00);
  (*(v7 + 16))(v10, a3 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url, v6);
  v15 = a3;
  v16 = sub_1B69AF2E8(v10, &selRef_fileHandleForUpdatingURL_error_);
  if (v3)
  {
    v29 = *(a3 + v11);
LABEL_4:
    os_unfair_lock_unlock(*(v29 + 16));
    return;
  }

  v17 = v16;
  v18 = v11;
  v19 = v47;
  sub_1B6AB98A0();
  v20 = a1;
  v45 = a1;
  v46 = v19;
  v21 = v19;
  sub_1B6A7B204();
  sub_1B6AB9880();
  v22 = v20;
  v23 = sub_1B69D617C(&unk_1F2E73BE0);
  v24 = v15;
  v25 = v23;
  v26 = v24;
  v28 = v27;
  sub_1B699FBE4(v23, v27, 0xD00000000000003CLL, 0x80000001B6ACBF40);
  sub_1B6993C94(v25, v28);
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDBCCB28;
  v43[1] = sub_1B6AB98D0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B6ABD890;
  v31 = UploadDropboxFile.description.getter();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1B698CEC0();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  sub_1B6AB8F70();

  v34 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    v35 = 0;
    if (v34 != 2)
    {
      goto LABEL_16;
    }

    v37 = *(v22 + 16);
    v36 = *(v22 + 24);
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v38)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v35 = BYTE6(v21);
    goto LABEL_16;
  }

  LODWORD(v35) = HIDWORD(v22) - v22;
  if (__OFSUB__(HIDWORD(v22), v22))
  {
    goto LABEL_21;
  }

  v35 = v35;
LABEL_16:
  v39 = *(v26 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize);
  v38 = __OFADD__(v39, v35);
  v40 = v39 + v35;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v26 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) = v40;
    v41 = *(v26 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount);
    v38 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v38)
    {
      *(v26 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) = v42;
      sub_1B6A78918(v17);

      v29 = *(v26 + v18);
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B6A7A620(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v6 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  os_unfair_lock_lock_with_options();
  v10 = v3;
  v11 = v4;
  sub_1B699F100(a1, &v10);
  v9 = *(*(a1 + v5) + 16);

  os_unfair_lock_unlock(v9);
}

void sub_1B6A7A69C(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v3 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_lock_with_options();
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1B6AB8B20();
  v14[0] = 0;
  v8 = [v6 removeItemAtURL:v7 error:v14];

  if (v8)
  {
    v9 = *(*(a1 + v2) + 16);
    v10 = v14[0];
    v11 = v9;
  }

  else
  {
    v12 = v14[0];
    sub_1B6AB8A70();

    swift_willThrow();
    v11 = *(*(a1 + v2) + 16);
  }

  os_unfair_lock_unlock(v11);
  v13 = *MEMORY[0x1E69E9840];
}

id sub_1B6A7A7C8(uint64_t a1, char a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = sub_1B6AB8A10();
  *&v80 = *(v5 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69867F8(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v64 - v10;
  v12 = sub_1B6AB8BB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB8A90();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0x1E696A000uLL;
  v23 = &off_1E7C63000;
  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

  v81 = v2;
  v77 = v19;
  v78 = v18;
  v74 = v5;
  v24 = [objc_opt_self() defaultManager];
  sub_1B69867F8(0, &qword_1EDBC96B8, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v26 = v25;
  v27 = swift_allocObject();
  v76 = xmmword_1B6ABD890;
  *(v27 + 16) = xmmword_1B6ABD890;
  v28 = *MEMORY[0x1E695DBB8];
  *(v27 + 32) = *MEMORY[0x1E695DBB8];
  v75 = v28;
  v29 = sub_1B6AB98B0();

  if (!v29)
  {
    goto LABEL_21;
  }

  sub_1B6AB9870();
  sub_1B6AB8A80();
  if (!v87)
  {
    (*(v77 + 8))(v21, v78);

LABEL_21:
    v23 = &off_1E7C63000;
    v22 = 0x1E696A000uLL;
LABEL_22:
    v53 = *(v22 + 3080);
    v54 = [objc_opt_self() v23[163]];
    v55 = sub_1B6AB8B20();
    v86[0] = 0;
    v56 = [v54 removeItemAtURL:v55 error:v86];

    if (v56)
    {
      result = v86[0];
    }

    else
    {
      v58 = v86[0];
      sub_1B6AB8A70();

      result = swift_willThrow();
    }

    goto LABEL_25;
  }

  v72 = v29;
  v69 = v26;
  v73 = a1;
  v30 = (v13 + 56);
  v71 = (v13 + 32);
  v70 = (v13 + 8);
  v68 = (v80 + 8);
  v80 = xmmword_1B6ABF500;
  v31 = 1;
  v32 = v82;
  do
  {
    v33 = swift_dynamicCast();
    v34 = *v30;
    if (v33)
    {
      v34(v11, 0, 1, v12);
      (*v71)(v32, v11, v12);
      if (v31)
      {
        inited = swift_initStackObject();
        *(inited + 16) = v76;
        v36 = v75;
        *(inited + 32) = v75;
        v37 = v36;
        v38 = sub_1B6AA04E4(inited);
        swift_setDeallocating();
        sub_1B6A7B1A4(inited + 32, type metadata accessor for URLResourceKey);
        v39 = v79;
        v67 = v38;
        v40 = v81;
        sub_1B6AB8AD0();
        v81 = v40;
        if (v40)
        {

          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v67 = qword_1EDBCCB28;
          v66 = sub_1B6AB98E0();
          sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = v80;
          v42 = sub_1B6AB8AC0();
          v44 = v43;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          v65 = sub_1B698CEC0();
          *(v41 + 64) = v65;
          *(v41 + 32) = v42;
          *(v41 + 40) = v44;
          v84 = 0;
          v85 = 0xE000000000000000;
          v45 = v81;
          v83 = v81;
          sub_1B697ED90(0, &qword_1EDBCBB00);
          sub_1B6AB9DF0();
          v46 = v84;
          v47 = v85;
          v48 = v65;
          *(v41 + 96) = MEMORY[0x1E69E6158];
          *(v41 + 104) = v48;
          *(v41 + 72) = v46;
          *(v41 + 80) = v47;
          sub_1B6AB8F70();

          v32 = v82;
          (*v70)(v82, v12);
          v81 = 0;
          v31 = 1;
        }

        else
        {

          v49 = sub_1B6AB8A00();
          v50 = v39;
          v51 = v49;
          v52 = v49;
          (*v68)(v50, v74);
          v32 = v82;
          (*v70)(v82, v12);
          if (v52 == 2)
          {
            v31 = 1;
          }

          else
          {
            v31 = v51 ^ 1;
          }
        }
      }

      else
      {
        (*v70)(v32, v12);
        v31 = 0;
      }
    }

    else
    {
      v34(v11, 1, 1, v12);
      sub_1B69AD890(v11, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
    }

    sub_1B6AB8A80();
  }

  while (v87);
  (*(v77 + 8))(v21, v78);

  v23 = &off_1E7C63000;
  if (v31)
  {
    v22 = 0x1E696A000;
    goto LABEL_22;
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v60 = swift_allocObject();
  *(v60 + 16) = v76;
  v61 = sub_1B6AB8AC0();
  v63 = v62;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1B698CEC0();
  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  sub_1B6AB9900();
  sub_1B6AB8F70();

LABEL_25:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6A7B0E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B6A7B150()
{
  result = qword_1EDBC8CF0;
  if (!qword_1EDBC8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8CF0);
  }

  return result;
}

uint64_t sub_1B6A7B1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B6A7B204()
{
  result = qword_1EDBCAA28;
  if (!qword_1EDBCAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCAA28);
  }

  return result;
}

_BYTE *sub_1B6A7B258@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_1B6A7B2D8(uint64_t a1)
{
  sub_1B6A7B0E8(0, &qword_1EB95C4A0, &qword_1EB95C498, MEMORY[0x1E69E6EE0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A7B374()
{
  result = qword_1EB95C4A8;
  if (!qword_1EB95C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4A8);
  }

  return result;
}

uint64_t SnapshotPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A7B458()
{
  result = qword_1EB95C4B0;
  if (!qword_1EB95C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4B0);
  }

  return result;
}

uint64_t sub_1B6A7B4BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1B6A7C104(v2);
  os_unfair_lock_unlock(v1 + 4);
  return sub_1B6A7B6F8();
}

uint64_t sub_1B6A7B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);

  v9 = sub_1B6A2B9E8();
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v11 = sub_1B6993940(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v24 = sub_1B6A2B9E8();
    v26 = v25;
    v27 = sub_1B6A2B9E8();
    v29 = v28;
    v30 = sub_1B6A2B9AC(a2, a3, a4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v8;
    sub_1B69E79E4(v27, v29, 1, v30, v24, v26, isUniquelyReferenced_nonNull_native);
    goto LABEL_8;
  }

  v14 = (*(v8 + 56) + 32 * v11);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = v14[3];

  sub_1B6A2B970(a2, a3, a4);
  if ((v33 & 1) == 0)
  {

    goto LABEL_9;
  }

  result = sub_1B6A2B9E8();
  if (!__OFADD__(v17, 1))
  {
    v21 = result;
    v22 = v20;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v8;
    sub_1B69E79E4(v16, v15, v17 + 1, v18, v21, v22, v23);
LABEL_8:

    v8 = v34;
LABEL_9:
    v32 = *(a1 + 16);
    *(a1 + 16) = v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A7B6F8()
{
  v1 = sub_1B6AB9030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB9090();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for SummaryEventDatabaseManager.StorageLocation(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698BA64(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_storageLocation, v18, type metadata accessor for SummaryEventDatabaseManager.StorageLocation);
  result = (*(v9 + 48))(v18, 1, v8);
  if (result != 1)
  {
    v31 = v1;
    v32 = v2;
    v20 = *(v9 + 32);
    v20(v14, v18, v8);
    v33 = v5;
    v21 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
    os_unfair_lock_lock(v21 + 4);
    v22 = *(v0 + 16);

    os_unfair_lock_unlock(v21 + 4);
    v30 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_diskIOQueue);
    (*(v9 + 16))(v12, v14, v8);
    v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    v20((v24 + v23), v12, v8);
    aBlock[4] = sub_1B6A7C02C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B698E534;
    aBlock[3] = &block_descriptor_10;
    v25 = _Block_copy(aBlock);
    v26 = v34;
    sub_1B6AB9060();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B6985338(&qword_1EDBCCC70, MEMORY[0x1E69E7F60]);
    v27 = MEMORY[0x1E69E7F60];
    sub_1B698685C(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B698B2BC(&qword_1EDBCBB80, &qword_1EDBCBB90, v27);
    v28 = v36;
    v29 = v31;
    sub_1B6AB9BE0();
    MEMORY[0x1B8C981F0](0, v26, v28, v25);
    _Block_release(v25);
    (*(v32 + 8))(v28, v29);
    (*(v35 + 8))(v26, v33);
    (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_1B6A7BBCC(uint64_t a1)
{
  v2 = sub_1B698BE30(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;
}

uint64_t sub_1B6A7BC10()
{
  v0 = sub_1B6AB88A0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6A7C090();
  v3 = sub_1B6AB8870();
  v5 = v4;

  sub_1B6AB8C90();
  return sub_1B6993C94(v3, v5);
}

uint64_t sub_1B6A7BE30()
{
  v1 = v0[2];

  sub_1B69E9EBC(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lastFlush);
  v2 = *(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);

  sub_1B698BDD0(v0 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_storageLocation, type metadata accessor for SummaryEventDatabaseManager.StorageLocation);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_1B6A7C02C()
{
  v1 = *(*(sub_1B6AB8BB0() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1B6A7BC10();
}

unint64_t sub_1B6A7C090()
{
  result = qword_1EB95C4B8;
  if (!qword_1EB95C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4B8);
  }

  return result;
}

unint64_t sub_1B6A7C120()
{
  result = qword_1EB95C4C0;
  if (!qword_1EB95C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C4C0);
  }

  return result;
}

uint64_t sub_1B6A7C174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a1;
  v27[1] = a4;
  v37 = *MEMORY[0x1E69E9840];
  v6 = sub_1B6AB9180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB91C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB91B0();
  v28 = sub_1B6AB8E20();
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  MEMORY[0x1B8C979D0](&v28, &v37);
  sub_1B6A86D54(a2, a3);
  sub_1B6993C94(a2, a3);
  sub_1B6AB91A0();
  sub_1B6A873C0();
  sub_1B6AB9170();
  (*(v7 + 8))(v10, v6);
  sub_1B6AB8E10();
  v24 = sub_1B6AB8E40();
  (*(*(v24 - 8) + 8))(v27[0], v24);
  result = (*(v12 + 8))(v15, v11);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6A7C470(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - v12;
  sub_1B6A86CF0(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_1B6AB9680();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = a4;
  (*(v10 + 32))(&v20[v19], v13, v9);
  v21 = a2;

  sub_1B69EDFB0(0, 0, v17, &unk_1B6AC5240, v20);
  return sub_1B6AB96A0();
}

uint64_t sub_1B6A7C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[193] = a7;
  v7[187] = a6;
  v7[181] = a5;
  v7[175] = a4;
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v7[194] = v8;
  v9 = *(v8 - 8);
  v7[195] = v9;
  v7[196] = *(v9 + 64);
  v7[197] = swift_task_alloc();
  v7[198] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A7C7D0, 0, 0);
}

uint64_t sub_1B6A7C7D0()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1400);
  v4 = sub_1B6AB92B0();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC((v0 + 1368), (v0 + 1336));
  }

  else
  {
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
  }

  v6 = *(v0 + 1584);
  v34 = *(v0 + 1576);
  v35 = *(v0 + 1568);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1544);
  v38 = *(v0 + 1448);
  v40 = *(v0 + 1496);
  v36 = *(v0 + 1400);
  sub_1B6984584(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 1640);
  }

  else
  {
    v10 = 2;
  }

  sub_1B6A87778();
  v11 = swift_allocObject();
  *(v0 + 1592) = v11;
  *(v11 + 20) = 0;
  *(v11 + 16) = v10;
  v12 = *(v7 + 16);
  v12(v6, v9, v8);
  v12(v34, v6, v8);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v0 + 1600) = v14;
  *(v14 + 2) = v11;
  *(v14 + 3) = v36;
  *(v14 + 4) = v38;
  *(v14 + 5) = v40;
  (*(v7 + 32))(&v14[v13], v6, v8);
  *(swift_task_alloc() + 16) = v9;
  v15 = v36;
  v16 = (v11 + 20);

  os_unfair_lock_lock((v11 + 20));
  v41 = (v11 + 16);
  sub_1B6A87890((v11 + 16));
  v17 = *(v0 + 1576);
  v37 = *(v0 + 1448);
  v39 = *(v0 + 1496);
  v18 = *(v0 + 1400);
  os_unfair_lock_unlock((v11 + 20));

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  v21 = *MEMORY[0x1E696AA70];
  v22 = sub_1B6AB9A70();
  *(v0 + 1608) = v22;

  v23 = [v19 defaultCenter];
  v24 = sub_1B6AB92B0();
  v25 = sub_1B6AB9A70();
  *(v0 + 1616) = v25;

  v26 = swift_task_alloc();
  v26[2] = v18;
  v26[3] = v37;
  v26[4] = v39;
  v26[5] = v17;
  os_unfair_lock_lock(v16);
  sub_1B6A878AC(v41);
  v27 = *(v0 + 1576);
  v28 = *(v0 + 1560);
  v29 = *(v0 + 1552);
  os_unfair_lock_unlock(v16);

  (*(v28 + 8))(v27, v29);
  v30 = swift_task_alloc();
  *(v0 + 1624) = v30;
  v30[2] = v22;
  v30[3] = sub_1B6A87804;
  v30[4] = v14;
  swift_asyncLet_begin();
  v31 = swift_task_alloc();
  *(v0 + 1632) = v31;
  v31[2] = v25;
  v31[3] = sub_1B6A87804;
  v31[4] = v14;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v32, sub_1B6A7CCA0, v0 + 1296);
}

uint64_t sub_1B6A7CCF4()
{
  v1 = *(v0 + 1632);

  return MEMORY[0x1EEE6DEB0](v0 + 16);
}

uint64_t sub_1B6A7CD78()
{
  v1 = v0[203];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  v6 = v0[198];
  v7 = v0[197];

  v8 = v0[1];

  return v8();
}

void sub_1B6A7CE30(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  sub_1B6A87F30((a1 + 16));
  os_unfair_lock_unlock((a1 + 20));
}

uint64_t sub_1B6A7CE88(_BYTE *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v38 = a1;
  sub_1B6984584(0, &qword_1EB95C4F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8638]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v36 - v14;
  v16 = sub_1B6AB92B0();
  v17 = [a2 objectForKey_];

  if (v17)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC(&v39, v40);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  sub_1B6984584(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  result = swift_dynamicCast();
  if (result)
  {
    v37 = v12;
    v19 = v39;
    if (v39 != 2)
    {
      v20 = *v38;
      if (v20 == 2 || ((v39 ^ v20) & 1) != 0)
      {
        v36[1] = v5;
        if (qword_1EDBCAA78 != -1)
        {
          swift_once();
        }

        v21 = sub_1B6AB8F90();
        __swift_project_value_buffer(v21, qword_1EDBCFDA8);

        v22 = sub_1B6AB8F80();
        v23 = sub_1B6AB98D0();

        v41 = v23;
        v24 = v23;
        v25 = v22;
        if (os_log_type_enabled(v22, v24))
        {
          v26 = swift_slowAlloc();
          v36[0] = a5;
          v27 = v26;
          v28 = swift_slowAlloc();
          *&v40[0] = v28;
          *v27 = 136315650;
          *(v27 + 4) = sub_1B698F63C(a3, a4, v40);
          *(v27 + 12) = 2080;
          v42 = v20;
          sub_1B6984584(0, &qword_1EB95C4F0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          v29 = sub_1B6AB9330();
          v31 = sub_1B698F63C(v29, v30, v40);

          *(v27 + 14) = v31;
          *(v27 + 22) = 2080;
          v32 = v19 & 1;
          v42 = v19 & 1;
          v33 = sub_1B6AB9330();
          v35 = sub_1B698F63C(v33, v34, v40);

          *(v27 + 24) = v35;
          _os_log_impl(&dword_1B697C000, v25, v41, "Observed UserDefaults key '%s' changed from '%s' to '%s'", v27, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v28, -1, -1);
          MEMORY[0x1B8C99550](v27, -1, -1);
        }

        else
        {

          v32 = v19 & 1;
        }

        *v38 = v19;
        LOBYTE(v40[0]) = v32;
        sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
        sub_1B6AB96B0();
        return (*(v37 + 8))(v15, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1B6A7D2A4(unsigned __int8 *a1)
{
  sub_1B6984584(0, &qword_1EB95C4F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8638]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v8 = &v10[-v7];
  v9 = *a1;
  if (v9 != 2)
  {
    v10[15] = v9 & 1;
    sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
    sub_1B6AB96B0();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

void *sub_1B6A7D3E8(_OWORD *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a3;
  v43 = *v3;
  *&v45 = type metadata accessor for Updater.Storage;
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  sub_1B69827CC(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A86CF0(0, &qword_1EDBC8E60, sub_1B698148C, type metadata accessor for Updater);
  v16 = swift_allocObject();
  v17 = sub_1B69842A4(MEMORY[0x1E69E7CC0]);
  sub_1B6984500(0, &qword_1EDBC8DF8, &qword_1EDBC8EF8, sub_1B698148C);
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v17;
  *(v16 + 16) = v18;
  v3[2] = v16;
  sub_1B69845D4(0, &qword_1EDBC8E58, type metadata accessor for Updater);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1B69846D4(MEMORY[0x1E69E7CC0]);
  sub_1B698491C();
  v22 = swift_allocObject();
  *(v22 + 40) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v21;
  *(v19 + 16) = v22;
  v3[3] = v19;
  v23 = type metadata accessor for UserInformation();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1B6A86CF0(0, qword_1EDBC8E68, sub_1B69827CC, type metadata accessor for Updater);
  v24 = swift_allocObject();
  sub_1B6984A54(v15, v11, sub_1B69827CC);
  *&v11[*(v6 + 36)] = sub_1B6984ABC(v20);
  sub_1B6984500(0, &qword_1EDBC8E00, qword_1EDBC8F00, sub_1B69827CC);
  v26 = *(v25 + 52);
  v27 = (*(v25 + 48) + 3) & 0x1FFFFFFFCLL;
  v28 = swift_allocObject();
  *(v28 + ((*(*v28 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v29 = v44;
  sub_1B6A87DA8(v11, v44);
  sub_1B6984D98(v15, sub_1B69827CC);
  sub_1B6983A08(v11, qword_1EDBC8F00, sub_1B69827CC, v45, sub_1B6A86CF0);
  sub_1B6A87E3C(v29, v28 + *(*v28 + *MEMORY[0x1E69E6B68] + 16));
  *(v24 + 16) = v28;
  v3[4] = v24;
  if (*a1)
  {
    v30 = a1[7];
    v50[1] = a1[6];
    v51 = v30;
    v52 = a1[8];
    v31 = a1[3];
    v48[2] = a1[2];
    *v49 = v31;
    v32 = a1[5];
    *&v49[16] = a1[4];
    v50[0] = v32;
    v33 = a1[1];
    v48[0] = *a1;
    v48[1] = v33;
    v3[6] = *&v48[0];
    sub_1B6982544(v48 + 8, (v3 + 7));
    v34 = v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag;
    *v34 = *v49;
    v45 = *&v49[8];
    *(v34 + 8) = *&v49[8];
    v35 = *(&v51 + 1);
    *(v34 + 3) = *&v49[24];
    v3[5] = v35;
    sub_1B6982544(v50, (v3 + 12));
    sub_1B6984E58(v46, v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
    *(v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) = v47;
    v36 = v52;

    sub_1B698BF94(v36);
    sub_1B69EDAD0(v48);
    *(v3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now) = v36;
  }

  else
  {
    sub_1B6984D98(v46, type metadata accessor for DiagnosticsConsentProvider);

    sub_1B6983A08(a1, &qword_1EDBC9028, &type metadata for UserDataConfiguration, MEMORY[0x1E69E6720], sub_1B6984584);
    v37 = v3[2];

    v38 = v3[3];

    v39 = v3[4];

    v40 = *(*v3 + 48);
    v41 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

void *sub_1B6A7D9D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_1B6A87308((v0 + 12), &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
  sub_1B6984D98(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);

  v5 = *(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8);
  sub_1B69A3100(*(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now));
  v6 = *(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag + 8);
  v7 = *(v0 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag + 24);

  return v0;
}

uint64_t sub_1B6A7DABC()
{
  sub_1B6A7D9D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A7DB1C()
{
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6AB8F90();
  __swift_project_value_buffer(v0, qword_1EDBCFD80);
  v1 = sub_1B6AB8F80();
  v2 = sub_1B6AB98D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B697C000, v1, v2, "UserDataManager: appStart", v3, 2u);
    MEMORY[0x1B8C99550](v3, -1, -1);
  }

  sub_1B6A7DC10();

  return sub_1B6A7E858();
}

uint64_t sub_1B6A7DC10()
{
  v1 = v0;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v95 - v6;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v95 - v16;
  sub_1B69827CC(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v106 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v95 - v24;
  v110 = v0[4];
  v26 = *(v110 + 16);
  v27 = *(*v26 + *MEMORY[0x1E69E6B68] + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v26 + v28));
  sub_1B6984A54(v26 + v27, v25, sub_1B69827CC);
  os_unfair_lock_unlock((v26 + v28));
  v29 = type metadata accessor for UserInformation();
  v109 = *(v29 - 8);
  LODWORD(v26) = (*(v109 + 48))(v25, 1, v29);
  result = sub_1B6984D98(v25, sub_1B69827CC);
  if (v26 == 1)
  {
    v98 = v23;
    v99 = v29;
    v100 = v15;
    v103 = v9;
    v104 = v8;
    v32 = v1[10];
    v31 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v32);
    v33 = v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
    v34 = &v33[*(type metadata accessor for DiagnosticsConsentProvider(0) + 20)];
    v35 = *v34;
    v101 = *(v34 + 1);
    v102 = v35;
    v35(v111);
    v36 = v111[0];
    v37 = v1;
    v38 = *(v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent);
    v39 = OBJC_IVAR___AATrackingConsent_consented;
    v40 = *(v38 + OBJC_IVAR___AATrackingConsent_consented);
    os_unfair_lock_lock((v40 + 20));
    v41 = *(v40 + 16) == 0;
    os_unfair_lock_unlock((v40 + 20));
    v42 = (v36 & 1) == 0;
    v43 = v7;
    (*(v31 + 32))(v42, v41, v32, v31);
    v96 = v39;
    v97 = v38;
    v44 = v37;
    v45 = v102;
    v46 = v103;
    v47 = *(v103 + 48);
    v48 = v43;
    v49 = v43;
    v50 = v104;
    if (v47(v49, 1, v104) == 1)
    {
      v51 = sub_1B6983A08(v48, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
      v52 = *(v37 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now);
      if (v52)
      {
        v53 = *(v37 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8);
        v54 = v108;
        v52(v51);
        (*(v46 + 56))(v54, 0, 1, v50);
        v55 = v50;
        v56 = v100;
        (*(v46 + 32))(v100, v54, v55);
      }

      else
      {
        v66 = v108;
        (*(v46 + 56))(v108, 1, 1, v50);
        v67 = v50;
        v56 = v100;
        sub_1B6AB8D90();
        if (v47(v66, 1, v67) != 1)
        {
          sub_1B6983A08(v66, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
        }
      }

      v68 = v44[10];
      v69 = v44[11];
      __swift_project_boxed_opaque_existential_1(v44 + 7, v68);
      v45(v111);
      v70 = v111[0];
      v71 = *(v97 + v96);
      os_unfair_lock_lock((v71 + 20));
      v72 = *(v71 + 16) == 0;
      os_unfair_lock_unlock((v71 + 20));
      (*(v69 + 16))(v56, (v70 & 1) == 0, v72, v68, v69);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v73 = sub_1B6AB8F90();
      __swift_project_value_buffer(v73, qword_1EDBCFD80);
      v74 = *(v46 + 16);
      v76 = v104;
      v75 = v105;
      v74(v105, v100, v104);
      v77 = sub_1B6AB8F80();
      v78 = sub_1B6AB98D0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v111[0] = v80;
        *v79 = 136315138;
        sub_1B6A8756C(&qword_1EDBCCC38, MEMORY[0x1E6969530]);
        v81 = sub_1B6ABA080();
        v82 = v75;
        v84 = v83;
        v108 = *(v103 + 8);
        (v108)(v82, v76);
        v85 = sub_1B698F63C(v81, v84, v111);

        *(v79 + 4) = v85;
        _os_log_impl(&dword_1B697C000, v77, v78, "Successfully stored first app launch date: %s.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1B8C99550](v80, -1, -1);
        MEMORY[0x1B8C99550](v79, -1, -1);
      }

      else
      {

        v108 = *(v103 + 8);
        (v108)(v75, v76);
      }

      v86 = v99;
      v87 = v100;
      v88 = v106;
      v74(&v106[*(v99 + 20)], v100, v76);
      *v88 = 0;
      v89 = (*(v109 + 56))(v88, 0, 1, v86);
      v90 = *(v110 + 16);
      MEMORY[0x1EEE9AC00](v89);
      *(&v95 - 2) = v88;
      v91 = *(*v90 + *MEMORY[0x1E69E6B68] + 16);
      v92 = (*(*v90 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v90 + v92));
      sub_1B6A8744C(v90 + v91, v111);
      os_unfair_lock_unlock((v90 + v92));
      v93 = v111[0];
      MEMORY[0x1EEE9AC00](v94);
      *(&v95 - 2) = v88;
      sub_1B6AB36A4(sub_1B6A87464, (&v95 - 4), v93);

      sub_1B6984D98(v88, sub_1B69827CC);
      return (v108)(v87, v76);
    }

    else
    {
      v57 = v107;
      (*(v46 + 32))(v107, v48, v50);
      v59 = v98;
      v58 = v99;
      (*(v46 + 16))(&v98[*(v99 + 20)], v57, v50);
      *v59 = 1;
      v60 = (*(v109 + 56))(v59, 0, 1, v58);
      v61 = *(v110 + 16);
      MEMORY[0x1EEE9AC00](v60);
      *(&v95 - 2) = v59;
      v62 = *(*v61 + *MEMORY[0x1E69E6B68] + 16);
      v63 = (*(*v61 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v61 + v63));
      sub_1B6A87ED0(v61 + v62, v111);
      os_unfair_lock_unlock((v61 + v63));
      v64 = v111[0];
      MEMORY[0x1EEE9AC00](v65);
      *(&v95 - 2) = v59;
      sub_1B6AB36A4(sub_1B6A87F00, (&v95 - 4), v64);

      sub_1B6984D98(v59, sub_1B69827CC);
      return (*(v46 + 8))(v57, v50);
    }
  }

  return result;
}

uint64_t sub_1B6A7E858()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 32));
  if (v3)
  {
  }

  else
  {
    v5 = sub_1B69F791C(MEMORY[0x1E69E7CC0]);
    v6 = *(v1 + 48);
    v7 = *(v6 + 64);
    v37 = v5;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v7;
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_13:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(v6 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1B69E12F0(*(v6 + 56) + 48 * v15, v36);
        v35[0] = v17;
        v35[1] = v18;
        sub_1B6992E2C(v17, v18);
        sub_1B6A84D24(v35, v36, v1, &v37);
        result = sub_1B6984D98(v35, sub_1B6A8726C);
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v6 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    v19 = (v1 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
    swift_beginAccess();
    v20 = v19[2];
    v21 = v19[3];
    if (!v19[1] || (v22 = *v19, v23 = objc_allocWithZone(MEMORY[0x1E695E000]), v24 = sub_1B6AB92B0(), v25 = [v23 initWithSuiteName_], v24, !v25))
    {
      v25 = [objc_opt_self() standardUserDefaults];
    }

    v26 = sub_1B6AB92B0();
    v27 = [v25 BOOLForKey_];
    swift_endAccess();

    if (v27)
    {
      swift_beginAccess();
      if (!v19[1] || (v28 = *v19, v29 = objc_allocWithZone(MEMORY[0x1E695E000]), v30 = sub_1B6AB92B0(), v31 = [v29 initWithSuiteName_], v30, !v31))
      {
        v31 = [objc_opt_self() standardUserDefaults];
      }

      v32 = v19[2];
      v33 = v19[3];
      v34 = sub_1B6AB92B0();
      [v31 setBool:0 forKey:v34];
      swift_endAccess();
    }

    sub_1B6A801E4(v37);
  }
}

uint64_t sub_1B6A7EB98()
{
  v1[17] = v0;
  sub_1B6A86CF0(0, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_1B6A87AF0(0);
  v1[19] = v4;
  v5 = *(v4 - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = sub_1B6AB9970();
  v1[22] = v7;
  v8 = *(v7 - 8);
  v1[23] = v8;
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();
  v10 = sub_1B6AB9A80();
  v1[25] = v10;
  v11 = *(v10 - 8);
  v1[26] = v11;
  v12 = *(v11 + 64) + 15;
  v1[27] = swift_task_alloc();
  sub_1B6A87BAC();
  v1[28] = v13;
  v14 = *(v13 - 8);
  v1[29] = v14;
  v15 = *(v14 + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_1B6A87B10(0, &qword_1EB95C540, MEMORY[0x1E695BF40]);
  v1[31] = v16;
  v17 = *(v16 - 8);
  v1[32] = v17;
  v18 = *(v17 + 64) + 15;
  v1[33] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[34] = swift_initStaticObject();
  v1[35] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v20 = sub_1B6AB95E0();
  v1[36] = v20;
  v1[37] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B6A7EEAC, v20, v19);
}

uint64_t sub_1B6A7EEAC()
{
  v1 = v0[17];
  v0[38] = *(v1 + 24);
  sub_1B6A87CE0(v1 + 96, (v0 + 2));
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = *(v3 + 8);
    v31 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v6[1] = sub_1B6A7F310;

    return v31(v2, v3);
  }

  else
  {
    sub_1B6A87308((v0 + 2), &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
    v8 = v0[38];
    v9 = v0[27];
    v10 = v0[24];
    sub_1B6A8027C(0, 0);

    v11 = [objc_opt_self() defaultCenter];
    v12 = sub_1B6AB92B0();
    sub_1B6AB9A90();

    sub_1B6AB9960();
    if (qword_1EDBCAA20 != -1)
    {
      swift_once();
    }

    v13 = v0[30];
    v30 = v0[29];
    v32 = v0[31];
    v27 = v0[28];
    v28 = v0[33];
    v15 = v0[26];
    v14 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    v26 = v0[22];
    v29 = v0[21];
    v0[14] = qword_1EDBCFDA0;
    sub_1B6986438(0, &qword_1EDBCA4B0, 0x1E69E9620);
    sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20]);
    sub_1B6A87C78();
    sub_1B6AB8FE0();
    (*(v18 + 8))(v17, v26);
    (*(v15 + 8))(v14, v16);
    v19 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC);
    MEMORY[0x1B8C97830](v27, v19);
    (*(v30 + 8))(v13, v27);
    sub_1B6AB8FD0();
    v20 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0);
    v21 = *(MEMORY[0x1E69E85A8] + 4);
    v22 = swift_task_alloc();
    v0[42] = v22;
    *v22 = v0;
    v22[1] = sub_1B6A7F74C;
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[19];

    return MEMORY[0x1EEE6D8C8](v24, v25, v20);
  }
}

uint64_t sub_1B6A7F310(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v9 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = a2;

  v6 = *(v3 + 296);
  v7 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B6A7F438, v7, v6);
}

uint64_t sub_1B6A7F438()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[38];
  v2 = v0[27];
  v3 = v0[24];
  sub_1B6A8027C(v0[40], v0[41]);

  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_1B6AB92B0();
  sub_1B6AB9A90();

  sub_1B6AB9960();
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v6 = v0[30];
  v24 = v0[29];
  v25 = v0[31];
  v21 = v0[28];
  v22 = v0[33];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  v20 = v0[22];
  v23 = v0[21];
  v0[14] = qword_1EDBCFDA0;
  sub_1B6986438(0, &qword_1EDBCA4B0, 0x1E69E9620);
  sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20]);
  sub_1B6A87C78();
  sub_1B6AB8FE0();
  (*(v11 + 8))(v10, v20);
  (*(v8 + 8))(v7, v9);
  v12 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC);
  MEMORY[0x1B8C97830](v21, v12);
  (*(v24 + 8))(v6, v21);
  sub_1B6AB8FD0();
  v13 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0);
  v14 = *(MEMORY[0x1E69E85A8] + 4);
  v15 = swift_task_alloc();
  v0[42] = v15;
  *v15 = v0;
  v15[1] = sub_1B6A7F74C;
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[19];

  return MEMORY[0x1EEE6D8C8](v17, v18, v13);
}

uint64_t sub_1B6A7F74C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[34];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[35];
      swift_getObjectType();
      v7 = sub_1B6AB95E0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B6A7FE10;
  }

  else
  {
    if (v5)
    {
      v11 = v2[35];
      swift_getObjectType();
      v7 = sub_1B6AB95E0();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B6A7F8E4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

void sub_1B6A7F8FC()
{
  v1 = v0[18];
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    v3 = v0[33];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[27];
    v8 = v0[24];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v4 + 8))(v3, v5);

    v9 = v0[1];

    v9();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6AB8F90();
    __swift_project_value_buffer(v10, qword_1EDBCFD80);
    v11 = sub_1B6AB8F80();
    v12 = sub_1B6AB98D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B697C000, v11, v12, "Storefront changed, checking ID components...", v13, 2u);
      MEMORY[0x1B8C99550](v13, -1, -1);
    }

    v14 = v0[17];

    sub_1B6A87CE0(v14 + 96, (v0 + 7));
    v15 = v0[10];
    if (v15)
    {
      v16 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v17 = *(v16 + 8);
      v32 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      v0[44] = v19;
      *v19 = v0;
      v19[1] = sub_1B6A7FEA0;

      v32(v15, v16);
    }

    else
    {
      sub_1B6A87308((v0 + 7), &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
      v20 = v0[43];
      v21 = v0[38];
      v0[12] = 0;
      v0[13] = 0;
      v22 = *(v21 + 16);
      *(swift_task_alloc() + 16) = v0 + 12;
      os_unfair_lock_lock((v22 + 40));
      sub_1B6A87D70((v22 + 16), v0 + 16);
      if (v20)
      {

        os_unfair_lock_unlock((v22 + 40));
      }

      else
      {
        v23 = v0[18];
        os_unfair_lock_unlock((v22 + 40));
        v24 = v0[16];

        v25 = swift_task_alloc();
        *(v25 + 16) = v0 + 12;
        sub_1B6AB370C(sub_1B6A87D8C, v25, v24);

        sub_1B6983A08(v23, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
        v26 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0);
        v27 = *(MEMORY[0x1E69E85A8] + 4);
        v28 = swift_task_alloc();
        v0[42] = v28;
        *v28 = v0;
        v28[1] = sub_1B6A7F74C;
        v29 = v0[21];
        v30 = v0[18];
        v31 = v0[19];

        MEMORY[0x1EEE6D8C8](v30, v31, v26);
      }
    }
  }
}

uint64_t sub_1B6A7FE10()
{
  *(v0 + 120) = *(v0 + 344);
  sub_1B697ED90(0, &qword_1EDBCBB00);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1B6A7FEA0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v9 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = a2;

  v6 = *(v3 + 296);
  v7 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B6A7FFC8, v7, v6);
}

void sub_1B6A7FFC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[12] = v0[45];
  v1 = v0[43];
  v2 = v0[38];
  v0[13] = v0[46];
  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v0 + 12;
  os_unfair_lock_lock((v3 + 40));
  sub_1B6A87D70((v3 + 16), v0 + 16);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + 40));
  }

  else
  {
    v4 = v0[18];
    os_unfair_lock_unlock((v3 + 40));
    v5 = v0[16];

    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 12;
    sub_1B6AB370C(sub_1B6A87D8C, v6, v5);

    sub_1B6983A08(v4, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    v7 = sub_1B6A8756C(&qword_1EB95C548, sub_1B6A87AF0);
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v0[42] = v9;
    *v9 = v0;
    v9[1] = sub_1B6A7F74C;
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[19];

    MEMORY[0x1EEE6D8C8](v11, v12, v7);
  }
}

uint64_t sub_1B6A801E4(uint64_t a1)
{
  v6 = a1;
  v2 = *(v1 + 16);
  v4[6] = &v6;
  os_unfair_lock_lock((v2 + 32));
  sub_1B6A872D0((v2 + 16), &v5);
  os_unfair_lock_unlock((v2 + 32));
  v4[2] = &v6;
  sub_1B6AB36D8(sub_1B6A872EC, v4, v5);
}

uint64_t sub_1B6A8027C(uint64_t a1, uint64_t a2)
{
  v7[0] = a1;
  v7[1] = a2;
  v3 = *(v2 + 16);
  v5[6] = v7;
  os_unfair_lock_lock((v3 + 40));
  sub_1B6A87EE8((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 40));
  v5[2] = v7;
  sub_1B6AB370C(sub_1B6A87F18, v5, v6);
}

uint64_t sub_1B6A80314()
{
  v1[3] = v0;
  sub_1B6A86CF0(0, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1B6A87A34(0);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = sub_1B6AB9A80();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_1B6A87A54(0, &qword_1EB95C510, MEMORY[0x1E695BF40]);
  v1[11] = v10;
  v11 = *(v10 - 8);
  v1[12] = v11;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[14] = swift_initStaticObject();
  v1[15] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v14 = sub_1B6AB95E0();
  v1[16] = v14;
  v1[17] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B6A80570, v14, v13);
}

uint64_t sub_1B6A80570()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = [objc_opt_self() defaultCenter];
  v8 = *MEMORY[0x1E695D810];
  sub_1B6AB9A90();

  v9 = sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20]);
  MEMORY[0x1B8C97830](v4, v9);
  (*(v5 + 8))(v3, v4);
  sub_1B6AB8FD0();
  v10 = sub_1B6A8756C(&qword_1EB95C518, sub_1B6A87A34);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1B6A80720;
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];

  return MEMORY[0x1EEE6D8C8](v14, v15, v10);
}

uint64_t sub_1B6A80720()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[14];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[15];
      swift_getObjectType();
      v7 = sub_1B6AB95E0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B6A80B9C;
  }

  else
  {
    if (v5)
    {
      v11 = v2[15];
      swift_getObjectType();
      v7 = sub_1B6AB95E0();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B6A808B8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1B6A808D0()
{
  v1 = v0[4];
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6AB8F90();
    __swift_project_value_buffer(v9, qword_1EDBCFD80);
    v10 = sub_1B6AB8F80();
    v11 = sub_1B6AB98D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B697C000, v10, v11, "Significant time change, checking ID components...", v12, 2u);
      MEMORY[0x1B8C99550](v12, -1, -1);
    }

    v14 = v0[3];
    v13 = v0[4];

    sub_1B6A80C2C();
    sub_1B6983A08(v13, &qword_1EB95C340, MEMORY[0x1E6968160], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    v15 = sub_1B6A8756C(&qword_1EB95C518, sub_1B6A87A34);
    v16 = *(MEMORY[0x1E69E85A8] + 4);
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_1B6A80720;
    v18 = v0[7];
    v19 = v0[4];
    v20 = v0[5];

    return MEMORY[0x1EEE6D8C8](v19, v20, v15);
  }
}

uint64_t sub_1B6A80B9C()
{
  *(v0 + 16) = *(v0 + 152);
  sub_1B697ED90(0, &qword_1EDBCBB00);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1B6A80C2C()
{
  sub_1B6A875B4();
  v68 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v64 = (&v63 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v63 - v7);
  v67 = v0;
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  os_unfair_lock_lock((v10 + 32));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 32));
  if (v11)
  {
    v63 = v9;
    v69 = sub_1B69F791C(MEMORY[0x1E69E7CC0]);
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    if (v14)
    {
      while (1)
      {
        v17 = v16;
LABEL_10:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = v18 | (v17 << 6);
        v20 = *(v11 + 56);
        v21 = (*(v11 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v20 + *(*(type metadata accessor for UserIDComponents() - 8) + 72) * v19;
        v25 = *(v68 + 48);
        sub_1B6984A54(v24, v8 + v25, type metadata accessor for UserIDComponents);
        *v8 = v22;
        v8[1] = v23;
        sub_1B6992E2C(v22, v23);
        sub_1B6A83768(v8, v8 + v25, v67, &v69);
        sub_1B6984D98(v8, sub_1B6A875B4);
        if (!v14)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    v26 = v69 + 64;
    v27 = 1 << *(v69 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v69 + 64);
    v30 = (v27 + 63) >> 6;
    v66 = v69;

    v31 = 0;
    while (v29)
    {
      v32 = v31;
LABEL_21:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = v33 | (v32 << 6);
      v35 = *(v66 + 56);
      v36 = (*(v66 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = (type metadata accessor for UserIDComponents() - 8);
      v40 = v35 + *(*v39 + 72) * v34;
      v41 = v64;
      sub_1B6984A54(v40, v64 + *(v68 + 48), type metadata accessor for UserIDComponents);
      *v41 = v38;
      v41[1] = v37;
      v42 = v37;
      v43 = v65;
      sub_1B6984E58(v41, v65, sub_1B6A875B4);
      v45 = *v43;
      v44 = v43[1];
      sub_1B6992E2C(v38, v42);
      sub_1B69C2E8C(v45, v44);
      v46 = v43 + *(v68 + 48);
      LOBYTE(v44) = *(v46 + v39[9]);
      sub_1B6984D98(v46, type metadata accessor for UserIDComponents);
      if (v44)
      {

        v47 = (v67 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
        swift_beginAccess();
        v48 = v47[2];
        v49 = v47[3];
        if (!v47[1] || (v50 = *v47, v51 = objc_allocWithZone(MEMORY[0x1E695E000]), v52 = sub_1B6AB92B0(), v53 = [v51 initWithSuiteName_], v52, !v53))
        {
          v53 = [objc_opt_self() standardUserDefaults];
        }

        v54 = sub_1B6AB92B0();
        v55 = [v53 BOOLForKey_];
        swift_endAccess();

        if (v55)
        {
          swift_beginAccess();
          if (!v47[1] || (v56 = *v47, v57 = objc_allocWithZone(MEMORY[0x1E695E000]), v58 = sub_1B6AB92B0(), v59 = [v57 initWithSuiteName_], v58, !v59))
          {
            v59 = [objc_opt_self() standardUserDefaults];
          }

          v60 = v47[2];
          v61 = v47[3];
          v62 = sub_1B6AB92B0();
          [v59 setBool:0 forKey:v62];
          swift_endAccess();
        }

        sub_1B6A801E4(v66);
LABEL_32:

        return;
      }
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        goto LABEL_32;
      }

      v29 = *(v26 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_21;
      }
    }

LABEL_35:
    __break(1u);
  }
}

uint64_t sub_1B6A81174()
{
  v1[5] = v0;
  v2 = MEMORY[0x1E69E6370];
  sub_1B6984584(0, &qword_1EB95B1A8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8688]);
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_1B6984584(0, &qword_1EB95B1B0, v2, MEMORY[0x1E69E8658]);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_1B6984584(0, &qword_1EB95B1B8, v2, MEMORY[0x1E69E8698]);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v1[15] = swift_initStaticObject();
  v1[16] = sub_1B6A8756C(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v13 = sub_1B6AB95E0();
  v1[17] = v13;
  v1[18] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B6A813C0, v13, v12);
}

uint64_t sub_1B6A813C0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
  swift_beginAccess();
  v24 = v1[2];
  v2 = v1[3];
  if (v1[1])
  {
    v3 = *v1;
    v4 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v5 = sub_1B6AB92B0();
    v6 = [v4 initWithSuiteName_];

    if (v6)
    {
      v7 = v2;
      goto LABEL_7;
    }

    v9 = objc_opt_self();
  }

  else
  {
    v8 = objc_opt_self();

    v9 = v8;
  }

  v7 = v2;
  v6 = [v9 standardUserDefaults];
LABEL_7:
  v10 = v0[14];
  v11 = v0[11];
  v23 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  v15 = swift_task_alloc();
  v15[2] = v6;
  v15[3] = v24;
  v15[4] = v7;
  (*(v12 + 104))(v11, *MEMORY[0x1E69E8650], v13);
  sub_1B6AB9700();

  sub_1B6AB96E0();
  v16 = v0[15];
  v17 = v0[16];
  v18 = *(MEMORY[0x1E69E8678] + 4);
  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = sub_1B6A81610;
  v20 = v0[8];
  v21 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 20, v16, v17, v21);
}

uint64_t sub_1B6A81610()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1B6A81730, v4, v3);
}

uint64_t sub_1B6A81730()
{
  v1 = *(v0 + 160);
  if (v1 == 2)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    (*(v3 + 8))(v2, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6AB8F90();
    __swift_project_value_buffer(v8, qword_1EDBCFD80);
    v9 = sub_1B6AB8F80();
    v10 = sub_1B6AB98D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v1 & 1;
      _os_log_impl(&dword_1B697C000, v9, v10, "Reset flag changed: %{BOOL}d", v11, 8u);
      MEMORY[0x1B8C99550](v11, -1, -1);
    }

    v12 = *(v0 + 40);

    sub_1B6A80C2C();
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v15 = *(MEMORY[0x1E69E8678] + 4);
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_1B6A81610;
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);

    return MEMORY[0x1EEE6D9C8](v0 + 160, v13, v14, v18);
  }
}

uint64_t sub_1B6A81954@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1B6A86CF0(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for UserIDComponents();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = sub_1B6AB8E40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 16);
  v19 = *(v18 + 16);
  os_unfair_lock_lock((v19 + 32));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 32));
  if (v20)
  {
    if (*(v20 + 16))
    {
      v21 = sub_1B69DA824(0, 0);
      if (v22)
      {
        sub_1B6984A54(*(v20 + 56) + *(v29 + 72) * v21, v12, type metadata accessor for UserIDComponents);

        (*(v14 + 16))(v17, &v12[*(v30 + 20)], v13);
        sub_1B6984D98(v12, type metadata accessor for UserIDComponents);
        return (*(v14 + 32))(v31, v17, v13);
      }
    }
  }

  sub_1B6A7DB1C();
  v24 = *(v18 + 16);
  os_unfair_lock_lock((v24 + 32));
  v25 = *(v24 + 16);

  os_unfair_lock_unlock((v24 + 32));
  if (v25)
  {
    if (*(v25 + 16))
    {
      v26 = sub_1B69DA824(0, 0);
      if (v27)
      {
        sub_1B6984A54(*(v25 + 56) + *(v29 + 72) * v26, v10, type metadata accessor for UserIDComponents);

        (*(v14 + 16))(v5, &v10[*(v30 + 20)], v13);
        sub_1B6984D98(v10, type metadata accessor for UserIDComponents);
        (*(v14 + 56))(v5, 0, 1, v13);
        return (*(v14 + 32))(v31, v5, v13);
      }
    }
  }

  (*(v14 + 56))(v5, 1, 1, v13);
  sub_1B6AB8E10();
  result = (*(v14 + 48))(v5, 1, v13);
  if (result != 1)
  {
    return sub_1B6983A08(v5, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A86CF0);
  }

  return result;
}

uint64_t sub_1B6A81DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1B6AB8EE0();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  sub_1B6A86CF0(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v13 = sub_1B6AB8F20();
  v7[14] = v13;
  v14 = *(v13 - 8);
  v7[15] = v14;
  v15 = *(v14 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v16 = sub_1B6AB8E50();
  v7[18] = v16;
  v17 = *(v16 - 8);
  v7[19] = v17;
  v18 = *(v17 + 64) + 15;
  v7[20] = swift_task_alloc();
  v19 = sub_1B6AB8F00();
  v7[21] = v19;
  v20 = *(v19 - 8);
  v7[22] = v20;
  v21 = *(v20 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v22 = type metadata accessor for RotationMode();
  v7[25] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v24 = sub_1B6AB8E40();
  v7[27] = v24;
  v25 = *(v24 - 8);
  v7[28] = v25;
  v26 = *(v25 + 64) + 15;
  v7[29] = swift_task_alloc();
  v27 = type metadata accessor for UserIDComponents();
  v7[30] = v27;
  v28 = *(v27 - 8);
  v7[31] = v28;
  v29 = *(v28 + 64) + 15;
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  sub_1B69827CC(0);
  v31 = *(*(v30 - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v32 = type metadata accessor for UserInformation();
  v7[36] = v32;
  v33 = *(v32 - 8);
  v7[37] = v33;
  v34 = *(v33 + 64) + 15;
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A821A4, 0, 0);
}

uint64_t sub_1B6A821A4()
{
  v177 = v0;
  v1 = v0[3];
  if (!v1)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = sub_1B6AB8F90();
    __swift_project_value_buffer(v17, qword_1EDBCFD80);
    sub_1B6992E2C(v16, v15);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    sub_1B69C2E8C(v16, v15);
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_60;
    }

    v18 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v176[0] = v12;
    *v11 = 136315138;
    if (v18)
    {
      if (v18 == 1)
      {
        v20 = 0x7274656D656C6574;
        v19 = 0xE900000000000079;
      }

      else if (v18 == 2)
      {
        v19 = 0xE800000000000000;
        v20 = 0x656D69746C616572;
      }

      else
      {
        v20 = v0[7];
        v19 = v0[8];
      }
    }

    else
    {
      v20 = 0x6E65764572657375;
      v19 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v0[7], v0[8]);
    v76 = sub_1B698F63C(v20, v19, v176);

    *(v11 + 4) = v76;
    v77 = "Attempted to create user data for %s, but userIDComponents=nil";
    goto LABEL_59;
  }

  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  sub_1B6984A54(v0[4], v4, sub_1B69827CC);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1B6984D98(v0[35], sub_1B69827CC);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFD80);
    sub_1B6992E2C(v6, v5);
    v8 = sub_1B6AB8F80();
    v9 = sub_1B6AB98D0();
    sub_1B69C2E8C(v6, v5);
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_60;
    }

    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v176[0] = v12;
    *v11 = 136315138;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = 0x7274656D656C6574;
        v13 = 0xE900000000000079;
      }

      else if (v10 == 2)
      {
        v13 = 0xE800000000000000;
        v14 = 0x656D69746C616572;
      }

      else
      {
        v14 = v0[7];
        v13 = v0[8];
      }
    }

    else
    {
      v14 = 0x6E65764572657375;
      v13 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v0[7], v0[8]);
    v88 = sub_1B698F63C(v14, v13, v176);

    *(v11 + 4) = v88;
    v77 = "Attempted to create user data for %s, but userInformation=nil";
LABEL_59:
    _os_log_impl(&dword_1B697C000, v8, v9, v77, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8C99550](v12, -1, -1);
    MEMORY[0x1B8C99550](v11, -1, -1);
LABEL_60:

    goto LABEL_61;
  }

  v21 = v0[6];
  sub_1B6984E58(v0[35], v0[38], type metadata accessor for UserInformation);
  if (!v21)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v60 = v0[7];
    v59 = v0[8];
    v61 = sub_1B6AB8F90();
    __swift_project_value_buffer(v61, qword_1EDBCFD80);
    sub_1B6992E2C(v60, v59);
    v62 = sub_1B6AB8F80();
    v63 = sub_1B6AB98D0();
    sub_1B69C2E8C(v60, v59);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v0[8];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176[0] = v66;
      *v65 = 136315138;
      if (v64)
      {
        if (v64 == 1)
        {
          v68 = 0x7274656D656C6574;
          v67 = 0xE900000000000079;
        }

        else if (v64 == 2)
        {
          v67 = 0xE800000000000000;
          v68 = 0x656D69746C616572;
        }

        else
        {
          v68 = v0[7];
          v67 = v0[8];
        }
      }

      else
      {
        v68 = 0x6E65764572657375;
        v67 = 0xEA00000000007374;
      }

      v102 = v0[38];
      sub_1B6992E2C(v0[7], v0[8]);
      v105 = sub_1B698F63C(v68, v67, v176);

      *(v65 + 4) = v105;
      v104 = "Attempted to create user data for %s, but storefront=nil";
      goto LABEL_74;
    }

LABEL_42:
    v75 = v0[38];

    goto LABEL_43;
  }

  if (!*(v1 + 16))
  {
LABEL_35:
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v70 = v0[7];
    v69 = v0[8];
    v71 = sub_1B6AB8F90();
    __swift_project_value_buffer(v71, qword_1EDBCFD80);
    sub_1B6992E2C(v70, v69);
    v62 = sub_1B6AB8F80();
    v63 = sub_1B6AB98D0();
    sub_1B69C2E8C(v70, v69);
    if (os_log_type_enabled(v62, v63))
    {
      v72 = v0[8];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176[0] = v66;
      *v65 = 136315138;
      if (v72)
      {
        if (v72 == 1)
        {
          v74 = 0x7274656D656C6574;
          v73 = 0xE900000000000079;
        }

        else if (v72 == 2)
        {
          v73 = 0xE800000000000000;
          v74 = 0x656D69746C616572;
        }

        else
        {
          v74 = v0[7];
          v73 = v0[8];
        }
      }

      else
      {
        v74 = 0x6E65764572657375;
        v73 = 0xEA00000000007374;
      }

      v102 = v0[38];
      sub_1B6992E2C(v0[7], v0[8]);
      v103 = sub_1B698F63C(v74, v73, v176);

      *(v65 + 4) = v103;
      v104 = "Attempted to create user data for %s, but no ID components found";
LABEL_74:
      _os_log_impl(&dword_1B697C000, v62, v63, v104, v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1B8C99550](v66, -1, -1);
      MEMORY[0x1B8C99550](v65, -1, -1);

LABEL_75:
      sub_1B6984D98(v102, type metadata accessor for UserInformation);
      goto LABEL_61;
    }

    goto LABEL_42;
  }

  v22 = v0[6];
  v24 = v0 + 8;
  v23 = v0[8];
  v26 = v0 + 7;
  v25 = v0[7];

  v27 = sub_1B69DA824(v25, v23);
  if ((v28 & 1) == 0)
  {

    goto LABEL_35;
  }

  v30 = v0[33];
  v29 = v0[34];
  v31 = *(v0[31] + 72);
  sub_1B6984A54(*(v1 + 56) + v31 * v27, v30, type metadata accessor for UserIDComponents);
  sub_1B6984E58(v30, v29, type metadata accessor for UserIDComponents);
  if (*(v1 + 16))
  {
    v32 = sub_1B69DA824(0, 0);
    if (v33)
    {
      v174 = v0[34];
      v34 = v0[32];
      v35 = v0[29];
      v36 = v0[30];
      v37 = v0[27];
      v38 = v0[28];
      v171 = v0[8];
      sub_1B6984A54(*(v1 + 56) + v32 * v31, v34, type metadata accessor for UserIDComponents);
      (*(v38 + 16))(v35, v34 + *(v36 + 20), v37);
      sub_1B6984D98(v34, type metadata accessor for UserIDComponents);
      v167 = sub_1B6A6E548();
      v163 = *(v38 + 8);
      v163(v35, v37);
      v39 = *(v36 + 20);
      v40 = v0;
      v41 = sub_1B6AB8DD0();
      v43 = v42;
      v44 = &aUsereventeleme[8 * v171];
      v45 = &aUsereventeleme[8 * v171 + 24];
      if (v171 >= 3)
      {
        v44 = (v0 + 7);
        v45 = (v0 + 8);
      }

      v46 = *v45;
      v47 = *v44;
      v48 = v0[34];
      v50 = v0[25];
      v49 = v0[26];
      sub_1B6992E2C(v0[7], v0[8]);
      v51 = sub_1B6A72B24();
      v168 = sub_1B6A72B30();
      sub_1B6984A54(v48, v49, type metadata accessor for RotationMode);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v53 = v0[26];
      v173 = v43;
      v175 = v41;
      v170 = v46;
      v172 = v47;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B698114C();
        v55 = *(v54 + 48);
        v56 = *(v54 + 64);
        v57 = sub_1B6AB8DB0();
        v58 = *(*(v57 - 8) + 8);
        v58(v53 + v56, v57);
        v58(v53 + v55, v57);
        v108 = 0;
      }

      else
      {
        sub_1B698103C(0);
        v107 = *(v106 + 48);
        v108 = *(v53 + *(v106 + 80));
        v109 = sub_1B6AB8DB0();
        (*(*(v109 - 8) + 8))(v53 + v107, v109);
      }

      v166 = v108;
      v169 = v51;
      v110 = v40[34];
      v111 = v40[30];
      v112 = v40[26];
      v113 = v40[27];
      v114 = v40[24];
      v115 = v40[19];
      v116 = v40[20];
      v117 = v40[18];
      v119 = v40[14];
      v118 = v40[15];
      v0 = v40;
      v120 = v40[13];
      v163(v112, v113);
      v165 = *(v110 + *(v111 + 28));
      v159 = *MEMORY[0x1E6969868];
      v157 = *(v115 + 104);
      v157(v116);
      sub_1B6AB8E60();
      v155 = *(v115 + 8);
      v155(v116, v117);
      sub_1B6AB8F10();
      v153 = *(v118 + 48);
      result = v153(v120, 1, v119);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v121 = v0[38];
        v162 = v0[36];
        v122 = v0[24];
        v123 = v0[21];
        v124 = v0[22];
        v141 = v123;
        v143 = v0[20];
        v145 = v0[18];
        v125 = v0[14];
        v147 = v125;
        v149 = v0[23];
        v151 = v0[12];
        v126 = v0[10];
        v127 = v0[11];
        v128 = v0[9];
        v140 = *(v0[15] + 32);
        v140(v0[17], v0[13]);
        sub_1B6AB8ED0();
        v139 = *(v126 + 104);
        v139(v127, *MEMORY[0x1E6969A78], v128);
        v138 = *(v162 + 20);
        v161 = sub_1B6AB8EF0();
        v129 = *(v126 + 8);
        v129(v127, v128);
        v137 = *(v124 + 8);
        v137(v122, v141);
        (v157)(v143, v159, v145);
        sub_1B6AB8E60();
        v155(v143, v145);
        sub_1B6AB8F10();
        result = v153(v151, 1, v147);
        if (result != 1)
        {
          v130 = v0[38];
          v131 = v0[34];
          v132 = v0[23];
          v160 = v0[21];
          v133 = v0[11];
          v134 = v0[9];
          (v140)(v0[16], v0[12], v0[14]);
          sub_1B6AB8ED0();
          v139(v133, *MEMORY[0x1E6969A68], v134);
          v164 = sub_1B6AB8EF0();
          v129(v133, v134);
          v137(v132, v160);
          sub_1B6984D98(v131, type metadata accessor for UserIDComponents);
          v154 = *v130;
          sub_1B6984D98(v130, type metadata accessor for UserInformation);
          v156 = v0[6];
          v158 = v0[5];
          goto LABEL_62;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v78 = *v24;
  v79 = *v26;
  v80 = sub_1B6AB8F90();
  __swift_project_value_buffer(v80, qword_1EDBCFD80);
  sub_1B6992E2C(v79, v78);
  v81 = sub_1B6AB8F80();
  v82 = sub_1B6AB98D0();
  sub_1B69C2E8C(v79, v78);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = *v24;
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v176[0] = v85;
    *v84 = 136315138;
    if (v83)
    {
      if (v83 == 1)
      {
        v87 = 0x7274656D656C6574;
        v86 = 0xE900000000000079;
      }

      else if (v83 == 2)
      {
        v86 = 0xE800000000000000;
        v87 = 0x656D69746C616572;
      }

      else
      {
        v86 = *v24;
        v87 = *v26;
      }
    }

    else
    {
      v87 = 0x6E65764572657375;
      v86 = 0xEA00000000007374;
    }

    v102 = v0[38];
    v135 = v0[34];
    sub_1B6992E2C(v0[7], v0[8]);
    v136 = sub_1B698F63C(v87, v86, v176);

    *(v84 + 4) = v136;
    _os_log_impl(&dword_1B697C000, v81, v82, "Attempted to create user data for %s, but no sampling value found", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    MEMORY[0x1B8C99550](v85, -1, -1);
    MEMORY[0x1B8C99550](v84, -1, -1);

    sub_1B6984D98(v135, type metadata accessor for UserIDComponents);
    goto LABEL_75;
  }

  v75 = v0[38];
  v101 = v0[34];

  sub_1B6984D98(v101, type metadata accessor for UserIDComponents);
LABEL_43:
  sub_1B6984D98(v75, type metadata accessor for UserInformation);
LABEL_61:
  v173 = 0;
  v175 = 0;
  v170 = 0;
  v172 = 0;
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v161 = 0;
  v164 = 0;
  v156 = 0;
  v158 = 0;
  v167 = 0;
  v154 = 0;
  v165 = 0;
LABEL_62:
  v89 = v0[38];
  v90 = v0[34];
  v91 = v0[35];
  v93 = v0[32];
  v92 = v0[33];
  v94 = v0[29];
  v95 = v0[26];
  v96 = v0[23];
  v97 = v0[24];
  v142 = v0[20];
  v144 = v0[17];
  v146 = v0[16];
  v148 = v0[13];
  v150 = v0[12];
  v152 = v0[11];
  v98 = v0[2];

  *v98 = v175;
  *(v98 + 8) = v173;
  *(v98 + 16) = v172;
  *(v98 + 24) = v170;
  *(v98 + 32) = v169;
  *(v98 + 40) = v168;
  *(v98 + 48) = v166;
  *(v98 + 56) = v165;
  *(v98 + 64) = v161;
  *(v98 + 72) = v164;
  *(v98 + 80) = v158;
  *(v98 + 88) = v156;
  *(v98 + 96) = v167;
  *(v98 + 104) = v154;
  v99 = v0[1];

  return v99();
}

uint64_t sub_1B6A831DC(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for UserIDComponents();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[6] = v7;
  v2[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B6A832B0, 0, 0);
}

uint64_t sub_1B6A832B0()
{
  v1 = v0[7];
  if (!v1)
  {
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v17 = sub_1B6AB8F90();
    __swift_project_value_buffer(v17, qword_1EDBCFD80);
    v13 = sub_1B6AB8F80();
    v14 = sub_1B6AB98D0();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_14;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Attempted to create essential user data, but userIDComponents=nil";
    goto LABEL_13;
  }

  if (*(v1 + 16))
  {
    v2 = sub_1B69DA824(0x6169746E65737365, 0xEF73746E6576456CLL);
    if (v3)
    {
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[3];
      v7 = v0[2];
      sub_1B6984A54(*(v1 + 56) + *(v0[4] + 72) * v2, v5, type metadata accessor for UserIDComponents);
      sub_1B6984E58(v5, v4, type metadata accessor for UserIDComponents);
      v8 = v4 + *(v6 + 20);
      v9 = sub_1B6AB8DD0();
      v11 = v10;
      sub_1B6984D98(v4, type metadata accessor for UserIDComponents);
      *v7 = v9;
      v7[1] = v11;
      goto LABEL_15;
    }
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v12 = sub_1B6AB8F90();
  __swift_project_value_buffer(v12, qword_1EDBCFD80);
  v13 = sub_1B6AB8F80();
  v14 = sub_1B6AB98D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Attempted to create essential user data, but userIDComponents does not contain a value for essentialEvents";
LABEL_13:
    _os_log_impl(&dword_1B697C000, v13, v14, v16, v15, 2u);
    MEMORY[0x1B8C99550](v15, -1, -1);
  }

LABEL_14:
  v18 = v0[2];

  *v18 = 0;
  v18[1] = 0;
LABEL_15:
  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B6A83538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UserIDComponents();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock((v12 + 32));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 32));
  if (v13)
  {
    if (*(v13 + 16))
    {
      v14 = sub_1B69DA824(v10, v11);
      if (v15)
      {
        sub_1B6984A54(*(v13 + 56) + *(v6 + 72) * v14, v9, type metadata accessor for UserIDComponents);

        v16 = *(v5 + 20);
        v17 = sub_1B6AB8E40();
        v18 = *(v17 - 8);
        (*(v18 + 16))(a2, &v9[v16], v17);
        sub_1B6984D98(v9, type metadata accessor for UserIDComponents);
        return (*(v18 + 56))(a2, 0, 1, v17);
      }
    }
  }

  v20 = sub_1B6AB8E40();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t sub_1B6A83768(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v192 = a4;
  v190 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1B6A86CF0(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v184 = &v171 - v9;
  v176 = type metadata accessor for StoredUserIDComponents();
  v10 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8E40();
  v194 = *(v12 - 8);
  v13 = v194[8];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v180 = (&v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v179 = &v171 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v185 = &v171 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v171 - v23;
  v197 = type metadata accessor for RotationMode();
  v24 = *(*(v197 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v197);
  v27 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v199 = &v171 - v28;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], v6);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v171 - v31;
  v33 = sub_1B6AB8DB0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v181 = (&v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v36);
  v182 = &v171 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v187 = &v171 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v196 = &v171 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v171 - v44;
  v202 = type metadata accessor for UserIDComponents();
  v183 = *(v202 - 1);
  v46 = *(v183 + 64);
  v47 = MEMORY[0x1EEE9AC00](v202);
  v175 = &v171 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v171 - v50;
  v52 = a1[1];
  v191 = *a1;
  v53 = *(a3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now);
  v198 = v34;
  v186 = v52;
  v200 = v45;
  v201 = v12;
  if (v53)
  {
    v54 = *(a3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8);
    v53(v49);
    (*(v34 + 56))(v32, 0, 1, v33);
    (*(v34 + 32))(v45, v32, v33);
  }

  else
  {
    (*(v34 + 56))(v32, 1, 1, v33);
    sub_1B6AB8D90();
    if ((*(v34 + 48))(v32, 1, v33) != 1)
    {
      sub_1B6983A08(v32, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    }
  }

  v188 = v22;
  v178 = a3;
  v55 = (a3 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
  swift_beginAccess();
  v56 = v55[2];
  v57 = v55[3];
  if (!v55[1])
  {
    goto LABEL_7;
  }

  v58 = *v55;
  v59 = v51;
  v60 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v61 = sub_1B6AB92B0();
  v62 = v60;
  v51 = v59;
  v63 = [v62 initWithSuiteName_];

  if (!v63)
  {
LABEL_7:
    v63 = [objc_opt_self() standardUserDefaults];
  }

  v64 = sub_1B6AB92B0();
  LODWORD(v189) = [v63 BOOLForKey_];
  swift_endAccess();

  v65 = v190;
  v66 = v199;
  sub_1B6984A54(v190, v199, type metadata accessor for RotationMode);
  v67 = v202;
  v68 = (v65 + v202[6]);
  v70 = *v68;
  v69 = v68[1];
  v71 = v51;
  v72 = v198;
  v73 = v196;
  (*(v198 + 16))(v196, v200, v33);
  v74 = &v71[v67[6]];
  *v74 = v70;
  v74[1] = v69;
  sub_1B6984A54(v66, v27, type metadata accessor for RotationMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v193 = v71;
  if (EnumCaseMultiPayload != 1)
  {
    v112 = v189;
    sub_1B698103C(0);
    v114 = v113;
    v115 = v113[12];
    v190 = *&v27[v113[16]];
    v111 = *&v27[v113[20]];
    v116 = v194;
    v117 = v194[4];
    v188 = (v194 + 4);
    v182 = v117;
    (v117)(v195, v27, v201);
    v118 = *(v72 + 32);
    v110 = v72 + 32;
    v181 = v118;
    v118(v187, &v27[v115], v33);
    result = sub_1B69FAD2C(v73);
    if (!v70)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (result == 0x8000000000000000 && v70 == -1)
    {
      goto LABEL_39;
    }

    if (v112)
    {
      if (__OFADD__(v111++, 1))
      {
        goto LABEL_40;
      }
    }

    v180 = v114;
    v120 = result / v70;
    v174 = result / v70;
    LODWORD(v189) = (result / v70 != v190) | v112;
    v121 = v116[2];
    v122 = v185;
    v190 = v33;
    v123 = v116;
    v124 = v201;
    v121(v185, v195, v201);
    v171 = v202[5];
    v125 = v111;
    v172 = v111;
    v126 = v179;
    v121(v179, v122, v124);
    v205 = v120;
    v173 = v110;
    v208 = sub_1B6ABA080();
    v209 = v127;
    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v205 = v125;
    v128 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v128);

    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v205 = v70;
    v129 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v129);

    v130 = sub_1B699F46C(v208, v209);
    v131 = v193;
    sub_1B6A7C174(v126, v130, v132, v193 + v171);
    v133 = *(v198 + 8);
    v134 = v190;
    v133(v196, v190);
    sub_1B6984D98(v199, type metadata accessor for RotationMode);
    (v123[1])(v122, v124);
    v135 = v180[12];
    v136 = v180[16];
    v137 = v180[20];
    (v182)(v131, v195, v124);
    v181(v131 + v135, v187, v134);
    *(v131 + v136) = v174;
    v110 = v131;
    *(v131 + v137) = v172;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v122) = v189;
    *(v131 + v202[7]) = v189 & 1;
    v133(v200, v134);
    v70 = v186;
    v111 = v191;
    if (v122)
    {
LABEL_20:
      if (qword_1EDBCAA70 == -1)
      {
LABEL_21:
        v138 = sub_1B6AB8F90();
        v139 = __swift_project_value_buffer(v138, qword_1EDBCFD80);
        sub_1B6992E2C(v111, v70);
        v140 = sub_1B6AB8F80();
        v141 = sub_1B6AB98D0();
        sub_1B69C2E8C(v111, v70);
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v208 = v143;
          *v142 = 136315138;
          if (v70)
          {
            if (v70 == 1)
            {
              v145 = 0x7274656D656C6574;
              v144 = 0xE900000000000079;
            }

            else if (v70 == 2)
            {
              v144 = 0xE800000000000000;
              v145 = 0x656D69746C616572;
            }

            else
            {
              v145 = v111;
              v144 = v70;
            }
          }

          else
          {
            v145 = 0x6E65764572657375;
            v144 = 0xEA00000000007374;
          }

          sub_1B6992E2C(v111, v70);
          v151 = sub_1B698F63C(v145, v144, &v208);

          *(v142 + 4) = v151;
          _os_log_impl(&dword_1B697C000, v140, v141, "Rotated user ID for kind: %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v143);
          MEMORY[0x1B8C99550](v143, -1, -1);
          MEMORY[0x1B8C99550](v142, -1, -1);

          v150 = v178;
          v110 = v193;
        }

        else
        {

          v150 = v178;
        }

        v152 = *(v150 + 48);
        if (*(v152 + 16))
        {
          v153 = sub_1B69DA824(v111, v70);
          if (v154)
          {
            v200 = v139;
            sub_1B69E12F0(*(v152 + 56) + 48 * v153, &v208);
            sub_1B6982544(&v209, &v205);
            sub_1B6A6E478(&v208);
            v155 = v202;
            v156 = v110;
            v157 = v206;
            v158 = v207;
            v201 = __swift_project_boxed_opaque_existential_1(&v205, v206);
            v159 = v175;
            sub_1B6984A54(v156, v175, type metadata accessor for UserIDComponents);
            v160 = v177;
            sub_1B6984A54(v159, v177, type metadata accessor for RotationMode);
            v161 = (v159 + v155[6]);
            v162 = *v161;
            v163 = v161[1];
            sub_1B6984D98(v159, type metadata accessor for UserIDComponents);
            v164 = (v160 + *(v176 + 20));
            *v164 = v162;
            v164[1] = v163;
            v204[0] = v111;
            v204[1] = v70;
            v165 = v150 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
            v166 = v165 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20);
            v167 = *(v166 + 8);
            (*v166)(&v203);
            LOBYTE(v163) = v203;
            v168 = *(*(v150 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
            os_unfair_lock_lock((v168 + 20));
            v169 = *(v168 + 16) == 0;
            os_unfair_lock_unlock((v168 + 20));
            (*(v158 + 16))(v160, v204, (v163 & 1) == 0, v169, v157, v158);
            sub_1B6984D98(v160, type metadata accessor for StoredUserIDComponents);
            __swift_destroy_boxed_opaque_existential_1(&v205);
            v110 = v156;
          }
        }

        goto LABEL_35;
      }

LABEL_37:
      swift_once();
      goto LABEL_21;
    }

LABEL_35:
    v170 = v184;
    sub_1B6984A54(v110, v184, type metadata accessor for UserIDComponents);
    (*(v183 + 56))(v170, 0, 1, v202);
    sub_1B6992E2C(v111, v70);
    sub_1B69E237C(v170, v111, v70);
    return sub_1B6984D98(v110, type metadata accessor for UserIDComponents);
  }

  sub_1B698114C();
  v77 = *(v76 + 48);
  v78 = *(v76 + 64);
  v79 = v194 + 4;
  v195 = v194[4];
  (v195)(v188, v27, v201);
  v80 = *(v72 + 32);
  v81 = &v27[v77];
  v82 = v182;
  v80(v182, v81, v33);
  v83 = &v27[v78];
  v84 = v181;
  v187 = (v72 + 32);
  v174 = v80;
  v80(v181, v83, v33);
  v85 = sub_1B69FAD2C(v73) >= v70;
  if (((v85 | v189) & 1) == 0)
  {
    v146 = v82;
    v147 = *(v72 + 8);
    v147(v73, v33);
    v147(v84, v33);
    v147(v146, v33);
    v148 = v202;
    v149 = v193;
    (v195)(v193 + v202[5], v188, v201);
    *(v149 + v148[7]) = 0;
    sub_1B6984E58(v199, v149, type metadata accessor for RotationMode);
    v147(v200, v33);
    v110 = v149;
    v70 = v186;
    v111 = v191;
    goto LABEL_35;
  }

  v86 = v189;
  v173 = v79;
  v190 = v33;
  v87 = v201;
  sub_1B6AB8E30();
  result = sub_1B69FAD2C(v73);
  if (!v70)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (result != 0x8000000000000000 || v70 != -1)
  {
    v89 = v86;
    v90 = v194;
    v91 = v194[2];
    v92 = result / v70;
    v189 = result / v70;
    v93 = v185;
    v94 = v87;
    v91(v185, v180, v87);
    v95 = v202;
    v172 = v202[5];
    v96 = v179;
    v91(v179, v93, v94);
    v205 = v92;
    v208 = sub_1B6ABA080();
    v209 = v97;
    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v205 = v89;
    v98 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v98);

    MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
    v205 = v70;
    v99 = sub_1B6ABA080();
    MEMORY[0x1B8C97BE0](v99);

    v100 = sub_1B699F46C(v208, v209);
    v101 = v193;
    sub_1B6A7C174(v96, v100, v102, v193 + v172);
    v103 = *(v198 + 8);
    v104 = v190;
    v103(v196, v190);
    sub_1B6984D98(v199, type metadata accessor for RotationMode);
    v105 = v90[1];
    v105(v185, v94);
    v103(v181, v104);
    v105(v188, v94);
    sub_1B698103C(0);
    v107 = v106[12];
    v108 = v106[16];
    v109 = v106[20];
    (v195)(v101, v180, v94);
    (v174)(v101 + v107, v182, v104);
    *(v101 + v108) = v189;
    v110 = v101;
    *(v101 + v109) = v89;
    swift_storeEnumTagMultiPayload();
    *(v101 + v95[7]) = 1;
    v103(v200, v104);
    v70 = v186;
    v111 = v191;
    goto LABEL_20;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_1B6A84D24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v255 = a4;
  v283 = a3;
  v6 = MEMORY[0x1E69E6720];
  sub_1B6A86CF0(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v254 = &v244 - v9;
  v263 = sub_1B6AB8E40();
  v261 = *(v263 - 8);
  v10 = *(v261 + 64);
  v11 = MEMORY[0x1EEE9AC00](v263);
  v258 = &v244 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v251 = &v244 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v259 = &v244 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v264 = &v244 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v262 = &v244 - v19;
  v266 = type metadata accessor for RotationMode();
  v20 = *(*(v266 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v266);
  v257 = &v244 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v276 = &v244 - v23;
  sub_1B6A86CF0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], v6);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v271 = &v244 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v270 = (&v244 - v28);
  v29 = sub_1B6AB8DB0();
  v278 = *(v29 - 8);
  v279 = v29;
  v30 = *(v278 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v252 = &v244 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v260 = &v244 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v256 = &v244 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v274 = &v244 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v275 = &v244 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v269 = &v244 - v41;
  v280 = type metadata accessor for UserIDComponents();
  v253 = *(v280 - 8);
  v42 = *(v253 + 64);
  v43 = MEMORY[0x1EEE9AC00](v280);
  v267 = &v244 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v265 = &v244 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v272 = &v244 - v47;
  sub_1B6A86CF0(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents, v6);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v244 - v50;
  v277 = type metadata accessor for StoredUserIDComponents();
  v268 = *(v277 - 8);
  v52 = *(v268 + 64);
  v53 = MEMORY[0x1EEE9AC00](v277);
  v250 = &v244 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v244 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &v244 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v244 - v61;
  v64 = *a1;
  v63 = a1[1];
  v65 = a2;
  v67 = a2[4];
  v66 = a2[5];
  v273 = v65;
  __swift_project_boxed_opaque_existential_1(v65 + 1, v67);
  v281 = v64;
  v282 = v63;
  v285 = v64;
  v286 = v63;
  v68 = v51;
  v69 = v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_diagnosticsConsentProvider;
  v70 = (v69 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20));
  v71 = *v70;
  v72 = v70[1];
  (*v70)(&v284);
  (*(v66 + 24))(&v285, (v284 & 1) == 0, v67, v66);
  v245 = 0;
  v73 = v269;
  v244 = v60;
  v74 = v270;
  v75 = v271;
  v249 = v57;
  v246 = v72;
  v248 = v62;
  v76 = v277;
  v77 = (*(v268 + 48))(v68, 1, v277);
  v247 = v71;
  if (v77 != 1)
  {
    v88 = v248;
    sub_1B6984E58(v68, v248, type metadata accessor for StoredUserIDComponents);
    v89 = sub_1B6984A54(v88, v249, type metadata accessor for StoredUserIDComponents);
    v272 = *v273;
    v90 = v283;
    v91 = v279;
    if (*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))
    {
      v92 = *(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8);
      (*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))(v89);
      v93 = v278;
      (*(v278 + 56))(v75, 0, 1, v91);
      (*(v93 + 32))(v275, v75, v91);
      v94 = v276;
    }

    else
    {
      v113 = v278;
      (*(v278 + 56))(v75, 1, 1, v279);
      sub_1B6AB8D90();
      v114 = (*(v113 + 48))(v75, 1, v91);
      v94 = v276;
      if (v114 != 1)
      {
        sub_1B6983A08(v75, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
      }
    }

    v115 = (v90 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_userIDResetFlag);
    swift_beginAccess();
    v116 = v115[2];
    v117 = v115[3];
    if (!v115[1] || (v118 = *v115, v119 = objc_allocWithZone(MEMORY[0x1E695E000]), v120 = sub_1B6AB92B0(), v121 = v119, v94 = v276, v122 = [v121 initWithSuiteName_], v120, !v122))
    {
      v122 = [objc_opt_self() standardUserDefaults];
    }

    v123 = sub_1B6AB92B0();
    v80 = [v122 BOOLForKey_];
    swift_endAccess();

    v124 = v249;
    sub_1B6984A54(v249, v94, type metadata accessor for RotationMode);
    v125 = v278;
    v126 = (v124 + *(v277 + 20));
    v128 = *v126;
    v127 = v126[1];
    (*(v278 + 16))(v274, v275, v91);
    v129 = v272;
    v130 = v263;
    v131 = v261;
    v107 = v264;
    if (v272 != v128 && (v132 = __OFADD__(v127, 1), ++v127, v132))
    {
      __break(1u);
    }

    else
    {
      v133 = v80;
      v134 = &v267[*(v280 + 24)];
      *v134 = v272;
      *(v134 + 1) = v127;
      v80 = v257;
      sub_1B6984A54(v276, v257, type metadata accessor for RotationMode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B698114C();
        v136 = *(v135 + 48);
        v137 = *(v135 + 64);
        v270 = *(v131 + 32);
        v271 = (v131 + 32);
        v270(v107, v80, v130);
        v107 = v125 + 32;
        v138 = *(v125 + 32);
        v139 = &v80[v136];
        v140 = v279;
        v138(v260, v139, v279);
        v141 = &v80[v137];
        v142 = v252;
        v269 = v138;
        v138(v252, v141, v140);
        v175 = v129 == v128;
        v143 = v274;
        if (!v175 || (v144 = sub_1B69FAD2C(v274), (v144 >= v272) | v133 & 1))
        {
          sub_1B6AB8E30();
          v145 = sub_1B69FAD2C(v143);
          if (v272)
          {
            v146 = v259;
            v147 = v261;
            if (v145 == 0x8000000000000000 && v272 == -1)
            {
              __break(1u);
              return;
            }

            v262 = v133;
            v148 = *(v261 + 16);
            v149 = v145 / v272;
            v268 = v145 / v272;
            v150 = v272;
            v148(v259, v258, v130);
            v257 = *(v280 + 20);
            v151 = v251;
            v148(v251, v146, v130);
            v284 = v149;
            v285 = sub_1B6ABA080();
            v286 = v152;
            MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
            v284 = v133;
            v153 = sub_1B6ABA080();
            MEMORY[0x1B8C97BE0](v153);

            MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
            v284 = v150;
            v154 = sub_1B6ABA080();
            MEMORY[0x1B8C97BE0](v154);

            v155 = sub_1B699F46C(v285, v286);
            v156 = v267;
            sub_1B6A7C174(v151, v155, v157, &v267[v257]);
            v158 = v279;
            v159 = *(v278 + 8);
            v159(v274, v279);
            sub_1B6984D98(v276, type metadata accessor for RotationMode);
            v160 = *(v147 + 8);
            v160(v259, v130);
            v159(v252, v158);
            v160(v264, v130);
            sub_1B698103C(0);
            v162 = v161[12];
            v163 = v161[16];
            v164 = v161[20];
            v270(v156, v258, v130);
            v165 = &v156[v162];
            v166 = v280;
            (v269)(v165, v260, v158);
            v133 = v156;
            *&v156[v163] = v268;
            *&v156[v164] = v262;
            swift_storeEnumTagMultiPayload();
            v156[*(v166 + 28)] = 1;
            v159(v275, v158);
            sub_1B6984D98(v249, type metadata accessor for StoredUserIDComponents);
            v80 = v281;
            v107 = v282;
LABEL_37:
            v195 = v273[4];
            v196 = v273[5];
            __swift_project_boxed_opaque_existential_1(v273 + 1, v195);
            v197 = v265;
            sub_1B6984A54(v133, v265, type metadata accessor for UserIDComponents);
            v198 = v250;
            sub_1B6984A54(v197, v250, type metadata accessor for RotationMode);
            v199 = (v197 + *(v166 + 24));
            v200 = *v199;
            v201 = v199[1];
            v202 = sub_1B6984D98(v197, type metadata accessor for UserIDComponents);
            v203 = (v198 + *(v277 + 20));
            *v203 = v200;
            v203[1] = v201;
            v285 = v80;
            v286 = v107;
            v247(&v284, v202);
            LOBYTE(v201) = v284;
            v204 = *(*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
            os_unfair_lock_lock((v204 + 20));
            v205 = *(v204 + 16) == 0;
            os_unfair_lock_unlock((v204 + 20));
            v110 = v245;
            (*(v196 + 16))(v198, &v285, (v201 & 1) == 0, v205, v195, v196);
            if (v110)
            {
              sub_1B6984D98(v198, type metadata accessor for StoredUserIDComponents);
              sub_1B6984D98(v133, type metadata accessor for UserIDComponents);
              v112 = v248;
              v111 = type metadata accessor for StoredUserIDComponents;
              goto LABEL_39;
            }

            sub_1B6984D98(v198, type metadata accessor for StoredUserIDComponents);
            if (qword_1EDBCAA70 == -1)
            {
              goto LABEL_58;
            }

            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_80;
        }

        v234 = *(v125 + 8);
        v235 = v279;
        v234(v143, v279);
        v234(v142, v235);
        v234(v260, v235);
        v166 = v280;
        v133 = v267;
        v270(&v267[*(v280 + 20)], v264, v130);
        *(v133 + *(v166 + 28)) = 0;
        sub_1B6984E58(v276, v133, type metadata accessor for RotationMode);
        v234(v275, v235);
        sub_1B6984D98(v249, type metadata accessor for StoredUserIDComponents);
        v80 = v281;
        v107 = v282;
        goto LABEL_74;
      }

      sub_1B698103C(0);
      v167 = v125;
      v169 = v168;
      v170 = v168[12];
      v171 = *&v80[v168[16]];
      v271 = *&v80[v168[20]];
      v269 = *(v131 + 32);
      v270 = (v131 + 32);
      (v269)(v262, v80, v130);
      v172 = *(v167 + 32);
      v107 = v167 + 32;
      v268 = v172;
      v172(v256, &v80[v170], v279);
      v173 = sub_1B69FAD2C(v274);
      if (v129)
      {
        v174 = v251;
        if (v173 == 0x8000000000000000 && v129 == -1)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          swift_once();
LABEL_58:
          v227 = sub_1B6AB8F90();
          __swift_project_value_buffer(v227, qword_1EDBCFD80);
          sub_1B6992E2C(v80, v107);
          v228 = sub_1B6AB8F80();
          v229 = sub_1B6AB98D0();
          sub_1B69C2E8C(v80, v107);
          if (os_log_type_enabled(v228, v229))
          {
            v230 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            v285 = v231;
            *v230 = 136315138;
            if (v107)
            {
              if (v107 == 1)
              {
                v233 = 0x7274656D656C6574;
                v232 = 0xE900000000000079;
              }

              else if (v107 == 2)
              {
                v232 = 0xE800000000000000;
                v233 = 0x656D69746C616572;
              }

              else
              {
                v233 = v80;
                v232 = v107;
              }
            }

            else
            {
              v233 = 0x6E65764572657375;
              v232 = 0xEA00000000007374;
            }

            sub_1B6992E2C(v80, v107);
            v242 = sub_1B698F63C(v233, v232, &v285);

            *(v230 + 4) = v242;
            _os_log_impl(&dword_1B697C000, v228, v229, "Generated new user ID from stored one, for %s, and stored it", v230, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v231);
            MEMORY[0x1B8C99550](v231, -1, -1);
            MEMORY[0x1B8C99550](v230, -1, -1);
          }

          v166 = v280;
          goto LABEL_74;
        }

        v264 = v107;
        if (v133)
        {
          v132 = __OFADD__(v271++, 1);
          if (v132)
          {
            goto LABEL_81;
          }
        }

        v175 = v129 == v128 && v173 / v129 == v171;
        v176 = v173 / v129;
        v258 = v173 / v129;
        v177 = !v175;
        LODWORD(v260) = v177 | v133;
        v178 = *(v131 + 16);
        v179 = v259;
        v180 = v263;
        v181 = v129;
        v178(v259, v262, v263);
        v182 = v131;
        v257 = *(v280 + 20);
        v178(v174, v179, v180);
        v284 = v176;
        v285 = sub_1B6ABA080();
        v286 = v183;
        MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
        v184 = v271;
        v284 = v271;
        v185 = sub_1B6ABA080();
        MEMORY[0x1B8C97BE0](v185);

        MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
        v284 = v181;
        v186 = sub_1B6ABA080();
        MEMORY[0x1B8C97BE0](v186);

        v187 = sub_1B699F46C(v285, v286);
        v133 = v267;
        sub_1B6A7C174(v174, v187, v188, &v267[v257]);
        v189 = v279;
        v190 = *(v278 + 8);
        v190(v274, v279);
        sub_1B6984D98(v276, type metadata accessor for RotationMode);
        (*(v182 + 8))(v179, v180);
        v191 = v169[12];
        v192 = v169[16];
        v193 = v169[20];
        (v269)(v133, v262, v180);
        v194 = v133 + v191;
        v166 = v280;
        (v268)(v194, v256, v189);
        *(v133 + v192) = v258;
        *(v133 + v193) = v184;
        swift_storeEnumTagMultiPayload();
        LOBYTE(v184) = v260;
        *(v133 + *(v166 + 28)) = v260 & 1;
        v190(v275, v189);
        sub_1B6984D98(v249, type metadata accessor for StoredUserIDComponents);
        v80 = v281;
        v107 = v282;
        if (v184)
        {
          goto LABEL_37;
        }

LABEL_74:
        v243 = v254;
        sub_1B6984A54(v133, v254, type metadata accessor for UserIDComponents);
        (*(v253 + 56))(v243, 0, 1, v166);
        sub_1B6992E2C(v80, v107);
        sub_1B69E237C(v243, v80, v107);
        sub_1B6984D98(v133, type metadata accessor for UserIDComponents);
        v240 = type metadata accessor for StoredUserIDComponents;
        v241 = v248;
LABEL_75:
        sub_1B6984D98(v241, v240);
        return;
      }
    }

    __break(1u);
    goto LABEL_78;
  }

  v78 = sub_1B6983A08(v68, qword_1EB95B258, type metadata accessor for StoredUserIDComponents, MEMORY[0x1E69E6720], sub_1B6A86CF0);
  v79 = v273;
  v285 = *v273;
  v286 = 0;
  v80 = v281;
  v81 = v265;
  v82 = v279;
  if (*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))
  {
    v83 = *(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now + 8);
    (*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_now))(v78);
    v84 = v278;
    (*(v278 + 56))(v74, 0, 1, v82);
    v85 = v73;
    (*(v84 + 32))(v73, v74, v82);
    v86 = v280;
    v87 = v272;
  }

  else
  {
    v95 = v278;
    (*(v278 + 56))(v74, 1, 1, v279);
    v85 = v73;
    sub_1B6AB8D90();
    v96 = (*(v95 + 48))(v74, 1, v82);
    v86 = v280;
    v87 = v272;
    if (v96 != 1)
    {
      sub_1B6983A08(v74, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B6A86CF0);
    }
  }

  sub_1B6A77B8C(&v285, v85, v87);
  v97 = v79[4];
  v98 = v79[5];
  __swift_project_boxed_opaque_existential_1(v79 + 1, v97);
  sub_1B6984A54(v87, v81, type metadata accessor for UserIDComponents);
  v99 = v244;
  sub_1B6984A54(v81, v244, type metadata accessor for RotationMode);
  v100 = (v81 + *(v86 + 24));
  v101 = *v100;
  v102 = v100[1];
  v103 = v81;
  v104 = v99;
  v105 = sub_1B6984D98(v103, type metadata accessor for UserIDComponents);
  v106 = (v99 + *(v76 + 20));
  *v106 = v101;
  v106[1] = v102;
  v107 = v282;
  v285 = v80;
  v286 = v282;
  v247(&v284, v105);
  LOBYTE(v102) = v284;
  v108 = *(*(v283 + OBJC_IVAR____TtC12AppAnalytics15UserDataManager_trackingConsent) + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v108 + 20));
  v109 = *(v108 + 16) == 0;
  os_unfair_lock_unlock((v108 + 20));
  v110 = v245;
  (*(v98 + 16))(v104, &v285, (v102 & 1) == 0, v109, v97, v98);
  if (!v110)
  {
    sub_1B6984D98(v104, type metadata accessor for StoredUserIDComponents);
    if (qword_1EDBCAA70 == -1)
    {
LABEL_52:
      v218 = sub_1B6AB8F90();
      __swift_project_value_buffer(v218, qword_1EDBCFD80);
      sub_1B6992E2C(v80, v107);
      v219 = sub_1B6AB8F80();
      v220 = sub_1B6AB98D0();
      sub_1B69C2E8C(v80, v107);
      v221 = os_log_type_enabled(v219, v220);
      v222 = v280;
      if (v221)
      {
        v223 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v285 = v224;
        *v223 = 136315138;
        if (v107)
        {
          if (v107 == 1)
          {
            v226 = 0x7274656D656C6574;
            v225 = 0xE900000000000079;
          }

          else if (v107 == 2)
          {
            v225 = 0xE800000000000000;
            v226 = 0x656D69746C616572;
          }

          else
          {
            v226 = v80;
            v225 = v107;
          }
        }

        else
        {
          v226 = 0x6E65764572657375;
          v225 = 0xEA00000000007374;
        }

        sub_1B6992E2C(v80, v107);
        v236 = sub_1B698F63C(v226, v225, &v285);

        *(v223 + 4) = v236;
        _os_log_impl(&dword_1B697C000, v219, v220, "Generated new user ID for %s, and stored it", v223, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v224);
        MEMORY[0x1B8C99550](v224, -1, -1);
        MEMORY[0x1B8C99550](v223, -1, -1);
      }

      v237 = v254;
      v238 = v253;
      v239 = v272;
      sub_1B6984A54(v272, v254, type metadata accessor for UserIDComponents);
      (*(v238 + 56))(v237, 0, 1, v222);
      sub_1B6992E2C(v80, v107);
      sub_1B69E237C(v237, v80, v107);
      v240 = type metadata accessor for UserIDComponents;
      v241 = v239;
      goto LABEL_75;
    }

LABEL_78:
    swift_once();
    goto LABEL_52;
  }

  sub_1B6984D98(v104, type metadata accessor for StoredUserIDComponents);
  v111 = type metadata accessor for UserIDComponents;
  v112 = v272;
LABEL_39:
  sub_1B6984D98(v112, v111);
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v206 = sub_1B6AB8F90();
  __swift_project_value_buffer(v206, qword_1EDBCFD80);
  sub_1B6992E2C(v80, v107);
  v207 = v110;
  v208 = sub_1B6AB8F80();
  v209 = sub_1B6AB98E0();
  sub_1B69C2E8C(v80, v107);

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v285 = v212;
    *v210 = 136315394;
    if (v107)
    {
      if (v107 == 1)
      {
        v214 = 0x7274656D656C6574;
        v213 = 0xE900000000000079;
      }

      else if (v107 == 2)
      {
        v213 = 0xE800000000000000;
        v214 = 0x656D69746C616572;
      }

      else
      {
        v214 = v80;
        v213 = v107;
      }
    }

    else
    {
      v214 = 0x6E65764572657375;
      v213 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v80, v107);
    v215 = sub_1B698F63C(v214, v213, &v285);

    *(v210 + 4) = v215;
    *(v210 + 12) = 2112;
    v216 = v110;
    v217 = _swift_stdlib_bridgeErrorToNSError();
    *(v210 + 14) = v217;
    *v211 = v217;
    _os_log_impl(&dword_1B697C000, v208, v209, "Failed to retrieve ID components from storage kind: %s, error: %@", v210, 0x16u);
    sub_1B6A87308(v211, &qword_1EDBC8E08, &qword_1EDBC8E10, 0x1E69E58C0, sub_1B6986438);
    MEMORY[0x1B8C99550](v211, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v212);
    MEMORY[0x1B8C99550](v212, -1, -1);
    MEMORY[0x1B8C99550](v210, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B6A86AC8(uint64_t a1, uint64_t a2)
{
  sub_1B69827CC(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A86CF0(0, &qword_1EB95B580, sub_1B69827CC, MEMORY[0x1E69E8638]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - v11;
  sub_1B6984A54(a2, v6, sub_1B69827CC);
  sub_1B6A86CF0(0, &qword_1EDBC8E28, sub_1B69827CC, MEMORY[0x1E69E8660]);
  sub_1B6AB96B0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B6A86CC0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1B6A86CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B6A86D54(uint64_t a1, unint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v8, 0, 14);
      v3 = v8;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      v8[0] = a1;
      LOWORD(v8[1]) = a2;
      BYTE2(v8[1]) = BYTE2(a2);
      BYTE3(v8[1]) = BYTE3(a2);
      BYTE4(v8[1]) = BYTE4(a2);
      BYTE5(v8[1]) = BYTE5(a2);
      v3 = v8 + BYTE6(a2);
LABEL_9:
      result = MEMORY[0x1B8C979D0](v8, v3);
      goto LABEL_10;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B6A86E8C(v4, v5);
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6A86E8C(uint64_t a1, uint64_t a2)
{
  result = sub_1B6AB8900();
  v5 = result;
  if (result)
  {
    result = sub_1B6AB8930();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1B6AB8920();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1B8C979D0](v5, v11);
}

uint64_t sub_1B6A86F20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *a1;

  *a1 = v5;
  *a3 = a1[1];
}

uint64_t sub_1B6A86F7C(uint64_t a1, void *a2)
{
  sub_1B6A86CF0(0, &qword_1EB95B500, sub_1B698148C, MEMORY[0x1E69E8638]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v10 - v7;
  v10[1] = *a2;
  sub_1B6A86CF0(0, &qword_1EDBC8E20, sub_1B698148C, MEMORY[0x1E69E8660]);

  sub_1B6AB96B0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B6A870D0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a1[1];

  *a1 = v6;
  a1[1] = v5;
  *a3 = a1[2];
}

uint64_t sub_1B6A87134(uint64_t a1, uint64_t *a2)
{
  sub_1B69845D4(0, &qword_1EB95B570, MEMORY[0x1E69E8638]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = *a2;
  v10 = a2[1];
  v12[0] = v9;
  v12[1] = v10;
  sub_1B69845D4(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);

  sub_1B6AB96B0();
  return (*(v5 + 8))(v8, v4);
}

void sub_1B6A8726C()
{
  if (!qword_1EB95C4C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C4C8);
    }
  }
}

uint64_t sub_1B6A87308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B6A87364(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1B6A87364(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1B6AB9B30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B6A873C0()
{
  if (!qword_1EB95C4D0)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB95C4D0);
    }
  }
}

uint64_t sub_1B6A87480@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B6A87508(*(v2 + 16), a1);
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  *a2 = *(a1 + *(v5 + 28));
}

uint64_t sub_1B6A87508(uint64_t a1, uint64_t a2)
{
  sub_1B69827CC(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A8756C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B6A875B4()
{
  if (!qword_1EB95C4D8)
  {
    type metadata accessor for UserIDComponents();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C4D8);
    }
  }
}

uint64_t sub_1B6A87620(uint64_t a1)
{
  v3 = v2;
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B69AD75C;

  return sub_1B6A7C6CC(a1, v7, v8, v9, v10, v11, v1 + v6);
}

void sub_1B6A87778()
{
  if (!qword_1EB95C4E8)
  {
    sub_1B6984584(255, &qword_1EB95C4F0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C4E8);
    }
  }
}

void sub_1B6A87804()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];

  sub_1B6A7CE30(v3);
}

uint64_t sub_1B6A878CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B6A71900(a1, v4, v5, v6);
}

uint64_t sub_1B6A87980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69AD75C;

  return sub_1B6A71DEC(a1, v4, v5, v6);
}

void sub_1B6A87A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AB9A80();
    v7 = sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B6A87B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B6A87BAC();
    v7 = v6;
    v8 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6A87BAC()
{
  if (!qword_1EB95C528)
  {
    sub_1B6AB9A80();
    sub_1B6986438(255, &qword_1EDBCA4B0, 0x1E69E9620);
    sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20]);
    sub_1B6A87C78();
    v0 = sub_1B6AB8FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C528);
    }
  }
}

unint64_t sub_1B6A87C78()
{
  result = qword_1EB95C530;
  if (!qword_1EB95C530)
  {
    sub_1B6986438(255, &qword_1EDBCA4B0, 0x1E69E9620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C530);
  }

  return result;
}

uint64_t sub_1B6A87CE0(uint64_t a1, uint64_t a2)
{
  sub_1B6A87364(0, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A87DA8(uint64_t a1, uint64_t a2)
{
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A87E3C(uint64_t a1, uint64_t a2)
{
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrackerError.MissingData.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL static TrackerError.MissingData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B6ABA0F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1B6A880A8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B6ABA0F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TrackerError.FoundData.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TrackerError.FoundData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

uint64_t sub_1B6A88170(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

uint64_t static TrackerError.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return !v5;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  if ((sub_1B6A54C28(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B6A54CE4(v8, v7);
}

uint64_t sub_1B6A88244(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return v5 == 0;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a1[1];
  if ((sub_1B6A54C28(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B6A54CE4(v9, v8);
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12TrackerErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A882F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A88354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B6A883A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B6A8841C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1B6A88628(a1, v13, a2);
  if (v2)
  {
    v18 = *(v6 + 32);
    v18(v10, v13, v5);
    v19 = a1[4];
    if (sub_1B6ABA0C0())
    {
      return (*(v6 + 8))(v10, v5);
    }

    else
    {
      swift_allocError();
      return (v18)(v20, v10, v5);
    }
  }

  return result;
}

uint64_t sub_1B6A88628@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

void sub_1B6A88720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B69E4D6C(0, v1, 0);
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = sub_1B6AB9BF0();
    v6 = 0;
    v27 = *(a1 + 36);
    v25 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(a1 + 56) + 32 * v5);
      v10 = v9[1];
      v26 = *v9;
      v11 = v9[2];
      v12 = v9[3];

      sub_1B6AB13D8(v12, v11);
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        v24 = v13;
        sub_1B69E4D6C((v14 > 1), v15 + 1, 1);
        v13 = v24;
      }

      *(v28 + 16) = v15 + 1;
      v16 = (v28 + 24 * v15);
      v16[4] = v26;
      v16[5] = v10;
      v16[6] = v13;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1B6A8A5B4(v5, v27, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1B6A8A5B4(v5, v27, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v25)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1B6A88988(int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v41 = a2;
  v40 = a1;
  sub_1B6A8A4C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1B6AB8DB0();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = a4;
    v39 = a3;
    v21 = *(result + 104);

    sub_1B6AB8DA0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
      *v15 = v24;
      (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
      v25 = v24;
      LOBYTE(v24) = sub_1B6AB9110();
      result = (*(v12 + 8))(v15, v11);
      if ((v24 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v26 = *(v4 + 24);
      v27 = MEMORY[0x1EEE9AC00](*(v23 + 88));
      *(&v37 - 10) = v23;
      *(&v37 - 9) = &type metadata for SummaryEvent;
      *(&v37 - 8) = v21;
      *(&v37 - 56) = v28;
      *(&v37 - 6) = v19;
      *(&v37 - 5) = v29;
      v30 = v39;
      *(&v37 - 3) = v41;
      *(&v37 - 2) = v30;
      *(&v37 - 1) = v38;
      sub_1B6995F94(v27, sub_1B6A8A518, (&v37 - 12), v31);
    }

    else
    {
      v34 = v39;
      if (v39)
      {
        sub_1B6A16B30();
        v35 = swift_allocError();
        *v36 = xmmword_1B6AC0310;
        *v10 = v35;
        swift_storeEnumTagMultiPayload();
        v34(v10);

        sub_1B698C72C(v10, sub_1B6A8A4C0);
      }

      else
      {
      }
    }

    return (*(v42 + 8))(v19, v43);
  }

  else if (a3)
  {
    sub_1B6A16B30();
    v32 = swift_allocError();
    *v33 = xmmword_1B6AC0310;
    *v10 = v32;
    swift_storeEnumTagMultiPayload();
    a3(v10);
    return sub_1B698C72C(v10, sub_1B6A8A4C0);
  }

  return result;
}

uint64_t sub_1B6A88D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = sub_1B6A8A5C0(a1, a2, a3, a4);
  if (result)
  {
    sub_1B6A88F1C(a2);
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6AB8F90();
    __swift_project_value_buffer(v8, qword_1EDBCFDA8);
    v9 = sub_1B6AB8F80();
    v10 = sub_1B6AB9900();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_1B6ABA330();
      v15 = sub_1B698F63C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B697C000, v9, v10, "Recording event: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1B8C99550](v12, -1, -1);
      MEMORY[0x1B8C99550](v11, -1, -1);
    }

    v16 = *(v5 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_databaseManager);
    return sub_1B6A7B4BC();
  }

  return result;
}

uint64_t sub_1B6A88F1C(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  sub_1B6A8A380();
  v94 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB90F0();
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v96 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for SummaryEventMetaData();
  v9 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83 - v17;
  sub_1B698AC90(0, &qword_1EB95C558, type metadata accessor for SummaryEventData);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v83 - v21;
  v23 = type metadata accessor for SummaryEventData();
  v102 = *(v23 - 8);
  v103 = v23;
  v24 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v26 = sub_1B6AB8F90();
  v104 = __swift_project_value_buffer(v26, qword_1EDBCFDA8);
  v27 = sub_1B6AB8F80();
  v28 = sub_1B6AB9900();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B697C000, v27, v28, "Checking for possibility of saving summary events now...", v29, 2u);
    MEMORY[0x1B8C99550](v29, -1, -1);
  }

  if (sub_1B6A89A78() & 1) == 0 || (v30 = sub_1B6A89F38(), (v31))
  {
    v32 = sub_1B6AB8F80();
    v33 = sub_1B6AB9900();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B697C000, v32, v33, "It's not yet time to persist summary events ... skipping.", v34, 2u);
      MEMORY[0x1B8C99550](v34, -1, -1);
    }

    return 0;
  }

  v90 = v30;
  v91 = v11;
  v36 = sub_1B6AB8F80();
  v37 = sub_1B6AB9900();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B697C000, v36, v37, "Time threshold reached, generating summary event data ...", v38, 2u);
    MEMORY[0x1B8C99550](v38, -1, -1);
  }

  v39 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  swift_beginAccess();
  v40 = v13[2];
  v86 = v39;
  v40(v18, v2 + v39, v12);
  v92 = v2;
  v88 = *(v2 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_databaseManager);
  v41 = *(v88 + 16);

  sub_1B6A88720(v42);
  v44 = v43;
  v89 = 0;

  v45 = *(v44 + 16);
  v87 = v13;
  v85 = v13 + 2;
  v84 = v40;
  if (v45)
  {
    v46 = v90;
    v47 = v91;
    v40(v91, v18, v12);
    v48 = v47 + *(v101 + 20);
    sub_1B6AB8D10();
    v49 = v13[1];
    v49(v18, v12);
    sub_1B6A8A43C(v47, v22, type metadata accessor for SummaryEventMetaData);
    v50 = 0;
    v51 = v103;
    *&v22[*(v103 + 20)] = v44;
    *&v22[*(v51 + 24)] = v46;
  }

  else
  {
    v49 = v13[1];
    v49(v18, v12);

    v50 = 1;
    v51 = v103;
  }

  v52 = v102;
  (*(v102 + 56))(v22, v50, 1, v51);
  if ((*(v52 + 48))(v22, 1, v51) == 1)
  {
    sub_1B6A8AA34(v22, &qword_1EB95C558, type metadata accessor for SummaryEventData);

    v53 = sub_1B6AB8F80();
    v54 = sub_1B6AB9900();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v105[0] = v56;
      *v55 = 136315138;
      v57 = v93;
      v84(v93, v92 + v86, v12);
      sub_1B69ACDCC(&qword_1EDBCCC38, MEMORY[0x1E6969530]);
      v58 = sub_1B6ABA080();
      v60 = v59;
      v49(v57, v12);
      v61 = sub_1B698F63C(v58, v60, v105);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_1B697C000, v53, v54, "No summarized events, skipping upload, and reseting last submitted date: %s to now...", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1B8C99550](v56, -1, -1);
      MEMORY[0x1B8C99550](v55, -1, -1);
    }

    sub_1B6A8A07C();
    return 0;
  }

  v62 = v100;
  sub_1B6A8A43C(v22, v100, type metadata accessor for SummaryEventData);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v64 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    v65 = v96;
    v66 = v97;
    *v96 = v64;
    v67 = v98;
    (*(v66 + 104))(v65, *MEMORY[0x1E69E8020], v98);
    v68 = v64;
    LOBYTE(v64) = sub_1B6AB9110();
    result = (*(v66 + 8))(v65, v67);
    if ((v64 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v69 = v95;
    sub_1B698A30C(v62, v95, type metadata accessor for SummaryEventData);
    sub_1B69ACDCC(&qword_1EDBC91F8, type metadata accessor for SummaryEventData);
    v70 = sub_1B6ABA330();
    v71 = v94;
    v72 = (v69 + *(v94 + 36));
    *v72 = v70;
    v72[1] = v73;
    *(v69 + *(v71 + 40)) = 0;
    *(v69 + *(v71 + 44)) = 1;
    sub_1B6A2196C(v69, MEMORY[0x1E69E7CC0], 0xD000000000000066, 0x80000001B6ACE070, 135);

    sub_1B698C72C(v69, sub_1B6A8A380);
  }

  memset(v105, 0, 32);
  sub_1B6A88988(0, v105, 0, 0);
  sub_1B698C72C(v105, sub_1B69FA1E4);
  v74 = sub_1B6AB8F80();
  v75 = sub_1B6AB9900();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1B697C000, v74, v75, "Writing summary events to disk...", v76, 2u);
    MEMORY[0x1B8C99550](v76, -1, -1);
  }

  v77 = v88;
  v78 = *(v88 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
  MEMORY[0x1EEE9AC00](v79);
  *(&v83 - 2) = sub_1B6A8A4A4;
  *(&v83 - 1) = v77;
  os_unfair_lock_lock(v78 + 4);
  sub_1B69AC4BC();
  os_unfair_lock_unlock(v78 + 4);
  sub_1B6A7B6F8();
  sub_1B6A8A07C();
  v80 = sub_1B6AB8F80();
  v81 = sub_1B6AB9900();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1B697C000, v80, v81, "Successfully wrote summary events!", v82, 2u);
    MEMORY[0x1B8C99550](v82, -1, -1);
  }

  sub_1B698C72C(v62, type metadata accessor for SummaryEventData);
  return 1;
}

uint64_t sub_1B6A89A78()
{
  v1 = sub_1B6AB8DB0();
  v48 = *(v1 - 8);
  v2 = *(v48 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - v6;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v49 = v0;
  v8 = sub_1B6AB8F90();
  __swift_project_value_buffer(v8, qword_1EDBCFDA8);
  v9 = sub_1B6AB8F80();
  v10 = sub_1B6AB9900();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B697C000, v9, v10, "About to determine if it's time to submit our summary events...", v11, 2u);
    MEMORY[0x1B8C99550](v11, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = sub_1B6AB92B0();
  v15 = [v13 BOOLForKey_];

  if (v15)
  {
    v16 = [v12 standardUserDefaults];
    v17 = sub_1B6AB92B0();
    [v16 removeObjectForKey_];

    v18 = sub_1B6AB8F80();
    v19 = sub_1B6AB9900();
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_9:

      return 1;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "We have an override; force returning true for time to submit.";
    v22 = v19;
    v23 = v18;
    v24 = v20;
    v25 = 2;
LABEL_8:
    _os_log_impl(&dword_1B697C000, v23, v22, v21, v24, v25);
    MEMORY[0x1B8C99550](v20, -1, -1);
    goto LABEL_9;
  }

  v27 = v49;
  *&v28 = COERCE_DOUBLE(sub_1B6A89F38());
  if (v29)
  {
    v18 = sub_1B6AB8F80();
    v30 = sub_1B6AB9900();
    if (os_log_type_enabled(v18, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Undetermined summary event time interval, feature likely has a .disabled configuration";
      v33 = v30;
      v34 = v18;
      v35 = v31;
      v36 = 2;
LABEL_16:
      _os_log_impl(&dword_1B697C000, v34, v33, v32, v35, v36);
      MEMORY[0x1B8C99550](v31, -1, -1);
    }
  }

  else
  {
    v37 = v28;
    v38 = *&v28;
    v39 = *(v27 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator + 8);
    (*(v27 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator))();
    v40 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
    swift_beginAccess();
    v41 = v48;
    (*(v48 + 16))(v5, v27 + v40, v1);
    sub_1B6AB8D00();
    v43 = v42;
    v44 = *(v41 + 8);
    v44(v5, v1);
    v44(v7, v1);
    v18 = sub_1B6AB8F80();
    v45 = sub_1B6AB9900();
    v46 = os_log_type_enabled(v18, v45);
    if (v43 >= v38)
    {
      if (!v46)
      {
        goto LABEL_9;
      }

      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v43;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v37;
      v21 = "Enough time has elapsed. It's time to submit. timeIntervalSinceLastFlush=%f, timeIntervalBetweenFlushes=%f";
      v22 = v45;
      v23 = v18;
      v24 = v20;
      v25 = 22;
      goto LABEL_8;
    }

    if (v46)
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = v43;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v37;
      v32 = "It's not yet time to submit. timeIntervalSinceLastFlush=%f, timeIntervalBetweenFlushes=%f";
      v33 = v45;
      v34 = v18;
      v35 = v31;
      v36 = 22;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1B6A89F38()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B6AB92B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1B698C72C(v8, sub_1B69FA1E4);
  }

  if (*(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_flushCadence + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_flushCadence);
  }
}

void sub_1B6A8A07C()
{
  v1 = v0;
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator);
  v9 = *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator + 8);
  v8(v5);
  v10 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v10, v7, v2);
  swift_endAccess();
  v11 = [objc_opt_self() standardUserDefaults];
  (*(v3 + 16))(v7, v1 + v10, v2);
  v12 = sub_1B6AB8D20();
  (*(v3 + 8))(v7, v2);
  v13 = sub_1B6AB92B0();
  [v11 setObject:v12 forKey:v13];
}

uint64_t sub_1B6A8A238()
{
  v1 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  v2 = sub_1B6AB8DB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_databaseManager);

  v4 = *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lock);

  sub_1B698C72C(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_configuration, type metadata accessor for SummaryEventConfiguration);
  v5 = *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1B6A8A380()
{
  if (!qword_1EB95B638)
  {
    type metadata accessor for SummaryEventData();
    sub_1B69ACDCC(&qword_1EDBC91F8, type metadata accessor for SummaryEventData);
    v0 = type metadata accessor for PushEvent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B638);
    }
  }
}

uint64_t sub_1B6A8A43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B6A8A4C0()
{
  if (!qword_1EB95B648)
  {
    v0 = type metadata accessor for EventSubmitResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B648);
    }
  }
}

void sub_1B6A8A57C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1B6A8A5B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B6A8A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a4 + 40))(a3, a4))
  {
    sub_1B69A31EC(&v42);
    if (v42 == 2 || (v42 & 1) != 0)
    {
      if (qword_1EDBCAA78 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v42 = 0;
LABEL_12:
    v28 = MEMORY[0x1E69E7CD0];
    goto LABEL_13;
  }

  v21 = Strong;
  v22 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v22;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v23 = v22;
  LOBYTE(v22) = sub_1B6AB9110();
  (*(v8 + 8))(v11, v7);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_5:
    v12 = sub_1B6AB8F90();
    __swift_project_value_buffer(v12, qword_1EDBCFDA8);
    v13 = sub_1B6AB8F80();
    v14 = sub_1B6AB9900();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136315138;
      v17 = sub_1B6ABA330();
      v19 = sub_1B698F63C(v17, v18, &v42);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B697C000, v13, v14, "Discarding D&U-only summary event: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B8C99550](v16, -1, -1);
      MEMORY[0x1B8C99550](v15, -1, -1);
    }

    goto LABEL_20;
  }

  v24 = *(v21 + 208);
  v25 = *(v21 + 216);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 8);
  swift_unknownObjectRetain();
  v27(&v42, ObjectType, v25);

  swift_unknownObjectRelease();
  v28 = v42;
  if (!v42)
  {
    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for DenylistDescriptorMatcher();
  *(swift_initStackObject() + 16) = v28;
  v41 = a1;
  swift_getMetatypeMetadata();
  v29 = sub_1B6AB9330();
  v31 = sub_1B69C245C(v29, v30);

  if (!v31)
  {

    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v32 = sub_1B6AB8F90();
  __swift_project_value_buffer(v32, qword_1EDBCFDA8);
  v13 = sub_1B6AB8F80();
  v33 = sub_1B6AB9900();
  if (!os_log_type_enabled(v13, v33))
  {

LABEL_20:

    return 0;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v41 = v35;
  *v34 = 136315138;
  v36 = sub_1B6ABA330();
  v38 = sub_1B698F63C(v36, v37, &v41);

  *(v34 + 4) = v38;
  _os_log_impl(&dword_1B697C000, v13, v33, "Failed privacy validation for summary event: %s", v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v35);
  MEMORY[0x1B8C99550](v35, -1, -1);
  MEMORY[0x1B8C99550](v34, -1, -1);

  return 0;
}

uint64_t sub_1B6A8AA34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B698AC90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B6A8AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t AppSessionManager.forEachSessionManager(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  v7 = *(v3 + 24);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;

  sub_1B69877A4(v7, sub_1B6A0A990, v8);
}

uint64_t sub_1B6A8AB70()
{
  sub_1B6A909BC();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EB967240 = result;
  return result;
}

uint64_t sub_1B6A8ABA8()
{
  sub_1B6A90884();
  result = swift_allocObject();
  *(result + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  qword_1EDBCFD18 = result;
  return result;
}

uint64_t sub_1B6A8ABE8()
{
  v42 = type metadata accessor for SessionManager.SessionState(0);
  v1 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + 24);
  v10 = OBJC_IVAR___AAAccessQueue_queue;
  v43 = v0;
  v44 = v9;
  v11 = *(v9 + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v14 = (v5 + 13);
  v13 = v5[13];
  v13(v8, v12, v4);
  v15 = v11;
  v16 = sub_1B6AB9110();
  v19 = v5[1];
  v18 = v5 + 1;
  v17 = v19;
  v19(v8, v4);
  if ((v16 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = *(v44 + v10);
  *v8 = v20;
  v13(v8, v12, v4);
  v21 = v20;
  v16 = sub_1B6AB9110();
  v17(v8, v4);
  if ((v16 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = *(v43 + 72);
  if (v16 >> 62)
  {
LABEL_35:
    v44 = v16 & 0xFFFFFFFFFFFFFF8;
    v22 = sub_1B6AB9E60();
    goto LABEL_5;
  }

  v44 = v16 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (!v22)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v37 = v17;
  v38 = v13;
  v39 = v14;
  v40 = v12;
  v41 = v18;
  v18 = 0;
  v43 = v16 & 0xC000000000000001;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = v18;
    while (1)
    {
      if (v43)
      {
        v13 = MEMORY[0x1B8C98510](v14, v16);
        v18 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v14 >= *(v44 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v16 + 8 * v14 + 32);

        v18 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      Strong = swift_weakLoadStrong();
      if (!Strong)
      {

        goto LABEL_9;
      }

      v17 = Strong;
      v12 = v22;
      v24 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
      *v8 = v24;
      v38(v8, v40, v4);
      v25 = v24;
      LOBYTE(v24) = sub_1B6AB9110();

      v37(v8, v4);
      if ((v24 & 1) == 0)
      {
        goto LABEL_32;
      }

      v26 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
      swift_beginAccess();
      sub_1B69804E0(v17 + v26, v3, type metadata accessor for SessionManager.SessionState);

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6984064(v3, type metadata accessor for SessionManager.SessionState);
        v22 = v12;
        goto LABEL_9;
      }

      v22 = v12;
      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

LABEL_9:
      ++v14;
      if (v18 == v22)
      {
        goto LABEL_29;
      }
    }

    v28 = *(*v3 + 16);
    v17 = *(*v3 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1B69B5A00(0, *(v36 + 2) + 1, 1, v36);
    }

    v31 = *(v36 + 2);
    v30 = *(v36 + 3);
    v13 = (v31 + 1);
    if (v31 >= v30 >> 1)
    {
      v36 = sub_1B69B5A00((v30 > 1), v31 + 1, 1, v36);
    }

    v32 = v36;
    *(v36 + 2) = v13;
    v33 = &v32[16 * v31];
    *(v33 + 4) = v28;
    *(v33 + 5) = v17;
    v22 = v12;
  }

  while (v18 != v12);
LABEL_29:

  v34 = sub_1B6A94D5C(v36);

  return v34;
}

uint64_t AppSessionManager.wasPriorSessionCrashDetected.getter()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t AppSessionManager.lastSessionCrashDetails.getter()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 16))(v1, v2);
}

void *AppSessionManager.__allocating_init(accessQueue:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1B6A8FB80(a1);

  return v5;
}

void *AppSessionManager.init(accessQueue:)(void *a1)
{
  v2 = sub_1B6A8FB80(a1);

  return v2;
}

void *AppSessionManager.__allocating_init(accessQueue:trackingConsent:crashDetector:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1B6A8FDA0(a1, a2, a3);

  return v9;
}

void *AppSessionManager.init(accessQueue:trackingConsent:crashDetector:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1B6A8FDA0(a1, a2, a3);

  return v4;
}

void *AppSessionManager.__allocating_init(accessQueue:trackingConsent:crashDetector:summaryEventConfiguration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[7] = 0;
  v11[8] = 0;
  v11[9] = MEMORY[0x1E69E7CC0];
  *(v11 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v12 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v11[3] = a1;
  v11[4] = v12;
  sub_1B6982544(a3, (v11 + 10));
  sub_1B69804E0(a4, v11 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v11[5] = 0;
  v13 = v11 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider;
  v14 = v12;
  sub_1B6AB8E30();
  sub_1B6984064(a4, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a3);
  v15 = &v13[*(type metadata accessor for DiagnosticsConsentProvider(0) + 20)];
  *v15 = sub_1B69A3378;
  *(v15 + 1) = 0;
  v11[6] = a2;
  return v11;
}

void *AppSessionManager.init(accessQueue:trackingConsent:crashDetector:summaryEventConfiguration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v4[3] = a1;
  v14 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v4[4] = v14;
  sub_1B6982544(a3, (v4 + 10));
  sub_1B69804E0(a4, v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v4[5] = 0;
  v15 = v14;
  sub_1B6AB8E30();
  sub_1B6984064(a4, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a3);
  v16 = &v13[*(v10 + 28)];
  *v16 = sub_1B69A3378;
  *(v16 + 1) = 0;
  sub_1B6A90280(v13, v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v4[6] = a2;
  return v4;
}

void *AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:userDataConfiguration:diagnosticsConsentProvider:)(char *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a3;
  v43 = a2;
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for SummaryEventConfiguration(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a4)
  {
    if (qword_1EB95A9E8 != -1)
    {
      swift_once();
    }

    v20 = qword_1EB967240;
    os_unfair_lock_lock((qword_1EB967240 + 24));
    sub_1B6A8DCFC((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));
  }

  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDBCB570;
  sub_1B6982544(v43, v46);
  sub_1B69804E0(v42, v19, type metadata accessor for SummaryEventConfiguration);
  sub_1B69804E0(a4, v45, sub_1B6A8FF44);
  sub_1B69804E0(a5, v15, type metadata accessor for DiagnosticsConsentProvider);
  v22 = *(v5 + 48);
  v23 = *(v5 + 52);
  v24 = swift_allocObject();
  v25 = v24;
  v24[2] = 0;
  v24[7] = 0;
  v24[8] = 0;
  v24[9] = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v24[3] = v21;
  if (a1)
  {
    v26 = *&a1[OBJC_IVAR___AATrackingConsent_accessGroup];
    v24[4] = v26;
    v27 = v21;
    v28 = a1;
  }

  else
  {
    v29 = v21;
    v25[4] = dispatch_group_create();
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDBCB4A0;
    v28 = qword_1EDBCB4A0;
  }

  v30 = v26;
  v25[6] = v28;
  sub_1B6982544(v46, (v25 + 10));
  sub_1B69804E0(v19, v25 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B69804E0(v45, v44, sub_1B6A8FF44);
  sub_1B69804E0(v15, v13, type metadata accessor for DiagnosticsConsentProvider);
  if (a1)
  {
    v31 = a1;
  }

  else
  {
    if (qword_1EB95A990 != -1)
    {
      swift_once();
    }

    v31 = qword_1EB967220;
  }

  v32 = type metadata accessor for UserDataManager();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = a1;
  v25[5] = sub_1B6A7D3E8(v44, v13, v31);
  sub_1B69804E0(v15, v25 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v36 = v25[4];
  v37 = qword_1EDBCAA18;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDBCFD78;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B6A8FF94;
  *(v39 + 24) = v25;

  sub_1B69877A4(v38, sub_1B69B6F90, v39);

  sub_1B6984064(a5, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6984064(v42, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1B6984064(v15, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6984064(v45, sub_1B6A8FF44);
  sub_1B6984064(v19, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v46);
  sub_1B6984064(a4, sub_1B6A8FF44);
  return v25;
}

void sub_1B6A8B9E4()
{
  if (qword_1EDBC9580 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBCFD18;
  os_unfair_lock_lock((qword_1EDBCFD18 + 32));
  sub_1B6A90A1C((v0 + 16));

  os_unfair_lock_unlock((v0 + 32));
}

uint64_t sub_1B6A8BA74(void **a1)
{
  swift_weakInit();
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B69E3D38(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1B69E3D38((v3 > 1), v4 + 1, 1, v2);
  }

  v2[2] = v4 + 1;
  result = sub_1B6A90280(v6, &v2[v4 + 4], sub_1B69E865C);
  *a1 = v2;
  return result;
}

void AppSessionManager.deinit()
{
  if (!*(v0 + 40))
  {
    goto LABEL_6;
  }

  if (qword_1EB95A9E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB967240;
  os_unfair_lock_lock((qword_1EB967240 + 24));
  v2 = *(v1 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 16) = v4;
    os_unfair_lock_unlock((v1 + 24));
LABEL_6:
    v5 = *(v0 + 16);

    v6 = *(v0 + 40);

    v7 = *(v0 + 64);

    v8 = *(v0 + 72);

    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    sub_1B6984064(v0 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
    sub_1B6984064(v0 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
    v9 = *(v0 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks);

    return;
  }

  __break(1u);
}

uint64_t AppSessionManager.__deallocating_deinit()
{
  AppSessionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A8BCB4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a1 + 24);
  v13 = *&v25[OBJC_IVAR___AAAccessQueue_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  v15 = sub_1B6AB9110();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v8 = *(a1 + 72);
    if (!(v8 >> 62))
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  v16 = sub_1B6AB9E60();
LABEL_4:

  if (v16)
  {
    v17 = 0;
    v28 = v8 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        MEMORY[0x1B8C98510](v17, v8);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v18 = *(v8 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        sub_1B69804E0(*(Strong + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v7, type metadata accessor for DiagnosticsConsentProvider);
        v22 = v27;

        sub_1B6AAE978(v25, v7, v26, v22, v21);

        sub_1B6984064(v7, type metadata accessor for DiagnosticsConsentProvider);
      }

      ++v17;
    }

    while (v19 != v16);
  }
}

uint64_t AppSessionManager.endAppSession(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  sub_1B6AB8DA0();
  v13 = v2 + 24;
  v12 = *(v2 + 24);
  v20[1] = *(v13 + 8);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  (*(v6 + 32))(v16 + v14, v9, v5);
  v17 = (v16 + v15);
  *v17 = v21;
  v17[1] = a2;

  sub_1B69877A4(v12, sub_1B6A8FFD8, v16);

  v18 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  swift_beginAccess();
  if (*(v3 + v18))
  {
    swift_endAccess();

    sub_1B6AB9710();

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return swift_endAccess();
  }
}

uint64_t sub_1B6A8C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDBCCB28;
  sub_1B6987B48(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
  v48 = v11;
  v12 = swift_allocObject();
  v47 = xmmword_1B6ABD890;
  *(v12 + 16) = xmmword_1B6ABD890;
  v13 = *(a1 + 24);
  v56 = OBJC_IVAR___AAAccessQueue_queue;
  v14 = *(v13 + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v14;
  v15 = v6[13];
  v55 = *MEMORY[0x1E69E8020];
  v54 = v15;
  v52 = v6 + 13;
  v15(v9);
  v16 = v14;
  v17 = sub_1B6AB9110();
  v57 = v6[1];
  result = v57(v9, v5);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = a1;
  v53 = v10;
  v22 = *(a1 + 56);
  v20 = (a1 + 56);
  v21 = v22;
  v23 = *(v19 + 64);
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v46 = sub_1B698CEC0();
  *(v12 + 64) = v46;
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 7104878;
  }

  v25 = 0xE300000000000000;
  if (v23)
  {
    v25 = v23;
  }

  *(v12 + 32) = v24;
  *(v12 + 40) = v25;

  sub_1B6AB9900();
  sub_1B6AB8F70();

  sub_1B6A8C660();
  v26 = dispatch_group_create();
  v27 = *(v13 + v56);
  *v9 = v27;
  v54(v9, v55, v5);
  v28 = v27;
  LOBYTE(v27) = sub_1B6AB9110();
  result = v57(v9, v5);
  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v20;
  v45 = v19;
  v29 = *(v19 + 72);
  MEMORY[0x1EEE9AC00](result);
  v30 = v49;
  *(&v43 - 2) = v26;
  *(&v43 - 1) = v30;

  sub_1B6AB3954(sub_1B6A902E8, (&v43 - 4), v29);

  sub_1B69877A4(v13, v50, v51);
  v31 = swift_allocObject();
  *(v31 + 16) = v47;
  v32 = *(v13 + v56);
  *v9 = v32;
  v54(v9, v55, v5);
  v33 = v32;
  LOBYTE(v32) = sub_1B6AB9110();
  result = v57(v9, v5);
  if ((v32 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v45;
  v36 = *(v45 + 56);
  v35 = *(v45 + 64);
  v37 = v46;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = v37;
  if (!v35)
  {
    v36 = 7104878;
  }

  v38 = 0xE300000000000000;
  if (v35)
  {
    v38 = v35;
  }

  *(v31 + 32) = v36;
  *(v31 + 40) = v38;

  sub_1B6AB9900();
  sub_1B6AB8F70();

  v39 = *(v13 + v56);
  *v9 = v39;
  v54(v9, v55, v5);
  v40 = v39;
  LOBYTE(v39) = sub_1B6AB9110();

  result = v57(v9, v5);
  if (v39)
  {
    v41 = *(v34 + 64);
    v42 = v44;
    *v44 = 0;
    v42[1] = 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B6A8C660()
{
  v1 = sub_1B6AB90F0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  v7 = OBJC_IVAR___AAAccessQueue_queue;
  v8 = *(v6 + OBJC_IVAR___AAAccessQueue_queue);
  *v5 = v8;
  v10 = (v2 + 13);
  v9 = v2[13];
  v29 = *MEMORY[0x1E69E8020];
  v28 = v9;
  v9(v5);
  v11 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  v13 = v2[1];
  v12 = (v2 + 1);
  v27 = v13;
  v13(v5, v1);
  if (v8)
  {
    v25 = v7;
    v26 = v10;
    v10 = v0[9];
    v30 = MEMORY[0x1E69E7CC0];
    if (!(v10 >> 62))
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v14 = sub_1B6AB9E60();
LABEL_4:

  if (v14)
  {
    v22[0] = v6;
    v22[1] = v12;
    v23 = v1;
    v24 = v0;
    v12 = 0;
    v6 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v12, v10);
        v1 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v17 = v30;
          v1 = v23;
          v0 = v24;
          v6 = v22[0];
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v15 = *(v10 + 8 * v12 + 32);

        v1 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_weakLoadStrong())
      {

        v0 = &v30;
        sub_1B6AB9D50();
        v16 = *(v30 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++v12;
      if (v1 == v14)
      {
        goto LABEL_16;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v18 = *(v6 + v25);
  *v5 = v18;
  v28(v5, v29, v1);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = v27(v5, v1);
  if (v18)
  {
    v21 = v0[9];
    v0[9] = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A8C910(uint64_t *a1, dispatch_group_t group, uint64_t a3)
{
  v5 = *a1;
  dispatch_group_enter(group);
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = group;
    v8 = group;
    sub_1B6A039D8(a3, sub_1B69C8DA0, v7);
  }

  return result;
}

Swift::Void __swiftcall AppSessionManager.appSessionDidTerminate()()
{
  v1 = v0;
  v2 = sub_1B6AB9030();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB8DB0();
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v66 = sub_1B6AB90C0();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v51 - v14;
  v15 = sub_1B6AB9090();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 24);
  sub_1B6A2ACC8();
  v51 = v18;
  v19 = *(v18 + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B6987B48(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v52 = v1;
  sub_1B6AB99A0();
  v20 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v21 = sub_1B6AB9E60();
    v23 = v65;
    v22 = v66;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v21 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v65;
    v22 = v66;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    return;
  }

  v24 = 0;
  v72 = v20 & 0xC000000000000001;
  v25 = (v10 + 8);
  v58 = v74;
  v57 = v63 + 16;
  v56 = v6 + 7;
  v55 = v63 + 32;
  v54 = (v63 + 8);
  v59 = v20;
  v69 = v21;
  v53 = v9;
  do
  {
    if (v72)
    {
      MEMORY[0x1B8C98510](v24, v20);
    }

    else
    {
      v26 = *(v20 + 8 * v24 + 32);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = *(Strong + 56);
      sub_1B6AB90B0();
      v70 = v29;
      sub_1B6AB9910();
      v71 = *v25;
      v71(v23, v22);
      if (sub_1B6AB9010())
      {
        sub_1B6AB8DA0();
        v68 = dispatch_group_create();
        dispatch_group_enter(v68);
        v30 = v5;
        v31 = *(v28 + 48);
        v32 = v64;
        sub_1B6AB9070();
        v67 = v31;
        sub_1B6A2AED0(v32);
        sub_1B6AB9070();
        sub_1B6AB9020();
        v74[2] = nullsub_1;
        v74[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v74[0] = sub_1B698E534;
        v74[1] = &block_descriptor_37;
        _Block_copy(aBlock);
        v33 = sub_1B6AB90E0();
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        sub_1B6AB90D0();
        v36 = *(v31 + OBJC_IVAR___AAAccessQueue_queue);
        sub_1B6AB99C0();

        v37 = v9;
        v38 = v63;
        v39 = v61;
        (*(v63 + 16))(v61, v37, v30);
        v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
        v41 = (v56 + v40) & 0xFFFFFFFFFFFFFFF8;
        v42 = swift_allocObject();
        *(v42 + 16) = v28;
        v43 = *(v38 + 32);
        v5 = v30;
        v43(v42 + v40, v39, v30);
        v44 = v68;
        *(v42 + v41) = v68;
        v22 = v66;
        v45 = v44;

        sub_1B69877A4(v67, sub_1B6A90088, v42);
        v23 = v65;

        v46 = v60;
        sub_1B6AB90B0();
        sub_1B6AB9100();
        v47 = v71;
        v71(v46, v22);
        LOBYTE(v46) = sub_1B6AB9910();
        v47(v23, v22);
        if (v46)
        {
          v9 = v53;
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          sub_1B6AB98E0();
          sub_1B6AB8F70();

          (*v54)(v9, v5);
        }

        else
        {
          v9 = v53;
          (*v54)(v53, v5);
        }

        v20 = v59;
        v21 = v69;
      }

      else
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        sub_1B6AB98E0();
        sub_1B6AB8F70();

        v21 = v69;
      }
    }

    else
    {
    }

    ++v24;
  }

  while (v21 != v24);
LABEL_22:

  v48 = v64;
  sub_1B6AB9050();
  sub_1B6A2AED0(v48);
  v49 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  v50 = v52;
  swift_beginAccess();
  if (*(v50 + v49))
  {

    sub_1B6AB9710();
  }
}

Swift::Void __swiftcall AppSessionManager.appSessionDidTerminate(timeout:)(Swift::Double timeout)
{
  v2 = v1;
  v3 = sub_1B6AB9030();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB9090();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8DB0();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_1B6AB90C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v57 - v19;
  v20 = *(v1 + 24);
  sub_1B6A2ACC8();
  v57 = v20;
  v21 = *(v20 + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B6987B48(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v58 = v2;
  sub_1B6AB99A0();
  v22 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v23 = sub_1B6AB9E60();
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_23:

    v54 = v71;
    sub_1B6AB9050();
    sub_1B6A2AED0(v54);
    v55 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
    v56 = v58;
    swift_beginAccess();
    if (*(v56 + v55))
    {

      sub_1B6AB9710();
    }

    return;
  }

  v23 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = (v15 + 8);
    v26 = v22 & 0xC000000000000001;
    v65 = v82;
    v64 = v70 + 16;
    v63 = v10 + 7;
    v27 = v25;
    v62 = v70 + 32;
    v61 = (v70 + 8);
    v80 = v25;
    v75 = v23;
    v76 = v22;
    v66 = v22 & 0xC000000000000001;
    v60 = v13;
    v59 = v14;
    while (1)
    {
      if (v26)
      {
        v28 = MEMORY[0x1B8C98510](v24, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v24 + 32);
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      if (v23 == ++v24)
      {
        goto LABEL_23;
      }
    }

    v30 = Strong;
    v31 = *(Strong + 56);
    v32 = v77;
    sub_1B6AB90B0();
    v78 = v31;
    sub_1B6AB9910();
    v79 = *v27;
    v79(v32, v14);
    if (sub_1B6AB9010())
    {
      v73 = v28;
      sub_1B6AB8DA0();
      v74 = dispatch_group_create();
      dispatch_group_enter(v74);
      v33 = *(v30 + 48);
      v34 = v13;
      v35 = v71;
      sub_1B6AB9070();
      v72 = v33;
      sub_1B6A2AED0(v35);
      sub_1B6AB9070();
      v36 = v9;
      sub_1B6AB9020();
      v82[2] = nullsub_1;
      v82[3] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v82[0] = sub_1B698E534;
      v82[1] = &block_descriptor_44;
      _Block_copy(aBlock);
      v37 = sub_1B6AB90E0();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      sub_1B6AB90D0();
      v40 = *(v33 + OBJC_IVAR___AAAccessQueue_queue);
      sub_1B6AB99C0();

      v41 = v70;
      v42 = v68;
      (*(v70 + 16))(v68, v34, v9);
      v43 = (*(v41 + 80) + 24) & ~*(v41 + 80);
      v44 = (v63 + v43) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 16) = v30;
      v46 = v42;
      v47 = v36;
      (*(v41 + 32))(v45 + v43, v46, v36);
      v48 = v74;
      *(v45 + v44) = v74;
      v49 = v48;

      sub_1B69877A4(v72, sub_1B6A90A40, v45);

      v50 = v67;
      sub_1B6AB90B0();
      sub_1B6AB9100();
      v51 = v59;
      v52 = v79;
      v79(v50, v59);
      LOBYTE(v50) = sub_1B6AB9910();
      v53 = v51;
      v52(v32, v51);
      if ((v50 & 1) == 0)
      {
        v13 = v60;
        (*v61)(v60, v47);

        v9 = v47;
        v14 = v53;
        v23 = v75;
        v22 = v76;
        v26 = v66;
        goto LABEL_21;
      }

      v13 = v60;
      v9 = v47;
      v23 = v75;
      v26 = v66;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6AB8F70();

      (*v61)(v13, v9);

      v14 = v53;
    }

    else
    {
      v23 = v75;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6AB8F70();
    }

    v22 = v76;
LABEL_21:
    v27 = v80;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1B6A8DA28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[3];
  v21 = OBJC_IVAR___AAAccessQueue_queue;
  v8 = *(v22 + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = v4[13];
  v10(v7, v9, v3);
  v11 = v8;
  v12 = sub_1B6AB9110();
  v13 = v4[1];
  result = v13(v7, v3);
  if (v12)
  {
    v15 = a1[8];
    a1[7] = 0;
    a1[8] = 0;

    v16 = *(v22 + v21);
    *v7 = v16;
    v10(v7, v9, v3);
    v17 = v16;
    v18 = sub_1B6AB9110();
    result = v13(v7, v3);
    if (v18)
    {
      *v20 = a1[9];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppSessionManager.userEventsID()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40))
  {
    sub_1B6A81954(a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AppSessionManager.userID(for:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40))
  {
    v7 = *a1;
    return sub_1B6A83538(&v7, a2);
  }

  else
  {
    v5 = sub_1B6AB8E40();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

void sub_1B6A8DCFC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 <= 0)
  {
    *a1 = v1 + 1;
  }

  else
  {
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v2 = sub_1B6AB8F90();
    __swift_project_value_buffer(v2, qword_1EDBCFDA8);
    v3 = sub_1B6AB8F80();
    v4 = sub_1B6AB98E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1B697C000, v3, v4, "AppSessionManager instance count = %ld", v5, 0xCu);
      MEMORY[0x1B8C99550](v5, -1, -1);
    }
  }
}

uint64_t sub_1B6A8DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B6A8DE28, 0, 0);
}

uint64_t sub_1B6A8DE28()
{
  v1 = *(MEMORY[0x1E69E88D8] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1B69F69E0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE8](v3, v5, 0, 0, &unk_1B6AC5710, v4, v6);
}

uint64_t sub_1B6A8DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1B69949E8();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8DF7C, 0, 0);
}

uint64_t sub_1B6A8DF7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1B6AB9680();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v7 = sub_1B69F18A0();
  v8 = swift_allocObject();
  v8[2] = inited;
  v8[3] = v7;
  v8[4] = sub_1B6A90464;
  v8[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5720, v8);
  sub_1B6984064(v1, sub_1B69949E8);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = inited;
  v9[3] = v7;
  v9[4] = &unk_1B6AC5730;
  v9[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5740, v9);
  sub_1B6984064(v1, sub_1B69949E8);
  v5(v1, 1, 1, v4);
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v7;
  v10[4] = &unk_1B6AC5750;
  v10[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5758, v10);
  sub_1B6984064(v1, sub_1B69949E8);
  v5(v1, 1, 1, v4);
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v7;
  v11[4] = &unk_1B6AC5768;
  v11[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5770, v11);
  sub_1B6984064(v1, sub_1B69949E8);

  v12 = *(v14 + 8);

  return v12();
}

uint64_t sub_1B6A8E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8E300, v6, v5);
}

uint64_t sub_1B6A8E300()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B6A8E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69949E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69804E0(a1, v11, sub_1B69949E8);
  v12 = sub_1B6AB9680();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B6984064(v11, sub_1B69949E8);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1B6AB95E0();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB9670();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1B6A8E57C()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69AD75C;

  return sub_1B6A7EB98();
}

uint64_t sub_1B6A8E620(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B69D1460;

  return v7();
}

uint64_t sub_1B6A8E708()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A80314();
}

uint64_t sub_1B6A8E7AC()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A81174();
}

uint64_t static AppSessionManager.remoteConfigurationUserID.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1B6987C8C(0);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8E8F8, 0, 0);
}

uint64_t sub_1B6A8E8F8()
{
  if (qword_1EDBC9580 != -1)
  {
    goto LABEL_30;
  }

LABEL_2:
  v1 = qword_1EDBCFD18;
  os_unfair_lock_lock((qword_1EDBCFD18 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_12:

LABEL_13:
    v12 = v0[8];
    v13 = sub_1B6AB8E40();
    v14 = *(v13 - 8);
    v15 = *(v14 + 56);
    v15(v12, 1, 1, v13);
    v16 = v0[6];
    sub_1B69804E0(v0[8], v16, sub_1B6987C8C);
    v17 = *(v14 + 48);
    v18 = v17(v16, 1, v13);
    v19 = v0[6];
    v20 = v0[7];
    if (v18 == 1)
    {
      v21 = v0[5];
      sub_1B6A8F2B8(0, v0[7]);
      if (v17(v19, 1, v13) != 1)
      {
        sub_1B6984064(v0[6], sub_1B6987C8C);
      }
    }

    else
    {
      (*(v14 + 32))(v0[7], v0[6], v13);
      v15(v20, 0, 1, v13);
    }

    v22 = v0[7];
    if (v17(v22, 1, v13) == 1)
    {
      sub_1B6984064(v22, sub_1B6987C8C);
      if (qword_1EDBCAA78 != -1)
      {
        swift_once();
      }

      v23 = sub_1B6AB8F90();
      __swift_project_value_buffer(v23, qword_1EDBCFDA8);
      v24 = sub_1B6AB8F80();
      v25 = sub_1B6AB98E0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1B697C000, v24, v25, "Unable to determine remote configuration user ID. Falling back to a default value.", v26, 2u);
        MEMORY[0x1B8C99550](v26, -1, -1);
      }

      if (qword_1EB95A9F8 != -1)
      {
        swift_once();
      }

      v27 = v0[8];
      v28 = v0[4];
      v29 = __swift_project_value_buffer(v13, qword_1EB95C560);
      (*(v14 + 16))(v28, v29, v13);
      sub_1B6984064(v27, sub_1B6987C8C);
    }

    else
    {
      v30 = v0[4];
      sub_1B6984064(v0[8], sub_1B6987C8C);
      (*(v14 + 32))(v30, v22, v13);
    }

    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];

    v34 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
      goto LABEL_2;
    }

    sub_1B69804E0(v6, (v0 + 3), sub_1B69E865C);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 40);

      if (v8)
      {
        break;
      }
    }

    ++v5;
    sub_1B6984064((v0 + 3), sub_1B69E865C);
    v6 += 8;
    if (v4 == v5)
    {
      goto LABEL_12;
    }
  }

  sub_1B6A90280((v0 + 3), (v0 + 2), sub_1B69E865C);
  v9 = swift_weakLoadStrong();
  v0[9] = v9;
  sub_1B6984064((v0 + 2), sub_1B69E865C);
  if (!v9)
  {
    goto LABEL_13;
  }

  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();

  v11 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8EE88, v11, v10);
}

uint64_t sub_1B6A8EE88()
{
  if (*(*(v0 + 72) + 40))
  {
    sub_1B6A81954(*(v0 + 64));
    v1 = 0;
    v2 = *(v0 + 72);
  }

  else
  {
    v1 = 1;
  }

  v3 = *(v0 + 64);

  v4 = sub_1B6AB8E40();
  (*(*(v4 - 8) + 56))(v3, v1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1B6A8EF54, 0, 0);
}

uint64_t sub_1B6A8EF54()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_1B69804E0(v0[8], v2, sub_1B6987C8C);
  v3 = sub_1B6AB8E40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3) == 1)
  {
    v6 = v0[6];
    v7 = v0[5];
    sub_1B6A8F2B8(v1, v0[7]);
    if (v5(v6, 1, v3) != 1)
    {
      sub_1B6984064(v0[6], sub_1B6987C8C);
    }
  }

  else
  {
    v8 = v0[7];
    (*(v4 + 32))(v8, v0[6], v3);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  v9 = v0[7];
  if (v5(v9, 1, v3) == 1)
  {
    sub_1B6984064(v9, sub_1B6987C8C);
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6AB8F90();
    __swift_project_value_buffer(v10, qword_1EDBCFDA8);
    v11 = sub_1B6AB8F80();
    v12 = sub_1B6AB98E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B697C000, v11, v12, "Unable to determine remote configuration user ID. Falling back to a default value.", v13, 2u);
      MEMORY[0x1B8C99550](v13, -1, -1);
    }

    if (qword_1EB95A9F8 != -1)
    {
      swift_once();
    }

    v14 = v0[8];
    v15 = v0[4];
    v16 = __swift_project_value_buffer(v3, qword_1EB95C560);
    (*(v4 + 16))(v15, v16, v3);

    sub_1B6984064(v14, sub_1B6987C8C);
  }

  else
  {
    v17 = v0[4];
    sub_1B6984064(v0[8], sub_1B6987C8C);

    (*(v4 + 32))(v17, v9, v3);
  }

  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B6A8F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionManager.SessionState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6987C8C(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  if (!a1)
  {
    v47 = sub_1B6AB8E40();
    v48 = *(*(v47 - 8) + 56);

    return v48(a2, 1, 1, v47);
  }

  v51 = v16;
  v19 = sub_1B6AB8E40();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v9;
  v21 = *(*(a1 + 24) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v21;
  v22 = *(v20 + 104);
  v61 = *MEMORY[0x1E69E8020];
  v59 = v22;
  v60 = v20 + 104;
  v22(v12);

  v23 = v21;
  v24 = sub_1B6AB9110();
  v25 = *(v20 + 8);
  v62 = v20 + 8;
  v58 = v25;
  v25(v12, v8);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    v63 = sub_1B6AB9E60();
    if (v63)
    {
      goto LABEL_5;
    }

LABEL_48:

    return sub_1B6A90280(v18, a2, sub_1B6987C8C);
  }

  v24 = *(a1 + 72);
  if (v24 >> 62)
  {
    goto LABEL_47;
  }

  v63 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_48;
  }

LABEL_5:
  v52 = v18;
  v53 = a1;
  v54 = a2;
  v64 = v24 & 0xC000000000000001;
  v57 = v24 & 0xFFFFFFFFFFFFFF8;

  v26 = 0;
  v27 = v63;
  v55 = v8;
  v56 = v4;
  while (v64)
  {
    MEMORY[0x1B8C98510](v26, v24);
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_42;
    }

LABEL_15:
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      goto LABEL_8;
    }

    v31 = Strong;
    v32 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v12 = v32;
    v59(v12, v61, v8);
    v33 = v32;
    LOBYTE(v32) = sub_1B6AB9110();
    v58(v12, v8);
    if ((v32 & 1) == 0)
    {
      goto LABEL_43;
    }

    v34 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B69804E0(v31 + v34, v7, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_1B6984064(v7, type metadata accessor for SessionManager.SessionState);
      }

      else
      {
      }

      goto LABEL_7;
    }

    v36 = *v7;
    v37 = *(*v7 + 32);
    v38 = *(*v7 + 40);
    if (v38)
    {
      if (v38 == 2)
      {

        v39 = v37;
        v40 = 2;
      }

      else if (v38 == 1)
      {

        v39 = v37;
        v40 = 1;
      }

      else
      {
        sub_1B6992E2C(*(*v7 + 32), *(*v7 + 40));

        sub_1B69C2E8C(v37, v38);
        v39 = v37;
        v40 = v38;
      }

      sub_1B69C2E8C(v39, v40);
      sub_1B69C2E8C(0, 0);
      goto LABEL_37;
    }

    sub_1B69C2E8C(*(*v7 + 32), 0);
    sub_1B69C2E8C(0, 0);
    v41 = sub_1B699696C(v36);
    if (!*(v41 + 16) || (v42 = sub_1B6993940(0x6174614472657355, 0xE800000000000000), (v43 & 1) == 0))
    {
LABEL_35:

      goto LABEL_36;
    }

    sub_1B698FE74(*(v41 + 56) + 32 * v42, v66);

    sub_1B697EFC4();
    if (swift_dynamicCast())
    {
      v44 = v65;
      if (!*(v65 + 16))
      {
        goto LABEL_35;
      }

      v45 = sub_1B6993940(0x444972657375, 0xE600000000000000);
      if ((v46 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_1B698FE74(*(v44 + 56) + 32 * v45, v66);

      if (swift_dynamicCast())
      {
        goto LABEL_45;
      }
    }

LABEL_36:

LABEL_37:
    v8 = v55;
LABEL_7:
    v27 = v63;
LABEL_8:
    ++v26;
    if (v28 == v27)
    {

      a2 = v54;
      v18 = v52;
      return sub_1B6A90280(v18, a2, sub_1B6987C8C);
    }
  }

  if (v26 >= *(v57 + 16))
  {
    goto LABEL_44;
  }

  v29 = *(v24 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_15;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:

  v50 = v51;
  sub_1B6AB8DC0();

  v18 = v52;
  sub_1B6984064(v52, sub_1B6987C8C);
  sub_1B6A90280(v50, v18, sub_1B6987C8C);
  a2 = v54;
  return sub_1B6A90280(v18, a2, sub_1B6987C8C);
}

uint64_t sub_1B6A8FA14()
{
  v0 = sub_1B6AB8E40();
  __swift_allocate_value_buffer(v0, qword_1EB95C560);
  __swift_project_value_buffer(v0, qword_1EB95C560);
  return sub_1B6AB8E30();
}

uint64_t sub_1B6A8FA60()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A8FA98(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B69F1038;

  return v5();
}

void *sub_1B6A8FB80(void *a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v1[9] = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v1[3] = a1;
  v7 = a1;
  v1[4] = dispatch_group_create();
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_1EDBCADE8;
  v1[13] = type metadata accessor for CrashDetector();
  v1[14] = &protocol witness table for CrashDetector;
  v1[10] = v8;
  v9 = qword_1EDBCAC70;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SummaryEventConfiguration(0);
  v11 = __swift_project_value_buffer(v10, qword_1EDBCA728);
  sub_1B69804E0(v11, v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v1[5] = 0;
  sub_1B6AB8E30();
  v12 = &v6[*(v3 + 20)];
  *v12 = sub_1B69A3378;
  *(v12 + 1) = 0;
  sub_1B6A90280(v6, v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDBCB4A0;
  v1[6] = qword_1EDBCB4A0;
  v14 = v13;
  return v1;
}

void *sub_1B6A8FDA0(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v3[3] = a1;
  v11 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v3[4] = v11;
  sub_1B6982544(a3, (v3 + 10));
  v12 = qword_1EDBCAC70;
  v13 = a1;
  v14 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for SummaryEventConfiguration(0);
  v16 = __swift_project_value_buffer(v15, qword_1EDBCA728);
  sub_1B69804E0(v16, v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v3[5] = 0;
  sub_1B6AB8E30();
  __swift_destroy_boxed_opaque_existential_1(a3);
  v17 = &v10[*(v7 + 20)];
  *v17 = sub_1B69A3378;
  *(v17 + 1) = 0;
  sub_1B6A90280(v10, v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v3[6] = a2;
  return v3;
}

void sub_1B6A8FF44()
{
  if (!qword_1EDBC9028[0])
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBC9028);
    }
  }
}

uint64_t sub_1B6A8FF9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1B6A8FFD8()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1B6A8C1C4(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B6A90280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A90304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69AD75C;

  return sub_1B6A8DE08(a1, v4, v5, v6);
}

uint64_t sub_1B6A903B8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B69D1460;

  return sub_1B6A8DEEC(a1, a2, v2);
}

uint64_t sub_1B6A90468()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B69D1460;

  return sub_1B6A8E268(v2, v3, v5, v4);
}

uint64_t sub_1B6A90528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E57C();
}

uint64_t sub_1B6A905B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B69D1460;

  return sub_1B6A8E620(v2, v3, v5);
}

uint64_t sub_1B6A90678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E708();
}

uint64_t sub_1B6A90708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E7AC();
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6A907D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B69AD75C;

  return sub_1B6A8FA98(v2);
}

void sub_1B6A90884()
{
  if (!qword_1EDBC8DE8)
  {
    sub_1B6A908EC();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8DE8);
    }
  }
}

void sub_1B6A908EC()
{
  if (!qword_1EDBC8E40)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1B6987B48(255, &qword_1EDBC8E38, sub_1B69E865C, MEMORY[0x1E69E62F8]);
    sub_1B6987B48(255, &qword_1EDBC8E30, sub_1B69E89FC, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC8E40);
    }
  }
}

void sub_1B6A909BC()
{
  if (!qword_1EB95C578)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C578);
    }
  }
}

uint64_t sub_1B6A90A7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a5;
  v15[1] = a4;
  sub_1B6A910F0(0, &qword_1EB95C590, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9109C();
  sub_1B6ABA2D0();
  v18 = 0;
  sub_1B6ABA000();
  if (!v5)
  {
    v17 = 1;
    sub_1B6ABA030();
    v16 = 2;
    sub_1B6ABA030();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B6A90C1C()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x66664F646E756F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B6A90C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A90D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A90CA0(uint64_t a1)
{
  v2 = sub_1B6A9109C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A90CDC(uint64_t a1)
{
  v2 = sub_1B6A9109C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A90D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6A90E84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1B6A90D68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F646E756F72 && a2 == 0xEF73657275676946)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B6A90E84(uint64_t *a1)
{
  sub_1B6A910F0(0, &qword_1EB95C580, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9109C();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v14 = 0;
    v9 = sub_1B6AB9F50();
    v13 = 1;
    sub_1B6AB9F80();
    v12 = 2;
    sub_1B6AB9F80();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1B6A9109C()
{
  result = qword_1EB95C588;
  if (!qword_1EB95C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C588);
  }

  return result;
}

void sub_1B6A910F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A9109C();
    v7 = a3(a1, &type metadata for SummaryEventDatabaseEntity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A91168()
{
  result = qword_1EB95C598;
  if (!qword_1EB95C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C598);
  }

  return result;
}

unint64_t sub_1B6A911C0()
{
  result = qword_1EB95C5A0;
  if (!qword_1EB95C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5A0);
  }

  return result;
}

unint64_t sub_1B6A91218()
{
  result = qword_1EB95C5A8;
  if (!qword_1EB95C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5A8);
  }

  return result;
}

uint64_t sub_1B6A912E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for StoredUserIDComponents();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6A91A18(a1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, v8, type metadata accessor for StoredUserIDComponents);
  v10 = a3(v9);
  sub_1B6A91D64(v8, type metadata accessor for RotationMode);
  return v10;
}

id sub_1B6A913B0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoredUserIDComponents();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698103C(0);
  v10 = v9[12];
  v11 = v9[16];
  v12 = v9[20];
  sub_1B6AB8E30();
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v8[v10], a1, v13);
  *&v8[v11] = 0;
  *&v8[v12] = 0;
  type metadata accessor for RotationMode();
  swift_storeEnumTagMultiPayload();
  *&v8[*(v5 + 28)] = xmmword_1B6AC5940;
  sub_1B6A91CFC(v8, v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, type metadata accessor for StoredUserIDComponents);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a1, v13);
  return v15;
}

id BridgedStoredUserIDComponents.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B6AB92B0();
  v6 = [a1 decodeInt64ForKey_];

  v7 = sub_1B6AB92B0();
  v8 = [a1 decodeInt64ForKey_];

  type metadata accessor for BridgedRotationMode();
  v9 = sub_1B6AB9AF0();
  if (v9)
  {
    v10 = v2 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents;
    v11 = v9;
    sub_1B6A91A18(v9 + OBJC_IVAR___AARotationMode_mode, v2 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, type metadata accessor for RotationMode);
    v12 = &v10[*(type metadata accessor for StoredUserIDComponents() + 20)];
    *v12 = v6;
    *(v12 + 1) = v8;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {

    v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

Swift::Void __swiftcall BridgedStoredUserIDComponents.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for RotationMode();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredUserIDComponents();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents;
  sub_1B6A91A18(v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, v11, type metadata accessor for StoredUserIDComponents);
  sub_1B6A91CFC(v11, v6, type metadata accessor for RotationMode);
  v13 = type metadata accessor for BridgedRotationMode();
  v14 = objc_allocWithZone(v13);
  sub_1B6A91A18(v6, v14 + OBJC_IVAR___AARotationMode_mode, type metadata accessor for RotationMode);
  v22.receiver = v14;
  v22.super_class = v13;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  sub_1B6A91D64(v6, type metadata accessor for RotationMode);
  v16 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = (v12 + *(v8 + 28));
  v18 = *v17;
  v19 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];

  v20 = v17[1];
  v21 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeInteger:v20 forKey:v21];
}

uint64_t sub_1B6A91A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id BridgedStoredUserIDComponents.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedStoredUserIDComponents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedStoredUserIDComponents()
{
  result = qword_1EB95C5B8;
  if (!qword_1EB95C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A91C40()
{
  result = type metadata accessor for StoredUserIDComponents();
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