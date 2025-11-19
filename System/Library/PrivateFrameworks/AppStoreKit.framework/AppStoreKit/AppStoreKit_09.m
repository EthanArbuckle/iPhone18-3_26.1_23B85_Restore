uint64_t sub_1E13FEF70()
{
  v8 = sub_1E1AF68DC();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1E1361A80();
  sub_1E1AF323C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v9 = v5;
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1E1AF692C();
  qword_1EE1D23E0 = result;
  return result;
}

void sub_1E13FF23C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v1 = sub_1E1AEFBEC();
  v2 = [v0 initWithURL:v1 options:0];

  sub_1E1AF586C();
}

uint64_t sub_1E13FF2BC(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35F8);
  v11 = sub_1E1AF588C();
  if (qword_1EE1D23D8 != -1)
  {
    swift_once();
  }

  v16[1] = qword_1EE1D23E0;
  (*(v9 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1E13FF694;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v14);
  _Block_release(v14);
  (*(v19 + 8))(v4, v2);
  (*(v17 + 8))(v7, v18);

  return v11;
}

void sub_1E13FF694()
{
  sub_1E1AEFCCC();

  sub_1E13FF23C();
}

uint64_t sub_1E13FF6F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

AppStoreKit::VideoPlaybackChecks __swiftcall VideoPlaybackChecks.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlaybackChecks(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlaybackChecks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t ProductDescription.__allocating_init(id:paragraph:developerAction:developerLinks:tags:numberOfTagRowsStandard:numberOfTagRowsAX:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0;
  sub_1E134FD1C(a1, &v32, &unk_1ECEB5670);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 104) = v32;
    *(v17 + 120) = v18;
    *(v17 + 136) = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a2;
    v28 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a2 = v27;
    a4 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v17 + 16) = v29;
  *(v17 + 24) = a4;
  *(v17 + 32) = a2;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  return v17;
}

uint64_t ProductDescription.init(id:paragraph:developerAction:developerLinks:tags:numberOfTagRowsStandard:numberOfTagRowsAX:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v30 = a3;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 96) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v28 = a2;
    v29 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v31 = v22;
    v32 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a2 = v28;
    a4 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v26 = v37;
  *(v8 + 104) = v36;
  *(v8 + 120) = v26;
  *(v8 + 136) = v38;
  *(v8 + 16) = v30;
  *(v8 + 24) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  return v8;
}

uint64_t sub_1E13FFD70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t sub_1E13FFE08(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1E13FFEA0(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2DF0);
  v3 = *a2;
  swift_beginAccess();
  sub_1E137F818(v5, v3 + 72);
  return swift_endAccess();
}

uint64_t sub_1E13FFF64(uint64_t a1)
{
  swift_beginAccess();
  sub_1E137F818(a1, v1 + 72);
  return swift_endAccess();
}

uint64_t ProductDescription.deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 104);
  return v0;
}

uint64_t ProductDescription.__deallocating_deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1400108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E14001E4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1400178@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 72, a1, &qword_1ECEB2DF0);
}

uint64_t sub_1E14001E4(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v83 = sub_1E1AEFEAC();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  v85 = sub_1E1AF380C();
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v77 - v23;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v91 = v5;
  v25 = *(v5 + 16);
  v26 = v100;
  v25(v11, v100, v4);
  v88 = v24;
  sub_1E1AF464C();
  v27 = v93;
  v25(v93, v26, v4);
  sub_1E1AF381C();
  v28 = v27;
  v29 = v90;
  v89 = v5 + 16;
  v25(v11, v28, v4);
  v30 = a1;
  type metadata accessor for RibbonBarItem();
  sub_1E1400D64(&qword_1EE1F4A00, 255, type metadata accessor for RibbonBarItem);
  v78 = v11;
  v31 = sub_1E1AF630C();
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  if (v33)
  {
    *&v96 = v32;
    *(&v96 + 1) = v33;
    sub_1E1AF6F6C();
    v34 = v29;
    v35 = v85;
    v90 = *(v92 + 8);
    (v90)(v34, v85);
    v36 = v91;
  }

  else
  {
    v37 = v81;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v39 = v31;
    v40 = v38;
    v80 = v39;
    v41 = v4;
    v43 = v42;
    (*(v82 + 8))(v37, v83);
    *&v96 = v40;
    *(&v96 + 1) = v43;
    v4 = v41;
    v36 = v91;
    v31 = v80;
    sub_1E1AF6F6C();
    v44 = v29;
    v35 = v85;
    v90 = *(v92 + 8);
    (v90)(v44, v85);
  }

  v45 = v84;
  sub_1E1AF381C();
  v46 = v86;
  v25(v86, v100, v4);
  v47 = v87;
  v48 = sub_1E165AA74(v45, v46);
  if (v47)
  {

    v49 = *(v36 + 8);
    v49(v100, v4);
    (v90)(v30, v35);
    sub_1E1308058(v99, &unk_1ECEB5670);
    v49(v93, v4);
    sub_1E1308058(v88, &unk_1ECEB1770);
  }

  else
  {
    v86 = v48;
    v87 = 0;
    v80 = v31;
    v50 = v30;
    type metadata accessor for Action();
    v84 = v25;
    v51 = v35;
    sub_1E1AF381C();
    v52 = v100;
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v100);
    v53 = v35;
    v54 = v90;
    (v90)(v21, v53);
    sub_1E1AF381C();
    v92 = v4;
    (v84)(v78, v52, v4);
    type metadata accessor for ProductPageLink();
    sub_1E1400D64(&qword_1EE1F2F08, 255, type metadata accessor for ProductPageLink);
    v89 = sub_1E1AF630C();
    v55 = v77;
    sub_1E1AF381C();
    v56 = sub_1E1AF36EC();
    v58 = v57;
    v54(v55, v51);
    v59 = 2;
    if ((v58 & 1) == 0)
    {
      v59 = v56;
    }

    v84 = v59;
    v60 = v79;
    v61 = v50;
    sub_1E1AF381C();
    v62 = sub_1E1AF36EC();
    v64 = v63;
    v65 = v51;
    v54(v60, v51);
    if (v64)
    {
      v66 = 5;
    }

    else
    {
      v66 = v62;
    }

    type metadata accessor for ProductDescription();
    v35 = swift_allocObject();
    *(v35 + 64) = 0u;
    *(v35 + 80) = 0u;
    *(v35 + 96) = 0;
    sub_1E134FD1C(v99, &v96, &unk_1ECEB5670);
    if (*(&v97 + 1))
    {
      v67 = v97;
      *(v35 + 104) = v96;
      *(v35 + 120) = v67;
      *(v35 + 136) = v98;
    }

    else
    {
      v68 = v81;
      sub_1E1AEFE9C();
      v69 = sub_1E1AEFE7C();
      v71 = v70;
      (*(v82 + 8))(v68, v83);
      v94 = v69;
      v95 = v71;
      sub_1E1AF6F6C();
      sub_1E1308058(&v96, &unk_1ECEB5670);
    }

    v72 = v92;
    v73 = *(v91 + 8);
    v73(v100, v92);
    (v90)(v61, v65);
    sub_1E1308058(v99, &unk_1ECEB5670);
    v73(v93, v72);
    sub_1E1308058(v88, &unk_1ECEB1770);
    v74 = v89;
    *(v35 + 16) = v85;
    *(v35 + 24) = v74;
    v75 = v80;
    *(v35 + 32) = v86;
    *(v35 + 40) = v75;
    *(v35 + 48) = v84;
    *(v35 + 56) = v66;
  }

  return v35;
}

uint64_t sub_1E1400D64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E1400E4C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B07AD0;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x1E6959968];
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v28 = sub_1E140205C;
  v29 = v10;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1E1395DC0;
  v27 = &block_descriptor_13;
  v11 = _Block_copy(&v24);

  v12 = [v7 addObserverForName:v8 object:v9 queue:0 usingBlock:v11];
  _Block_release(v11);

  *(v5 + 32) = v12;
  v13 = [v6 defaultCenter];
  v14 = *MEMORY[0x1E69ADD68];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v28 = sub_1E1402014;
  v29 = v15;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1E1395DC0;
  v27 = &block_descriptor_19;
  v16 = _Block_copy(&v24);

  v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);

  *(v5 + 40) = v17;
  v18 = [v6 defaultCenter];
  v19 = *MEMORY[0x1E69DDBC0];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v28 = sub_1E140205C;
  v29 = v20;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1E1395DC0;
  v27 = &block_descriptor_25;
  v21 = _Block_copy(&v24);

  v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  *(v5 + 48) = v22;
  return v5;
}

uint64_t sub_1E14011A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = [*(a2 + 16) ams_activeiTunesAccount];
  if (v9 && (v10 = v9, v11 = [v9 ams_DSID], v10, v11))
  {
    v27 = [objc_opt_self() exceptionConnection];
    [v27 activate];
    v25 = *(v5 + 16);
    v25(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v26 = v11;
    v14 = v4;
    v15 = v13;
    v24 = *(v5 + 32);
    v24(v13 + v12, v8, v14);
    v32 = sub_1E1401EC0;
    v33 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1E164F7D4;
    v31 = &block_descriptor_7;
    v16 = _Block_copy(&aBlock);

    v23 = [v27 asynchronousExceptionServiceWithErrorHandler_];
    _Block_release(v16);
    v25(v8, a1, v14);
    v17 = swift_allocObject();
    v24(v17 + v12, v8, v14);
    v32 = sub_1E1401F3C;
    v33 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1E1401DD0;
    v31 = &block_descriptor_7;
    v18 = _Block_copy(&aBlock);

    v19 = v26;
    [v23 fetchAllAppExceptionsForRequesterDSID:v26 completionHandler:v18];
    _Block_release(v18);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE1D27D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1EE215498);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    aBlock = sub_1E159F538(MEMORY[0x1E69E7CC0]);
    return sub_1E1AF63EC();
  }
}

uint64_t sub_1E1401614()
{
  v0 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (qword_1EE1D27D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF385C();
  sub_1E13E44F8(v5);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v5[0] = sub_1E159F538(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600);
  return sub_1E1AF63EC();
}

uint64_t sub_1E140186C(unint64_t a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF591C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if (!a1 || a2)
  {
    if (qword_1EE1D27D0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_4;
  }

  v14 = sub_1E159F538(MEMORY[0x1E69E7CC0]);
  v7 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 >> 62)
  {
    v15 = sub_1E1AF71CC();
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_42:
    *&v45 = v14;
    goto LABEL_43;
  }

  v15 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_10:
  v39 = v7;
  v9 = 0;
  v41 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v41)
    {
      v17 = MEMORY[0x1E68FFD80](v9, v42);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_39;
      }

      v17 = *(v42 + 8 * v9 + 32);
    }

    a2 = v17;
    v7 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v18 = [v17 bundleIdentifier];
    v19 = sub_1E1AF5DFC();
    v21 = v20;

    if (v14[2] && (v22 = sub_1E13018F8(v19, v21), (v23 & 1) != 0))
    {
      v6 = *(v14[7] + 8 * v22);
    }

    else
    {
      v6 = 0;
    }

    v24 = [a2 ratingValue];
    if (v24 < 0)
    {
      goto LABEL_36;
    }

    if (v24 > v6)
    {
      v6 = v24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v14;
    v26 = sub_1E13018F8(v19, v21);
    v28 = v14[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_37;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_1E168A47C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1E13018F8(v19, v21);
      if ((v32 & 1) != (v33 & 1))
      {
        result = sub_1E1AF757C();
        __break(1u);
        return result;
      }

LABEL_30:
      if (v32)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v37 = v26;
    sub_1E1416B58();
    v26 = v37;
    if (v32)
    {
LABEL_11:
      v16 = v26;

      v14 = v45;
      *(*(v45 + 56) + 8 * v16) = v6;

      goto LABEL_12;
    }

LABEL_31:
    v14 = v45;
    *(v45 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v14[6] + 16 * v26);
    *v34 = v19;
    v34[1] = v21;
    *(v14[7] + 8 * v26) = v6;

    v35 = v14[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_38;
    }

    v14[2] = v36;
LABEL_12:
    ++v9;
    if (v7 == v15)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_4:
  v10 = __swift_project_value_buffer(v6, qword_1EE215498);
  (*(v7 + 16))(v9, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  if (a2)
  {
    swift_getErrorValue();
    v11 = v43;
    v12 = v44;
    *(&v46 + 1) = v44;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  sub_1E1AF385C();
  sub_1E13E44F8(&v45);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  (*(v7 + 8))(v9, v6);
  *&v45 = sub_1E159F538(MEMORY[0x1E69E7CC0]);
LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600);
  return sub_1E1AF63EC();
}

uint64_t sub_1E1401DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E1401FC8();
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1E1401E64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1401EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600);

  return sub_1E1401614();
}

uint64_t sub_1E1401F3C(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E140186C(a1, a2, v6);
}

unint64_t sub_1E1401FC8()
{
  result = qword_1EE1D2520;
  if (!qword_1EE1D2520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D2520);
  }

  return result;
}

uint64_t sub_1E1402060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a3 + 8);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = *(a1 + 32);
  v8 = v3;
  return v4(v7);
}

void sub_1E14020AC(void *a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerItemObserversAdded;
    if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerItemObserversAdded) & 1) == 0)
    {
      v3 = a1;
      v4 = sub_1E1AF5DBC();
      [v3 addObserver:v1 forKeyPath:v4 options:5 context:&unk_1ECEB3608];

      v5 = sub_1E1AF5DBC();
      [v3 addObserver:v1 forKeyPath:v5 options:1 context:&unk_1ECEB3608];

      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      v8 = sub_1E1AF5DBC();
      [v7 addObserver:v1 selector:sel_videoDidPlayToEnd name:v8 object:v3];

      v9 = [v6 defaultCenter];
      v10 = sub_1E1AF5DBC();
      [v9 addObserver:v1 selector:sel_videoPlaybackDidStall name:v10 object:v3];

      v11 = [v6 defaultCenter];
      v12 = sub_1E1AF5DBC();
      [v11 addObserver:v1 selector:sel_playbackErrorOccurredWithNotification_ name:v12 object:v3];

      v13 = [v6 defaultCenter];
      v14 = sub_1E1AF5DBC();
      [v13 addObserver:v1 selector:sel_playbackErrorOccurredWithNotification_ name:v14 object:v3];

      *(v1 + v2) = 1;
    }
  }
}

void sub_1E1402328(void *a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerItemObserversAdded;
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerItemObserversAdded) == 1)
    {
      v3 = a1;
      v4 = sub_1E1AF5DBC();
      [v3 removeObserver:v1 forKeyPath:v4 context:&unk_1ECEB3608];

      v5 = sub_1E1AF5DBC();
      [v3 removeObserver:v1 forKeyPath:v5 context:&unk_1ECEB3608];

      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      v8 = sub_1E1AF5DBC();
      [v7 removeObserver:v1 name:v8 object:v3];

      v9 = [v6 defaultCenter];
      v10 = sub_1E1AF5DBC();
      [v9 removeObserver:v1 name:v10 object:v3];

      v11 = [v6 defaultCenter];
      v12 = sub_1E1AF5DBC();
      [v11 removeObserver:v1 name:v12 object:v3];

      v13 = [v6 defaultCenter];
      v14 = sub_1E1AF5DBC();
      [v13 removeObserver:v1 name:v14 object:v3];

      *(v1 + v2) = 0;
    }
  }
}

void sub_1E1402574(void *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF5DBC();
  v14 = [a1 statusOfValueForKey:v13 error:0];

  if (v14 == 2)
  {
    [a1 duration];
    Seconds = CMTimeGetSeconds(&time);
    if (Seconds >= 5.0)
    {
      v16 = Seconds + -5.0;
    }

    else
    {
      v16 = Seconds;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E1B06D70;
    v18 = sub_1E1AF6B8C();
    v20 = v19;
    v36 = v6;
    v37 = v10;
    v22 = v21;
    v23 = HIDWORD(v19);
    v38 = v9;
    v24 = objc_opt_self();
    time.value = v18;
    time.timescale = v20;
    time.flags = v23;
    time.epoch = v22;
    *(v17 + 32) = [v24 valueWithCMTime_];
    sub_1E13006E4(0, &qword_1EE1E32A0);
    v25 = sub_1E1AF620C();

    sub_1E13006E4(0, &qword_1EE1E3430);
    v26 = sub_1E1AF68EC();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = Seconds;
    *(v28 + 32) = v16;
    v43 = sub_1E1404810;
    v44 = v28;
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 1107296256;
    time.epoch = sub_1E1302D64;
    v42 = &block_descriptor_33;
    v29 = _Block_copy(&time);

    v30 = [v39 addBoundaryTimeObserverForTimes:v25 queue:v26 usingBlock:v29];
    _Block_release(v29);

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    v31 = sub_1E1AF68EC();
    sub_1E137A5C4(v45, v40);
    v32 = swift_allocObject();
    *(v32 + 16) = v3;
    sub_1E1301CF0(v40, (v32 + 24));
    v43 = sub_1E140481C;
    v44 = v32;
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 1107296256;
    time.epoch = sub_1E1302D64;
    v42 = &block_descriptor_39;
    v33 = _Block_copy(&time);
    v34 = v3;

    sub_1E1AF322C();
    time.value = MEMORY[0x1E69E7CC0];
    sub_1E1302974(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v12, v8, v33);
    _Block_release(v33);

    (*(v36 + 8))(v8, v5);
    (*(v37 + 8))(v12, v38);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

void sub_1E1402AAC(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = v6 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(ObjectType, v8, a1 - a2);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E1402B9C(uint64_t a1, uint64_t a2)
{
  sub_1E137A5C4(a2, v5);
  v3 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_timeBoundaryObserver;
  swift_beginAccess();
  sub_1E137F818(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E1402C04(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_timeBoundaryObserver;
  swift_beginAccess();
  sub_1E13BFF54(v1 + v3, &v5);
  if (!*(&v6 + 1))
  {
    return sub_1E13E44F8(&v5);
  }

  sub_1E1301CF0(&v5, &v7);
  __swift_project_boxed_opaque_existential_1Tm(&v7, v8);
  [a1 removeTimeObserver_];
  swift_unknownObjectRelease();
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_1E137F818(&v5, v1 + v3);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

void sub_1E1402CEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  if (a5 != &unk_1ECEB3608)
  {
    if (a2)
    {
      v11 = sub_1E1AF5DBC();
    }

    else
    {
      v11 = 0;
    }

    sub_1E13BFF54(a3, v23);
    v12 = v24;
    if (v24)
    {
      v13 = __swift_project_boxed_opaque_existential_1Tm(v23, v24);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_1E1AF748C();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1(v23);
      if (!v6)
      {
LABEL_13:
        v19 = type metadata accessor for VideoObserver();
        v22.receiver = v5;
        v22.super_class = v19;
        objc_msgSendSuper2(&v22, sel_observeValueForKeyPath_ofObject_change_context_, v11, v18, v6, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v18 = 0;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1E1302974(&qword_1EE1D2478, type metadata accessor for NSKeyValueChangeKey);
    v6 = sub_1E1AF5C6C();
    goto LABEL_13;
  }

  if (a2 && a4)
  {
    sub_1E13BFF54(a3, v23);
    if (v24)
    {
      sub_1E13006E4(0, &qword_1EE1D25B8);
      if (swift_dynamicCast())
      {
        sub_1E1403130(v6, a1, a2, v21);

        return;
      }
    }

    else
    {
      sub_1E13E44F8(v23);
    }

    sub_1E13BFF54(a3, v23);
    if (v24)
    {
      sub_1E13006E4(0, &qword_1EE1D22A0);
      if (swift_dynamicCast())
      {
        sub_1E1404828(v6, a1, a2);
      }
    }

    else
    {
      sub_1E13E44F8(v23);
    }
  }
}

void sub_1E1403130(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a2 == 0x737574617473 && a3 == 0xE600000000000000;
  v9 = v8;
  if (!v8 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    v10 = sub_1E15A47D4(*MEMORY[0x1E696A4F0]);
    if (v11)
    {
      sub_1E137A5C4(*(a1 + 56) + 32 * v10, v22);
      if ((swift_dynamicCast() & 1) != 0 && v21 == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = [a4 error];
          if (v12)
          {
            v22[0] = v12;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
            sub_1E13006E4(0, &qword_1EE1D23C0);
            v13 = swift_dynamicCast() != 0;
          }

          else
          {
            v13 = 0;
          }

          v20 = 1;
LABEL_42:
          v22[0] = v20;
          v22[1] = v13;
          memset(&v22[2], 0, 32);
          v23 = 0;
          sub_1E13FCDB8(v22);
          swift_unknownObjectRelease();

          return;
        }

        return;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
LABEL_17:
    if ((sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (!*(a1 + 16) || (v14 = sub_1E15A47D4(*MEMORY[0x1E696A4F0]), (v15 & 1) == 0) || (sub_1E137A5C4(*(a1 + 56) + 32 * v14, v22), (swift_dynamicCast() & 1) == 0) || v21 != 2)
  {
LABEL_45:
    if (a2 == 0xD000000000000016 && 0x80000001E1B5D980 == a3 || (sub_1E1AF74AC()) && swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = sub_1E15A47D4(*MEMORY[0x1E696A4F0]);
        if (v19 & 1) != 0 && (sub_1E137A5C4(*(a1 + 56) + 32 * v18, v22), (swift_dynamicCast()))
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }

      v22[0] = v17;
      memset(&v22[1], 0, 40);
      v23 = 1;
      sub_1E13FCDB8(v22);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = [a4 error];
    if (v16)
    {
      v22[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
      sub_1E13006E4(0, &qword_1EE1D23C0);
      if (swift_dynamicCast())
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = 2;
    goto LABEL_42;
  }
}

uint64_t sub_1E14034E4()
{
  v0 = sub_1E1AF320C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_opt_self();

  if ([v9 isMainThread])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v11 = Strong, v12 = swift_unknownObjectWeakLoadStrong(), v11, v12))
    {
      aBlock = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
      v23 = 5;
      sub_1E13FCDB8(&aBlock);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v14 = sub_1E1AF68EC();
    v18 = v4;
    v15 = v14;
    *(&v21 + 1) = sub_1E1404808;
    v22 = v8;
    aBlock = MEMORY[0x1E69E9820];
    *&v20 = 1107296256;
    *(&v20 + 1) = sub_1E1302D64;
    *&v21 = &block_descriptor_26;
    v16 = _Block_copy(&aBlock);

    sub_1E1AF322C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E1302974(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v7, v3, v16);
    _Block_release(v16);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v18);
  }
}

void sub_1E1403880()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = 1;
      v4 = 0u;
      v5 = 0u;
      v6 = 0;
      v7 = 5;
      sub_1E13FCDB8(&v3);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E140395C()
{
  v0 = sub_1E1AF320C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_opt_self();

  if ([v9 isMainThread])
  {
    sub_1E1403C84();
  }

  else
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v11 = sub_1E1AF68EC();
    v15 = v4;
    v12 = v11;
    aBlock[4] = sub_1E1404800;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_22;
    v13 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1302974(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v7, v3, v13);
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v15);
  }
}

void sub_1E1403C84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = [v2 currentItem];
      if (!v3)
      {
LABEL_6:
        swift_unknownObjectRelease();
        return;
      }

      v4 = v3;
      v5 = &v2[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        [v4 currentTime];
        Seconds = CMTimeGetSeconds(&time);
        (*(v6 + 48))(v2, ObjectType, v6, Seconds);
        swift_unknownObjectRelease();

        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E1403E24(void *a1)
{
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v12 = objc_opt_self();

  v13 = a1;
  if ([v12 isMainThread])
  {
    sub_1E14041A8(v13);
  }

  else
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v18 = sub_1E1AF68EC();
    aBlock[4] = sub_1E14047F8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_8;
    v15 = _Block_copy(aBlock);
    v19 = v6;
    v16 = v15;

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1302974(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    v17 = v18;
    MEMORY[0x1E68FF640](0, v9, v5, v16);
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v19);
  }
}

void sub_1E14041A8(void *a1)
{
  v2 = [a1 name];
  v3 = sub_1E1AF5DBC();
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  v7 = sub_1E1AF5DFC();
  v9 = v8;

  if (v4 == v7 && v6 == v9)
  {

    goto LABEL_10;
  }

  v11 = sub_1E1AF74AC();

  if (v11)
  {
LABEL_10:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = swift_unknownObjectWeakLoadStrong();

      if (v22)
      {
        *v49 = 2;
        memset(&v49[8], 0, 32);
        v50 = 0;
        v51 = 5;
        sub_1E13FCDB8(v49);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v12 = [a1 name];
  v13 = sub_1E1AF5DBC();
  v14 = sub_1E1AF5DFC();
  v16 = v15;
  v17 = sub_1E1AF5DFC();
  v19 = v18;

  if (v14 == v17 && v16 == v19)
  {
  }

  else
  {
    v23 = sub_1E1AF74AC();

    if ((v23 & 1) == 0)
    {
      return;
    }
  }

  if ([a1 object])
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  *v49 = v47;
  *&v49[16] = v48;
  if (!*(&v48 + 1))
  {
    sub_1E13E44F8(v49);
    return;
  }

  sub_1E13006E4(0, &qword_1EE1D25B8);
  if (swift_dynamicCast())
  {
    v24 = [v46 errorLog];
    if (!v24)
    {

      return;
    }

    v25 = v24;
    v26 = [v24 events];

    sub_1E13006E4(0, &unk_1EE1D2438);
    v27 = sub_1E1AF621C();

    if (v27 >> 62)
    {
      v28 = sub_1E1AF71CC();
      if (v28)
      {
LABEL_23:
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v29)
        {
          __break(1u);
        }

        else if ((v27 & 0xC000000000000001) == 0)
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v30 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v27 + 8 * v30 + 32);
            goto LABEL_28;
          }

          __break(1u);
          return;
        }

        v31 = MEMORY[0x1E68FFD80](v30, v27);
LABEL_28:
        v32 = v31;

        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        if (!v33 || (v34 = v33, v35 = swift_unknownObjectWeakLoadStrong(), v34, !v35))
        {

          return;
        }

        v36 = [v32 errorStatusCode];
        v37 = [v32 errorDomain];
        v38 = sub_1E1AF5DFC();
        v40 = v39;

        v41 = [v32 errorComment];
        if (v41)
        {
          v42 = v41;
          v43 = sub_1E1AF5DFC();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        *v49 = v36;
        *&v49[16] = v38;
        *&v49[24] = v40;
        *&v49[32] = v43;
        v50 = v45;
        v51 = 2;
        sub_1E13FCDB8(v49);

        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_23;
      }
    }

LABEL_39:
  }
}

id sub_1E1404754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1404828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 == 1702125938 && a3 == 0xE400000000000000;
  if (v6 || (sub_1E1AF74AC() & 1) != 0)
  {
    if (*(a1 + 16))
    {
      v7 = sub_1E15A47D4(*MEMORY[0x1E696A4F0]);
      if (v8)
      {
        sub_1E137A5C4(*(a1 + 56) + 32 * v7, &v15);
        if (swift_dynamicCast())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v15 = v14;
            v16 = 0u;
            v17 = 0u;
            v18 = 0;
            v19 = 4;
            sub_1E13FCDB8(&v15);
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  if (a2 == 0x646574756DLL && a3 == 0xE500000000000000 || (result = sub_1E1AF74AC(), (result & 1) != 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = result + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 64))(v10, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit13VideoObserverC6ChangeO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E1404A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E1404A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E1404AD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t *TodayCardMediaAppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v88 = v2;
  v5 = *v2;
  v82 = v3;
  v83 = v5;
  v93 = sub_1E1AF39DC();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v70 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  sub_1E1AF381C();
  v25 = JSONObject.appStoreColor.getter();
  v80 = v17;
  v27 = *(v17 + 8);
  v26 = v17 + 8;
  v87 = v16;
  v89 = v27;
  v27(v24, v16);
  if (!v25)
  {
    v58 = sub_1E1AF5A7C();
    sub_1E1405680(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v59 = 0x6F6C6F43746E6974;
    v57 = v83;
    v59[1] = 0xE900000000000072;
    v59[2] = v57;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x1E69AB690], v58);
    swift_willThrow();
    (*(v91 + 8))(v90, v93);
    v89(a1, v87);
    goto LABEL_10;
  }

  sub_1E1AF46DC();
  v75 = v25;
  sub_1E1AF381C();
  v85 = a1;
  v86 = v26;
  v28 = v90;
  v30 = v91 + 16;
  v29 = *(v91 + 16);
  v31 = v12;
  v32 = v12;
  v33 = v93;
  v29(v31, v90, v93);
  v76 = v15;
  sub_1E1AF464C();
  v84 = v29;
  v29(v9, v28, v33);
  sub_1E1AF381C();
  v29(v32, v9, v33);
  type metadata accessor for Artwork();
  sub_1E1405680(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v34 = sub_1E1AF630C();
  v78 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworks;
  v35 = v88;
  *(v88 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworks) = v34;
  sub_1E1AF381C();
  v36 = v9;
  v29(v32, v9, v33);
  type metadata accessor for Video();
  sub_1E1405680(&qword_1EE1E52D0, type metadata accessor for Video);
  v37 = sub_1E1AF630C();
  v73 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_videos;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_videos) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
  v38 = v85;
  sub_1E1AF381C();
  v39 = v84;
  v84(v32, v36, v33);
  sub_1E13F6220();
  sub_1E1AF464C();
  v72 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics;
  v40 = v88;
  *(v88 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = v92;
  sub_1E1AF381C();
  v77 = v36;
  v74 = v30;
  v39(v32, v36, v33);
  type metadata accessor for AppEventFormattedDate();
  sub_1E1405680(&unk_1EE1E1570, type metadata accessor for AppEventFormattedDate);
  v41 = sub_1E1AF630C();
  v70 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_formattedDates;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_formattedDates) = v41;
  v42 = v75;
  v71 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_tintColor;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_tintColor) = v75;
  v43 = v42;
  v44 = v38;
  sub_1E1AF381C();
  sub_1E14056C8();
  sub_1E1AF369C();
  v45 = v87;
  v89(v21, v87);
  *(v40 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_blurStyle) = v92;
  v46 = v78;
  swift_beginAccess();
  v47 = *(v40 + v46);
  if (v47 >> 62)
  {
    v62 = sub_1E1AF71CC();
    v48 = v76;
    if (v62)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v48 = v76;
  if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v49 = *(v40 + v73);
    if (v49 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_6;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v63 = sub_1E1AF5A7C();
    sub_1E1405680(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v64 = 0x736B726F77747261;
    v64[1] = 0xE800000000000000;
    v64[2] = v83;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x1E69AB690], v63);
    swift_willThrow();

    v65 = v45;
    v66 = *(v91 + 8);
    v67 = v40;
    v68 = v48;
    v69 = v93;
    v66(v90, v93);
    v89(v44, v65);
    v57 = v83;
    v66(v77, v69);
    sub_1E1308058(v68, &unk_1ECEB1770);

LABEL_10:
    swift_deallocPartialClassInstance();
    return v57;
  }

LABEL_6:
  v50 = v79;
  (*(v80 + 16))(v79, v38, v45);
  v51 = v81;
  v52 = v90;
  v53 = v93;
  v84(v81, v90, v93);
  v54 = v82;
  v55 = TodayCardMedia.init(deserializing:using:)(v50, v51);
  v56 = v45;
  if (v54)
  {

    v57 = *(v91 + 8);
    (v57)(v52, v53);
    v89(v38, v45);
    (v57)(v77, v53);
  }

  else
  {
    v57 = v55;

    v60 = *(v91 + 8);
    v60(v52, v53);
    v89(v38, v56);
    v60(v77, v53);
  }

  sub_1E1308058(v48, &unk_1ECEB1770);
  return v57;
}

uint64_t sub_1E1405680(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E14056C8()
{
  result = qword_1EE1DE840[0];
  if (!qword_1EE1DE840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DE840);
  }

  return result;
}

uint64_t TodayCardMediaAppEvent.__allocating_init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v14 = sub_1E1AEFEAC();
  v23[0] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_blurStyle) = *a6;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1E134FD1C(a7, v17 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v27, &v24, &unk_1ECEB5670);
  if (*(&v25 + 1))
  {
    v18 = v25;
    *(v17 + 32) = v24;
    *(v17 + 48) = v18;
    *(v17 + 64) = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v23[0] + 8))(v16, v14);
    v23[1] = v19;
    v23[2] = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670);
  }

  sub_1E1308058(a7, &unk_1ECEB1770);
  sub_1E1308058(v27, &unk_1ECEB5670);
  *(v17 + 16) = 10;
  *(v17 + 24) = 1;
  return v17;
}

uint64_t TodayCardMediaAppEvent.init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_1E1AEFEAC();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v28 - v20;
  LOBYTE(v20) = *a6;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  v22 = a7;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_blurStyle) = v20;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1E134FD1C(a7, v21, &unk_1ECEB1770);
  sub_1E134FD1C(v39, &v33, &unk_1ECEB5670);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v29 + 8))(v18, v30);
    v31 = v23;
    v32 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  sub_1E1308058(v22, &unk_1ECEB1770);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v26 = v37;
  *(v8 + 32) = v36;
  *(v8 + 48) = v26;
  *(v8 + 64) = v38;
  sub_1E134B7C8(v21, v8 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v8 + 16) = 10;
  *(v8 + 24) = 1;
  return v8;
}

uint64_t TodayCardMediaAppEvent.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22TodayCardMediaAppEvent_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E1405DA0()
{
}

uint64_t TodayCardMediaAppEvent.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaAppEvent.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaAppEvent()
{
  result = qword_1EE1E21C8;
  if (!qword_1EE1E21C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a3;
  v10 = sub_1E1AF361C();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3630);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v53 - v13;
  v14 = sub_1E1AF68DC();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v53 - v19;
  v58 = &v53 - v19;
  v21 = (v5 + qword_1EE2156B8);
  *v21 = 0;
  v21[1] = 0;
  *(v5 + qword_1EE2156C0) = 0;
  *(v5 + qword_1EE2156C8) = 0;
  *(v5 + qword_1EE1D6D50) = MEMORY[0x1E69E7CD0];
  *(v5 + qword_1EE1D6D58) = 0;
  *(v5 + qword_1EE1D6D60) = a2;
  v65 = a5;
  sub_1E134FD1C(a5, v20, &unk_1ECEB4B60);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  *(v5 + qword_1EE2169B8) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1ED400) = 0;
  v23 = *(*v6 + 640);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E8);
  v25 = *(*(v24 - 8) + 56);
  v25(v6 + v23, 1, 1, v24);
  v26 = *(*v6 + 648);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v27 - 8) + 56))(v6 + v26, 1, 1, v27);
  v28 = *(*v6 + 656);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E0);
  (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);
  v25(v6 + *(*v6 + 664), 1, 1, v24);
  v30 = *(*v6 + 672);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  v32 = *(*v6 + 680);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v33 - 8) + 56))(v6 + v32, 1, 1, v33);
  v57 = *(*v6 + 688);
  v56 = sub_1E1361A80();

  v64 = a2;

  sub_1E1AF322C();
  v68 = v22;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  v34 = v58;
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v62 + 104))(v61, *MEMORY[0x1E69E8090], v63);
  *(v6 + v57) = sub_1E1AF692C();
  sub_1E13C6184(v6 + *(*v6 + 696));
  v35 = (v6 + *(*v6 + 704));
  *v35 = 0u;
  v35[1] = 0u;
  *(v35 + 25) = 0u;
  v36 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v6 + v36) = sub_1E1AF5BEC();
  v37 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v6 + v37) = sub_1E1AF5BEC();
  v38 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v38) = sub_1E1AF5BEC();
  *(v6 + *(*v6 + 736)) = 0;
  v39 = (v6 + *(*v6 + 752));
  *v39 = 0;
  v39[1] = 0;
  v40 = v34;
  sub_1E134FD1C(v34, v6 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v69, v6 + *(*v6 + 744), &qword_1ECEB24F8);
  v41 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v6 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v42);
  v43 = v67;
  if (v67 && a4)
  {
    sub_1E1AF50BC();
    v68 = a4;

    v44 = v53;
    sub_1E1AF35FC();
    v45 = sub_1E1AF41CC();
    (*(v54 + 8))(v44, v55);
    v46 = v45;
  }

  else
  {
  }

  v47 = sub_1E13C5248(v46, 0, 0, 0);
  v48 = *(*v47 + 1112);

  *(v47 + qword_1EE2169B8) = v48(v43);

  sub_1E13C8D3C(0);

  sub_1E1308058(v69, &qword_1ECEB24F8);
  sub_1E1308058(v40, &unk_1ECEB4B60);
  v49 = v66;
  if (*(v47 + qword_1EE1D6D60))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3640);
    sub_1E1302CD4(&qword_1EE1D2A60, &qword_1ECEB3640);

    sub_1E1AF3CDC();
    type metadata accessor for GenericDiffablePagePresenter();
    sub_1E1AF3CEC();

    sub_1E1308058(v65, &unk_1ECEB4B60);
    __swift_destroy_boxed_opaque_existential_1(v69);

    v50 = 0;
  }

  else
  {

    sub_1E1308058(v65, &unk_1ECEB4B60);

    v50 = 1;
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3638);
  (*(*(v51 - 8) + 56))(v49, v50, 1, v51);
  sub_1E1308058(v49, &qword_1ECEB3630);
  return v47;
}

uint64_t sub_1E1406CE8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + qword_1EE1D6D50);

  v5 = sub_1E14AAB3C(v3, v4);

  if (v5)
  {
    v7 = a2 + *(*a2 + 176);
    result = swift_beginAccess();
    if (*(v7 + 24) < 2u || !(*(v7 + 8) | *(v7 + 16) | *v7))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2840);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1E1B02CC0;
      *(v8 + 32) = v3;
      sub_1E14075BC(v8);
    }
  }

  return result;
}

uint64_t sub_1E1406E48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_1EE2156B8);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E1406EB4()
{
  v1 = (v0 + qword_1EE2156B8);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E1406F0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2156C0;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E1406FBC(uint64_t a1)
{
  v3 = qword_1EE2156C0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E1407074()
{
  v1 = qword_1EE2156C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E14070B8(uint64_t a1)
{
  v3 = qword_1EE2156C8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E1407168(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v11[-v4], &unk_1ECEB4B60);
  swift_beginAccess();
  v7 = v1[3];
  swift_beginAccess();
  v8 = v1[4];
  type metadata accessor for GenericDiffablePageContentPresenter();
  swift_allocObject();

  v9 = sub_1E188763C(v6, v5, a1, v7, v8);

  return v9;
}

uint64_t sub_1E14072C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = sub_1E1A7C93C(*a1, v2, *(a1 + 16));
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    v5 = sub_1E16A189C(v2);
    v6 = *(v1 + qword_1EE1D6D50);
    *(v1 + qword_1EE1D6D50) = v5;

    v7 = sub_1E16B0B84(v6, v5);

    if ((v7 & 1) == 0)
    {

      sub_1E14075BC(v8);
    }
  }

  return result;
}

uint64_t sub_1E14073B8(uint64_t a1, char a2)
{
  sub_1E1A7FD00(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  v5 = qword_1EE2156C8;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v6 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v8 = (v2 + qword_1EE2156B8);
  swift_beginAccess();
  *v8 = v7;
  v8[1] = v6;

  v9 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = qword_1EE2156C0;
  swift_beginAccess();
  *(v2 + v11) = v10;
}

uint64_t sub_1E14074C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = sub_1E13D8C48(*a1, v2, *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {
    v5 = sub_1E16A189C(v2);
    v6 = *(v1 + qword_1EE1D6D50);
    *(v1 + qword_1EE1D6D50) = v5;

    v7 = sub_1E16B0B84(v6, v5);

    if ((v7 & 1) == 0)
    {

      sub_1E14075BC(v8);
    }
  }

  return result;
}

uint64_t sub_1E14075BC(uint64_t result)
{
  if (*(result + 16) && *(v1 + qword_1EE1D6D58) != 1)
  {
    if (*(v1 + qword_1EE1D6D60))
    {
      *(v1 + qword_1EE1D6D58) = 1;
      v2 = result;

      sub_1E15E75E8(v3);

      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = sub_1E1361A80();
      swift_retain_n();

      v6 = sub_1E1AF68EC();
      v7[3] = v5;
      v7[4] = MEMORY[0x1E69AB720];
      v7[0] = v6;
      sub_1E1AF57FC();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_1E140770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_1EE2169A0;
  v13 = *(a5 + qword_1EE2169A0);

  v14 = sub_1E1407AFC(a6, v13);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v21, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E140893C;
  *(v18 + 24) = v17;
  v24 = sub_1E137AFA8;
  v25 = v18;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  v22 = sub_1E1551FBC;
  v23 = &block_descriptor_9;
  v19 = _Block_copy(&v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_1EE1D6D58) = 0;
  }

  return result;
}

uint64_t sub_1E1407904(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_1EE2169A0;
  v13 = *(a5 + qword_1EE2169A0);

  v14 = sub_1E1407D2C(a6, v13);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v21, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E1408998;
  *(v18 + 24) = v17;
  v24 = sub_1E13E2A70;
  v25 = v18;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  v22 = sub_1E1551FBC;
  v23 = &block_descriptor_60;
  v19 = _Block_copy(&v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_1EE1D6D58) = 0;
  }

  return result;
}

uint64_t sub_1E1407AFC(uint64_t result, unint64_t a2)
{
  v3 = result;
  v19 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    v4 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x1E68FFD80](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);

        v8 = sub_1E14086B0(v3, v7);

        if (v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1E134E724(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v17);
          sub_1E18940C8(&v18, v17);
          swift_unknownObjectRelease();
          sub_1E138867C(&v18);
        }
      }
    }

    else
    {
      v9 = (a2 + 32);
      do
      {
        v10 = *v9;
        v11 = *(*v9 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);

        v12 = sub_1E14086B0(v3, v11);

        if (v12)
        {
        }

        else
        {
          sub_1E134E724(v10 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v17);
          sub_1E18940C8(&v18, v17);

          sub_1E138867C(&v18);
        }

        ++v9;
        --v4;
      }

      while (v4);
    }

LABEL_16:
    v13 = v19;
    v14 = *(v19 + 16);
    if (v14)
    {
      v15 = sub_1E1545A68(*(v19 + 16), 0);
      v16 = sub_1E15463AC(&v18, (v15 + 4), v14, v13);
      sub_1E1337ECC();
      if (v16 == v14)
      {
        return v15;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1407D2C(uint64_t result, unint64_t a2)
{
  v3 = result;
  v37 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    v4 = result;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_44;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x1E68FFD80](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);

        v8 = sub_1E1408500(v3, v7);

        if (v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1E134E724(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v36);
          sub_1E18940C8(&v35, v36);
          swift_unknownObjectRelease();
          sub_1E138867C(&v35);
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = a2 + 32;
      v33 = v3 + 32;
      v30 = v4;
      v31 = v3;
      v29 = a2 + 32;
      do
      {
        v11 = *(*(v10 + 8 * v9) + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);
        if (*(v11 + 16))
        {
          v34 = *(v3 + 16);
          if (v34)
          {
            v12 = v11 + 56;
            v32 = *(v10 + 8 * v9);

            v13 = 0;
            while (1)
            {
              if (*(v11 + 16))
              {
                v14 = *(v33 + v13);
                sub_1E1AF762C();
                v15 = v14 ? 7304045 : 1701736302;
                v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
                sub_1E1AF5F0C();

                v17 = sub_1E1AF767C();
                v18 = -1 << *(v11 + 32);
                v19 = v17 & ~v18;
                if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
                {
                  break;
                }
              }

LABEL_18:
              if (++v13 == v34)
              {

                goto LABEL_13;
              }
            }

            v20 = ~v18;
            while (1)
            {
              v21 = *(*(v11 + 48) + v19) ? 7304045 : 1701736302;
              v22 = *(*(v11 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
              if (v21 == v15 && v22 == v16)
              {
                break;
              }

              v24 = sub_1E1AF74AC();

              if (v24)
              {
                goto LABEL_12;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

LABEL_12:

            sub_1E134E724(v32 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v36);
            sub_1E18940C8(&v35, v36);

            sub_1E138867C(&v35);
LABEL_13:
            v4 = v30;
            v3 = v31;
            v10 = v29;
          }
        }

        ++v9;
      }

      while (v9 != v4);
    }

LABEL_44:
    v25 = v37;
    v26 = *(v37 + 16);
    if (v26)
    {
      v27 = sub_1E1545A68(*(v37 + 16), 0);
      v28 = sub_1E15463AC(&v35, (v27 + 4), v26, v25);
      sub_1E1337ECC();
      if (v28 == v26)
      {
        return v27;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14080FC()
{
}

uint64_t GenericDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DA93C();

  return v0;
}

uint64_t GenericDiffablePagePresenter.__deallocating_deinit()
{
  sub_1E13DA93C();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1408288()
{
  result = qword_1EE1E3438;
  if (!qword_1EE1E3438)
  {
    sub_1E1AF68AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3438);
  }

  return result;
}

uint64_t type metadata accessor for GenericDiffablePagePresenter()
{
  result = qword_1EE1D6D40;
  if (!qword_1EE1D6D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1408500(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v17 + v3);
      sub_1E1AF762C();
      v6 = v5 ? 7304045 : 1701736302;
      v7 = v5 ? 0xE300000000000000 : 0xE400000000000000;
      sub_1E1AF5F0C();

      v8 = sub_1E1AF767C();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(a2 + 48) + v10) ? 7304045 : 1701736302;
    v13 = *(*(a2 + 48) + v10) ? 0xE300000000000000 : 0xE400000000000000;
    if (v12 == v6 && v13 == v7)
    {
      break;
    }

    v15 = sub_1E1AF74AC();

    if (v15)
    {
      return 0;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1E14086B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v27 = v6 + 56;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
      sub_1E1AF762C();
      v16 = v15 ? 7304045 : 1701736302;
      v17 = v15 ? 0xE300000000000000 : 0xE400000000000000;
      sub_1E1AF5F0C();

      v26 = v9;
      result = sub_1E1AF767C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      if ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v25 = v4;
        v20 = ~v18;
        while (1)
        {
          if (*(*(v6 + 48) + v19))
          {
            v21 = 7304045;
          }

          else
          {
            v21 = 1701736302;
          }

          if (*(*(v6 + 48) + v19))
          {
            v22 = 0xE300000000000000;
          }

          else
          {
            v22 = 0xE400000000000000;
          }

          if (v21 == v16 && v22 == v17)
          {

            return 0;
          }

          v24 = sub_1E1AF74AC();

          if (v24)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            v4 = v25;
            v9 = v26;
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider() + 20);
  v5 = *MEMORY[0x1E69AB4D8];
  v6 = sub_1E1AF524C();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionStatusFieldsProvider()
{
  result = qword_1ECEB3648;
  if (!qword_1ECEB3648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider() + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E1408B20, 0, 0);
}

uint64_t sub_1E1408B20()
{
  v20 = v0;
  v1 = *(v0 + 72);
  v2 = **(v0 + 80) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_1E1361A40(v3, v4);
  v5 = sub_1E1AF4A2C();
  v7 = v6;
  if (qword_1ECEB1088 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF459C();
  __swift_project_value_buffer(v8, qword_1ECEF4920);
  v9 = sub_1E1AF458C();
  if (v7)
  {
    if (v5 == v9 && v7 == v10)
    {
    }

    else
    {
      v12 = sub_1E1AF74AC();

      if ((v12 & 1) == 0)
      {
        sub_1E1361A60(v3, v4);
        goto LABEL_13;
      }
    }

    v13 = *(v0 + 72);
    v18 = v3;
    v19 = v4;
    v14 = sub_1E1408D74(&v18);
    *(v0 + 40) = MEMORY[0x1E69E6158];
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v1[3]);
    sub_1E1AF4A1C();
    sub_1E1361A60(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_1E1361A60(v3, v4);
  }

LABEL_13:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E1408D74(unsigned __int8 *a1)
{
  v1 = a1[8] >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else if (v1)
  {
    v3 = *(*a1 + 24);
    v4 = *(*a1 + 16);
    v5 = v3;
    return sub_1E1408D74(&v4);
  }

  else
  {
    return 0x7263736275736E75;
  }
}

uint64_t sub_1E1408E1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E130B5DC;

  return ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_1E1408EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1E1AF524C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E1408F64()
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF524C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E14090A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = sub_1E1409344;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v20 = v7;
  *(v7 + 16) = sub_1E1409464;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E140958C;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E14096AC;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  *(a1 + 32) = v10;
  v11 = sub_1E140CE44();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x1E69DDD08];
  *v5 = *MEMORY[0x1E69DDD08];
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB868], v2);
  v13 = sub_1E1AF166C();
  v14 = MEMORY[0x1E69AB980];
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  __swift_allocate_boxed_opaque_existential_0((a1 + 64));
  v22[3] = v2;
  v22[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v3 + 16))(boxed_opaque_existential_0, v5, v2);

  v16 = v12;
  sub_1E1AF167C();
  (*(v3 + 8))(v5, v2);
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  v17 = v20;
  *(a1 + 104) = v21;
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v17;
  *(a1 + 208) = v10;
  *(a1 + 216) = v11;

  *(a1 + 184) = v8;
  *a1 = 3;
  *(a1 + 48) = 0x3FD6666666666666;
  *(a1 + 56) = 0;
  return result;
}

void sub_1E1409344(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_1E1AF6ABC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_1E1AF6AFC();

  v11 = 10.0;
  if (v12)
  {
    v11 = 4.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_1E1409464(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_1E1AF6ABC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_1E1AF6AFC();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_1E140958C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_1E1AF6ABC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_1E1AF6AFC();

  v11 = 16.0;
  if (v12)
  {
    v11 = 25.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_1E14096AC(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1E1AF6ABC();
  v5 = 20.0;
  if (v3)
  {
    v5 = 25.0;
  }

  *a2 = v5;
}

uint64_t static MetadataRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE1D9330 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1E14097A0(&unk_1EE1D9340, v2);
}

__n128 MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 176);
  *(a3 + 168) = *(a2 + 160);
  *(a3 + 184) = v3;
  v4 = *(a2 + 208);
  *(a3 + 200) = *(a2 + 192);
  *(a3 + 216) = v4;
  v5 = *(a2 + 112);
  *(a3 + 104) = *(a2 + 96);
  *(a3 + 120) = v5;
  v6 = *(a2 + 144);
  *(a3 + 136) = *(a2 + 128);
  *(a3 + 152) = v6;
  v7 = *(a2 + 48);
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 56) = v7;
  v8 = *(a2 + 80);
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = v8;
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *a3 = a1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t MetadataRibbonViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v64 = sub_1E1AF745C();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v6 + 16))
  {
    result = sub_1E1409DD4((v6 + 1), a1, a5);
    v18 = result;
    v19 = *(result + 16);
    if (v19)
    {
      v20 = 0;
      v51[1] = a2;
      v52 = result + 32;
      v54 = 0.0;
      v60 = 1;
      v57 = (v14 + 8);
      v56 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = a5;
      v61 = a3;
      v62 = a4;
      v51[0] = result;
      while (v20 < v19)
      {
        v70 = v20;
        sub_1E140A6E0(v52 + 48 * v20, v71);
        if (!*&v71[0])
        {
          goto LABEL_31;
        }

        v74[0] = v71[0];
        v74[1] = v71[1];
        v75 = v71[2];
        v77.origin.x = a3;
        v77.origin.y = a4;
        v77.size.width = a5;
        v77.size.height = a6;
        MinX = CGRectGetMinX(v77);
        v22 = *&v74[0];
        v59 = *(*&v74[0] + 16);
        if (v59)
        {
          v23 = MinX;
          v53 = v20;
          v63 = *&v74[0] + 32;

          v24 = 0;
          v25 = 0.0;
          while (v24 < *(v22 + 16))
          {
            sub_1E140A718(v63 + 120 * v24, &v70);
            sub_1E140A750(&v70, v67);
            v34 = v72;
            v35 = v73;
            sub_1E140A7C0(&v70);
            if (v60)
            {
              v80.origin.x = v61;
              v80.origin.y = v62;
              v80.size.width = a5;
              v80.size.height = a6;
              MinY = CGRectGetMinY(v80);
              __swift_project_boxed_opaque_existential_1Tm(v7 + 19, v7[22]);
              sub_1E13BC274();
              sub_1E1AF12DC();
              v38 = v37;
              v39 = *v57;
              (*v57)(v16, v64);
              v40 = *(v22 + 16);
              if (v40)
              {
                v55 = MinY;
                v41 = a6;
                v42 = 0.0;
                v43 = v63;
                do
                {
                  sub_1E140A718(v43, v65);
                  v44 = v66;
                  sub_1E140A7C0(v65);
                  if (v42 <= v44)
                  {
                    v42 = v44;
                  }

                  v43 += 120;
                  --v40;
                }

                while (v40);
                v26 = v42 * 0.5;
                a6 = v41;
                v27 = v55 + v38;
              }

              else
              {
                v26 = 0.0;
                v27 = MinY + v38;
              }
            }

            else
            {
              __swift_project_boxed_opaque_existential_1Tm(v7 + 14, v7[17]);
              sub_1E13BC274();
              sub_1E1AF12DC();
              v46 = v45;
              v39 = *v57;
              (*v57)(v16, v64);
              v47 = *(v22 + 16);
              if (v47)
              {
                v48 = 0.0;
                v49 = v63;
                do
                {
                  sub_1E140A718(v49, v65);
                  v50 = v66;
                  sub_1E140A7C0(v65);
                  if (v48 <= v50)
                  {
                    v48 = v50;
                  }

                  v49 += 120;
                  --v47;
                }

                while (v47);
                v26 = v48 * 0.5;
              }

              else
              {
                v26 = 0.0;
              }

              v27 = v54 + v46;
            }

            ++v24;
            v28 = v27 + v26 + v35 * -0.5;
            v78.origin.x = v23;
            v78.origin.y = v28;
            v78.size.width = v34;
            v78.size.height = v35;
            MaxX = CGRectGetMaxX(v78);
            __swift_project_boxed_opaque_existential_1Tm(v74 + 1, v75);
            sub_1E13BC274();
            sub_1E1AF12DC();
            v31 = v30;
            v39(v16, v64);
            v32 = MaxX + v31;
            __swift_project_boxed_opaque_existential_1Tm(v68, v69);
            a5 = v58;
            sub_1E1AF6B1C();
            sub_1E1AF116C();
            __swift_project_boxed_opaque_existential_1Tm(v68, v69);
            sub_1E1AF115C();
            MaxY = CGRectGetMaxY(v79);
            if (v25 <= MaxY)
            {
              v25 = MaxY;
            }

            result = sub_1E1308058(v67, &qword_1ECEB3660);
            v23 = v32;
            if (v24 == v59)
            {

              a3 = v61;
              a4 = v62;
              v18 = v51[0];
              v20 = v53;
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

        v25 = 0.0;
LABEL_5:
        ++v20;
        result = sub_1E140A7F0(v74);
        v60 = 0;
        v19 = *(v18 + 16);
        v54 = v25;
        if (v20 == v19)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:

      return sub_1E1AF106C();
    }
  }

  else
  {

    return sub_1E1AF106C();
  }

  return result;
}

uint64_t sub_1E1409DD4(uint64_t a1, void *a2, double a3)
{
  v92 = a1;
  v6 = 0;
  v89 = sub_1E1AF745C();
  v7 = *(v89 - 8);
  v8 = MEMORY[0x1EEE9AC00](v89);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a2;
  v10 = [a2 traitCollection];
  v11 = sub_1E140A820(v10);

  v94 = v3;
  v12 = *v3;
  if (v11)
  {
    v13 = v12[2];

    v14 = sub_1E140CA64(0, v13, v11, v11, v12);

    v91 = *(v14 + 16);
    if (!v91)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B02CC0;
    *(v14 + 32) = v12;

    v91 = 1;
  }

  v16 = 0;
  v93 = v14 + 32;
  v87 = (v7 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v90 = v14;
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      goto LABEL_61;
    }

    v96 = v15;
    v97 = v16;
    v98 = v6;
    v19 = *(v93 + 8 * v16);

    v21 = sub_1E140A924(v20, v95, a3);
    v22 = v21;
    v23 = *(v21 + 16) >= *(v19 + 16) ? *(v19 + 16) : *(v21 + 16);
    v127 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C3A0(0, v23, 0);
    v25 = v127;
    v100 = v22;
    if (v23)
    {
      break;
    }

LABEL_21:
    v44 = *(v19 + 16);
    if (v23 != v44)
    {
      v45 = v19 + 88 * v23 + 32;
      v46 = v100;
      while (v23 < v44)
      {
        sub_1E140A750(v45, &v115);
        v47 = *(v46 + 16);
        if (v23 == v47)
        {

          sub_1E1308058(&v115, &qword_1ECEB3660);
          goto LABEL_32;
        }

        if (v23 >= v47)
        {
          goto LABEL_60;
        }

        v48 = v46 + 32 * v23;
        v49 = *(v48 + 48);
        v101 = *(v48 + 32);
        v102 = v49;
        LOWORD(v126[0]) = v120[0];
        v123 = v117;
        v124 = v118;
        v125 = v119;
        v121 = v115;
        v122 = v116;
        *(&v126[1] + 8) = v49;
        *(v126 + 8) = v101;
        v50 = v120[0];
        v51 = BYTE1(v120[0]);
        sub_1E134E724(&v121, &v109);
        sub_1E1300B24(&v123 + 8, &v111 + 8);
        LOBYTE(v114) = v50;
        HIBYTE(v114) = v51;
        v108 = v114;
        v105 = v111;
        v106 = v112;
        v107 = v113;
        v103 = v109;
        v104 = v110;
        *&v117 = v111;
        v115 = v109;
        v116 = v110;
        sub_1E1361B28((&v105 + 8), &v117 + 8);
        LOBYTE(v120[0]) = v50;
        BYTE1(v120[0]) = v51;
        *(v120 + 8) = v101;
        *(&v120[1] + 8) = v102;
        sub_1E1308058(&v121, &qword_1ECEB3668);
        v127 = v25;
        v53 = *(v25 + 16);
        v52 = *(v25 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1E135C3A0((v52 > 1), v53 + 1, 1);
          v25 = v127;
        }

        ++v23;
        *(v25 + 16) = v53 + 1;
        v54 = v25 + 120 * v53;
        v55 = v115;
        v56 = v116;
        v57 = v118;
        *(v54 + 64) = v117;
        *(v54 + 80) = v57;
        *(v54 + 32) = v55;
        *(v54 + 48) = v56;
        v58 = v119;
        v59 = v120[0];
        v60 = v120[1];
        *(v54 + 144) = *&v120[2];
        *(v54 + 112) = v59;
        *(v54 + 128) = v60;
        *(v54 + 96) = v58;
        v44 = *(v19 + 16);
        v45 += 88;
        if (v23 == v44)
        {
          goto LABEL_22;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = sub_1E1308058(&v109, &qword_1ECEB3660);
      goto LABEL_63;
    }

LABEL_22:

LABEL_32:
    v61 = *(v25 + 16);
    v15 = v96;
    if (v61 >= 3)
    {
      *&v115 = MEMORY[0x1E69E7CC0];
      sub_1E135C320(0, v61, 0);
      v68 = v115;
      v69 = v25 + 32;
      v70 = v61;
      do
      {
        sub_1E140A718(v69, &v121);
        v71 = *(&v126[0] + 1);
        sub_1E140A7C0(&v121);
        *&v115 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1E135C320((v72 > 1), v73 + 1, 1);
          v68 = v115;
        }

        *(v68 + 16) = v73 + 1;
        *(v68 + 8 * v73 + 32) = v71;
        v69 += 120;
        --v70;
      }

      while (v70);
      if (v73 <= 2)
      {
        v74 = 0;
        v75 = 0.0;
        goto LABEL_47;
      }

      v74 = (v73 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v76 = (v68 + 48);
      v75 = 0.0;
      v77 = v74;
      do
      {
        v75 = v75 + *(v76 - 2) + *(v76 - 1) + *v76 + v76[1];
        v76 += 4;
        v77 -= 4;
      }

      while (v77);
      if (v73 + 1 != v74)
      {
LABEL_47:
        v78 = v73 - v74 + 1;
        v79 = (v68 + 8 * v74 + 32);
        do
        {
          v80 = *v79++;
          v75 = v75 + v80;
          --v78;
        }

        while (v78);
      }

      v81 = (a3 - v75) / (v61 - 1);
      __swift_project_boxed_opaque_existential_1Tm((v92 + 8), *(v92 + 32));
      v82 = v88;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v84 = v83;
      (*v87)(v82, v89);
      if (v81 > v84)
      {
        v84 = v81;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1E172D988(0, *(v15 + 2) + 1, 1, v15);
      }

      v14 = v90;
      v86 = *(v15 + 2);
      v85 = *(v15 + 3);
      if (v86 >= v85 >> 1)
      {
        v15 = sub_1E172D988((v85 > 1), v86 + 1, 1, v15);
      }

      *(v15 + 2) = v86 + 1;
      v17 = &v15[48 * v86];
      *(v17 + 4) = v25;
      *(v17 + 5) = v84;
      *(v17 + 3) = v121;
      *(v17 + 8) = MEMORY[0x1E69E7DE0];
      *(v17 + 9) = MEMORY[0x1E69AB858];
      v18 = v97;
      v6 = v98;
      goto LABEL_7;
    }

    sub_1E1300B24(v92 + 8, &v121 + 8);
    *&v121 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1E172D988(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = v97;
    v6 = v98;
    v64 = *(v15 + 2);
    v63 = *(v15 + 3);
    if (v64 >= v63 >> 1)
    {
      v15 = sub_1E172D988((v63 > 1), v64 + 1, 1, v15);
    }

    *(v15 + 2) = v64 + 1;
    v65 = &v15[48 * v64];
    v66 = v121;
    v67 = v123;
    *(v65 + 3) = v122;
    *(v65 + 4) = v67;
    *(v65 + 2) = v66;
LABEL_7:
    v16 = v18 + 1;
    if (v16 == v91)
    {

      return v15;
    }
  }

  v26 = 0;
  v99 = *(v19 + 16);
  v27 = v19 + 32;
  v28 = v22 + 32;
  while (v99 != v26)
  {
    if (v26 >= *(v19 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    sub_1E140A750(v27, &v109);
    v29 = *(v100 + 16);
    if (v26 == v29)
    {
      goto LABEL_62;
    }

    if (v26 >= v29)
    {
      goto LABEL_58;
    }

    v30 = v19;
    v31 = (v28 + 32 * v26);
    v32 = v31[1];
    v101 = *v31;
    v102 = v32;
    LOWORD(v120[0]) = v114;
    v117 = v111;
    v118 = v112;
    v119 = v113;
    v115 = v109;
    v116 = v110;
    *(v120 + 8) = v101;
    *(&v120[1] + 8) = v32;
    v33 = v114;
    v34 = HIBYTE(v114);
    sub_1E134E724(&v115, &v109);
    sub_1E1300B24(&v117 + 8, &v111 + 8);
    LOBYTE(v114) = v33;
    HIBYTE(v114) = v34;
    v108 = v114;
    v105 = v111;
    v106 = v112;
    v107 = v113;
    v103 = v109;
    v104 = v110;
    *&v123 = v111;
    v121 = v109;
    v122 = v110;
    sub_1E1361B28((&v105 + 8), &v123 + 8);
    LOBYTE(v126[0]) = v33;
    BYTE1(v126[0]) = v34;
    *(v126 + 8) = v101;
    *(&v126[1] + 8) = v102;
    result = sub_1E1308058(&v115, &qword_1ECEB3668);
    v127 = v25;
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_1E135C3A0((v35 > 1), v36 + 1, 1);
      v25 = v127;
    }

    ++v26;
    *(v25 + 16) = v36 + 1;
    v37 = v25 + 120 * v36;
    v38 = v121;
    v39 = v122;
    v40 = v124;
    *(v37 + 64) = v123;
    *(v37 + 80) = v40;
    *(v37 + 32) = v38;
    *(v37 + 48) = v39;
    v41 = v125;
    v42 = v126[0];
    v43 = v126[1];
    *(v37 + 144) = *&v126[2];
    *(v37 + 112) = v42;
    *(v37 + 128) = v43;
    *(v37 + 96) = v41;
    v27 += 88;
    v19 = v30;
    if (v23 == v26)
    {
      goto LABEL_21;
    }
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1E140A750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E140A820(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_1E1AF5DFC();
  v4 = v3;
  if (v2 != sub_1E1AF5DFC() || v4 != v5)
  {
    v7 = sub_1E1AF74AC();
    v8 = v1;

    if (v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v9 = v1;

LABEL_8:
  v10 = sub_1E1AF6AFC();

  if (v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_1E1AF6ABC();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E140A924(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a1;
  v12 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), *(v4 + 40));
  sub_1E13BC274();
  v132 = a2;
  sub_1E1AF12DC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = a3 - v14 * (v12 - 1);
  v16 = *(v4 + 64);
  v137 = v12;
  if (v16)
  {
    LODWORD(v136) = 1;
    v17 = v132;
  }

  else
  {
    v17 = v132;
    v18 = [v132 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    LOBYTE(v18) = sub_1E1AF6ABC();
    LODWORD(v136) = (v18 & 1) != 0;
  }

  v20 = sub_1E159E674(MEMORY[0x1E69E7CC0]);
  *&v156 = v133;

  v21 = 0;
  sub_1E140BC28(&v156);
  v22 = v156;
  *&v135 = *(v156 + 16);
  if (v135)
  {
    v23 = 0;
    v24 = v156 + 32;
    v134 = v156;
    while (v23 < *(v22 + 16))
    {
      sub_1E140A750(v24, &v156);
      v25 = v160;
      v26 = v161;
      v148 = v156;
      v149 = v157;
      v150 = v158;
      sub_1E1361B28(v159, &v151);
      v154 = v25;
      v155 = v26;
      sub_1E140A750(&v148, &v142);
      __swift_destroy_boxed_opaque_existential_1(v145);
      sub_1E134B88C(&v142);
      __swift_project_boxed_opaque_existential_1Tm(&v151, v152);
      v21 = v17;
      sub_1E1AF11CC();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      sub_1E140A750(&v148, &v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v20;
      v37 = sub_1E135FCF4(&v142);
      v38 = v20[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_90;
      }

      v41 = v36;
      if (v20[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E1416008();
        }
      }

      else
      {
        sub_1E168925C(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_1E135FCF4(&v142);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_97;
        }

        v37 = v42;
      }

      v17 = v21;
      v20 = v138;
      if (v41)
      {
        v44 = *(v138 + 56) + 32 * v37;
        *v44 = v28;
        *(v44 + 8) = v30;
        *(v44 + 16) = v32;
        *(v44 + 24) = v34;
      }

      else
      {
        *(v138 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        sub_1E134E724(&v142, v20[6] + 40 * v37);
        v45 = v20[7] + 32 * v37;
        *v45 = v28;
        *(v45 + 8) = v30;
        *(v45 + 16) = v32;
        *(v45 + 24) = v34;
        v46 = v20[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_91;
        }

        v20[2] = v48;
      }

      sub_1E134B88C(&v142);
      __swift_destroy_boxed_opaque_existential_1(v145);
      v15 = v15 - v28;
      v22 = v134;
      if (v137 - v20[2] < 1)
      {
        sub_1E1308058(&v148, &qword_1ECEB3660);
        goto LABEL_21;
      }

      ++v23;
      sub_1E1308058(&v148, &qword_1ECEB3660);
      v24 += 88;
      if (v135 == v23)
      {
        goto LABEL_21;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_21:
  v49 = v133;
  if (v15 <= 0.0 || v137 != v20[2])
  {

    v21 = MEMORY[0x1E69E7CC0];
    v81 = v20;
    v82 = v137;
    if (v137)
    {
      v141 = MEMORY[0x1E69E7CC0];
      sub_1E135C2E8(0, v137, 0);
      v21 = v141;
      v83 = v49 + 32;
      v84 = v82;
      do
      {
        sub_1E140A750(v83, &v156);
        sub_1E140A750(&v156, &v148);
        v85 = v154;
        v86 = v155;
        v142 = v148;
        v143 = v149;
        v144 = v150;
        sub_1E1361B28(&v151, v145);
        v146 = v85;
        v147 = v86;
        sub_1E134E724(&v142, &v138);
        sub_1E1308058(&v142, &qword_1ECEB3660);
        sub_1E1308058(&v156, &qword_1ECEB3660);
        v141 = v21;
        v88 = *(v21 + 16);
        v87 = *(v21 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1E135C2E8((v87 > 1), v88 + 1, 1);
          v21 = v141;
        }

        *(v21 + 16) = v88 + 1;
        v89 = (v21 + 40 * v88);
        v90 = v138;
        v91 = v139;
        v89[8] = v140;
        *(v89 + 2) = v90;
        *(v89 + 3) = v91;
        v83 += 88;
        --v84;
      }

      while (v84);
      v20 = v81;
    }

    v92 = *(v21 + 16);
    if (v92)
    {
      v93 = 0;
      v94 = v21 + 32;
      v95 = MEMORY[0x1E69E7CC0];
      v137 = (v21 + 32);
      do
      {
        v96 = v94 + 40 * v93;
        v97 = v93;
        while (1)
        {
          if (v97 >= v92)
          {
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v93 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_88;
          }

          if (v20[2])
          {
            v98 = sub_1E135FCF4(v96);
            v20 = v81;
            if (v99)
            {
              break;
            }
          }

          ++v97;
          v96 += 40;
          if (v93 == v92)
          {
            goto LABEL_86;
          }
        }

        v100 = (v81[7] + 32 * v98);
        v101 = *v100;
        v135 = v100[1];
        v136 = v101;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1E172D774(0, *(v95 + 2) + 1, 1, v95);
        }

        v94 = v137;
        v103 = *(v95 + 2);
        v102 = *(v95 + 3);
        if (v103 >= v102 >> 1)
        {
          v95 = sub_1E172D774((v102 > 1), v103 + 1, 1, v95);
        }

        *(v95 + 2) = v103 + 1;
        v104 = &v95[32 * v103];
        v105 = v135;
        *(v104 + 2) = v136;
        *(v104 + 3) = v105;
        v20 = v81;
      }

      while (v93 != v92);
      goto LABEL_86;
    }

LABEL_85:
    v95 = MEMORY[0x1E69E7CC0];
LABEL_86:

    return v95;
  }

  v50 = *(v22 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = v22 + 32;
    while (v51 < *(v22 + 16))
    {
      v53 = v20;
      sub_1E140A750(v52, &v156);
      v54 = v160;
      v21 = v161;
      v148 = v156;
      v149 = v157;
      v150 = v158;
      sub_1E1361B28(v159, &v151);
      v154 = v54;
      v155 = v21;
      if (v15 <= 0.0)
      {
        v20 = v53;
      }

      else
      {
        sub_1E140A750(&v148, &v142);
        v20 = v53;
        if (v53[2] && (v55 = sub_1E135FCF4(&v142), v20 = v53, (v56 & 1) != 0))
        {
          v57 = *(v53[7] + 32 * v55);
          __swift_destroy_boxed_opaque_existential_1(v145);
          sub_1E134B88C(&v142);
          v21 = v153;
          __swift_project_boxed_opaque_existential_1Tm(&v151, v152);
          *&v136 = v15 + v57;
          sub_1E1AF11CC();
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v65 = v64;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            v66 = v22;
            sub_1E140A750(&v148, &v142);
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v138 = v53;
            v68 = sub_1E135FCF4(&v142);
            v70 = v53[2];
            v71 = (v69 & 1) == 0;
            v47 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v47)
            {
              goto LABEL_95;
            }

            v73 = v69;
            if (v53[3] >= v72)
            {
              if ((v67 & 1) == 0)
              {
                v21 = v68;
                sub_1E1416008();
                v68 = v21;
              }
            }

            else
            {
              sub_1E168925C(v72, v67);
              v68 = sub_1E135FCF4(&v142);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_97;
              }
            }

            v22 = v66;
            v20 = v138;
            if (v73)
            {
              v75 = *(v138 + 56) + 32 * v68;
              *v75 = v59;
              *(v75 + 8) = v61;
              *(v75 + 16) = v65;
              *(v75 + 24) = v63;
            }

            else
            {
              *(v138 + 8 * (v68 >> 6) + 64) |= 1 << v68;
              v76 = v68;
              sub_1E134E724(&v142, v20[6] + 40 * v68);
              v77 = v20[7] + 32 * v76;
              *v77 = v59;
              *(v77 + 8) = v61;
              *(v77 + 16) = v65;
              *(v77 + 24) = v63;
              v78 = v20[2];
              v47 = __OFADD__(v78, 1);
              v79 = v78 + 1;
              if (v47)
              {
                goto LABEL_96;
              }

              v20[2] = v79;
            }

            v80 = *&v136;
            sub_1E134B88C(&v142);
            __swift_destroy_boxed_opaque_existential_1(v145);
            v15 = v80 - v59;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v145);
          sub_1E134B88C(&v142);
        }
      }

      ++v51;
      sub_1E1308058(&v148, &qword_1ECEB3660);
      v52 += 88;
      if (v50 == v51)
      {
        goto LABEL_65;
      }
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_65:

  v21 = MEMORY[0x1E69E7CC0];
  v106 = v20;
  v107 = v137;
  if (v137)
  {
    v141 = MEMORY[0x1E69E7CC0];
    sub_1E135C2E8(0, v137, 0);
    v21 = v141;
    v108 = v133 + 32;
    v109 = v107;
    do
    {
      sub_1E140A750(v108, &v156);
      sub_1E140A750(&v156, &v148);
      v110 = v154;
      v111 = v155;
      v142 = v148;
      v143 = v149;
      v144 = v150;
      sub_1E1361B28(&v151, v145);
      v146 = v110;
      v147 = v111;
      sub_1E134E724(&v142, &v138);
      sub_1E1308058(&v142, &qword_1ECEB3660);
      sub_1E1308058(&v156, &qword_1ECEB3660);
      v141 = v21;
      v113 = *(v21 + 16);
      v112 = *(v21 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_1E135C2E8((v112 > 1), v113 + 1, 1);
        v21 = v141;
      }

      *(v21 + 16) = v113 + 1;
      v114 = (v21 + 40 * v113);
      v115 = v138;
      v116 = v139;
      v114[8] = v140;
      *(v114 + 2) = v115;
      *(v114 + 3) = v116;
      v108 += 88;
      --v109;
    }

    while (v109);
    v20 = v106;
  }

  v117 = *(v21 + 16);
  if (!v117)
  {
    goto LABEL_85;
  }

  v118 = 0;
  v119 = v21 + 32;
  v95 = MEMORY[0x1E69E7CC0];
  v137 = (v21 + 32);
LABEL_73:
  v120 = v119 + 40 * v118;
  v121 = v118;
  while (v121 < v117)
  {
    v118 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      goto LABEL_94;
    }

    if (v20[2])
    {
      v122 = sub_1E135FCF4(v120);
      v20 = v106;
      if (v123)
      {
        v124 = (v106[7] + 32 * v122);
        v125 = *v124;
        v135 = v124[1];
        v136 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1E172D774(0, *(v95 + 2) + 1, 1, v95);
        }

        v127 = *(v95 + 2);
        v126 = *(v95 + 3);
        if (v127 >= v126 >> 1)
        {
          v95 = sub_1E172D774((v126 > 1), v127 + 1, 1, v95);
        }

        *(v95 + 2) = v127 + 1;
        v128 = &v95[32 * v127];
        v129 = v135;
        *(v128 + 2) = v136;
        *(v128 + 3) = v129;
        v20 = v106;
        v119 = v137;
        if (v118 != v117)
        {
          goto LABEL_73;
        }

        goto LABEL_86;
      }
    }

    ++v121;
    v120 += 40;
    if (v118 == v117)
    {
      goto LABEL_86;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  sub_1E1AF757C();
  __break(1u);

  __break(1u);
  return result;
}

double MetadataRibbonViewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v2 + 16))
  {
    return *MEMORY[0x1E69ABBD0];
  }

  v22 = v8;
  v23 = v7;
  v11 = sub_1E1409DD4((v2 + 1), a1, a2);
  v12 = *(v11 + 16);
  v13 = 0.0;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      sub_1E140A6E0(v11 + 32 + 48 * i, v26);
      v15 = *(v26[0] + 16);
      v16 = 0.0;
      if (v15)
      {
        v17 = v26[0] + 32;
        do
        {
          sub_1E140A718(v17, v24);
          v18 = v25;
          sub_1E140A7C0(v24);
          if (v16 <= v18)
          {
            v16 = v18;
          }

          v17 += 120;
          --v15;
        }

        while (v15);
      }

      sub_1E140A7F0(v26);
      v13 = v13 + v16;
    }
  }

  __swift_project_boxed_opaque_existential_1Tm(v3 + 19, v3[22]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19 = *(v22 + 8);
  v20 = v23;
  v19(v10, v23);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 24, v3[27]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19(v10, v20);

  __swift_project_boxed_opaque_existential_1Tm(v3 + 14, v3[17]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19(v10, v20);
  return a2;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1E140B8B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1E140B8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1E140B9C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E140BA08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1E140BABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1E140BB04(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E140BB84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E140BBCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E140BC28(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E1969040(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E140BC94(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E140BC94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E1AF741C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3660);
        v5 = sub_1E1AF628C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E140BF24(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1E140BD9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E140BD9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      sub_1E140A750(v5, &v17);
      v7 = (v5 - 88);
      sub_1E140A750(v5 - 88, v16);
      v8 = HIBYTE(v22);
      v9 = v16[81];
      sub_1E1308058(v16, &qword_1ECEB3660);
      result = sub_1E1308058(&v17, &qword_1ECEB3660);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v15 + 88;
        v6 = v14 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v5 + 32);
      v20 = *(v5 + 48);
      v21 = *(v5 + 64);
      v22 = *(v5 + 80);
      v17 = *v5;
      v18 = *(v5 + 16);
      v10 = *(v5 - 40);
      *(v5 + 32) = *(v5 - 56);
      *(v5 + 48) = v10;
      *(v5 + 64) = *(v5 - 24);
      *(v5 + 80) = *(v5 - 8);
      v11 = *(v5 - 72);
      *v5 = *v7;
      *(v5 + 16) = v11;
      *(v5 - 56) = v19;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 8) = v22;
      *v7 = v17;
      *(v5 - 72) = v18;
      v5 -= 88;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E140BF24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v8 = *v92;
    if (!*v92)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1E1968F00(v9);
      v9 = result;
    }

    v83 = v5;
    v104 = v9;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v84];
        v5 = *&v9[16 * v84 + 24];
        sub_1E140C704((v85 + 88 * v6), (v85 + 88 * *&v9[16 * v84 + 16]), (v85 + 88 * v5), v8);
        if (v83)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v86 = &v9[16 * v84];
        *v86 = v6;
        *(v86 + 1) = v5;
        v104 = v9;
        result = sub_1E1968E74(v84 - 1);
        v9 = v104;
        v84 = *(v104 + 2);
        v6 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
      goto LABEL_21;
    }

    v11 = *v6;
    sub_1E140A750(*v6 + 88 * (v8 + 1), &v98);
    v12 = v8;
    v13 = 88 * v8;
    sub_1E140A750(v11 + 88 * v8, v96);
    LODWORD(v105) = HIBYTE(v103) | v97 ^ 1;
    v8 = &unk_1E1B02C00;
    sub_1E1308058(v96, &qword_1ECEB3660);
    result = sub_1E1308058(&v98, &qword_1ECEB3660);
    v90 = v12;
    v14 = v12 + 2;
    v15 = v11 + v13 + 176;
    while (v7 != v14)
    {
      sub_1E140A750(v15, &v98);
      sub_1E140A750(v15 - 88, v96);
      v16 = HIBYTE(v103) & 1 | ((v97 & 1) == 0);
      v8 = &unk_1E1B02C00;
      sub_1E1308058(v96, &qword_1ECEB3660);
      result = sub_1E1308058(&v98, &qword_1ECEB3660);
      ++v14;
      v15 += 88;
      if ((v105 & 1) != v16)
      {
        v7 = v14 - 1;
        break;
      }
    }

    v6 = a3;
    if (v105)
    {
      if (v7 < v90)
      {
        goto LABEL_122;
      }

      if (v90 >= v7)
      {
        v10 = v90;
        goto LABEL_21;
      }

      v17 = v9;
      v18 = v5;
      v19 = 88 * v7 - 88;
      v20 = v7;
      v21 = v90;
      do
      {
        if (v21 != --v20)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v23 = v22 + v19;
          v100 = *(v22 + v13 + 32);
          v8 = &v98;
          v101 = *(v22 + v13 + 48);
          v102 = *(v22 + v13 + 64);
          v103 = *(v22 + v13 + 80);
          v98 = *(v22 + v13);
          v99 = *(v22 + v13 + 16);
          result = memmove((v22 + v13), (v22 + v19), 0x58uLL);
          *(v23 + 32) = v100;
          *(v23 + 48) = v101;
          *(v23 + 64) = v102;
          *(v23 + 80) = v103;
          *v23 = v98;
          *(v23 + 16) = v99;
        }

        ++v21;
        v19 -= 88;
        v13 += 88;
      }

      while (v21 < v20);
      v5 = v18;
      v6 = a3;
      v9 = v17;
    }

    v10 = v90;
LABEL_21:
    v24 = *(v6 + 8);
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 >= v24)
        {
          v8 = *(v6 + 8);
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v8)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1E172D878((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v70 = *&v9[16 * v30 + 40];
        sub_1E140C704((*v6 + 88 * v69), (*v6 + 88 * *&v9[16 * v30 + 32]), (*v6 + 88 * v70), v29);
        if (v5)
        {
        }

        if (v70 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v71 = &v9[16 * v68];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        v104 = v9;
        result = sub_1E1968E74(v30);
        v9 = v104;
        v27 = *(v104 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v87 = v9;
  v88 = v5;
  v72 = v7;
  v73 = *v6;
  v74 = *v6 + 88 * v72;
  v91 = v10;
  v105 = v72;
  v75 = v10 - v72;
  v93 = v8;
LABEL_82:
  v76 = v75;
  v95 = v74;
  while (1)
  {
    sub_1E140A750(v74, &v98);
    v77 = (v74 - 88);
    sub_1E140A750(v74 - 88, v96);
    v78 = HIBYTE(v103);
    v79 = v97;
    sub_1E1308058(v96, &qword_1ECEB3660);
    result = sub_1E1308058(&v98, &qword_1ECEB3660);
    if ((v78 & 1) == 0 && v79)
    {
LABEL_81:
      v74 = v95 + 88;
      --v75;
      v8 = v93;
      if (++v105 != v93)
      {
        goto LABEL_82;
      }

      v9 = v87;
      v5 = v88;
      v6 = a3;
      v10 = v91;
      if (v93 < v91)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v73)
    {
      break;
    }

    v100 = *(v74 + 32);
    v101 = *(v74 + 48);
    v102 = *(v74 + 64);
    v103 = *(v74 + 80);
    v98 = *v74;
    v99 = *(v74 + 16);
    v80 = *(v74 - 40);
    *(v74 + 32) = *(v74 - 56);
    *(v74 + 48) = v80;
    *(v74 + 64) = *(v74 - 24);
    *(v74 + 80) = *(v74 - 8);
    v81 = *(v74 - 72);
    *v74 = *v77;
    *(v74 + 16) = v81;
    *(v74 - 56) = v100;
    *(v74 - 40) = v101;
    *(v74 - 24) = v102;
    *(v74 - 8) = v103;
    *v77 = v98;
    *(v74 - 72) = v99;
    v74 -= 88;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1E140C704(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 >= v11)
  {
    v19 = 88 * v11;
    if (__dst != a2 || &a2[v19] <= __dst)
    {
      memmove(__dst, a2, 88 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 88 || v6 <= v7)
    {
      v18 = v6;
      goto LABEL_37;
    }

    v30 = v4;
    while (1)
    {
      v20 = (v6 - 88);
      v21 = v13 - 88;
      v5 -= 88;
      while (1)
      {
        v35 = v21 + 88;
        v24 = v5 + 88;
        sub_1E140A750(v21, v33);
        v25 = v20;
        sub_1E140A750(v20, v31);
        v26 = v34;
        v27 = v32;
        sub_1E1308058(v31, &qword_1ECEB3660);
        sub_1E1308058(v33, &qword_1ECEB3660);
        if ((v26 & 1) != 0 || !v27)
        {
          break;
        }

        if (v24 != v35)
        {
          memmove(v5, v21, 0x58uLL);
        }

        v22 = v21 - 88;
        v5 -= 88;
        v23 = v21 > v30;
        v21 -= 88;
        v20 = v25;
        if (!v23)
        {
          v13 = v22 + 88;
          v18 = v6;
          v4 = v30;
          goto LABEL_37;
        }
      }

      v18 = v25;
      if (v24 != v6)
      {
        memmove(v5, v25, 0x58uLL);
      }

      v4 = v30;
      v13 = v35;
      if (v35 > v30)
      {
        v6 = v18;
        if (v18 > v7)
        {
          continue;
        }
      }

      v13 = v21 + 88;
      goto LABEL_37;
    }
  }

  v12 = 88 * v9;
  if (__dst != __src || &__src[v12] <= __dst)
  {
    memmove(__dst, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 < 88 || v6 >= v5)
  {
    v18 = v7;
    goto LABEL_37;
  }

  do
  {
    sub_1E140A750(v6, v33);
    sub_1E140A750(v4, v31);
    v14 = v34;
    v15 = v32;
    sub_1E1308058(v31, &qword_1ECEB3660);
    sub_1E1308058(v33, &qword_1ECEB3660);
    if ((v14 & 1) == 0 && v15)
    {
      v16 = v4;
      v17 = v7 == v4;
      v4 += 88;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x58uLL);
      goto LABEL_14;
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 88;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v7 += 88;
  }

  while (v4 < v13 && v6 < v5);
  v18 = v7;
LABEL_37:
  v28 = 88 * ((v13 - v4) / 88);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

uint64_t sub_1E140CA64(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C3C0(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2788);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3660);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1E135C3C0((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a5[2];
      if (v27 < v26)
      {
        v26 = a5[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a5;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2788);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3660);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1E135C3C0((v30 > 1), v31 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

unint64_t sub_1E140CE44()
{
  result = qword_1EE1E0780[0];
  if (!qword_1EE1E0780[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7150);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E0780);
  }

  return result;
}

uint64_t sub_1E140CF0C()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF323C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E141D20C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1EE1D9040 = result;
  return result;
}

double sub_1E140D16C()
{
  result = 0.5;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_1EE1D9018 = _Q1;
  unk_1EE1D9028 = xmmword_1E1B08060;
  return result;
}

uint64_t sub_1E140D188()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE2167C0);
  __swift_project_value_buffer(v4, qword_1EE2167C0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E140D2DC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E140D320(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E140D3D0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E140D414(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E140D4C4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopSingleVideo;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E140D508(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopSingleVideo;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E140D5B8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = *(v6 + 8);
    v8 = v3;
    v7(&v29, ObjectType, v6);

    sub_1E1308058(&v29, &unk_1ECEB5670);
    v9 = *v2;
    if (!*v2)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v10 = *(v2 + 8);
    v11 = swift_getObjectType();
    v12 = *(v10 + 96);
    v13 = v9;
    v14 = v12(v11, v10);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1E1308058(&v29, &unk_1ECEB5670);
    v14 = 0;
  }

  v15 = *v2;
  if (*v2)
  {
    v16 = *(v2 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 8);
    v19 = *(v18 + 8);

    v20 = v15;
    v19(&v29, v17, v18);
    goto LABEL_9;
  }

LABEL_8:
  v31 = 0;
  v29 = 0u;
  v30 = 0u;

  v20 = 0;
LABEL_9:
  v21 = sub_1E1547654(&v29);

  sub_1E1308058(&v29, &unk_1ECEB5670);
  if (!v21)
  {
    if ((v14 & 1) == 0)
    {
LABEL_16:
      v28 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopSingleVideo;
      swift_beginAccess();
      return *(v1 + v28);
    }

    return 1;
  }

  v22 = *v2;
  if (!*v2)
  {
    return 1;
  }

  v23 = *(v2 + 8);
  v24 = swift_getObjectType();
  v25 = *(v23 + 72);
  v26 = v22;
  v25(&v29, v24, v23);

  result = 1;
  if (v29 != 8 && !(v14 & 1 | (v29 != 7)))
  {
    goto LABEL_16;
  }

  return result;
}

unsigned __int8 *VideoPlaybackCoordinator.__allocating_init(with:isGlobalAutoPlayEnabled:metricsPipeline:)(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1E1AF436C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6, v8);
  v11 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator());
  v12 = VideoPlaybackCoordinator.init(isGlobalAutoPlayEnabled:metricsPipeline:)(a2, v10);
  sub_1E140DD88();

  (*(v7 + 8))(a3, v6);
  return v12;
}

uint64_t type metadata accessor for VideoPlaybackCoordinator()
{
  result = qword_1EE1EB188;
  if (!qword_1EE1EB188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *VideoPlaybackCoordinator.init(isGlobalAutoPlayEnabled:metricsPipeline:)(char a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker;
  if (qword_1EE1D9010 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v6 = swift_allocObject();
  v23 = unk_1EE1D9028;
  v24 = xmmword_1EE1D9018;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = sub_1E159F634(MEMORY[0x1E69E7CC0]);
  *(v6 + 56) = v7;
  *(v6 + 64) = v7;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = v24;
  *(v6 + 32) = v23;
  *&v2[v5] = v6;
  v8 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_videoViews;
  *&v2[v8] = sub_1E159F658(v7);
  *&v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue] = v7;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackWorkItem] = 0;
  v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = 1;
  v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled] = 1;
  v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive] = 1;
  v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback] = 1;
  v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopSingleVideo] = 0;
  v9 = &v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  v12 = sub_1E1AF436C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v2[v11], a2, v12);
  v25.receiver = v2;
  v25.super_class = type metadata accessor for VideoPlaybackCoordinator();
  v14 = objc_msgSendSuper2(&v25, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  v18 = [v15 defaultCenter];
  [v18 addObserver:v16 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  v19 = [v15 defaultCenter];
  v20 = sub_1E1AF5DBC();
  [v19 addObserver:v16 selector:sel_didChangeAutoPlayVideoSetting_ name:v20 object:0];

  v21 = v16[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled];
  v16[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = a1 & 1;
  if (v21 != (a1 & 1))
  {
    if (a1)
    {
      v16[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive] = 1;
      sub_1E140DE80();
      sub_1E140EEAC();
    }

    else
    {
      sub_1E140E144();
      sub_1E141C53C(0, 0);
    }
  }

  (*(v13 + 8))(a2, v12);
  return v16;
}

void sub_1E140DD88()
{
  swift_unknownObjectWeakAssign();
  if (qword_1EE1D9010 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v1 = swift_allocObject();
  v3 = unk_1EE1D9028;
  v4 = xmmword_1EE1D9018;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = sub_1E159F634(MEMORY[0x1E69E7CC0]);
  *(v1 + 56) = v2;
  *(v1 + 64) = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker) = v1;

  sub_1E140DE80();
}

void sub_1E140DE80()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker);

  sub_1E154A4E4();
  v3 = *(v2 + 64);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_videoViews;
    v6 = v3 + 32;
    swift_beginAccess();
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E134E724(v6, v29);
      v8 = *(v1 + v5);
      if (*(v8 + 16))
      {

        v9 = sub_1E135FCF4(v29);
        if (v10)
        {
          v27 = *(*(v8 + 56) + 16 * v9);
          v11 = v27;
          sub_1E134B88C(v29);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E172DD3C(0, v7[2] + 1, 1, v7);
          }

          v13 = v7[2];
          v12 = v7[3];
          if (v13 >= v12 >> 1)
          {
            v7 = sub_1E172DD3C((v12 > 1), v13 + 1, 1, v7);
          }

          v7[2] = v13 + 1;
          *&v7[2 * v13 + 4] = v27;
          goto LABEL_5;
        }
      }

      sub_1E134B88C(v29);
LABEL_5:
      v6 += 40;
      if (!--v4)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v14 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) = v7;

  v15 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v15)
  {
    v28 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
    v16 = *(v1 + v14);
    v17 = *(v16 + 16);
    v18 = v15;

    if (v17)
    {
      v19 = 0;
      v20 = 32;
      while (v19 < *(v16 + 16))
      {
        v21 = *(v16 + v20);
        sub_1E13006E4(0, &qword_1EE1E31E0);
        v22 = v21;
        v23 = sub_1E1AF6D0C();

        if (v23)
        {

          v26 = v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
          *v26 = v19;
          *(v26 + 8) = 0;
          goto LABEL_23;
        }

        ++v19;
        v20 += 16;
        if (v17 == v19)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      v24 = v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
      *v24 = 0;
      *(v24 + 8) = 1;
      ObjectType = swift_getObjectType();
      (*(*(v28 + 8) + 40))(ObjectType);
LABEL_23:
    }
  }
}

void sub_1E140E144()
{
  v1 = v0;
  v2 = sub_1E1AF436C();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_1E1AF3ABC();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 0;
  v9 = v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v10 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (!v10)
  {
    return;
  }

  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 8);
  v14 = *(v13 + 16);
  v15 = v10;
  v16 = v14(ObjectType, v13);

  v17 = *v9;
  if (!*v9)
  {
    goto LABEL_13;
  }

  v18 = *(v9 + 8);
  v19 = swift_getObjectType();
  v20 = v7;
  v21 = *(v18 + 96);
  v22 = v17;
  v23 = v21(v19, v18);
  v7 = v20;
  LOBYTE(v18) = v23;

  if (v18)
  {
    return;
  }

  v24 = *v9;
  if (!*v9)
  {
LABEL_13:
    if ((v16 & 1) == 0)
    {
      return;
    }

LABEL_14:
    (*(v53 + 56))(v6, 1, 1, v7);
    goto LABEL_15;
  }

  v25 = *(v9 + 8);
  v26 = swift_getObjectType();
  v27 = *(v25 + 104);
  v28 = v24;
  v29 = v27(v26, v25);
  v7 = v20;
  v30 = v29;

  if (v16 & 1) == 0 || (v30)
  {
    return;
  }

  v31 = *v9;
  if (!*v9)
  {
    goto LABEL_14;
  }

  v32 = *(v9 + 8);
  v33 = swift_getObjectType();
  v34 = *(v32 + 8);
  v35 = *(v34 + 40);
  v36 = v31;
  v35(v33, v34);
  v7 = v20;

  v37 = *v9;
  if (!*v9)
  {
    goto LABEL_14;
  }

  v38 = *(v9 + 8);
  v39 = swift_getObjectType();
  v40 = *(v38 + 168);
  v41 = v37;
  v40(0, 0, v39, v38);

  v42 = v53;
  if ((*(v53 + 48))(v6, 1, v7) == 1)
  {
LABEL_15:
    sub_1E1308058(v6, &qword_1ECEB36B0);
    return;
  }

  v43 = v49;
  (*(v42 + 32))(v49, v6, v7);
  v44 = v50;
  v45 = v51;
  v46 = v52;
  (*(v51 + 16))(v50, v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v52);
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v47 = sub_1E1AF4A9C();
  __swift_project_value_buffer(v47, qword_1EE1E3998);
  sub_1E1AF434C();

  (*(v45 + 8))(v44, v46);
  (*(v42 + 8))(v43, v7);
}

void sub_1E140E5A8()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
  sub_1E140DE80();

  sub_1E140EEAC();
}

void sub_1E140E5E0(void *a1, void *a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v44 = sub_1E1AF436C();
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v37 - v9;
  v10 = sub_1E1AF3ABC();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v13 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v13)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 8);
    v17 = *(v16 + 8);
    v18 = v13;
    v17(v56, ObjectType, v16);

    if (a1)
    {
LABEL_3:
      v19 = swift_getObjectType();
      (*(a2[1] + 8))(v54, v19);
      goto LABEL_6;
    }
  }

  else
  {
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v55 = 0;
  memset(v54, 0, sizeof(v54));
LABEL_6:
  sub_1E134FD1C(v56, v50, &unk_1ECEB5670);
  sub_1E134FD1C(v54, &v51, &unk_1ECEB5670);
  if (v50[3])
  {
    sub_1E134FD1C(v50, v49, &unk_1ECEB5670);
    if (*(&v52 + 1))
    {
      v47[0] = v51;
      v47[1] = v52;
      v48 = v53;
      v20 = MEMORY[0x1E68FFC60](v49, v47);
      sub_1E134B88C(v47);
      sub_1E1308058(v54, &unk_1ECEB5670);
      sub_1E1308058(v56, &unk_1ECEB5670);
      sub_1E134B88C(v49);
      sub_1E1308058(v50, &unk_1ECEB5670);
      if (v20)
      {
        return;
      }

      goto LABEL_14;
    }

    sub_1E1308058(v54, &unk_1ECEB5670);
    sub_1E1308058(v56, &unk_1ECEB5670);
    sub_1E134B88C(v49);
  }

  else
  {
    sub_1E1308058(v54, &unk_1ECEB5670);
    sub_1E1308058(v56, &unk_1ECEB5670);
    if (!*(&v52 + 1))
    {
      sub_1E1308058(v50, &unk_1ECEB5670);
      return;
    }
  }

  sub_1E1308058(v50, &qword_1ECEB3840);
LABEL_14:
  v45 = a2;
  v21 = *v12;
  if (*v12)
  {
    v22 = *(v12 + 8);
    v23 = swift_getObjectType();
    v24 = *(v22 + 8);
    v25 = *(v24 + 16);
    v26 = v21;
    if (v25(v23, v24))
    {
      v27 = *(v22 + 168);
      v28 = v22;
      v29 = v41;
      v27(v46 & 1, 0, v23, v28);
      v31 = v42;
      v30 = v43;
      if ((*(v42 + 48))(v29, 1, v43) == 1)
      {

        sub_1E1308058(v29, &qword_1ECEB36B0);
      }

      else
      {
        v32 = v38;
        (*(v31 + 32))(v38, v29, v30);
        v34 = v39;
        v33 = v40;
        (*(v40 + 16))(v39, v4 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v44);
        if (qword_1EE1E3990 != -1)
        {
          swift_once();
        }

        v35 = sub_1E1AF4A9C();
        __swift_project_value_buffer(v35, qword_1EE1E3998);
        sub_1E1AF434C();

        (*(v33 + 8))(v34, v44);
        (*(v31 + 8))(v32, v30);
      }
    }

    else
    {
    }
  }

  v36 = a1;
  sub_1E141C53C(a1, v45);

  if (a1)
  {
    sub_1E140F75C(v46 & 1);
  }
}

void sub_1E140EB78(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_1E1AF5C7C();

  sub_1E1AF6F6C();
  if (!*(v5 + 16) || (v6 = sub_1E135FCF4(v10), (v7 & 1) == 0))
  {

    sub_1E134B88C(v10);
LABEL_10:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_11;
  }

  sub_1E137A5C4(*(v5 + 56) + 32 * v6, &v11);
  sub_1E134B88C(v10);

  if (!*(&v12 + 1))
  {
LABEL_11:
    sub_1E1308058(&v11, &qword_1ECEB2DF0);
    return;
  }

  if (swift_dynamicCast())
  {
    v8 = v10[0];
    v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) = v10[0];
    if (v8 != v9)
    {
      if (v8)
      {
        *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
        sub_1E140DE80();
        sub_1E140EEAC();
      }

      else
      {
        sub_1E140E144();
        sub_1E141C53C(0, 0);
      }
    }
  }
}

void sub_1E140ED70()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_videoViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 144);
    v15 = v11;
    v14(1, ObjectType, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1E140EEAC()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || (sub_1E140D5B8()) && (v2 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled, swift_beginAccess(), *(v1 + v2) == 1) && *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) == 1)
  {
    if (sub_1E140D5B8())
    {
      v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
      if (!v3)
      {
        return;
      }

      v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v7 = *(v6 + 16);
      v8 = v3;
      if ((v7(ObjectType, v6) & 1) == 0)
      {
        sub_1E140F75C(0);
      }

      goto LABEL_11;
    }

    v15 = (v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex);
    v44 = v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex + 8))
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15 + 1;
      if (__OFADD__(*v15, 1))
      {
LABEL_41:
        __break(1u);
        return;
      }
    }

    v48 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue;
    v17 = *(*(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
    if (v16 < v17)
    {
      v46 = *(*(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
      v18 = 16 * v16;
      v19 = v16;
      v45 = v16;
      while ((v16 & 0x8000000000000000) == 0)
      {
        v20 = *(v1 + v48);
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_40;
        }

        v21 = v20 + v18;
        v22 = *(v21 + 32);
        v23 = *(v21 + 40);
        v24 = swift_getObjectType();
        v25 = *(v23 + 8);
        v26 = *(v25 + 8);
        v27 = v22;

        v26(v49, v24, v25);
        LOBYTE(v22) = sub_1E1547654(v49);

        sub_1E1308058(v49, &unk_1ECEB5670);
        if (v22)
        {
          v28 = (*(v25 + 24))(v24, v25);

          if (v28)
          {
LABEL_33:
            *v44 = v19;
            *(v44 + 8) = 0;
            v39 = *(v1 + v48);
            if (v19 >= *(v39 + 16))
            {
              v8 = 0;
              v43 = 0;
            }

            else
            {
              v40 = v39 + 16 * v19;
              v8 = *(v40 + 32);
              v41 = *(v40 + 40);
              v42 = v8;
              v43 = v41;
            }

            goto LABEL_37;
          }
        }

        else
        {
        }

        ++v19;
        v18 += 16;
        v16 = v45;
        if (v46 == v19)
        {
          v17 = *(*(v1 + v48) + 16);
          goto LABEL_26;
        }
      }

      goto LABEL_39;
    }

LABEL_26:
    if (v17)
    {
      v29 = 0;
      v19 = 0;
      v47 = v17;
      while (1)
      {
        v30 = *(v1 + v48);
        if (v19 >= *(v30 + 16))
        {
          break;
        }

        v31 = v30 + v29;
        v32 = *(v31 + 32);
        v33 = *(v31 + 40);
        v34 = swift_getObjectType();
        v35 = *(v33 + 8);
        v36 = *(v35 + 8);
        v37 = v32;

        v36(v49, v34, v35);
        LOBYTE(v32) = sub_1E1547654(v49);

        sub_1E1308058(v49, &unk_1ECEB5670);
        if (v32)
        {
          v38 = (*(v35 + 24))(v34, v35);

          if (v38)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v19;
        v29 += 16;
        if (v47 == v19)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_35:
    v8 = 0;
    v43 = 0;
    *v44 = 0;
    *(v44 + 8) = 1;
LABEL_37:
    sub_1E140E5E0(v8, v43, 0);
  }

  else
  {
    v9 = v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
    v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
    if (!v10)
    {
      return;
    }

    v11 = *(v9 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = *(v13 + 40);
    v8 = v10;
    v14(v12, v13);
  }

LABEL_11:
}

void sub_1E140F2E4(char a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || (sub_1E140D5B8())
  {
    v4 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
    swift_beginAccess();
    if (*(v2 + v4) == 1 && *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) == 1)
    {
      if ((sub_1E140D5B8() & 1) != 0 && (a1 & 1) == 0)
      {
        v5 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
        if (v5)
        {
          v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
          ObjectType = swift_getObjectType();
          v8 = *(v6 + 8);
          v9 = *(v8 + 16);
          v10 = v5;
          if ((v9(ObjectType, v8) & 1) == 0)
          {
            sub_1E140F75C(0);
          }
        }

        return;
      }

      v18 = (v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex);
      v48 = v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
      if (*(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex + 8))
      {
        v19 = 0;
      }

      else
      {
        v19 = *v18 + 1;
        if (__OFADD__(*v18, 1))
        {
          goto LABEL_43;
        }
      }

      v52 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue;
      v50 = *(*(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
      if (v19 < v50)
      {
        v49 = v19;
        v20 = 16 * v19;
        v21 = v19;
        do
        {
          if (v19 < 0)
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v22 = *(v2 + v52);
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_41;
          }

          v23 = v22 + v20;
          v24 = *(v23 + 32);
          v25 = *(v23 + 40);
          v26 = swift_getObjectType();
          v27 = *(v25 + 8);
          v28 = *(v27 + 8);
          v29 = v24;

          v28(v53, v26, v27);
          LOBYTE(v24) = sub_1E1547654(v53);

          sub_1E1308058(v53, &unk_1ECEB5670);
          if (v24)
          {
            v30 = (*(v27 + 24))(v26, v27);

            if (v30)
            {
LABEL_34:
              v42 = v48;
              if ((*(v48 + 8) & 1) != 0 || v21 != *v48)
              {
                *v48 = v21;
                *(v48 + 8) = 0;
                v43 = *(v2 + v52);
                if (v21 < *(v43 + 16))
                {
                  v44 = v43 + 16 * v21;
                  v45 = *(v44 + 32);
                  v46 = *(v44 + 40);
                  v47 = v45;
                  sub_1E140E5E0(v45, v46, 0);
                }

                return;
              }

LABEL_39:
              *v42 = 0;
              *(v42 + 8) = 1;
              return;
            }
          }

          else
          {
          }

          ++v21;
          v20 += 16;
          v19 = v49;
        }

        while (v50 != v21);
      }

      v31 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback;
      swift_beginAccess();
      if (*(v2 + v31) != 1 || (v51 = *(*(v2 + v52) + 16)) == 0)
      {
LABEL_38:
        v42 = v48;
        goto LABEL_39;
      }

      v32 = 0;
      v21 = 0;
      while (1)
      {
        v33 = *(v2 + v52);
        if (v21 >= *(v33 + 16))
        {
          break;
        }

        v34 = v33 + v32;
        v35 = *(v34 + 32);
        v36 = *(v34 + 40);
        v37 = swift_getObjectType();
        v38 = *(v36 + 8);
        v39 = *(v38 + 8);
        v40 = v35;

        v39(v53, v37, v38);
        LOBYTE(v35) = sub_1E1547654(v53);

        sub_1E1308058(v53, &unk_1ECEB5670);
        if (v35)
        {
          v41 = (*(v38 + 24))(v37, v38);

          if (v41)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        ++v21;
        v32 += 16;
        if (v51 == v21)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }
  }

  v11 = v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v12 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v12)
  {
    v13 = *(v11 + 8);
    v14 = swift_getObjectType();
    v15 = *(v13 + 8);
    v16 = *(v15 + 40);
    v17 = v12;
    v16(v14, v15);
  }
}

uint64_t sub_1E140F75C(char a1)
{
  v3 = sub_1E1AF326C();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v18 = &v18 - v7;
  v8 = sub_1E1AF320C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1E141D1F4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_10;
  _Block_copy(aBlock);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E141D20C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  sub_1E1AF32AC();
  swift_allocObject();
  v11 = sub_1E1AF328C();

  v12 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackWorkItem;
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackWorkItem))
  {

    sub_1E1AF329C();
  }

  *(v1 + v12) = v11;

  v13 = v18;
  if (qword_1EE1D9038 != -1)
  {
    swift_once();
  }

  sub_1E1AF325C();
  sub_1E1AF32DC();
  v14 = *(v19 + 8);
  v15 = v5;
  v16 = v20;
  result = v14(v15, v20);
  if (*(v1 + v12))
  {

    sub_1E1AF68CC();

    return v14(v13, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E140FAF4(uint64_t a1, char a2)
{
  v4 = sub_1E1AF320C();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v10 = sub_1E1AF68EC();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1E141D200;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_57;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E141D20C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_1E140FDE0(uint64_t a1, int a2)
{
  LODWORD(v43) = a2;
  v2 = sub_1E1AF436C();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_1E1AF3ABC();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
    v13 = *(Strong + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
    v14 = Strong;
    v15 = v12;

    if (v12)
    {
      ObjectType = swift_getObjectType();
      if ((*(v13 + 88))(ObjectType, v13))
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = v17[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive];

      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
        v40 = *(v19 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
        v22 = v21;

        if (v21)
        {
          v23 = swift_getObjectType();
          (*(v40 + 136))(v23);
        }
      }

      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = *(v24 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
        v40 = *(v24 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
        v26 = v24;
        v27 = v25;

        if (v25)
        {
          v28 = swift_getObjectType();
          (*(*(v40 + 8) + 32))(v28);
        }
      }

      if (v43)
      {
LABEL_13:

        return;
      }

      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      if (!v29 || (v30 = *(v29 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo), v43 = *(v29 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8), v31 = v29, v32 = v30, v31, !v30))
      {

        (*(v42 + 56))(v7, 1, 1, v8);
        goto LABEL_20;
      }

      v33 = swift_getObjectType();
      (*(v43 + 160))(0, v33);

      v34 = v42;
      if ((*(v42 + 48))(v7, 1, v8) == 1)
      {

LABEL_20:
        sub_1E1308058(v7, &qword_1ECEB36B0);
        return;
      }

      (*(v34 + 32))(v10, v7, v8);
      swift_beginAccess();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = v41;
        v37 = v35;
        (*(v41 + 16))(v4, v35 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v2);

        if (qword_1EE1E3990 != -1)
        {
          swift_once();
        }

        v38 = sub_1E1AF4A9C();
        __swift_project_value_buffer(v38, qword_1EE1E3998);
        sub_1E1AF434C();

        (*(v36 + 8))(v4, v2);
      }

      else
      {
      }

      (*(v34 + 8))(v10, v8);
    }
  }
}

id sub_1E1410304(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (result)
  {
    return [result isDescendantOfView_];
  }

  return result;
}

void sub_1E1410338()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex + 8))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex);
    v1 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_20:
      __break(1u);
      return;
    }
  }

  v30 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue;
  v29 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
  if (v1 < v29)
  {
    v27 = v1;
    v3 = 16 * v1;
    v4 = v1;
    v28 = v0;
    do
    {
      if (v1 < 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v5 = *(v0 + v30);
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_19;
      }

      v6 = v5 + v3;
      v8 = *(v6 + 32);
      v7 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      v10 = *(v7 + 8);
      v11 = *(v10 + 8);
      v12 = v8;

      v11(v32, ObjectType, v10);
      v13 = sub_1E1547654(v32);

      sub_1E1308058(v32, &unk_1ECEB5670);
      if (v13)
      {
        v14 = (*(v10 + 24))(ObjectType, v10);

        if (v14)
        {
          v15 = *(v28 + v30);
          if (v4 < *(v15 + 16))
          {
            v16 = *(v28 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
            if (v16)
            {
              v17 = v15 + v3;
              v19 = *(v17 + 32);
              v18 = *(v17 + 40);
              v20 = *(v28 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
              v21 = swift_getObjectType();
              v22 = *(v18 + 8);
              v23 = *(v22 + 8);
              v24 = v19;
              v25 = v16;
              v23(v32, v21, v22);
              v26 = swift_getObjectType();
              (*(*(v20 + 8) + 8))(v31, v26);
              LOBYTE(v19) = MEMORY[0x1E68FFC60](v32, v31);
              sub_1E134B88C(v31);
              sub_1E134B88C(v32);
              if ((v19 & 1) == 0)
              {
                (*(v18 + 136))(v21, v18);
              }
            }
          }

          return;
        }
      }

      else
      {
      }

      ++v4;
      v3 += 16;
      v0 = v28;
      v1 = v27;
    }

    while (v29 != v4);
  }
}

uint64_t sub_1E14105C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
  result = swift_beginAccess();
  if (*(v5 + v10) == 1)
  {
    if (a1 && a3)
    {
      ObjectType = swift_getObjectType();
      v13 = *(a4 + 8);
      v14 = a1;
      if (v13(a1, a2, ObjectType, a4))
      {
        v15 = swift_getObjectType();
        v16 = a2[1];
        v40 = v15;
        (*(v16 + 8))(v42, v15, v16);
        v17 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_videoViews;
        swift_beginAccess();
        if (*(*(v5 + v17) + 16))
        {

          sub_1E135FCF4(v42);
          if (v18)
          {

            return sub_1E134B88C(v42);
          }
        }

        swift_beginAccess();
        v20 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v43[0] = *(v5 + v17);
        *(v5 + v17) = 0x8000000000000000;
        sub_1E15995E0(v20, a2, v42, isUniquelyReferenced_nonNull_native);
        *(v5 + v17) = *&v43[0];
        swift_endAccess();
        v22 = a2[7];
        v23 = swift_unknownObjectRetain();
        v22(v23, &protocol witness table for VideoPlaybackCoordinator, v40, a2);
        v24 = swift_getObjectType();
        v25 = *(a4 + 16);
        swift_unknownObjectRetain();
        v45.origin.x = v25(v24, a4);
        v47.origin.x = 0.0;
        v47.origin.y = 0.0;
        v47.size.width = 0.0;
        v47.size.height = 0.0;
        if (CGRectEqualToRect(v45, v47) || ([v20 frame], v48.origin.x = 0.0, v48.origin.y = 0.0, v48.size.width = 0.0, v48.size.height = 0.0, !CGRectEqualToRect(v46, v48)))
        {
          swift_unknownObjectRelease();
          v30 = 0uLL;
          v29 = 1;
          v31 = 0uLL;
        }

        else
        {
          v37 = v25(v24, a4);
          v38 = v26;
          v36 = v27;
          v39 = v28;
          swift_unknownObjectRelease();
          *&v31 = v36;
          *&v30 = v37;
          v29 = 0;
          *(&v30 + 1) = v38;
          *(&v31 + 1) = v39;
        }

        v43[0] = v30;
        v43[1] = v31;
        v44 = v29;
        v32 = v20;

        sub_1E1547C2C(a1, v16, v43);

        sub_1E134E724(v42, v41);

        v33 = sub_1E1547654(v41);

        sub_1E1308058(v41, &unk_1ECEB5670);
        if (v33)
        {
          v34 = *(v16 + 16);
          if (v34(v40, v16))
          {
            sub_1E140E5E0(a1, a2, 0);

LABEL_25:
            sub_1E140DE80();
            sub_1E140EEAC();

            return sub_1E134B88C(v42);
          }

          v35 = v34(v40, v16);
        }

        else
        {

          v35 = (*(v16 + 16))(v40, v16);
        }

        if (v35)
        {
          (*(v16 + 40))(v40, v16);
        }

        goto LABEL_25;
      }
    }

    if (qword_1EE1EB198 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE2167C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54BC();
  }

  return result;
}

void sub_1E1410ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  if (a5)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
    swift_beginAccess();
    if (*(v7 + v13) != 1 || a3 == 0)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v16 = (*(a4 + 8))(a1, a2, ObjectType, a4);
    if (!a1 || (v16 & 1) == 0)
    {
      return;
    }
  }

  v17 = (v7 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  v18 = *(v7 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  v19 = swift_getObjectType();
  if (v18 && v18 == a1)
  {
    if (a6)
    {
      v20 = a1;
      sub_1E141C53C(0, 0);
    }

    else
    {
      *v17 = 0;
      v17[1] = 0;
      v23 = a1;
    }

    v24 = v7 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
    *v24 = 0;
    v22 = 1;
    *(v24 + 8) = 1;
  }

  else
  {
    v21 = a1;
    v22 = 0;
  }

  v25 = (*(a2 + 48))(v19, a2);
  if (v25)
  {
    v26 = v25;
    swift_unknownObjectRelease();
    if (v26 == v7)
    {
      (*(a2 + 56))(0, 0, v19, a2);
    }
  }

  v27 = *(a2 + 8);
  v28 = *(v27 + 8);
  v29 = a1;

  v28(v31, v19, v27);
  swift_beginAccess();
  sub_1E1410EA8(v31, &qword_1ECEB60A0);
  sub_1E134B88C(v31);
  swift_endAccess();

  v28(v31, v19, v27);
  swift_beginAccess();
  v30 = sub_1E1410DD8(v31, &qword_1ECEB6090);
  sub_1E134B88C(v31);
  swift_endAccess();

  sub_1E140DE80();
  if (v22)
  {
    *(v7 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
    sub_1E140DE80();
    sub_1E140EEAC();
  }
}

uint64_t sub_1E1410DD8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = sub_1E135FCF4(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E141802C(a2);
    v9 = v12;
  }

  sub_1E134B88C(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 16 * v7);
  sub_1E1414A3C(v7, v9);
  *v4 = v9;
  return v10;
}

uint64_t sub_1E1410EA8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = sub_1E135FCF4(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E141ABEC(a2);
    v9 = v12;
  }

  sub_1E134B88C(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 8 * v7);
  sub_1E1414118(v7, v9);
  *v4 = v9;
  return v10;
}

double sub_1E1410F58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E15A47C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E1419B58();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 88 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = *(v10 + 80);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_1E141474C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1E1411014(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E135FCF4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E141C098();
    v7 = v10;
  }

  sub_1E134B88C(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 16 * v5);
  sub_1E1414A3C(v5, v7);
  *v2 = v7;
  return v8;
}

void sub_1E14110C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_videoViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v36 = v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
  v39 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker;
  v40 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v37 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive;
  v8 = (v5 + 63) >> 6;
  v42 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v41 = v4;
  v38 = v8;
  v43 = v2;
  while (v7)
  {
LABEL_10:
    v11 = *(v42 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v1 + v40);
    ObjectType = swift_getObjectType();
    if (v14)
    {
      v16 = v12;
      if (v12 == v14)
      {
        sub_1E141C53C(0, 0);
        *v36 = 0;
        v46 = 1;
        *(v36 + 8) = 1;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v17 = v12;
      v46 = 0;
    }

    v18 = (*(v13 + 48))(ObjectType, v13);
    if (v18)
    {
      v19 = v18;
      swift_unknownObjectRelease();
      if (v19 == v1)
      {
        (*(v13 + 56))(0, 0, ObjectType, v13);
      }
    }

    v20 = *(v1 + v39);
    v21 = *(v13 + 8);
    v22 = *(v21 + 8);
    v23 = v12;

    v44 = v22;
    v45 = ObjectType;
    v22(v47, ObjectType, v21);
    swift_beginAccess();
    v24 = sub_1E135FCF4(v47);
    v25 = v43;
    if (v26)
    {
      v27 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v20 + 48);
      *(v20 + 48) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E141ABEC(&qword_1ECEB60A0);
      }

      sub_1E134B88C(*(v29 + 48) + 40 * v27);
      sub_1E1414118(v27, v29);
      *(v20 + 48) = v29;

      v25 = v43;
    }

    sub_1E134B88C(v47);
    swift_endAccess();

    v44(v47, v45, v21);
    swift_beginAccess();
    v30 = sub_1E135FCF4(v47);
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v1 + v25);
      *(v1 + v25) = 0x8000000000000000;
      if (!v33)
      {
        sub_1E141802C(&qword_1ECEB6090);
      }

      sub_1E134B88C(*(v34 + 48) + 40 * v32);
      v35 = *(*(v34 + 56) + 16 * v32);
      sub_1E1414A3C(v32, v34);
      *(v1 + v25) = v34;
    }

    sub_1E134B88C(v47);
    swift_endAccess();
    sub_1E140DE80();
    if (v46)
    {
      *(v1 + v37) = 1;
      sub_1E140DE80();
      sub_1E140EEAC();
    }

    v7 &= v7 - 1;

    v4 = v41;
    v8 = v38;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1E14114C8()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v2)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = *(v5 + 8);

    v7 = v2;
    v6(v9, ObjectType, v5);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));

    v7 = 0;
  }

  v8 = sub_1E1547654(v9);

  sub_1E1308058(v9, &unk_1ECEB5670);
  if (!v8)
  {
    sub_1E140DE80();
    sub_1E140EEAC();
  }
}

void sub_1E14115D0()
{
  sub_1E141C53C(0, 0);
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
  sub_1E140DE80();

  sub_1E140EEAC();
}

void sub_1E1411628(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue);
    v4 = *(v3 + 16);

    if (v4)
    {
      v5 = 0;
      v6 = 32;
      v7 = &qword_1EE1E31E0;
      while (v5 < *(v3 + 16))
      {
        v8 = *(v3 + v6);
        sub_1E13006E4(0, &qword_1EE1E31E0);
        v9 = v8;
        v10 = sub_1E1AF6D0C();

        if (v10)
        {

          v13[0] = v5;
          v7 = sub_1E1AF742C();
          v3 = v11;
          goto LABEL_9;
        }

        ++v5;
        v6 += 16;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v3 = 0xE200000000000000;
      v7 = 11565;
LABEL_9:
      if (qword_1EE1EB198 == -1)
      {
        goto LABEL_10;
      }
    }

    swift_once();
LABEL_10:
    v12 = sub_1E1AF591C();
    __swift_project_value_buffer(v12, qword_1EE2167C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v14 = MEMORY[0x1E69E6158];
    v13[0] = v7;
    v13[1] = v3;
    sub_1E1AF38BC();
    sub_1E1308058(v13, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v14 = &type metadata for VideoPlayerState;
    LOBYTE(v13[0]) = v2;
    sub_1E1AF38BC();
    sub_1E1308058(v13, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    if (v2 == 7)
    {
      sub_1E140F2E4(0);
    }
  }
}

void sub_1E1411900(int a1, void *a2, uint64_t a3)
{
  LODWORD(v55) = a1;
  v5 = sub_1E1AF436C();
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = sub_1E1AF3ABC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  ObjectType = swift_getObjectType();
  v20 = *(a3 + 168);
  v53 = a2;
  v54 = a3;
  v20(0, 1, ObjectType, a3);
  v21 = *(v14 + 48);
  v22 = (v21)(v12, 1, v13);
  v51 = v7;
  if (v22 != 1)
  {
    (*(v14 + 32))(v18, v12, v13);
    v23 = v57;
    (*(v56 + 16))(v7, v57 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v5);
    if (qword_1EE1E3990 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_5;
  }

  sub_1E1308058(v12, &qword_1ECEB36B0);
  v23 = v57;
  while ((v55 & 1) != 0)
  {
    v25 = ObjectType;
    v26 = v52;
    (*(v54 + 176))(v25);
    if ((v21)(v26, 1, v13) == 1)
    {
      sub_1E1308058(v26, &qword_1ECEB36B0);
    }

    else
    {
      v21 = v50;
      (*(v14 + 32))(v50, v26, v13);
      v27 = v56;
      v28 = v51;
      (*(v56 + 16))(v51, v23 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v5);
      if (qword_1EE1E3990 != -1)
      {
        swift_once();
      }

      v29 = sub_1E1AF4A9C();
      __swift_project_value_buffer(v29, qword_1EE1E3998);
      sub_1E1AF434C();

      (*(v27 + 8))(v28, v5);
      v30 = *(v14 + 8);
      v14 += 8;
      v30(v21, v13);
    }

    if (*(v23 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex + 8))
    {
      v7 = 0;
    }

    else
    {
      v31 = *(v23 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex);
      v7 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return;
      }
    }

    v56 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue;
    v32 = *(*(v23 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
    if (v7 >= v32)
    {
LABEL_24:
      if (!v32)
      {
        return;
      }

      v7 = v32;
      v5 = 0;
      ObjectType = 0;
      v55 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker;
      while (1)
      {
        v39 = *(v23 + v56);
        if (ObjectType >= *(v39 + 16))
        {
          break;
        }

        v40 = v39 + v5;
        v41 = *(v40 + 32);
        v42 = *(v40 + 40);
        v14 = *(v23 + v55);
        v13 = swift_getObjectType();
        v43 = *(v42 + 8);
        v44 = *(v43 + 8);
        v18 = (v43 + 8);
        v21 = v41;

        v44(v58, v13, v43);
        LOBYTE(v41) = sub_1E1547654(v58);

        sub_1E1308058(v58, &unk_1ECEB5670);
        if (v41)
        {
          v45 = (*(v43 + 24))(v13, v43);

          if (v45)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        ++ObjectType;
        v5 += 16;
        v23 = v57;
        if (v7 == ObjectType)
        {
          return;
        }
      }

      __break(1u);
    }

    else
    {
      v54 = *(*(v23 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
      v55 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_visibilityTracker;
      v5 = 16 * v7;
      ObjectType = v7;
      while ((v7 & 0x8000000000000000) == 0)
      {
        v33 = *(v23 + v56);
        if (ObjectType >= *(v33 + 16))
        {
          goto LABEL_37;
        }

        v34 = v33 + v5;
        v35 = *(v34 + 32);
        v36 = *(v34 + 40);
        v14 = *(v23 + v55);
        v13 = swift_getObjectType();
        v37 = *(v36 + 8);
        v18 = *(v37 + 8);
        v21 = v35;

        (v18)(v58, v13, v37);
        LOBYTE(v35) = sub_1E1547654(v58);

        sub_1E1308058(v58, &unk_1ECEB5670);
        if (v35)
        {
          v38 = (*(v37 + 24))(v13, v37);

          if (v38)
          {
LABEL_31:
            v46 = *(v57 + v56);
            if (ObjectType < *(v46 + 16))
            {
              v47 = *(v46 + 16 * ObjectType + 32);
              if (v47 != v53)
              {
                v48 = v47;
                sub_1E140F2E4(1);
              }
            }

            return;
          }
        }

        else
        {
        }

        ++ObjectType;
        v5 += 16;
        v23 = v57;
        if (v54 == ObjectType)
        {
          v32 = *(*(v57 + v56) + 16);
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_5:
    v24 = sub_1E1AF4A9C();
    __swift_project_value_buffer(v24, qword_1EE1E3998);
    sub_1E1AF434C();

    (*(v56 + 8))(v7, v5);
    (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_1E1412024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v4 = sub_1E1AF436C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1E1AF3ABC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1EB198 != -1)
  {
    swift_once();
  }

  v13 = sub_1E1AF591C();
  __swift_project_value_buffer(v13, qword_1EE2167C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || (sub_1E140D5B8())
  {
    v14 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
    swift_beginAccess();
    *(v2 + v14) = 0;
  }

  ObjectType = swift_getObjectType();
  (*(v25 + 168))(1, 0, ObjectType);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1E1308058(v8, &qword_1ECEB36B0);
  }

  (*(v10 + 32))(v12, v8, v9);
  v17 = v22;
  v18 = v23;
  v19 = v24;
  (*(v23 + 16))(v22, v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v24);
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v20 = sub_1E1AF4A9C();
  __swift_project_value_buffer(v20, qword_1EE1E3998);
  sub_1E1AF434C();

  (*(v18 + 8))(v17, v19);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E1412450(void *a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_1E1AF436C();
  v39 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v35 - v8;
  v43 = sub_1E1AF3ABC();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1EB198 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v42 = v9;
    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE2167C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v12 = OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled;
    v13 = 1;
    swift_beginAccess();
    *(v3 + v12) = 1;
    sub_1E140DE80();
    v14 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue);
    v15 = *(v14 + 16);

    if (!v15)
    {
      break;
    }

    v36 = v5;
    v16 = 0;
    v5 = (v14 + 32);
    v9 = &qword_1EE1E31E0;
    while (v16 < *(v14 + 16))
    {
      v17 = *v5;
      sub_1E13006E4(0, &qword_1EE1E31E0);
      v18 = v17;
      v19 = sub_1E1AF6D0C();

      if (v19)
      {
        goto LABEL_8;
      }

      ++v16;
      v5 += 2;
      if (v15 == v16)
      {
        v16 = 0;
LABEL_8:
        v13 = v19 ^ 1;
        v5 = v36;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v16 = 0;
LABEL_10:
  v20 = v40;

  v21 = v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_currentPlaybackIndex;
  *v21 = v16;
  *(v21 + 8) = v13 & 1;
  sub_1E140E5E0(a1, v20, 1);
  v22 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (!v22)
  {
    v27 = v41;
    (v42[7])(v41, 1, 1, v43);
    return sub_1E1308058(v27, &qword_1ECEB36B0);
  }

  v23 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 160);
  v26 = v22;
  v27 = v41;
  v25(1, ObjectType, v23);

  v29 = v42;
  v28 = v43;
  if ((v42[6])(v27, 1, v43) == 1)
  {
    return sub_1E1308058(v27, &qword_1ECEB36B0);
  }

  v30 = v37;
  (v29[4])(v37, v27, v28);
  v32 = v38;
  v31 = v39;
  (*(v39 + 16))(v38, v3 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_metricsPipeline, v5);
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v33 = sub_1E1AF4A9C();
  __swift_project_value_buffer(v33, qword_1EE1E3998);
  sub_1E1AF434C();

  (*(v31 + 8))(v32, v5);
  return (v29[1])(v30, v28);
}

void sub_1E1412A6C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo;
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 136);
    v7 = v3;
    v6(ObjectType, v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_12:
    sub_1E1308058(&v14, &qword_1ECEB2DF0);
    return;
  }

  v9 = Strong;
  v10 = sub_1E1AF5DBC();
  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    if (v12 == 2)
    {
      *(v1 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
      sub_1E140DE80();
      sub_1E140EEAC();
    }
  }
}

id VideoPlaybackCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlaybackCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlaybackCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1412DF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v10 = sub_1E1AF767C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E1412FA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1E1AF6F2C();
      result = sub_1E134B88C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E1413144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v9 = sub_1E1AF767C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E14132F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v9 = sub_1E1AF767C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E14134CC(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1E1AF6F0C();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_1E141D20C(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
      v23 = sub_1E1AF5D0C();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E1413810(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v11 = sub_1E1AF767C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}