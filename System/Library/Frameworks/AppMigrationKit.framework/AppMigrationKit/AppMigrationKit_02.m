uint64_t sub_29EADA330()
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 288);
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {
    v4 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73D48](sub_29EADAC28, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[38] = v5;
    *v5 = v3;
    v5[1] = sub_29EADA4EC;
    v6 = v3[30];
    v7 = *MEMORY[0x29EDCA608];

    return sub_29EAAF7C8();
  }
}

uint64_t sub_29EADA4EC()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_29EADB028;
  }

  else
  {
    v3 = sub_29EADA62C;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADA62C()
{
  v42 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  sub_29EB142FC();
  sub_29EB142EC();
  v7 = v6;
  v8 = *(v4 + 8);
  v8(v3, v5);
  v9 = 0.0;
  if (v7 > 0.0)
  {
    v9 = v7;
  }

  v10 = v9 * 1000.0;
  v11 = [*(v2 + 16) uncompressedBytes];
  v12 = *(v2 + 24);
  if (v12 == 1)
  {
    v13 = [*(*(v0 + 240) + 16) compressedBytes];
  }

  else
  {
    v13 = 0;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 1.84467441e19)
  {
    v40 = v13;
    v39 = v12 ^ 1;
    v14 = *(v0 + 240);
    v38 = [*(v14 + 16) fileCount];
    v37 = [*(v14 + 16) directoryCount];
    v36 = [*(v14 + 16) symlinkCount];
    if (qword_2A187A328 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v41 = v11;
  v15 = sub_29EB1454C();
  __swift_project_value_buffer(v15, qword_2A187AA80);
  v16 = sub_29EB1452C();
  v17 = sub_29EB14A4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_29EAA5000, v16, v17, "Completed exporting resources", v18, 2u);
    MEMORY[0x29EDA8150](v18, -1, -1);
  }

  v19 = *(v0 + 232);
  v35 = *(v0 + 240);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 128);
  v25 = *(v0 + 112);

  v26 = type metadata accessor for AppContentMetrics.XPCHelper();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v28 = 1;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = 2;
  *(v28 + 56) = 0u;
  *(v28 + 40) = 0u;
  *(v28 + 9) = v24;
  *(v28 + 10) = v38;
  *(v28 + 11) = v37;
  *(v28 + 12) = v36;
  *(v28 + 13) = v22;
  *(v28 + 14) = v41;
  v28[120] = 0;
  *(v28 + 16) = v40;
  v28[136] = v39;
  *(v28 + 18) = v10;
  *(v0 + 72) = v27;
  *(v0 + 80) = v26;
  v29 = objc_msgSendSuper2((v0 + 72), sel_init);
  v23(v29, 0);

  v8(v19, v20);

  sub_29EADB428(v25);
  v31 = *(v0 + 224);
  v30 = *(v0 + 232);

  v32 = *(v0 + 8);
  v33 = *MEMORY[0x29EDCA608];

  return v32();
}

uint64_t sub_29EADA9A0()
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed to export resources %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = *(v0 + 248);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);

  v14 = type metadata accessor for AppContentMetrics.XPCHelper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v16 = 1;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = 2;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 15) = 2;
  *(v16 + 16) = 0;
  *(v16 + 17) = 0;
  *(v16 + 18) = 0;
  *(v0 + 40) = v15;
  *(v0 + 48) = v14;
  v17 = objc_msgSendSuper2((v0 + 40), sel_init);
  v18 = v2;
  v13(v17, v2);

  if (v11)
  {
    v19 = *(v0 + 240);
  }

  sub_29EADB428(*(v0 + 112));
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);

  v22 = *(v0 + 8);
  v23 = *MEMORY[0x29EDCA608];

  return v22();
}

uint64_t sub_29EADAC28()
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 296);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 208);

  sub_29EB142FC();
  sub_29EB142EC();
  v16 = v15;
  v17 = *(v13 + 8);
  v17(v12, v14);
  v18 = 0.0;
  if (v16 > 0.0)
  {
    v18 = v16;
  }

  v19 = v18 * 1000.0;
  v20 = [*(v11 + 16) uncompressedBytes];
  v21 = *(v11 + 24);
  if (v21 == 1)
  {
    v22 = [*(*(v0 + 240) + 16) compressedBytes];
  }

  else
  {
    v22 = 0;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 <= -1.0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v19 >= 1.84467441e19)
  {
    goto LABEL_18;
  }

  v43 = v20;
  v23 = *(v0 + 240);
  v24 = *(v0 + 208);
  v46 = v24;
  v47 = *(v0 + 232);
  v25 = *(v0 + 192);
  v44 = v25;
  v41 = *(v0 + 184);
  v42 = v22;
  v45 = v17;
  v26 = *(v0 + 128);
  v48 = *(v0 + 112);
  v27 = [*(v23 + 16) fileCount];
  v28 = [*(v23 + 16) directoryCount];
  v29 = [*(v23 + 16) symlinkCount];
  v30 = v21 ^ 1;
  v31 = type metadata accessor for AppContentMetrics.XPCHelper();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v33 = 1;
  *(v33 + 1) = 0;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = 2;
  *(v33 + 56) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 9) = v26;
  *(v33 + 10) = v27;
  *(v33 + 11) = v28;
  *(v33 + 12) = v29;
  *(v33 + 13) = v41;
  *(v33 + 14) = v43;
  v33[120] = 0;
  *(v33 + 16) = v42;
  v33[136] = v30;
  *(v33 + 18) = v19;
  *(v0 + 56) = v32;
  *(v0 + 64) = v31;
  v34 = objc_msgSendSuper2((v0 + 56), sel_init);
  v35 = v1;
  v44(v34, v1);

  v45(v47, v46);

  sub_29EADB428(v48);
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);

  v38 = *(v0 + 8);
  v39 = *MEMORY[0x29EDCA608];

  return v38();
}

uint64_t sub_29EADB028()
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 312);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 208);

  sub_29EB142FC();
  sub_29EB142EC();
  v16 = v15;
  v17 = *(v13 + 8);
  v17(v12, v14);
  v18 = 0.0;
  if (v16 > 0.0)
  {
    v18 = v16;
  }

  v19 = v18 * 1000.0;
  v20 = [*(v11 + 16) uncompressedBytes];
  v21 = *(v11 + 24);
  if (v21 == 1)
  {
    v22 = [*(*(v0 + 240) + 16) compressedBytes];
  }

  else
  {
    v22 = 0;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 <= -1.0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v19 >= 1.84467441e19)
  {
    goto LABEL_18;
  }

  v43 = v20;
  v23 = *(v0 + 240);
  v24 = *(v0 + 208);
  v46 = v24;
  v47 = *(v0 + 232);
  v25 = *(v0 + 192);
  v44 = v25;
  v41 = *(v0 + 184);
  v42 = v22;
  v45 = v17;
  v26 = *(v0 + 128);
  v48 = *(v0 + 112);
  v27 = [*(v23 + 16) fileCount];
  v28 = [*(v23 + 16) directoryCount];
  v29 = [*(v23 + 16) symlinkCount];
  v30 = v21 ^ 1;
  v31 = type metadata accessor for AppContentMetrics.XPCHelper();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v33 = 1;
  *(v33 + 1) = 0;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = 2;
  *(v33 + 56) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 9) = v26;
  *(v33 + 10) = v27;
  *(v33 + 11) = v28;
  *(v33 + 12) = v29;
  *(v33 + 13) = v41;
  *(v33 + 14) = v43;
  v33[120] = 0;
  *(v33 + 16) = v42;
  v33[136] = v30;
  *(v33 + 18) = v19;
  *(v0 + 56) = v32;
  *(v0 + 64) = v31;
  v34 = objc_msgSendSuper2((v0 + 56), sel_init);
  v35 = v1;
  v44(v34, v1);

  v45(v47, v46);

  sub_29EADB428(v48);
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);

  v38 = *(v0 + 8);
  v39 = *MEMORY[0x29EDCA608];

  return v38();
}

void sub_29EADB428(void *a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v8[0];
  if (v1)
  {
    v3 = *MEMORY[0x29EDCA608];

    v4 = v2;
  }

  else
  {
    v5 = v8[0];
    v6 = sub_29EB1417C();

    swift_willThrow();
    v7 = *MEMORY[0x29EDCA608];
  }
}

id sub_29EADB508(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_29EAD9254(v16, v17, a5, a6, a7, sub_29EAE48E4, v15);

  return v19;
}

id sub_29EADB5F4(uint64_t *a1, int a2, void *a3, void *aBlock)
{
  v6 = *a1;
  v7 = *MEMORY[0x29EDCA1E8];
  v8 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v8;
  v9 = *((v7 & v6) + 0x50);
  v10 = *((v7 & v6) + 0x58);
  v11 = a3;
  v12 = a1;
  v13 = sub_29EAE2A28(sub_29EAE49AC);

  return v13;
}

void sub_29EADB6E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_29EB1416C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *sub_29EADB748(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void, void *), uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v74 = a4;
  v78 = a1;
  v98 = *MEMORY[0x29EDCA608];
  v11 = *v6;
  v12 = *MEMORY[0x29EDCA1E8];
  v79 = *MEMORY[0x29EDCA1E8] & v11;
  v13 = sub_29EB13FFC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v82 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29EB1400C();
  v83 = *(v84 - 8);
  v16 = v83[8];
  MEMORY[0x2A1C7C4A8](v84);
  v81 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29EB1422C();
  v73 = *(v77 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v77);
  v75 = v19;
  v76 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v85 = &v71 - v23;
  v24 = *((v12 & v11) + 0x50);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v28 = &v71 - v27;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v29 = sub_29EB1454C();
  v80 = __swift_project_value_buffer(v29, qword_2A187AA80);
  v30 = sub_29EB1452C();
  v31 = sub_29EB14A4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = a2;
    v33 = v7;
    v34 = a3;
    v35 = v24;
    v36 = a6;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v30, v31, "Starting to import serialized data", v37, 2u);
    v38 = v37;
    a6 = v36;
    v24 = v35;
    a3 = v34;
    v7 = v33;
    a2 = v32;
    MEMORY[0x29EDA8150](v38, -1, -1);
  }

  (*(v25 + 16))(v28, v7 + *((*MEMORY[0x29EDCA1E8] & *v7) + 0x68), v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&v93, v92);
    v39 = a3 >> 62;
    v72 = a6;
    v71 = v24;
    if ((a3 >> 62) > 1)
    {
      if (v39 != 2)
      {
        *(&v93 + 6) = 0;
        *&v93 = 0;
        goto LABEL_22;
      }

      v47 = *(a2 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v47, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v39)
    {
      *&v93 = a2;
      WORD4(v93) = a3;
      BYTE10(v93) = BYTE2(a3);
      BYTE11(v93) = BYTE3(a3);
      BYTE12(v93) = BYTE4(a3);
      BYTE13(v93) = BYTE5(a3);
LABEL_22:
      v84 = sandbox_extension_consume();
      v48 = *(v74 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 48);
      v95 = *(v74 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
      v96 = v48;
      v97 = *(v74 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 64);
      v49 = *(v74 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 16);
      v93 = *(v74 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
      v94 = v49;
      v50 = objc_allocWithZone(MEMORY[0x29EDBA0B8]);
      sub_29EACD6D0(&v93, &aBlock);
      v83 = [v50 init];
      v51 = sub_29EB1491C();
      (*(*(v51 - 8) + 56))(v85, 1, 1, v51);
      v52 = v73;
      v53 = v76;
      v54 = v77;
      (*(v73 + 16))(v76, v78, v77);
      sub_29EAAD474(v92, &aBlock);
      v55 = (*(v52 + 80) + 56) & ~*(v52 + 80);
      v56 = (v75 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v71;
      v60 = v84;
      *(v59 + 5) = *(v79 + 88);
      *(v59 + 6) = v60;
      (*(v52 + 32))(&v59[v55], v53, v54);
      *&v59[v56] = v7;
      sub_29EAADE9C(&aBlock, &v59[v57]);
      v61 = &v59[v58];
      v62 = v96;
      *(v61 + 2) = v95;
      *(v61 + 3) = v62;
      *(v61 + 8) = v97;
      v63 = v94;
      *v61 = v93;
      *(v61 + 1) = v63;
      v64 = &v59[(v58 + 79) & 0xFFFFFFFFFFFFFFF8];
      v65 = v72;
      *v64 = v86;
      *(v64 + 1) = v65;
      v66 = v7;

      v67 = sub_29EAD3968(0, 0, v85, &unk_29EB18100, v59);
      v90 = sub_29EAE4128;
      v91 = v67;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      v88 = sub_29EABE4EC;
      v89 = &block_descriptor_44;
      v68 = _Block_copy(&aBlock);

      v69 = v83;
      [v83 setCancellationHandler_];
      _Block_release(v68);

      __swift_destroy_boxed_opaque_existential_1(v92);
      result = v69;
      goto LABEL_23;
    }

    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(a2, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  *&v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_29EABCCEC(&v93, &qword_2A187AB20, &qword_29EB18010);
  v40 = sub_29EB1452C();
  v41 = sub_29EB14A5C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_29EAA5000, v40, v41, "App Extension doesn't support serialized data importing", v42, 2u);
    MEMORY[0x29EDA8150](v42, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
  v43 = v81;
  v44 = v84;
  sub_29EB1415C();
  v45 = sub_29EB13F9C();
  (v83[1])(v43, v44);
  v86(0, 0, v45);

  result = 0;
LABEL_23:
  v70 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EADC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v10;
  v8[44] = v11;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  return MEMORY[0x2A1C73D48](sub_29EADC138, 0, 0);
}

uint64_t sub_29EADC138()
{
  sub_29EAE4A18(v0[39], 1, v0 + 35);
  v0[45] = v0[35];
  sub_29EB148FC();
  v0[46] = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADC39C, v2, v1);
}

uint64_t sub_29EADC39C()
{
  v1 = v0[46];
  v2 = v0[40];

  v0[47] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EADC43C, 0, 0);
}

uint64_t sub_29EADC43C()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 360);

    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = sub_29EADC884;
    v3 = *(v0 + 360);

    return sub_29EAD0520(3, v3);
  }

  else
  {
    sub_29EAAD474(*(v0 + 328), v0 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB80, &qword_29EB18108);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 360);
    v7 = *(v0 + 336);
    if (v5)
    {
      sub_29EAADE9C((v0 + 240), v0 + 160);
      v8 = *(v0 + 184);
      v9 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v8);
      *(v0 + 296) = v6;
      *(v0 + 88) = *v7;
      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v12 = *(v7 + 64);
      *(v0 + 104) = *(v7 + 16);
      *(v0 + 152) = v12;
      *(v0 + 136) = v10;
      *(v0 + 120) = v11;
      v13 = *(v9 + 16);
      v34 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      *(v0 + 416) = v15;
      v16 = type metadata accessor for SerializedDataReader(0);
      v17 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader);
      *v15 = v0;
      v15[1] = sub_29EADCE60;
      v18 = v0 + 296;
      v19 = v0 + 88;
      v20 = v16;
      v21 = v8;
      v22 = v9;
      v23 = v34;
    }

    else
    {
      v24 = *(v0 + 328);
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0;
      sub_29EABCCEC(v0 + 240, &qword_2A187AB88, &qword_29EB18110);
      v25 = v24[3];
      v26 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *(v0 + 288) = v6;
      *(v0 + 16) = *v7;
      v28 = *(v7 + 32);
      v27 = *(v7 + 48);
      v29 = *(v7 + 16);
      *(v0 + 80) = *(v7 + 64);
      *(v0 + 48) = v28;
      *(v0 + 64) = v27;
      *(v0 + 32) = v29;
      v30 = *(v26 + 16);
      v35 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 400) = v32;
      v33 = type metadata accessor for SerializedDataReader(0);
      v17 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader);
      *v32 = v0;
      v32[1] = sub_29EADCD4C;
      v18 = v0 + 288;
      v19 = v0 + 16;
      v20 = v33;
      v21 = v25;
      v22 = v26;
      v23 = v35;
    }

    return v23(v18, v19, v20, v17, v21, v22);
  }
}

uint64_t sub_29EADC884()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_29EADD250;
  }

  else
  {
    v3 = sub_29EADC998;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADC998()
{
  v1 = *(v0 + 376);

  sub_29EAAD474(*(v0 + 328), v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB80, &qword_29EB18108);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);
  if (v2)
  {
    sub_29EAADE9C((v0 + 240), v0 + 160);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v5);
    *(v0 + 296) = v3;
    *(v0 + 88) = *v4;
    v8 = *(v4 + 32);
    v7 = *(v4 + 48);
    v9 = *(v4 + 64);
    *(v0 + 104) = *(v4 + 16);
    *(v0 + 152) = v9;
    *(v0 + 136) = v7;
    *(v0 + 120) = v8;
    v10 = *(v6 + 16);
    v32 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 416) = v12;
    v13 = type metadata accessor for SerializedDataReader(0);
    v14 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader);
    *v12 = v0;
    v12[1] = sub_29EADCE60;
    v15 = v0 + 296;
    v16 = v0 + 88;
    v17 = v13;
    v18 = v5;
    v19 = v6;
    v20 = v32;
  }

  else
  {
    v21 = *(v0 + 328);
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0;
    sub_29EABCCEC(v0 + 240, &qword_2A187AB88, &qword_29EB18110);
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    *(v0 + 288) = v3;
    *(v0 + 16) = *v4;
    v25 = *(v4 + 32);
    v24 = *(v4 + 48);
    v26 = *(v4 + 16);
    *(v0 + 80) = *(v4 + 64);
    *(v0 + 48) = v25;
    *(v0 + 64) = v24;
    *(v0 + 32) = v26;
    v27 = *(v23 + 16);
    v33 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    *(v0 + 400) = v29;
    v30 = type metadata accessor for SerializedDataReader(0);
    v14 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader);
    *v29 = v0;
    v29[1] = sub_29EADCD4C;
    v15 = v0 + 288;
    v16 = v0 + 16;
    v17 = v30;
    v18 = v22;
    v19 = v23;
    v20 = v33;
  }

  return v20(v15, v16, v17, v14, v18, v19);
}

uint64_t sub_29EADCD4C()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_29EADD60C;
  }

  else
  {
    v3 = sub_29EADD0FC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADCE60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 416);
  v8 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v9 = sub_29EADD430;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v9 = sub_29EADCF94;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EADCF94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v2 = v0[54];
  v1 = v0[55];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A4C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Completed importing serialized data", v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v7 = v0[44];
  v8 = v0[45];
  v9 = v0[43];
  v10 = v0[38];

  v9(v1, v2, 0);

  if (v10 >= 1)
  {
    v11 = v0[38];
    sandbox_extension_release();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EADD0FC()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing serialized data", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v8 = v0[38];

  v7(-1, -1, 0);

  if (v8 >= 1)
  {
    v9 = v0[38];
    sandbox_extension_release();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_29EADD250()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[38];

  v4 = v0[49];
  if (v3 > 0)
  {
    v5 = v0[38];
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v6 = sub_29EB1454C();
  __swift_project_value_buffer(v6, qword_2A187AA80);
  v7 = v4;
  v8 = sub_29EB1452C();
  v9 = sub_29EB14A5C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_29EAA5000, v8, v9, "Failed importing serialized data %@", v10, 0xCu);
    sub_29EABCCEC(v11, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v15 = v0[43];
  v14 = v0[44];

  v16 = v4;
  v15(0, 0, v4);

  v17 = v0[1];

  return v17();
}

uint64_t sub_29EADD430()
{
  v1 = v0[45];
  v2 = v0[38];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v3 = v0[53];
  if (v2 > 0)
  {
    v4 = v0[38];
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v5 = sub_29EB1454C();
  __swift_project_value_buffer(v5, qword_2A187AA80);
  v6 = v3;
  v7 = sub_29EB1452C();
  v8 = sub_29EB14A5C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Failed importing serialized data %@", v9, 0xCu);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v14 = v0[43];
  v13 = v0[44];

  v15 = v3;
  v14(0, 0, v3);

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EADD60C()
{
  v1 = v0[45];
  v2 = v0[38];

  v3 = v0[51];
  if (v2 > 0)
  {
    v4 = v0[38];
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v5 = sub_29EB1454C();
  __swift_project_value_buffer(v5, qword_2A187AA80);
  v6 = v3;
  v7 = sub_29EB1452C();
  v8 = sub_29EB14A5C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Failed importing serialized data %@", v9, 0xCu);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v14 = v0[43];
  v13 = v0[44];

  v15 = v3;
  v14(0, 0, v3);

  v16 = v0[1];

  return v16();
}

void sub_29EADD830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_29EB1416C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

char *sub_29EADD8B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void, void *), uint64_t a6)
{
  v7 = v6;
  v86 = a6;
  v85 = a5;
  v76 = a4;
  v73 = a2;
  v80 = a1;
  v99 = *MEMORY[0x29EDCA608];
  v9 = *v6;
  v10 = *MEMORY[0x29EDCA1E8];
  v81 = *MEMORY[0x29EDCA1E8] & v9;
  v11 = sub_29EB13FFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EB1400C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29EB1422C();
  v77 = *(v78 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v78);
  v75 = v19;
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v79 = &v72 - v23;
  v24 = *((v10 & v9) + 0x50);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v28 = &v72 - v27;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v29 = sub_29EB1454C();
  v82 = __swift_project_value_buffer(v29, qword_2A187AA80);
  v30 = sub_29EB1452C();
  v31 = sub_29EB14A4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v7;
    v33 = v15;
    v34 = v14;
    v35 = a3;
    v36 = v24;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v30, v31, "Starting to import resources", v37, 2u);
    v38 = v37;
    v24 = v36;
    a3 = v35;
    v14 = v34;
    v15 = v33;
    v7 = v32;
    MEMORY[0x29EDA8150](v38, -1, -1);
  }

  (*(v25 + 16))(v28, v7 + *((*MEMORY[0x29EDCA1E8] & *v7) + 0x68), v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&v95, v92);
    v39 = a3 >> 62;
    v72 = v24;
    if ((a3 >> 62) > 1)
    {
      if (v39 != 2)
      {
        *(&v95 + 6) = 0;
        *&v95 = 0;
        goto LABEL_22;
      }

      v46 = *(v73 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v46, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v39)
    {
      *&v95 = v73;
      WORD4(v95) = a3;
      BYTE10(v95) = BYTE2(a3);
      BYTE11(v95) = BYTE3(a3);
      BYTE12(v95) = BYTE4(a3);
      BYTE13(v95) = BYTE5(a3);
LABEL_22:
      v83 = sandbox_extension_consume();
      v48 = v93;
      v49 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v84 = (*(v49 + 24))(v48, v49);
      v50 = *(v76 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 16);
      v95 = *(v76 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest);
      v96 = v50;
      v51 = *(v76 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 48);
      v97 = *(v76 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 32);
      v98 = v51;
      v52 = sub_29EB1491C();
      v53 = v79;
      (*(*(v52 - 8) + 56))(v79, 1, 1, v52);
      v54 = v77;
      v55 = v74;
      v56 = v78;
      (*(v77 + 16))(v74, v80, v78);
      sub_29EAAD474(v92, &aBlock);
      v57 = (*(v54 + 80) + 64) & ~*(v54 + 80);
      v58 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      *(v60 + 4) = v72;
      v61 = v83;
      *(v60 + 5) = *(v81 + 88);
      *(v60 + 6) = v61;
      *(v60 + 7) = v7;
      (*(v54 + 32))(&v60[v57], v55, v56);
      sub_29EAADE9C(&aBlock, &v60[v58]);
      v62 = &v60[v59];
      v63 = v96;
      *v62 = v95;
      *(v62 + 1) = v63;
      v64 = v98;
      *(v62 + 2) = v97;
      *(v62 + 3) = v64;
      v65 = &v60[(v59 + 71) & 0xFFFFFFFFFFFFFFF8];
      v66 = v86;
      *v65 = v85;
      *(v65 + 1) = v66;
      sub_29EACD8F4(&v95, &aBlock);
      v67 = v7;

      v68 = sub_29EAD3968(0, 0, v53, &unk_29EB180D0, v60);
      v90 = sub_29EAE3E60;
      v91 = v68;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      v88 = sub_29EABE4EC;
      v89 = &block_descriptor_31;
      v69 = _Block_copy(&aBlock);

      v70 = v84;
      [v84 setCancellationHandler_];
      _Block_release(v69);

      __swift_destroy_boxed_opaque_existential_1(v92);
      result = v70;
      goto LABEL_23;
    }

    v47 = v73;
    if (v73 > v73 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(v47, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  *&v97 = 0;
  v95 = 0u;
  v96 = 0u;
  sub_29EABCCEC(&v95, &qword_2A187AB60, &qword_29EB180C0);
  v40 = sub_29EB1452C();
  v41 = sub_29EB14A5C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_29EAA5000, v40, v41, "App Extension doesn't support resources importing", v42, 2u);
    MEMORY[0x29EDA8150](v42, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
  v43 = v83;
  sub_29EB1415C();
  v44 = sub_29EB13F9C();
  (*(v15 + 8))(v43, v14);
  v85(0, 0, v44);

  result = 0;
LABEL_23:
  v71 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EADE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v14;
  v8[39] = v15;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = sub_29EB1422C();
  v8[40] = v9;
  v10 = *(v9 - 8);
  v8[41] = v10;
  v11 = *(v10 + 64) + 15;
  v8[42] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EADE340, 0, 0);
}

uint64_t sub_29EADE340()
{
  sub_29EB148FC();
  *(v0 + 344) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADE3D4, v2, v1);
}

uint64_t sub_29EADE3D4()
{
  v1 = v0[43];
  v2 = v0[34];

  v0[44] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EADE474, 0, 0);
}

uint64_t sub_29EADE474()
{
  if (*(v0 + 352))
  {
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 280), *(v0 + 320));
    v1 = swift_task_alloc();
    *(v0 + 360) = v1;
    *v1 = v0;
    v1[1] = sub_29EADE808;
    v2 = *(v0 + 336);

    return (sub_29EAD1160)(1, v2);
  }

  else
  {
    sub_29EAAD474(*(v0 + 288), v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB68, &qword_29EB180D8);
    v4 = swift_dynamicCast();
    v5 = *(v0 + 296);
    if (v4)
    {
      sub_29EAADE9C((v0 + 224), v0 + 144);
      v6 = *(v0 + 168);
      v7 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), v6);
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[3];
      *(v0 + 112) = v5[2];
      *(v0 + 128) = v10;
      *(v0 + 80) = v8;
      *(v0 + 96) = v9;
      v11 = *(v7 + 16);
      v28 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 392) = v13;
      *v13 = v0;
      v13[1] = sub_29EADED24;
      v14 = v0 + 80;
      v15 = *(v0 + 280);
      v16 = v6;
      v17 = v7;
      v18 = v28;
    }

    else
    {
      v19 = *(v0 + 288);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      sub_29EABCCEC(v0 + 224, &qword_2A187AB70, &qword_29EB180E0);
      v20 = v19[3];
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v22 = *v5;
      v23 = v5[1];
      v24 = v5[3];
      *(v0 + 48) = v5[2];
      *(v0 + 64) = v24;
      *(v0 + 16) = v22;
      *(v0 + 32) = v23;
      v25 = *(v21 + 16);
      v29 = (v25 + *v25);
      v26 = v25[1];
      v27 = swift_task_alloc();
      *(v0 + 376) = v27;
      *v27 = v0;
      v27[1] = sub_29EADEC10;
      v14 = v0 + 16;
      v15 = *(v0 + 280);
      v16 = v20;
      v17 = v21;
      v18 = v29;
    }

    return v18(v15, v14, v16, v17);
  }
}

uint64_t sub_29EADE808()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_29EADF0FC;
  }

  else
  {
    v3 = sub_29EADE91C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADE91C()
{
  v1 = *(v0 + 352);

  sub_29EAAD474(*(v0 + 288), v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB68, &qword_29EB180D8);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 296);
  if (v2)
  {
    sub_29EAADE9C((v0 + 224), v0 + 144);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v4);
    v6 = *v3;
    v7 = v3[1];
    v8 = v3[3];
    *(v0 + 112) = v3[2];
    *(v0 + 128) = v8;
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    v9 = *(v5 + 16);
    v27 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 392) = v11;
    *v11 = v0;
    v11[1] = sub_29EADED24;
    v12 = v0 + 80;
    v13 = *(v0 + 280);
    v14 = v4;
    v15 = v5;
    v16 = v27;
  }

  else
  {
    v17 = *(v0 + 288);
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0;
    sub_29EABCCEC(v0 + 224, &qword_2A187AB70, &qword_29EB180E0);
    v18 = v17[3];
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v20 = *v3;
    v21 = v3[1];
    v22 = v3[3];
    *(v0 + 48) = v3[2];
    *(v0 + 64) = v22;
    *(v0 + 16) = v20;
    *(v0 + 32) = v21;
    v23 = *(v19 + 16);
    v28 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 376) = v25;
    *v25 = v0;
    v25[1] = sub_29EADEC10;
    v12 = v0 + 16;
    v13 = *(v0 + 280);
    v14 = v18;
    v15 = v19;
    v16 = v28;
  }

  return v16(v13, v12, v14, v15);
}

uint64_t sub_29EADEC10()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_29EADF4B4;
  }

  else
  {
    v3 = sub_29EADEFB4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADED24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 392);
  v8 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v9 = sub_29EADF2D8;
  }

  else
  {
    *(v6 + 408) = a2;
    *(v6 + 416) = a1;
    v9 = sub_29EADEE58;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EADEE58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[51];
  v1 = v0[52];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A4C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Completed importing resources", v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[33];

  v8(v1, v2, 0);
  if (v9 >= 1)
  {
    v10 = v0[33];
    sandbox_extension_release();
  }

  v11 = v0[42];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EADEFB4()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing resources", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[33];

  v5(-1, -1, 0);
  if (v7 >= 1)
  {
    v8 = v0[33];
    sandbox_extension_release();
  }

  v9 = v0[42];

  v10 = v0[1];

  return v10();
}

uint64_t sub_29EADF0FC()
{
  v1 = v0[44];
  v2 = v0[33];

  if (v2 > 0)
  {
    v3 = v0[33];
    sandbox_extension_release();
  }

  v4 = v0[46];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v5 = sub_29EB1454C();
  __swift_project_value_buffer(v5, qword_2A187AA80);
  v6 = v4;
  v7 = sub_29EB1452C();
  v8 = sub_29EB14A5C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Failed importing resources %@", v9, 0xCu);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v14 = v0[38];
  v13 = v0[39];

  v15 = v4;
  v14(0, 0, v4);

  v16 = v0[42];

  v17 = v0[1];

  return v17();
}

uint64_t sub_29EADF2D8()
{
  v1 = v0[33];
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  if (v1 > 0)
  {
    v2 = v0[33];
    sandbox_extension_release();
  }

  v3 = v0[50];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = v3;
  v6 = sub_29EB1452C();
  v7 = sub_29EB14A5C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_29EAA5000, v6, v7, "Failed importing resources %@", v8, 0xCu);
    sub_29EABCCEC(v9, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v13 = v0[38];
  v12 = v0[39];

  v14 = v3;
  v13(0, 0, v3);

  v15 = v0[42];

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EADF4B4()
{
  if (v0[33] > 0)
  {
    sandbox_extension_release();
  }

  v1 = v0[48];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v11 = v0[38];
  v10 = v0[39];

  v12 = v1;
  v11(0, 0, v1);

  v13 = v0[42];

  v14 = v0[1];

  return v14();
}

id sub_29EADF6D4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, uint64_t, unint64_t, id, uint64_t, uint64_t))
{
  v28 = a9;
  v29 = sub_29EB1422C();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a6);
  sub_29EB141DC();
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v22 = sub_29EB142CC();
  v24 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  v26 = v28(v17, v22, v24, v20, a8, v25);

  sub_29EAAD010(v22, v24);

  (*(v14 + 8))(v17, v29);

  return v26;
}

uint64_t sub_29EADF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v10;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29EADF8B4, 0, 0);
}

uint64_t sub_29EADF8B4()
{
  sub_29EB148FC();
  *(v0 + 56) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADF948, v2, v1);
}

uint64_t sub_29EADF948()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73D48](sub_29EADF9B0, 0, 0);
}

uint64_t sub_29EADF9B0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_29EADFADC;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_29EADFADC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_29EADFD28;
  }

  else
  {
    v3 = sub_29EADFBF0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADFBF0()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing staged dataclass resources", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];

  v5(0);
  if (v7 >= 1)
  {
    v8 = v0[2];
    sandbox_extension_release();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EADFD28()
{
  if (v0[2] >= 1)
  {
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing resources %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[9];
  v13 = v0[5];
  v12 = v0[6];

  v14 = v11;
  v13(v11);

  v15 = v0[1];

  return v15();
}

id sub_29EADFEF0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, const void *a6)
{
  v9 = sub_29EB1422C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  sub_29EB141DC();
  v15 = a4;
  v16 = a1;
  v17 = sub_29EB142CC();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v21 = sub_29EAE2C84(v13, v17, v19, sub_29EAE49AC, v20);

  sub_29EAAD010(v17, v19);

  (*(v10 + 8))(v13, v9);

  return v21;
}

id sub_29EAE007C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = *MEMORY[0x29EDCA1E8];
  v12 = sub_29EB13FFC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB1400C();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v59 = &v57 - v21;
  v22 = *((v11 & v10) + 0x50);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v26 = &v57 - v25;
  v27 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 48);
  v70 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
  v71 = v27;
  v28 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 16);
  v29 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
  v68 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v69 = v28;
  v72 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 64);
  v73 = v70;
  *v63 = v29;
  sub_29EACD6D0(&v68, &aBlock);
  sub_29EAE35C4(&v73, &aBlock);
  LOBYTE(v10) = sub_29EAE0780(v63, a1, a3, a4);

  if (v10)
  {
    sub_29EAE3620(&v68);
  }

  else
  {
    v58 = v15;
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v30 = sub_29EB1454C();
    v57 = __swift_project_value_buffer(v30, qword_2A187AA80);
    v31 = sub_29EB1452C();
    v32 = sub_29EB14A4C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a1;
      v34 = a3;
      v35 = a4;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_29EAA5000, v31, v32, "Starting to import serialized data", v36, 2u);
      v37 = v36;
      a4 = v35;
      a3 = v34;
      a1 = v33;
      MEMORY[0x29EDA8150](v37, -1, -1);
    }

    (*(v23 + 16))(v26, &v5[*((*MEMORY[0x29EDCA1E8] & *v5) + 0x68)], v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
    v38 = swift_dynamicCast();
    v39 = v58;
    if (v38)
    {
      sub_29EAADE9C(&aBlock, v63);
      v40 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
      v41 = sub_29EB1491C();
      v42 = v59;
      (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
      sub_29EAAD474(v63, &aBlock);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v5;
      *(v43 + 40) = a1;
      sub_29EAADE9C(&aBlock, v43 + 48);
      v44 = v68;
      *(v43 + 104) = v69;
      v45 = v71;
      *(v43 + 120) = v70;
      *(v43 + 136) = v45;
      v46 = v72;
      *(v43 + 88) = v44;
      *(v43 + 152) = v46;
      *(v43 + 160) = a3;
      *(v43 + 168) = a4;
      v47 = v5;
      v48 = a1;

      v49 = sub_29EAD3968(0, 0, v42, &unk_29EB18020, v43);
      v66 = sub_29EAE4974;
      v67 = v49;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v65 = sub_29EABE4EC;
      *(&v65 + 1) = &block_descriptor_5;
      v50 = _Block_copy(&aBlock);

      [v40 setCancellationHandler_];
      _Block_release(v50);

      __swift_destroy_boxed_opaque_existential_1(v63);
      return v40;
    }

    sub_29EAE3620(&v68);
    aBlock = 0u;
    v65 = 0u;
    v66 = 0;
    sub_29EABCCEC(&aBlock, &qword_2A187AB20, &qword_29EB18010);
    v52 = sub_29EB1452C();
    v53 = sub_29EB14A5C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_29EAA5000, v52, v53, "App Extension doesn't support serialized data importing", v54, 2u);
      MEMORY[0x29EDA8150](v54, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
    v55 = v60;
    sub_29EB1415C();
    v56 = sub_29EB13F9C();
    (*(v62 + 8))(v55, v39);
    a3(v56);
  }

  return 0;
}

uint64_t sub_29EAE0780(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = a1[1];
  result = os_variant_has_internal_content();
  if (result)
  {
    if (v13 == 0x6F697463656A6E49 && v14 == 0xE90000000000006ELL || (sub_29EB14EBC() & 1) != 0)
    {
      v16 = sub_29EB1491C();
      (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
      sub_29EB148FC();
      v17 = v4;
      v18 = a2;

      v19 = sub_29EB148EC();
      v20 = swift_allocObject();
      v21 = MEMORY[0x29EDCA390];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v17;
      v20[5] = v18;
      v20[6] = a3;
      v20[7] = a4;
      sub_29EAD3968(0, 0, v12, &unk_29EB18098, v20);

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EAE093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v14;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v9 = sub_29EB14A0C();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAE0A18, 0, 0);
}

uint64_t sub_29EAE0A18()
{
  sub_29EB148FC();
  *(v0 + 168) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAE0AAC, v2, v1);
}

uint64_t sub_29EAE0AAC()
{
  v1 = v0[21];
  v2 = v0[11];

  v0[22] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAE0B4C, 0, 0);
}

uint64_t sub_29EAE0B4C()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 96);
    sub_29EB14A1C();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_29EAE0D9C;
    v4 = *(v0 + 160);

    return (sub_29EAD20C8)(4, v4);
  }

  else
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v10);
    sub_29EB14A1C();
    *(v0 + 16) = *v8;
    v12 = *(v8 + 16);
    v13 = *(v8 + 32);
    v14 = *(v8 + 48);
    *(v0 + 80) = *(v8 + 64);
    *(v0 + 48) = v13;
    *(v0 + 64) = v14;
    *(v0 + 32) = v12;
    v15 = *(v11 + 16);
    v21 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    v18 = sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8]);
    *v17 = v0;
    v17[1] = sub_29EAE1068;
    v19 = *(v0 + 152);
    v20 = *(v0 + 136);

    return v21(v19, v0 + 16, v20, v18, v10, v11);
  }
}

uint64_t sub_29EAE0D9C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_29EAE130C;
  }

  else
  {
    v3 = sub_29EAE0EB0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAE0EB0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 152);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  sub_29EB14A1C();
  *(v0 + 16) = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  *(v0 + 80) = *(v4 + 64);
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 32) = v8;
  v11 = *(v7 + 16);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  v14 = sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8]);
  *v13 = v0;
  v13[1] = sub_29EAE1068;
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);

  return v18(v15, v0 + 16, v16, v14, v6, v7);
}

uint64_t sub_29EAE1068()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_29EAE14D4;
  }

  else
  {
    v6 = sub_29EAE11D8;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29EAE11D8()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing serialized data", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[16];

  v5(0);
  v8 = v0[19];
  v7 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EAE130C()
{
  v1 = v0[22];

  v2 = v0[24];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing serialized data %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v12 = v0[15];
  v11 = v0[16];

  v13 = v2;
  v12(v2);

  v15 = v0[19];
  v14 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EAE14D4()
{
  v1 = v0[26];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing serialized data %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v11 = v0[15];
  v10 = v0[16];

  v12 = v1;
  v11(v1);

  v14 = v0[19];
  v13 = v0[20];

  v15 = v0[1];

  return v15();
}

uint64_t sub_29EAE1694(uint64_t a1, const char *a2)
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, a2, v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  return sub_29EB1492C();
}

id sub_29EAE17A8(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_29EAE007C(v10, v11, sub_29EAE49AC, v9);

  return v13;
}

uint64_t sub_29EAE1870(void *a1, void (*a2)(void))
{
  v29 = a2;
  v30[2] = *MEMORY[0x29EDCA608];
  v4 = *v2;
  v5 = *MEMORY[0x29EDCA1E8];
  v6 = sub_29EB1422C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MigrationDataContainer();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v5 & v4) + 0x50);
  v16 = *((v5 & v4) + 0x58);
  v17 = v2 + *((v5 & v4) + 0x68);
  sub_29EABFC80(v14);
  (*(v7 + 16))(v10, &v14[*(v11 + 28)], v6);
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_29EB141BC();
  v30[0] = 0;
  LODWORD(v5) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v30];

  if (v5)
  {
    v20 = v30[0];
  }

  else
  {
    v21 = v30[0];
    v22 = sub_29EB1417C();

    swift_willThrow();
  }

  sub_29EAFEF60(a1);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v25 = sub_29EB1454C();
  __swift_project_value_buffer(v25, qword_2A187AA80);
  v26 = sub_29EB1452C();
  v27 = sub_29EB14A4C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_29EAA5000, v26, v27, "Completed registering import status", v28, 2u);
    MEMORY[0x29EDA8150](v28, -1, -1);
  }

  v29(0);
  (*(v7 + 8))(v10, v6);
  sub_29EAE3568(v14);
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

id sub_29EAE1D38(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  v8 = a3;
  sub_29EAE1870(a3, sub_29EAE4660);

  return 0;
}

uint64_t sub_29EAE1DE0(void *a1)
{
  v2 = v1;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Accepting connection", v7, 2u);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  [a1 setExportedObject_];
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_29EAE1F38(void *a1)
{
  v1 = *MEMORY[0x29EDCA1E8] & *a1;
  sub_29EB148FC();
  sub_29EB148EC();
  sub_29EB1489C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_29EAE4630();
}

id sub_29EAE2004()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x50);
  v2 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MigrationExtensionConfiguration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29EAE2074(uint64_t *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *a1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *(a1 + *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60));

  v6 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v7 = a1 + *((*v2 & *a1) + 0x68);

  return v6(v7);
}

uint64_t sub_29EAE2148(void *a1)
{
  v2 = *v1;
  sub_29EAE1DE0(a1);
  return 1;
}

uint64_t sub_29EAE2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_29EB14A0C() - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  sub_29EB148FC();
  v7[7] = sub_29EB148EC();
  v10 = sub_29EB1489C();
  v7[8] = v10;
  v7[9] = v9;

  return MEMORY[0x2A1C73D48](sub_29EAE2238, v10, v9);
}

uint64_t sub_29EAE2238()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v0[10] = sub_29EAE2580();
  sub_29EB14A1C();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_29EAE2310;
  v5 = v0[6];

  return sub_29EAD2EE0(v5);
}

uint64_t sub_29EAE2310()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_29EAE24D8;
  }

  else
  {
    v7 = sub_29EAE244C;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29EAE244C()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v4(0);

  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EAE24D8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v1;
  v5(v1);

  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29EAE2580()
{
  if (os_variant_has_internal_content())
  {
    v1 = MEMORY[0x29EDCA1E8];
    v2 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
    if (*(v0 + v2))
    {
      v3 = *(v0 + v2);
LABEL_6:

      return v3;
    }

    v4 = v0;
    type metadata accessor for _t_MigrationInjectionManager();
    swift_allocObject();
    v5 = sub_29EAABAB8(MEMORY[0x29EDCA190]);
    if (v5)
    {
      v3 = v5;
      v6 = *((*v1 & *v0) + 0x60);
      v7 = *(v0 + v6);
      *(v4 + v6) = v5;

      goto LABEL_6;
    }

    __break(1u);
  }

  result = sub_29EB14D2C();
  __break(1u);
  return result;
}

uint64_t sub_29EAE26A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAE27A0;

  return v7(a1);
}

uint64_t sub_29EAE27A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_29EAE2898(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x29EDCA1E8];
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *MEMORY[0x29EDCA1E8] & *v1;
  v6 = *(v5 + 0x60);
  *&v1[v6] = 0;
  (*(*(*((v4 & v2) + 0x50) - 8) + 16))(&v1[*((*v3 & *v1) + 0x68)], a1, *((v4 & v2) + 0x50));
  if (os_variant_has_internal_content())
  {
    type metadata accessor for _t_MigrationInjectionManager();
    v7 = sub_29EAAC5E0();
    v8 = *&v1[v6];
    *&v1[v6] = v7;
  }

  v9 = *(v5 + 88);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MigrationExtensionConfiguration();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_29EAE29EC(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for MigrationExtensionConfiguration());
  return sub_29EAE2898(a1);
}

uint64_t sub_29EAE2A28(void (*a1)(void *))
{
  v2 = sub_29EB13FFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29EB1400C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v9 = sub_29EB1454C();
  __swift_project_value_buffer(v9, qword_2A187AA80);
  v10 = sub_29EB1452C();
  v11 = sub_29EB14A4C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_29EAA5000, v10, v11, "Starting to upload content", v12, 2u);
    MEMORY[0x29EDA8150](v12, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
  sub_29EB1415C();
  v13 = sub_29EB13F9C();
  (*(v5 + 8))(v8, v4);
  a1(v13);

  return 0;
}

void *sub_29EAE2C84(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v80 = a3;
  v81 = a5;
  v69 = a2;
  v89 = *MEMORY[0x29EDCA608];
  v9 = *v5;
  v10 = *MEMORY[0x29EDCA1E8];
  v74 = *MEMORY[0x29EDCA1E8] & v9;
  v11 = sub_29EB13FFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EB1400C();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EB1422C();
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v70 = v19;
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v71 = &v66 - v23;
  v24 = *((v10 & v9) + 0x50);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v28 = &v66 - v27;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v29 = sub_29EB1454C();
  v75 = __swift_project_value_buffer(v29, qword_2A187AA80);
  v30 = sub_29EB1452C();
  v31 = sub_29EB14A4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v6;
    v33 = v17;
    v34 = a1;
    v35 = a4;
    v36 = v24;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v30, v31, "Starting to import staged dataclass resources", v37, 2u);
    v38 = v37;
    v24 = v36;
    a4 = v35;
    a1 = v34;
    v17 = v33;
    v6 = v32;
    MEMORY[0x29EDA8150](v38, -1, -1);
  }

  (*(v25 + 16))(v28, v6 + *((*MEMORY[0x29EDCA1E8] & *v6) + 0x68), v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC10, &qword_29EB181E0);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&aBlock, v86);
    v39 = v80 >> 62;
    v68 = a4;
    v67 = v24;
    if ((v80 >> 62) > 1)
    {
      if (v39 != 2)
      {
        *(&aBlock + 6) = 0;
        *&aBlock = 0;
        goto LABEL_22;
      }

      v47 = *(v69 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v47, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v39)
    {
      *&aBlock = v69;
      DWORD2(aBlock) = v80;
      WORD6(aBlock) = WORD2(v80);
LABEL_22:
      v49 = sandbox_extension_consume();
      v50 = v87;
      v51 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v52 = (*(v51 + 24))(v50, v51);
      v53 = sub_29EB1491C();
      v54 = v71;
      (*(*(v53 - 8) + 56))(v71, 1, 1, v53);
      sub_29EAAD474(v86, &aBlock);
      v55 = v73;
      v56 = v72;
      (*(v73 + 16))(v72, a1, v17);
      v57 = (*(v55 + 80) + 104) & ~*(v55 + 80);
      v58 = (v70 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v67;
      *(v59 + 5) = *(v74 + 88);
      *(v59 + 6) = v49;
      *(v59 + 7) = v6;
      sub_29EAADE9C(&aBlock, (v59 + 64));
      (*(v55 + 32))(&v59[v57], v56, v17);
      v60 = &v59[v58];
      v61 = v81;
      *v60 = v68;
      *(v60 + 1) = v61;
      v62 = v6;

      v63 = sub_29EAD3968(0, 0, v54, &unk_29EB181F8, v59);
      v84 = sub_29EAE4978;
      v85 = v63;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_29EABE4EC;
      *(&v83 + 1) = &block_descriptor_114;
      v64 = _Block_copy(&aBlock);

      [v52 setCancellationHandler_];
      _Block_release(v64);

      __swift_destroy_boxed_opaque_existential_1(v86);
      result = v52;
      goto LABEL_23;
    }

    v48 = v69;
    if (v69 > v69 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(v48, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  v84 = 0;
  aBlock = 0u;
  v83 = 0u;
  sub_29EABCCEC(&aBlock, &qword_2A187AC18, &qword_29EB181E8);
  v40 = sub_29EB1452C();
  v41 = sub_29EB14A5C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_29EAA5000, v40, v41, "App Extension doesn't support resources importing", v42, 2u);
    MEMORY[0x29EDA8150](v42, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
  v43 = v76;
  v44 = v79;
  sub_29EB1415C();
  v45 = sub_29EB13F9C();
  (*(v78 + 8))(v43, v44);
  a4(v45);

  result = 0;
LABEL_23:
  v65 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EAE3568(uint64_t a1)
{
  v2 = type metadata accessor for MigrationDataContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EAE3674()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v2 = *(v0 + 96);

  v3 = *(v0 + 112);

  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  v6 = *(v0 + 168);

  return MEMORY[0x2A1C733A0](v0, 176, 7);
}

uint64_t sub_29EAE36EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[20];
  v9 = v1[21];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EAB73B4;

  return sub_29EAE093C(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 11), v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAE37E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EAE3854()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EAE388C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAB73B4;

  return sub_29EAE26A8(a1, v5);
}

uint64_t sub_29EAE3944(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAAAE5C;

  return sub_29EAE26A8(a1, v5);
}

uint64_t sub_29EAE39FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29EAE3A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EAB73B4;

  return sub_29EAE2170(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_29EAE3B20()
{
  result = qword_2A187AB40;
  if (!qword_2A187AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187AB38, &qword_29EB180A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AB40);
  }

  return result;
}

unint64_t sub_29EAE3B84()
{
  result = qword_2A187AB50;
  if (!qword_2A187AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AB50);
  }

  return result;
}

uint64_t sub_29EAE3BD8()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v6 + 24);

  v11 = *(v0 + v6 + 40);

  v12 = *(v0 + v6 + 56);

  v13 = *(v0 + v7 + 8);

  return MEMORY[0x2A1C733A0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_29EAE3D00(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_29EB1422C() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[3];
  v16 = v1[2];
  v9 = v1[6];
  v10 = v1[7];
  v11 = (v1 + ((v7 + 71) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29EAB73B4;

  return sub_29EADE26C(a1, v16, v8, v9, v10, v1 + v5, v1 + v6, v1 + v7);
}

uint64_t sub_29EAE3E84()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 79) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 24);

  v12 = *(v0 + v7 + 40);

  v13 = *(v0 + v7 + 56);

  v14 = *(v0 + v8 + 8);

  return MEMORY[0x2A1C733A0](v0, v8 + 16, v3 | 7);
}

uint64_t sub_29EAE3FBC(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_29EB1422C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 79) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v17 = v1[2];
  v11 = *(v1 + v6);
  v12 = v1[6];
  v14 = *(v1 + v9);
  v13 = *(v1 + v9 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_29EAB73B4;

  return sub_29EADC104(a1, v17, v10, v12, v1 + v5, v11, v1 + v7, v1 + v8);
}

uint64_t sub_29EAE414C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EAE4194()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 152);

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

uint64_t sub_29EAE4204(uint64_t a1)
{
  v17 = *(v1 + 16);
  v15 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v13 = *(v1 + 128);
  v14 = *(v1 + 112);
  v10 = *(v1 + 144);
  v9 = *(v1 + 152);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EAAAE5C;

  return sub_29EAD98E4(a1, v17, v15, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  v5 = *(v0 + 152);

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

uint64_t sub_29EAE43B8(uint64_t a1)
{
  v17 = *(v1 + 16);
  v15 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v13 = *(v1 + 128);
  v14 = *(v1 + 112);
  v10 = *(v1 + 144);
  v9 = *(v1 + 152);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EAB73B4;

  return sub_29EAD77F8(a1, v17, v15, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4500()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EAE4548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EAD3FF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4618(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29EAE4668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EAE46A0()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29EAE478C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29EB1422C() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29EAB73B4;

  return sub_29EADF884(a1, v7, v8, v9, v10, (v1 + 8), v1 + v6, v12);
}

uint64_t SerializedDataCompressionScheme.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_29EB14D8C();

  *a1 = v2 != 0;
  return result;
}

void sub_29EAE4A18(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v91 = a2;
  v80 = a3;
  v74 = sub_29EB1438C();
  v78 = *(v74 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EB1437C();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EB1418C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29EB1422C();
  v15 = *(v84 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v84);
  v82 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v83 = &v70 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v81 = &v70 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v70 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23);
  v28 = &v70 - v27;
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v70 - v29;
  v86 = 0x736566696E616D2ELL;
  v87 = 0xE900000000000074;
  (*(v11 + 104))(v14, *MEMORY[0x29EDB9B10], v10);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v11 + 8))(v14, v10);
  v31 = sub_29EB1423C();
  if (v3)
  {
    (*(v15 + 8))(v30, v84);
  }

  else
  {
    v33 = v31;
    v34 = v32;
    v72 = v25;
    v73 = v28;
    v85 = a1;
    v35 = sub_29EB1405C();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_29EB1404C();
    sub_29EAE90BC();
    sub_29EB1403C();
    v71 = *(v15 + 8);
    v71(v30, v84);

    sub_29EAAD010(v33, v34);
    v38 = v89;
    if (v89)
    {
      v39 = v88;
      v40 = v90;
      v41 = 1;
      while (1)
      {
        v42 = objc_autoreleasePoolPush();
        sub_29EAE6F98(v41, v39, v38, v40, v85, &v88);
        objc_autoreleasePoolPop(v42);
        if (v38 == v41)
        {
          break;
        }

        if (__CFADD__(v41++, 1))
        {
          __break(1u);
          objc_autoreleasePoolPop(v42);
          return;
        }
      }

      v70 = v15 + 8;
      v44 = *(v15 + 16);
      v45 = v83;
      if (v39)
      {
        v46 = v84;
        v44(v83, v85, v84);
        v47 = type metadata accessor for SerializedDataReader(0);
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        v50 = swift_allocObject();
        *(v50 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
        v51 = v50 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest;
        *v51 = 1;
        *(v51 + 8) = v38;
        *(v51 + 16) = v40;
        *(v50 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_bufferSize) = 0x8000;
        *(v50 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) = v91 & 1;
        v52 = v82;
        v44(v82, v45, v46);
        *(v50 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
        *(v50 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
        v44((v50 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory), v52, v46);
        *(v50 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = 0;
        *(v50 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = 1;
        sub_29EAE5A28();
        v63 = v71;
        v71(v52, v46);
        v63(v45, v46);
        *v80 = v50;
      }

      else
      {
        v53 = v73;
        v54 = v84;
        v44(v73, v85, v84);
        v55 = type metadata accessor for CompressedSerializedDataReader(0);
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        v58 = swift_allocObject();
        *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter) = 0;
        v59 = v72;
        v44(v72, v53, v54);
        *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
        v60 = v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest;
        *v60 = 0;
        *(v60 + 8) = v38;
        *(v60 + 16) = v40;
        v61 = v59;
        *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_bufferSize) = 0x8000;
        *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) = v91 & 1;
        v62 = v81;
        v44(v81, v61, v54);
        *(v58 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
        *(v58 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
        v44((v58 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory), v62, v54);
        *(v58 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = 0;
        *(v58 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = 0;
        sub_29EAE5A28();
        v64 = v71;
        v71(v62, v54);
        v64(v61, v54);
        (*(v75 + 104))(v77, *MEMORY[0x29EDC9800], v76);
        (*(v78 + 104))(v79, *MEMORY[0x29EDC9810], v74);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACE8, &qword_29EB185A0);
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();

        v68 = sub_29EB1432C();
        v64(v73, v54);
        v69 = *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter);
        *(v58 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter) = v68;

        *v80 = v58;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29EAE52FC()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AC20);
  __swift_project_value_buffer(v0, qword_2A187AC20);
  return sub_29EB1453C();
}

uint64_t sub_29EAE538C()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAE53E8()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAE5430@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EB14D8C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_29EAE5548(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACC0, &qword_29EB18578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAE9830();
  sub_29EB14FFC();
  v17 = v9;
  v16 = 0;
  sub_29EAE9884();
  sub_29EB14E2C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_29EB14E7C();
  v14 = 2;
  sub_29EB14E7C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29EAE570C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACD8, &qword_29EB18580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAE9830();
  sub_29EB14FEC();
  if (!v2)
  {
    v18 = 0;
    sub_29EAE98D8();
    sub_29EB14DBC();
    v11 = v19;
    v17 = 1;
    v13 = sub_29EB14E0C();
    v16 = 2;
    v14 = sub_29EB14E0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EAE58F0()
{
  v1 = 0x756F436B6E756863;
  if (*v0 != 1)
  {
    v1 = 0x7A69536B6E756863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_29EAE5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EAE9D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAE5980(uint64_t a1)
{
  v2 = sub_29EAE9830();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAE59BC(uint64_t a1)
{
  v2 = sub_29EAE9830();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29EAE5A28()
{
  v2 = sub_29EB1422C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme);
  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme))
    {
      v19 = v12;
      sub_29EB14E8C();
    }

    else
    {
      v21 = v12;
      v19 = sub_29EB14E8C();
      v20 = v14;
      MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
      MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    }

    sub_29EB141CC();

    sub_29EB141FC();
    (*(v3 + 8))(v9, v2);
    sub_29EB1471C();

    v15 = sub_29EB1456C();

    v16 = [objc_allocWithZone(MEMORY[0x29EDB9FB0]) initWithFileDescriptor:v15 closeOnDealloc:1];
LABEL_11:
    v18 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
    *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = v16;

    return;
  }

  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme))
  {
    v19 = v12;
    sub_29EB14E8C();
  }

  else
  {
    v21 = v12;
    v19 = sub_29EB14E8C();
    v20 = v17;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
  }

  sub_29EAE9B74();
  sub_29EB141CC();

  v16 = sub_29EB06AEC(v7);
  if (!v1)
  {
    goto LABEL_11;
  }
}

uint64_t sub_29EAE5D1C(uint64_t a1, char a2, char *a3)
{
  v5 = v4;
  v6 = v3;
  v37[1] = *MEMORY[0x29EDCA608];
  v10 = sub_29EB13FFC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v34[1] = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EB1400C();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
  v18 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v19 = sub_29EB1422C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v6 + v18, a1, v19);
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = a2;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = v17;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v34[0] = v4;
  v21 = a1;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = v21;
  sub_29EB141FC();
  v25 = sub_29EB1467C();

  LODWORD(v21) = [v23 fileExistsAtPath_];

  if (!v21)
  {
    v27 = [v22 defaultManager];
    v28 = sub_29EB141BC();
    v37[0] = 0;
    v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v37];

    a1 = v24;
    if (!v29)
    {
      v31 = v37[0];
      sub_29EB1417C();

      swift_willThrow();

      goto LABEL_9;
    }

    v30 = v37[0];
    v5 = v34[0];
LABEL_6:
    sub_29EAE5A28();
    if (v5)
    {
      (*(v20 + 8))(a1, v19);

      goto LABEL_10;
    }

LABEL_9:
    (*(v20 + 8))(a1, v19);
    goto LABEL_10;
  }

  sub_29EB13FDC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE9ABC(&qword_2A187A800, MEMORY[0x29EDB9860]);
  v26 = v36;
  sub_29EB1415C();
  sub_29EB13F9C();
  (*(v35 + 8))(v16, v26);
  swift_willThrow();

  (*(v20 + 8))(v24, v19);
LABEL_10:
  v32 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t SerializedDataWriter.__allocating_init(chunkStageDirectory:compressionScheme:chunkSize:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_29EB1422C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 48);
  v13 = *(v3 + 52);
  v14 = swift_allocObject();
  LOBYTE(a2) = *a2;
  *(v14 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize) = a3;
  (*(v8 + 16))(v11, a1, v7);
  v18 = a2;
  v15 = sub_29EAE5D1C(v11, 1, &v18);
  (*(v8 + 8))(a1, v7);
  return v15;
}

uint64_t SerializedDataWriter.init(chunkStageDirectory:compressionScheme:chunkSize:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_29EB1422C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  *(v3 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize) = a3;
  (*(v8 + 16))(v11, a1, v7);
  v15 = a2;
  v12 = sub_29EAE5D1C(v11, 1, &v15);
  (*(v8 + 8))(a1, v7);
  return v12;
}

uint64_t sub_29EAE637C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAE63A0, 0, 0);
}

void sub_29EAE63A0()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle;
  v3 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
  if (!v3)
  {
    goto LABEL_77;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize);
  v5 = [v3 offsetInFile];
  v6 = v4 - v5;
  if (v4 < v5)
  {
    goto LABEL_68;
  }

  v43 = v4;
  v8 = v0[4];
  v7 = v0[5];
  v9 = v7 >> 62;
  v10 = HIDWORD(v8);
  v45 = BYTE6(v7);
  if ((v7 >> 62) > 1)
  {
    if (v9 == 3)
    {
      goto LABEL_12;
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    LODWORD(v11) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v11 = v11;
  }

  if (v11 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_12:
  v15 = *(v1 + v2);
  if (!v15)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    v16 = v8 >> 32;
    v17 = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    __break(1u);
  }

  if (v9 == 3)
  {
    goto LABEL_22;
  }

  v17 = *(v8 + 16);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v16 = *(v8 + 24);
LABEL_20:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v16 < v17)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_22:
  v44 = v2;
  v18 = v15;
  v0[2] = sub_29EB1429C();
  v0[3] = v19;
  sub_29EAB708C();
  sub_29EB14A2C();
  sub_29EAAD010(v0[2], v0[3]);

  if (v9 > 1)
  {
    v21 = v2;
    if (v9 == 3)
    {
      goto LABEL_62;
    }

    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    v14 = __OFSUB__(v22, v23);
    v20 = v22 - v23;
    if (v14)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  else
  {
    v21 = v2;
    v20 = v45;
    if (v9)
    {
      LODWORD(v20) = v10 - v8;
      if (__OFSUB__(v10, v8))
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v20 = v20;
    }
  }

  if (v20 >= 1 && v6 < v20)
  {
    v24 = v0[6];
    sub_29EAE5A28();
    v25 = v43;
    v26 = __OFSUB__(v10, v8);
    v42 = v26;
    v41 = v10 - v8;
    while (1)
    {
      v2 = v6 + v25;
      if (__CFADD__(v6, v25))
      {
        goto LABEL_69;
      }

      v27 = v45;
      if (v9)
      {
        if (v9 == 1)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v29 = *(v8 + 16);
          v28 = *(v8 + 24);
          v14 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v14)
          {
            goto LABEL_71;
          }
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }

      if (v27 >= v2)
      {
        v30 = v2;
      }

      else
      {
        v30 = v27;
      }

      v15 = *(v1 + v21);
      if (!v15)
      {
        goto LABEL_76;
      }

      if (v30 < v6)
      {
        goto LABEL_70;
      }

      if (v9)
      {
        if (v9 == 2)
        {
          v31 = *(v8 + 16);
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v32 = *(v8 + 24);
        }

        else
        {
          v32 = v8 >> 32;
          v31 = v8;
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_16;
          }
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v32 < v31)
        {
          goto LABEL_67;
        }
      }

      v10 = v0[4];
      v33 = v0[5];
      v34 = v15;
      v0[2] = sub_29EB1429C();
      v0[3] = v35;
      sub_29EB14A2C();
      sub_29EAAD010(v0[2], v0[3]);

      v21 = v44;
      v36 = v45;
      if (v9)
      {
        if (v9 == 2)
        {
          v38 = *(v8 + 16);
          v37 = *(v8 + 24);
          v14 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v14)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v36 = v41;
          if (v42)
          {
            goto LABEL_75;
          }
        }
      }

      if (v36 < 1 || v2 >= v36)
      {
        break;
      }

      v39 = v0[6];
      sub_29EAE5A28();
      v25 = v43;
      v6 += v43;
    }
  }

LABEL_62:
  v40 = v0[1];

  v40();
}

uint64_t sub_29EAE6744()
{
  v1 = sub_29EB1418C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_29EB1422C();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme);
  v10 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk);
  v11 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize);
  v25 = 0x736566696E616D2ELL;
  v26 = 0xE900000000000074;
  (*(v2 + 104))(v5, *MEMORY[0x29EDB9B10], v1);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v2 + 8))(v5, v1);
  v12 = sub_29EB1408C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_29EB1407C();
  LOBYTE(v25) = v23;
  v26 = v10;
  v27 = v11;
  sub_29EAE9068();
  v15 = v28;
  v16 = sub_29EB1406C();
  if (v15)
  {
    (*(v6 + 8))(v9, v24);
  }

  else
  {
    v18 = v16;
    v19 = v17;
    v20 = v24;
    sub_29EB142DC();
    (*(v6 + 8))(v9, v20);
    sub_29EAAD010(v18, v19);
  }
}

uint64_t sub_29EAE69F0()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t static SerializedDataFactory.validateIntegrity(of:)(uint64_t a1)
{
  v2 = sub_29EB1418C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EB1422C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v48 - v13;
  v48[3] = 0x736566696E616D2ELL;
  v48[4] = 0xE900000000000074;
  (*(v3 + 104))(v6, *MEMORY[0x29EDB9B10], v2);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v3 + 8))(v6, v2);
  v15 = sub_29EB1423C();
  v17 = v16;
  v18 = sub_29EB1405C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_29EB1404C();
  sub_29EAE90BC();
  sub_29EB1403C();
  v48[0] = v8;
  v21 = *(v8 + 8);
  v21(v14, v7);

  result = sub_29EAAD010(v15, v17);
  v23 = v50;
  if (v50)
  {
    v24 = v49;
    v25 = v51;
    v26 = 1;
    do
    {
      v27 = objc_autoreleasePoolPush();
      sub_29EAE6F98(v26, v24, v23, v25, a1, &v49);
      objc_autoreleasePoolPop(v27);
      if (v23 == v26)
      {
        return 1;
      }
    }

    while (!__CFADD__(v26++, 1));
    __break(1u);
    v29 = v49;
    objc_autoreleasePoolPop(v27);
    v30 = v48[0];
    if (qword_2A187A330 != -1)
    {
      swift_once();
    }

    v31 = sub_29EB1454C();
    __swift_project_value_buffer(v31, qword_2A187AC20);
    (*(v30 + 16))(v12, a1, v7);
    v32 = v29;
    v33 = sub_29EB1452C();
    v34 = sub_29EB14A5C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v12;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v35 = 136315394;
      v39 = sub_29EB141EC();
      v40 = v7;
      v41 = v39;
      v42 = v21;
      v44 = v43;
      v42(v36, v40);
      v45 = sub_29EABC674(v41, v44, &v49);

      *(v35 + 4) = v45;
      *(v35 + 12) = 2112;
      v46 = v29;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v47;
      *v37 = v47;
      _os_log_impl(&dword_29EAA5000, v33, v34, "Chunk stage directory at %s failed to validate - %@", v35, 0x16u);
      sub_29EABCCEC(v37, &qword_2A187A648, qword_29EB17EB0);
      MEMORY[0x29EDA8150](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x29EDA8150](v38, -1, -1);
      MEMORY[0x29EDA8150](v35, -1, -1);
    }

    else
    {

      v21(v12, v7);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EAE6F98(void *a1, char a2, void *a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v64 = a6;
  *&v65 = a5;
  v57 = a3;
  v58 = a4;
  v72 = *MEMORY[0x29EDCA608];
  v8 = sub_29EB13FFC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EB1400C();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EB1413C();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29EB1418C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29EB1422C();
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  if (a2)
  {
    v70 = a1;
    v27 = sub_29EB14E8C();
    v29 = v28;
  }

  else
  {
    v69 = a1;
    v70 = sub_29EB14E8C();
    v71 = v30;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    v27 = v70;
    v29 = v71;
  }

  v70 = v27;
  v71 = v29;
  (*(v19 + 104))(v22, *MEMORY[0x29EDB9B10], v18);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v19 + 8))(v22, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A938, &qword_29EB18210);
  inited = swift_initStackObject();
  v65 = xmmword_29EB16460;
  *(inited + 16) = xmmword_29EB16460;
  v32 = *MEMORY[0x29EDB8D38];
  *(inited + 32) = *MEMORY[0x29EDB8D38];
  v33 = v32;
  sub_29EAE9110(inited);
  swift_setDeallocating();
  sub_29EAC0E74(inited + 32);
  v34 = v66;
  sub_29EB1419C();
  v35 = v34;
  if (v34)
  {
    (*(v67 + 8))(v26, v68);
  }

  else
  {

    v37 = sub_29EB1412C();
    v39 = v38;
    (*(v63 + 8))(v17, v14);
    if ((v39 & 1) != 0 || v37 >= 1 && v37 > v58 || (v37 == v58 ? (v40 = v37 <= -1) : (v40 = 1), v40 && v56 != v57))
    {
      sub_29EB13FCC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AD00, &unk_29EB185B0);
      v41 = swift_initStackObject();
      *(v41 + 16) = v65;
      v42 = *MEMORY[0x29EDB9F10];
      *(v41 + 32) = sub_29EB146AC();
      *(v41 + 40) = v43;
      v44 = v68;
      *(v41 + 72) = v68;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v41 + 48));
      v46 = v67;
      (*(v67 + 16))(boxed_opaque_existential_0, v26, v44);
      sub_29EAE99AC(v41);
      swift_setDeallocating();
      sub_29EABCCEC(v41 + 32, &qword_2A187A828, &unk_29EB17590);
      sub_29EAE9ABC(&qword_2A187A800, MEMORY[0x29EDB9860]);
      v47 = v60;
      v48 = v62;
      sub_29EB1415C();
      v35 = sub_29EB13F9C();
      (*(v61 + 8))(v47, v48);
      swift_willThrow();
      result = (*(v46 + 8))(v26, v44);
    }

    else
    {
      v50 = objc_opt_self();
      v51 = sub_29EB141BC();
      v70 = 0;
      LOBYTE(v50) = [v50 amk:v51 markPurgeableAtURL:0 purgeable:&v70 error:?];

      if (v50)
      {
        v52 = *(v67 + 8);
        v53 = v70;
        result = v52(v26, v68);
        goto LABEL_18;
      }

      v54 = v70;
      v35 = sub_29EB1417C();

      swift_willThrow();
      result = (*(v67 + 8))(v26, v68);
    }
  }

  *v64 = v35;
LABEL_18:
  v49 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t static SerializedDataFactory.serializedDataByteCount(from:)(uint64_t a1)
{
  v59 = sub_29EB1402C();
  v61 = *(v59 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v59);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29EB1413C();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v63 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EB1418C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29EB1422C();
  v75 = *(v69 - 8);
  v12 = *(v75 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v69);
  v66 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v52 - v15;
  v70 = 0x736566696E616D2ELL;
  v71 = 0xE900000000000074;
  v17 = v8[13];
  v17(v11, *MEMORY[0x29EDB9B10], v7);
  v18 = sub_29EAAD404();
  v62 = a1;
  sub_29EB1421C();
  v19 = v8[1];
  v19(v11, v7);
  v20 = v68;
  v67 = sub_29EB1423C();
  v68 = v21;
  if (v20)
  {
    return (*(v75 + 8))(v16, v69);
  }

  v54 = v19;
  v55 = v18;
  v56 = v11;
  v57 = v17;
  v23 = v7;
  v24 = v75;
  v25 = sub_29EB1405C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_29EB1404C();
  sub_29EAE90BC();
  v29 = v67;
  v28 = v68;
  sub_29EB1403C();
  v58 = 0;
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v30 = v32;
  v32(v16, v69);

  result = sub_29EAAD010(v29, v28);
  if (!v73)
  {
    return 0;
  }

  if (!is_mul_ok(v74, v73 - 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v53 = v73 - 1;
  v67 = v74;
  v68 = v30;
  v33 = v56;
  v52[3] = v72;
  v75 = v31;
  if (v72)
  {
    v72 = v73;
    v34 = sub_29EB14E8C();
    v36 = v35;
  }

  else
  {
    v70 = v73;
    v72 = sub_29EB14E8C();
    v73 = v37;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    v34 = v72;
    v36 = v73;
  }

  v72 = v34;
  v73 = v36;
  v38 = v23;
  v57(v33, *MEMORY[0x29EDB9B08], v23);
  v39 = v66;
  sub_29EB1421C();
  v54(v33, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A938, &qword_29EB18210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29EB16460;
  v41 = *MEMORY[0x29EDB8D38];
  *(inited + 32) = *MEMORY[0x29EDB8D38];
  v42 = v41;
  sub_29EAE9110(inited);
  swift_setDeallocating();
  sub_29EAC0E74(inited + 32);
  v43 = v63;
  v44 = v58;
  sub_29EB1419C();
  v46 = v64;
  v45 = v65;
  if (v44)
  {
    v68(v39, v69);
  }

  v47 = sub_29EB1412C();
  v49 = v48;
  (*(v46 + 8))(v43, v45);
  if (v49)
  {
    LODWORD(v72) = 2;
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE9ABC(&qword_2A187A640, MEMORY[0x29EDB9870]);
    v50 = v60;
    v51 = v59;
    sub_29EB1415C();
    sub_29EB1401C();
    (*(v61 + 8))(v50, v51);
    swift_willThrow();
    return (v68)(v39, v69);
  }

  result = (v68)(v39, v69);
  if (v47 < 0)
  {
    goto LABEL_17;
  }

  result = v67 * v53 + v47;
  if (__CFADD__(v67 * v53, v47))
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_29EAE7DAC(uint64_t a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  if (*(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) >= *(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest + 8))
  {
    goto LABEL_10;
  }

  if (*(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) != 1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
  if (v4)
  {
    v8[0] = 0;
    if (![objc_opt_self() amk:objc_msgSend(v4 markPurgeableAt:sel_fileDescriptor) purgeable:1 error:v8])
    {
      v6 = v8[0];
      sub_29EB1417C();

      swift_willThrow();
LABEL_10:
      v7 = *MEMORY[0x29EDCA608];
      return;
    }

    v5 = v8[0];
LABEL_6:
    sub_29EAE5A28();
    if (!v2)
    {
      *(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
      sub_29EAE7F04(a1);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_29EAE7F04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk;
  if (*(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) == 1)
  {
    sub_29EAE7DAC(a1);
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = [v4 readDataOfLength_];
  v6 = sub_29EB142CC();
  v8 = v7;

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_18;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 >= 1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      if (HIDWORD(v6) - v6 >= 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      sub_29EAE7DAC(a1);
      sub_29EAAD010(v6, v8);
      return;
    }

    goto LABEL_26;
  }

  if (!BYTE6(v8))
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v9 == 2)
  {
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    v12 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v12)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (v16 < a1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v9 == 1)
    {
      if (!__OFSUB__(HIDWORD(v6), v6))
      {
        if (HIDWORD(v6) - v6 >= a1)
        {
          return;
        }

LABEL_24:
        *(v1 + v3) = 1;
        return;
      }

      goto LABEL_27;
    }

    if (BYTE6(v8) < a1)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_29EAE80B0()
{
  v0 = objc_autoreleasePoolPush();
  sub_29EAE7F04(0x8000);
  v2 = v1;
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_29EAE812C()
{
  v1 = sub_29EB1493C();
  v2 = (*(***(v0 + 16) + 256))(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  if (v3 >> 60 == 15)
  {
    v4 = *(v0 + 8);

    return v4(256);
  }

  v6 = *(v0 + 16);
  v8 = v6[1];
  v7 = v6[2];
  v6[1] = v2;
  v6[2] = v3;
  v9 = v2;
  v10 = v3;
  sub_29EAB0308(v2, v3);
  sub_29EAB0308(v9, v10);
  v11 = sub_29EAB6218(v8, v7);
  v6[3] = 0;
  v14 = v6[2];
  if (v14 >> 60 != 15)
  {
    v15 = v6[1];
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v16 != 2)
      {
LABEL_20:
        sub_29EAB6218(v15, v14);
        goto LABEL_21;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v17 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v14);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      return MEMORY[0x2A1C73D48](v11, v12, v13);
    }

    v17 = HIDWORD(v15) - v15;
LABEL_15:
    sub_29EAB0308(v15, v14);
LABEL_16:
    if (v17 >= 1)
    {
      v20 = sub_29EB142AC();
      sub_29EAB6218(v15, v14);
      v6[3] = 1;
      *(v0 + 57) = 0;
      *(v0 + 56) = v20;
      v11 = sub_29EAE83B8;
      v12 = 0;
      v13 = 0;

      return MEMORY[0x2A1C73D48](v11, v12, v13);
    }

    goto LABEL_20;
  }

LABEL_21:
  v21 = swift_task_alloc();
  *(v0 + 40) = v21;
  *v21 = v0;
  v21[1] = sub_29EAE8444;
  v22 = *(v0 + 16);

  return sub_29EAE810C();
}

uint64_t sub_29EAE83B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_29EAB6218(v1, v2);
  sub_29EAB6218(v1, v2);
  v3 = *(v0 + 56) | (*(v0 + 57) << 8);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_29EAE8444(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_29EAE8574;
  }

  else
  {
    *(v4 + 57) = HIBYTE(a1) & 1;
    *(v4 + 56) = a1;
    v7 = sub_29EAE83B8;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EAE8574()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_29EAB6218(v1, v2);
  sub_29EAB6218(v1, v2);
  v3 = v0[6];
  v4 = v0[1];

  return v4();
}

uint64_t sub_29EAE85EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAE860C, 0, 0);
}

void sub_29EAE860C()
{
  v1 = v0[3];
  v2 = v1[2];
  if (v2 >> 60 == 15)
  {
LABEL_18:
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = sub_29EAE87A8;
    v13 = v0[3];

    sub_29EAE810C();
    return;
  }

  v3 = v1[1];
  v4 = v1[3];
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v4 < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_29EAB0308(v3, v2);
      if (v4 < v8)
      {
        goto LABEL_13;
      }

LABEL_17:
      sub_29EAB6218(v3, v2);
      goto LABEL_18;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v3) - v3;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (v4 >= BYTE6(v2))
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = sub_29EB142AC();
  sub_29EAB6218(v3, v2);
  v1[3] = v4 + 1;
  v10 = v0[2];
  *v10 = v9;
  v10[1] = 0;
  v11 = v0[1];

  v11();
}

uint64_t sub_29EAE87A8(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (!v1)
  {
    v7 = *(v4 + 16);
    *v7 = a1;
    v7[1] = HIBYTE(a1) & 1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_29EAE88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_29EAE897C;

  return sub_29EAE8AB0(a2, a3);
}

uint64_t sub_29EAE897C(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    **(v4 + 24) = v1;
  }

  else
  {
    v8 = *(v4 + 16);
    *v8 = a1;
    v8[1] = HIBYTE(a1) & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_29EAE8AB0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAE8AD4, 0, 0);
}

void sub_29EAE8AD4()
{
  v1 = v0[5];
  v2 = v1[2];
  if (v2 >> 60 == 15)
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_29EAE8C68;
    v12 = v0[5];

    sub_29EAE810C();
    return;
  }

  v3 = v1[1];
  v4 = v1[3];
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v4 < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_29EAB0308(v3, v2);
      if (v4 < v8)
      {
        goto LABEL_13;
      }

LABEL_17:
      sub_29EAB6218(v3, v2);
      goto LABEL_18;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v3) - v3;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (v4 >= BYTE6(v2))
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = sub_29EB142AC();
  sub_29EAB6218(v3, v2);
  v1[3] = v4 + 1;
  v10 = v0[1];

  v10(v9);
}

uint64_t sub_29EAE8C68(__int16 a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {
    if (v5[3])
    {
      v6 = v5[4];
      swift_getObjectType();
      v7 = sub_29EB1489C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x2A1C73D48](sub_29EAE8DDC, v7, v9);
  }

  else
  {
    v10 = v5[1];

    return v10(a1 & 0x1FF);
  }
}

uint64_t sub_29EAE8DDC()
{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A578, &qword_29EB16AF0);
  swift_willThrowTypedImpl();
  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t _s15AppMigrationKit20SerializedDataWriterCfD_0()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

double sub_29EAE8F18@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = 0.0;
  *(a1 + 8) = xmmword_29EB16E90;
  *(a1 + 24) = 0;
  return result;
}

void sub_29EAE8F34()
{
  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter))
  {

    sub_29EB1431C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EAE8FAC()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v4, v5);
}

unint64_t sub_29EAE9068()
{
  result = qword_2A187AC38;
  if (!qword_2A187AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC38);
  }

  return result;
}

unint64_t sub_29EAE90BC()
{
  result = qword_2A187AC40;
  if (!qword_2A187AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC40);
  }

  return result;
}

uint64_t sub_29EAE9110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACF8, &qword_29EB185A8);
    v3 = sub_29EB14C0C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_29EB146AC();
      sub_29EB14F8C();
      v29 = v7;
      sub_29EB1473C();
      v9 = sub_29EB14FAC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_29EB146AC();
        v20 = v19;
        if (v18 == sub_29EB146AC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_29EB14EBC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29EAE9308()
{
  result = qword_2A187AC48;
  if (!qword_2A187AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC48);
  }

  return result;
}

uint64_t sub_29EAE9394()
{
  result = sub_29EB1422C();
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

uint64_t dispatch thunk of SerializedDataWriter.write(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EAAAE5C;

  return v10(a1, a2);
}

uint64_t sub_29EAE9740(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29EAE97D0()
{
  result = qword_2A187ACB8;
  if (!qword_2A187ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACB8);
  }

  return result;
}

unint64_t sub_29EAE9830()
{
  result = qword_2A187ACC8;
  if (!qword_2A187ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACC8);
  }

  return result;
}

unint64_t sub_29EAE9884()
{
  result = qword_2A187ACD0;
  if (!qword_2A187ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACD0);
  }

  return result;
}

unint64_t sub_29EAE98D8()
{
  result = qword_2A187ACE0;
  if (!qword_2A187ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACE0);
  }

  return result;
}

void sub_29EAE992C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29EAE7F04(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

unint64_t sub_29EAE9958()
{
  result = qword_2A187ACF0;
  if (!qword_2A187ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACF0);
  }

  return result;
}

unint64_t sub_29EAE99AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A820, &qword_29EB185C0);
    v3 = sub_29EB14D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EAE9B04(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29EABC4C0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EABD7E0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EAE9ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EAE9B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A828, &unk_29EB17590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EAE9B74()
{
  result = qword_2A187AD08;
  if (!qword_2A187AD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187AD08);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EAE9BDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAE9C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EAE9C78()
{
  result = qword_2A187AD10;
  if (!qword_2A187AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD10);
  }

  return result;
}

unint64_t sub_29EAE9CD0()
{
  result = qword_2A187AD18;
  if (!qword_2A187AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD18);
  }

  return result;
}

unint64_t sub_29EAE9D28()
{
  result = qword_2A187AD20;
  if (!qword_2A187AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD20);
  }

  return result;
}

uint64_t sub_29EAE9D7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029EB1B850 == a2 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436B6E756863 && a2 == 0xEA0000000000746ELL || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69536B6E756863 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v5 = sub_29EB14EBC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SerializedDataImportRequest.sourceAppIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t SerializedDataImportRequest.sourceVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

__n128 SerializedDataImportRequest.init(sourceAppIdentifier:sourceVersion:estimatedByteCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v8;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  return result;
}

void sub_29EAE9FA4(void *a1)
{
  v3 = (v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v5 = *(v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v4 = *(v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 8);
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v10 = type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier];
  *v12 = v5;
  *(v12 + 1) = v4;
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v9;
  *(v12 + 5) = v8;
  v22.receiver = v11;
  v22.super_class = v10;

  v13 = objc_msgSendSuper2(&v22, sel_init);
  v14 = sub_29EB1467C();
  [a1 encodeObject:v13 forKey:{v14, v22.receiver, v22.super_class}];

  v15 = v3[6];
  v16 = v3[7];
  v17 = sub_29EB1467C();
  v18 = sub_29EB1467C();
  [a1 encodeObject:v17 forKey:v18];

  v19 = v3[8];
  v20 = sub_29EB1498C();
  v21 = sub_29EB1467C();
  [a1 encodeObject:v20 forKey:v21];
}

uint64_t SerializedDataImportRequest.XPCHelper.init(coder:)(void *a1)
{
  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v3 = v2;
    sub_29EABD730(0, &qword_2A187B080, 0x29EDBA0F8);
    v4 = sub_29EB14B3C();
    if (v4)
    {
      v7 = 0;
      v5 = v4;
      sub_29EB1469C();
    }
  }

  type metadata accessor for SerializedDataImportRequest.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id SerializedDataImportRequest.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SerializedDataImportRequest.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_29EAEA51C(uint64_t a1, int a2)
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

uint64_t sub_29EAEA564(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of SerializedDataImporting.importSerializedData<A>(from:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_29EAAAE5C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DataclassSerializedDataImporting.importSerializedData<A>(from:importRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_29EACCD1C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MigrationContentUploading.uploadContent(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return v11(a1, a2, a3);
}

unint64_t sub_29EAEAA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB16E50;
  v1 = sub_29EAC3B58();
  *(v0 + 32) = &type metadata for _t_ArchiveRandomFiles;
  *(v0 + 40) = v1;
  result = sub_29EAC3ACC();
  *(v0 + 48) = &type metadata for _t_ArchiveRepeatedFiles;
  *(v0 + 56) = result;
  qword_2A18812F8 = v0;
  return result;
}

double static _t_ArchiveRandomFiles.example.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ArchiveRandomFiles;
  *(a1 + 32) = sub_29EAC3B58();
  *&result = 100;
  *a1 = xmmword_29EB188D0;
  *(a1 + 16) = 1000;
  return result;
}

AppMigrationKit::_t_ArchiveRandomFiles __swiftcall _t_ArchiveRandomFiles.init(count:delay:size:)(Swift::Int count, Swift::Int delay, Swift::Int size)
{
  *v3 = count;
  v3[1] = delay;
  v3[2] = size;
  result.size = size;
  result.delay = delay;
  result.count = count;
  return result;
}

uint64_t sub_29EAEAB50(uint64_t a1)
{
  v2 = sub_29EAEF598();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAEAB8C(uint64_t a1)
{
  v2 = sub_29EAEF598();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ArchiveRandomFiles.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADB0, &qword_29EB188E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF598();
  sub_29EB14FFC();
  v16 = 0;
  sub_29EB14E5C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_29EB14E5C();
  v14 = 2;
  sub_29EB14E5C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t _t_ArchiveRandomFiles.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADC0, &qword_29EB188E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF598();
  sub_29EB14FEC();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_29EB14DEC();
    v18 = 1;
    v16 = sub_29EB14DEC();
    v17 = 2;
    v13 = sub_29EB14DEC();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAEAF44(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB73B4;

  return (sub_29EAEB00C)(a1, v4, v5, v6);
}

uint64_t sub_29EAEB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v4[15] = a2;
  v4[16] = a3;
  v4[14] = a1;
  v8 = sub_29EB14CFC();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = sub_29EB14D0C();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = sub_29EB1418C();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = sub_29EB1422C();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v20 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAEB24C, 0, 0);
}

uint64_t sub_29EAEB24C()
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(v0 + 120) < 1)
  {
    __break(1u);
  }

  v1 = objc_opt_self();
  v2 = *MEMORY[0x29EDB9B10];
  *(v0 + 60) = v2;
  *(v0 + 248) = v1;
  *(v0 + 256) = 1;
  v3 = *(v0 + 232);
  v19 = *(v0 + 240);
  v4 = *(v0 + 224);
  v20 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  _s15AppMigrationKit19_t_StreamRandomDataV8generate5index10Foundation0F0VSi_tF_0();
  *(v0 + 264) = v8;
  *(v0 + 272) = v9;
  v10 = [v1 defaultManager];
  v11 = [v10 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 96) = 1;
  *(v0 + 64) = sub_29EB14E8C();
  *(v0 + 72) = v12;
  (*(v5 + 104))(v6, v2, v7);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v5 + 8))(v6, v7);

  v13 = *(v4 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v20);
  sub_29EB142DC();
  v14 = swift_task_alloc();
  *(v0 + 296) = v14;
  *v14 = v0;
  v14[1] = sub_29EAEB578;
  v15 = *(v0 + 112);
  v16 = *MEMORY[0x29EDCA608];
  v17 = *(v0 + 240);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v17, 0, 0);
}

uint64_t sub_29EAEB578()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_29EAEBFC0;
  }

  else
  {
    v3 = sub_29EAEB6B8;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAEB6B8()
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = 1000000000000000000 * v6;
  v9 = ((v6 >> 63) & 0xF21F494C589C0000) + ((v6 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 80) = v8;
  *(v0 + 88) = v9;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v10 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v5 + 8);
  *(v0 + 312) = v11;
  *(v0 + 320) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v7);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 328) = v13;
  *v13 = v0;
  v13[1] = sub_29EAEB8C0;
  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73C90](v16, v0 + 40, v15, v10);
}

uint64_t sub_29EAEB8C0()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 328);
  v12 = *v1;
  *(*v1 + 336) = v0;

  v4 = *(v2 + 320);
  if (v0)
  {
    (*(v2 + 312))(*(v2 + 160), *(v2 + 136));
    v5 = sub_29EAEBE9C;
  }

  else
  {
    v7 = *(v2 + 176);
    v6 = *(v2 + 184);
    v8 = *(v2 + 168);
    (*(v2 + 312))(*(v2 + 160), *(v2 + 136));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAEBA4C;
  }

  v9 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAEBA4C()
{
  v54 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 240);
  v2 = [*(v0 + 248) defaultManager];
  v3 = sub_29EB141BC();
  *(v0 + 104) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 104];

  v5 = *(v0 + 104);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  if (v4)
  {
    v8 = v5;
    sub_29EAAD010(v7, v6);
    v9 = *(v0 + 336);
  }

  else
  {
    v10 = v5;
    v11 = sub_29EB1417C();

    swift_willThrow();
    sub_29EAAD010(v7, v6);

    v9 = 0;
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 256);
  v14 = *(v0 + 120);
  (*(v0 + 280))(*(v0 + 240), *(v0 + 216));
  if (v13 == v14)
  {
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);

    v21 = *(v0 + 8);
    v22 = *MEMORY[0x29EDCA608];
LABEL_9:

    return v21();
  }

  v23 = *(v0 + 256);
  v24 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  *(v0 + 256) = v24;
  v50 = *(v0 + 60);
  v25 = *(v0 + 248);
  v51 = *(v0 + 240);
  v26 = *(v0 + 224);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);
  v53 = *(v0 + 216);
  v29 = *(v0 + 200);
  v49 = *(v0 + 192);
  _s15AppMigrationKit19_t_StreamRandomDataV8generate5index10Foundation0F0VSi_tF_0();
  v52 = v30;
  v32 = v31;
  *(v0 + 264) = v30;
  *(v0 + 272) = v31;
  v33 = [v25 defaultManager];
  v34 = [v33 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 96) = v24;
  *(v0 + 64) = sub_29EB14E8C();
  *(v0 + 72) = v35;
  (*(v29 + 104))(v28, v50, v49);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v29 + 8))(v28, v49);

  v36 = *(v26 + 8);
  *(v0 + 280) = v36;
  *(v0 + 288) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v27, v53);
  sub_29EB142DC();
  if (v9)
  {
    v36(*(v0 + 240), *(v0 + 216));
    sub_29EAAD010(v52, v32);
    v38 = *(v0 + 232);
    v37 = *(v0 + 240);
    v39 = *(v0 + 208);
    v40 = *(v0 + 184);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);

    v21 = *(v0 + 8);
    v43 = *MEMORY[0x29EDCA608];
    goto LABEL_9;
  }

  v45 = swift_task_alloc();
  *(v0 + 296) = v45;
  *v45 = v0;
  v45[1] = sub_29EAEB578;
  v46 = *(v0 + 240);
  v47 = *(v0 + 112);
  v48 = *MEMORY[0x29EDCA608];

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v46, 0, 0);
}

uint64_t sub_29EAEBE9C()
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_29EAEF3C8();
  sub_29EAAD010(v3, v4);
  v2(v5, v6);
  v7 = v0[42];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
  v11 = v0[23];
  v13 = v0[19];
  v12 = v0[20];

  v14 = v0[1];
  v15 = *MEMORY[0x29EDCA608];

  return v14();
}

uint64_t sub_29EAEBFC0()
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[27];
  sub_29EAEF3C8();
  sub_29EAAD010(v3, v4);
  v2(v5, v6);
  v7 = v0[38];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
  v11 = v0[23];
  v13 = v0[19];
  v12 = v0[20];

  v14 = v0[1];
  v15 = *MEMORY[0x29EDCA608];

  return v14();
}

uint64_t sub_29EAEC0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_29EB14CFC();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v9 = sub_29EB14D0C();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = sub_29EB1418C();
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();
  v15 = sub_29EB1422C();
  v5[26] = v15;
  v16 = *(v15 - 8);
  v5[27] = v16;
  v17 = *(v16 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v18 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAEC2EC, 0, 0);
}

uint64_t sub_29EAEC2EC()
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(v0 + 96) < 1)
  {
    __break(1u);
  }

  v1 = objc_opt_self();
  v2 = *MEMORY[0x29EDB9B10];
  *(v0 + 36) = v2;
  *(v0 + 240) = v1;
  *(v0 + 248) = 1;
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v8 = [v1 defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = 1;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v10;
  (*(v5 + 104))(v6, v2, v7);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v5 + 8))(v6, v7);

  v11 = *(v4 + 8);
  *(v0 + 256) = v11;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v18);
  sub_29EB142DC();
  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  *v12 = v0;
  v12[1] = sub_29EAEC5EC;
  v13 = *(v0 + 88);
  v14 = *MEMORY[0x29EDCA608];
  v15 = *(v0 + 232);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v15, 0, 0);
}

uint64_t sub_29EAEC5EC()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_29EAECFC8;
  }

  else
  {
    v3 = sub_29EAEC72C;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAEC72C()
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = 1000000000000000000 * v7;
  v9 = ((v7 >> 63) & 0xF21F494C589C0000) + ((v7 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v10 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v5 + 8);
  *(v0 + 288) = v11;
  *(v0 + 296) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v6);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 304) = v13;
  *v13 = v0;
  v13[1] = sub_29EAEC938;
  v14 = *(v0 + 176);
  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v17 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73C90](v16, v0 + 16, v15, v10);
}

uint64_t sub_29EAEC938()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 304);
  v12 = *v1;
  *(*v1 + 312) = v0;

  v4 = *(v2 + 296);
  if (v0)
  {
    (*(v2 + 288))(*(v2 + 152), *(v2 + 128));
    v5 = sub_29EAECEB8;
  }

  else
  {
    v7 = *(v2 + 168);
    v6 = *(v2 + 176);
    v8 = *(v2 + 160);
    (*(v2 + 288))(*(v2 + 152), *(v2 + 128));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAECAC4;
  }

  v9 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAECAC4()
{
  v50 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 232);
  v2 = [*(v0 + 240) defaultManager];
  v3 = sub_29EB141BC();
  *(v0 + 80) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 80];

  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = *(v0 + 312);
    v7 = v5;
  }

  else
  {
    v8 = v5;
    v9 = sub_29EB1417C();

    swift_willThrow();
    v6 = 0;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  v12 = *(v0 + 96);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));
  if (v11 == v12)
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);

    v19 = *(v0 + 8);
    v20 = *MEMORY[0x29EDCA608];
LABEL_9:

    return v19();
  }

  v21 = *(v0 + 248);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  *(v0 + 248) = v22;
  v44 = *(v0 + 36);
  v45 = *(v0 + 232);
  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v49 = v6;
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);
  v48 = *(v0 + 120);
  v46 = *(v0 + 208);
  v47 = *(v0 + 112);
  v28 = [*(v0 + 240) defaultManager];
  v29 = [v28 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = v22;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v30;
  (*(v27 + 104))(v25, v44, v26);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v27 + 8))(v25, v26);

  v31 = *(v23 + 8);
  *(v0 + 256) = v31;
  *(v0 + 264) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v24, v46);
  sub_29EB142DC();
  if (v49)
  {
    v32 = *(v0 + 264);
    v33 = *(v0 + 224);
    v34 = *(v0 + 200);
    v35 = *(v0 + 176);
    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

    v19 = *(v0 + 8);
    v38 = *MEMORY[0x29EDCA608];
    goto LABEL_9;
  }

  v40 = swift_task_alloc();
  *(v0 + 272) = v40;
  *v40 = v0;
  v40[1] = sub_29EAEC5EC;
  v41 = *(v0 + 232);
  v42 = *(v0 + 88);
  v43 = *MEMORY[0x29EDCA608];

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v41, 0, 0);
}

uint64_t sub_29EAECEB8()
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 232);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  sub_29EAEF3C8();
  v2 = *(v0 + 312);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x29EDCA608];

  return v9();
}

uint64_t sub_29EAECFC8()
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 232);
  sub_29EAEF3C8();
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x29EDCA608];

  return v9();
}

uint64_t _t_ResourceFileCreator.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_29EB14CFC();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_29EB14D0C();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = sub_29EB1418C();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = sub_29EB1422C();
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v17 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAED2D8, 0, 0);
}

uint64_t sub_29EAED2D8()
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 112);
  v2 = (*(*(v0 + 104) + 16))(*(v0 + 96));
  *(v0 + 232) = v2;
  if (v2 < 1)
  {
    __break(1u);
  }

  v3 = *(v0 + 104);
  *(v0 + 240) = *(v3 + 32);
  *(v0 + 248) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x5DE1000000000000;
  v4 = objc_opt_self();
  v5 = *MEMORY[0x29EDB9B10];
  *(v0 + 36) = v5;
  *(v0 + 256) = v4;
  *(v0 + 264) = 1;
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 208);
  v24 = *(v0 + 200);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = *(v0 + 112);
  *(v0 + 272) = (*(v0 + 240))(1, *(v0 + 96), *(v0 + 104));
  *(v0 + 280) = v14;
  v15 = [v4 defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = 1;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v17;
  (*(v10 + 104))(v11, v5, v12);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v10 + 8))(v11, v12);

  v18 = *(v9 + 8);
  *(v0 + 288) = v18;
  *(v0 + 296) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v8, v24);
  sub_29EB142DC();
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_29EAED630;
  v20 = *(v0 + 224);
  v21 = *(v0 + 88);
  v22 = *MEMORY[0x29EDCA608];

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v20, 0, 0);
}

uint64_t sub_29EAED630()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_29EAEE090;
  }

  else
  {
    v3 = sub_29EAED770;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAED770()
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v19 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = (*(*(v0 + 104) + 24))(*(v0 + 96));
  v8 = 1000000000000000000 * v7;
  v9 = ((v7 >> 63) & 0xF21F494C589C0000) + ((v7 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v10 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v4 + 8);
  *(v0 + 320) = v11;
  *(v0 + 328) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v6);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  *v13 = v0;
  v13[1] = sub_29EAED998;
  v14 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v17 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73C90](v16, v0 + 16, v15, v10);
}

uint64_t sub_29EAED998()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v12 = *v1;
  *(*v1 + 344) = v0;

  v4 = *(v2 + 328);
  if (v0)
  {
    (*(v2 + 320))(*(v2 + 144), *(v2 + 120));
    v5 = sub_29EAEDF6C;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v8 = *(v2 + 152);
    (*(v2 + 320))(*(v2 + 144), *(v2 + 120));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAEDB24;
  }

  v9 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAEDB24()
{
  v57 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 224);
  v2 = [*(v0 + 256) defaultManager];
  v3 = sub_29EB141BC();
  *(v0 + 80) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 80];

  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = *(v0 + 344);
    v7 = v5;
  }

  else
  {
    v8 = v5;
    v9 = sub_29EB1417C();

    swift_willThrow();
    v6 = 0;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 200);
  sub_29EAAD010(*(v0 + 272), *(v0 + 280));
  v11(v13, v15);
  if (v12 == v14)
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 192);
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x29EDCA608];
LABEL_9:

    return v22();
  }

  v24 = *(v0 + 264);
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
  }

  *(v0 + 264) = v25;
  v53 = *(v0 + 36);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 216);
  v54 = *(v0 + 224);
  v56 = v6;
  v29 = *(v0 + 208);
  v55 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 192);
  v32 = *(v0 + 176);
  v33 = *(v0 + 112);
  v52 = (*(v0 + 240))(v25, *(v0 + 96), *(v0 + 104));
  v35 = v34;
  *(v0 + 272) = v52;
  *(v0 + 280) = v34;
  v36 = [v27 defaultManager];
  v37 = [v36 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = v25;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v38;
  (*(v30 + 104))(v31, v53, v32);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v30 + 8))(v31, v32);

  v39 = *(v29 + 8);
  *(v0 + 288) = v39;
  *(v0 + 296) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v28, v55);
  sub_29EB142DC();
  if (v56)
  {
    v39(*(v0 + 224), *(v0 + 200));
    sub_29EAAD010(v52, v35);
    v41 = *(v0 + 216);
    v40 = *(v0 + 224);
    v42 = *(v0 + 192);
    v43 = *(v0 + 168);
    v45 = *(v0 + 136);
    v44 = *(v0 + 144);

    v22 = *(v0 + 8);
    v46 = *MEMORY[0x29EDCA608];
    goto LABEL_9;
  }

  v48 = swift_task_alloc();
  *(v0 + 304) = v48;
  *v48 = v0;
  v48[1] = sub_29EAED630;
  v49 = *(v0 + 224);
  v50 = *(v0 + 88);
  v51 = *MEMORY[0x29EDCA608];

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v49, 0, 0);
}

uint64_t sub_29EAEDF6C()
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[28];
  v6 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_29EAEF3C8();
  sub_29EAAD010(v3, v4);
  v2(v5, v6);
  v7 = v0[43];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];

  v14 = v0[1];
  v15 = *MEMORY[0x29EDCA608];

  return v14();
}

uint64_t sub_29EAEE090()
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[28];
  v6 = v0[25];
  sub_29EAEF3C8();
  sub_29EAAD010(v3, v4);
  v2(v5, v6);
  v7 = v0[39];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];

  v14 = v0[1];
  v15 = *MEMORY[0x29EDCA608];

  return v14();
}

uint64_t sub_29EAEE19C(char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *a1;
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return sub_29EAEE274(v8, v4, v5, v6, v7);
}

uint64_t sub_29EAEE274(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE29C, 0, 0);
}

uint64_t sub_29EAEE29C()
{
  if (*(v0 + 56) > 2u || *(v0 + 56))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_29EAB3444;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_29EAEB00C(v7, v6, v4, v5);
}

uint64_t sub_29EAEE488(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 64) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE4B4, 0, 0);
}

uint64_t sub_29EAEE4B4()
{
  if (*(v0 + 64) > 2u || *(v0 + 64))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_29EAEE6A4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return (sub_29EAEC0CC)(v8, v6, v7, v4, v5);
}

uint64_t sub_29EAEE6A4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _t_ExportResourcesInjectionMessage.perform(operation:options:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE7C4, 0, 0);
}

uint64_t sub_29EAEE7C4()
{
  if (*(v0 + 56) > 2u || *(v0 + 56))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v9 = (*(v0 + 32) + 16);
  v10 = (*v9 + **v9);
  v3 = (*v9)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_29EAB73B8;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return v10(v8, v7, v5);
}

double sub_29EAEEA14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *&result = 100;
  *a3 = xmmword_29EB188D0;
  *(a3 + 16) = 1000;
  return result;
}

uint64_t _t_ArchiveRepeatedFiles.data.getter()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t _t_ArchiveRepeatedFiles.generate(index:)()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t static _t_ArchiveRepeatedFiles.example.getter@<X0>(uint64_t *a1@<X8>)
{
  v10[3] = &type metadata for _t_Hang;
  v10[4] = sub_29EAEF634();
  v10[5] = sub_29EAEF688();
  LOBYTE(v10[0]) = 0;
  a1[3] = &type metadata for _t_ArchiveRepeatedFiles;
  a1[4] = sub_29EAC3ACC();
  v2 = swift_allocObject();
  *a1 = v2;
  __swift_project_boxed_opaque_existential_1(v10, &type metadata for _t_Hang);
  v3 = sub_29EB1408C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29EB1407C();
  v6 = sub_29EB1406C();
  v8 = v7;

  *(v2 + 16) = xmmword_29EB188D0;
  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t _t_ArchiveRepeatedFiles.init(count:delay:object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_29EB1408C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_29EB1407C();
  v13 = sub_29EB1406C();
  v15 = v14;

  if (!v4)
  {
    *a4 = a1;
    a4[1] = a2;
    a4[2] = v13;
    a4[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t _t_ArchiveRepeatedFiles.init(count:delay:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_29EAEECD4()
{
  v1 = 0x79616C6564;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_29EAEED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EAEFEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAEED48(uint64_t a1)
{
  v2 = sub_29EAEF714();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAEED84(uint64_t a1)
{
  v2 = sub_29EAEF714();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ArchiveRepeatedFiles.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADD8, &qword_29EB18900);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF714();
  sub_29EB14FFC();
  LOBYTE(v20) = 0;
  sub_29EB14E5C();
  if (!v2)
  {
    v15 = v17;
    v14 = v18;
    LOBYTE(v20) = 1;
    sub_29EB14E5C();
    v20 = v14;
    v21 = v15;
    v22 = 2;
    sub_29EAB0308(v14, v15);
    sub_29EAB6324();
    sub_29EB14E6C();
    sub_29EAAD010(v20, v21);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t _t_ArchiveRepeatedFiles.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADE8, &qword_29EB18908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF714();
  sub_29EB14FEC();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v11 = sub_29EB14DEC();
    LOBYTE(v15) = 1;
    v13 = sub_29EB14DEC();
    v16 = 2;
    sub_29EAB6378();
    sub_29EB14DFC();
    (*(v6 + 8))(v9, v5);
    v14 = v15;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAEF1B0()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_29EAEF1E4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EAB73B4;

  return sub_29EAEC0CC(a1, v4, v5, v7, v6);
}

uint64_t sub_29EAEF2B4(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = *a1;
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_29EAB73B4;

  return sub_29EAEE488(v9, v4, v5, v6, v8, v7);
}

void sub_29EAEF3C8()
{
  v9[1] = *MEMORY[0x29EDCA608];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_29EB141BC();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x29EDCA608];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_29EB1417C();

    swift_willThrow();
    v8 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sub_29EAEF4E8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A720, &unk_29EB17418);
  v10 = sub_29EAF0004();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_29EAB5BA8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_29EAEF598()
{
  result = qword_2A187ADB8;
  if (!qword_2A187ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADB8);
  }

  return result;
}

uint64_t sub_29EAEF5EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29EAEF634()
{
  result = qword_2A187ADC8;
  if (!qword_2A187ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADC8);
  }

  return result;
}

unint64_t sub_29EAEF688()
{
  result = qword_2A187ADD0;
  if (!qword_2A187ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADD0);
  }

  return result;
}

uint64_t sub_29EAEF6DC()
{
  sub_29EAAD010(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

unint64_t sub_29EAEF714()
{
  result = qword_2A187ADE0;
  if (!qword_2A187ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADE0);
  }

  return result;
}

unint64_t sub_29EAEF768(uint64_t a1)
{
  result = sub_29EAEF790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF790()
{
  result = qword_2A187ADF0;
  if (!qword_2A187ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADF0);
  }

  return result;
}

unint64_t sub_29EAEF7E4(uint64_t a1)
{
  result = sub_29EAC3B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF838()
{
  result = qword_2A187ADF8;
  if (!qword_2A187ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADF8);
  }

  return result;
}

unint64_t sub_29EAEF88C()
{
  result = qword_2A187AE00;
  if (!qword_2A187AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE00);
  }

  return result;
}

unint64_t sub_29EAEF8E0(uint64_t a1)
{
  result = sub_29EAEF908();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF908()
{
  result = qword_2A187AE08;
  if (!qword_2A187AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE08);
  }

  return result;
}

unint64_t sub_29EAEF95C(uint64_t a1)
{
  result = sub_29EAC3ACC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EAEF9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAEF9EC()
{
  result = qword_2A187AE10;
  if (!qword_2A187AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE10);
  }

  return result;
}

unint64_t sub_29EAEFA40()
{
  result = qword_2A187AE18;
  if (!qword_2A187AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE18);
  }

  return result;
}

uint64_t sub_29EAEFAA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29EAEFAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of _t_ExportResourcesInjectionMessage.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return v11(a1, a2, a3);
}

unint64_t sub_29EAEFCE8()
{
  result = qword_2A187AE20;
  if (!qword_2A187AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE20);
  }

  return result;
}

unint64_t sub_29EAEFD40()
{
  result = qword_2A187AE28;
  if (!qword_2A187AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE28);
  }

  return result;
}

unint64_t sub_29EAEFD98()
{
  result = qword_2A187AE30;
  if (!qword_2A187AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE30);
  }

  return result;
}

unint64_t sub_29EAEFDF0()
{
  result = qword_2A187AE38;
  if (!qword_2A187AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE38);
  }

  return result;
}

unint64_t sub_29EAEFE48()
{
  result = qword_2A187AE40;
  if (!qword_2A187AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE40);
  }

  return result;
}

unint64_t sub_29EAEFEA0()
{
  result = qword_2A187AE48;
  if (!qword_2A187AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE48);
  }

  return result;
}

uint64_t sub_29EAEFEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29EB14EBC();

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

unint64_t sub_29EAF0004()
{
  result = qword_2A187A728;
  if (!qword_2A187A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A720, &unk_29EB17418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A728);
  }

  return result;
}

uint64_t MigrationPlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_29EAF00AC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_29EAF00B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_29EAF00C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAF0110()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29EB1473C();
}

uint64_t sub_29EAF0118()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAF0210(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EB14EBC();
  }
}

unint64_t sub_29EAF0274()
{
  result = qword_2A187AE50;
  if (!qword_2A187AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE50);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29EAF02D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29EAF031C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EAF0368()
{
  result = qword_2A187AE58;
  if (!qword_2A187AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE58);
  }

  return result;
}

uint64_t sub_29EAF03C0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAF03E0, 0, 0);
}

uint64_t sub_29EAF03E0()
{
  v1 = 0xD000000000000055;
  *(v0 + 40) = 0xD000000000000055;
  v2 = 0x800000029EB1BDC0;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v4);
    v2 = v5;
  }

  *(v0 + 88) = v2;
  v6 = *(v0 + 80);
  v7 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 96) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = sub_29EAF097C;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_29EAF05A0;
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);

  return sub_29EAC59E4(v10, v1, v2, 0, v7, sub_29EACDDD4, v8);
}

uint64_t sub_29EAF05A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v2 + 120) = v0;

  v6 = *(v2 + 104);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF0738, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_29EAF0738()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

id sub_29EAF079C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_29EAF2D98;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_36;
  v13 = _Block_copy(aBlock);

  v14 = [a1 preflightExportWithCompletion_];
  _Block_release(v13);
  return v14;
}

void sub_29EAF0984(char *a1, void *a2)
{
  v4 = sub_29EB13FFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = sub_29EB1400C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v32[0] = a2;
    v12 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
    sub_29EB148BC();
    return;
  }

  if (!a1)
  {
    v20 = v9;
    sub_29EB13FAC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    sub_29EB1415C();
    v21 = sub_29EB13F9C();
    (*(v7 + 8))(v11, v20);
    *&v32[0] = v21;
    goto LABEL_3;
  }

  v13 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 48];
  v15 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  v14 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 16];
  v30[2] = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 32];
  v30[3] = v13;
  v30[0] = v15;
  v30[1] = v14;
  v16 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 112];
  v18 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 64];
  v17 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 80];
  v30[6] = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 96];
  v30[7] = v16;
  v30[4] = v18;
  v30[5] = v17;
  v26 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 64];
  v27 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 80];
  v28 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 96];
  v29 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 112];
  v22 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  v23 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 16];
  v24 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 32];
  v25 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 48];
  v19 = a1;
  sub_29EAB83AC(v30, v32);
  sub_29EAB7ACC(&v22, v32);
  v31[4] = v26;
  v31[5] = v27;
  v31[6] = v28;
  v31[7] = v29;
  v31[0] = v22;
  v31[1] = v23;
  v31[2] = v24;
  v31[3] = v25;
  sub_29EACD61C(v31);
  v26 = v32[4];
  v27 = v32[5];
  v28 = v32[6];
  v29 = v32[7];
  v22 = v32[0];
  v23 = v32[1];
  v24 = v32[2];
  v25 = v32[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  sub_29EB148CC();
}

uint64_t sub_29EAF0C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v7 + 400) = a4;
  *(v7 + 408) = a6;
  *(v7 + 384) = a1;
  *(v7 + 392) = a2;
  v8 = *a3;
  *(v7 + 416) = v6;
  *(v7 + 424) = v8;
  *(v7 + 432) = *(a3 + 1);
  *(v7 + 345) = *a5;
  return MEMORY[0x2A1C73D48](sub_29EAF0C74, 0, 0);
}

uint64_t sub_29EAF0C74()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 345);
  v3 = *(v0 + 424);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = swift_task_alloc();
  *(v0 + 448) = v6;
  v7 = *(v0 + 432);
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v7;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  v8 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v9 = *(v0 + 328);
    v10 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v10);
    v8 = v11;
  }

  *(v0 + 456) = v8;
  v12 = *(v0 + 392);
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *(v13 + 16) = sub_29EAF2188;
  *(v13 + 24) = v6;
  v14 = swift_task_alloc();
  *(v0 + 472) = v14;
  *v14 = v0;
  v14[1] = sub_29EAF0E34;
  v15 = *(v0 + 408);
  v16 = *(v0 + 416);

  return sub_29EAC6340(v0 + 16, v1, v8, v12, v15, sub_29EACC2AC, v13);
}

uint64_t sub_29EAF0E34()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  v4 = *(v2 + 456);

  if (v0)
  {
    v5 = sub_29EAF1000;
  }

  else
  {
    v5 = sub_29EAF0F58;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAF0F58()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 384);
  v4 = *(v0 + 168);
  v5 = *(v0 + 96);
  v7 = *(v0 + 48);
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 80);
  *(v3 + 80) = v5;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  v9 = *(v0 + 128);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  *(v3 + 144) = *(v0 + 160);
  *(v3 + 112) = v9;
  *(v3 + 128) = v8;
  *(v3 + 96) = v10;
  v11 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v11;

  v12 = *(v0 + 8);

  return v12(v4);
}

uint64_t sub_29EAF1000()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);
  sub_29EAF21C8(v0 + 176);
  v5 = *(v0 + 192);
  *v4 = *(v0 + 176);
  *(v4 + 16) = v5;
  v6 = *(v0 + 208);
  v7 = *(v0 + 224);
  v8 = *(v0 + 256);
  *(v4 + 64) = *(v0 + 240);
  *(v4 + 80) = v8;
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v9 = *(v0 + 272);
  v10 = *(v0 + 288);
  v11 = *(v0 + 304);
  *(v4 + 144) = *(v0 + 320);
  *(v4 + 112) = v10;
  *(v4 + 128) = v11;
  *(v4 + 96) = v9;

  v12 = *(v0 + 8);

  return v12(v1);
}

id sub_29EAF10BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v30 = a3;
  v31 = a7;
  v29 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v20 = a4;
  *(v20 + 1) = a5;
  *(v20 + 2) = a6;
  v33.receiver = v19;
  v33.super_class = v18;

  v21 = objc_msgSendSuper2(&v33, sel_init);
  v22 = 0;
  if ((a8 & 1) == 0)
  {
    v22 = sub_29EB1467C();
  }

  (*(v14 + 16))(v17, a2, v13);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = swift_allocObject();
  (*(v14 + 32))(v24 + v23, v17, v13);
  aBlock[4] = sub_29EAF2E70;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_30;
  v25 = _Block_copy(aBlock);

  v26 = [v29 exportSerializedDataTo:v30 request:v21 estimatedSize:v31 compressionScheme:v22 completion:v25];
  _Block_release(v25);

  return v26;
}

void sub_29EAF1320(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_29EAF13AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 416) = a6;
  *(v8 + 424) = a7;
  *(v8 + 400) = a4;
  *(v8 + 408) = a5;
  *(v8 + 384) = a1;
  *(v8 + 392) = a2;
  v9 = *a3;
  *(v8 + 432) = v7;
  *(v8 + 440) = v9;
  *(v8 + 448) = *(a3 + 1);
  return MEMORY[0x2A1C73D48](sub_29EAF13E4, 0, 0);
}

uint64_t sub_29EAF13E4()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v17 = *(v0 + 400);
  v4 = *(v0 + 392);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  v6 = *(v0 + 448);
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v17;
  *(v5 + 64) = v3;
  v7 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v8 = *(v0 + 328);
    v9 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v9);
    v7 = v10;
  }

  *(v0 + 472) = v7;
  v11 = *(v0 + 392);
  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  *(v12 + 16) = sub_29EAF21FC;
  *(v12 + 24) = v5;
  v13 = swift_task_alloc();
  *(v0 + 488) = v13;
  *v13 = v0;
  v13[1] = sub_29EAF15B4;
  v14 = *(v0 + 424);
  v15 = *(v0 + 432);

  return sub_29EAC6340(v0 + 16, v1, v7, v11, v14, sub_29EACDDD4, v12);
}

uint64_t sub_29EAF15B4()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  v4 = *(v2 + 472);

  if (v0)
  {
    v5 = sub_29EAF1780;
  }

  else
  {
    v5 = sub_29EAF16D8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAF16D8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 384);
  v4 = *(v0 + 168);
  v5 = *(v0 + 96);
  v7 = *(v0 + 48);
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 80);
  *(v3 + 80) = v5;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  v9 = *(v0 + 128);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  *(v3 + 144) = *(v0 + 160);
  *(v3 + 112) = v9;
  *(v3 + 128) = v8;
  *(v3 + 96) = v10;
  v11 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v11;

  v12 = *(v0 + 8);

  return v12(v4);
}

uint64_t sub_29EAF1780()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 384);
  sub_29EAF21C8(v0 + 176);
  v5 = *(v0 + 192);
  *v4 = *(v0 + 176);
  *(v4 + 16) = v5;
  v6 = *(v0 + 208);
  v7 = *(v0 + 224);
  v8 = *(v0 + 256);
  *(v4 + 64) = *(v0 + 240);
  *(v4 + 80) = v8;
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v9 = *(v0 + 272);
  v10 = *(v0 + 288);
  v11 = *(v0 + 304);
  *(v4 + 144) = *(v0 + 320);
  *(v4 + 112) = v10;
  *(v4 + 128) = v11;
  *(v4 + 96) = v9;

  v12 = *(v0 + 8);

  return v12(v1);
}

id sub_29EAF183C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v31 = a8;
  v28 = a3;
  v29 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v28 - v17;
  v19 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v21 = a4;
  *(v21 + 1) = a5;
  *(v21 + 2) = a6;
  v33.receiver = v20;
  v33.super_class = v19;

  v22 = objc_msgSendSuper2(&v33, sel_init);
  (*(v15 + 16))(v18, a2, v14);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v23, v18, v14);
  aBlock[4] = sub_29EAF2C6C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_24;
  v25 = _Block_copy(aBlock);

  v26 = [a1 exportResourcesTo:v28 request:v22 estimatedSize:v30 archiveFormat:v31 archiveCompressionScheme:v29 completion:v25];
  _Block_release(v25);

  return v26;
}

uint64_t sub_29EAF1A80(uint64_t a1, void *a2)
{
  v4 = sub_29EB13FFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = sub_29EB1400C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    memmove(&v27, (a1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics), 0x98uLL);
    nullsub_1(&v27);
  }

  else
  {
    if (!a2)
    {
      v14 = v9;
      sub_29EAF21C8(&v27);
      sub_29EB13FAC();
      sub_29EABCE10(MEMORY[0x29EDCA190]);
      sub_29EACD300();
      sub_29EB1415C();
      v15 = sub_29EB13F9C();
      (*(v7 + 8))(v11, v14);
      v22 = v33;
      v23 = v34;
      v24 = v35;
      v18 = v29;
      v19 = v30;
      v20 = v31;
      v21 = v32;
      v16 = v27;
      v17 = v28;
      v25 = v36;
      v26 = v15;
      goto LABEL_6;
    }

    sub_29EAF21C8(&v27);
  }

  v22 = v33;
  v23 = v34;
  v24 = v35;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v16 = v27;
  v17 = v28;
  v25 = v36;
  v26 = a2;
  v12 = a2;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  return sub_29EB148CC();
}

uint64_t sub_29EAF1CC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EAAAE5C;

  return (sub_29EAF2230)(a1);
}

id sub_29EAF1D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = aBlock - v13;
  v15 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v17 = a3;
  *(v17 + 1) = a4;
  *(v17 + 2) = a5;
  v25.receiver = v16;
  v25.super_class = v15;

  v18 = objc_msgSendSuper2(&v25, sel_init);
  (*(v11 + 16))(v14, a2, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, v14, v10);
  aBlock[4] = sub_29EAF2BC4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  v22 = [a1 uploadContentWithRequest:v18 completion:v21];
  _Block_release(v21);

  return v22;
}

uint64_t ExportExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_29EB1446C();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  v2[6] = swift_allocObject();

  return MEMORY[0x2A1C73D48](sub_29EACBBDC, 0, 0);
}

uint64_t ExportExtensionController.init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29EB1446C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EACBF70, 0, 0);
}

uint64_t ExportExtensionController.__deallocating_deinit()
{
  v0 = ExtensionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

double sub_29EAF21C8(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_29EAF2230(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2A1C73D48](sub_29EAF225C, 0, 0);
}

uint64_t sub_29EAF225C()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 88);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v0 + 56) = 40;
  v5 = 0x800000029EB1BDC0;
  *(v0 + 40) = 0xD000000000000055;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v6 = *(v0 + 16);
    v7 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v7);
    v5 = v8;
  }

  *(v0 + 112) = v5;
  v9 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 120) = v9;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = sub_29EAF2BA4;
  *(v10 + 24) = v3;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_29EAF243C;
  v12 = *(v0 + 72);

  return sub_29EAC6CEC(v11, v1, v5, 0, v9, sub_29EACDDD4, v10);
}

uint64_t sub_29EAF243C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(v2 + 144) = v0;

  v6 = *(v2 + 128);
  if (v0)
  {

    v7 = sub_29EAF25B4;
  }

  else
  {
    v8 = *(v2 + 104);

    v7 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EAF25B4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2();
}

uint64_t type metadata accessor for ExportExtensionController()
{
  result = qword_2A187AE60;
  if (!qword_2A187AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ExportExtensionController.preflightExport()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAAAE5C;

  return v8(a1);
}

uint64_t dispatch thunk of ExportExtensionController.exportSerializedData(to:request:estimatedSize:compressionScheme:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 128);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_29EAB0544;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ExportExtensionController.exportResources(to:request:estimatedSize:archiveFormat:archiveCompressionScheme:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 136);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_29EAB0010;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ExportExtensionController.uploadContent(request:progress:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EAB73B4;

  return v10(a1, a2);
}

uint64_t sub_29EAF2BC4(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);

  return sub_29EACBA94(a1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAF2CF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

void sub_29EAF2D98(char *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29EAF0984(a1, a2);
}

uint64_t sub_29EAF2E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29EAF2EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EAF2F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_29EB14C2C();
    MEMORY[0x29EDA6DF0](a1, a2);
    MEMORY[0x29EDA6DF0](0xD000000000000014, 0x800000029EB1C4D0);
    swift_getErrorValue();
    sub_29EB14EAC();
    return 0;
  }

  else
  {
  }

  return a1;
}

unint64_t sub_29EAF2FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB190D0;
  v1 = sub_29EAC3A78();
  *(v0 + 32) = &type metadata for _t_Sleep;
  *(v0 + 40) = v1;
  v2 = sub_29EAC3A24();
  *(v0 + 48) = &type metadata for _t_Hang;
  *(v0 + 56) = v2;
  v3 = sub_29EAC39D0();
  *(v0 + 64) = &type metadata for _t_FatalError;
  *(v0 + 72) = v3;
  v4 = sub_29EAC397C();
  *(v0 + 80) = &type metadata for _t_ThrowsPosixError;
  *(v0 + 88) = v4;
  result = sub_29EAC3928();
  *(v0 + 96) = &type metadata for _t_ThrowsGenericError;
  *(v0 + 104) = result;
  qword_2A1881300 = v0;
  return result;
}

uint64_t _t_Sleep.perform()()
{
  v1 = sub_29EB14D0C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAF3144, 0, 0);
}

uint64_t sub_29EAF3144()
{
  v1 = *(v0 + 32);
  sub_29EB14F2C();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_29EAF3214;
  v3 = *(v0 + 32);

  return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
}

uint64_t sub_29EAF3214()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;
  v6[6] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF33BC, 0, 0);
  }

  else
  {
    v7 = v6[4];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_29EAF33BC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

unint64_t static _t_Sleep.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_Sleep;
  result = sub_29EAC3A78();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_29EAF3474(uint64_t a1)
{
  v2 = sub_29EAF5B70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF34B0(uint64_t a1)
{
  v2 = sub_29EAF5B70();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF3574()
{
  v1 = sub_29EB14D0C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAF3630, 0, 0);
}

uint64_t sub_29EAF3630()
{
  v1 = *(v0 + 32);
  sub_29EB14F2C();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_29EAF3700;
  v3 = *(v0 + 32);

  return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
}

uint64_t sub_29EAF3700()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;
  v6[6] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF6D68, 0, 0);
  }

  else
  {
    v7 = v6[4];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_29EAF38A8(_BYTE *a1)
{
  v4 = sub_29EB14D0C();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 56) = *a1;
  *(v2 + 57) = *v1;

  return MEMORY[0x2A1C73D48](sub_29EAF3978, 0, 0);
}

uint64_t sub_29EAF3978()
{
  v1 = sub_29EAB0548(*(v0 + 56), *(v0 + 57));
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 32);
    sub_29EB14F2C();
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_29EAF3700;
    v5 = *(v0 + 32);

    return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t _t_GenericInjectionMessage.perform(operation:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EAF3AC4, 0, 0);
}

uint64_t sub_29EAF3AC4()
{
  v13 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  (*(*(v0 + 24) + 16))(&v12, *(v0 + 16));
  if (sub_29EAB0548(v2, v12))
  {
    v10 = (*(v0 + 24) + 24);
    v11 = (*v10 + **v10);
    v3 = (*v10)[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_29EAF3C44;
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);

    return v11(v7, v5);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_29EAF3C44()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EAF3D84()
{
  sleep(0xFFFFFFFF);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t static _t_Hang.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_Hang;
  result = sub_29EAC3A24();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_29EAF3E60(uint64_t a1)
{
  v2 = sub_29EAF5C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF3E9C(uint64_t a1)
{
  v2 = sub_29EAF5C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF3F88(_BYTE *a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 17) = *v1;
  return MEMORY[0x2A1C73D48](sub_29EAF3FB4, 0, 0);
}

uint64_t sub_29EAF3FB4()
{
  if (sub_29EAB0548(*(v0 + 16), *(v0 + 17)))
  {
    sleep(0xFFFFFFFF);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAF4028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 0;
  return result;
}

unint64_t static _t_FatalError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_FatalError;
  result = sub_29EAC39D0();
  *(a1 + 32) = result;
  *a1 = 5;
  return result;
}

uint64_t sub_29EAF4154()
{
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](0);
  return sub_29EB14FAC();
}

uint64_t sub_29EAF4198()
{
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](0);
  return sub_29EB14FAC();
}

uint64_t sub_29EAF41D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EB14EBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EAF4268(uint64_t a1)
{
  v2 = sub_29EAF5CC0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF42A4(uint64_t a1)
{
  v2 = sub_29EAF5CC0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF4324(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_29EB14FFC();
  v15 = v11;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29EAF44B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v15 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v8 - 8);
  v9 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_29EB14FEC();
  if (!v5)
  {
    v13 = v15;
    sub_29EAF5C18();
    sub_29EB14DFC();
    (*(v16 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF464C(_BYTE *a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 17) = *v1;
  return MEMORY[0x2A1C73D48](sub_29EAF4678, 0, 0);
}

uint64_t sub_29EAF4678()
{
  if (sub_29EAB0548(*(v0 + 16), *(v0 + 17)))
  {
    return sub_29EB14D2C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAF473C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 5;
  return result;
}

uint64_t _t_ThrowsPosixError.perform()()
{
  v2 = sub_29EB1402C();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 44) = *(v0 + 4);

  return MEMORY[0x2A1C73D48](sub_29EAF4904, 0, 0);
}

uint64_t sub_29EAF4904()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 40) = *(v0 + 44);
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAF5D14();
  sub_29EB1415C();
  sub_29EB1401C();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

unint64_t static _t_ThrowsPosixError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ThrowsPosixError;
  result = sub_29EAC397C();
  *(a1 + 32) = result;
  *a1 = 2;
  *(a1 + 4) = 2;
  return result;
}

_BYTE *_t_ThrowsPosixError.init(operation:code:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t sub_29EAF4A4C()
{
  if (*v0)
  {
    result = 1701080931;
  }

  else
  {
    result = 0x6F6974617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_29EAF4A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29EB14EBC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EB14EBC();

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

uint64_t sub_29EAF4B74(uint64_t a1)
{
  v2 = sub_29EAF5D6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF4BB0(uint64_t a1)
{
  v2 = sub_29EAF5D6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ThrowsPosixError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEC8, &qword_29EB19138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5D6C();
  sub_29EB14FFC();
  v17 = v9;
  v16 = 0;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  if (!v2)
  {
    v14 = v13;
    v15 = 1;
    sub_29EAF5DC0();
    sub_29EB14E6C();
  }

  return (*(v5 + 8))(v8, v4);
}