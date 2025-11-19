id ActivityWidgetRequest.init(descriptor:metrics:defaultPayload:fileHandle:environment:jindoEnvironment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void **a6, void **a7, char a8, uint64_t a9, uint64_t a10, char *a11, char a12, char a13)
{
  v14 = v13;
  v20 = *a6;
  v63 = *a7;
  v65 = *a11;
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v22 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v23 = sub_192225360();
  v67 = *(v23 - 8);
  v68 = v23;
  v72 = a1;
  (*(v67 + 16))(&v14[v22], a1);
  v71 = a2;
  sub_192156318(a2, &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v24 = &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v24 = a3;
  v24[1] = a4;
  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  KeyPath = swift_getKeyPath();
  v69 = a3;
  v70 = a4;
  sub_1920367C8(a3, a4);
  v64 = a5;
  v26 = v20;
  v27 = v26;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v28 = type metadata accessor for WidgetEnvironment.Storage();
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v29[v30] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v31 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v32 = *&v26[v31];
    swift_beginAccess();
    *&v29[v30] = v32;

    v77.receiver = v29;
    v77.super_class = v28;
    v27 = objc_msgSendSuper2(&v77, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v33 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v34 = type metadata accessor for WidgetEnvironment.Storage();
    v35 = objc_allocWithZone(v34);
    v36 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v35[v36] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v37 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v38 = *&v27[v37];
    swift_beginAccess();
    *&v35[v36] = v38;

    v76.receiver = v35;
    v76.super_class = v34;
    v39 = objc_msgSendSuper2(&v76, sel_init);

    v27 = v39;
  }

  v40 = a13;
  v42 = a9;
  v41 = a10;
  sub_19204C8C0(0, v33);

  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v27;
  if (v63)
  {
    v43 = swift_getKeyPath();
    v44 = v63;
    v45 = v44;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v46 = type metadata accessor for WidgetEnvironment.Storage();
      v47 = objc_allocWithZone(v46);
      v48 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v47[v48] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v49 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v50 = *&v44[v49];
      swift_beginAccess();
      *&v47[v48] = v50;

      v74.receiver = v47;
      v74.super_class = v46;
      v45 = objc_msgSendSuper2(&v74, &selRef_colorGamut);
    }

    sub_19204C8C0(0, v43);

    v51 = swift_getKeyPath();
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v52 = type metadata accessor for WidgetEnvironment.Storage();
      v53 = objc_allocWithZone(v52);
      v54 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v53[v54] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v55 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v56 = *&v45[v55];
      swift_beginAccess();
      *&v53[v54] = v56;

      v73.receiver = v53;
      v73.super_class = v52;
      v57 = objc_msgSendSuper2(&v73, &selRef_colorGamut);

      v45 = v57;
    }

    v41 = a10;
    v40 = a13;
    v42 = a9;
    sub_19204C8C0(0, v51);
  }

  else
  {
    v45 = 0;
  }

  swift_beginAccess();
  v58 = *&v14[v21];
  *&v14[v21] = v45;

  v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v65;
  v59 = &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v59 = v42;
  *(v59 + 1) = v41;
  v59[16] = a8 & 1;
  v59[17] = a12 & 1;
  v59[18] = v40 & 1;
  v60 = type metadata accessor for ActivityWidgetRequest(0);
  v75.receiver = v14;
  v75.super_class = v60;
  v61 = objc_msgSendSuper2(&v75, sel_init);

  sub_192039140(v69, v70);
  sub_192155A84(v71, type metadata accessor for ActivityMetricsDefinition);
  (*(v67 + 8))(v72, v68);
  return v61;
}

uint64_t sub_192153628(void *a1)
{
  v3 = v1;
  v35 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DD0, &qword_192237F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192155888();
  sub_192228B90();
  v33 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  v11 = v33;
  LOBYTE(v32[0]) = 0;
  sub_1920E2830();
  v12 = v11;
  sub_1922288C0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v33) = 2;
    type metadata accessor for ActivityMetricsDefinition();
    sub_1921558DC(&qword_1EADECAC8, type metadata accessor for ActivityMetricsDefinition);
    sub_1922288C0();
    v13 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
    v33 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
    v34 = v13;
    LOBYTE(v32[0]) = 4;
    sub_1920367C8(v33, v13);
    sub_1920593E0();
    sub_1922288C0();
    sub_192039140(v33, v34);
    LOBYTE(v33) = 3;
    sub_192225360();
    sub_1921558DC(&qword_1EADECEE8, MEMORY[0x1E6959B98]);
    sub_1922288C0();
    v14 = v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata;
    v15 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
    LOBYTE(v33) = 5;
    sub_192228870();
    v16 = *(v14 + 17);
    LOBYTE(v33) = 7;
    sub_192228870();
    v17 = *(v14 + 18);
    LOBYTE(v33) = 9;
    sub_192228870();
    if (*(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion) != 3)
    {
      LOBYTE(v33) = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion);
      LOBYTE(v32[0]) = 8;
      sub_1921559A8();
      sub_1922288C0();
    }

    v18 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
    swift_beginAccess();
    v32[0] = *(v3 + v18);
    v31 = 10;
    v19 = v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DE0, &qword_192237F28);
    sub_192155924();
    sub_1922288C0();

    v22 = objc_opt_self();
    v23 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
    v32[0] = 0;
    v24 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v32];
    v25 = v32[0];
    if (v24)
    {
      v26 = sub_192225080();
      v28 = v27;

      v32[0] = v26;
      v32[1] = v28;
      v31 = 1;
      sub_1922288C0();
      (*(v6 + 8))(v9, v5);
      result = sub_192039140(v26, v28);
      goto LABEL_7;
    }

    v29 = v25;
    sub_192224F90();

    swift_willThrow();
  }

  result = (*(v6 + 8))(v9, v5);
LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

char *ActivityWidgetRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityMetricsDefinition();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_192225360();
  v86 = *(v84 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DF8, &qword_192237F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  v89 = *(v13 - 1);
  v14 = v89[8];
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetEnvironment.Storage();
  v16 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v17 = sub_192228140();
  v18 = sub_192227930();
  v83 = [a1 decodeBoolForKey_];

  v19 = sub_192227930();
  v20 = [a1 decodeBoolForKey_];

  v21 = sub_192227930();
  v22 = [a1 decodeBoolForKey_];

  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v23 = sub_192228140();
  if (!v23)
  {
    goto LABEL_5;
  }

  v80 = v20;
  v24 = v23;
  v79 = sub_192227960();
  v26 = v25;

  sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
  v27 = sub_192228140();
  if (!v27)
  {

LABEL_5:

LABEL_6:
    swift_getObjectType();
    v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v78 = v22;
  v81 = v26;
  v28 = v27;
  v29 = sub_192225080();
  v31 = v30;

  v32 = sub_192224F30();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_192224F20();
  sub_1921558DC(qword_1EADEDBB8, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  v82 = v31;
  sub_192224F00();
  v76 = v35;
  v77 = v29;
  (v89[7])(v12, 0, 1, v13);
  v39 = v88;
  sub_19215625C(v12, v88, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  if (!v16)
  {
    sub_192155A84(v39, type metadata accessor for ActivityWidgetRequest.CodingProxy);

    sub_192039140(v77, v82);

    goto LABEL_6;
  }

  if (!v17)
  {
    v68 = v16;
    sub_192155A84(v39, type metadata accessor for ActivityWidgetRequest.CodingProxy);

    sub_192039140(v77, v82);

    goto LABEL_6;
  }

  v72 = *(v86 + 16);
  v40 = v85;
  v89 = v16;
  v74 = v17;
  v41 = v84;
  v72(v85, v39, v84);
  v42 = v39 + v13[5];
  v43 = v87;
  v75 = type metadata accessor for ActivityMetricsDefinition;
  sub_192156318(v42, v87, type metadata accessor for ActivityMetricsDefinition);
  v44 = (v39 + v13[6]);
  v46 = *v44;
  v45 = v44[1];
  v71 = v46;
  v70 = v45;
  v73 = *(v39 + v13[10]);
  v47 = type metadata accessor for ActivityWidgetRequest(0);
  v48 = objc_allocWithZone(v47);
  *&v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v49 = v40;
  v50 = v41;
  v72(&v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor], v49, v41);
  sub_192156318(v43, &v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v51 = &v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  v52 = v71;
  v53 = v70;
  *v51 = v71;
  v51[1] = v53;
  v54 = v74;
  *&v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = v74;
  v55 = v89;
  *&v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v89;
  v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v73;
  v56 = &v48[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  v57 = v81;
  *v56 = v79;
  *(v56 + 1) = v57;
  v56[16] = v83;
  v56[17] = v80;
  v56[18] = v78;
  v58 = v55;
  v59 = v54;
  v89 = v58;
  v60 = v59;
  sub_1920367C8(v52, v53);
  v90.receiver = v48;
  v90.super_class = v47;
  v61 = objc_msgSendSuper2(&v90, sel_init);
  sub_192155A84(v87, v75);
  (*(v86 + 8))(v85, v50);
  swift_getObjectType();
  v62 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v63 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  v64 = sub_192228140();

  sub_192039140(v77, v82);

  v65 = v89;
  sub_192155A84(v88, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  if (v64)
  {
    v66 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
    swift_beginAccess();
    v67 = *&v61[v66];
    *&v61[v66] = v64;
  }

  return v61;
}

uint64_t sub_192154474(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  v9 = sub_192227930();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
  v11 = sub_192227930();
  [a1 encodeObject:v10 forKey:v11];

  v12 = (v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  v13 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v43 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v14 = sub_192227930();
  [a1 encodeBool:v13 forKey:v14];

  v15 = v12[1];
  v42 = *v12;
  v16 = sub_192227930();
  v17 = sub_192227930();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v12 + 17);
  v19 = sub_192227930();
  [a1 encodeBool:v18 forKey:v19];

  v20 = *(v12 + 18);
  v21 = sub_192227930();
  [a1 encodeBool:v20 forKey:v21];

  v22 = sub_192224F70();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_192224F60();
  sub_192224F40();
  v25 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v26 = sub_192225360();
  (*(*(v26 - 8) + 16))(v7, v2 + v25, v26);
  sub_192156318(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics, &v7[v4[5]], type metadata accessor for ActivityMetricsDefinition);
  v27 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion);
  v28 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  v29 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
  v30 = &v7[v4[6]];
  *v30 = v28;
  v30[1] = v29;
  v7[v4[7]] = v43;
  v31 = &v7[v4[8]];
  *v31 = v42;
  *(v31 + 1) = v15;
  v7[v4[9]] = v18;
  v7[v4[10]] = v27;
  sub_1920367C8(v28, v29);
  sub_1921558DC(&unk_1EADECBF0, type metadata accessor for ActivityWidgetRequest.CodingProxy);

  v32 = sub_192224F50();
  v34 = v33;
  sub_192155A84(v7, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  v35 = sub_192225050();
  v36 = sub_192227930();
  [a1 encodeObject:v35 forKey:v36];

  v37 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v38 = *(v2 + v37);
  if (v38)
  {
    v39 = v38;
    v40 = sub_192227930();
    [a1 encodeObject:v39 forKey:v40];
    sub_192039140(v32, v34);
  }

  else
  {
    sub_192039140(v32, v34);
  }
}

id ActivityWidgetRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityWidgetRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityWidgetRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_192154B44@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_192154E50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192154B94()
{
  v0 = sub_192228700();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192154BE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746C7561666564 && a2 == 0xEE0064616F6C7961 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6174537369 && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697472656C417369 && a2 == 0xEA0000000000676ELL || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265)
  {

    return 6;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

char *sub_192154E50(uint64_t *a1)
{
  v2 = sub_192225360();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = v72[8];
  v4 = MEMORY[0x1EEE9AC00](v2);
  v75 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  v74 = type metadata accessor for ActivityMetricsDefinition();
  v8 = *(*(v74 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v74);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0E30, &unk_192238220);
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_192155888();
  v21 = v77;
  sub_192228B70();
  if (!v21)
  {
    v70 = v20;
    v71 = v11;
    v22 = v75;
    v77 = v7;
    LOBYTE(v79) = 2;
    sub_1921558DC(qword_1EADED6F0, type metadata accessor for ActivityMetricsDefinition);
    v23 = v17;
    sub_1922287C0();
    v24 = v13;
    v83 = 0;
    v25 = sub_192044634();
    sub_1922287C0();
    v26 = v79;
    v83 = 4;
    v27 = sub_192047340();
    sub_1922287C0();
    v74 = v27;
    v69 = v25;
    v28 = v79;
    v29 = v80;
    LOBYTE(v79) = 5;
    v82 = sub_192228770();
    LOBYTE(v79) = 6;
    v67 = sub_192228760();
    v68 = v30;
    LOBYTE(v79) = 7;
    v66 = sub_192228770();
    v83 = 8;
    sub_1921562C4();
    sub_192228750();
    v65 = v28;
    v32 = v79;
    LOBYTE(v79) = 9;
    v64 = sub_192228740();
    LOBYTE(v79) = 3;
    sub_1921558DC(&qword_1EADEDED8, MEMORY[0x1E6959B98]);
    sub_1922287C0();
    v33 = v29;
    v62 = v24;
    v83 = 1;
    v63 = v14;
    v74 = v23;
    sub_1922287C0();
    v35 = v79;
    v34 = v80;
    sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
    v60 = v35;
    v61 = v34;
    v36 = sub_192228010();
    v37 = v36;
    if (v36)
    {
      v59 = v72[2];
      v38 = v73;
      v59(v22, v77, v73);
      v58 = type metadata accessor for ActivityMetricsDefinition;
      sub_192156318(v62, v71, type metadata accessor for ActivityMetricsDefinition);
      v70 = type metadata accessor for ActivityWidgetRequest(0);
      v39 = objc_allocWithZone(v70);
      *&v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
      v59(&v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor], v22, v38);
      v40 = v71;
      v41 = v58;
      sub_192156318(v71, &v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], v58);
      v42 = &v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
      v43 = v65;
      *v42 = v65;
      v42[1] = v33;
      *&v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = v37;
      *&v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v26;
      v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v32;
      LOBYTE(v42) = v82 & 1;
      v44 = v66 & 1;
      v45 = &v39[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
      *v45 = v67;
      *(v45 + 1) = v68;
      v45[16] = v42;
      v45[17] = v44;
      v45[18] = v64 & 1;
      sub_1920367C8(v43, v33);
      v81.receiver = v39;
      v81.super_class = v70;
      v46 = v37;
      v70 = v26;
      v18 = objc_msgSendSuper2(&v81, sel_init);
      sub_192155A84(v40, v41);
      v47 = v72[1];
      v47(v75, v73);
      v83 = 10;
      sub_192228750();
      sub_192039140(v60, v61);

      sub_192039140(v65, v33);
      v47(v77, v73);
      sub_192155A84(v62, type metadata accessor for ActivityMetricsDefinition);
      (*(v76 + 8))(v74, v63);
      v54 = v79;
      v55 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
      swift_beginAccess();
      v56 = *&v18[v55];
      *&v18[v55] = v54;

      __swift_destroy_boxed_opaque_existential_1(v78);
      return v18;
    }

    v48 = sub_1922284A0();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v50 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_19222B480;
    v53 = v70;
    *(v52 + 56) = &type metadata for ActivityWidgetRequest.CodingKeys;
    *(v52 + 64) = v53;
    *(v52 + 32) = 1;
    sub_192228480();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6B08], v48);
    swift_willThrow();
    sub_192039140(v60, v61);
    sub_192039140(v65, v33);

    v18 = (v72 + 1);
    (v72[1])(v77, v73);
    sub_192155A84(v62, type metadata accessor for ActivityMetricsDefinition);
    (*(v76 + 8))(v74, v63);
  }

  __swift_destroy_boxed_opaque_existential_1(v78);
  return v18;
}

unint64_t sub_192155888()
{
  result = qword_1EADF0DD8;
  if (!qword_1EADF0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0DD8);
  }

  return result;
}

uint64_t sub_1921558DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_192155924()
{
  result = qword_1EADF0DE8;
  if (!qword_1EADF0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0DE0, &qword_192237F28);
    sub_1920E2830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0DE8);
  }

  return result;
}

unint64_t sub_1921559A8()
{
  result = qword_1EADECB40;
  if (!qword_1EADECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB40);
  }

  return result;
}

uint64_t sub_192155A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DF8, &qword_192237F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192155A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192155AEC()
{
  result = sub_192225360();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ActivityMetricsDefinition();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_192155DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_192155E24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_192155EA0()
{
  sub_192225360();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition();
    if (v1 <= 0x3F)
    {
      sub_192155F60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192155F60()
{
  if (!qword_1EADEDF58)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDF58);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityWidgetRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityWidgetRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192156104()
{
  result = qword_1EADF0E00;
  if (!qword_1EADF0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E00);
  }

  return result;
}

unint64_t sub_19215615C()
{
  result = qword_1EADF0E08;
  if (!qword_1EADF0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E08);
  }

  return result;
}

unint64_t sub_1921561B4()
{
  result = qword_1EADF0E10;
  if (!qword_1EADF0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E10);
  }

  return result;
}

unint64_t sub_192156208()
{
  result = qword_1EADEDF90;
  if (!qword_1EADEDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF90);
  }

  return result;
}

uint64_t sub_19215625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1921562C4()
{
  result = qword_1ED749960;
  if (!qword_1ED749960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749960);
  }

  return result;
}

uint64_t sub_192156318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_192156394()
{
  result = qword_1EADF0E40;
  if (!qword_1EADF0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E40);
  }

  return result;
}

unint64_t sub_1921563EC()
{
  result = qword_1EADEDF78;
  if (!qword_1EADEDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF78);
  }

  return result;
}

unint64_t sub_192156444()
{
  result = qword_1EADEDF80;
  if (!qword_1EADEDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF80);
  }

  return result;
}

uint64_t sub_192156558()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_192225950();
}

uint64_t sub_1921565D0()
{
  sub_1922254B0();
  sub_1922254A0();
  v0 = COERCE_DOUBLE(sub_192225470());
  v2 = v1;

  if (v2)
  {
    v3 = 13.0;
  }

  else
  {
    v3 = v0;
  }

  v4 = type metadata accessor for DatePublisher(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_1921567A8(0x646E6F636573, 0xE600000000000000, v3);
  qword_1EADF0E48 = result;
  return result;
}

uint64_t sub_1921566A4()
{
  v0 = type metadata accessor for DatePublisher(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1921569D8(0x6F63657365766966, 0xEB0000000073646ELL, 5.0);
  qword_1EADF0E58 = result;
  return result;
}

uint64_t sub_192156738(double a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, double), uint64_t *a5)
{
  v9 = type metadata accessor for DatePublisher(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = a4(a3, 0xE800000000000000, a1);
  *a5 = result;
  return result;
}

uint64_t sub_1921567A8(uint64_t a1, uint64_t a2, double a3)
{
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = sub_192225150();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v12 + 16))(v16, v18, v11);
  sub_192225930();
  (*(v12 + 8))(v18, v11);
  (*(v7 + 32))(v3 + v19, v10, v6);
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = 0;
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) = 1.0 / a3;
  v20 = (v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v21 = v24;
  *v20 = a1;
  v20[1] = v21;
  return v3;
}

uint64_t sub_1921569D8(uint64_t a1, uint64_t a2, double a3)
{
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = sub_192225150();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v12 + 16))(v16, v18, v11);
  sub_192225930();
  (*(v12 + 8))(v18, v11);
  (*(v7 + 32))(v3 + v19, v10, v6);
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = 0;
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) = a3;
  v20 = (v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v21 = v24;
  *v20 = a1;
  v20[1] = v21;
  return v3;
}

uint64_t sub_192156C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_192225150();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v65.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65.i8[-v8];
  BSDispatchQueueAssertMain();
  v11 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v10 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name + 8);
  if (qword_1EADECED0 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  v13 = __swift_project_value_buffer(v12, qword_1EAE00740);

  v14 = sub_192225890();
  v15 = sub_192227FB0();

  v16 = os_log_type_enabled(v14, v15);
  v74 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_19202B8CC(v11, v10, aBlock);
    _os_log_impl(&dword_192028000, v14, v15, "startTickingForView %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x193B0C7F0](v18, -1, -1);
    MEMORY[0x193B0C7F0](v17, -1, -1);
  }

  v19 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters;
  swift_beginAccess();
  v20 = *(*(v2 + v19) + 16);
  v73 = a1;
  v69 = v11;
  if (v20)
  {

    v21 = sub_192225890();
    v22 = sub_192227FB0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v68 = v19;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_19202B8CC(v11, v10, aBlock);
      *(v24 + 12) = 2082;
      v76 = a1;
      v26 = sub_192227990();
      v28 = sub_19202B8CC(v26, v27, aBlock);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_192028000, v21, v22, "Publishing %{public}s to new requester %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v25, -1, -1);
      MEMORY[0x193B0C7F0](v24, -1, -1);
    }

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v71;
    v30 = v72;
    (*(v71 + 16))(v70, v9, v72);

    sub_192225960();
    (*(v29 + 8))(v9, v30);
  }

  else
  {
    v68 = v19;
    v31 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v32 = sub_192227930();
    v33 = [v31 initWithIdentifier_];

    v34 = *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer);
    *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = v33;
    v67 = v33;

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    sub_1922250B0();
    v65 = v35;
    v36 = v71;
    v37 = v11;
    v66 = *(v71 + 8);
    v38 = v72;
    v39 = v66(v9, v72);
    *v39.i64 = *v65.i64 - trunc(*v65.i64);
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v41 = 1.0 - *vbslq_s8(vnegq_f64(v40), v39, v65).i64;
    v42 = *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval);
    if (v42 > 1.0)
    {
      v43 = 1.0;
    }

    else
    {
      v43 = 0.05;
    }

    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v44 = sub_192228080();
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = v37;
    v46[4] = v10;
    aBlock[4] = sub_19215E504;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_192037950;
    aBlock[3] = &block_descriptor_1;
    v47 = _Block_copy(aBlock);

    [v67 scheduleRepeatingWithFireInterval:v44 repeatInterval:v47 leewayInterval:v41 queue:v42 handler:v43];
    _Block_release(v47);

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v36 + 16))(v70, v9, v38);

    sub_192225960();
    v66(v9, v38);

    v48 = sub_192225890();
    v49 = sub_192227FB0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136446466;
      *(v50 + 4) = sub_19202B8CC(v69, v10, aBlock);
      *(v50 + 12) = 2082;
      v76 = v73;
      v52 = sub_192227990();
      v54 = sub_19202B8CC(v52, v53, aBlock);

      *(v50 + 14) = v54;
      _os_log_impl(&dword_192028000, v48, v49, "Started machtimer %{public}s %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v51, -1, -1);
      MEMORY[0x193B0C7F0](v50, -1, -1);
    }
  }

  v55 = sub_192225890();
  v56 = sub_192227F80();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136446466;
    v59 = sub_19202B8CC(v69, v10, aBlock);

    *(v57 + 4) = v59;
    *(v57 + 12) = 2082;
    v60 = v73;
    v76 = v73;
    v61 = sub_192227990();
    v63 = sub_19202B8CC(v61, v62, aBlock);

    *(v57 + 14) = v63;
    _os_log_impl(&dword_192028000, v55, v56, "Add reference to %{public}s: %{public}s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v58, -1, -1);
    MEMORY[0x193B0C7F0](v57, -1, -1);
  }

  else
  {

    v60 = v73;
  }

  swift_beginAccess();
  sub_1921C1F1C(&v76, v60);
  return swift_endAccess();
}

uint64_t sub_1921574E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EADECED0 != -1)
    {
      swift_once();
    }

    v15 = sub_1922258B0();
    __swift_project_value_buffer(v15, qword_1EAE00740);

    v16 = sub_192225890();
    v17 = sub_192227F80();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = v6;
      v19 = a3;
      v20 = v18;
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136446210;
      v22 = v19;
      v6 = v24;
      *(v20 + 4) = sub_19202B8CC(v22, a4, &v25);
      _os_log_impl(&dword_192028000, v16, v17, "Tick %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193B0C7F0](v21, -1, -1);
      MEMORY[0x193B0C7F0](v20, -1, -1);
    }

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v7 + 16))(v11, v13, v6);
    sub_192225960();
    return (*(v7 + 8))(v13, v6);
  }

  return result;
}

void sub_19215777C()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name + 8);
  if (qword_1EADECED0 != -1)
  {
    swift_once();
  }

  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1EAE00740);

  v5 = sub_192225890();
  v6 = sub_192227F80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_19202B8CC(v3, v2, v20);
    *(v7 + 12) = 2082;
    v9 = sub_192227990();
    v11 = sub_19202B8CC(v9, v10, v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_192028000, v5, v6, "Remove reference from %{public}s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters;
  swift_beginAccess();
  sub_1921C49B4();
  swift_endAccess();
  if (!*(*(v1 + v12) + 16))
  {

    v13 = sub_192225890();
    v14 = sub_192227FB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136446210;
      v17 = sub_19202B8CC(v3, v2, v20);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_192028000, v13, v14, "Stopped %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }

    else
    {
    }

    v18 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer;
    [*(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) invalidate];
    v19 = *(v1 + v18);
    *(v1 + v18) = 0;
  }
}

uint64_t sub_192157A8C()
{
  v1 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_192157B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192049464();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.tintParameters.getter()
{
  sub_19204149C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_192157C08@<X0>(void *a1@<X8>)
{
  sub_19204149C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void (*EnvironmentValues.tintParameters.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_19204149C();
  sub_1922261E0();
  return sub_192157CF4;
}

void sub_192157CF4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_1922261F0();
    v7 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t EnvironmentValues.isCarPlayDisplay.getter()
{
  sub_1920F74DC();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isCarPlayDisplay.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920F74DC();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_192157E68;
}

uint64_t sub_192157E68(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_192157EA0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

void *sub_192157FE8()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 16);

    sub_192227FA0();
    v9 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_192158138()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    v7 = *(v0 + 32);

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_192158280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for _ClockHandRotationEffect(0);
  sub_19202CFFC(v1 + *(v12 + 32), v11, &qword_1EADF0FE0, &qword_192238860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_19204E300(v11, a1, &qword_1EADEED10, &unk_19222B0F0);
  }

  v14 = *v11;
  sub_192227FA0();
  v15 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_192158468@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for _ClockHandRotationEffect(0);
  sub_19202CFFC(v1 + *(v12 + 36), v11, &qword_1EADF0FE8, &qword_192238868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_19204E300(v11, a1, &qword_1EADEECD0, &qword_1922363D0);
  }

  v14 = *v11;
  sub_192227FA0();
  v15 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_192158650()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 44);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19206A098(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v7;
}

uint64_t sub_1921587B0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 48);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_192158908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v58 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v9 = *(*(v51 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v51);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = sub_192225150();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v49 = *a1;
  v50 = *(a1 + 8);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v23 = type metadata accessor for _ClockHandRotationEffect(0);
  v24 = v23[8];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  swift_storeEnumTagMultiPayload();
  v25 = v23[9];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  swift_storeEnumTagMultiPayload();
  v26 = a3 + v23[10];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a3 + v23[11];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a3 + v23[12];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(a3 + v23[13]) = 0;
  v29 = v23[14];
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v53 = v16[2];
  v53(v20, v22, v15);
  v55 = v29;
  v56 = v20;
  sub_1922274E0();
  v30 = v16[1];
  v52 = v15;
  v57 = v16 + 1;
  v30(v22, v15);
  v31 = v23[15];
  v32 = sub_192224EA0();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  sub_19202CFFC(v14, v12, &qword_1EADEECD0, &qword_1922363D0);
  sub_1922274E0();
  sub_192033970(v14, &qword_1EADEECD0, &qword_1922363D0);
  v33 = a3 + v23[16];
  LODWORD(v59) = 0;
  sub_1922274E0();
  v34 = *(&v60 + 1);
  *v33 = v60;
  *(v33 + 8) = v34;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FA8, &qword_1922385E8);
  sub_1922274E0();
  v35 = v49;
  v36 = a3 + v23[18];
  *v36 = v49;
  v37 = v50;
  *(v36 + 8) = v50;
  v54 = v30;
  if (v37 == 1)
  {
    if (v35 != 0.0)
    {
      if (*&v35 != 1)
      {
LABEL_15:
        if (qword_1EADEE940 != -1)
        {
          swift_once();
        }

        v38 = &qword_1EADF0E48;
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else if (v35 < 43200.0 || v35 > 1.79769313e308)
  {
    if (v35 < 3600.0 || v35 >= 43200.0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (qword_1EADEE950 != -1)
    {
      swift_once();
    }

    v38 = &qword_1EADF0E58;
    goto LABEL_18;
  }

  if (qword_1EADEE948 != -1)
  {
    swift_once();
  }

  v38 = &qword_1EADF0E50;
LABEL_18:
  v39 = v23[17];
  *(a3 + v23[19]) = *v38;
  v59 = 0;

  sub_1922274E0();

  *(a3 + v39) = v60;
  v40 = v23[21];
  v41 = sub_192225300();
  v42 = *(v41 - 8);
  v43 = a3 + v40;
  v44 = v58;
  (*(v42 + 16))(v43, v58, v41);
  v45 = (a3 + v23[20]);
  *v45 = a4;
  v45[1] = a5;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v46 = v52;
  v53(v56, v22, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  sub_192227500();
  (*(v42 + 8))(v44, v41);
  return v54(v22, v46);
}

uint64_t sub_192158F5C()
{
  v1 = 0x646F69726570;
  if (*v0 != 1)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t sub_192158FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19215E3F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192158FD8(uint64_t a1)
{
  v2 = sub_19215932C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192159014(uint64_t a1)
{
  v2 = sub_19215932C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ClockHandRotationEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_192225300();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E68, &qword_1922383D0);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19215932C();
  sub_192228B70();
  if (!v2)
  {
    v13 = v8;
    v14 = v19;
    type metadata accessor for CGPoint(0);
    v23 = 0;
    sub_19203FFCC(&qword_1EADECA50, type metadata accessor for CGPoint);
    sub_1922287C0();
    v15 = v21;
    v16 = v22;
    LOBYTE(v21) = 1;
    sub_192228780();
    v21 = v17;
    LOBYTE(v22) = 0;
    v23 = 2;
    sub_19203FFCC(&qword_1EADECEF0, MEMORY[0x1E6969BC0]);
    sub_1922287C0();
    sub_192158908(&v21, v7, v14, v15, v16);
    (*(v13 + 8))(v11, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19215932C()
{
  result = qword_1ED748598;
  if (!qword_1ED748598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748598);
  }

  return result;
}

uint64_t _ClockHandRotationEffect.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E70, &qword_1922383D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19215932C();
  sub_192228B90();
  v11 = type metadata accessor for _ClockHandRotationEffect(0);
  v17 = *(v3 + v11[20]);
  v16[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_19203FFCC(&qword_1EADECA58, type metadata accessor for CGPoint);
  sub_1922288C0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3 + v11[18];
  if (*(v13 + 8))
  {
    v14 = dbl_192238A08[*v13];
  }

  LOBYTE(v17) = 1;
  sub_192228880();
  v15 = v11[21];
  LOBYTE(v17) = 2;
  sub_192225300();
  sub_19203FFCC(&qword_1EADECEF8, MEMORY[0x1E6969BC0]);
  sub_1922288C0();
  return (*(v6 + 8))(v9, v5);
}

double sub_192159618()
{
  v1 = v0;
  v2 = type metadata accessor for _ClockHandRotationEffect(0);
  v3 = v0 + v2[21];
  v4 = sub_1922252D0();
  sub_1922250B0();
  v6 = v5 + v4;
  v7 = v1 + v2[18];
  if (*(v7 + 8))
  {
    v8 = dbl_192238A08[*v7];
  }

  else
  {
    v8 = *v7;
  }

  v9 = fmod(v6, v8);
  v15 = *(v1 + v2[17]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  if (!v14)
  {
    goto LABEL_12;
  }

  if (*(v14 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) < 1.0)
  {

    goto LABEL_12;
  }

  v10 = *v7;
  v11 = *(v7 + 8);

  if (v11 != 1)
  {
    if (v10 > 60.0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*&v10 >= 2uLL)
  {
LABEL_11:
    v9 = round(v9 * 60.0) / 60.0;
  }

LABEL_12:
  if (*(v7 + 8))
  {
    v12 = dbl_192238A08[*v7];
  }

  else
  {
    v12 = *v7;
  }

  return (v9 + v9) * 3.14159265 / v12;
}

unint64_t sub_192159780()
{
  result = qword_1EADF0E98;
  if (!qword_1EADF0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0E88, &qword_1922383F0);
    sub_192031E74(&qword_1EADF0EA0, &qword_1EADF0E90, &qword_1922383F8);
    sub_19206CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E98);
  }

  return result;
}

unint64_t sub_192159838()
{
  result = qword_1EADF0EA8;
  if (!qword_1EADF0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0E78, &qword_1922383E0);
    sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_192049464();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1920494E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0EA8);
  }

  return result;
}

uint64_t sub_192159B04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192159B88()
{
  result = qword_1EADECE28;
  if (!qword_1EADECE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F00, &qword_192238450);
    sub_192159C40();
    sub_192031E74(&qword_1EADECD10, &qword_1EADF0F20, &qword_192238470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE28);
  }

  return result;
}

unint64_t sub_192159C40()
{
  result = qword_1EADECE38;
  if (!qword_1EADECE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F08, &qword_192238458);
    sub_192159CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE38);
  }

  return result;
}

unint64_t sub_192159CCC()
{
  result = qword_1EADECE48;
  if (!qword_1EADECE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F10, &qword_192238460);
    sub_192031E74(&qword_1EADECD78, &qword_1EADF0F18, &qword_192238468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE48);
  }

  return result;
}

unint64_t sub_192159D84()
{
  result = qword_1EADF0F30;
  if (!qword_1EADF0F30)
  {
    sub_19202A7A8(255, &qword_1EADF0F38, 0x1E6994428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0F30);
  }

  return result;
}

uint64_t sub_192159DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD0, &qword_192238820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v141 = &v116 - v6;
  v7 = type metadata accessor for _ClockHandRotationEffect(0);
  v150 = *(v7 - 8);
  v8 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v149 = v9;
  v147 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v10 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v146 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v116 - v14;
  v16 = sub_192225150();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F18, &qword_192238468);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v116 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F10, &qword_192238460);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v116 - v28;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F08, &qword_192238458);
  v30 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v143 = &v116 - v31;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F00, &qword_192238450);
  v32 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v116 - v33;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EF8, &qword_192238448);
  v34 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v116 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EF0, &qword_192238440);
  v36 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v117 = &v116 - v37;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EE8, &qword_192238438);
  v124 = *(v125 - 8);
  v38 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v116 - v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0ED8, &qword_192238428);
  v126 = *(v128 - 8);
  v40 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v144 = &v116 - v41;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0ED0, &qword_192238420);
  v129 = *(v131 - 8);
  v42 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v127 = &v116 - v43;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EC8, &qword_192238418);
  v132 = *(v134 - 8);
  v44 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v116 - v45;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EC0, &unk_192238408);
  v135 = *(v136 - 8);
  v46 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v116 - v47;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
  v138 = *(v139 - 8);
  v48 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v116 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E90, &qword_1922383F8);
  (*(*(v50 - 8) + 16))(v24, a1, v50);
  if (sub_19215B0E0())
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 1.0;
  }

  sub_19204E300(v24, v29, &qword_1EADF0F18, &qword_192238468);
  v52 = *(v26 + 44);
  v53 = v2;
  *&v29[v52] = v51;
  sub_192158280(v15);
  v54 = *(v17 + 48);
  if (v54(v15, 1, v16) == 1)
  {
    v55 = *(v7 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
    sub_1922274F0();
    if (v54(v15, 1, v16) != 1)
    {
      sub_192033970(v15, &qword_1EADEED10, &unk_19222B0F0);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  v145 = v7;
  v56 = *(v7 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  v57 = v146;
  sub_1922274F0();
  v58 = sub_1920490B8(v20, v57);
  sub_192033970(v57, &qword_1EADEECD0, &qword_1922363D0);
  (*(v17 + 8))(v20, v16);
  sub_1922276A0();
  v60 = v59;
  v62 = v61;
  v63 = v143;
  sub_19204E300(v29, v143, &qword_1EADF0F10, &qword_192238460);
  v64 = (v63 + *(v119 + 36));
  *v64 = v58;
  *(v64 + 1) = v60;
  *(v64 + 2) = v62;
  KeyPath = swift_getKeyPath();
  v66 = v121;
  v67 = &v121[*(v118 + 36)];
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F20, &qword_192238470) + 28);
  v69 = *MEMORY[0x1E697E7D0];
  v70 = sub_192225C60();
  (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
  *v67 = KeyPath;
  sub_19204E300(v63, v66, &qword_1EADF0F08, &qword_192238458);
  v71 = v147;
  sub_19204938C(v53, v147);
  v72 = (*(v150 + 80) + 16) & ~*(v150 + 80);
  v73 = *(v150 + 80);
  v74 = swift_allocObject();
  sub_1920493F0(v71, v74 + v72);
  v75 = v122;
  sub_19204E300(v66, v122, &qword_1EADF0F00, &qword_192238450);
  v76 = (v75 + *(v120 + 36));
  *v76 = sub_19215E510;
  v76[1] = v74;
  v76[2] = 0;
  v76[3] = 0;
  sub_19204938C(v53, v71);
  v143 = v73;
  v77 = swift_allocObject();
  sub_1920493F0(v71, v77 + v72);
  v78 = v117;
  sub_19204E300(v75, v117, &qword_1EADF0EF8, &qword_192238448);
  v79 = v148;
  v80 = (v78 + *(v148 + 36));
  *v80 = 0;
  v80[1] = 0;
  v80[2] = sub_19215E934;
  v80[3] = v77;
  LOBYTE(v152) = sub_192157EA0() & 1;
  sub_19204938C(v53, v71);
  v81 = swift_allocObject();
  sub_1920493F0(v71, v81 + v72);
  v82 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
  v150 = v53;
  v83 = v123;
  sub_1922271F0();

  sub_192033970(v78, &qword_1EADF0EF0, &qword_192238440);
  LOBYTE(v151) = sub_192158138() & 1;
  sub_19204938C(v150, v71);
  v84 = swift_allocObject();
  sub_1920493F0(v71, v84 + v72);
  *&v152 = v79;
  *(&v152 + 1) = MEMORY[0x1E69E6370];
  v153 = v82;
  v154 = MEMORY[0x1E69E6388];
  v148 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v125;
  sub_1922271F0();

  (*(v124 + 8))(v83, v86);
  v87 = sub_192157FE8();
  v151 = v87;
  sub_19204938C(v150, v71);
  v88 = swift_allocObject();
  sub_1920493F0(v71, v88 + v72);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EE0, &qword_192238430);
  *&v152 = v86;
  *(&v152 + 1) = MEMORY[0x1E69E6370];
  v153 = OpaqueTypeConformance2;
  v154 = MEMORY[0x1E69E6388];
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_192049464();
  v91 = v127;
  v92 = v128;
  v93 = v144;
  sub_1922271F0();

  (*(v126 + 8))(v93, v92);
  LOBYTE(v151) = sub_1921587B0() & 1;
  sub_19204938C(v150, v71);
  v94 = swift_allocObject();
  sub_1920493F0(v71, v94 + v72);
  *&v152 = v92;
  *(&v152 + 1) = v124;
  v153 = v89;
  v154 = v90;
  v144 = swift_getOpaqueTypeConformance2();
  v95 = v130;
  v96 = v131;
  sub_1922271F0();

  (*(v129 + 8))(v91, v96);
  v97 = (v150 + *(v145 + 64));
  v98 = *v97;
  v99 = *(v97 + 1);
  LODWORD(v152) = v98;
  *(&v152 + 1) = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  sub_1922274F0();
  sub_19204938C(v150, v71);
  v100 = swift_allocObject();
  sub_1920493F0(v71, v100 + v72);
  *&v152 = v96;
  *(&v152 + 1) = MEMORY[0x1E69E6370];
  v153 = v144;
  v154 = MEMORY[0x1E69E6388];
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v133;
  v103 = v134;
  sub_1922271F0();

  (*(v132 + 8))(v95, v103);
  v104 = v146;
  sub_192158468(v146);
  sub_19204938C(v150, v71);
  v105 = swift_allocObject();
  v144 = v72;
  sub_1920493F0(v71, v105 + v72);
  *&v152 = v103;
  *(&v152 + 1) = MEMORY[0x1E69E7668];
  v153 = v101;
  v106 = v150;
  v154 = MEMORY[0x1E69E7688];
  swift_getOpaqueTypeConformance2();
  sub_1920494E8();
  v107 = v137;
  v108 = v136;
  sub_1922271F0();

  sub_192033970(v104, &qword_1EADEECD0, &qword_1922363D0);
  (*(v135 + 8))(v102, v108);
  v152 = *(v106 + *(v145 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  if (v151)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
    v109 = v141;
    sub_192225940();
    swift_endAccess();

    v110 = 0;
  }

  else
  {
    v109 = v141;
    v110 = 1;
  }

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1000, &qword_192238880);
  (*(*(v111 - 8) + 56))(v109, v110, 1, v111);
  v112 = v147;
  sub_19204938C(v106, v147);
  v113 = v144;
  v114 = swift_allocObject();
  sub_1920493F0(v112, &v113[v114]);
  sub_19215CBFC(v109, sub_19215EBC0, v114, v142);

  sub_192033970(v109, &qword_1EADF0FD0, &qword_192238820);
  return (*(v138 + 8))(v107, v139);
}

uint64_t sub_19215B0E0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 72);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      if (*&v11 < 2uLL)
      {
LABEL_8:
        v9 = 0;
        return v9 & 1;
      }
    }

    else
    {
      v12 = *v10;
      if (v11 > 60.0)
      {
        goto LABEL_8;
      }
    }

    v13 = sub_192157FE8();
    if (!v13 || (v14 = v13, v15 = [v13 glassOptions], v14, !v15) || (v16 = objc_msgSend(v15, sel_wantsSubduedGlass), v15, (v16 & 1) == 0))
    {
      v9 = sub_192157EA0();
      return v9 & 1;
    }

    goto LABEL_5;
  }

  v7 = *(v0 + 48);

  sub_192227FA0();
  v8 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  sub_192049898(v6, 0);
  (*(v2 + 8))(v5, v1);
  if ((v18[15] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v9 = 1;
  return v9 & 1;
}

uint64_t sub_19215B2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ClockHandRotationEffect(0);
  v10 = (a1 + *(v9 + 64));
  v11 = *v10;
  v12 = *(v10 + 1);
  v17 = *v10;
  v18 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  result = sub_1922274F0();
  if (v19 == -1)
  {
    __break(1u);
  }

  else
  {
    v15[1] = v19 + 1;
    v15[2] = v11;
    v16 = v12;
    sub_192227500();

    sub_192158468(v8);
    v14 = *(v9 + 60);
    sub_19202CFFC(v8, v6, &qword_1EADEECD0, &qword_1922363D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
    sub_192227500();
    return sub_192033970(v8, &qword_1EADEECD0, &qword_1922363D0);
  }

  return result;
}

uint64_t sub_19215B46C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for _ClockHandRotationEffect(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  result = sub_1922274F0();
  if (v5)
  {
    sub_192227500();

    return sub_19215B540(0xD000000000000013, 0x800000019224C080);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19215B540(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v135 = a1;
  v5 = sub_192225150();
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = *(v129 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v127 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v123 - v9;
  v10 = sub_1922261D0();
  v132 = *(v10 - 8);
  v133 = v10;
  v11 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ClockHandRotationEffect(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v123 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v123 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v123 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v123 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v123 - v31;
  v33 = v2 + *(v30 + 64);
  v34 = *v33;
  v35 = *(v33 + 8);
  LODWORD(v137) = v34;
  v138 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  sub_1922274F0();
  if (!v136 || (sub_192158138() & 1) != 0)
  {
    if (qword_1EADECED8 != -1)
    {
      swift_once();
    }

    v36 = sub_1922258B0();
    __swift_project_value_buffer(v36, qword_1EAE00758);
    sub_19204938C(v2, v20);
    sub_19204938C(v2, v17);

    v37 = sub_192225890();
    v38 = sub_192227FB0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v137 = v40;
      *v39 = 136446722;
      v41 = &v20[v13[10]];
      v42 = *v41;
      LODWORD(v41) = v41[8];
      v126 = v13;
      v134 = a2;
      if (v41 == 1)
      {
        v43 = v42;
        if (v42)
        {
LABEL_8:
          v44 = [v42 description];

          v45 = sub_192227960();
          v47 = v46;

LABEL_16:
          sub_19204FEDC(v20);
          v52 = sub_19202B8CC(v45, v47, &v137);

          *(v39 + 4) = v52;
          *(v39 + 12) = 2080;
          v13 = v126;
          v53 = *&v17[v126[13]];
          v136 = sub_192227630();
          v54 = sub_192227990();
          v56 = v55;
          sub_19204FEDC(v17);
          v57 = sub_19202B8CC(v54, v56, &v137);

          *(v39 + 14) = v57;
          *(v39 + 22) = 2082;
          *(v39 + 24) = sub_19202B8CC(v135, v134, &v137);
          _os_log_impl(&dword_192028000, v37, v38, "Widget: %{public}s - %s Stopped date publishing because view is hidden or animations are paused. Reason: %{public}s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v40, -1, -1);
          v58 = v39;
LABEL_17:
          MEMORY[0x193B0C7F0](v58, -1, -1);

          goto LABEL_18;
        }
      }

      else
      {

        sub_192227FA0();
        v50 = sub_192226D00();
        sub_1922257A0();

        v51 = v131;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        sub_19209561C(v42, 0);
        (*(v132 + 8))(v51, v133);
        v42 = v136;
        if (v136)
        {
          goto LABEL_8;
        }
      }

      v45 = 7104878;
      v47 = 0xE300000000000000;
      goto LABEL_16;
    }

    sub_19204FEDC(v17);
    v48 = v20;
LABEL_10:
    sub_19204FEDC(v48);
LABEL_18:
    v59 = (v3 + v13[17]);
    v60 = *v59;
    v61 = v59[1];
    v137 = *v59;
    v138 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
    sub_1922274F0();
    if (v136)
    {
      v62 = *(v3 + v13[13]);
      sub_192227630();
      sub_19215777C();
    }

    v137 = v60;
    v138 = v61;
    v136 = 0;
    return sub_192227500();
  }

  v134 = a2;
  v49 = v2 + v13[18];
  if (*(v49 + 8) == 1)
  {
    if (*v49 < 2uLL)
    {
      goto LABEL_31;
    }
  }

  else if (*v49 > 60.0)
  {
    goto LABEL_31;
  }

  v64 = sub_192157FE8();
  if (v64 && (v65 = v64, v66 = [v64 glassOptions], v65, v66) && (v67 = objc_msgSend(v66, sel_wantsSubduedGlass), v66, (v67 & 1) != 0) || (sub_192157EA0() & 1) != 0)
  {
    if (qword_1EADECED8 != -1)
    {
      swift_once();
    }

    v68 = sub_1922258B0();
    __swift_project_value_buffer(v68, qword_1EAE00758);
    sub_19204938C(v3, v32);
    sub_19204938C(v3, v29);

    v37 = sub_192225890();
    v69 = sub_192227FB0();

    if (os_log_type_enabled(v37, v69))
    {
      v70 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v137 = v130;
      *v70 = 136446722;
      v71 = &v32[v13[10]];
      v72 = *v71;
      if (v71[8] == 1)
      {
        v73 = v72;
      }

      else
      {

        sub_192227FA0();
        v109 = sub_192226D00();
        sub_1922257A0();

        v110 = v131;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        sub_19209561C(v72, 0);
        (*(v132 + 8))(v110, v133);
        v72 = v136;
      }

      v111 = v13;
      if (v72)
      {
        v112 = [v72 description];

        v113 = sub_192227960();
        v115 = v114;
      }

      else
      {
        v113 = 7104878;
        v115 = 0xE300000000000000;
      }

      sub_19204FEDC(v32);
      v116 = sub_19202B8CC(v113, v115, &v137);

      *(v70 + 4) = v116;
      *(v70 + 12) = 2080;
      v13 = v111;
      v117 = *&v29[v111[13]];
      v136 = sub_192227630();
      v118 = sub_192227990();
      v120 = v119;
      sub_19204FEDC(v29);
      v121 = sub_19202B8CC(v118, v120, &v137);

      *(v70 + 14) = v121;
      *(v70 + 22) = 2082;
      *(v70 + 24) = sub_19202B8CC(v135, v134, &v137);
      _os_log_impl(&dword_192028000, v37, v69, "Widget: %{public}s - %s Stopping date publishing ticking because we should pause second hands. Reason: %{public}s", v70, 0x20u);
      v122 = v130;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v122, -1, -1);
      v58 = v70;
      goto LABEL_17;
    }

    sub_19204FEDC(v29);
    v48 = v32;
    goto LABEL_10;
  }

LABEL_31:
  if (qword_1EADECED8 != -1)
  {
    swift_once();
  }

  v74 = sub_1922258B0();
  __swift_project_value_buffer(v74, qword_1EAE00758);
  sub_19204938C(v3, v26);
  sub_19204938C(v3, v23);

  v75 = sub_192225890();
  v76 = sub_192227FB0();

  if (!os_log_type_enabled(v75, v76))
  {

    sub_19204FEDC(v23);
    sub_19204FEDC(v26);
    goto LABEL_41;
  }

  v77 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  v137 = v124;
  *v77 = 136446722;
  v78 = &v26[v13[10]];
  v79 = *v78;
  LODWORD(v78) = v78[8];
  v125 = v76;
  if (v78 != 1)
  {

    sub_192227FA0();
    v86 = sub_192226D00();
    sub_1922257A0();

    v87 = v131;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(v79, 0);
    (*(v132 + 8))(v87, v133);
    v79 = v136;
    v81 = v13;
    if (v136)
    {
      goto LABEL_36;
    }

LABEL_39:
    v83 = 7104878;
    v85 = 0xE300000000000000;
    goto LABEL_40;
  }

  v80 = v79;
  v81 = v13;
  if (!v79)
  {
    goto LABEL_39;
  }

LABEL_36:
  v82 = [v79 description];

  v83 = sub_192227960();
  v85 = v84;

LABEL_40:
  sub_19204FEDC(v26);
  v88 = sub_19202B8CC(v83, v85, &v137);

  *(v77 + 4) = v88;
  *(v77 + 12) = 2080;
  v13 = v81;
  v89 = *&v23[v81[13]];
  v136 = sub_192227630();
  v90 = sub_192227990();
  v92 = v91;
  sub_19204FEDC(v23);
  v93 = sub_19202B8CC(v90, v92, &v137);

  *(v77 + 14) = v93;
  *(v77 + 22) = 2082;
  *(v77 + 24) = sub_19202B8CC(v135, v134, &v137);
  _os_log_impl(&dword_192028000, v75, v125, "Widget: %{public}s - %s Resuming date publishing because we're visible and animations are not effectively paused. Reason: %{public}s", v77, 0x20u);
  v94 = v124;
  swift_arrayDestroy();
  MEMORY[0x193B0C7F0](v94, -1, -1);
  MEMORY[0x193B0C7F0](v77, -1, -1);

LABEL_41:
  v95 = *(v49 + 8);
  v137 = *v49;
  LOBYTE(v138) = v95;
  v96 = sub_1921587B0();
  v97 = sub_19215E284(v96 & 1);
  v98 = (v3 + v13[17]);
  v99 = *v98;
  v100 = v98[1];
  v137 = *v98;
  v138 = v100;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  v101 = v136;
  if (!v136 || (, v97 != v101))
  {
    v137 = v99;
    v138 = v100;
    sub_1922274F0();
    if (v136)
    {
      v102 = *(v3 + v13[13]);
      sub_192227630();
      sub_19215777C();
    }

    v137 = v99;
    v138 = v100;
    v136 = v97;

    sub_192227500();
    v137 = v99;
    v138 = v100;
    sub_1922274F0();
    if (v136)
    {
      v103 = *(v3 + v13[13]);
      v104 = sub_192227630();
      sub_192156C00(v104);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v105 = v128;
  sub_192225950();

  v106 = v13[14];
  v108 = v129;
  v107 = v130;
  (*(v129 + 16))(v127, v105, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  sub_192227500();

  return (*(v108 + 8))(v105, v107);
}

uint64_t sub_19215C30C(uint64_t a1)
{
  v2 = type metadata accessor for _ClockHandRotationEffect(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - v7;
  if (qword_1EADECED8 != -1)
  {
    swift_once();
  }

  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1EAE00758);
  sub_19204938C(a1, v8);
  sub_19204938C(a1, v6);
  v10 = sub_192225890();
  v11 = sub_192227FB0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    v14 = *&v8[*(v2 + 52)];
    v24 = sub_192227630();
    v15 = sub_192227990();
    v17 = v16;
    sub_19204FEDC(v8);
    v18 = sub_19202B8CC(v15, v17, &v26);

    *(v12 + 4) = v18;
    *(v12 + 12) = 1024;
    v19 = &v6[*(v2 + 64)];
    v20 = *v19;
    v21 = *(v19 + 1);
    LODWORD(v24) = v20;
    v25 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
    sub_1922274F0();
    LODWORD(v18) = v23[1];
    sub_19204FEDC(v6);
    *(v12 + 14) = v18;
    _os_log_impl(&dword_192028000, v10, v11, "%s Visibility changed: %u", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  else
  {
    sub_19204FEDC(v6);

    sub_19204FEDC(v8);
  }

  return sub_19215B540(0xD000000000000012, 0x800000019224BFE0);
}

uint64_t sub_19215C598(uint64_t a1)
{
  v2 = sub_1922261D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 32);
  if (*(a1 + 40) != 1)
  {
    v9 = *(a1 + 32);

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v8, 0);
    result = (*(v3 + 8))(v7, v2);
    if (v12[15])
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v11 = sub_192227620();
    MEMORY[0x1EEE9AC00](v11);
    *&v12[-16] = a1;
    sub_192225BA0();
  }

  return result;
}

uint64_t sub_19215C758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  sub_192158468(v9 - v5);
  v7 = *(type metadata accessor for _ClockHandRotationEffect(0) + 60);
  sub_19202CFFC(v6, v4, &qword_1EADEECD0, &qword_1922363D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  sub_192227500();
  return sub_192033970(v6, &qword_1EADEECD0, &qword_1922363D0);
}

uint64_t sub_19215C870(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = &v31 - v14;
  v15 = sub_1922261D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v21)
    {
      return result;
    }
  }

  else
  {
    v31 = result;

    sub_192227FA0();
    v22 = sub_192226D00();
    v32 = a1;
    v23 = v22;
    sub_1922257A0();

    a1 = v32;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v21, 0);
    result = (*(v16 + 8))(v20, v31);
    if (v34)
    {
      return result;
    }
  }

  v24 = type metadata accessor for _ClockHandRotationEffect(0);
  v25 = *(v24 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  v26 = v33;
  sub_1922274F0();
  v27 = sub_192224EA0();
  v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
  result = sub_192033970(v26, &qword_1EADEECD0, &qword_1922363D0);
  if (v28 == 1)
  {
    v29 = *(v5 + 16);
    v29(v11, a1, v4);
    v30 = *(v24 + 56);
    v29(v9, v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
    sub_192227500();
    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_19215CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v60 = a2;
  v63 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1008, &qword_192238888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EB8, &qword_192238400);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD0, &qword_192238820);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1000, &qword_192238880);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  sub_19202CFFC(a1, v15, &qword_1EADF0FD0, &qword_192238820);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_192033970(v15, &qword_1EADF0FD0, &qword_192238820);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
    (*(*(v21 - 8) + 16))(v8, v62, v21);
    swift_storeEnumTagMultiPayload();
    v62 = sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    v27 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    v28 = MEMORY[0x1E69E6370];
    v65 = v26;
    v66 = MEMORY[0x1E69E6370];
    v29 = MEMORY[0x1E69E6388];
    v67 = v27;
    v68 = MEMORY[0x1E69E6388];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = v25;
    v66 = v28;
    v67 = OpaqueTypeConformance2;
    v68 = v29;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = sub_192049464();
    v65 = v23;
    v66 = v24;
    v67 = v31;
    v68 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v65 = v22;
    v66 = v28;
    v67 = v33;
    v68 = v29;
    v34 = swift_getOpaqueTypeConformance2();
    v65 = v59;
    v66 = MEMORY[0x1E69E7668];
    v67 = v34;
    v68 = MEMORY[0x1E69E7688];
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_1920494E8();
    v65 = v61;
    v66 = v60;
    v67 = v35;
    v68 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_1922266E0();
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
    (*(*(v59 - 8) + 16))(v11, v62, v59);
    v38 = v64;
    (*(v17 + 16))(&v11[*(v64 + 52)], v20, v16);
    v39 = &v11[*(v38 + 56)];
    v40 = v61;
    *v39 = v60;
    v39[1] = v40;
    v58 = v8;
    sub_19202CFFC(v11, v8, &qword_1EADF0EB8, &qword_192238400);
    swift_storeEnumTagMultiPayload();
    v62 = sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400);

    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    v45 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    v46 = MEMORY[0x1E69E6370];
    v65 = v44;
    v66 = MEMORY[0x1E69E6370];
    v47 = MEMORY[0x1E69E6388];
    v67 = v45;
    v68 = MEMORY[0x1E69E6388];
    v48 = swift_getOpaqueTypeConformance2();
    v65 = v43;
    v66 = v46;
    v67 = v48;
    v68 = v47;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_192049464();
    v65 = v41;
    v66 = v42;
    v67 = v49;
    v68 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v65 = v56;
    v66 = v46;
    v67 = v51;
    v68 = v47;
    v52 = swift_getOpaqueTypeConformance2();
    v65 = v57;
    v66 = MEMORY[0x1E69E7668];
    v67 = v52;
    v68 = MEMORY[0x1E69E7688];
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_1920494E8();
    v65 = v61;
    v66 = v60;
    v67 = v53;
    v68 = v54;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    sub_192033970(v11, &qword_1EADF0EB8, &qword_192238400);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_19215D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203FFCC(&qword_1ED748728, type metadata accessor for _ClockHandRotationEffect);

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19215D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203FFCC(&qword_1ED748728, type metadata accessor for _ClockHandRotationEffect);

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t View._clockHandRotationEffect(_:in:anchor:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v60 = a2;
  v65 = a4;
  v66 = a5;
  v11 = sub_192225300();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ClockHandRotationEffect(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_192225C70();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v52 - v25;
  v54 = *(a3 - 8);
  v27 = *(v54 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v53 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v52 - v30;
  v31 = sub_1922266F0();
  v63 = *(v31 - 8);
  v64 = v31;
  v32 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v62 = &v52 - v33;
  v56 = *a1;
  v55 = *(a1 + 8);
  v34 = [objc_opt_self() mainBundle];
  v35 = [v34 bundleIdentifier];

  if (v35)
  {
    sub_192227960();
  }

  if (qword_1EADEE8D0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least() && (sub_192227A10() & 1) == 0)
  {
    v47 = sub_192227A10();

    if ((v47 & 1) == 0)
    {
      v48 = v52;
      v37 = v65;
      sub_1921BB14C(v61, a3, v65);
      v49 = v53;
      sub_1921BB14C(v48, a3, v37);
      v50 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect);
      v67 = v37;
      v68 = v50;
      swift_getWitnessTable();
      v41 = v62;
      sub_19202F62C(v49, a3);
      v51 = *(v54 + 8);
      v51(v49, a3);
      v51(v48, a3);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v75 = v56;
  v76 = v55;
  v36 = v57;
  (*(v58 + 16))(v57, v60, v59);
  sub_192158908(&v75, v36, v17, a6, a7);
  v37 = v65;
  MEMORY[0x193B0A190](v17, a3, v14, v65);
  sub_19204FEDC(v17);
  v38 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect);
  v73 = v37;
  v74 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(v23, v18, WitnessTable);
  v40 = *(v19 + 8);
  v40(v23, v18);
  sub_1921BB14C(v26, v18, WitnessTable);
  v41 = v62;
  sub_1921BAB5C(v23, a3, v18);
  v40(v23, v18);
  v40(v26, v18);
LABEL_9:
  v42 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect);
  v71 = v37;
  v72 = v42;
  v43 = swift_getWitnessTable();
  v69 = v37;
  v70 = v43;
  v44 = v64;
  v45 = swift_getWitnessTable();
  sub_1921BB14C(v41, v44, v45);
  return (*(v63 + 8))(v41, v44);
}

void sub_19215DD34()
{
  sub_19203FF6C(319, &qword_1ED748808, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for _ClockHandRotationEffect.Period(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ClockHandRotationEffect.Period(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19215DE88(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19215DEA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_19215DED4()
{
  result = qword_1EADF0FB0;
  if (!qword_1EADF0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0FB8, &qword_192238608);
    sub_192159780();
    sub_192159838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0FB0);
  }

  return result;
}

unint64_t sub_19215DF94()
{
  result = qword_1EADF0FC0;
  if (!qword_1EADF0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0FC0);
  }

  return result;
}

unint64_t sub_19215DFEC()
{
  result = qword_1ED7485A0;
  if (!qword_1ED7485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485A0);
  }

  return result;
}

unint64_t sub_19215E044()
{
  result = qword_1ED7485A8;
  if (!qword_1ED7485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485A8);
  }

  return result;
}

uint64_t sub_19215E098(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_192225950();
}

uint64_t sub_19215E114(uint64_t a1, uint64_t *a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_192225960();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_19215E284(char a1)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    if (v2 != 0.0)
    {
      if (*&v2 != 1)
      {
        if (a1)
        {
LABEL_5:
          if (qword_1EADEE958 != -1)
          {
            swift_once();
          }

          v3 = &qword_1EADF0E60;
          return *v3;
        }

        goto LABEL_18;
      }

LABEL_24:
      if (qword_1EADEE950 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EADF0E58;
      return *v3;
    }
  }

  else
  {
    v4 = *v1;
    if (v2 < 43200.0 || v4 > 1.79769313e308)
    {
      if (v4 < 3600.0 || v4 >= 43200.0)
      {
        if (a1)
        {
          goto LABEL_5;
        }

LABEL_18:
        if (qword_1EADEE940 != -1)
        {
          swift_once();
        }

        v3 = &qword_1EADF0E48;
        return *v3;
      }

      goto LABEL_24;
    }
  }

  if (qword_1EADEE948 != -1)
  {
    swift_once();
  }

  v3 = &qword_1EADF0E50;
  return *v3;
}

uint64_t sub_19215E3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for _ClockHandRotationEffect(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_192049898(*v3, *(v3 + 8));
  sub_19209561C(*(v3 + 16), *(v3 + 24));
  sub_192049898(*(v3 + 32), *(v3 + 40));
  sub_192049898(*(v3 + 48), *(v3 + 56));
  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_192225150();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
    v7 = *(v3 + v4);
  }

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_192224EA0();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
    v11 = *(v3 + v8);
  }

  sub_19209561C(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  sub_19206A098(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  sub_192049898(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  v12 = v3 + v1[14];
  v13 = sub_192225150();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8) + 28));

  v15 = v3 + v1[15];
  v16 = sub_192224EA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0) + 28));

  v19 = *(v3 + v1[16] + 8);

  v20 = (v3 + v1[17]);
  v21 = *v20;

  v22 = v20[1];

  v23 = *(v3 + v1[19]);

  v24 = v1[21];
  v25 = sub_192225300();
  (*(*(v25 - 8) + 8))(v3 + v24, v25);

  return swift_deallocObject();
}

uint64_t sub_19215E94C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_19215E9C0()
{
  v1 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_19215B540(0xD000000000000018, 0x800000019224C060);
}

uint64_t sub_19215EA34()
{
  v1 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_19215B540(0xD000000000000019, 0x800000019224C040);
}

uint64_t sub_19215EAA8()
{
  v1 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_19215B540(0xD000000000000017, 0x800000019224C020);
}

uint64_t sub_19215EB1C()
{
  v1 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_19215B540(0xD000000000000016, 0x800000019224C000);
}

uint64_t sub_19215EBC0(uint64_t a1)
{
  v3 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_19215C870(a1, v4);
}

uint64_t EnvironmentValues._wantsCustomFontsEmbeddedInArchive.getter()
{
  sub_192057970();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._wantsCustomFontsEmbeddedInArchive.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192057970();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215ED2C;
}

uint64_t sub_19215ED2C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t EnvironmentValues.inJindo.getter()
{
  sub_19215EDB0();
  sub_1922261E0();
  return v1;
}

unint64_t sub_19215EDB0()
{
  result = qword_1EADEE4C8;
  if (!qword_1EADEE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE4C8);
  }

  return result;
}

uint64_t (*EnvironmentValues.inJindo.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19215EDB0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215EEA8;
}

uint64_t sub_19215EEA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_19215EEF0(uint64_t *a1, int a2)
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

uint64_t sub_19215EF38(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for ActivityViewSourceContext()
{
  result = qword_1EADED6D8;
  if (!qword_1EADED6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19215EFFC()
{
  result = sub_192225360();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19215F080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v126 = a3;
  v134 = type metadata accessor for ActivityViewSourceContext();
  v5 = *(*(v134 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v134);
  v128 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v120 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = sub_192228240();
  v131 = *(v132 - 8);
  v9 = *(v131 + 64);
  v10 = MEMORY[0x1EEE9AC00](v132);
  v127 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v120 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v120 - v16;
  v17 = sub_192228240();
  v137 = *(v17 - 8);
  v138 = v17;
  v18 = *(v137 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v120 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v120 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v120 - v27;
  v29 = *(a1 - 8);
  v30 = *(v29 + 56);
  v30(&v120 - v27, 1, 1, a1);
  v31 = v140;
  sub_192225330();
  v140 = v31;
  v136 = v28;
  if (v31)
  {
    if (qword_1EADEDEB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1922258B0();
    __swift_project_value_buffer(v32, qword_1EAE007D8);
    v33 = v133;
    sub_19215FCE4(v142, v133);
    v34 = v140;
    v35 = v140;
    v36 = sub_192225890();
    v37 = sub_192227F90();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v141[0] = v142;
      *v38 = 136446466;
      v40 = sub_192225310();
      v42 = v41;
      v43 = sub_192225040();
      v45 = v44;
      sub_192039140(v40, v42);
      sub_19215FD48(v33);
      v46 = sub_19202B8CC(v43, v45, v141);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2114;
      v47 = v140;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v48;
      *v39 = v48;
      _os_log_impl(&dword_192028000, v36, v37, "Error decoding activity attributes: %{public}s: %{public}@", v38, 0x16u);
      sub_1920FB918(v39);
      MEMORY[0x193B0C7F0](v39, -1, -1);
      v49 = v142;
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x193B0C7F0](v49, -1, -1);
      MEMORY[0x193B0C7F0](v38, -1, -1);
    }

    else
    {

      sub_19215FD48(v33);
    }

    v96 = v137;
    v95 = v138;
    v97 = v136;
    swift_willThrow();
    return (*(v96 + 8))(v97, v95);
  }

  v122 = v23;
  v121 = v29;
  v124 = a2;
  v30(v26, 0, 1, a1);
  v50 = v137;
  v51 = v138;
  (*(v137 + 40))(v28, v26, v138);
  v52 = v28;
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v133 = a1;
  v53 = sub_1922258B0();
  v123 = __swift_project_value_buffer(v53, qword_1EAE007D8);
  v54 = sub_192225890();
  v55 = sub_192227F80();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v135;
  v58 = v122;
  if (v56)
  {
    v59 = swift_slowAlloc();
    v60 = v57;
    v61 = swift_slowAlloc();
    v141[0] = v61;
    *v59 = 136446210;
    swift_beginAccess();
    (*(v50 + 16))(v58, v52, v51);
    v62 = sub_192227990();
    v64 = sub_19202B8CC(v62, v63, v141);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_192028000, v54, v55, "Decoded activity attributes: %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v65 = v61;
    v57 = v60;
    MEMORY[0x193B0C7F0](v65, -1, -1);
    MEMORY[0x193B0C7F0](v59, -1, -1);
  }

  v66 = v142;
  v122 = *(AssociatedTypeWitness - 8);
  v67 = *(v122 + 7);
  v67(v57, 1, 1);
  v68 = sub_192224D80();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_192224D70();
  v72 = (v66 + *(v134 + 20));
  v73 = v57;
  v74 = *v72;
  v75 = v72[1];
  swift_getAssociatedConformanceWitness();
  v76 = v130;
  v77 = v140;
  v78 = AssociatedTypeWitness;
  sub_192224D60();
  if (v77)
  {

    v79 = v128;
    sub_19215FCE4(v66, v128);
    v80 = v77;
    v81 = sub_192225890();
    v82 = sub_192227F90();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v141[0] = v85;
      *v83 = 136446466;
      v86 = (v79 + *(v134 + 20));
      v87 = *v86;
      v88 = v86[1];
      v89 = sub_192225040();
      v91 = v90;
      sub_19215FD48(v79);
      v92 = sub_19202B8CC(v89, v91, v141);

      *(v83 + 4) = v92;
      *(v83 + 12) = 2114;
      v93 = v77;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v94;
      *v84 = v94;
      _os_log_impl(&dword_192028000, v81, v82, "Error decoding activity state: %{public}s: %{public}@", v83, 0x16u);
      sub_1920FB918(v84);
      MEMORY[0x193B0C7F0](v84, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x193B0C7F0](v85, -1, -1);
      MEMORY[0x193B0C7F0](v83, -1, -1);
    }

    else
    {

      sub_19215FD48(v79);
    }

    v96 = v137;
    v95 = v138;
    v97 = v136;
    v118 = v132;
    v119 = v131;
    swift_willThrow();
    (*(v119 + 8))(v135, v118);
    return (*(v96 + 8))(v97, v95);
  }

  v140 = v71;
  (v67)(v76, 0, 1, v78);
  v98 = v131;
  v99 = v132;
  (*(v131 + 40))(v73, v76, v132);
  v100 = sub_192225890();
  v101 = sub_192227F80();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v141[0] = v103;
    *v102 = 136446210;
    swift_beginAccess();
    (*(v98 + 16))(v125, v73, v99);
    v104 = sub_192227990();
    v106 = sub_19202B8CC(v104, v105, v141);

    *(v102 + 4) = v106;
    _os_log_impl(&dword_192028000, v100, v101, "Decoded activity state: %{public}s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x193B0C7F0](v103, -1, -1);
    MEMORY[0x193B0C7F0](v102, -1, -1);
  }

  v108 = v137;
  v107 = v138;
  v109 = v136;
  v110 = v127;
  v140 = sub_192225350();
  v112 = v111;
  swift_beginAccess();
  v113 = v129;
  (*(v108 + 16))(v129, v109, v107);
  result = (*(v121 + 48))(v113, 1, v133);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v115 = v135;
    swift_beginAccess();
    v116 = v131;
    v117 = v132;
    (*(v131 + 16))(v110, v115, v132);
    result = (*(v122 + 6))(v110, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      sub_192100360(v140, v112, v129, v110, *(v142 + *(v134 + 24)), v133, v126);
      (*(v116 + 8))(v115, v117);
      return (*(v108 + 8))(v109, v107);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19215FCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityViewSourceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19215FD48(uint64_t a1)
{
  v2 = type metadata accessor for ActivityViewSourceContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues._widgetAccessoryBackgroundAccentable.getter()
{
  sub_19206D8D8();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetAccessoryBackgroundAccentable.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19206D8D8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215FE84;
}

uint64_t sub_19215FE84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_19215FF14()
{
  result = type metadata accessor for BundleStub();
  if (v1 <= 0x3F)
  {
    result = sub_19202A7A8(319, &qword_1EADEE610, 0x1E6994260);
    if (v2 <= 0x3F)
    {
      result = sub_192225150();
      if (v3 <= 0x3F)
      {
        result = sub_1922254F0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_192160030()
{
  type metadata accessor for ControlArchiveStorageMetadata(319);
  if (v0 <= 0x3F)
  {
    sub_1921600D4();
    if (v1 <= 0x3F)
    {
      sub_19216012C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1921600D4()
{
  if (!qword_1EADEE620)
  {
    type metadata accessor for ControlTemplateType(255);
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE620);
    }
  }
}

void sub_19216012C()
{
  if (!qword_1EADEE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    sub_1920ED960();
    v0 = sub_192227860();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE018);
    }
  }
}

uint64_t sub_1921601A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1048, &unk_192238DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192161F2C();
  sub_192228B90();
  LOBYTE(v17) = 0;
  type metadata accessor for BundleStub();
  sub_192161B68(&qword_1ED74BAF8, type metadata accessor for BundleStub);
  sub_1922288C0();
  if (!v2)
  {
    v11 = type metadata accessor for ControlArchiveStorageMetadata(0);
    v17 = *(v3 + v11[5]);
    HIBYTE(v16) = 1;
    sub_1920E27DC();
    sub_1922288C0();
    v17 = *(v3 + v11[6]);
    HIBYTE(v16) = 2;
    sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
    sub_192162048(&qword_1EADEDFD8);
    sub_1922288C0();
    v17 = *(v3 + v11[7]);
    v12 = v17;
    HIBYTE(v16) = 3;
    sub_1920E2830();
    v13 = v12;
    sub_1922288C0();

    v14 = v11[8];
    LOBYTE(v17) = 4;
    sub_192225150();
    sub_192161B68(&qword_1ED74BB00, MEMORY[0x1E6969530]);
    sub_1922288C0();
    v17 = *(v3 + v11[9]);
    HIBYTE(v16) = 5;
    sub_1922254F0();
    sub_192161B68(&qword_1EADEE4F0, MEMORY[0x1E6994010]);
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_192160534()
{
  v1 = v0;
  v2 = sub_192225020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v25 - v9;
  sub_192051870(v1, v25 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_192228AF0();
    sub_192161B68(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
    sub_192227890();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for BundleStub();
  v12 = *(v1 + *(v11 + 20));
  sub_1922281E0();
  v13 = (v1 + *(v11 + 24));
  v14 = *v13;
  v15 = v13[1];
  sub_1922279B0();
  v16 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v17 = (v1 + v16[5]);
  v18 = *v17;
  v19 = v17[1];
  sub_192228B00();
  sub_192228B00();
  v20 = *(v1 + v16[6]);
  sub_1922281E0();
  v21 = *(v1 + v16[7]);
  v22 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v22);
  v23 = v16[8];
  sub_192225150();
  sub_192161B68(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v25[1] = *(v1 + v16[9]);
  sub_1922254F0();
  sub_192161B68(&qword_1EADEFC08, MEMORY[0x1E6994010]);
  return sub_192227890();
}

void sub_192160838(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_192225150();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleStub();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1040, &qword_192238DB8);
  v27 = *(v31 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_192161F2C();
  v30 = v12;
  v19 = v32;
  sub_192228B70();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v32 = v6;
    v20 = v16;
    v22 = v27;
    v21 = v28;
    LOBYTE(v35) = 0;
    sub_192161B68(qword_1ED748740, type metadata accessor for BundleStub);
    v23 = v29;
    sub_1922287C0();
    sub_192161FE0(v23, v20, type metadata accessor for BundleStub);
    v34 = 1;
    sub_19203EE8C();
    sub_1922287C0();
    *(v20 + v13[5]) = v35;
    sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
    v34 = 2;
    sub_192162048(&qword_1EADED380);
    sub_1922287C0();
    *(v20 + v13[6]) = v35;
    v34 = 3;
    sub_192044634();
    sub_1922287C0();
    *(v20 + v13[7]) = v35;
    LOBYTE(v35) = 4;
    sub_192161B68(qword_1ED748810, MEMORY[0x1E6969530]);
    v24 = v32;
    v29 = 0;
    sub_1922287C0();
    (*(v21 + 32))(v20 + v13[8], v24, v3);
    sub_1922254F0();
    v34 = 5;
    sub_192161B68(&qword_1EADEDED0, MEMORY[0x1E6994010]);
    sub_1922287C0();
    (*(v22 + 8))(v30, v31);
    *(v20 + v13[9]) = v35;
    sub_19216209C(v20, v26);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_192161F80(v20, type metadata accessor for ControlArchiveStorageMetadata);
  }
}

unint64_t sub_192160E68()
{
  v1 = *v0;
  v2 = 0x65566D6574737973;
  v3 = 0x6D6E6F7269766E65;
  v4 = 0x6E6F697461657263;
  if (v1 != 4)
  {
    v4 = 0x6574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6C6F72746E6F63;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_192160F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192162330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192160F68(uint64_t a1)
{
  v2 = sub_192161F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192160FA4(uint64_t a1)
{
  v2 = sub_192161F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192161010()
{
  sub_192228AD0();
  sub_192160534();
  return sub_192228B30();
}

uint64_t sub_192161054()
{
  sub_192228AD0();
  sub_192160534();
  return sub_192228B30();
}

unint64_t sub_1921610DC()
{
  v1 = 0x5665766968637261;
  v2 = 0x6574616C706D6574;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x617461646174656DLL;
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

uint64_t sub_19216116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192162544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921611A0(uint64_t a1)
{
  v2 = sub_192161B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921611DC(uint64_t a1)
{
  v2 = sub_192161B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192161218@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1020, &qword_192238D98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_192161B14();
  sub_192228B70();
  if (!v2)
  {
    v15 = v43;
    v16 = v9;
    LOBYTE(v46) = 0;
    v17 = sub_1922287D0();
    if (v17 >= 2)
    {
      LOBYTE(v46) = 1;
      v20 = v8;
      v21 = v12;
      sub_192161B68(qword_1EADED4B8, type metadata accessor for ControlArchiveStorageMetadata);
      sub_1922287C0();
      v42 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1028, &qword_192238DA0);
      v45 = 2;
      sub_192161D74(&qword_1EADED398, &qword_1EADED8D8);
      sub_1922287C0();
      v22 = v20;
      v23 = v46;
      if (v46[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1030, &qword_192238DA8);
        v45 = 3;
        sub_192161BB0();
        sub_192228750();
        v25 = v46;
        if (!v46)
        {
          v25 = sub_192140634(MEMORY[0x1E69E7CC0]);
        }

        if (v25[2])
        {
          v43 = v22;
          if (qword_1EADEE4E8 != -1)
          {
            swift_once();
          }

          v26 = sub_1922258B0();
          __swift_project_value_buffer(v26, qword_1EAE00810);

          v27 = sub_192225890();
          v28 = sub_192227FB0();

          v41 = v28;
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v38 = v29;
            v39 = swift_slowAlloc();
            v46 = v39;
            *v29 = 136380675;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
            v40 = v21;
            v30 = v27;
            sub_1920ED960();
            v31 = sub_192227850();
            v33 = v32;

            v34 = sub_19202B8CC(v31, v33, &v46);

            v35 = v38;
            *(v38 + 1) = v34;
            _os_log_impl(&dword_192028000, v30, v41, "ControlArchiveStorage decoded with vectorGlyphAssetLibraryDatas keys: %{private}s", v35, 0xCu);
            v36 = v39;
            __swift_destroy_boxed_opaque_existential_1(v39);
            MEMORY[0x193B0C7F0](v36, -1, -1);
            MEMORY[0x193B0C7F0](v35, -1, -1);

            (*(v16 + 8))(v40, v43);
          }

          else
          {

            (*(v16 + 8))(v21, v43);
          }
        }

        else
        {
          (*(v16 + 8))(v21, v22);
        }

        sub_192161FE0(v42, v15, type metadata accessor for ControlArchiveStorageMetadata);
        v37 = type metadata accessor for ControlArchiveStorage(0);
        *(v15 + v37[5]) = v23;
        *(v15 + v37[7]) = v17;
        *(v15 + v37[6]) = v25;
      }

      else
      {

        sub_1920B303C();
        swift_allocError();
        *v24 = 0xD00000000000001ELL;
        *(v24 + 8) = 0x800000019224C0D0;
        *(v24 + 16) = 2;
        swift_willThrow();
        sub_192161F80(v42, type metadata accessor for ControlArchiveStorageMetadata);
        (*(v16 + 8))(v12, v22);
      }
    }

    else
    {
      sub_1920B303C();
      swift_allocError();
      *v18 = (v17 << 32) | 2;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
      (*(v9 + 8))(v12, v8);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_192161844(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1038, &qword_192238DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192161B14();
  sub_192228B90();
  LOBYTE(v14) = 0;
  sub_1922288D0();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    type metadata accessor for ControlArchiveStorageMetadata(0);
    sub_192161B68(&qword_1EADEE020, type metadata accessor for ControlArchiveStorageMetadata);
    sub_1922288C0();
    v11 = type metadata accessor for ControlArchiveStorage(0);
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1028, &qword_192238DA0);
    sub_192161D74(&qword_1EADEDFE8, qword_1EADEE138);
    sub_1922288C0();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161E10();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_192161B14()
{
  result = qword_1EADEE688;
  if (!qword_1EADEE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE688);
  }

  return result;
}

uint64_t sub_192161B68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_192161BB0()
{
  result = qword_1EADED3B0;
  if (!qword_1EADED3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161EC0(&qword_1EADED388);
    sub_192047340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3B0);
  }

  return result;
}

uint64_t sub_192161C60(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_1922281D0() & 1) == 0)
  {
    return 0;
  }

  if ((static BundleStub.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v4[8];
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[5];
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v14 = *v12;
  v13 = v12[1];
  if (v11 != v14 || v10 != v13)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a2 + v16);
  v18 = *(a1 + v16);
  v19 = v17;
  v20 = sub_1922281D0();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1922254F0();
  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  return sub_1922254C0() & 1;
}

uint64_t sub_192161D74(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1028, &qword_192238DA0);
    sub_192161B68(a2, type metadata accessor for ControlTemplateType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192161E10()
{
  result = qword_1EADED3B8;
  if (!qword_1EADED3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161EC0(&qword_1EADED390);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3B8);
  }

  return result;
}

uint64_t sub_192161EC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192161F2C()
{
  result = qword_1EADEE648;
  if (!qword_1EADEE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE648);
  }

  return result;
}

uint64_t sub_192161F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192161FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192162048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, &qword_1EADEE610, 0x1E6994260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19216209C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_192162124()
{
  result = qword_1EADF1050;
  if (!qword_1EADF1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1050);
  }

  return result;
}

unint64_t sub_19216217C()
{
  result = qword_1EADF1058;
  if (!qword_1EADF1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1058);
  }

  return result;
}

unint64_t sub_1921621D4()
{
  result = qword_1EADEE638;
  if (!qword_1EADEE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE638);
  }

  return result;
}

unint64_t sub_19216222C()
{
  result = qword_1EADEE640;
  if (!qword_1EADEE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE640);
  }

  return result;
}

unint64_t sub_192162284()
{
  result = qword_1EADEE678;
  if (!qword_1EADEE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE678);
  }

  return result;
}

unint64_t sub_1921622DC()
{
  result = qword_1EADEE680;
  if (!qword_1EADEE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE680);
  }

  return result;
}

uint64_t sub_192162330(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000192248900 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_192162544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224C0F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1921626C0(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = sub_192225080();
    v8 = v7;

    v23 = 0;
    v9 = [a2 seekToOffset:0 error:&v23];
    v10 = v23;
    if (v9)
    {
      v23 = v6;
      v24 = v8;
      v11 = v10;
      sub_1920367C8(v6, v8);
      sub_1920B2FE8();
      sub_192227F40();
      v12 = v2;
      sub_192039140(v23, v24);
      if (v2)
      {
LABEL_9:
        sub_1921628D8();
        swift_allocError();
        *v21 = v12;
        *(v21 + 8) = 1;
        swift_willThrow();
        goto LABEL_10;
      }

      v13 = sub_192227F50();
      v23 = 0;
      v18 = [a2 truncateAtOffset:v13 error:&v23];
      v10 = v23;
      if (v18)
      {
        v19 = v23;
LABEL_10:
        result = sub_192039140(v6, v8);
        goto LABEL_11;
      }
    }

    v20 = v10;
    v12 = sub_192224F90();

    swift_willThrow();
    goto LABEL_9;
  }

  v14 = v5;
  v15 = sub_192224F90();

  swift_willThrow();
  sub_1921628D8();
  swift_allocError();
  *v16 = v15;
  *(v16 + 8) = 0;
  result = swift_willThrow();
LABEL_11:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1921628D8()
{
  result = qword_1EADF1060;
  if (!qword_1EADF1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1060);
  }

  return result;
}

uint64_t sub_192162954(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_192228240();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_192227A80();
  v70 = sub_192228560();
  v65 = sub_192228570();
  sub_192228510();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_192227A70();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_192228270();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_192228550();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_192228270();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_192228550();
      sub_192228270();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

_BYTE *WidgetRenderScheme.init(renderingMode:backgroundViewPolicy:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static WidgetRenderScheme.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED74A550 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = qword_1ED7494B0;
  *a1 = byte_1ED7494A8;
  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_192163154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019224C190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_192163240(uint64_t a1)
{
  v2 = sub_1920476EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216327C(uint64_t a1)
{
  v2 = sub_1920476EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WidgetRenderScheme.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 renderingMode];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x10200u >> (8 * v4);
  }

  v6 = [a1 backgroundViewPolicy];

  *a2 = v5;
  *(a2 + 8) = v6;
}

uint64_t WidgetRenderScheme.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x193B0BA90](*v0);
  return MEMORY[0x193B0BA90](v1);
}

uint64_t WidgetRenderScheme.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1921634D0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_192163530()
{
  v1 = *(v0 + 1);
  MEMORY[0x193B0BA90](*v0);
  return MEMORY[0x193B0BA90](v1);
}

id sub_1921635D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 renderingMode];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x10200u >> (8 * v4);
  }

  result = [v3 backgroundViewPolicy];
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

id CHSWidgetRenderScheme.init(widgetRenderScheme:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRenderingMode:qword_1922393A0[v1] backgroundViewPolicy:*(a1 + 1)];
  }
}

unint64_t sub_1921636B8()
{
  result = qword_1EADF1078;
  if (!qword_1EADF1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1078);
  }

  return result;
}

id sub_19216370C(uint64_t a1)
{
  v3 = sub_192224CC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v23 - v12);
  (*(v14 + 16))(&v23 - v12, v1 + *(a1 + 28), v9, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v13[1];
    if (v15)
    {
      if (v15 == 1)
      {
        return 0;
      }

      else
      {
        v19 = *v13;
        v20 = objc_allocWithZone(MEMORY[0x1E6994400]);
        v21 = sub_192227930();
        sub_192163968(v19, v15);
        v22 = [v20 initWithNamedGroupIdentifier_];

        return v22;
      }
    }

    else
    {
      return [objc_opt_self() ungrouped];
    }
  }

  else
  {
    (*(v4 + 32))(v7, v13, v3);
    v17 = sub_192224CB0();
    v18 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

    (*(v4 + 8))(v7, v3);
    return v18;
  }
}

uint64_t sub_192163968(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 sub_19216397C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_192224FB0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v28 = *a6;
  v17 = a1;
  v18 = sub_192224BA0();
  *a8 = 2;
  *(a8 + 8) = v18;
  *(a8 + 16) = v17;
  *(a8 + 24) = a2;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = a3;
  v19 = v18;

  if (a5)
  {
    v20 = a4;
  }

  else
  {
    sub_192224BC0();
    v20 = sub_192227980();
    a5 = v21;
  }

  *(a8 + 152) = v20;
  *(a8 + 160) = a5;
  *(a8 + 168) = v28;
  *(a8 + 128) = &type metadata for ControlButtonTemplateProvider;
  *(a8 + 136) = &off_1F06B1108;
  v22 = swift_allocObject();
  *(a8 + 104) = v22;
  v23 = *(a7 + 80);
  *(v22 + 80) = *(a7 + 64);
  *(v22 + 96) = v23;
  *(v22 + 112) = *(a7 + 96);
  *(v22 + 128) = *(a7 + 112);
  v24 = *(a7 + 16);
  *(v22 + 16) = *a7;
  *(v22 + 32) = v24;
  result = *(a7 + 32);
  v26 = *(a7 + 48);
  *(v22 + 48) = result;
  *(v22 + 64) = v26;
  *(a8 + 144) = 0;
  *(a8 + 56) = v17;
  *(a8 + 64) = a2;
  *(a8 + 72) = 0;
  *(a8 + 80) = 0;
  *(a8 + 88) = 2;
  *(a8 + 96) = v18;
  return result;
}

uint64_t ControlButton.init<A, B>(kind:intent:displayName:preferredSize:title:subtitle:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v30 = *a6;
  v19 = sub_192224BB0();
  v28 = v20;
  v29 = v19;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = a15;
  v21[4] = a16;
  v21[5] = a17;
  v21[6] = a18;
  v21[7] = a19;
  v22 = swift_allocObject();
  v22[2] = a14;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = a17;
  v22[6] = a18;
  v22[7] = a19;
  v23 = swift_allocObject();
  v23[2] = a14;
  v23[3] = a15;
  v23[4] = a16;
  v23[5] = a17;
  v23[6] = a18;
  v23[7] = a19;
  v23[8] = a7;
  v23[9] = a8;
  v24 = swift_allocObject();
  v24[2] = a14;
  v24[3] = a15;
  v24[4] = a16;
  v24[5] = a17;
  v24[6] = a18;
  v24[7] = a19;
  v24[8] = a10;
  v24[9] = a11;

  sub_19202D088(a12);

  sub_192163ED8(a1, a2, v29, v28, sub_19216673C, v21, sub_192166738, v22, v38, sub_192163E18, v23, sub_192163EC0, v24, a12, a13, a14, a17);
  v37 = v30;
  sub_19216397C(a1, a2, a3, a4, a5, &v37, v38, a9);
  sub_19203831C(a12);
}

{
  v30 = *a6;
  v19 = sub_192224BB0();
  v28 = v20;
  v29 = v19;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = a15;
  v21[4] = a16;
  v21[5] = a17;
  v21[6] = a18;
  v21[7] = a19;
  v22 = swift_allocObject();
  v22[2] = a14;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = a17;
  v22[6] = a18;
  v22[7] = a19;
  v23 = swift_allocObject();
  v23[2] = a14;
  v23[3] = a15;
  v23[4] = a16;
  v23[5] = a17;
  v23[6] = a18;
  v23[7] = a19;
  v23[8] = a7;
  v23[9] = a8;
  v24 = swift_allocObject();
  v24[2] = a14;
  v24[3] = a15;
  v24[4] = a16;
  v24[5] = a17;
  v24[6] = a18;
  v24[7] = a19;
  v24[8] = a10;
  v24[9] = a11;

  sub_19202D088(a12);

  sub_192163ED8(a1, a2, v29, v28, sub_192164380, v21, sub_1921644A0, v22, v38, sub_192164564, v23, sub_192164618, v24, a12, a13, a14, a17);
  v37 = v30;
  sub_19216397C(a1, a2, a3, a4, a5, &v37, v38, a9);
  sub_19203831C(a12);
}

uint64_t sub_192163D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  return sub_192227570();
}

uint64_t sub_192163E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a7 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_192227570();
}

double sub_192163ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(&v33 + 1) = a7;
  *&v33 = a6;
  v21 = a12;
  v22 = swift_allocObject();
  v22[2] = a16;
  v22[3] = a17;
  v22[4] = a10;
  v22[5] = a11;
  if (a12)
  {
    v23 = swift_allocObject();
    v23[2] = a16;
    v23[3] = a17;
    v23[4] = a12;
    v23[5] = a13;
    v21 = &unk_1922395D8;
  }

  else
  {
    v23 = 0;
  }

  v24 = swift_allocObject();
  v24[2] = a16;
  v24[3] = a17;
  v24[4] = a14;
  v24[5] = a15;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  *&v37 = a3;
  *(&v37 + 1) = a4;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = a5;
  v39 = v33;
  *&v40 = a8;
  *(&v40 + 1) = &unk_1922395B8;
  *&v41 = v22;
  *(&v41 + 1) = v21;
  *&v42 = v23;
  *(&v42 + 1) = &unk_1922395C8;
  v43 = v24;
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  v45 = 0;
  v46 = a5;
  v47 = v33;
  v48 = a8;
  v49 = &unk_1922395B8;
  v50 = v22;
  v51 = v21;
  v52 = v23;
  v53 = &unk_1922395C8;
  v54 = v24;
  sub_192165138(&v36, v35);
  sub_192165170(v44);
  v25 = v41;
  v26 = v42;
  v27 = v39;
  *(a9 + 64) = v40;
  *(a9 + 80) = v25;
  *(a9 + 96) = v26;
  result = *&v36;
  v29 = v37;
  v30 = v38;
  *a9 = v36;
  *(a9 + 16) = v29;
  *(a9 + 112) = v43;
  *(a9 + 32) = v30;
  *(a9 + 48) = v27;
  return result;
}

uint64_t sub_1921642EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192224C80();
  return ControlAction.init<A>(_:)(v6, a1, a2);
}

uint64_t sub_192164384@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_1921642EC(v1[2], a1);
}

uint64_t sub_1921643A8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_1921644A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  return sub_1921643A8(v0[2]);
}

uint64_t sub_1921644C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8(v7, v9);
  return sub_192227570();
}

uint64_t sub_19216457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9(v8, v10);
  return sub_192227570();
}

uint64_t ControlButton.init<A>(kind:intent:displayName:preferredSize:title:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = *a6;
  v16 = sub_192224BB0();
  v24 = v17;
  v25 = v16;
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a14;
  v18[5] = a15;
  v19 = swift_allocObject();
  v19[2] = a12;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;

  sub_19202D088(a10);

  sub_192163ED8(a1, a2, v25, v24, sub_192166734, v18, sub_192166740, v19, v33, sub_1921648B4, v20, 0, 0, a10, a11, a12, a14);
  v32 = v27;
  sub_19216397C(a1, a2, a3, a4, a5, &v32, v33, a9);
  sub_19203831C(a10);
}

{
  v27 = *a6;
  v16 = sub_192224BB0();
  v24 = v17;
  v25 = v16;
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a14;
  v18[5] = a15;
  v19 = swift_allocObject();
  v19[2] = a12;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;

  sub_19202D088(a10);

  sub_192163ED8(a1, a2, v25, v24, sub_192164B18, v18, sub_192164C30, v19, v33, sub_192164CEC, v20, 0, 0, a10, a11, a12, a14);
  v32 = v27;
  sub_19216397C(a1, a2, a3, a4, a5, &v32, v33, a9);
  sub_19203831C(a10);
}

uint64_t sub_192164824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  return sub_192227570();
}

uint64_t sub_192164A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192224C80();
  return ControlAction.init<A>(_:)(v6, a1, a2);
}

uint64_t sub_192164B18@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_192164A84(v1[2], a1);
}

uint64_t sub_192164B38(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_192164C30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_192164B38(v0[2]);
}

uint64_t sub_192164C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8(v7, v9);
  return sub_192227570();
}

uint64_t _s9WidgetKit13ControlButtonV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v9 = *(v1 + 168);
  sub_192081C60(v1 + 56, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v6, a1);
  v10 = type metadata accessor for WidgetDescriptor(0);
  v11 = v10[7];
  v12 = *(a1 + v11);

  *(a1 + v11) = &unk_1F06A8270;
  *(a1 + v10[39]) = v9;
  v13 = (a1 + v10[5]);
  v14 = v13[1];

  *v13 = v8;
  v13[1] = v7;
  v15 = (a1 + v10[6]);
  v16 = v15[1];

  *v15 = 0;
  v15[1] = 0;
  v17 = (a1 + v10[40]);
  v18 = v17[1];

  *v17 = 0;
  v17[1] = 0;
  *(a1 + v10[36]) = 0;
  *(a1 + v10[29]) = 0;
  return result;
}

uint64_t ControlButton.init<A>(kind:intent:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a10;
  v21 = 0;
  return ControlButton.init<A, B>(kind:intent:displayName:preferredSize:title:subtitle:affordances:)(a1, a2, a3, 0, 0, &v21, a4, a5, a9, nullsub_1, v19, 0, 0, a6, a7, MEMORY[0x1E6981E70], a8, a10, MEMORY[0x1E6981E60]);
}

uint64_t ControlButton.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v26);
  if (BYTE7(v28) == 1)
  {
    return sub_1920B2BD8(&v26);
  }

  sub_19209CBAC(&v26, v34);
  sub_192033A64(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v19[0] = v26;
  v19[1] = v27;
  v8 = a1 & 1;
  v16 = v26;
  v17 = v27;
  v18[0] = v8;
  *&v18[33] = v30;
  *&v18[49] = v31;
  *&v18[65] = *v32;
  *&v18[80] = *&v32[15];
  *&v18[1] = v28;
  *&v18[17] = v29;
  v14[3] = &type metadata for ControlButtonTemplateProvider;
  v14[4] = &off_1F06B1108;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *&v18[48];
  *(v9 + 80) = *&v18[32];
  *(v9 + 96) = v10;
  *(v9 + 112) = *&v18[64];
  *(v9 + 128) = *&v18[80];
  v11 = v17;
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  v12 = *&v18[16];
  *(v9 + 48) = *v18;
  *(v9 + 64) = v12;
  v20 = v8;
  v23 = v30;
  v24 = v31;
  *v25 = *v32;
  *&v25[15] = *&v32[15];
  v21 = v28;
  v22 = v29;
  sub_192165138(&v16, v13);
  sub_192165170(v19);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v15 = 0;
  return sub_192147370(v14, a3 + 104);
}

uint64_t sub_1921651E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19216525C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1921652A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8INIntentCSb7SwiftUI7AnyViewVs5Error_pIegHgyozo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_19216536C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1921653B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192165420(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a3;
  *(v6 + 88) = a2;
  v10 = *(a5 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *(v6 + 56) = sub_192227CC0();
  *(v6 + 64) = sub_192227CB0();
  v13 = swift_task_alloc();
  *(v6 + 72) = v13;
  *v13 = v6;
  v13[1] = sub_19216555C;

  return sub_19213431C(v12, a1, a5, a6);
}

uint64_t sub_19216555C()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_19214C82C;
  }

  else
  {
    v8 = sub_192166744;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1921656B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a3;
  *(v6 + 88) = a2;
  v10 = *(a5 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *(v6 + 56) = sub_192227CC0();
  *(v6 + 64) = sub_192227CB0();
  v13 = swift_task_alloc();
  *(v6 + 72) = v13;
  *v13 = v6;
  v13[1] = sub_1921657F4;

  return sub_19213431C(v12, a1, a5, a6);
}

uint64_t sub_1921657F4()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_192149CCC;
  }

  else
  {
    v8 = sub_192165950;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_192165950()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 88);

  v8 = v6(v2, v7);
  (*(v3 + 8))(v2, v5);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_192165A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v10 = *(a5 - 8);
  v6[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v6[7] = v12;
  v6[8] = sub_192227CC0();
  v6[9] = sub_192227CB0();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_192165B44;

  return sub_19213431C(v12, a2, a5, a6);
}

uint64_t sub_192165B44()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_192165DB0;
  }

  else
  {
    v8 = sub_192165CA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_192165CA0()
{
  v16 = v0;
  v1 = v0[9];
  v2 = v0[3];

  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  if (v2)
  {
    v6 = v0[4];
    v7 = v0[2];
    (v0[3])(v14, v0[7]);
    (*(v4 + 8))(v3, v5);
    v8 = v14[3];
    *(v7 + 32) = v14[2];
    *(v7 + 48) = v8;
    *(v7 + 64) = v15;
    v9 = v14[1];
    *v7 = v14[0];
    *(v7 + 16) = v9;
  }

  else
  {
    v10 = v0[2];
    (*(v4 + 8))(v0[7], v0[5]);
    *v10 = 1;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_192165DB0()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_192165E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  sub_192227CC0();
  v4[37] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[38] = v6;
  v4[39] = v5;

  return MEMORY[0x1EEE6DFA0](sub_192165EBC, v6, v5);
}

uint64_t sub_192165EBC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v6;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 112) = v8;
  *(v0 + 80) = v7;
  *(v0 + 128) = v9;
  *(v0 + 136) = v2;
  v3[3] = type metadata accessor for ControlTemplateButton(0);
  v3[4] = sub_192166448(&qword_1EADEE598, type metadata accessor for ControlTemplateButton);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_192165138(v1, v0 + 144);
  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  *v12 = v0;
  v12[1] = sub_192165FF4;
  v13 = *(v0 + 272);

  return sub_19218CB5C(boxed_opaque_existential_1, v13);
}

uint64_t sub_192165FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_1921661A0;
  }

  else
  {
    v7 = sub_192166130;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_192166130()
{
  v1 = *(v0 + 296);
  sub_192166490(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1921661A0()
{
  v1 = v0[37];
  v2 = v0[33];
  sub_192166490((v0 + 2));

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = v0[1];
  v4 = v0[41];

  return v3();
}

uint64_t sub_19216621C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t sub_192166244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 80);
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = v8;
  *(v4 + 112) = *(v3 + 96);
  *(v4 + 128) = *(v3 + 112);
  v9 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v9;
  v10 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 136) = v11;
  *v11 = v4;
  v11[1] = sub_192166320;

  return sub_192165E20(a1, a2, a3);
}

uint64_t sub_192166320()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_192166448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1921664E4(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920EF9CC;

  return sub_192165420(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1921665A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920A59A8;

  return sub_192165A0C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_192166670(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920EF2F4;

  return sub_1921656B8(a1, a2, v9, v8, v6, v7);
}

uint64_t WidgetPersonality.extensionBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);

  return v1;
}

uint64_t WidgetPersonality.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v2 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind + 8);

  return v1;
}

id WidgetPersonality.__allocating_init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id WidgetPersonality.init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v8, sel_init);
}

id WidgetPersonality.__allocating_init<A>(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1921678BC(a1);
  swift_unknownObjectRelease();
  return v4;
}

id WidgetPersonality.init<A>(_:)(void *a1)
{
  v1 = sub_1921678BC(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_192166958(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  v5 = [a1 extensionBundleIdentifier];
  v6 = sub_192227960();
  v8 = v7;

  if (v3 == v6 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_1922289A0();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = v1 + OBJC_IVAR___CHKWidgetPersonality_kind;
  v13 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v14 = *(v12 + 8);
  v15 = [a1 kind];
  v16 = sub_192227960();
  v18 = v17;

  if (v13 == v16 && v14 == v18)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_192166B28()
{
  sub_192228B40();
  v1 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  sub_1922279B0();
  v3 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v4 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind + 8);
  sub_1922279B0();
  return sub_192228B20();
}

id sub_192166B8C(uint64_t a1)
{
  sub_192117C0C(a1, v5);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1098, &qword_1922395F0);
    if (swift_dynamicCast())
    {
      v2 = [v4 matchesPersonality_];
      swift_unknownObjectRelease();
      return v2;
    }
  }

  else
  {
    sub_192030F04(v5);
  }

  return 0;
}

id WidgetPersonality.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v5 = sub_192228140();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192228140();
    if (v7)
    {
      v8 = v7;
      v9 = sub_192227960();
      v10 = &v4[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
      *v10 = v9;
      v10[1] = v11;
      v12 = sub_192227960();
      v14 = v13;

      v15 = &v4[OBJC_IVAR___CHKWidgetPersonality_kind];
      *v15 = v12;
      v15[1] = v14;
      v18.receiver = v4;
      v18.super_class = v2;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      return v16;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetPersonality.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v4 = sub_192228140();
  if (v4)
  {
    v5 = v4;
    v6 = sub_192228140();
    if (v6)
    {
      v7 = v6;
      v8 = sub_192227960();
      v9 = &v2[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
      *v9 = v8;
      v9[1] = v10;
      v11 = sub_192227960();
      v13 = v12;

      v14 = &v2[OBJC_IVAR___CHKWidgetPersonality_kind];
      *v14 = v11;
      v14[1] = v13;
      v17.receiver = v2;
      v17.super_class = type metadata accessor for WidgetPersonality();
      v15 = objc_msgSendSuper2(&v17, sel_init);

      return v15;
    }
  }

  type metadata accessor for WidgetPersonality();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_192166F4C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  v5 = sub_192227930();
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v8 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_kind + 8);
  v9 = sub_192227930();
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];
}

uint64_t sub_19216716C()
{
  MEMORY[0x193B0A990](*(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier), *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8));
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v0 + OBJC_IVAR___CHKWidgetPersonality_kind), *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

id WidgetPersonality.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_192167320(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_192227930();

  return v6;
}

uint64_t WidgetIdentifiable.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind);
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8);

  return v1;
}

id WidgetIdentifiable.__allocating_init(extensionIdentity:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity] = a1;
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetIdentifiable.init(extensionIdentity:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity] = a1;
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetIdentifiable();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_192167570()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity) description];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v1 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind), *(v1 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_192167634(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity);
  v5 = [a1 extensionIdentity];
  v6 = sub_1922281D0();

  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind);
    v8 = *(v2 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8);
    v9 = [a1 kind];
    v10 = sub_192227960();
    v12 = v11;

    if (v7 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1922289A0();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_19216775C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

id sub_192167834(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1921678BC(void *a1)
{
  v3 = [a1 extensionBundleIdentifier];
  v4 = sub_192227960();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v7 = v4;
  v7[1] = v6;
  v8 = [a1 kind];
  v9 = sub_192227960();
  v11 = v10;

  v12 = &v1[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v12 = v9;
  v12[1] = v11;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_192167B04(uint64_t result)
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

  result = sub_1920C33EC(result, v12, 1, v3);
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

uint64_t sub_192167BF0(uint64_t result)
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

  result = sub_1920C3388(result, v12, 1, v3);
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

void *sub_192167CDC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1920C3400(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Preview.init<A>(_:as:widget:timeline:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a3;
  v13 = swift_allocObject();
  v13[2] = a8;
  v13[3] = a9;
  v13[4] = a4;
  v13[5] = a5;
  sub_192121388();
  return sub_192225740();
}

uint64_t sub_192167EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *(a1 + 24) = *(v1 + 16);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v3();
}

uint64_t Preview.init<A, B>(_:as:widget:timelineProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *a3;
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a4;
  v17[7] = a5;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = a10;
  v18[5] = a11;
  v18[6] = a6;
  v18[7] = a7;
  sub_192121404();
  return sub_192225740();
}

uint64_t sub_19216801C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  a1[3] = v3;
  a1[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v5();
}

uint64_t sub_19216805C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  a1[3] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v4();
}

uint64_t Preview.init<A, B>(_:as:using:widget:timelineProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a5;
  v17[7] = a6;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a7;
  v18[7] = a8;
  sub_192121404();
  return sub_192225740();
}

{
  v15 = *a3;
  v16 = swift_allocObject();
  v16[2] = a9;
  v16[3] = a10;
  v16[4] = a11;
  v16[5] = a12;
  v16[6] = a5;
  v16[7] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[3] = AssociatedTypeWitness;
  v24[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v19 = *(AssociatedTypeWitness - 8);
  (*(v19 + 16))(boxed_opaque_existential_1, a4, AssociatedTypeWitness);
  v20 = swift_allocObject();
  v20[2] = a9;
  v20[3] = a10;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a7;
  v20[7] = a8;
  v24[5] = sub_1921697D4;
  v24[6] = v20;
  sub_192121404();
  sub_192225740();
  return (*(v19 + 8))(a4, AssociatedTypeWitness);
}

uint64_t sub_192168360@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[6];
  v5 = v1[7];
  a1[3] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v4();
}

uint64_t static PreviewTimelineBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4B0, &unk_19222AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  return v6;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static PreviewTimelineBuilder.buildPartialBlock(accumulated:next:)()
{

  sub_192167CDC(v0);
}

void *static PreviewTimelineBuilder.buildArray(_:)(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *i;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_1920C3400(result, v9, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = v2[2];
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          v2[2] = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Preview.init<A, B>(_:widget:relevanceEntries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a3;
  v16[7] = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  sub_19212181C();
  return sub_192225740();
}

uint64_t sub_1921686D8(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1921687C4;

  return v7();
}

uint64_t sub_1921687C4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04D0, &qword_192234938);
  v3 = sub_192228590();

  v4 = *(v6 + 8);

  return v4(v3);
}

uint64_t Preview.init<A, B>(_:widget:relevanceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a3;
  v16[7] = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a5;
  v18[7] = a6;
  sub_192121914();

  return sub_192225740();
}

uint64_t sub_192168A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = *(a4 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();
  sub_192227CC0();
  v6[10] = sub_192227CB0();
  v10 = sub_192227C70();
  v6[11] = v10;
  v6[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_192168B38, v10, v9);
}

uint64_t sub_192168B38()
{
  v1 = *(v0 + 72);
  v11 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 32))();
  v3 = *(v11 + 40);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_192168C60;
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  return v10(v0 + 16, v7, v8);
}

uint64_t sub_192168C60()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 48);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 96);
  v7 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_192168DE4, v7, v6);
}

uint64_t sub_192168DE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];

  v9 = v0[2];
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for WidgetRelevance();
  sub_192219C94(v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t Preview.init<A, B>(_:widget:relevanceProvider:relevance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a5;
  v18[7] = a6;
  v19 = swift_allocObject();
  v19[2] = a9;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a7;
  v19[7] = a8;
  sub_192121914();
  return sub_192225740();
}

uint64_t sub_192168FE8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[3] = a1;
  v6[6] = sub_192227CC0();
  v6[7] = sub_192227CB0();
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_192169108;

  return v11(v6 + 2);
}

uint64_t sub_192169108()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v5 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_192169244, v5, v4);
}

uint64_t sub_192169244()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  v8 = v0[2];
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for WidgetRelevance();
  sub_192219C94(v5, v4);

  v6 = v0[1];

  return v6();
}

uint64_t static PreviewRelevanceEntryBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_192169490(a2, a2);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = *(a2 - 8);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  swift_allocObject();
  v10 = sub_192227B90();
  (*(v7 + 16))(v11, a1, a2);
  sub_192227C40();
  return v10;
}

uint64_t static PreviewRelevanceEntryBuilder.buildArray(_:)()
{
  sub_192227C40();
  sub_192227C40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_192227AE0();
}

uint64_t sub_192169490(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_192169508()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1920D7114;

  return sub_1921686D8(v7, v6, v2);
}

uint64_t sub_1921695DC(uint64_t a1)
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
  v10[1] = sub_1920B3B44;

  return sub_192168A48(a1, v9, v8, v4, v5, v6);
}

uint64_t sub_1921696B0(uint64_t a1)
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
  v10[1] = sub_1920A59A8;

  return sub_192168FE8(a1, v9, v8, v4, v5, v6);
}

uint64_t static WidgetLocalizations.< infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v0 = sub_192225510();
  v2 = v1;
  if (v0 == sub_192225510() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1922289A0();
  }

  return v5 & 1;
}

uint64_t WidgetLocalizations.__allocating_init(identifier:availableLocalizations:supportsMixedLocalizations:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  sub_192225500();
  *(v9 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations) = a3;
  *(v9 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) = a4;
  return v9;
}

uint64_t WidgetLocalizations.init(identifier:availableLocalizations:supportsMixedLocalizations:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_192225500();
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier, v11, v7);
  *(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations) = a3;
  *(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) = a4;
  return v4;
}

uint64_t sub_192169A50(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x8000000192248590;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000192248590;
  }

  else
  {
    v6 = 0x80000001922485B0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA00000000007265;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001922485B0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_192169B30()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192169BDC()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_192169C74()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192169D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_19216AD20();
  *a2 = result;
  return result;
}

void sub_192169D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xD000000000000016;
  v5 = 0x8000000192248590;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001922485B0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_192169DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19216AD20();
  *a1 = result;
  return result;
}

uint64_t sub_192169DDC(uint64_t a1)
{
  v2 = sub_192046078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192169E18(uint64_t a1)
{
  v2 = sub_192046078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192169E54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v14 - v6, v1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier, v3);
  v7 = sub_192228A20();
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);
  v10 = sub_192227B60();
  v11 = sub_192227930();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
  v13 = sub_192227930();
  [a1 encodeBool:v12 forKey:v13];
}

uint64_t WidgetLocalizations.__allocating_init(coder:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  WidgetLocalizations.init(coder:)(a1);
  return 0;
}

uint64_t WidgetLocalizations.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1208, &qword_192239708);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = sub_192227930();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {

    sub_192033970(&v36, &unk_1EADEF330, &unk_19222CD40);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v15 = swift_dynamicCast();
  (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    v16 = &unk_1EADF1208;
    v17 = &qword_192239708;
    v18 = v7;
LABEL_9:
    sub_192033970(v18, v16, v17);
    goto LABEL_10;
  }

  (*(v9 + 32))(v12, v7, v8);
  v22 = sub_192227930();
  v23 = [a1 decodeObjectForKey_];

  if (v23)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    (*(v9 + 8))(v12, v8);

LABEL_25:
    v16 = &unk_1EADEF330;
    v17 = &unk_19222CD40;
    v18 = &v36;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);

    goto LABEL_10;
  }

  v24 = sub_192227930();
  v25 = [a1 decodeObjectForKey_];

  if (v25)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    (*(v9 + 8))(v12, v8);

    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    sub_192225510();
    v26 = type metadata accessor for WidgetLocalizations();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    sub_192225500();

    v30 = *(v9 + 8);
    v30(v12, v8);
    swift_setDeallocating();
    v30((v29 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier), v8);

    v31 = *(*v29 + 48);
    v32 = *(*v29 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }

LABEL_10:
  v19 = *(*v2 + 48);
  v20 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19216A63C()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224C2C0);
  v1 = MEMORY[0x193B0AB30](*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), MEMORY[0x1E69E6158]);
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](0x69746E656469202CLL, 0xEE00203A72656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&unk_1EADED340);
  v2 = sub_192228910();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224C2E0);
  if (*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v3, v4);

  return 0;
}

uint64_t WidgetLocalizations.deinit()
{
  v1 = OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);

  return v0;
}

uint64_t WidgetLocalizations.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t WidgetLocalizations.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WidgetLocalizations.init(from:)(a1);
  return v5;
}

uint64_t sub_19216A97C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = sub_192225510();
  v6 = v5;
  if (v4 == sub_192225510() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&qword_1EADED350);
  sub_192227B00();
  sub_192227B00();
  if (v9 == v7 && v10 == v8)
  {
  }

  else
  {
    v4 = sub_1922289A0();

    if ((v4 & 1) == 0)
    {
LABEL_7:
      v5 = 0;
      return v5 & 1;
    }
  }

  if ((sub_1920E0BF0(*(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), *(a2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations)) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) ^ *(a2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) ^ 1;
  return v5 & 1;
}

unint64_t sub_19216AB80()
{
  result = qword_1EADF1230;
  if (!qword_1EADF1230)
  {
    type metadata accessor for WidgetLocalizations();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1230);
  }

  return result;
}

unint64_t sub_19216ACCC()
{
  result = qword_1EADF1238;
  if (!qword_1EADF1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1238);
  }

  return result;
}

uint64_t sub_19216AD20()
{
  v0 = sub_192228700();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static WidgetIsSnapshottingKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1240 = a1;
  return result;
}

uint64_t (*EnvironmentValues.widgetIsSnapshotting.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19203F2E0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216AEF8;
}

uint64_t sub_19216AF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19216B574();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.widgetReferenceDate.getter()
{
  sub_1920416B0();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.widgetReferenceDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_192041788(a1, &v6 - v4);
  sub_1920416B0();
  sub_1922261F0();
  return sub_1920418D4(a1);
}

void (*EnvironmentValues.widgetReferenceDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1920416B0();
  sub_1922261E0();
  return sub_19216B1B0;
}

void sub_19216B1B0(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_192041788((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_192041788(v3[2], v3[1]);
    sub_1922261F0();
    sub_1920418D4(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_1922261F0();
  }

  sub_1920418D4(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t static WidgetAnimationsPausedKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1248 = a1;
  return result;
}

uint64_t sub_19216B384(void (*a1)(void))
{
  a1();
  sub_1922261E0();
  return v2;
}

uint64_t sub_19216B3CC@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F23C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19216B41C(char *a1)
{
  v2 = *a1;
  sub_19203F23C();
  return sub_1922261F0();
}

uint64_t (*EnvironmentValues.widgetAnimationsPaused.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19203F23C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216B538;
}

unint64_t sub_19216B574()
{
  result = qword_1EADF1250;
  if (!qword_1EADF1250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEED10, &unk_19222B0F0);
    sub_19216B5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1250);
  }

  return result;
}

unint64_t sub_19216B5F8()
{
  result = qword_1EADEDEE8;
  if (!qword_1EADEDEE8)
  {
    sub_192225150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDEE8);
  }

  return result;
}

uint64_t sub_19216B650()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19216B76C()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t JindoMetricsDefinition.init(obstructionSize:compactLeadingMetrics:compactTrailingMetrics:compactMinimalMetrics:expandedMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a6;
  a5[1] = a7;
  v12 = type metadata accessor for JindoMetricsDefinition();
  sub_1920F8D30(a1, a5 + v12[5]);
  sub_1920F8D30(a2, a5 + v12[6]);
  sub_1920F8D30(a3, a5 + v12[7]);
  v13 = a5 + v12[8];

  return sub_1920F8D30(a4, v13);
}

uint64_t type metadata accessor for JindoMetricsDefinition()
{
  result = qword_1ED74B988;
  if (!qword_1ED74B988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JindoMetricsDefinition.description.getter()
{
  v1 = v0;
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000002ALL, 0x800000019224C340);
  v12 = *v0;
  type metadata accessor for CGSize(0);
  sub_1922285A0();
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224C370);
  v2 = type metadata accessor for JindoMetricsDefinition();
  v3 = v0 + v2[5];
  v4 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C390);
  v5 = v1 + v2[6];
  v6 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v6);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C3B0);
  v7 = v1 + v2[7];
  v8 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v8);

  MEMORY[0x193B0A990](0x646E61707865202CLL, 0xEC000000203A6465);
  v9 = v1 + v2[8];
  v10 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v10);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t JindoMetricsDefinition.hashValue.getter()
{
  v1 = v0;
  sub_192228AD0();
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v2);
  v3 = v0[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v3);
  v4 = type metadata accessor for JindoMetricsDefinition();
  v5 = v0 + v4[5];
  MetricsRequest.hash(into:)();
  v6 = v1 + v4[6];
  MetricsRequest.hash(into:)();
  v7 = v1 + v4[7];
  MetricsRequest.hash(into:)();
  v8 = v1 + v4[8];
  MetricsRequest.hash(into:)();
  return sub_192228B30();
}

double JindoMetricsDefinition.obstructionSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t JindoMetricsDefinition.compactLeadingMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition() + 20);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.compactTrailingMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition() + 24);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.compactMinimalMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition() + 28);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.expandedMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition() + 32);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v2);
  v3 = v0[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v3);
  v4 = type metadata accessor for JindoMetricsDefinition();
  v5 = v0 + v4[5];
  MetricsRequest.hash(into:)();
  v6 = v1 + v4[6];
  MetricsRequest.hash(into:)();
  v7 = v1 + v4[7];
  MetricsRequest.hash(into:)();
  v8 = v1 + v4[8];
  return MetricsRequest.hash(into:)();
}

uint64_t sub_19216C0B4()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_19216C1C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_19216D17C();
  *a2 = result;
  return result;
}

void sub_19216C1F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7363697274654DLL;
  v4 = 0x6465646E61707865;
  if (v2 == 4)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000192248650;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000192248630;
  }

  v5 = 0x80000001922485D0;
  v6 = 0xD000000000000014;
  v7 = 0x80000001922485F0;
  if (v2 != 1)
  {
    v7 = 0x8000000192248610;
  }

  if (*v1)
  {
    v6 = 0xD000000000000015;
    v5 = v7;
  }

  if (*v1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_19216C2C4()
{
  v1 = *v0;
  v2 = 0x6465646E61707865;
  if (v1 == 4)
  {
    v2 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19216C394@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19216D17C();
  *a1 = result;
  return result;
}

uint64_t sub_19216C3BC(uint64_t a1)
{
  v2 = sub_19216CD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216C3F8(uint64_t a1)
{
  v2 = sub_19216CD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JindoMetricsDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v41 = type metadata accessor for MetricsRequest();
  v3 = *(*(v41 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v41);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1258, &qword_192239AD0);
  v40 = *(v42 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v36 - v15;
  v17 = type metadata accessor for JindoMetricsDefinition();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_19216CD48();
  v43 = v16;
  v23 = v44;
  sub_192228B70();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v24 = v13;
  v44 = v11;
  v37 = v8;
  v25 = v40;
  v26 = v20;
  v51 = 0;
  v27 = v42;
  sub_192228780();
  v29 = v28;
  v50 = 1;
  sub_192228780();
  v31 = v30;
  v49 = 2;
  sub_19216CF6C(&qword_1EADEDF50, type metadata accessor for MetricsRequest);
  sub_1922287C0();
  sub_1920F8D30(v24, &v20[v17[5]]);
  v48 = 3;
  v32 = v44;
  sub_1922287C0();
  sub_1920F8D30(v32, v26 + v17[6]);
  v47 = 4;
  v33 = v37;
  sub_1922287C0();
  sub_1920F8D30(v33, v26 + v17[7]);
  v46 = 5;
  v34 = v39;
  sub_1922287C0();
  (*(v25 + 8))(v43, v27);
  sub_1920F8D30(v34, v26 + v17[8]);
  *v26 = v29;
  v26[1] = v31;
  sub_19216CD9C(v26, v38, type metadata accessor for JindoMetricsDefinition);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_19216CE04(v26, type metadata accessor for JindoMetricsDefinition);
}

uint64_t JindoMetricsDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1260, &qword_192239AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19216CD48();
  sub_192228B90();
  v19 = *v3;
  v18 = 0;
  sub_192059A84();
  sub_1922288C0();
  if (!v2)
  {
    v19 = v3[1];
    v18 = 1;
    sub_1922288C0();
    v12 = type metadata accessor for JindoMetricsDefinition();
    v13 = v12[5];
    LOBYTE(v19) = 2;
    type metadata accessor for MetricsRequest();
    sub_19216CF6C(&qword_1EADED168, type metadata accessor for MetricsRequest);
    sub_1922288C0();
    v14 = v12[6];
    LOBYTE(v19) = 3;
    sub_1922288C0();
    v15 = v12[7];
    LOBYTE(v19) = 4;
    sub_1922288C0();
    v16 = v12[8];
    LOBYTE(v19) = 5;
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_19216CC88(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_192228AD0();
  v5 = *v2;
  if (*v2 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v5);
  v6 = v2[1];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v6);
  v7 = v2 + a2[5];
  MetricsRequest.hash(into:)();
  v8 = v4 + a2[6];
  MetricsRequest.hash(into:)();
  v9 = v4 + a2[7];
  MetricsRequest.hash(into:)();
  v10 = v4 + a2[8];
  MetricsRequest.hash(into:)();
  return sub_192228B30();
}

unint64_t sub_19216CD48()
{
  result = qword_1EADEE128;
  if (!qword_1EADEE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE128);
  }

  return result;
}

uint64_t sub_19216CD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19216CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WidgetKit22JindoMetricsDefinitionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = type metadata accessor for JindoMetricsDefinition();
  if ((static MetricsRequest.== infix(_:_:)(a1 + v5[5], a2 + v5[5]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(a1 + v5[6], a2 + v5[6]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(a1 + v5[7], a2 + v5[7]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[8];

  return static MetricsRequest.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_19216CF6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19216CFDC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsRequest();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19216D078()
{
  result = qword_1EADF1270;
  if (!qword_1EADF1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1270);
  }

  return result;
}

unint64_t sub_19216D0D0()
{
  result = qword_1EADEE118;
  if (!qword_1EADEE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE118);
  }

  return result;
}

unint64_t sub_19216D128()
{
  result = qword_1EADEE120;
  if (!qword_1EADEE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE120);
  }

  return result;
}

uint64_t sub_19216D17C()
{
  v0 = sub_192228700();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

__n128 sub_19216D1F4@<Q0>(uint64_t a1@<X8>)
{
  v22 = sub_1922265B0();
  v33 = 1;
  sub_19216D540(&v24);
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v44[0] = v24;
  v44[1] = v25;
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v45 = v31;
  sub_19202CFFC(&v36, v23, &qword_1EADF1278, &qword_192239E08);
  sub_192033970(v44, &qword_1EADF1278, &qword_192239E08);
  *(&v32[4] + 7) = v40;
  *(&v32[5] + 7) = v41;
  *(&v32[6] + 7) = v42;
  *(&v32[7] + 7) = v43;
  *(v32 + 7) = v36;
  *(&v32[1] + 7) = v37;
  *(&v32[2] + 7) = v38;
  *(&v32[3] + 7) = v39;
  v2 = v33;
  v3 = sub_192226D10();
  v34 = 1;
  v20 = sub_1922275F0();
  v21 = v4;
  LOBYTE(v19) = 0;
  LOBYTE(v18) = 1;
  sub_192225DA0();
  *&v35[55] = v27;
  *&v35[71] = v28;
  *&v35[87] = v29;
  *&v35[103] = v30;
  *&v35[7] = v24;
  *&v35[23] = v25;
  *&v35[39] = v26;
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_192227330();
  v7 = sub_192226D10();
  v8 = *MEMORY[0x1E6994208];
  sub_192227960();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1280, &qword_192239E10) + 36);
  sub_192225010();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1288, &unk_192239E18);
  sub_19202CFFC(a1 + v9, a1 + *(v10 + 36), &qword_1EADEEE10, &unk_19222B630);
  v11 = v32[5];
  *(a1 + 81) = v32[4];
  *(a1 + 97) = v11;
  *(a1 + 113) = v32[6];
  *(a1 + 128) = *(&v32[6] + 15);
  v12 = v32[1];
  *(a1 + 17) = v32[0];
  *(a1 + 33) = v12;
  v13 = v32[3];
  *(a1 + 49) = v32[2];
  *(a1 + 65) = v13;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v14 = *&v35[16];
  *(a1 + 185) = *v35;
  *(a1 + 201) = v14;
  v15 = *&v35[48];
  *(a1 + 217) = *&v35[32];
  *(a1 + 296) = *&v35[111];
  result = *&v35[96];
  v17 = *&v35[64];
  *(a1 + 265) = *&v35[80];
  *(a1 + 281) = result;
  *(a1 + 249) = v17;
  *a1 = v22;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 144) = v3;
  *(a1 + 148) = *(v23 + 3);
  *(a1 + 145) = v23[0];
  *(a1 + 184) = 1;
  *(a1 + 233) = v15;
  *(a1 + 304) = v6;
  *(a1 + 312) = v7;
  return result;
}

uint64_t sub_19216D540@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_192227390();
  v26 = sub_192226E60();
  KeyPath = swift_getKeyPath();
  v24 = sub_1922272D0();
  v29 = swift_getKeyPath();
  v28 = sub_192226D30();
  sub_192226540();
  v2 = sub_192226FC0();
  v4 = v3;
  v6 = v5;
  sub_192226D80();
  v7 = sub_192226F90();
  v9 = v8;
  v11 = v10;

  sub_19207A338(v2, v4, v6 & 1);

  sub_1922272D0();
  v12 = sub_192226F70();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_19207A338(v7, v9, v11 & 1);

  *&v31 = v27;
  *(&v31 + 1) = KeyPath;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  *&v33 = v24;
  BYTE8(v33) = v28;
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  LOBYTE(v42) = 1;
  v39 = v33;
  v40 = 0u;
  v41 = 0u;
  v37 = v31;
  v38 = v32;
  v19 = v32;
  *a1 = v31;
  *(a1 + 16) = v19;
  v20 = v39;
  v21 = v41;
  v22 = v42;
  *(a1 + 48) = v40;
  *(a1 + 64) = v21;
  *(a1 + 32) = v20;
  *(a1 + 80) = v22;
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16 & 1;
  *(a1 + 112) = v18;
  sub_19202CFFC(&v31, v43, &qword_1EADF1290, &qword_192239E88);
  sub_1921114E4(v12, v14, v16 & 1);

  sub_19207A338(v12, v14, v16 & 1);

  v43[0] = v27;
  v43[1] = KeyPath;
  v43[2] = v26;
  v43[3] = v29;
  v43[4] = v24;
  v44 = v28;
  *v45 = *v30;
  *&v45[3] = *&v30[3];
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  return sub_192033970(v43, &qword_1EADF1290, &qword_192239E88);
}

unint64_t sub_19216D80C()
{
  result = qword_1EADF1298;
  if (!qword_1EADF1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1280, &qword_192239E10);
    sub_19216D8C8();
    sub_19216DB80(&unk_1ED749C30, type metadata accessor for WidgetURLMetadataModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1298);
  }

  return result;
}

unint64_t sub_19216D8C8()
{
  result = qword_1EADF12A0;
  if (!qword_1EADF12A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1288, &unk_192239E18);
    sub_19216D984();
    sub_19216DB80(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12A0);
  }

  return result;
}

unint64_t sub_19216D984()
{
  result = qword_1EADF12A8;
  if (!qword_1EADF12A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12B0, &qword_192239E90);
    sub_19216DA3C();
    sub_192031E74(&qword_1EADED2C0, &qword_1EADF12E8, &unk_192239EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12A8);
  }

  return result;
}

unint64_t sub_19216DA3C()
{
  result = qword_1EADF12B8;
  if (!qword_1EADF12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12C0, &qword_192239E98);
    sub_19216DAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12B8);
  }

  return result;
}

unint64_t sub_19216DAC8()
{
  result = qword_1EADF12C8;
  if (!qword_1EADF12C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12D0, &qword_192239EA0);
    sub_192031E74(&qword_1EADF12D8, &qword_1EADF12E0, &qword_192239EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12C8);
  }

  return result;
}

uint64_t sub_19216DB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19216DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19216E53C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues._widgetAccentedDesaturatedMode.getter()
{
  sub_19206DB90();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetAccentedDesaturatedMode.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_19206DB90();
  sub_1922261E0();
  return sub_19216DD04;
}

uint64_t sub_19216DD04(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_1922261F0();
}

uint64_t sub_19216DD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465746E65636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19216DDC4(uint64_t a1)
{
  v2 = sub_19206F028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216DE00(uint64_t a1)
{
  v2 = sub_19206F028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAccentedDesaturatedViewModifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F8, &qword_192239F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 25);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B90();
  sub_192228870();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_19216DF74()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 25);
  if ((*(v0 + 8) & 1) == 0)
  {
    v8 = *v0;

    sub_192227FA0();
    v9 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v13[1];
  }

  v10 = v7 ^ 1;
  if (v6 == 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v6 != 2)
  {
    v10 = v11;
  }

  if (v6 == 3)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_19216E0E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double static _ColorMatrix.invertedLuminanceToAlphaColorMatrix.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = -0.000352859437;
  *(a1 + 60) = xmmword_192239EC0;
  *(a1 + 76) = 0;
  return result;
}

double static _ColorMatrix.luminanceToAlphaColorMatrix.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 0.000352859321;
  *(a1 + 60) = xmmword_192239ED0;
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_19216E134(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F8, &qword_192239F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 25);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B90();
  sub_192228870();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_19216E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206F194();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19216E344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19216E3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19216E424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19216E48C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}